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
// Filename       : TotalCoefZero.v
// Author         : huibo zhong
// Created        : 2011-05-12
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module TotalCoefZero (
				    clk,
				    rst_n,
				    s_all,
				    state,
				    control_state,
				    cnt4x4,
				    cbp,
					CoeffIn4x4_o,
					CoeffIn4x4,
				    totalcoeff,
				    totalzeros
);

parameter   IDLE          = 3'b000;
parameter	E_INTRA4x4    = 3'b001;
parameter	E_INTRA16x16  = 3'b010;
parameter	E_P16x16      = 3'b011;
parameter	E_P16x8       = 3'b100;
parameter	E_P8x16       = 3'b101;
parameter	E_P8x8        = 3'b110;

parameter 	scan_init     = 4'b0000; //scan init
parameter	scan_cycle0   = 4'b0001; //scan clock 1
parameter	scan_cycle1   = 4'b0010; //scan clock 2
parameter	scan_cycle2   = 4'b0011; //scan clock 3
parameter	scan_cycle3   = 4'b0100; //scan clock 4
parameter	scan_cycle4   = 4'b0101; //scan clock 5
parameter	scan_cycle5   = 4'b0110; //scan clock 6
parameter	scan_cycle6   = 4'b0111; //scan clock 7
parameter   scan_cycle7   = 4'b1000; //scan clock 7


input               clk;            // 
input               rst_n;          // 
input        [1:0]  s_all;          // 
input        [3:0]  state;          // 
input        [2:0]  control_state;  // 
input        [4:0]  cnt4x4;         // what 4*4block is valid
input        [3:0]  cbp;            // 

output  reg  [1:0]  CoeffIn4x4_o;   // CoeffIn4x4  delay one  clock
output  reg  [1:0]  CoeffIn4x4;     // every 2 coeff  how many zero in it
output  reg  [4:0]  totalcoeff;     // non-zero coneff
output  reg  [3:0]  totalzeros;     // 0 ge shu



wire          s0, s1;
wire          tmptotalzeroEn;
reg    [4:0]  tmp_totalcoeff;//
reg    [3:0]  tmp_totalzeros;//
reg    [1:0]  TotalZerosA;
reg    [1:0]  TotalCoeffA;
reg           TotalzeroEn;
reg    [3:0]  reg_totalzeros;
reg    [4:0]  reg_totalcoeff;



assign s0 = s_all[0];
assign s1 = s_all[1];


always @(posedge clk or negedge rst_n) begin
  if(!rst_n)begin
    totalzeros <= 0;
    totalcoeff <= 0;
  end
  else if( ((control_state!=E_INTRA16x16&&control_state!=IDLE)
  		&&(cnt4x4 == 5'd16 || cnt4x4 == 5'd17 || cnt4x4==4'd12 &&~cbp[3] 
		|| cnt4x4==4'd8 &&~cbp[3]&&~cbp[2] || cnt4x4==4'd4 &&~cbp[3]&&~cbp[2]&&~cbp[1] )
		&&state==scan_cycle7) || (control_state==E_INTRA16x16&&(cnt4x4 == 5'd17 ||cnt4x4 == 5'd18)
		&&state == scan_cycle7))begin
		    totalcoeff <= tmp_totalcoeff;
		if(tmp_totalzeros>0) begin
    	    totalzeros <= tmp_totalzeros - 4'd12;
        end
        else begin
    	    totalzeros <= tmp_totalzeros ;
        end
  end
  
  else if( (((control_state!=E_INTRA16x16&&control_state!=IDLE)&&cnt4x4<5'd16)
        ||(control_state==E_INTRA16x16&&cnt4x4==5'd0))&&state==scan_cycle7)begin
            totalzeros <= tmp_totalzeros;
            totalcoeff <= tmp_totalcoeff;
  end
  
  else if( (((control_state!=E_INTRA16x16&&control_state!=IDLE)  &&cnt4x4>5'd17)
  		||(control_state==E_INTRA16x16&&(cnt4x4>5'd18||cnt4x4>5'd0&&cnt4x4<5'd17)) )
  		&&state == scan_cycle7 )begin
            totalcoeff <= tmp_totalcoeff;
        if(tmp_totalzeros>0) begin
    	    totalzeros <= tmp_totalzeros - 1'b1;
        end
        else begin
    	    totalzeros <= tmp_totalzeros ;
        end
  end
  
  else begin
    totalzeros <= totalzeros;
    totalcoeff <= totalcoeff;
  end
end


always @(posedge clk or negedge rst_n) begin
  if(!rst_n)begin
    CoeffIn4x4_o <=0;
    reg_totalzeros <= 0;
    reg_totalcoeff <= 0;
  end
  else begin
  	CoeffIn4x4_o <= CoeffIn4x4;
    reg_totalzeros <= tmp_totalzeros;
    reg_totalcoeff <= tmp_totalcoeff;
  end
end


// every 2 coeffs   not 0  count
always @(*) begin  
	case (s_all)
	    2'b00:          TotalCoeffA = 0;
	    2'b01,2'b10:    TotalCoeffA = 2'b01;
	    2'b11:          TotalCoeffA = 2'b10;
	endcase
end

always @(*) begin
	case (s_all)
		2'b00:begin
			if(tmptotalzeroEn)
				TotalZerosA = 2'b10;
			else
				TotalZerosA = 1'b0;
		end
		2'b01:TotalZerosA = 1'b1;
		2'b10:begin
			if(TotalzeroEn)//be careful
				TotalZerosA = 1'b1;
			else
				TotalZerosA = 1'b0;
		end
		2'b11:TotalZerosA = 1'b0;

	endcase
end 

always @(*) begin
    case(state)
        scan_init:begin
            CoeffIn4x4 = 0;
            tmp_totalzeros = 0;
            tmp_totalcoeff = 0;
        end
        scan_cycle0:begin
            CoeffIn4x4 = TotalCoeffA;
            tmp_totalzeros = TotalZerosA;
            tmp_totalcoeff = TotalCoeffA;
        end
        scan_cycle1, scan_cycle2, scan_cycle3, scan_cycle4, scan_cycle5, scan_cycle6, scan_cycle7:begin
            CoeffIn4x4 = TotalCoeffA;
            tmp_totalzeros = reg_totalzeros + TotalZerosA;
            tmp_totalcoeff = reg_totalcoeff + TotalCoeffA;
        end
	    default:begin
	        CoeffIn4x4 = TotalCoeffA;
	    	tmp_totalzeros = 0;
	    	tmp_totalcoeff = 0;
	    end
	endcase
end

// 直到有非0出现
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		TotalzeroEn <= 1'b0;
	else if(state==scan_cycle7)
		TotalzeroEn <= 1'b0;
	else
		TotalzeroEn <= tmptotalzeroEn;
end

assign tmptotalzeroEn = (state==scan_cycle0)? (s0 || s1)
					: (TotalzeroEn || s0 || s1);



endmodule
