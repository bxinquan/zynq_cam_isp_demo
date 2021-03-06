#include "stdio.h"
#include "xparameters.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "xtime_l.h"
#include "xgpiops.h"
#include "sleep.h"

#include "sys_intr.h"
#include "vdma_api.h"

#include "ov5640_init.h"
#include "xil_camif.h"
#include "xil_isp_lite.h"
#include "xil_vip.h"

#define ISP_BITS		9
#define CAM_WIDTH 		2592
#define CAM_HEIGHT 		1944

#define LCD_WIDTH 		800
#define LCD_HEIGHT 		480
#define DVI_WIDTH 		1280
#define DVI_HEIGHT 		720

#define  GPIOPS_ID  XPAR_XGPIOPS_0_DEVICE_ID  //PS 端 GPIO 器件 ID
XGpioPs  gpiops_inst; //PS 端 GPIO 驱动实例
#define PS_KEY0		(12)
#define PS_KEY1		(11)
#define PL_RESET	(54)
#define PL_KEY0		(55)
#define PL_KEY1		(56)
#define PS_LED0		(7)
#define PS_LED1		(8)
#define PL_LED0		(57)
#define PL_LED1		(58)

//为了测试ISP最高帧率，ISP设置的帧率高于cmos帧率，场信号不同步，可能导致ISP与cmos配置不同步，曝光不稳定问题
//实际使用时应保持ISP与cmos场信号同步，参考h264或dualcam设计

static volatile unsigned cam_frame_int = 0;
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

static volatile unsigned isp_frame_int = 0;
static void isp_isr(UINTPTR isr_context)
{
	XIL_ISP_LITE_mWriteReg(isr_context, ISP_REG_INT_STATUS, 0);
	isp_frame_int ++;
	{
		static int led = 0;
		XGpioPs_WritePin(&gpiops_inst, PL_LED1, led);
		led = !led;
	}
}

static volatile unsigned vip_frame_int = 0;
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
int camera_intr_init()
{
#ifdef XPAR_INTC_0_DEVICE_ID
	XIntc *intc = sys_intr_inst();
	XIntc_Connect(intc, XPAR_AXI_INTC_0_XIL_CAMIF_0_IRQ_INTR, (XInterruptHandler) camif_isr, (void*)CAMIF_BASE);
	XIntc_Connect(intc, XPAR_AXI_INTC_0_XIL_ISP_LITE_0_IRQ_INTR, (XInterruptHandler) isp_isr, (void*)ISP_BASE);
	XIntc_Connect(intc, XPAR_AXI_INTC_0_XIL_VIP_0_IRQ_INTR, (XInterruptHandler) vip_isr, (void*)VIP_LCD_BASE);
	XIntc_Connect(intc, XPAR_AXI_INTC_0_XIL_VIP_1_IRQ_INTR, (XInterruptHandler) vip_isr, (void*)VIP_DVI_BASE);
	XIntc_Enable(intc, XPAR_AXI_INTC_0_XIL_CAMIF_0_IRQ_INTR);
	XIntc_Enable(intc, XPAR_AXI_INTC_0_XIL_ISP_LITE_0_IRQ_INTR);
	XIntc_Enable(intc, XPAR_AXI_INTC_0_XIL_VIP_0_IRQ_INTR);
	XIntc_Enable(intc, XPAR_AXI_INTC_0_XIL_VIP_1_IRQ_INTR);
#else
	XScuGic *intc = sys_intr_inst();
    XScuGic_Connect(intc, XPAR_FABRIC_XIL_CAMIF_0_IRQ_INTR, (Xil_ExceptionHandler) camif_isr, (void*)CAMIF_BASE);
    XScuGic_Connect(intc, XPAR_FABRIC_XIL_ISP_LITE_0_IRQ_INTR, (Xil_ExceptionHandler) isp_isr, (void*)ISP_BASE);
    XScuGic_Connect(intc, XPAR_FABRIC_XIL_VIP_0_IRQ_INTR, (Xil_ExceptionHandler) vip_isr, (void*)VIP_LCD_BASE);
    XScuGic_Connect(intc, XPAR_FABRIC_XIL_VIP_1_IRQ_INTR, (Xil_ExceptionHandler) vip_isr, (void*)VIP_DVI_BASE);
    XScuGic_Enable(intc, XPAR_FABRIC_XIL_CAMIF_0_IRQ_INTR);
    XScuGic_Enable(intc, XPAR_FABRIC_XIL_ISP_LITE_0_IRQ_INTR);
    XScuGic_Enable(intc, XPAR_FABRIC_XIL_VIP_0_IRQ_INTR);
    XScuGic_Enable(intc, XPAR_FABRIC_XIL_VIP_1_IRQ_INTR);
#endif
    return XST_SUCCESS;
}

