// ==============================================================
// File generated on Tue Jul 28 17:04:09 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1ns/1ps

module hls_hough_dadddsupcA
#(parameter
    ID         = 26,
    NUM_STAGE  = 5,
    din0_WIDTH = 64,
    din1_WIDTH = 64,
    dout_WIDTH = 64
)(
    input  wire                  clk,
    input  wire                  reset,
    input  wire                  ce,
    input  wire [din0_WIDTH-1:0] din0,
    input  wire [din1_WIDTH-1:0] din1,
    input  wire [1:0]            opcode,
    output wire [dout_WIDTH-1:0] dout
);
//------------------------Local signal-------------------
wire                  aclk;
wire                  aclken;
wire                  a_tvalid;
wire [63:0]           a_tdata;
wire                  b_tvalid;
wire [63:0]           b_tdata;
wire                  op_tvalid;
wire [7:0]            op_tdata;
wire                  r_tvalid;
wire [63:0]           r_tdata;
reg  [din0_WIDTH-1:0] din0_buf1;
reg  [din1_WIDTH-1:0] din1_buf1;
reg  [1:0]            opcode_buf1;
reg                   ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg  [dout_WIDTH-1:0] dout_r;
//------------------------Instantiation------------------
hls_hough_ap_dadddsub_3_full_dsp_64 hls_hough_ap_dadddsub_3_full_dsp_64_u (
    .aclk                    ( aclk ),
    .aclken                  ( aclken ),
    .s_axis_a_tvalid         ( a_tvalid ),
    .s_axis_a_tdata          ( a_tdata ),
    .s_axis_b_tvalid         ( b_tvalid ),
    .s_axis_b_tdata          ( b_tdata ),
    .s_axis_operation_tvalid ( op_tvalid ),
    .s_axis_operation_tdata  ( op_tdata ),
    .m_axis_result_tvalid    ( r_tvalid ),
    .m_axis_result_tdata     ( r_tdata )
);
//------------------------Body---------------------------
assign aclk      = clk;
assign aclken    = ce_r;
assign a_tvalid  = 1'b1;
assign a_tdata   = din0_buf1;
assign b_tvalid  = 1'b1;
assign b_tdata   = din1_buf1;
assign op_tvalid = 1'b1;
assign op_tdata  = {6'b0, opcode_buf1};
assign dout_i    = r_tdata;

always @(posedge clk) begin
    if (ce) begin
        din0_buf1   <= din0;
        din1_buf1   <= din1;
        opcode_buf1 <= opcode;
    end
end

always @ (posedge clk) begin
    ce_r <= ce;
end

always @ (posedge clk) begin
    if (ce_r) begin
        dout_r <= dout_i;
    end
end

assign dout = ce_r?dout_i:dout_r;
endmodule
