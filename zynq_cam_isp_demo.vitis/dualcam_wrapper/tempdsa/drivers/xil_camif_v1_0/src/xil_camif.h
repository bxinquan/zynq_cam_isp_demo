
#ifndef XIL_CAMIF_H
#define XIL_CAMIF_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"

#define CAMIF_REG_RESET                (0 * 4)    
#define CAMIF_REG_WIDTH                (1 * 4)    
#define CAMIF_REG_HEIGHT               (2 * 4)    
#define CAMIF_REG_FRAME_CNT            (3 * 4)    
#define CAMIF_REG_COLORBAR_EN          (4 * 4)    
#define CAMIF_REG_INT_STATUS           (5 * 4)    
#define CAMIF_REG_INT_MASK             (6 * 4)    



/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a XIL_CAMIF register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the XIL_CAMIFdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void XIL_CAMIF_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define XIL_CAMIF_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a XIL_CAMIF register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the XIL_CAMIF device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 XIL_CAMIF_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define XIL_CAMIF_mReadReg(BaseAddress, RegOffset) \
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
 * @param   baseaddr_p is the base address of the XIL_CAMIF instance to be worked on.
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
XStatus XIL_CAMIF_Reg_SelfTest(void * baseaddr_p);

#endif // XIL_CAMIF_H
