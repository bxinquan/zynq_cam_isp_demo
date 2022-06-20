
# 定点化双边滤波算法(更适合FPGA)
import math as m
import numpy as np

#https://zhuanlan.zhihu.com/p/127023952
#https://zhuanlan.zhihu.com/p/34238538

def x_bf_makeSpaceKern(d, sigmaSpace, factor):
    d2 = d // 2
    kern = np.zeros((d,d), np.uint8)
    for i in range (d):
        for j in range (d):
            kern[i,j] = np.uint8(factor * m.exp(-((i-d2)**2 + (j-d2)**2)/(2*sigmaSpace**2)) + 0.5)
    return kern

def x_bf_makeColorCurve(n, maxDiff, sigmaColor, factor):
    curve = np.zeros((n,2), np.uint8)
    for i in range (n):
        diff = maxDiff * (i + 1) // (n + 1)
        curve[i,0] = diff
        curve[i,1] = np.uint8(factor * m.exp(-(diff**2)/(2*sigmaColor**2)) + 0.5)
    return curve

##################################################################

def _x_bf_makeColorKern(imgKern, colorCurve, maxWeight):
    kern = np.zeros(imgKern.shape, colorCurve.dtype)
    centerVal = imgKern[imgKern.shape[0]//2, imgKern.shape[1]//2]
    for i in range (kern.shape[0]):
        for j in range (kern.shape[1]):
            diff = np.uint32(m.fabs(np.int32(centerVal) - np.int32(imgKern[i,j])))
            for k in range (colorCurve.shape[0]):
                if diff < colorCurve[k,0]:
                    kern[i,j] = colorCurve[k-1,1] if k > 0 else maxWeight
                    break
            if diff >= colorCurve[-1,0]:
                kern[i,j] = colorCurve[-1,1]
    return kern

def _x_bf_2d(img2d, spaceKernel, colorCurve):
    d2h = spaceKernel.shape[0] // 2;
    d2w = spaceKernel.shape[1] // 2;
    imgpad = np.pad(img2d, (d2h,d2w), 'reflect');
    imgout = np.zeros_like(img2d)
    pixmin = np.iinfo(imgout.dtype).min
    pixmax = np.iinfo(imgout.dtype).max
    factor = np.max(spaceKernel) if np.max(spaceKernel) > np.max(colorCurve[:,1]) else np.max(colorCurve[:,1])
    for i in range(d2h, imgpad.shape[0]-d2h):
        for j in range(d2w, imgpad.shape[1]-d2w):
            colorKernel = _x_bf_makeColorKern(imgpad[i-d2h:i+d2h+1,j-d2w:j+d2w+1],colorCurve,factor)
            wKern = np.uint16(spaceKernel) * np.uint16(colorKernel)
            pavg = np.uint32(np.mean(np.uint32(imgpad[i-d2h:i+d2h+1,j-d2w:j+d2w+1]) * np.uint32(wKern)))
            kavg = np.uint32(np.mean(wKern))
            pval = pavg // kavg;
            if i == 10 and j == 10:
                print('\nimg[10,10]:\n', imgpad[i-d2h:i+d2h+1,j-d2w:j+d2w+1], '\nspaceKern:\n', spaceKernel, '\ncolorKern:\n', colorKernel, '\nwKern:\n', wKern, '\npavg/kavg/pval:\n', pavg, kavg, pval)
            imgout[i-d2h,j-d2w] = np.clip(pval, pixmin, pixmax)
    return imgout

def bilateralFilter_int(src, spaceKernel, colorCurve):
    assert len(src.shape) == 2 or len(src.shape) == 3
    assert spaceKernel.shape[0] == spaceKernel.shape[1] and spaceKernel.shape[0] % 2 == 1
    assert colorCurve.shape[0] > 0 and colorCurve.shape[1] == 2
    if len(src.shape) == 2 :
        return _x_bf_2d(src, spaceKernel, colorCurve)
    out = np.zeros_like(src)
    for i in range(src.shape[2]):
        out[:,:,i] = _x_bf_2d(src[:,:,i], spaceKernel, colorCurve)
    return out


gray = np.fromfile('isp_nonr_1280x720_gray.bin', np.uint8).reshape(720,1280)

spaceKernel = x_bf_makeSpaceKern(7, 10, 31); print(spaceKernel)
colorCurve = x_bf_makeColorCurve(9, 34, 10, 31); print(colorCurve)
out = bilateralFilter_int(gray, spaceKernel, colorCurve)
out.tofile('isp_nonr_1280x720_gray_bilateralFilter_int.bin')

#spaceKernel = x_bf_makeSpaceKern(11, 10, 63); print(spaceKernel)
#colorCurve = x_bf_makeColorCurve(31, 34, 10, 63); print(colorCurve)
#out = bilateralFilter_int(gray, spaceKernel, colorCurve)
#out.tofile('isp_nonr_1280x720_gray_bilateralFilter_int2.bin')
