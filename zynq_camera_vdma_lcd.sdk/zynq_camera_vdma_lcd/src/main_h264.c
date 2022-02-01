#if 0
#include "stdio.h"
#include "xparameters.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "xscugic.h"

#include "emio_sccb_cfg/emio_sccb_cfg.h"
#include "ov5640/ov5640_init.h"
#include "vdma_api.h"

#include "xil_camif.h"
#include "xil_isp_lite.h"
#include "xil_vip.h"

#include"xgpiops.h"
extern XGpioPs  gpiops_inst; //PS 端 GPIO 驱动实例
#define PS_KEY0		(12)
#define PS_KEY1		(11)
#define PL_RESET	(56)
#define PL_KEY0		(57)
#define PL_KEY1		(58)
#define PS_LED0		(7)
#define PS_LED1		(8)
#define PL_LED0		(59)
#define PL_LED1		(60)


#define CAM_WIDTH 2560
#define CAM_HEIGHT 1920
#define LCD_WIDTH 800
#define LCD_HEIGHT 480
#define DVI_WIDTH 1280
#define DVI_HEIGHT 960

static unsigned cam_frame_int = 0;
static void camif_isr(UINTPTR isr_context)
{
	XIL_CAMIF_mWriteReg(isr_context, CAMIF_REG_INT_STATUS, 0);
	cam_frame_int ++;
	{
		static int led = 0;
		XGpioPs_WritePin(&gpiops_inst, PL_LED0, led);
		led = !led;
	}
}

static unsigned isp_frame_int = 0;
static void isp_isr(UINTPTR isr_context)
{
	XIL_ISP_LITE_mWriteReg(isr_context, ISP_REG_INT_STATUS, 0);
	isp_frame_int ++;
	if (0 == (isp_frame_int&1)) {
		isp_ae_handler(isr_context, 65, 0x0ffff/*cam_total_height*/, 0x3ff);
		isp_awb_handler(isr_context);
	}
	{
		static int led = 0;
		XGpioPs_WritePin(&gpiops_inst, PL_LED1, led);
		led = !led;
	}
}

static unsigned vip_frame_int = 0;
static void vip_isr(UINTPTR isr_context)
{
	XIL_VIP_mWriteReg(isr_context, VIP_REG_INT_STATUS, 0);
	vip_frame_int ++;
	{
		static int led = 0;
		XGpioPs_WritePin(&gpiops_inst, PS_LED0, led);
		led = !led;
	}
}

#define CAMIF_BASE      XPAR_XIL_CAMIF_0_S00_AXI_BASEADDR
#define ISP_BASE        XPAR_XIL_ISP_LITE_0_S00_AXI_BASEADDR
#define VIP_LCD_BASE    XPAR_XIL_VIP_0_S00_AXI_BASEADDR
#define VIP_DVI_BASE    XPAR_XIL_VIP_1_S00_AXI_BASEADDR

//中断初始化
int camera_intr_init(XScuGic *intc)
{
    int status;
    //初始化中断控制器
    XScuGic_Config *intc_cfg;
    intc_cfg = XScuGic_LookupConfig(XPAR_SCUGIC_SINGLE_DEVICE_ID);
    if (NULL == intc_cfg)
        return XST_FAILURE;
    status = XScuGic_CfgInitialize(intc, intc_cfg, intc_cfg->CpuBaseAddress);
    if (status != XST_SUCCESS)
        return XST_FAILURE;

    //设置并打开中断异常处理功能
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, (void *)intc);
    Xil_ExceptionEnable();

    //为中断设置中断处理函数
    XScuGic_Connect(intc, XPAR_FABRIC_XIL_CAMIF_0_IRQ_INTR, (Xil_ExceptionHandler) camif_isr, (void*)CAMIF_BASE);
    XScuGic_Connect(intc, XPAR_FABRIC_XIL_ISP_LITE_0_IRQ_INTR, (Xil_ExceptionHandler) isp_isr, (void*)ISP_BASE);
    XScuGic_Connect(intc, XPAR_FABRIC_XIL_VIP_0_IRQ_INTR, (Xil_ExceptionHandler) vip_isr, (void*)VIP_LCD_BASE);
    XScuGic_Connect(intc, XPAR_FABRIC_XIL_VIP_1_IRQ_INTR, (Xil_ExceptionHandler) vip_isr, (void*)VIP_DVI_BASE);
    //使能GIC中的串口中断
    XScuGic_Enable(intc, XPAR_FABRIC_XIL_CAMIF_0_IRQ_INTR);
    XScuGic_Enable(intc, XPAR_FABRIC_XIL_ISP_LITE_0_IRQ_INTR);
    XScuGic_Enable(intc, XPAR_FABRIC_XIL_VIP_0_IRQ_INTR);
    XScuGic_Enable(intc, XPAR_FABRIC_XIL_VIP_1_IRQ_INTR);
    return XST_SUCCESS;
}


