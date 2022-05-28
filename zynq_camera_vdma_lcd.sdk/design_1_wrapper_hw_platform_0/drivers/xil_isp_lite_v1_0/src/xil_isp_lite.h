
#ifndef XIL_ISP_LITE_H
#define XIL_ISP_LITE_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"

#define ISP_REG_RESET                   (0  * 4)
#define ISP_REG_TOP_EN                  (1  * 4)
#define ISP_REG_DPC_THRESHOLD           (2  * 4)
#define ISP_REG_BLC_R                   (3  * 4)
#define ISP_REG_BLC_GR                  (4  * 4)
#define ISP_REG_BLC_GB                  (5  * 4)
#define ISP_REG_BLC_B                   (6  * 4)
#define ISP_REG_NR_LEVEL                (7  * 4)
#define ISP_REG_DGAIN_GAIN              (8  * 4)
#define ISP_REG_DGAIN_OFFSET            (9  * 4)
#define ISP_REG_WB_RGAIN                (10 * 4)
#define ISP_REG_WB_GGAIN                (11 * 4)
#define ISP_REG_WB_BGAIN                (12 * 4)
#define ISP_REG_CCM_RR                  (13 * 4)
#define ISP_REG_CCM_RG                  (14 * 4)
#define ISP_REG_CCM_RB                  (15 * 4)
#define ISP_REG_CCM_GR                  (16 * 4)
#define ISP_REG_CCM_GG                  (17 * 4)
#define ISP_REG_CCM_GB                  (18 * 4)
#define ISP_REG_CCM_BR                  (19 * 4)
#define ISP_REG_CCM_BG                  (20 * 4)
#define ISP_REG_CCM_BB                  (21 * 4)
#define ISP_REG_STAT_AE_RECT_X          (22 * 4)
#define ISP_REG_STAT_AE_RECT_Y          (23 * 4)
#define ISP_REG_STAT_AE_RECT_W          (24 * 4)
#define ISP_REG_STAT_AE_RECT_H          (25 * 4)
#define ISP_REG_STAT_AE_PIX_CNT_L       (26 * 4)
#define ISP_REG_STAT_AE_PIX_CNT_H       (27 * 4)
#define ISP_REG_STAT_AE_SUM_L           (28 * 4)
#define ISP_REG_STAT_AE_SUM_H           (29 * 4)
#define ISP_REG_STAT_AWB_MIN            (30 * 4)
#define ISP_REG_STAT_AWB_MAX            (31 * 4)
#define ISP_REG_STAT_AWB_PIX_CNT_L      (32 * 4)
#define ISP_REG_STAT_AWB_PIX_CNT_H      (33 * 4)
#define ISP_REG_STAT_AWB_SUM_R_L        (34 * 4)
#define ISP_REG_STAT_AWB_SUM_R_H        (35 * 4)
#define ISP_REG_STAT_AWB_SUM_G_L        (36 * 4)
#define ISP_REG_STAT_AWB_SUM_G_H        (37 * 4)
#define ISP_REG_STAT_AWB_SUM_B_L        (38 * 4)
#define ISP_REG_STAT_AWB_SUM_B_H        (39 * 4)
#define ISP_REG_INT_STATUS              (40 * 4)
#define ISP_REG_INT_MASK                (41 * 4)
#define ISP_REG_2DNR_SPACE_WEIGHT_0     (42 * 4) //0:[4:0], 1:[12:8], 2:[20:16], 3:[28:24]
#define ISP_REG_2DNR_SPACE_WEIGHT_4     (43 * 4)
#define ISP_REG_2DNR_SPACE_WEIGHT_8     (44 * 4)
#define ISP_REG_2DNR_SPACE_WEIGHT_12    (45 * 4)
#define ISP_REG_2DNR_SPACE_WEIGHT_16    (46 * 4)
#define ISP_REG_2DNR_SPACE_WEIGHT_20    (47 * 4)
#define ISP_REG_2DNR_SPACE_WEIGHT_24    (48 * 4)
#define ISP_REG_2DNR_SPACE_WEIGHT_28    (49 * 4)
#define ISP_REG_2DNR_SPACE_WEIGHT_32    (50 * 4)
#define ISP_REG_2DNR_SPACE_WEIGHT_36    (51 * 4)
#define ISP_REG_2DNR_SPACE_WEIGHT_40    (52 * 4)
#define ISP_REG_2DNR_SPACE_WEIGHT_44    (53 * 4)
#define ISP_REG_2DNR_SPACE_WEIGHT_48    (54 * 4) //48:[4:0]
#define ISP_REG_2DNR_COLOR_CURVE_0      (55 * 4) //x0:[15:0] y0:[20:16]
#define ISP_REG_2DNR_COLOR_CURVE_1      (56 * 4)
#define ISP_REG_2DNR_COLOR_CURVE_2      (57 * 4)
#define ISP_REG_2DNR_COLOR_CURVE_3      (58 * 4)
#define ISP_REG_2DNR_COLOR_CURVE_4      (59 * 4)
#define ISP_REG_2DNR_COLOR_CURVE_5      (60 * 4)
#define ISP_REG_2DNR_COLOR_CURVE_6      (61 * 4)
#define ISP_REG_2DNR_COLOR_CURVE_7      (62 * 4)
#define ISP_REG_2DNR_COLOR_CURVE_8      (63 * 4)


