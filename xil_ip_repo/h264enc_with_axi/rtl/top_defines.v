
//*** CHOOSE IMPLEMENTATION LIBRARY ******************************************************
// `define ALTERA
//`define SYNOPSYS
`define XILINX 1


//*** SIMULATION OR NOT ******************************************************************
//`define SIMULATION


//*** MODULE DISABLE *********************************************************************
//`define DISABLE_DDR
//`define DISABLE_D5M
//`define DISABLE_H264ENC


//*** FPGA DETAILS ***********************************************************************
`ifdef ALTERA

  //--- SPECIFY FPGA BOARD (temporarily no use) ----------------------
    //`define DE2_115
    `define SOCKIT
    //`define STARFIRE_DA820

`endif




//*** OTHER DEFINES **********************************************************************
// `include "enc_defines.v"
`include "timescale.v"