static void isp_init_gamma(UINTPTR isp_base);
static void isp_init_2dnr(UINTPTR isp_base);
static void vip_init_osd(UINTPTR vip_base, unsigned osd_x, unsigned osd_y, unsigned color_fg, unsigned color_bg);

static void init_camif_isp_vip()
{
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
	isp_top_en |= ISP_REG_TOP_EN_BIT_BLC_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_BNR_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_DGAIN_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_DEMOSIC_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_WB_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_CCM_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_CSC_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_GAMMA_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_2DNR_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_EE_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_STAT_AE_EN;
	isp_top_en |= ISP_REG_TOP_EN_BIT_STAT_AWB_EN;
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_TOP_EN, isp_top_en);

	isp_init_gamma(ISP_BASE);
	isp_init_2dnr(ISP_BASE);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_BLC_R,  19<<(ISP_BITS-8));
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_BLC_GR, 19<<(ISP_BITS-8));
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_BLC_GB, 19<<(ISP_BITS-8));
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_BLC_B,  19<<(ISP_BITS-8));
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_NR_LEVEL, 2);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_DGAIN_GAIN, 0x10);//1.0x
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_STAT_AE_RECT_X, CAM_WIDTH/4);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_STAT_AE_RECT_Y, CAM_HEIGHT/4);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_STAT_AE_RECT_W, CAM_WIDTH/2);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_STAT_AE_RECT_H, CAM_HEIGHT/2);

	//LCD VIP
	unsigned int vip_top_en = 0;
	unsigned scale_h = CAM_WIDTH / LCD_WIDTH;
	unsigned scale_v = CAM_HEIGHT / LCD_HEIGHT;
	//vip_top_en |= VIP_REG_TOP_EN_BIT_HIST_EQU_EN;
	//vip_top_en |= VIP_REG_TOP_EN_BIT_SOBEL_EN;
	vip_top_en |= VIP_REG_TOP_EN_BIT_YUV2RGB_EN;
	vip_top_en |= VIP_REG_TOP_EN_BIT_CROP_EN;
	vip_top_en |= VIP_REG_TOP_EN_BIT_OSD_EN;
	if (scale_h > 1 && scale_v > 1) {
		vip_top_en |= VIP_REG_TOP_EN_BIT_DSCALE_EN;
	}
	XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_TOP_EN, vip_top_en);
	vip_init_osd(VIP_LCD_BASE, 16, 16, 0xff0000, 0x888888);

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
	//vip_top_en |= VIP_REG_TOP_EN_BIT_YUV444TO422_EN;
	vip_top_en |= VIP_REG_TOP_EN_BIT_YUV2RGB_EN;
	vip_top_en |= VIP_REG_TOP_EN_BIT_CROP_EN;
	vip_top_en |= VIP_REG_TOP_EN_BIT_OSD_EN;
	if (scale_h > 1 && scale_v > 1) {
		vip_top_en |= VIP_REG_TOP_EN_BIT_DSCALE_EN;
	}
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_TOP_EN, vip_top_en);
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_HIST_EQU_MIN, 20);
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_HIST_EQU_MAX, 200);
	vip_init_osd(VIP_DVI_BASE, 16, 16, 0xffffff, 0x888888);

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

	camera_intr_init();
	XIL_CAMIF_mWriteReg(CAMIF_BASE, CAMIF_REG_INT_MASK, ~CAMIF_REG_INT_MASK_BIT_FRAME_DONE);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_INT_MASK, ~ISP_REG_INT_MASK_BIT_FRAME_START);
	XIL_VIP_mWriteReg(VIP_LCD_BASE, VIP_REG_INT_MASK, ~VIP_REG_INT_MASK_BIT_FRAME_DONE);
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_INT_MASK, ~VIP_REG_INT_MASK_BIT_FRAME_DONE);
}


static int cam_buff = XPAR_PS7_DDR_0_S_AXI_BASEADDR+0x4000000; //RAW8
static int lcd_buff = XPAR_PS7_DDR_0_S_AXI_BASEADDR+0x5000000; //RGB888
static int dvi_buff = XPAR_PS7_DDR_0_S_AXI_BASEADDR+0x6000000; //RGB888

