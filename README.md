# fpga-isp
#### 本Demo基于zynq-7020(正点原子启明星+OV5640+4.3'800x480)实现了ISP图像处理(将ov5640的isp关闭，在7020上实现ISP功能)，输出到LCD和HDMI，软件基于SDK裸机开发

## ISP Lite IP
### 位置: zynq_camera_vdma_lcd/xil_ip_repo/xil_isp_lite_1.0
### 处理模块:
    isp_dpc - 坏点校正 (5x5领域内的8个临近像素同时大于或同时小于中心像素，且差值大于门限，则认为坏点，使用中值替换)
    isp_blc - 黑电平校正 (RGGB四通道分别减去配置好的黑电平值)
    isp_bnr - 拜耳降噪 (可选择的高斯滤波器)
    isp_dgain - 数字增益 (直接乘以配置好增益值)
    isp_demosaic - 去马赛克 (G基于边缘方向上插值 RB基于色差恒定理论插值)
    isp_wb - 白平衡增益 (RGB三通道乘以配置的增益值)
    isp_ccm - 色彩校正矩阵 (RGB三通道乘以配置的3x3矩阵)
    isp_csc - 色彩空间转换 (基于整数优化的RGB2YUV转换公式)
    isp_gamma - Gamma校正 (对亮度基于查表的Gamma校正)
    isp_ee - 边缘增强 (基于特定的3x3滤波器)
### 统计模块:
    isp_stat_ae - 自动曝光统计 (支持统计选取区域内亮度总和与像素个数，支持RGGB四通道直方图统计)
    isp_stat_awb - 自动白平衡统计 (支持符合白点限定条件的RGB三通道数值总和与白像素个数，支持RGB三通道直方图统计)
