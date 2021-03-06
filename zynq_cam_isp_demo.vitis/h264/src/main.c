#include "stdio.h"
#include "xparameters.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "xscugic.h"
#include "xgpiops.h"
#include "xtime_l.h"

#include "ov5640_init.h"
#include "vdma_api.h"
#include "sys_intr.h"
#include "xv_frmbufwr_l2.h"


#include "xil_camif.h"
#include "xil_isp_lite.h"
#include "xil_vip.h"

#include"xgpiops.h"
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


#define CAM_WIDTH 2592
#define CAM_HEIGHT 1944
#define DVI_WIDTH 1280
#define DVI_HEIGHT 720
#define ENC_WIDTH 1280
#define ENC_HEIGHT 960

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
#define VIP_DVI_BASE    XPAR_XIL_VIP_0_S00_AXI_BASEADDR
#define VIP_ENC_BASE    XPAR_XIL_VIP_1_S00_AXI_BASEADDR

static XV_FrmbufWr_l2     frmbufwr;

//中断初始化
int camera_intr_init()
{
#ifdef XPAR_INTC_0_DEVICE_ID
	XIntc *intc = sys_intr_inst();
	XIntc_Connect(intc, XPAR_AXI_INTC_0_XIL_CAMIF_0_IRQ_INTR, (XInterruptHandler) camif_isr, (void*)CAMIF_BASE);
	XIntc_Connect(intc, XPAR_AXI_INTC_0_XIL_ISP_LITE_0_IRQ_INTR, (XInterruptHandler) isp_isr, (void*)ISP_BASE);
	XIntc_Connect(intc, XPAR_AXI_INTC_0_XIL_VIP_0_IRQ_INTR, (XInterruptHandler) vip_isr, (void*)VIP_DVI_BASE);
	XIntc_Connect(intc, XPAR_AXI_INTC_0_XIL_VIP_1_IRQ_INTR, (XInterruptHandler) vip_isr, (void*)VIP_ENC_BASE);
	XIntc_Connect(intc, XPAR_AXI_INTC_0_V_FRMBUF_WR_0_INTERRUPT_INTR, (XInterruptHandler)XVFrmbufWr_InterruptHandler, &frmbufwr);
	XIntc_Enable(intc, XPAR_AXI_INTC_0_XIL_CAMIF_0_IRQ_INTR);
	XIntc_Enable(intc, XPAR_AXI_INTC_0_XIL_ISP_LITE_0_IRQ_INTR);
	XIntc_Enable(intc, XPAR_AXI_INTC_0_XIL_VIP_0_IRQ_INTR);
	XIntc_Enable(intc, XPAR_AXI_INTC_0_XIL_VIP_1_IRQ_INTR);
	XIntc_Enable(intc, XPAR_AXI_INTC_0_V_FRMBUF_WR_0_INTERRUPT_INTR);
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

static volatile unsigned frmwr_frame_int = 0;
static void *_XVFrmbufWr_Callback(void *data)
{
	//printf("_XVFrmbufWr_Callback\r\n");
	frmwr_frame_int ++;
	XVFrmbufWr_Start(&frmbufwr);
}

static int init_XVFrmbufWr(UINTPTR yptr, UINTPTR cptr)
{
	int Status;
	XVidC_ColorFormat Cfmt;
	XVidC_VideoStream VidStream = {0};
	u32 StrideInBytes;

	Cfmt = XVIDC_CSF_MEM_Y_UV8_420;
	VidStream.ColorFormatId = XVIDC_CSF_YCRCB_420;
	VidStream.ColorDepth = XVIDC_BPC_8;
	VidStream.PixPerClk = XVIDC_PPC_1;
	VidStream.VmId = XVIDC_VM_1280x960_60_P;
	VidStream.FrameRate = XVidC_GetFrameRate(VidStream.VmId);
	VidStream.Timing = *(XVidC_GetTimingInfo(VidStream.VmId));
	VidStream.AspectRatio = XVIDC_AR_4_3;
	VidStream.IsInterlaced = 0;
	VidStream.Is3D = 0;
	StrideInBytes = 1280;

	Status = XVFrmbufWr_Initialize(&frmbufwr, XPAR_V_FRMBUF_WR_0_DEVICE_ID);
	if(Status != XST_SUCCESS) {
	  xil_printf("ERROR:: Frame Buffer Write initialization failed %d(%04X)\r\n", Status, Status);
	  return(XST_FAILURE);
	}

	Status = XVFrmbufWr_SetMemFormat(&frmbufwr, StrideInBytes, Cfmt, &VidStream);
	if(Status != XST_SUCCESS) {
	  xil_printf("ERROR:: Unable to configure Frame Buffer Write %d(%04X)\r\n", Status, Status);
	  return(XST_FAILURE);
	}

	Status = XVFrmbufWr_SetBufferAddr(&frmbufwr, yptr);
	if(Status != XST_SUCCESS) {
	  xil_printf("ERROR:: Unable to configure Frame Buffer Write buffer address %d(%04X)\r\n", Status, Status);
	  return(XST_FAILURE);
	}

	/* Set Chroma Buffer Address for semi-planar color formats */
	if ((Cfmt == XVIDC_CSF_MEM_Y_UV8) || (Cfmt == XVIDC_CSF_MEM_Y_UV8_420) ||
	    (Cfmt == XVIDC_CSF_MEM_Y_UV10) || (Cfmt == XVIDC_CSF_MEM_Y_UV10_420)) {
	  Status = XVFrmbufWr_SetChromaBufferAddr(&frmbufwr, cptr);
	  if(Status != XST_SUCCESS) {
	    xil_printf("ERROR:: Unable to configure Frame Buffer Write chroma buffer address %d(%04X)\r\n", Status, Status);
	    return(XST_FAILURE);
	  }
	}
	
	XVFrmbufWr_SetCallback(&frmbufwr, XVFRMBUFWR_HANDLER_DONE, _XVFrmbufWr_Callback, &frmbufwr);

	/* Enable Interrupt */
	XVFrmbufWr_InterruptEnable(&frmbufwr, XVFRMBUFWR_IRQ_DONE_MASK);

	/* Start Frame Buffers */
	XVFrmbufWr_Start(&frmbufwr);

	xil_printf("INFO: FRMBUF configured\r\n");
	return(Status);
}

static void isp_init_gamma(UINTPTR isp_base);
static void vip_init_osd(UINTPTR vip_base, unsigned osd_x, unsigned osd_y, unsigned color_fg, unsigned color_bg);

static void init_camif_isp_vip()
{
	XIL_CAMIF_mWriteReg(CAMIF_BASE, CAMIF_REG_RESET, 1);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_RESET, 1);
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_RESET, 1);
	XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_RESET, 1);

	XIL_CAMIF_mWriteReg(CAMIF_BASE, CAMIF_REG_INT_MASK, 0xffff);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_INT_MASK, 0xffff);
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_INT_MASK, 0xffff);
	XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_INT_MASK, 0xffff);
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
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_NR_LEVEL, 2);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_DGAIN_GAIN, 0x10);//1.0x
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_STAT_AE_RECT_X, CAM_WIDTH/4);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_STAT_AE_RECT_Y, CAM_HEIGHT/4);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_STAT_AE_RECT_W, CAM_WIDTH/2);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_STAT_AE_RECT_H, CAM_HEIGHT/2);


	//DVI VIP
	unsigned vip_top_en = 0;
	unsigned scale_h = CAM_WIDTH / DVI_WIDTH;
	unsigned scale_v = CAM_HEIGHT / DVI_HEIGHT;
	//vip_top_en |= VIP_REG_TOP_EN_BIT_HIST_EQU_EN;
	//vip_top_en |= VIP_REG_TOP_EN_BIT_SOBEL_EN;
	vip_top_en |= VIP_REG_TOP_EN_BIT_YUV2RGB_EN;
	vip_top_en |= VIP_REG_TOP_EN_BIT_CROP_EN;
	vip_top_en |= VIP_REG_TOP_EN_BIT_OSD_EN;
	//vip_top_en |= VIP_REG_TOP_EN_BIT_YUV444TO422_EN;
	if (scale_h > 1 && scale_v > 1) {
		vip_top_en |= VIP_REG_TOP_EN_BIT_DSCALE_EN;
	}
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_TOP_EN, vip_top_en);
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_HIST_EQU_MIN, 20);
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_HIST_EQU_MAX, 200);
	vip_init_osd(VIP_DVI_BASE, 16, 16, 0xffffff, 0x888888);
	//XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_YUV444TO422_SWITCH_UV, 1);

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


	//ENC VIP
	vip_top_en = 0;
	scale_h = CAM_WIDTH / ENC_WIDTH;
	scale_v = CAM_HEIGHT / ENC_HEIGHT;
	//vip_top_en |= VIP_REG_TOP_EN_BIT_HIST_EQU_EN;
	//vip_top_en |= VIP_REG_TOP_EN_BIT_SOBEL_EN;
	//vip_top_en |= VIP_REG_TOP_EN_BIT_YUV2RGB_EN;
	vip_top_en |= VIP_REG_TOP_EN_BIT_CROP_EN;
	vip_top_en |= VIP_REG_TOP_EN_BIT_OSD_EN;
	vip_top_en |= VIP_REG_TOP_EN_BIT_YUV444TO422_EN;
	if (scale_h > 1 && scale_v > 1) {
		vip_top_en |= VIP_REG_TOP_EN_BIT_DSCALE_EN;
	}
	XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_TOP_EN, vip_top_en);
	XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_HIST_EQU_MIN, 20);
	XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_HIST_EQU_MAX, 200);
	vip_init_osd(VIP_ENC_BASE, 16, 16, 0x8080ff, 0x808088);
	//XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_YUV444TO422_SWITCH_UV, 1);

	if (vip_top_en & VIP_REG_TOP_EN_BIT_DSCALE_EN) {
		unsigned scale_val = scale_h < scale_v ? scale_h : scale_v;
		XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_CROP_X, (CAM_WIDTH-ENC_WIDTH*scale_val)/2);
		XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_CROP_Y, (CAM_HEIGHT-ENC_HEIGHT*scale_val)/2);
		XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_CROP_W, ENC_WIDTH*scale_val);
		XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_CROP_H, ENC_HEIGHT*scale_val);
		XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_DSCALE_H, scale_val-1);
		XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_DSCALE_V, scale_val-1);
	} else {
		XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_CROP_X, (CAM_WIDTH-ENC_WIDTH)/2);
		XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_CROP_Y, (CAM_HEIGHT-ENC_HEIGHT)/2);
		XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_CROP_W, ENC_WIDTH);
		XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_CROP_H, ENC_HEIGHT);
	}


	XIL_CAMIF_mWriteReg(CAMIF_BASE, CAMIF_REG_RESET, 0);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_RESET, 0);
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_RESET, 0);
	XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_RESET, 0);
	printf("vi_reset  = %08lX\n", XIL_CAMIF_mReadReg(CAMIF_BASE, CAMIF_REG_RESET));
	printf("isp_reset = %08lX\n", XIL_ISP_LITE_mReadReg(ISP_BASE, ISP_REG_RESET));
	printf("vip_reset = %08lX\n", XIL_VIP_mReadReg(VIP_DVI_BASE, VIP_REG_RESET));
	printf("vip_reset = %08lX\n", XIL_VIP_mReadReg(VIP_ENC_BASE, VIP_REG_RESET));

	camera_intr_init();
	XIL_CAMIF_mWriteReg(CAMIF_BASE, CAMIF_REG_INT_MASK, ~CAMIF_REG_INT_MASK_BIT_FRAME_DONE);
	XIL_ISP_LITE_mWriteReg(ISP_BASE, ISP_REG_INT_MASK, ~ISP_REG_INT_MASK_BIT_FRAME_START);
	XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_INT_MASK, ~VIP_REG_INT_MASK_BIT_FRAME_DONE);
	XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_INT_MASK, ~VIP_REG_INT_MASK_BIT_FRAME_DONE);
}