#if 0
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
#endif

static int fs_init = 0;

static void gpio_init()
{
	XGpioPs_Config *gpiops_cfg_ptr; //PS 端 GPIO 配置信息

	//根据器件 ID 查找配置信息
	gpiops_cfg_ptr = XGpioPs_LookupConfig(GPIOPS_ID);
	//初始化器件驱动
	XGpioPs_CfgInitialize(&gpiops_inst, gpiops_cfg_ptr, gpiops_cfg_ptr->BaseAddr);

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
		//sd_write_data("dump_cam_raw.bin", cam_buff, CAM_WIDTH * CAM_HEIGHT);
		printf("done\n");
	}
	if (fs_init && 0 == XGpioPs_ReadPin(&gpiops_inst, PL_KEY1)) {
		printf("writing dump_dvi_rgb888.bin ... ");
		Xil_DCacheInvalidateRange(dvi_buff, DVI_WIDTH * DVI_HEIGHT * 3);
		//sd_write_data("dump_dvi_rgb888.bin", dvi_buff, DVI_WIDTH * DVI_HEIGHT * 3);
		printf("done\n");
	}
	if (fs_init && 0 == XGpioPs_ReadPin(&gpiops_inst, PS_KEY0)) {

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

static void _set_exposure(unsigned exposure, void* priv_data)
{
	cmos_set_exposure(exposure);
}
static void _set_gain(unsigned gain, void* priv_data)
{
	cmos_set_gain(gain+0x200); //ov5640关闭BLC后,导致其数字增益异常,测试只0x200~0x3ff具有较好的线性度
}

int main()
{
	XAxiVdma cam_vdma_inst;
	XAxiVdma lcd_vdma_inst;
	XAxiVdma dvi_vdma_inst;
	IspContext isp_context = {0};

	sys_intr_init();
	gpio_init();

//	fs_init = 0 == platform_init_fs();

	u32 status;
	u16 cmos_h_pixel = CAM_WIDTH;   //ov5640 DVP 输出水平像素点数
	u16 cmos_v_pixel = CAM_HEIGHT;   //ov5640 DVP 输出垂直像素点数
	u16 total_v_std = 0;

	status = ov5640_init(cmos_h_pixel, cmos_v_pixel, &total_v_std); //初始化ov5640
	if(status == 0)
		xil_printf("OV5640 detected successful!\r\n");
	else
		xil_printf("OV5640 detected failed!\r\n");

	xil_printf("cmos size %u x %u\r\n", cmos_h_pixel, cmos_v_pixel);
	cmos_set_exposure(total_v_std);
	cmos_set_gain(0x200);

	isp_context.base = ISP_BASE;
	isp_context.pfn_set_exposure = _set_exposure;
	isp_context.pfn_set_gain = _set_gain;
	isp_context.priv_data = NULL;
	isp_context.ae_target_luminance = 75<<(ISP_BITS-8);
	isp_context.ae_max_exposure = total_v_std;
	isp_context.ae_max_gain = 0x1ff;
	isp_context.ae_cur_exposure = total_v_std;
	isp_context.ae_cur_gain = 0x010;
	isp_context.ae_cur_isp_dgain = 0x010;
	isp_context.awb_cur_rgain = 0x010;
	isp_context.awb_cur_bgain = 0x010;

	init_camif_isp_vip();

	run_triple_frame_buffer(&cam_vdma_inst, XPAR_AXIVDMA_0_DEVICE_ID,
			CAM_WIDTH, CAM_HEIGHT, cam_buff, 0, 0, BOTH);
	run_triple_frame_buffer(&lcd_vdma_inst, XPAR_AXIVDMA_1_DEVICE_ID,
			LCD_WIDTH, LCD_HEIGHT, lcd_buff, 0, 0, BOTH);
	run_triple_frame_buffer(&dvi_vdma_inst, XPAR_AXIVDMA_2_DEVICE_ID,
			DVI_WIDTH, DVI_HEIGHT, dvi_buff, 0, 0, BOTH);

	printf("initialize ok\r\n");

	unsigned prev_frame_cnt = 0, prev_cam_int = 0, prev_isp_int = 0, prev_vip_int = 0;
	u64 prev_time = 0;
	XTime_GetTime(&prev_time);
	printf("prev_time %llu\n", prev_time);
	while(1) {
		u64 now_time = 0;
		do {
			unsigned curr_isp_int = isp_frame_int;
			XTime_GetTime(&now_time);
			while (curr_isp_int == isp_frame_int && now_time < prev_time + COUNTS_PER_SECOND)
			{
				XTime_GetTime(&now_time);
			}
			//if (isp_frame_int % 2 == 0) {
				isp_ae_handler(&isp_context);
				isp_awb_handler(&isp_context);
			//}
		} while (now_time < prev_time + COUNTS_PER_SECOND);
		prev_time = now_time;

#define CYCLE_DEBUG_PRINT 1
		unsigned frame_cnt = XIL_CAMIF_mReadReg(CAMIF_BASE, CAMIF_REG_FRAME_CNT);
		unsigned cam_int = cam_frame_int, isp_int = isp_frame_int, vip_int = vip_frame_int;
#if CYCLE_DEBUG_PRINT
		printf("%lu x %lu, fps %u, interrupt camif %u, isp %u, vip %u\n",
				XIL_CAMIF_mReadReg(CAMIF_BASE, CAMIF_REG_WIDTH),
				XIL_CAMIF_mReadReg(CAMIF_BASE, CAMIF_REG_HEIGHT),
				frame_cnt - prev_frame_cnt,
				cam_int - prev_cam_int,
				isp_int - prev_isp_int,
				vip_int - prev_vip_int);
#endif
		prev_frame_cnt = frame_cnt;
		prev_cam_int = cam_int;
		prev_isp_int = isp_int;
		prev_vip_int = vip_int;

#if CYCLE_DEBUG_PRINT
		unsigned i, sum;
		printf("AEC HIST [");
		for (sum = 0, i = 0; i < ISP_REG_STAT_AE_HIST_SIZE; i+=4) {
			unsigned data = XIL_ISP_LITE_mReadReg(ISP_BASE, ISP_REG_STAT_AE_HIST_ADDR+i);
			sum += data;
			if (i >= 96*4 && i < 96*4 + 8*4)
				printf("%u, ", data);
		}
		printf("] total %u\n", sum);//sum may be error, because of reading hist in vsync time
		printf("AWB HIST [");
		for (sum = 0, i = 0; i < ISP_REG_STAT_AWB_HIST_SIZE; i+=4) {
			unsigned data = XIL_ISP_LITE_mReadReg(ISP_BASE, ISP_REG_STAT_AWB_HIST_ADDR+i);
			sum += data;
			if (i >= 96*4 && i < 96*4 + 8*4)
				printf("%u, ", data);
		}
		printf("] total %u\n", sum);//sum may be error, because of reading hist in vsync time
#endif
		key_control();
	}

	return 0;
}

//np.uint8(np.power(np.double(range(256))/255, 1/2.2) * 255)
static const unsigned gamma_table[] = {
		  0,  20,  28,  33,  38,  42,  46,  49,  52,  55,  58,  61,  63,
		 65,  68,  70,  72,  74,  76,  78,  80,  81,  83,  85,  87,  88,
		 90,  91,  93,  94,  96,  97,  99, 100, 102, 103, 104, 106, 107,
		108, 109, 111, 112, 113, 114, 115, 117, 118, 119, 120, 121, 122,
		123, 124, 125, 126, 128, 129, 130, 131, 132, 133, 134, 135, 136,
		136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 147,
		148, 149, 150, 151, 152, 153, 153, 154, 155, 156, 157, 158, 158,
		159, 160, 161, 162, 162, 163, 164, 165, 165, 166, 167, 168, 168,
		169, 170, 171, 171, 172, 173, 174, 174, 175, 176, 176, 177, 178,
		178, 179, 180, 181, 181, 182, 183, 183, 184, 185, 185, 186, 187,
		187, 188, 189, 189, 190, 190, 191, 192, 192, 193, 194, 194, 195,
		196, 196, 197, 197, 198, 199, 199, 200, 200, 201, 202, 202, 203,
		203, 204, 205, 205, 206, 206, 207, 208, 208, 209, 209, 210, 210,
		211, 212, 212, 213, 213, 214, 214, 215, 216, 216, 217, 217, 218,
		218, 219, 219, 220, 220, 221, 222, 222, 223, 223, 224, 224, 225,
		225, 226, 226, 227, 227, 228, 228, 229, 229, 230, 230, 231, 231,
		232, 232, 233, 233, 234, 234, 235, 235, 236, 236, 237, 237, 238,
		238, 239, 239, 240, 240, 241, 241, 242, 242, 243, 243, 244, 244,
		245, 245, 246, 246, 247, 247, 248, 248, 249, 249, 249, 250, 250,
		251, 251, 252, 252, 253, 253, 254, 254, 255
};

static void isp_init_gamma(UINTPTR isp_base)
{
	unsigned i;
	for (i = 0; i < sizeof(gamma_table)/sizeof(gamma_table[0]); i++) {
		XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_GAMMA_TABLE_ADDR+i*4, gamma_table[i]);
	}
	for (i = 0; i < sizeof(gamma_table)/sizeof(gamma_table[0]); i++) {
		printf("gamma[%u]:\t%lu\n", i, XIL_ISP_LITE_mReadReg(isp_base, ISP_REG_GAMMA_TABLE_ADDR+i*4));
	}
}