#define ISP_REG_STAT_AE_HIST_ADDR     	(1*1024*4)
#define ISP_REG_STAT_AE_HIST_SIZE     	(4*256*4)
#define ISP_REG_STAT_AWB_HIST_ADDR    	(2*1024*4)
#define ISP_REG_STAT_AWB_HIST_SIZE 		(3*256*4)
#define ISP_REG_GAMMA_TABLE_ADDR      	(3*1024*4)
#define ISP_REG_GAMMA_TABLE_SIZE      	(1*256*4)


#define ISP_REG_TOP_EN_BIT_DPC_EN           (1<<0)
#define ISP_REG_TOP_EN_BIT_BLC_EN           (1<<1)
#define ISP_REG_TOP_EN_BIT_BNR_EN           (1<<2)
#define ISP_REG_TOP_EN_BIT_DGAIN_EN         (1<<3)
#define ISP_REG_TOP_EN_BIT_DEMOSIC_EN       (1<<4)
#define ISP_REG_TOP_EN_BIT_WB_EN            (1<<5)
#define ISP_REG_TOP_EN_BIT_CCM_EN           (1<<6)
#define ISP_REG_TOP_EN_BIT_CSC_EN           (1<<7)
#define ISP_REG_TOP_EN_BIT_GAMMA_EN         (1<<8)
#define ISP_REG_TOP_EN_BIT_2DNR_EN          (1<<9)
#define ISP_REG_TOP_EN_BIT_EE_EN            (1<<10)
#define ISP_REG_TOP_EN_BIT_STAT_AE_EN       (1<<11)
#define ISP_REG_TOP_EN_BIT_STAT_AWB_EN      (1<<12)

#define ISP_REG_INT_STATUS_BIT_FRAME_DONE   (1<<0)
#define ISP_REG_INT_STATUS_BIT_AE_DONE      (1<<1)
#define ISP_REG_INT_STATUS_BIT_AWB_DONE     (1<<2)

#define ISP_REG_INT_MASK_BIT_FRAME_DONE     (1<<0)
#define ISP_REG_INT_MASK_BIT_AE_DONE        (1<<1)
#define ISP_REG_INT_MASK_BIT_AWB_DONE       (1<<2)



/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a XIL_ISP_LITE register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the XIL_ISP_LITEdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void XIL_ISP_LITE_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define XIL_ISP_LITE_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a XIL_ISP_LITE register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the XIL_ISP_LITE device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 XIL_ISP_LITE_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define XIL_ISP_LITE_mReadReg(BaseAddress, RegOffset) \
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
 * @param   baseaddr_p is the base address of the XIL_ISP_LITE instance to be worked on.
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
XStatus XIL_ISP_LITE_Reg_SelfTest(void * baseaddr_p);

#ifdef __cplusplus
extern "C" {
#endif

void isp_ae_handler(UINTPTR base, unsigned target_luminance, unsigned max_exposure, unsigned max_gain);

void isp_awb_handler(UINTPTR base);

#ifdef __cplusplus
}
#endif
#endif // XIL_ISP_LITE_H
