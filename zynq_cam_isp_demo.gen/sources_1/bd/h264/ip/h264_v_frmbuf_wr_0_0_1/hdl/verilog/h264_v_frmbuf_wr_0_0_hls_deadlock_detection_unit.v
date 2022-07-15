`timescale 1 ns / 1 ps

module h264_v_frmbuf_wr_0_0_hls_deadlock_detect_unit #( 
    parameter PROC_NUM = 4, 
    parameter PROC_ID = 0, 
    parameter IN_CHAN_NUM = 2, 
    parameter OUT_CHAN_NUM = 3) (
    input reset,
    input clock,
    input [OUT_CHAN_NUM - 1:0] proc_dep_vld_vec,
    input [IN_CHAN_NUM - 1:0] in_chan_dep_vld_vec,
    input [IN_CHAN_NUM * PROC_NUM - 1:0] in_chan_dep_data_vec,
    input [IN_CHAN_NUM - 1:0] token_in_vec,
    input dl_detect_in,
    input origin,
    input token_clear,
    output [OUT_CHAN_NUM - 1:0] out_chan_dep_vld_vec,
    output [PROC_NUM - 1:0] out_chan_dep_data,
    output reg [OUT_CHAN_NUM - 1:0] token_out_vec ,
    output reg dl_detect_out);
    
    reg [PROC_NUM - 1:0] dep;
    reg [PROC_NUM - 1:0] dep_reg;
    wire [(IN_CHAN_NUM + 1) * PROC_NUM - 1:0] dep_comb;

    assign dep_comb[PROC_NUM - 1:0] = {PROC_NUM{1'b0}};

    genvar i;
    generate
        for (i = 0; i < IN_CHAN_NUM; i = i + 1) begin:B1
            assign dep_comb[(i + 1) * PROC_NUM +: PROC_NUM] = {PROC_NUM{in_chan_dep_vld_vec[i]}} & in_chan_dep_data_vec[i * PROC_NUM +: PROC_NUM] | dep_comb[i * PROC_NUM +: PROC_NUM];
        end
    endgenerate

    always @ (dep_comb or dep_reg or dl_detect_in or token_in_vec) begin
        if (~dl_detect_in | (dl_detect_in & |(token_in_vec))) begin
            dep = dep_comb[IN_CHAN_NUM * PROC_NUM +: PROC_NUM];
        end
        else begin
            dep = dep_reg;
        end
    end

    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            dep_reg <= 'b0;
        end
        else begin
            if (|proc_dep_vld_vec) begin
                dep_reg <= dep;
            end
            else begin
                dep_reg <= 'b0;
            end
        end
    end
    
    // Output dependence channel update logic
    assign out_chan_dep_vld_vec = proc_dep_vld_vec;
    assign out_chan_dep_data = dep_reg | ('b1 << PROC_ID);

    // Deadlock detection logic
    always @ (dep or dl_detect_in or token_in_vec or proc_dep_vld_vec) begin
        // Deadlock issue when no deadlock detected or under report token control
        if (~dl_detect_in | (dl_detect_in & |(token_in_vec))) begin
            dl_detect_out = dep[PROC_ID] & (|proc_dep_vld_vec);
        end
        else begin
            dl_detect_out = 'b0;
        end
    end

    // Token generation logic
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            token_out_vec <= 'b0;
        end
        else begin
            //token_clear happen in the same cycle as dl_detect_out
            if ((|token_in_vec & ~token_clear) | origin) begin 
                token_out_vec <= proc_dep_vld_vec;
            end
            else begin
                token_out_vec <= 'b0;
            end
        end
    end
    
endmodule
