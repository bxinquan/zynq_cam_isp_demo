

/***************************** Include Files *******************************/
#include "xil_io.h"
#include "xil_isp_lite.h"


extern int cmos_set_exposure(unsigned exposure);
extern int cmos_set_gain(unsigned gain);

void isp_ae_handler(UINTPTR base, unsigned target_luminance, unsigned max_exposure, unsigned max_gain)
{
	static unsigned cmos_exposure = 0x080;
	static unsigned cmos_gain = 0x010;
	const unsigned target_val = target_luminance;
	unsigned long long pix_cnt = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AE_PIX_CNT_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AE_PIX_CNT_H) << 32);
	unsigned long long val_sum = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AE_SUM_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AE_SUM_H) << 32);
	unsigned gain0 = pix_cnt * target_val * 16 / val_sum;
	gain0 = gain0 > 2*16 ? 2*16 : gain0;

	unsigned expo_diff, gain_diff;
	if (gain0 > 18) {
		expo_diff = (((cmos_exposure * gain0) >> 4) - cmos_exposure) >> 1;
		expo_diff = expo_diff > 0 ? expo_diff : 1;
		gain_diff = (((cmos_gain * gain0) >> 4) - cmos_gain) >> 1;
		gain_diff = gain_diff > 0 ? gain_diff : 1;
		if (cmos_exposure < max_exposure) {
			if (cmos_exposure + expo_diff > max_exposure)
				cmos_exposure = max_exposure;
			else
				cmos_exposure = cmos_exposure + expo_diff;
		}
		else if (cmos_gain < max_gain) {
			if (cmos_gain + gain_diff > max_gain)
				cmos_gain = max_gain;
			else
				cmos_gain = cmos_gain + gain_diff;
		}
		cmos_set_exposure(cmos_exposure);
		cmos_set_gain(cmos_gain);
	}
	else if (gain0 < 14) {
		expo_diff = (cmos_exposure - ((cmos_exposure * gain0) >> 4)) >> 1;
		expo_diff = expo_diff > 0 ? expo_diff : 1;
		gain_diff = (cmos_gain - ((cmos_gain * gain0) >> 4)) >> 1;
		gain_diff = gain_diff > 0 ? gain_diff : 1;
		if (cmos_gain > 16) {
			if (cmos_gain < 16 + gain_diff)
				cmos_gain = 16;
			else
				cmos_gain = cmos_gain - gain_diff;
		}
		else if (cmos_exposure > 1) {
			if (cmos_exposure < 1 + expo_diff)
				cmos_exposure = 1;
			else
				cmos_exposure = cmos_exposure - expo_diff;
		}
		cmos_set_exposure(cmos_exposure);
		cmos_set_gain(cmos_gain);
	}
}

void isp_awb_handler(UINTPTR base)
{
	unsigned long long pix_cnt = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_PIX_CNT_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_PIX_CNT_H) << 32);
	unsigned long long sum_r = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_R_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_R_H) << 32);
	unsigned long long sum_g = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_G_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_G_H) << 32);
	unsigned long long sum_b = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_B_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_B_H) << 32);

	unsigned r_gain0 = (sum_g << 4) / sum_r;
	unsigned b_gain0 = (sum_g << 4) / sum_b;

	XIL_ISP_LITE_mWriteReg(base, ISP_REG_WB_GGAIN, 0x10);
	XIL_ISP_LITE_mWriteReg(base, ISP_REG_WB_RGAIN, r_gain0);
	XIL_ISP_LITE_mWriteReg(base, ISP_REG_WB_BGAIN, b_gain0);
}


/************************** Function Definitions ***************************/
