

/***************************** Include Files *******************************/
#include "xil_io.h"
#include "xil_isp_lite.h"


void isp_ae_handler(IspContext *context)
{
	UINTPTR base = context->base;
	unsigned cur_exposure = context->ae_cur_exposure;
	unsigned cur_gain = context->ae_cur_gain;
	unsigned cur_isp_dgain = context->ae_cur_isp_dgain;
	unsigned tar_luma = context->ae_target_luminance;
	unsigned max_exposure = context->ae_max_exposure;
	unsigned max_gain = context->ae_max_gain;

	unsigned long long pix_cnt = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AE_PIX_CNT_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AE_PIX_CNT_H) << 32);
	unsigned long long luma_sum = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AE_SUM_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AE_SUM_H) << 32);
	unsigned tar_factor = (pix_cnt * tar_luma * 16 + luma_sum / 2) / luma_sum;
	tar_factor = tar_factor > 2*16 ? 2*16 : tar_factor;

	unsigned tar_exposure = cur_exposure;
	unsigned tar_gain = cur_gain;
	unsigned tar_isp_dgain = cur_isp_dgain;
	unsigned expo_diff, gain_diff, isp_dgain_diff;
	if (tar_factor > 18) {
		expo_diff = (((cur_exposure * tar_factor) >> 4) - cur_exposure) >> 1;
		expo_diff = expo_diff > 0 ? expo_diff : 1;
		gain_diff = (((cur_gain * tar_factor) >> 4) - cur_gain) >> 1;
		gain_diff = gain_diff > 0 ? gain_diff : 1;
		isp_dgain_diff = (((cur_isp_dgain * tar_factor) >> 4) - cur_isp_dgain) >> 1;
		isp_dgain_diff = isp_dgain_diff > 0 ? isp_dgain_diff : 1;
		if (cur_exposure < max_exposure) {
			if (cur_exposure + expo_diff > max_exposure)
				tar_exposure = max_exposure;
			else
				tar_exposure = cur_exposure + expo_diff;
		}
		else if (cur_gain < max_gain) {
			if (cur_gain + gain_diff > max_gain)
				tar_gain = max_gain;
			else
				tar_gain = cur_gain + gain_diff;
		}
		else if (cur_isp_dgain < 0x0ff) {
			if (cur_isp_dgain + isp_dgain_diff > 0x0ff)
				tar_isp_dgain = 0xff;
			else
				tar_isp_dgain = cur_isp_dgain + isp_dgain_diff;
		}
	}
	else if (tar_factor < 14) {
		expo_diff = (cur_exposure - ((cur_exposure * tar_factor) >> 4)) >> 1;
		expo_diff = expo_diff > 0 ? expo_diff : 1;
		gain_diff = (cur_gain - ((cur_gain * tar_factor) >> 4)) >> 1;
		gain_diff = gain_diff > 0 ? gain_diff : 1;
		isp_dgain_diff = (cur_isp_dgain - ((cur_isp_dgain * tar_factor) >> 4)) >> 1;
		isp_dgain_diff = isp_dgain_diff > 0 ? isp_dgain_diff : 1;
		if (cur_isp_dgain > 16) {
			if (cur_isp_dgain < 16 + isp_dgain_diff)
				tar_isp_dgain = 16;
			else
				tar_isp_dgain = cur_isp_dgain - isp_dgain_diff;
		}
		else if (cur_gain > 16) {
			if (cur_gain < 16 + gain_diff)
				tar_gain = 16;
			else
				tar_gain = cur_gain - gain_diff;
		}
		else if (cur_exposure > 1) {
			if (cur_exposure < 1 + expo_diff)
				tar_exposure = 1;
			else
				tar_exposure = cur_exposure - expo_diff;
		}
	}
	if (cur_exposure != tar_exposure || cur_gain != tar_gain || cur_isp_dgain != tar_isp_dgain) {
		printf("ALG_AEC: Exposure:%u Gain:0x%04X ISP_DGain:0x%02X (pixcnt:%llu sum_luma:%llu, avg_luma:%llu, target_luma:%u)\n",
				tar_exposure, tar_gain, tar_isp_dgain, pix_cnt, luma_sum, (luma_sum+pix_cnt/2)/pix_cnt, tar_luma);
		if (cur_exposure != tar_exposure)
			context->pfn_set_exposure(tar_exposure, context->priv_data);
		if (cur_gain != tar_gain)
			context->pfn_set_gain(tar_gain, context->priv_data);
		if (cur_isp_dgain != tar_isp_dgain)
			XIL_ISP_LITE_mWriteReg(base, ISP_REG_DGAIN_GAIN, tar_isp_dgain);
		context->ae_cur_exposure = tar_exposure;
		context->ae_cur_gain = tar_gain;
		context->ae_cur_isp_dgain = tar_isp_dgain;
	}
}

void isp_awb_handler(IspContext *context)
{
	UINTPTR base = context->base;
	unsigned cur_rgain = context->awb_cur_rgain;
	unsigned cur_bgain = context->awb_cur_bgain;

	unsigned long long pix_cnt = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_PIX_CNT_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_PIX_CNT_H) << 32);
	unsigned long long sum_r = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_R_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_R_H) << 32);
	unsigned long long sum_g = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_G_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_G_H) << 32);
	unsigned long long sum_b = XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_B_L) | ((unsigned long long)XIL_ISP_LITE_mReadReg(base, ISP_REG_STAT_AWB_SUM_B_H) << 32);

	unsigned tar_rgain = ((sum_g << 4) + sum_r / 2) / sum_r;
	unsigned tar_bgain = ((sum_g << 4) + sum_b / 2) / sum_b;

	if (cur_rgain < tar_rgain) {
		if (tar_rgain - cur_rgain >= 10) {
			tar_rgain = cur_rgain + (tar_rgain - cur_rgain) / 5;
		} else {
			tar_rgain = cur_rgain + 1;
		}
	} else if (cur_rgain > tar_rgain) {
		if (cur_rgain - tar_rgain >= 10) {
			tar_rgain = cur_rgain - (cur_rgain - tar_rgain) / 5;
		} else {
			tar_rgain = cur_rgain - 1;
		}
	}
	if (cur_bgain < tar_bgain) {
		if (tar_bgain - cur_bgain >= 10) {
			tar_bgain = cur_bgain + (tar_bgain - cur_bgain) / 5;
		} else {
			tar_bgain = cur_bgain + 1;
		}
	} else if (cur_bgain > tar_bgain) {
		if (cur_bgain - tar_bgain >= 10) {
			tar_bgain = cur_bgain - (cur_bgain - tar_bgain) / 5;
		} else {
			tar_bgain = cur_bgain - 1;
		}
	}

	if (cur_rgain != tar_rgain || cur_bgain != tar_bgain) {
		printf("ALG_AWB RGain:0x%02X BGain:0x%02X (pixcnt:%llu sum_rgb:%llu,%llu,%llu, avg_rgb:%llu,%llu,%llu)\n",
				tar_rgain, tar_bgain, pix_cnt, sum_r, sum_g, sum_b, sum_r/pix_cnt, sum_g/pix_cnt, sum_b/pix_cnt);
		XIL_ISP_LITE_mWriteReg(base, ISP_REG_WB_GGAIN, 0x10);
		XIL_ISP_LITE_mWriteReg(base, ISP_REG_WB_RGAIN, tar_rgain);
		XIL_ISP_LITE_mWriteReg(base, ISP_REG_WB_BGAIN, tar_bgain);
		context->awb_cur_rgain = tar_rgain;
		context->awb_cur_bgain = tar_bgain;
	}
}


/************************** Function Definitions ***************************/