//OSD演示视频
static const u32 osd_bitmap_128x32[] = {
	0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00002000, 0x00000000, 0x04000000, 0x00400000,
	0x08001800, 0x00000080, 0x03000020, 0x00600008,
	0x06001800, 0x000000C0, 0x0381FFF0, 0x0061FFFC,
	0x03080818, 0x03FFFFE0, 0x01818060, 0x00600300,
	0x038FFFFC,	0x00000000, 0x01818060,	0x06600600,
	0x01080018,	0x00000000,	0x01218060,	0x06640400,
	0x01380020,	0x00000000,	0x3FF18860,	0x067E0408,
	0x00580020,	0x00000000,	0x00618E60,	0x06607FFC,
	0x007000C0,	0x00000000,	0x00618C60,	0x06606018,
	0x304FFFE0,	0x00000000,	0x00C18C60,	0x06606018,
	0x18801000,	0x00000018,	0x00C18C60,	0x06626218,
	0x1C801000,	0x3FFFFFFC,	0x01818C60,	0x3FFF6398,
	0x0C801020,	0x00018000,	0x01818C60,	0x00406318,
	0x0D0FFFF0,	0x00018000,	0x03818C60,	0x00606318,
	0x010C1020,	0x00018000,	0x07E18860,	0x04406318,
	0x010C1020,	0x00618800,	0x05B98860,	0x06406318,
	0x030C1020,	0x00F18400,	0x09998C60,	0x06426318,
	0x020FFFE0,	0x00C18300,	0x11981F00,	0x0C476318,
	0x020C1020,	0x01C18180,	0x21881E00,	0x0C466318,
	0x060C1020,	0x018180C0,	0x41801600,	0x184C6218,
	0x3E0C1020,	0x030180E0,	0x01803600,	0x104C6218,
	0x0E0FFFE0,	0x06018070,	0x01803600,	0x20180700,
	0x0C0C8020,	0x0C018038,	0x01806604,	0x20300480,
	0x0C018600,	0x08018018,	0x0180C604,	0x00600C60,
	0x0C03C1C0,	0x10018010,	0x01808604,	0x00C01838,
	0x0C0700F0,	0x20618000,	0x0183060C,	0x0180301C,
	0x0C0C0038,	0x001F8000,	0x018607FE,	0x0600600C,
	0x0C300018,	0x00070000,	0x019803FC,	0x08018004,
	0x00C00000,	0x00020000,	0x01200000,	0x30060004,
	0x00000000,	0x00000000,	0x00000000,	0x00000000
};