static void init_camif_isp_vip()
{
	static XScuGic Intc;
	XIL_CAMIF_mWriteReg(CAMIF_BASE, CAMIF_REG_RESET, 1);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_RESET, 1);
	XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_RESET, 1);
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_RESET, 1);

	XIL_CAMIF_mWriteReg(CAMIF_BASE, CAMIF_REG_INT_MASK, 0xffff);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_INT_MASK, 0xffff);
	XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_INT_MASK, 0xffff);
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_INT_MASK, 0xffff);
	usleep(100000);

	XIL_CAMIF_mWriteReg(CAMIF_BASE, CAMIF_REG_COLORBAR_EN, 0);

	unsigned int isp_top_en = 0;
	isp_top_en |= ISP_REG_TOP_EN_BIT_DPC_EN;
	//isp_top_en |= ISP_REG_TOP_EN_BIT_BLC_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_BNR_EN;
	//isp_top_en |= ISP_REG_TOP_EN_BIT_DGAIN_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_DEMOSIC_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_WB_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_CCM_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_CSC_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_GAMMA_EN;
	//isp_top_en |= ISP_REG_TOP_EN_BIT_EE_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_STAT_AE_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_STAT_AWB_EN;
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_TOP_EN, isp_top_en);

	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_DPC_THRESHOLD, 20);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_NR_LEVEL, 2);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_DGAIN, 0x28);//2.5x
	printf("awb stat setting %lu %lu\n", XIL_ISP_LITE_mReadReg(ISP_BASE, ISP_REG_STAT_AWB_MIN), XIL_ISP_LITE_mReadReg(ISP_BASE, ISP_REG_STAT_AWB_MAX));

	//LCD VIP
	unsigned int vip_top_en = 0;
	unsigned scale_h = CAM_WIDTH / LCD_WIDTH;
	unsigned scale_v = CAM_HEIGHT / LCD_HEIGHT;
	//vip_top_en |= VIP_REG_TOP_EN_BIT_HIST_EQU_EN;
	//vip_top_en |= VIP_REG_TOP_EN_BIT_SOBEL_EN;
	vip_top_en |= VIP_REG_TOP_EN_BIT_YUV2RGB_EN;
	vip_top_en |= VIP_REG_TOP_EN_BIT_CROP_EN;
	if (scale_h > 1 && scale_v > 1) {
		vip_top_en |= VIP_REG_TOP_EN_BIT_DSCALE_EN;
	}
	XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_TOP_EN, vip_top_en);

	if (vip_top_en & VIP_REG_TOP_EN_BIT_DSCALE_EN) {
		unsigned scale_val = scale_h < scale_v ? scale_h : scale_v;
		XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_CROP_X, (CAM_WIDTH-LCD_WIDTH*scale_val)/2);
		XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_CROP_Y, (CAM_HEIGHT-LCD_HEIGHT*scale_val)/2);
		XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_CROP_W, LCD_WIDTH*scale_val);
		XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_CROP_H, LCD_HEIGHT*scale_val);
		XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_DSCALE_H, scale_val-1);
		XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_DSCALE_V, scale_val-1);
	} else {
		XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_CROP_X, (CAM_WIDTH-LCD_WIDTH)/2);
		XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_CROP_Y, (CAM_HEIGHT-LCD_HEIGHT)/2);
		XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_CROP_W, LCD_WIDTH);
		XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_CROP_H, LCD_HEIGHT);
	}

	//DVI VIP
	vip_top_en = 0;
	scale_h = CAM_WIDTH / DVI_WIDTH;
	scale_v = CAM_HEIGHT / DVI_HEIGHT;
	//vip_top_en |= VIP_REG_TOP_EN_BIT_HIST_EQU_EN;
	//vip_top_en |= VIP_REG_TOP_EN_BIT_SOBEL_EN;
	//vip_top_en |= VIP_REG_TOP_EN_BIT_YUV2RGB_EN;
	vip_top_en |= VIP_REG_TOP_EN_BIT_CROP_EN;
	if (scale_h > 1 && scale_v > 1) {
		vip_top_en |= VIP_REG_TOP_EN_BIT_DSCALE_EN;
	}
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_TOP_EN, vip_top_en);

	if (vip_top_en & VIP_REG_TOP_EN_BIT_DSCALE_EN) {
		unsigned scale_val = scale_h < scale_v ? scale_h : scale_v;
		XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_CROP_X, (CAM_WIDTH-DVI_WIDTH*scale_val)/2);
		XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_CROP_Y, (CAM_HEIGHT-DVI_HEIGHT*scale_val)/2);
		XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_CROP_W, DVI_WIDTH*scale_val);
		XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_CROP_H, DVI_HEIGHT*scale_val);
		XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_DSCALE_H, scale_val-1);
		XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_DSCALE_V, scale_val-1);
	} else {
		XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_CROP_X, (CAM_WIDTH-DVI_WIDTH)/2);
		XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_CROP_Y, (CAM_HEIGHT-DVI_HEIGHT)/2);
		XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_CROP_W, DVI_WIDTH);
		XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_CROP_H, DVI_HEIGHT);
	}

	XIL_CAMIF_mWriteReg(CAMIF_BASE, CAMIF_REG_RESET, 0);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_RESET, 0);
	XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_RESET, 0);
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_RESET, 0);
	printf("vi_reset  = %08lX\n", XIL_CAMIF_mReadReg(CAMIF_BASE, CAMIF_REG_RESET));
	printf("isp_reset = %08lX\n", XIL_ISP_LITE_mReadReg(ISP_BASE, ISP_REG_RESET));
	printf("vip_reset = %08lX\n", XIL_VIP_mReadReg(VIP_LCD_BASE, VIP_REG_RESET));
	printf("vip_reset = %08lX\n", XIL_VIP_mReadReg(VIP_DVI_BASE, VIP_REG_RESET));

	camera_intr_init(&Intc);
	XIL_CAMIF_mWriteReg(CAMIF_BASE, CAMIF_REG_INT_MASK, ~0x1);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_INT_MASK, ~ISP_REG_INT_MASK_BIT_FRAME_DONE);
	XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_INT_MASK, ~VIP_REG_INT_MASK_BIT_FRAME_DONE);
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_INT_MASK, ~VIP_REG_INT_MASK_BIT_FRAME_DONE);
}


