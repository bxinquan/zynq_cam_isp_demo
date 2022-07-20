
#ifndef XIL_VIP_H
#define XIL_VIP_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"

#define VIP_REG_RESET                      (0 * 4)
#define VIP_REG_TOP_EN                     (1 * 4)
#define VIP_REG_HIST_EQU_MIN               (2 * 4)
#define VIP_REG_HIST_EQU_MAX               (3 * 4)
#define VIP_REG_CROP_X                     (4 * 4)
#define VIP_REG_CROP_Y                     (5 * 4)
#define VIP_REG_CROP_W                     (6 * 4)
#define VIP_REG_CROP_H                     (7 * 4)
#define VIP_REG_DSCALE_H                   (8 * 4)
#define VIP_REG_DSCALE_V                   (9 * 4)
#define VIP_REG_OSD_X                      (10 * 4)
#define VIP_REG_OSD_Y                      (11 * 4)
#define VIP_REG_OSD_W                      (12 * 4)
#define VIP_REG_OSD_H                      (13 * 4)
#define VIP_REG_OSD_RGB_FG                 (14 * 4)
#define VIP_REG_OSD_RGB_BG                 (15 * 4)
#define VIP_REG_YUV444TO422_SWITCH_UV      (16 * 4)
#define VIP_REG_INT_STATUS                 (17 * 4)
#define VIP_REG_INT_MASK                   (18 * 4)

#define VIP_REG_OSD_RAM_ADDR               (1*512*4)
#define VIP_REG_OSD_RAM_SIZE               (1*512*4)

#define VIP_REG_TOP_EN_BIT_HIST_EQU_EN     (1<<0)
#define VIP_REG_TOP_EN_BIT_SOBEL_EN        (1<<1)
#define VIP_REG_TOP_EN_BIT_YUV2RGB_EN      (1<<2)
#define VIP_REG_TOP_EN_BIT_CROP_EN         (1<<3)
#define VIP_REG_TOP_EN_BIT_DSCALE_EN       (1<<4)
#define VIP_REG_TOP_EN_BIT_OSD_EN          (1<<5)
#define VIP_REG_TOP_EN_BIT_YUV444TO422_EN  (1<<6)

#define VIP_REG_INT_STATUS_BIT_FRAME_START (1<<0)
#define VIP_REG_INT_STATUS_BIT_FRAME_DONE  (1<<1)

#define VIP_REG_INT_MASK_BIT_FRAME_START   (1<<0)
#define VIP_REG_INT_MASK_BIT_FRAME_DONE    (1<<1)



/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a XIL_VIP register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the XIL_VIPdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void XIL_VIP_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define XIL_VIP_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a XIL_VIP register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the XIL_VIP device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 XIL_VIP_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define XIL_VIP_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the XIL_VIP instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus XIL_VIP_Reg_SelfTest(void * baseaddr_p);

#endif // XIL_VIP_H