static void vip_init_osd(UINTPTR vip_base, unsigned osd_x, unsigned osd_y, unsigned color_fg, unsigned color_bg)
{
	XIL_VIP_mWriteReg(vip_base, VIP_REG_OSD_X, osd_x);
	XIL_VIP_mWriteReg(vip_base, VIP_REG_OSD_Y, osd_y);
	XIL_VIP_mWriteReg(vip_base, VIP_REG_OSD_W, 32*4);
	XIL_VIP_mWriteReg(vip_base, VIP_REG_OSD_H, 32);
	XIL_VIP_mWriteReg(vip_base, VIP_REG_OSD_RGB_FG, color_fg);
	XIL_VIP_mWriteReg(vip_base, VIP_REG_OSD_RGB_BG, color_bg);
	printf("osd rect:%lu,%lu,%lu,%lu fg/bg:%08X,%08X\n",
			XIL_VIP_mReadReg(vip_base, VIP_REG_OSD_X),
			XIL_VIP_mReadReg(vip_base, VIP_REG_OSD_Y),
			XIL_VIP_mReadReg(vip_base, VIP_REG_OSD_W),
			XIL_VIP_mReadReg(vip_base, VIP_REG_OSD_H),
			XIL_VIP_mReadReg(vip_base, VIP_REG_OSD_RGB_FG),
			XIL_VIP_mReadReg(vip_base, VIP_REG_OSD_RGB_BG));

	unsigned i;
	for (i = 0; i < sizeof(osd_bitmap_128x32)/sizeof(osd_bitmap_128x32[0]); i++) {
		XIL_VIP_mWriteReg(vip_base, VIP_REG_OSD_RAM_ADDR + i*4, osd_bitmap_128x32[i]);
	}
	//for (i = 0; i < sizeof(osd_bitmap_128x32)/sizeof(osd_bitmap_128x32[0]); i++) {
	//	printf("0x%08X\n",XIL_VIP_mReadReg(vip_base, VIP_REG_OSD_RAM_ADDR + i*4));
	//}
}