static int cam_buff = XPAR_PS7_DDR_0_S_AXI_BASEADDR+0x1000000; //RAW8
static int lcd_buff = XPAR_PS7_DDR_0_S_AXI_BASEADDR+0x2000000; //RGB888
static int dvi_buff = XPAR_PS7_DDR_0_S_AXI_BASEADDR+0x3000000; //RGB888
static int avc_buff = XPAR_PS7_DDR_0_S_AXI_BASEADDR+0x4000000; //264
static int yuv_buff = XPAR_PS7_DDR_0_S_AXI_BASEADDR+0x5000000; //YUV

#include "ff.h"

static FATFS fatfs;                         //文件系统

//初始化文件系统
static int platform_init_fs()
{
	FRESULT status;
	TCHAR *Path = "0:/";
	BYTE work[FF_MAX_SS];

    //注册一个工作区(挂载分区文件系统)
    //在使用任何其它文件函数之前，必须使用f_mount函数为每个使用卷注册一个工作区
	status = f_mount(&fatfs, Path, 1);  //挂载SD卡
	if (status != FR_OK) {
		xil_printf("Volume is not FAT formated; formating FAT\r\n");
		return -1;
		//格式化SD卡
		status = f_mkfs(Path, FM_FAT32, 0, work, sizeof work);
		if (status != FR_OK) {
			xil_printf("Unable to format FATfs\r\n");
			return -1;
		}
		//格式化之后，重新挂载SD卡
		status = f_mount(&fatfs, Path, 1);
		if (status != FR_OK) {
			xil_printf("Unable to mount FATfs\r\n");
			return -1;
		}
	}
	return 0;
}

