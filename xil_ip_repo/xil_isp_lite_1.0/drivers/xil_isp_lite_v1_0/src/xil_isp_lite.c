

/***************************** Include Files *******************************/
#include "xil_io.h"
#include "xil_isp_lite.h"

extern int cmos_set_exposure(unsigned exposure);
extern int cmos_set_gain(unsigned gain);

void isp_ae_handler(UINTPTR base, unsigned target_luminance, unsigned max_exposure, unsigned max_gain)
{
	static unsigned cmos_exposure0 = 0x080;
	static unsigned cmos_gain0 = 0x010;
	static unsigned isp_dgain0 = 0x010;
	const unsigned target_val = target_luminance;
	unsigned long long pix_cnt = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AE_PIX_CNT_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AE_PIX_CNT_H) << 32);
	unsigned long long val_sum = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AE_SUM_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AE_SUM_H) << 32);
	unsigned gain = (pix_cnt * target_val * 16 + val_sum / 2) / val_sum;
	gain = gain > 2*16 ? 2*16 : gain;

	unsigned cmos_exposure = cmos_exposure0;
	unsigned cmos_gain = cmos_gain0;
	unsigned isp_dgain = isp_dgain0;
	unsigned expo_diff, gain_diff, isp_dgain_diff;
	if (gain > 18) {
		expo_diff = (((cmos_exposure0 * gain) >> 4) - cmos_exposure0) >> 1;
		expo_diff = expo_diff > 0 ? expo_diff : 1;
		gain_diff = (((cmos_gain0 * gain) >> 4) - cmos_gain0) >> 1;
		gain_diff = gain_diff > 0 ? gain_diff : 1;
		isp_dgain_diff = (((isp_dgain0 * gain) >> 4) - isp_dgain0) >> 1;
		isp_dgain_diff = isp_dgain_diff > 0 ? isp_dgain_diff : 1;
		if (cmos_exposure0 < max_exposure) {
			if (cmos_exposure0 + expo_diff > max_exposure)
				cmos_exposure = max_exposure;
			else
				cmos_exposure = cmos_exposure0 + expo_diff;
		}
		else if (cmos_gain0 < max_gain) {
			if (cmos_gain0 + gain_diff > max_gain)
				cmos_gain = max_gain;
			else
				cmos_gain = cmos_gain0 + gain_diff;
		}
		else if (isp_dgain0 < 0x0ff) {
			if (isp_dgain0 + isp_dgain_diff > 0x0ff)
				isp_dgain = 0xff;
			else
				isp_dgain = isp_dgain0 + isp_dgain_diff;
		}
	}
	else if (gain < 14) {
		expo_diff = (cmos_exposure0 - ((cmos_exposure0 * gain) >> 4)) >> 1;
		expo_diff = expo_diff > 0 ? expo_diff : 1;
		gain_diff = (cmos_gain0 - ((cmos_gain0 * gain) >> 4)) >> 1;
		gain_diff = gain_diff > 0 ? gain_diff : 1;
		isp_dgain_diff = (isp_dgain0 - ((isp_dgain0 * gain) >> 4)) >> 1;
		isp_dgain_diff = isp_dgain_diff > 0 ? isp_dgain_diff : 1;
		if (isp_dgain0 > 16) {
			if (isp_dgain0 < 16 + isp_dgain_diff)
				isp_dgain = 16;
			else
				isp_dgain = isp_dgain0 - isp_dgain_diff;
		}
		else if (cmos_gain0 > 16) {
			if (cmos_gain0 < 16 + gain_diff)
				cmos_gain = 16;
			else
				cmos_gain = cmos_gain0 - gain_diff;
		}
		else if (cmos_exposure0 > 1) {
			if (cmos_exposure0 < 1 + expo_diff)
				cmos_exposure = 1;
			else
				cmos_exposure = cmos_exposure0 - expo_diff;
		}
	}
	if (cmos_exposure0 != cmos_exposure || cmos_gain0 != cmos_gain || isp_dgain0 != isp_dgain) {
		printf("ALG_AEC: Exposure:%u Gain:0x%04X ISP_DGain:0x%02X (pixcnt:%llu sum_luma:%llu, avg_luma:%llu, target_luma:%u)\n",
				cmos_exposure, cmos_gain, isp_dgain, pix_cnt, val_sum, (val_sum+pix_cnt/2)/pix_cnt, target_val);
		if (cmos_exposure0 != cmos_exposure)
			cmos_set_exposure(cmos_exposure);
		if (cmos_gain0 != cmos_gain)
			cmos_set_gain(cmos_gain);
		if (isp_dgain0 != isp_dgain)
			XIL_ISP_LITE_mWriteReg(base, ISP_REG_DGAIN_GAIN, isp_dgain);
		cmos_exposure0 = cmos_exposure;
		cmos_gain0 = cmos_gain;
		isp_dgain0 = isp_dgain;
	}
}


void isp_awb_handler(UINTPTR base)
{
	unsigned long long pix_cnt = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_PIX_CNT_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_PIX_CNT_H) << 32);
	unsigned long long sum_r = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_R_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_R_H) << 32);
	unsigned long long sum_g = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_G_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_G_H) << 32);
	unsigned long long sum_b = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_B_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_B_H) << 32);

	static unsigned r_gain0 = 1u<<4;
	static unsigned b_gain0 = 1u<<4;

	unsigned r_gain = ((sum_g << 4) + sum_r / 2) / sum_r;
	unsigned b_gain = ((sum_g << 4) + sum_b / 2) / sum_b;

	if (r_gain0 < r_gain) {
		if (r_gain - r_gain0 >= 10) {
			r_gain = r_gain0 + (r_gain - r_gain0) / 5;
		} else {
			r_gain = r_gain0 + 1;
		}
	} else if (r_gain0 > r_gain) {
		if (r_gain0 - r_gain >= 10) {
			r_gain = r_gain0 - (r_gain0 - r_gain) / 5;
		} else {
			r_gain = r_gain0 - 1;
		}
	}
	if (b_gain0 < b_gain) {
		if (b_gain - b_gain0 >= 10) {
			b_gain = b_gain0 + (b_gain - b_gain0) / 5;
		} else {
			b_gain = b_gain0 + 1;
		}
	} else if (b_gain0 > b_gain) {
		if (b_gain0 - b_gain >= 10) {
			b_gain = b_gain0 - (b_gain0 - b_gain) / 5;
		} else {
			b_gain = b_gain0 - 1;
		}
	}

	if (r_gain0 != r_gain || b_gain0 != b_gain) {
		printf("ALG_AWB RGain:0x%02X BGain:0x%02X (pixcnt:%llu sum_rgb:%llu,%llu,%llu, avg_rgb:%llu,%llu,%llu)\n",
				r_gain, b_gain, pix_cnt, sum_r, sum_g, sum_b, sum_r/pix_cnt, sum_g/pix_cnt, sum_b/pix_cnt);
		XIL_ISP_LITE_mWriteReg(base, ISP_REG_WB_GGAIN, 0x10);
		XIL_ISP_LITE_mWriteReg(base, ISP_REG_WB_RGAIN, r_gain);
		XIL_ISP_LITE_mWriteReg(base, ISP_REG_WB_BGAIN, b_gain);
		r_gain0 = r_gain;
		b_gain0 = b_gain;
	}
}

/************************** Function Definitions ***************************/