//spaceKernel = x_bf_makeSpaceKern(7, 6, 31); print(spaceKernel)
static const unsigned char spaceWeightTbl_6[7*7] = {
		24, 26, 27, 27, 27, 26, 24,
		26, 28, 29, 29, 29, 28, 26,
		27, 29, 30, 31, 30, 29, 27,
		27, 29, 31, 31, 31, 29, 27,
		27, 29, 30, 31, 30, 29, 27,
		26, 28, 29, 29, 29, 28, 26,
		24, 26, 27, 27, 27, 26, 24
	};
//spaceKernel = x_bf_makeSpaceKern(7, 8, 31); print(spaceKernel)
static const unsigned char spaceWeightTbl_8[7*7] = {
		27, 28, 29, 29, 29, 28, 27,
		28, 29, 30, 30, 30, 29, 28,
		29, 30, 31, 31, 31, 30, 29,
		29, 30, 31, 31, 31, 30, 29,
		29, 30, 31, 31, 31, 30, 29,
		28, 29, 30, 30, 30, 29, 28,
		27, 28, 29, 29, 29, 28, 27
	};
//spaceKernel = x_bf_makeSpaceKern(7, 10, 31); print(spaceKernel)
static const unsigned char spaceWeightTbl_10[7*7] = {
		28, 29, 29, 30, 29, 29, 28,
		29, 30, 30, 30, 30, 30, 29,
		29, 30, 31, 31, 31, 30, 29,
		30, 30, 31, 31, 31, 30, 30,
		29, 30, 31, 31, 31, 30, 29,
		29, 30, 30, 30, 30, 30, 29,
		28, 29, 29, 30, 29, 29, 28
	};
//colorCurve = x_bf_makeColorCurve(9, 20, 6, 31); print(colorCurve)
static const unsigned char colorCurveTbl_6[9][2] = {
		{ 2<<(ISP_BITS-8), 29},
		{ 4<<(ISP_BITS-8), 25},
		{ 6<<(ISP_BITS-8), 19},
		{ 8<<(ISP_BITS-8), 13},
		{10<<(ISP_BITS-8),  8},
		{12<<(ISP_BITS-8),  4},
		{14<<(ISP_BITS-8),  2},
		{16<<(ISP_BITS-8),  1},
		{18<<(ISP_BITS-8),  0}
	};
//colorCurve = x_bf_makeColorCurve(9, 26, 8, 31); print(colorCurve)
static const unsigned char colorCurveTbl_8[9][2] = {
		{ 2<<(ISP_BITS-8), 30},
		{ 5<<(ISP_BITS-8), 25},
		{ 7<<(ISP_BITS-8), 21},
		{10<<(ISP_BITS-8), 14},
		{13<<(ISP_BITS-8),  8},
		{15<<(ISP_BITS-8),  5},
		{18<<(ISP_BITS-8),  2},
		{20<<(ISP_BITS-8),  1},
		{23<<(ISP_BITS-8),  0}
	};
//colorCurve = x_bf_makeColorCurve(9, 34, 10, 31); print(colorCurve)
static const unsigned char colorCurveTbl_10[9][2] = {
		{ 3<<(ISP_BITS-8), 30},
		{ 6<<(ISP_BITS-8), 26},
		{10<<(ISP_BITS-8), 19},
		{13<<(ISP_BITS-8), 13},
		{17<<(ISP_BITS-8),  7},
		{20<<(ISP_BITS-8),  4},
		{23<<(ISP_BITS-8),  2},
		{27<<(ISP_BITS-8),  1},
		{30<<(ISP_BITS-8),  0}
	};

