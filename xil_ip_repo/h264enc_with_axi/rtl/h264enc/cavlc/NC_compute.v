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
// Filename       : NC_compute.v
// Author         : huibo zhong
// Created        : 2011-03-26
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$    judegment   use  which NC teble
//------------------------------------------------------------------- 
//方法： 先从输入的cnt4*4中截取出表示实际4*4块的编号cnt4*4_0，在cnt4*4_0的指引下将
// 输入的4*4块ＮＣ值放入为他扩充后的存储空间内，然后在按在每一位上是否存在
// 左边＼上边的实际情况　推导出本快最后的ＮＣ值
`include "enc_defines.v"

module NC_compute(
				clk,
				rst_n,
				mb_x,
				mb_y,
				cnt4x4,
				cavlc_start,
                cavlc_done,
				control_state,
				state,
				totalcoeff,
				NC
);

parameter 	scan_init      = 4'b0000; //scan init
parameter	scan_cycle0    = 4'b0001; //scan clock 1
parameter	scan_cycle1    = 4'b0010; //scan clock 2
parameter	scan_cycle2    = 4'b0011; //scan clock 3
parameter	scan_cycle3    = 4'b0100; //scan clock 4
parameter	scan_cycle4    = 4'b0101; //scan clock 5
parameter	scan_cycle5    = 4'b0110; //scan clock 6
parameter	scan_cycle6    = 4'b0111; //scan clock 7
parameter   scan_cycle7    = 4'b1000; //scan clock 7

parameter	enc_init   	   = 4'b0000; //enc init
parameter	enc_cycle0 	   = 4'b0001; //enc clock 1
parameter	enc_cycle1 	   = 4'b0010; //enc clock 2
parameter	enc_cycle2 	   = 4'b0011; //enc clock 3
parameter	enc_cycle3 	   = 4'b0100; //enc clock 4
parameter   enc_cycle4 	   = 4'b0101; //enc clock 5
parameter   enc_cycle5 	   = 4'b0110; //enc clock 6
parameter   enc_cycle6 	   = 4'b0111; //enc clock 7
parameter   enc_cycle7 	   = 4'b1000; //enc clock 8

parameter   IDLE           = 3'b000;
parameter	E_INTRA4x4     = 3'b001;
parameter	E_INTRA16x16   = 3'b010;
parameter	E_P16x16       = 3'b011;
parameter	E_P16x8        = 3'b100;
parameter	E_P8x16        = 3'b101;
parameter	E_P8x8         = 3'b110;


input         clk, rst_n;     // 
input         cavlc_done;     // 
input         cavlc_start;    // 
input  [7:0]  mb_x, mb_y;     // mb count
input  [4:0]  cnt4x4;         // 4*4 block
input  [3:0]  state;          // 
input  [2:0]  control_state;  // 
input  [4:0]  totalcoeff;     // coeffs

output [2:0]  NC;             // NC



//for chroma ac coefficients, non zero count is small than 16(exclude dc)
reg    [4:0]  regCoeff0[23:0];//luma   so many !!!
reg    [4:0]  regCoeff1[7 :0];//cr
reg    [4:0]  regCoeff2[7 :0];//cb
//intra 16x16 dc, Nc is set equal to 0
reg    [5:0]  tmpNC;
reg           cavlc_start_r;
reg    [4:0]  cnt4x4_0;
reg    [4:0]  cnt4x4_1;
reg    [14:0] nz_addr0;
reg    [8 :0] nz_addr1;



wire   [6:0]  waddr, raddr;
wire          we;
//wire          re;
wire          NL_Y,  NU_Y;
wire          NL_Cr, NU_Cr;
wire          NL_Cb, NU_Cb;

wire   [35:0] wdata, rdata;
wire   [3:0]  wdata_cb0, wdata_cb1;
wire   [3:0]  wdata_cr0, wdata_cr1;
wire   [4:0]  wdata_y0, wdata_y1;
wire   [4:0]  wdata_y2, wdata_y3;
wire   [4:0]  nz_addr00,nz_addr01, nz_addr02;
wire   [2:0]  nz_addr10,nz_addr11, nz_addr12;



//---------------------------------------------
// 暂存每MB最下边的4个4*4   的值
assign wdata_cb0 = regCoeff2[6];
assign wdata_cb1 = regCoeff2[7];

assign wdata_cr0 = regCoeff1[6];
assign wdata_cr1 = regCoeff1[7];

assign wdata_y0  = regCoeff0[18];
assign wdata_y1  = regCoeff0[19];
assign wdata_y2  = regCoeff0[22];
assign wdata_y3  = regCoeff0[23];

assign wdata = { wdata_cb1,wdata_cb0, 
                 wdata_cr1,wdata_cr0, 
                 wdata_y3,wdata_y2, 
                 wdata_y1,wdata_y0 };
				 
assign raddr = mb_x;
assign waddr = mb_x;
assign we    = cavlc_done;
//assign re    = cavlc_start;	

cavlc_ram_2p_36x120  u_nonzero_ram(
	.clk   ( clk   ),
	.we    ( we    ),
	.wdata ( wdata ),
	.waddr ( waddr ),
	.rd    ( 1'b1  ),
	.raddr ( raddr ),
	.rdata ( rdata )
);
//---------------------------------------------

// cavlc start delay
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		cavlc_start_r <= 1'b0;
	end
	else begin
		cavlc_start_r <= cavlc_start;
	end
end

wire [4:0] a0, a1;
assign a0 = regCoeff0[nz_addr01];
assign a1 = regCoeff0[nz_addr02];

//************************************
// because cnt4*4 not only is 4*4 block count, need get real 4*4 block number form it
// cnt4x4_0 is luma counter  ;  cnt4x4_1 is culuma counter
always @(*) begin
	if ((control_state!=E_INTRA16x16) && (control_state!=IDLE)) begin
		if(cnt4x4<5'd16) begin  // get real 4*4 block number of luma
			cnt4x4_0 = cnt4x4;
			cnt4x4_1 = 0;
		end
		else if(cnt4x4>5'd17) begin // columa
			cnt4x4_0 = 0;
			cnt4x4_1 = cnt4x4 -5'd18;
		end
		else begin
			cnt4x4_0 = 0;
			cnt4x4_1 = 0;
		end
	end
	else if(control_state==E_INTRA16x16)begin
		if(cnt4x4>'d0 && cnt4x4<5'd17) begin
			cnt4x4_0 = cnt4x4-2'b1;
			cnt4x4_1 = 0;
		end
		else if(cnt4x4>5'd18) begin
			cnt4x4_0 = 0;
			cnt4x4_1 = cnt4x4 -5'd19;
		end
		else begin //for DC, same as the first 4x4;
			cnt4x4_0 = 0;
			cnt4x4_1 = 0;
		end
	end
	else begin
		cnt4x4_0 = 0;
		cnt4x4_1 = 0;
	end
end

// if top or left 4x4 block is not available, 
// the regCoeff is set equal to 5'b11111;

/*
address table

    0,  1,  2,  3	--->       0,  0,  0,  0	
4,  5,  6,  10, 11         0,  0,  1,  4,  5 
7,  8,  9,  12, 13         0,  2,  3,  6,  7 
14, 15, 16, 20, 21         0,  8,  9,  12, 13 
17, 18, 19, 22, 23         0,  10, 11, 14, 15 
*/                           
//-------------- luma ---------------------------
always @(*) begin
	case(cnt4x4_0[3:0])       //top   left   cur
		4'd0: nz_addr0 = {5'd0,  5'd4,  5'd5};
		4'd1: nz_addr0 = {5'd1,  5'd5,  5'd6};
		4'd2: nz_addr0 = {5'd5,  5'd7,  5'd8};
		4'd3: nz_addr0 = {5'd6,  5'd8,  5'd9};
		4'd4: nz_addr0 = {5'd2,  5'd6,  5'd10};
		4'd5: nz_addr0 = {5'd3,  5'd10, 5'd11};
		4'd6: nz_addr0 = {5'd10, 5'd9,  5'd12};
		4'd7: nz_addr0 = {5'd11, 5'd12, 5'd13};
		4'd8: nz_addr0 = {5'd14, 5'd8,  5'd15};
		4'd9: nz_addr0 = {5'd9,  5'd15, 5'd16};
		4'd10:nz_addr0 = {5'd15, 5'd17, 5'd18};
		4'd11:nz_addr0 = {5'd16, 5'd18, 5'd19};
		4'd12:nz_addr0 = {5'd12, 5'd16, 5'd20};
		4'd13:nz_addr0 = {5'd13, 5'd20, 5'd21};
		4'd14:nz_addr0 = {5'd20, 5'd19, 5'd22};
		4'd15:nz_addr0 = {5'd21, 5'd22, 5'd23};
		default:nz_addr0 = {5'd0, 5'd0, 5'd0 };
	endcase
end

assign nz_addr00 = nz_addr0[4 :0];
assign nz_addr01 = nz_addr0[9 :5];
assign nz_addr02 = nz_addr0[14:10];
//-------------------------------------------------


/*
address table

    0,  1   --->      0,  0
2,  3,  4         0,  0,  1 
5,  6,  7         0,  2,  3  
*/
//-------------- columa ----------------------------
always @(*) begin
	case(cnt4x4_1[1:0])       //top   left   cur
		2'd0: nz_addr1 = {3'd0,  3'd2,  3'd3};
		2'd1: nz_addr1 = {3'd1,  3'd3,  3'd4};
		2'd2: nz_addr1 = {3'd3,  3'd5,  3'd6};
		2'd3: nz_addr1 = {3'd4,  3'd6,  3'd7};
	endcase
end

assign nz_addr10 = nz_addr1[2:0];
assign nz_addr11 = nz_addr1[5:3];
assign nz_addr12 = nz_addr1[8:6];
//-----------------------------------------------------



// luma  coeff  
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin: i_regCoeff0
	  integer i;
		for(i=0; i<24; i=i+1)begin
			regCoeff0[i] <= 'd0;
		end
	end
	else if(mb_y==0 && cavlc_start ) begin // top  值等于11111时是表示无此值  为0时表示正好等于0
		regCoeff0[0] <= 5'b11111;
		regCoeff0[1] <= 5'b11111;
		regCoeff0[2] <= 5'b11111;
		regCoeff0[3] <= 5'b11111;
	end
	else if(mb_y>0 && cavlc_start) begin
		regCoeff0[0] <= rdata[4 : 0];
		regCoeff0[1] <= rdata[9 : 5];
		regCoeff0[2] <= rdata[14:10];
		regCoeff0[3] <= rdata[19:15];
	end	
	else if (mb_x > 0 && cavlc_start_r) begin
		regCoeff0[4]  <= regCoeff0[11];   // 暂存每MB最右边的4个值
		regCoeff0[7]  <= regCoeff0[13];   // 
		regCoeff0[14] <= regCoeff0[21];   // 
		regCoeff0[17] <= regCoeff0[23];   // 
		regCoeff0[5]  <= 5'b0;
		regCoeff0[6]  <= 5'b0;
		regCoeff0[10] <= 5'b0;
		regCoeff0[11] <= 5'b0;
		
		regCoeff0[8]  <= 5'b0;
		regCoeff0[9]  <= 5'b0;
		regCoeff0[12] <= 5'b0;
		regCoeff0[13] <= 5'b0;
		
		regCoeff0[15] <= 5'b0;
		regCoeff0[16] <= 5'b0;
		regCoeff0[20] <= 5'b0;
		regCoeff0[21] <= 5'b0;
		
		regCoeff0[18]  <= 5'b0;
		regCoeff0[19]  <= 5'b0;
		regCoeff0[22]  <= 5'b0;
		regCoeff0[23]  <= 5'b0;
	end
	else if (mb_x == 0 && cavlc_start_r) begin
		regCoeff0[4]  <= 5'b11111;
		regCoeff0[7]  <= 5'b11111;
		regCoeff0[14] <= 5'b11111;
		regCoeff0[17] <= 5'b11111;
		regCoeff0[5]  <= 5'b0;
		regCoeff0[6]  <= 5'b0;
		regCoeff0[10] <= 5'b0;
		regCoeff0[11] <= 5'b0;
		
		regCoeff0[8]  <= 5'b0;
		regCoeff0[9]  <= 5'b0;
		regCoeff0[12] <= 5'b0;
		regCoeff0[13] <= 5'b0;
		
		regCoeff0[15] <= 5'b0;
		regCoeff0[16] <= 5'b0;
		regCoeff0[20] <= 5'b0;
		regCoeff0[21] <= 5'b0;
		
		regCoeff0[18]  <= 5'b0;
		regCoeff0[19]  <= 5'b0;
		regCoeff0[22] <= 5'b0;
		regCoeff0[23] <= 5'b0;
	end
	else if (state == enc_cycle0&&(control_state!=E_INTRA16x16&& cnt4x4 < 5'd16
	||control_state==E_INTRA16x16&& cnt4x4 < 5'd17) ) begin
		regCoeff0[nz_addr00] <= totalcoeff;
	end
end


// columa   cr coeff
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)begin:i_regCoeff1
	   integer i ; 
		for(i=0; i<8; i=i+1)begin
			regCoeff1[i] <= 5'd0;
		end
	end
	else if(mb_y==0 && cavlc_start) begin//top
		regCoeff1[0] <= 5'b11111;
		regCoeff1[1] <= 5'b11111;
	end
	else if(mb_y>0 && cavlc_start) begin
		regCoeff1[0] <= {1'b0,rdata[23 : 20]};
		regCoeff1[1] <= {1'b0,rdata[27 : 24]};
	end
	else if (mb_x > 0 && cavlc_start_r) begin
		regCoeff1[2]  <= regCoeff1[4];
		regCoeff1[5]  <= regCoeff1[7];
		regCoeff1[3]  <= 5'b0;
		regCoeff1[4]  <= 5'b0;
		regCoeff1[6]  <= 5'b0;
		regCoeff1[7]  <= 5'b0;
	end
	else if (mb_x == 0 && cavlc_start_r) begin
		regCoeff1[2]  <= 5'b11111;
		regCoeff1[5]  <= 5'b11111;
		regCoeff1[3]  <= 5'b0;
		regCoeff1[4]  <= 5'b0;
		regCoeff1[6]  <= 5'b0;
		regCoeff1[7]  <= 5'b0;
	end
	else if (state == enc_cycle0 && (control_state!=E_INTRA16x16&&control_state!=IDLE) && cnt4x4 > 5'd17&&cnt4x4 < 5'd22
	|| state == enc_cycle0 && control_state == E_INTRA16x16 && cnt4x4 > 5'd18&&cnt4x4 < 5'd23 ) begin
		regCoeff1[nz_addr10] <= {1'b0,totalcoeff[3:0]};
	end
	
end

// columa   cb  coeff
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)begin:i_regCoeff2
	   integer i ; 
		for(i=0; i<8; i=i+1)begin
			regCoeff2[i] <= 5'd0;
		end
	end
	else if(mb_y==0 && cavlc_start) begin
		//top
		regCoeff2[0] <= 5'b11111;
		regCoeff2[1] <= 5'b11111;
	end
	else if(mb_y>0 && cavlc_start) begin
		regCoeff2[0] <= {1'b0,rdata[31 : 28]};
		regCoeff2[1] <= {1'b0,rdata[35 : 32]};
	end
	else if (mb_x > 0 && cavlc_start_r) begin
		regCoeff2[2]  <= regCoeff2[4];
		regCoeff2[5]  <= regCoeff2[7];
		regCoeff2[3]  <= 5'b0;
		regCoeff2[4]  <= 5'b0;
		regCoeff2[6]  <= 5'b0;
		regCoeff2[7]  <= 5'b0;
	end
	else if (mb_x == 0 && cavlc_start_r) begin
		regCoeff2[2]  <= 5'b11111;
		regCoeff2[5]  <= 5'b11111;
		regCoeff2[3]  <= 5'b0;
		regCoeff2[4]  <= 5'b0;
		regCoeff2[6]  <= 5'b0;
		regCoeff2[7]  <= 5'b0;
	end
	else if ( state == enc_cycle0 && (control_state!=E_INTRA16x16&&control_state!=IDLE) && cnt4x4 > 5'd21
	|| state == enc_cycle0 && control_state == E_INTRA16x16 && cnt4x4 > 5'd22 ) begin
		regCoeff2[nz_addr10] <= {1'b0,totalcoeff[3:0]};
	end	
end	
//---------------------------------------------------


//***************************************************
assign NL_Y = (regCoeff0[nz_addr01]==5'b11111)? 1'b0 : 1'b1;
assign NU_Y = (regCoeff0[nz_addr02]==5'b11111)? 1'b0 : 1'b1;

assign NL_Cr = (regCoeff1[nz_addr11]==5'b11111)? 1'b0 : 1'b1;
assign NU_Cr = (regCoeff1[nz_addr12]==5'b11111)? 1'b0 : 1'b1;

assign NL_Cb = (regCoeff2[nz_addr11]==5'b11111)? 1'b0 : 1'b1;
assign NU_Cb = (regCoeff2[nz_addr12]==5'b11111)? 1'b0 : 1'b1;

//used to test
wire [3:0] test1;
wire [3:0] test2;

assign test1 = regCoeff2[3];
assign test2 = regCoeff2[1];

always @(*) begin
	if (control_state!=E_INTRA16x16 && control_state!=IDLE) begin
		if(cnt4x4<5'd16) begin // Y
			case({NL_Y,NU_Y})
				2'b00 : tmpNC = 0;
				2'b10 :	tmpNC = regCoeff0[nz_addr01];
				2'b01 : tmpNC = regCoeff0[nz_addr02];
				2'b11 : tmpNC = (a0+a1+1'b1)>>1'b1;
			endcase
		end
		else if((cnt4x4 == 5'd16 || cnt4x4 == 5'd17)) begin  // 其它信息
			tmpNC = 6'b111111;
		end
		else if(cnt4x4 <5'd22)begin // U
			case({NL_Cr,NU_Cr})
				2'b00 : tmpNC = 0;
				2'b10 :	tmpNC = regCoeff1[nz_addr11];
				2'b01 : tmpNC = regCoeff1[nz_addr12];
				2'b11 : tmpNC = (regCoeff1[nz_addr11]+regCoeff1[nz_addr12]+1'b1)>>1'b1;
			endcase
		end
		else begin
			case({NL_Cb,NU_Cb})  // V
				2'b00 : tmpNC = 0;
				2'b10 :	tmpNC =  regCoeff2[nz_addr11];
				2'b01 : tmpNC =  regCoeff2[nz_addr12];
				2'b11 : tmpNC = (regCoeff2[nz_addr11]+regCoeff2[nz_addr12]+1'b1)>>1'b1;
			endcase
		end
	end
	else if(control_state==E_INTRA16x16)begin
		if(cnt4x4<5'd17) begin
			case({NL_Y,NU_Y})
				2'b00 : tmpNC = 0;
				2'b10 :	tmpNC = regCoeff0[nz_addr01];
				2'b01 : tmpNC = regCoeff0[nz_addr02];
				2'b11 : tmpNC = (regCoeff0[nz_addr01]+regCoeff0[nz_addr02]+1'b1)>>1'b1;
			endcase
		end
		else if(cnt4x4 == 5'd17 || cnt4x4 == 5'd18) begin
			tmpNC = 6'b111111;
		end
		else if(cnt4x4 <5'd23)begin
			case({NL_Cr,NU_Cr})
				2'b00 : tmpNC = 0;
				2'b10 :	tmpNC = regCoeff1[nz_addr11];
				2'b01 : tmpNC = regCoeff1[nz_addr12];
				2'b11 : tmpNC = (regCoeff1[nz_addr11]+regCoeff1[nz_addr12]+1'b1)>>1'b1;
			endcase
		end
		else begin
			case({NL_Cb,NU_Cb})
				2'b00 : tmpNC = 0;
				2'b10 :	tmpNC =  regCoeff2[nz_addr11];
				2'b01 : tmpNC =  regCoeff2[nz_addr12];
				2'b11 : tmpNC = (regCoeff2[nz_addr11]+regCoeff2[nz_addr12]+1'b1)>>1'b1;
			endcase
		end
	end
	else begin
		tmpNC = 0;
	end
end
//*********************************************


assign NC = (tmpNC == 6'b111111)? 3'b111  // table 4
		  : (tmpNC < 5'd2 )?     3'b000  // table 1
		  : (tmpNC < 5'd4 )?     3'b001  // table 2
		  : (tmpNC < 5'd8 )?     3'b010  // table 3
		  : 3'b011; // ding chang biao 


endmodule
