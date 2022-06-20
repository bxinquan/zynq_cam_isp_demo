
# 标准双边滤波算法
import math as m
import numpy as np

#https://zhuanlan.zhihu.com/p/127023952
#https://zhuanlan.zhihu.com/p/34238538


def _bf_weight(i,j,k,l,sigmaColor,sigmaSpace,img2d):
    return m.exp(-((i-k)**2 + (j-l)**2)/(2*sigmaSpace**2) -((img2d[i,j]-img2d[k,l])**2)/(2*sigmaColor**2));

def _bf_weightKernel(i,j,d,sigmaColor,sigmaSpace,img2d):
    d2 = d // 2;
    kern = np.zeros((d,d))
    for k in range (i-d2, i+d2+1):
        for l in range (j-d2, j+d2+1):
            kern[k-i+d2,l-j+d2] = _bf_weight(i,j,k,l,sigmaColor,sigmaSpace,img2d)
    return kern

def _bf_2d(img2d, d, sigmaColor, sigmaSpace):
    d2 = d // 2;
    imgpad = np.pad(img2d, d2, 'reflect');
    imgout = np.zeros_like(img2d)
    pixmin = np.iinfo(imgout.dtype).min
    pixmax = np.iinfo(imgout.dtype).max
    for i in range(d2, imgpad.shape[0]-d2):
        for j in range(d2, imgpad.shape[1]-d2):
            wk = _bf_weightKernel(i,j,d,sigmaColor,sigmaSpace,imgpad)
            p = np.sum(imgpad[i-d2:i+d2+1,j-d2:j+d2+1] * wk) / np.sum(wk)
            imgout[i-d2,j-d2] = np.clip(p, pixmin, pixmax)
    return imgout

def bilateralFilter(src, d, sigmaColor, sigmaSpace):
    assert len(src.shape) == 2 or len(src.shape) == 3
    assert d > 2 and d % 2 == 1
    assert sigmaColor > 0.0
    assert sigmaSpace > 0.0
    if len(src.shape) == 2 :
        return _bf_2d(src, d, sigmaColor, sigmaSpace)
    out = np.zeros_like(src)
    for i in range(src.shape[2]):
        out[:,:,i] = _bf_2d(src[:,:,i], d, sigmaColor, sigmaSpace)
    return out


gray = np.fromfile('isp_nonr_1280x720_gray.bin', np.uint8).reshape(720,1280)

out = bilateralFilter(gray, 7, 10, 10)
out.tofile('isp_nonr_1280x720_gray_bilateralFilter.bin')

#out = bilateralFilter(gray, 11, 10, 10)
#out.tofile('isp_nonr_1280x720_gray_bilateralFilter2.bin')