static void isp_cfg_2dnr(UINTPTR isp_base, const unsigned char spaceWeightTbl[7*7], const unsigned char colorCurveTbl[9][2])
{
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_SPACE_WEIGHT_0,  spaceWeightTbl[0] | (spaceWeightTbl[1]<<8) | (spaceWeightTbl[2]<<16) | (spaceWeightTbl[3]<<24));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_SPACE_WEIGHT_4,  spaceWeightTbl[4] | (spaceWeightTbl[5]<<8) | (spaceWeightTbl[6]<<16) | (spaceWeightTbl[7]<<24));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_SPACE_WEIGHT_8,  spaceWeightTbl[8] | (spaceWeightTbl[9]<<8) | (spaceWeightTbl[10]<<16) | (spaceWeightTbl[11]<<24));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_SPACE_WEIGHT_12, spaceWeightTbl[12] | (spaceWeightTbl[13]<<8) | (spaceWeightTbl[14]<<16) | (spaceWeightTbl[15]<<24));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_SPACE_WEIGHT_16, spaceWeightTbl[16] | (spaceWeightTbl[17]<<8) | (spaceWeightTbl[18]<<16) | (spaceWeightTbl[19]<<24));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_SPACE_WEIGHT_20, spaceWeightTbl[20] | (spaceWeightTbl[21]<<8) | (spaceWeightTbl[22]<<16) | (spaceWeightTbl[23]<<24));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_SPACE_WEIGHT_24, spaceWeightTbl[24] | (spaceWeightTbl[25]<<8) | (spaceWeightTbl[26]<<16) | (spaceWeightTbl[27]<<24));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_SPACE_WEIGHT_28, spaceWeightTbl[28] | (spaceWeightTbl[29]<<8) | (spaceWeightTbl[30]<<16) | (spaceWeightTbl[31]<<24));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_SPACE_WEIGHT_32, spaceWeightTbl[32] | (spaceWeightTbl[33]<<8) | (spaceWeightTbl[34]<<16) | (spaceWeightTbl[35]<<24));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_SPACE_WEIGHT_36, spaceWeightTbl[36] | (spaceWeightTbl[37]<<8) | (spaceWeightTbl[38]<<16) | (spaceWeightTbl[39]<<24));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_SPACE_WEIGHT_40, spaceWeightTbl[40] | (spaceWeightTbl[41]<<8) | (spaceWeightTbl[42]<<16) | (spaceWeightTbl[43]<<24));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_SPACE_WEIGHT_44, spaceWeightTbl[44] | (spaceWeightTbl[45]<<8) | (spaceWeightTbl[46]<<16) | (spaceWeightTbl[47]<<24));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_COLOR_CURVE_0, colorCurveTbl[0][0] | (colorCurveTbl[0][1] << 16));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_COLOR_CURVE_1, colorCurveTbl[1][0] | (colorCurveTbl[1][1] << 16));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_COLOR_CURVE_2, colorCurveTbl[2][0] | (colorCurveTbl[2][1] << 16));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_COLOR_CURVE_3, colorCurveTbl[3][0] | (colorCurveTbl[3][1] << 16));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_COLOR_CURVE_4, colorCurveTbl[4][0] | (colorCurveTbl[4][1] << 16));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_COLOR_CURVE_5, colorCurveTbl[5][0] | (colorCurveTbl[5][1] << 16));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_COLOR_CURVE_6, colorCurveTbl[6][0] | (colorCurveTbl[6][1] << 16));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_COLOR_CURVE_7, colorCurveTbl[7][0] | (colorCurveTbl[7][1] << 16));
	XIL_ISP_LITE_mWriteReg(isp_base, ISP_REG_2DNR_COLOR_CURVE_8, colorCurveTbl[8][0] | (colorCurveTbl[8][1] << 16));
}

static void isp_init_2dnr(UINTPTR isp_base)
{
	//isp_cfg_2dnr(isp_base, spaceWeightTbl_6, colorCurveTbl_6);
	//isp_cfg_2dnr(isp_base, spaceWeightTbl_8, colorCurveTbl_8);
	isp_cfg_2dnr(isp_base, spaceWeightTbl_10, colorCurveTbl_10);
}