//SD卡写数据
static int sd_write_data(char *file_name,u32 src_addr,u32 byte_len)
{
    FIL fil;         //文件对象
    UINT bw;         //f_write函数返回已写入的字节数

    //打开一个文件,如果不存在，则创建一个文件
    f_open(&fil,file_name,FA_CREATE_ALWAYS | FA_WRITE);
    //移动打开的文件对象的文件读/写指针     0:指向文件开头
    f_lseek(&fil, 0);
    //向文件中写入数据
    f_write(&fil,(void*) src_addr,byte_len,&bw);
    //关闭文件
    f_close(&fil);
    return 0;
}

static int fs_init = 0;

static void gpio_init()
{

	//Gpio LED
	XGpioPs_SetDirectionPin(&gpiops_inst, PS_LED0, 1);
	XGpioPs_SetDirectionPin(&gpiops_inst, PS_LED1, 1);
	XGpioPs_SetDirectionPin(&gpiops_inst, PL_LED0, 1);
	XGpioPs_SetDirectionPin(&gpiops_inst, PL_LED1, 1);
	XGpioPs_SetOutputEnablePin(&gpiops_inst, PS_LED0, 1);
	XGpioPs_SetOutputEnablePin(&gpiops_inst, PS_LED1, 1);
	XGpioPs_SetOutputEnablePin(&gpiops_inst, PL_LED0, 1);
	XGpioPs_SetOutputEnablePin(&gpiops_inst, PL_LED1, 1);
	XGpioPs_WritePin(&gpiops_inst, PS_LED0, 1);
	XGpioPs_WritePin(&gpiops_inst, PS_LED1, 1);
	XGpioPs_WritePin(&gpiops_inst, PL_LED0, 1);
	XGpioPs_WritePin(&gpiops_inst, PL_LED1, 1);

	//Gpio KEY
	XGpioPs_SetDirectionPin(&gpiops_inst, PS_KEY0, 0);
	XGpioPs_SetDirectionPin(&gpiops_inst, PS_KEY1, 0);
	XGpioPs_SetDirectionPin(&gpiops_inst, PL_RESET, 0);
	XGpioPs_SetDirectionPin(&gpiops_inst, PL_KEY0, 0);
	XGpioPs_SetDirectionPin(&gpiops_inst, PL_KEY1, 0);
}

static void key_control()
{
	{
		static int reset = 0;
		if (reset != !XGpioPs_ReadPin(&gpiops_inst, PL_RESET)) {
			reset = !XGpioPs_ReadPin(&gpiops_inst, PL_RESET);
			printf("reset = %d\n", reset);
			XIL_CAMIF_mWriteReg(CAMIF_BASE, CAMIF_REG_RESET, reset);
			XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_RESET, reset);
			XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_RESET, reset);
			XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_RESET, reset);
		}
	}
	if (fs_init && 0 == XGpioPs_ReadPin(&gpiops_inst, PL_KEY0)) {
		printf("writing dump_cam_raw.bin ... ");
		Xil_DCacheInvalidateRange(cam_buff, CAM_WIDTH * CAM_HEIGHT);
		sd_write_data("dump_cam_raw.bin", cam_buff, CAM_WIDTH * CAM_HEIGHT);
		printf("done\n");
	}
	if (fs_init && 0 == XGpioPs_ReadPin(&gpiops_inst, PL_KEY1)) {
		printf("writing dump_dvi_rgb888.bin ... ");
		Xil_DCacheInvalidateRange(dvi_buff, DVI_WIDTH * DVI_HEIGHT * 3);
		sd_write_data("dump_dvi_rgb888.bin", dvi_buff, DVI_WIDTH * DVI_HEIGHT * 3);
		printf("done\n");
	}
	if (fs_init && 0 == XGpioPs_ReadPin(&gpiops_inst, PS_KEY0)) {
		printf("writing dump_dvi_nv12.bin ... ");
		Xil_DCacheInvalidateRange(yuv_buff, DVI_WIDTH * DVI_HEIGHT * 3 / 2);
		sd_write_data("dump_dvi_nv12.bin", yuv_buff, DVI_WIDTH * DVI_HEIGHT * 3 / 2);
		printf("done\n");
	}
	{
		static int colorbar_en = 0;
		if (colorbar_en != !XGpioPs_ReadPin(&gpiops_inst, PS_KEY1)) {
			colorbar_en = !XGpioPs_ReadPin(&gpiops_inst, PS_KEY1);
			printf("colorbar_en = %d\n", colorbar_en);
			XIL_CAMIF_mWriteReg(CAMIF_BASE, CAMIF_REG_COLORBAR_EN, colorbar_en);
		}
	}

}

