#include "xparameters.h"
#include "sys_intr.h"
#include "xil_exception.h"

#ifdef XPAR_INTC_0_DEVICE_ID

static XIntc axiIntc;
static XScuGic intc;

//中断初始化
int sys_intr_init(void)
{
    XIntc_Initialize(&axiIntc, XPAR_AXI_INTC_0_DEVICE_ID);
    XIntc_Start(&axiIntc, XIN_REAL_MODE);

    int status;
    //初始化中断控制器
    XScuGic_Config *intc_cfg;
    intc_cfg = XScuGic_LookupConfig(XPAR_SCUGIC_SINGLE_DEVICE_ID);
    if (NULL == intc_cfg) {
        return XST_FAILURE;
	}
    status = XScuGic_CfgInitialize(&intc, intc_cfg, intc_cfg->CpuBaseAddress);
    if (status != XST_SUCCESS)
        return XST_FAILURE;

    XScuGic_Connect(&intc, XPS_FPGA0_INT_ID, (Xil_ExceptionHandler) XIntc_InterruptHandler, (void*)&axiIntc);
    XScuGic_Enable(&intc, XPS_FPGA0_INT_ID);

    //设置并打开中断异常处理功能
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, (void*)&intc);
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

XIntc* sys_intr_inst()
{
	return &axiIntc;
}

#else

static XScuGic intc;

//中断初始化
int sys_intr_init(void)
{
    int status;
    //初始化中断控制器
    XScuGic_Config *intc_cfg;
    intc_cfg = XScuGic_LookupConfig(XPAR_SCUGIC_SINGLE_DEVICE_ID);
    if (NULL == intc_cfg) {
        return XST_FAILURE;
	}
    status = XScuGic_CfgInitialize(&intc, intc_cfg, intc_cfg->CpuBaseAddress);
    if (status != XST_SUCCESS)
        return XST_FAILURE;

    //设置并打开中断异常处理功能
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, (void*)&intc);
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

XScuGic* sys_intr_inst()
{
	return &intc;
}

#endif