static int dvi_buff = XPAR_PS7_DDR_0_S_AXI_BASEADDR+0x4000000; //RGB888
static int enc_buff = XPAR_PS7_DDR_0_S_AXI_BASEADDR+0x5000000; //NV12
static int avc_buff = XPAR_PS7_DDR_0_S_AXI_BASEADDR+0x6000000; //264

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
			XIL_VIP_mWriteReg(VIP_DVI_BASE, VIP_REG_RESET, reset);
			XIL_VIP_mWriteReg(VIP_ENC_BASE, VIP_REG_RESET, reset);
		}
	}
	if (fs_init && 0 == XGpioPs_ReadPin(&gpiops_inst, PL_KEY0)) {
		printf("writing dump_enc_yuv.bin ... ");
		Xil_DCacheInvalidateRange(enc_buff, ENC_WIDTH * ENC_HEIGHT * 3 * 3);
		sd_write_data("dump_enc_yuv.bin", enc_buff, ENC_WIDTH * ENC_HEIGHT * 3 * 3);
		printf("done\n");
	}
	if (fs_init && 0 == XGpioPs_ReadPin(&gpiops_inst, PL_KEY1)) {
		printf("writing dump_dvi_rgb888.bin ... ");
		Xil_DCacheInvalidateRange(dvi_buff, DVI_WIDTH * DVI_HEIGHT * 3);
		sd_write_data("dump_dvi_rgb888.bin", dvi_buff, DVI_WIDTH * DVI_HEIGHT * 3 * 3);
		printf("done\n");
	}
	if (fs_init && 0 == XGpioPs_ReadPin(&gpiops_inst, PS_KEY0)) {
		//printf("writing dump_dvi_nv12.bin ... ");
		//Xil_DCacheInvalidateRange(dvi_buff, DVI_WIDTH * DVI_HEIGHT * 3 / 2);
		//sd_write_data("dump_dvi_nv12.bin", yuv_buff, DVI_WIDTH * DVI_HEIGHT * 3 / 2);
		//printf("done\n");
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
	XAxiVdma dvi_vdma_inst;
	//XAxiVdma enc_vdma_inst;
	IspContext isp_context = {0};

	sys_intr_init();
	gpio_init();

	fs_init = 0 == platform_init_fs();

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
	isp_context.ae_target_luminance = 75;
	isp_context.ae_max_exposure = total_v_std;
	isp_context.ae_max_gain = 0x1ff;
	isp_context.ae_cur_exposure = total_v_std;
	isp_context.ae_cur_gain = 0x010;
	isp_context.ae_cur_isp_dgain = 0x010;
	isp_context.awb_cur_rgain = 0x010;
	isp_context.awb_cur_bgain = 0x010;

	init_camif_isp_vip();

	run_triple_frame_buffer(&dvi_vdma_inst, XPAR_AXI_VDMA_0_DEVICE_ID,
			DVI_WIDTH, DVI_HEIGHT, dvi_buff, 0, 0, BOTH);
	//run_triple_frame_buffer(&enc_vdma_inst, XPAR_AXI_VDMA_1_DEVICE_ID,
	//		ENC_WIDTH, ENC_HEIGHT, enc_buff, 0, 0, ONLY_WRITE);
	init_XVFrmbufWr(enc_buff, enc_buff+ENC_WIDTH*ENC_HEIGHT);

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
	unsigned prev_frmwr_frame_int = 0;
	unsigned curr_isp_int = isp_frame_int;
	while(1) {
		if (curr_isp_int != isp_frame_int) {
			//if (isp_frame_int % 2 == 0) {
				isp_ae_handler(&isp_context);
				isp_awb_handler(&isp_context);
			//}
			curr_isp_int = isp_frame_int;
		}

		//H264
		if (frmwr_frame_int != prev_frmwr_frame_int  && frm_cnt > 0) {
			prev_frmwr_frame_int = frmwr_frame_int;
			//memset(avc_buff, 0, ENC_WIDTH * ENC_HEIGHT * 3);
			Xil_DCacheFlushRange(avc_buff, ENC_WIDTH * ENC_HEIGHT * 3);
			//yuv_convert(enc_buff, yuv_buff, ENC_WIDTH, ENC_HEIGHT);
			int nbs = h264_enc_frame(enc_buff, ENC_WIDTH, ENC_HEIGHT, avc_buff);
			if (nbs > 0) {
				Xil_DCacheInvalidateRange(avc_buff, nbs);
				f_write(&fil, start_code, sizeof(start_code), &bw);
				f_write(&fil, slc_buf, sizeof(slc_buf), &bw);
				f_write(&fil, avc_buff, nbs, &bw);
				frm_cnt --;
				printf("frame %04d size %08d bytes (frm_id:%u)\n", frm_cnt, nbs, prev_frmwr_frame_int);
				if (frm_cnt == 0) {
					f_close(&fil);
					printf("===========================\n");
				}
				//continue;
			}
		}

#define CYCLE_DEBUG_PRINT 0
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