#define H264ENC_REG_BASE     XPAR_H264ENC_WITH_AXI_0_BASEADDR

#define H264ENC_REG_ENABLE      0x00
#define H264ENC_REG_PIC_SIZE    0x04
#define H264ENC_REG_RUN_MOD     0x08
#define H264ENC_REG_STATUS      0x0C
#define H264ENC_REG_EXT_BASE    0x10
#define H264ENC_REG_Y_BASE      0x14
#define H264ENC_REG_BS_BASE     0x18
#define H264ENC_REG_BS_COUNTER  0x1C
#define H264ENC_REG_IRQ         0x20
#define H264ENC_REG_DONE        0x24

#define H264ENC_INTRA_MODE  0x00000000
#define H264ENC_IRQ_STOP    0x00000000

//1920x1088
/*
static unsigned char start_code[] = {0,0,0,1};
static unsigned char sps_buf[] = {0x67, 0x42, 0xC0, 0x28, 0x9A,
           0x74, 0x03, 0xC0, 0x11, 0x3F,
           0x2C, 0x20, 0x00, 0x00, 0x03,
           0x00, 0x20, 0x00, 0x00, 0x06,
           0x51, 0xE3, 0x06, 0x54};
static unsigned char pps_buf[] = {0x68, 0xCE, 0x04, 0x89, 0xc8};
static unsigned char slc_buf[] = {0x65, 0x88, 0x80, 0x20, 0x01};
*/

//416x240
/*static unsigned char start_code[] = {0,0,0,1};
static unsigned char sps_buf[] = {	0x67, 0x42, 0xc0, 0x1e, 0x9a, 0x74,
									0x0d, 0x0f, 0x90, 0x80, 0x20, 0x20,
									0x03, 0x20, 0x80, 0x20, 0x20, 0x32,
									0x47, 0x8b, 0x17, 0x50 };
static unsigned char pps_buf[] = {0x68, 0xce, 0x12, 0xc8};
static unsigned char slc_buf[] = {0x65, 0x88, 0x80, 0x20, 0x01};
*/

//1280x960
static unsigned char start_code[] = {0,0,0,1};
static unsigned char sps_buf[] = {0x67, 0x42, 0xc0, 0x1f, 0x9a, 0x74, 0x02, 0x80, 0x3c, 0xbe, 0x10, 0x20, 0x20, 0x03, 0x20, 0x10, 0x20, 0x20, 0x06, 0x48, 0xf1, 0x83, 0x2a};
static unsigned char pps_buf[] = {0x68, 0xce, 0x12, 0xc8};
static unsigned char slc_buf[] = {0x65, 0x88, 0x80, 0x20, 0x01};


