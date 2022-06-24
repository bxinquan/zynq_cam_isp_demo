

#https://zhuanlan.zhihu.com/p/40626620  基于边缘、色度和色差自适应插值

import numpy as np

def _interpolate_G_on_R(R, R_left, R_right, R_up, R_down, G_left, G_right, G_up, G_down) :
    if abs(2*R-R_left-R_right) + abs(G_left-G_right) < abs(2*R-R_up-R_down) + abs(G_up-G_down) : 
        G = (G_left+G_right)//2 + (2*R-R_left-R_right)//4
    elif abs(2*R-R_left-R_right) + abs(G_left-G_right) > abs(2*R-R_up-R_down) + abs(G_up-G_down) : 
        G = (G_up+G_down)//2 + (2*R-R_up-R_down)//4
    else :
        G = (G_left+G_right+G_up+G_down)//4 + (4*R-R_left-R_right-R_up-R_down)//8
    return (G if G > 0 else 0)

def _interpolate_R_on_G(G, Gr1, Gr2, R1, R2) :
    R = G + (R1 + R2) // 2 - (Gr1 + Gr2) // 2
    return (R if R > 0 else 0)

def _interpolate_R_on_B(G, Gr1, Gr2, Gr3, Gr4, R1, R2, R3, R4) :
    if abs(2*G-Gr1-Gr4) + abs(R1-R4) < abs(2*G-Gr2-Gr3) + abs(R2-R3) :
        R = G + (R1 + R4) // 2 - (Gr1 + Gr4) // 2
    elif abs(2*G-Gr1-Gr4) + abs(R1-R4) > abs(2*G-Gr2-Gr3) + abs(R2-R3) :
        R = G + (R2 + R3) // 2 - (Gr2 + Gr3) // 2
    else :
        R = G + (R1 + R2 + R3 + R4) // 4 - (Gr1 + Gr2 + Gr3 + Gr4) // 4
    return (R if R > 0 else 0)

def demosaic_self_adaption(raw, bayer) :
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
                G = _interpolate_G_on_R(rawpad[x,y],rawpad[x,y-2],rawpad[x,y+2],rawpad[x-2,y],rawpad[x+2,y],
                        rawpad[x,y-1],rawpad[x,y+1],rawpad[x-1,y],rawpad[x+1,y])
            elif (1 == fmt) : #Gr
                G = rawpad[x,y]
            elif (2 == fmt) : #Gb
                G = rawpad[x,y]
            else :            #B
                G = _interpolate_G_on_R(rawpad[x,y],rawpad[x,y-2],rawpad[x,y+2],rawpad[x-2,y],rawpad[x+2,y],
                        rawpad[x,y-1],rawpad[x,y+1],rawpad[x-1,y],rawpad[x+1,y])
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
rgb = demosaic_self_adaption(raw,0)
rgb.tofile('raw_512x768_rggb_adaption.rgb')

#raw = np.fromfile('raw_512x768_grbg.bin', np.uint8).reshape(768,512)
#rgb = demosaic_self_adaption(raw,1)
#rgb.tofile('raw_512x768_grbg_adaption.rgb')

#raw = np.fromfile('raw_512x768_gbrg.bin', np.uint8).reshape(768,512)
#rgb = demosaic_self_adaption(raw,2)
#rgb.tofile('raw_512x768_gbrg_adaption.rgb')

#raw = np.fromfile('raw_512x768_bggr.bin', np.uint8).reshape(768,512)
#rgb = demosaic_self_adaption(raw,3)
#rgb.tofile('raw_512x768_bggr_adaption.rgb')
