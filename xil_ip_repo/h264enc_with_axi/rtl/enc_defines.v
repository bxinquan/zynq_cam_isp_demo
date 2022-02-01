//-------------------------------------------------------------------
//                                                                 
//  COPYRIGHT (C) 2011, VIPcore Group, Fudan University
//                                                                  
//  THIS FILE MAY NOT BE MODIFIED OR REDISTRIBUTED WITHOUT THE      
//  EXPRESSED WRITTEN CONSENT OF VIPcore Group
//                                                                  
//  VIPcore       : http://soc.fudan.edu.cn/vip    
//  IP Owner 	  : Yibo FAN
//  Contact       : fanyibo@fudan.edu.cn             
//-------------------------------------------------------------------
// Filename       : ime_defines.v
// Author         : Yibo FAN
// Created        : 2012-04-06
// Description    : IME Defines
//               
// $Id$ 
//-------------------------------------------------------------------
`include "top_defines.v"
//synopsys translate_off
`timescale 1ns/100ps                                  
//synopsys translate_on

// Simulation Model
`ifdef SYNOPSYS
	`define RTL_MODEL
`endif

//PE tree number in IME
`define PE_NUM 4

//bit depth of each pixel values
`define BIT_DEPTH  8

// block size of Macroblock, pixel per line 
`define MB_WIDTH 16
// Total pixels in current MB
`define MB_SIZE (`MB_WIDTH*`MB_WIDTH)
// MB XY NUM LEN
`define PIC_W_MB_LEN       8
`define PIC_H_MB_LEN       8

//Total pixels in diff block size
`define B4X4_SIZE   16       //4x4
`define B8X4_SIZE   32
`define B4X8_SIZE   32
`define B8X8_SIZE   64
`define B8X16_SIZE  128
`define B16X8_SIZE  128
`define B16X16_SIZE 256
 
//Search range 
`define SR_HOR  16
`define SR_VER  13
//search window width
`define SW_WIDTH    (2*`SR_HOR + `MB_WIDTH)
`define SW_HEIGHT   (2*`SR_VER + `MB_WIDTH)
//Total pixels in search window  
`define SW_SIZE     (`SW_WIDTH * `SW_HEIGHT)
`define SW_W_LEN    6
`define SW_H_LEN    6
//the width of the search window ram bank
`define SW_RAM_WIDTH     16 // 16 pixel ram
`define SW_RAM_ADDR_LEN  6  //48-6
`define SW_RAM_DEPTH     42 //48-6

//ref pixel width for one PE tree
`define REF_WIDTH (`MB_WIDTH + `PE_NUM-1)
//total ref pixels needed by multiple PE tree
`define REF_SIZE (`MB_WIDTH * `REF_WIDTH )

//the length of mb_type
`define MB_TYPE_LEN  3
`define SUB_MB_TYPE_LEN 3
//MB partition mode 
`define PART16X16           0
`define PART16X8            1
`define PART8X16            2
`define PART8X8             3
//sub MB partition mode
`define SUBPART8X8          0
`define SUBPART8X4          1
`define SUBPART4X8          2
`define SUBPART4X4          3

//MVD Lenght
`define FMVD_LEN  (5 + 2 + 1) //5: SR 16 2:Fractional precise. 1:signed
`define IMVD_LEN  (5 + 1)     
//the number of bits for encoding the mvd
`define SE_LEN 5
//the bits of mv cost
`define MV_COST_BITS (`SE_LEN+6+1)

//number of 4x4 block inside one MB
`define SAD4X4_NUM  `MB_SIZE/`B4X4_SIZE
//number of 4x8/8x4 block inside one MB
`define SAD4X8_NUM  `MB_SIZE/`B4X8_SIZE
`define SAD8X4_NUM  `SAD4X8_NUM
//number of 8x8 block inside one MB
`define SAD8X8_NUM  `MB_SIZE/`B8X8_SIZE
//number of 16x8/8x16 block inside one MB
`define SAD8X16_NUM  `MB_SIZE/`B16X8_SIZE
`define SAD16X8_NUM   `SAD8X16_NUM
//number of 16x16 block inside one MB
`define SAD16X16_NUM  `MB_SIZE/`B16X16_SIZE
//`define SAD2X2_LEN  (`BIT_DEPTH + 2)
`define SAD2X2_LEN  (`BIT_DEPTH + 2 +1)
//`define SAD4X4_LEN  (`BIT_DEPTH + 4) //16
//length of sad value, SAD4x4_LEN > BIT_DEPTH + 4, (4 for 2^4 pixels in 4x4 block)
`define SAD4X4_LEN  (`BIT_DEPTH + 4 +1)
//length of 4x8/8x4 sad value,
`define SAD4X8_LEN  (`SAD4X4_LEN+1)
`define SAD8X4_LEN  `SAD4X8_LEN
//length of 8x8 sad value,
`define SAD8X8_LEN  (`SAD4X4_LEN+2)
//length of 4x8/8x4 sad value,
`define SAD8X16_LEN  (`SAD4X4_LEN+3)
`define SAD16X8_LEN  `SAD8X16_LEN
//length of 16x16 sad value,
`define SAD16X16_LEN  (`SAD4X4_LEN+4)

//cost len
`define COST4X4_LEN         `SAD4X4_LEN
`define COST4X8_LEN         `SAD4X8_LEN
`define COST8X4_LEN         `SAD8X4_LEN
`define COST8X8_LEN         `SAD8X8_LEN
`define COST8X16_LEN        `SAD8X16_LEN
`define COST16X8_LEN        `SAD16X8_LEN
`define COST16X16_LEN       `SAD16X16_LEN

//----------------------FME------------------------
`define BLK4X4_NUM  `MB_SIZE/`B4X4_SIZE
`define BLK8X8_NUM  `MB_SIZE/`B8X8_SIZE

`define PART16x16 0
`define PART16x8  1
`define PART8x16  2
`define PART8x8   3
`define PART8x4   4
`define PART4x8   5
`define PART4x4   6
`define NON_MODE  7      

`define P_L0_16x16      0   
`define P_L0_L0_16x8    1   
`define P_L0_L0_8x16    2   
`define P_8x8           3   
`define P_8x8ref0       4   
                            
`define P_L0_8x8        0   
`define P_L0_8x4        1   
`define P_L0_4x8        2   
`define P_L0_4x4        3   
                            
`define QP_BITS   6         
`define MV_CODE_BITS 5
                             
`define SATD_4x4_BITS (`BIT_DEPTH+7)      
`define SATD_BLK_BITS (`SATD_4x4_BITS + 3)
`define COST_BITS    (`BIT_DEPTH+11)

//------------Slice Header-----------------
`define TOTAL_FRAME_BIT  8

//----------- Intra -----------------------
`define COST_UV   (1<<(`BIT_DEPTH+12)-1)
//`define COST_4x4  (1<<(`BIT_DEPTH+8)-1)
`define COST_4x4  65535

//----------- cavlc -----------------------
`define RES_WIDTH 16