static int h264_enc_frame(unsigned yuv_ptr, unsigned width, unsigned height, unsigned h264_ptr)
{
	(*(volatile int *)(H264ENC_REG_BASE + H264ENC_REG_PIC_SIZE)) = (((width >> 4) - 1) << 0) | (((height >> 4) - 1) << 8);//1280x720
	(*(volatile int *)(H264ENC_REG_BASE + H264ENC_REG_RUN_MOD )) = H264ENC_INTRA_MODE;
	(*(volatile int *)(H264ENC_REG_BASE + H264ENC_REG_Y_BASE  )) = yuv_ptr;
	(*(volatile int *)(H264ENC_REG_BASE + H264ENC_REG_BS_BASE )) = h264_ptr;
	//printf("enc initialized!\n");
	(*(volatile int *)(H264ENC_REG_BASE + H264ENC_REG_ENABLE  )) = 1;
	//printf("enc started!\n");
	while( (*(volatile int *)(H264ENC_REG_BASE + H264ENC_REG_DONE)) == 1 );
	while( (*(volatile int *)(H264ENC_REG_BASE + H264ENC_REG_DONE)) == 0 );
	int rbs_len = (*(volatile int *)(H264ENC_REG_BASE + H264ENC_REG_BS_COUNTER)) ;
	//printf("%08d\n",(*(volatile int *)(H264ENC_REG_BASE + H264ENC_REG_BS_COUNTER)));
	return rbs_len;
}

static void yuv_convert(const unsigned char* src, unsigned char* dst, int width, int height)
{
	//YUV444(Y,U,V) -> NV12(YYYYYYYY,UVUV)
	int i,j;
	unsigned src_ptr = src;
	unsigned dst_ptr = dst;
	Xil_DCacheInvalidateRange(src_ptr, width * height * 3);
	unsigned char* y = dst;
	unsigned char* c = dst + width * height;
	for (j = 0; j < height; j++) {
		for (i = 0; i < width; i++) {
			y[j * width + i] = src[2];//Y
			c[(j>>1) * (width) + ((i>>1)<<1) + 0] = src[1];//U
			c[(j>>1) * (width) + ((i>>1)<<1) + 1] = src[0];//V
			src+=3;
		}
	}
	Xil_DCacheFlushRange(dst_ptr, width * height * 3 / 2);
}

