处理模块:
    vip_hist_equ - 直方图均衡 (可配置上下限的均衡器)
    vip_sobel - sobel边缘检测 (固定的sobel 3x3卷积核)
    vip_yuv2rgb - YUV2RGB色彩空间转换 (基于整数优化的转换公式)
    vip_crop - 图像裁剪 (可配置裁剪区域)
    vip_dscale - 图像缩小 (宽高分别支持1/N倍缩小)
    vip_osd - 单色位图叠加 (用于叠加文字或logo图标例128x128)
	vip_yuv444to422 - YUV444转422（做为v_frmbuf_wr源写到内存NV12,axis_422与axis_420时序相同）
