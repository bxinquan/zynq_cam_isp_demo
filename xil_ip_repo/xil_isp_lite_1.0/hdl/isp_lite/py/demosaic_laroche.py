

#https://zhuanlan.zhihu.com/p/40626620  基于边缘检测和色差的CFA插值：laroche原理

import numpy as np

def _interpolate_G_on_R(G_left, G_right, G_up, G_down, B, B_left, B_right, B_up, B_down) :
    if abs(2*B-B_left-B_right) < abs(2*B-B_up-B_down) : 
        return (G_left+G_right)//2
    elif abs(2*B-B_left-B_right) > abs(2*B-B_up-B_down) :
        return (G_up+G_down)//2
    else :
        return (G_left+G_right+G_up+G_down)//4

def _interpolate_R_on_G(G, Gr1, Gr2, R1, R2) :
    R = G + (R1 + R2) // 2 - (Gr1 + Gr2) // 2
    return (R if R > 0 else 0)

def _interpolate_R_on_B(G, Gr1, Gr2, Gr3, Gr4, R1, R2, R3, R4) :
    R = G + (R1 + R2 + R3 + R4) // 4 - (Gr1 + Gr2 + Gr3 + Gr4) // 4
    return (R if R > 0 else 0)

def demosaic_laroche(raw, bayer) :
    assert type(raw) == np.ndarray and 2 == np.ndim(raw)
    assert type(bayer) == int and bayer >= 0 and bayer < 4 #0:RGGB 1:GRBG 2:GBRG 3:BGGR
    rawpad = np.int32(np.pad(raw, (2,2), 'reflect'))
    rgbpad = np.zeros(rawpad.shape + (3,), np.int32)
    #calc all G
    for x in range(2, rgbpad.shape[0]-2) :
        for y in range(2, rgbpad.shape[1]-2) :
            fmt = (((x&1)<<1)|(y&1)) ^ bayer
            G = 0
            if (0 == fmt) :   #R
                G = _interpolate_G_on_R(rawpad[x,y-1],rawpad[x,y+1],rawpad[x-1,y],rawpad[x+1,y],
                        rawpad[x,y],rawpad[x,y-2],rawpad[x,y+2],rawpad[x-2,y],rawpad[x+2,y])
            elif (1 == fmt) : #Gr
                G = rawpad[x,y]
            elif (2 == fmt) : #Gb
                G = rawpad[x,y]
            else :            #B
                G = _interpolate_G_on_R(rawpad[x,y-1],rawpad[x,y+1],rawpad[x-1,y],rawpad[x+1,y],
                        rawpad[x,y],rawpad[x,y-2],rawpad[x,y+2],rawpad[x-2,y],rawpad[x+2,y])
            rgbpad[x,y,1] = G
    #calc all R/B
    for x in range(2, rgbpad.shape[0]-2) :
        for y in range(2, rgbpad.shape[1]-2) :
            fmt = (((x&1)<<1)|(y&1)) ^ bayer
            R, B = 0, 0
            if (0 == fmt) :   #R
                R = rawpad[x,y]
                B = _interpolate_R_on_B(rgbpad[x,y,1],
                        rgbpad[x-1,y-1,1],rgbpad[x-1,y+1,1],rgbpad[x+1,y-1,1],rgbpad[x+1,y+1,1],
                        rawpad[x-1,y-1],rawpad[x-1,y+1],rawpad[x+1,y-1],rawpad[x+1,y+1])
            elif (1 == fmt) : #Gr
                R = _interpolate_R_on_G(rawpad[x,y],rgbpad[x,y-1,1],rgbpad[x,y+1,1],rawpad[x,y-1],rawpad[x,y+1])
                B = _interpolate_R_on_G(rawpad[x,y],rgbpad[x-1,y,1],rgbpad[x+1,y,1],rawpad[x-1,y],rawpad[x+1,y])
            elif (2 == fmt) : #Gb
                R = _interpolate_R_on_G(rawpad[x,y],rgbpad[x-1,y,1],rgbpad[x+1,y,1],rawpad[x-1,y],rawpad[x+1,y])
                B = _interpolate_R_on_G(rawpad[x,y],rgbpad[x,y-1,1],rgbpad[x,y+1,1],rawpad[x,y-1],rawpad[x,y+1])
            else :            #B
                R = _interpolate_R_on_B(rgbpad[x,y,1],
                        rgbpad[x-1,y-1,1],rgbpad[x-1,y+1,1],rgbpad[x+1,y-1,1],rgbpad[x+1,y+1,1],
                        rawpad[x-1,y-1],rawpad[x-1,y+1],rawpad[x+1,y-1],rawpad[x+1,y+1])
                B = rawpad[x,y]
            rgbpad[x,y,0] = R
            rgbpad[x,y,2] = B
    return np.clip(rgbpad[2:rgbpad.shape[0]-2,2:rgbpad.shape[1]-2,:], np.iinfo(raw.dtype).min,np.iinfo(raw.dtype).max).astype(raw.dtype)


raw = np.fromfile('raw_512x768_rggb.bin', np.uint8).reshape(768,512)
rgb = demosaic_laroche(raw,0)
rgb.tofile('raw_512x768_rggb_laroche.rgb')

#raw = np.fromfile('raw_512x768_grbg.bin', np.uint8).reshape(768,512)
#rgb = demosaic_laroche(raw,1)
#rgb.tofile('raw_512x768_grbg_laroche.rgb')

#raw = np.fromfile('raw_512x768_gbrg.bin', np.uint8).reshape(768,512)
#rgb = demosaic_laroche(raw,2)
#rgb.tofile('raw_512x768_gbrg_laroche.rgb')

#raw = np.fromfile('raw_512x768_bggr.bin', np.uint8).reshape(768,512)
#rgb = demosaic_laroche(raw,3)
#rgb.tofile('raw_512x768_bggr_laroche.rgb')