int main()
{
	XAxiVdma cam_vdma_inst;
	XAxiVdma lcd_vdma_inst;
	XAxiVdma dvi_vdma_inst;

	emio_init();                        //初始化EMIO&GPIO
	gpio_init();

	u32 status;
	u16 cmos_h_pixel = CAM_WIDTH;   //ov5640 DVP 输出水平像素点数
	u16 cmos_v_pixel = CAM_HEIGHT;   //ov5640 DVP 输出垂直像素点数

	fs_init = 0 == platform_init_fs();

	xil_printf("cmos size %u x %u\r\n", cmos_h_pixel, cmos_v_pixel);


	status = ov5640_init( cmos_h_pixel, cmos_v_pixel); //初始化ov5640
	if(status == 0)
		xil_printf("OV5640 detected successful!\r\n");
	else
		xil_printf("OV5640 detected failed!\r\n");

	cmos_set_exposure(0x0ffff);
	cmos_set_gain(0x3ff);

	init_camif_isp_vip();

	run_triple_frame_buffer(&cam_vdma_inst, XPAR_AXIVDMA_0_DEVICE_ID,
			CAM_WIDTH, CAM_HEIGHT, cam_buff, 0, 0, BOTH);
	run_triple_frame_buffer(&lcd_vdma_inst, XPAR_AXIVDMA_1_DEVICE_ID,
			LCD_WIDTH, LCD_HEIGHT, lcd_buff, 0, 0, BOTH);
	run_triple_frame_buffer(&dvi_vdma_inst, XPAR_AXIVDMA_2_DEVICE_ID,
			DVI_WIDTH, DVI_HEIGHT, dvi_buff, 0, 0, BOTH);

	printf("initialize ok\r\n");

	FIL fil;
	UINT bw;
	unsigned frm_cnt = 300;
	if (fs_init) {
		f_open(&fil,"out.h264", FA_CREATE_ALWAYS | FA_WRITE);
		f_lseek(&fil, 0);
		f_write(&fil, start_code, sizeof(start_code), &bw);
		f_write(&fil, sps_buf, sizeof(sps_buf), &bw);
		f_write(&fil, start_code, sizeof(start_code), &bw);
		f_write(&fil, pps_buf, sizeof(pps_buf), &bw);
	} else {
		frm_cnt = 0;
	}

	unsigned prev_frame_cnt = 0, prev_cam_int = 0, prev_isp_int = 0, prev_vip_int = 0;
	while(1) {
		memset(avc_buff, 0, DVI_WIDTH * DVI_HEIGHT * 3);
		Xil_DCacheFlushRange(avc_buff, DVI_WIDTH * DVI_HEIGHT * 3);
		yuv_convert(dvi_buff, yuv_buff, DVI_WIDTH, DVI_HEIGHT);
		int nbs = h264_enc_frame(yuv_buff, DVI_WIDTH, DVI_HEIGHT, avc_buff);
		if (nbs > 0 && frm_cnt > 0) {
			Xil_DCacheInvalidateRange(avc_buff, nbs);
			f_write(&fil, start_code, sizeof(start_code), &bw);
			f_write(&fil, slc_buf, sizeof(slc_buf), &bw);
			f_write(&fil, avc_buff, nbs, &bw);
			frm_cnt --;
			printf("frame %04d size %08d bytes\n", frm_cnt, nbs);
			if (frm_cnt == 0) {
				f_close(&fil);
				printf("===========================\n");
			}
			continue;
		}

		usleep(1000000);
		unsigned frame_cnt = XIL_CAMIF_mReadReg(CAMIF_BASE, CAMIF_REG_FRAME_CNT);
		unsigned cam_int = cam_frame_int, isp_int = isp_frame_int, vip_int = vip_frame_int;
		printf("%lu x %lu, fps %u, interrupt camif %u, isp %u, vip %u\n",
				XIL_CAMIF_mReadReg(CAMIF_BASE, CAMIF_REG_WIDTH),
				XIL_CAMIF_mReadReg(CAMIF_BASE, CAMIF_REG_HEIGHT),
				frame_cnt - prev_frame_cnt,
				cam_int - prev_cam_int,
				isp_int - prev_isp_int,
				vip_int - prev_vip_int);
		prev_frame_cnt = frame_cnt;
		prev_cam_int = cam_int;
		prev_isp_int = isp_int;
		prev_vip_int = vip_int;

		unsigned i, sum;
		printf("AE HIST [");
		for (sum = 0, i = 0; i < ISP_REG_STAT_AE_HIST_SIZE; i+=4) {
			unsigned data = XIL_ISP_LITE_mReadReg(ISP_BASE, ISP_REG_STAT_AE_HIST_ADDR+i);
			sum += data;
			if (i >= 48*4 && i < 48*4 + 8*4)
				printf("%u, ", data);
		}
		printf("] total %u\n", sum);//sum may be error, because of reading hist in vsync time
		printf("AWB HIST [");
		for (sum = 0, i = 0; i < ISP_REG_STAT_AWB_HIST_SIZE; i+=4) {
			unsigned data = XIL_ISP_LITE_mReadReg(ISP_BASE, ISP_REG_STAT_AWB_HIST_ADDR+i);
			sum += data;
			if (i >= 48*4 && i < 48*4 + 8*4)
				printf("%u, ", data);
		}
		printf("] total %u\n", sum);//sum may be error, because of reading hist in vsync time

		/*{
			int top_en = XIL_ISP_LITE_mReadReg(ISP_BASE, ISP_REG_TOP_EN);
			int mask = 0;
			mask |= ISP_REG_TOP_EN_BIT_DPC_EN;
			mask |= ISP_REG_TOP_EN_BIT_BLC_EN;
			mask |= ISP_REG_TOP_EN_BIT_BNR_EN;
			mask |= ISP_REG_TOP_EN_BIT_DGAIN_EN;
			//mask |= ISP_REG_TOP_EN_BIT_DEMOSIC_EN;
			mask |= ISP_REG_TOP_EN_BIT_WB_EN;
			mask |= ISP_REG_TOP_EN_BIT_CCM_EN;
			//mask |= ISP_REG_TOP_EN_BIT_CSC_EN;
			mask |= ISP_REG_TOP_EN_BIT_GAMMA_EN;
			mask |= ISP_REG_TOP_EN_BIT_EE_EN;
			//mask |= ISP_REG_TOP_EN_BIT_STAT_AE_EN;
			//mask |= ISP_REG_TOP_EN_BIT_STAT_AWB_EN;
			XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_TOP_EN, top_en^mask);
		}*/
		key_control();
	}

	return 0;
}

#endif
