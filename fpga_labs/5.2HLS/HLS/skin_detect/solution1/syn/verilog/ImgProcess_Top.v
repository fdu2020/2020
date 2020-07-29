// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="ImgProcess_Top,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=11.000000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=0,HLS_SYN_DSP=6,HLS_SYN_FF=1121,HLS_SYN_LUT=2444,HLS_VERSION=2018_3}" *)

module ImgProcess_Top (
        input_V_data_V_dout,
        input_V_data_V_empty_n,
        input_V_data_V_read,
        input_V_keep_V_dout,
        input_V_keep_V_empty_n,
        input_V_keep_V_read,
        input_V_strb_V_dout,
        input_V_strb_V_empty_n,
        input_V_strb_V_read,
        input_V_user_V_dout,
        input_V_user_V_empty_n,
        input_V_user_V_read,
        input_V_last_V_dout,
        input_V_last_V_empty_n,
        input_V_last_V_read,
        input_V_id_V_dout,
        input_V_id_V_empty_n,
        input_V_id_V_read,
        input_V_dest_V_dout,
        input_V_dest_V_empty_n,
        input_V_dest_V_read,
        output_V_data_V_din,
        output_V_data_V_full_n,
        output_V_data_V_write,
        output_V_keep_V_din,
        output_V_keep_V_full_n,
        output_V_keep_V_write,
        output_V_strb_V_din,
        output_V_strb_V_full_n,
        output_V_strb_V_write,
        output_V_user_V_din,
        output_V_user_V_full_n,
        output_V_user_V_write,
        output_V_last_V_din,
        output_V_last_V_full_n,
        output_V_last_V_write,
        output_V_id_V_din,
        output_V_id_V_full_n,
        output_V_id_V_write,
        output_V_dest_V_din,
        output_V_dest_V_full_n,
        output_V_dest_V_write,
        rows,
        cols,
        y_lower,
        y_upper,
        cb_lower,
        cb_upper,
        cr_lower,
        cr_upper,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle
);


input  [31:0] input_V_data_V_dout;
input   input_V_data_V_empty_n;
output   input_V_data_V_read;
input  [3:0] input_V_keep_V_dout;
input   input_V_keep_V_empty_n;
output   input_V_keep_V_read;
input  [3:0] input_V_strb_V_dout;
input   input_V_strb_V_empty_n;
output   input_V_strb_V_read;
input  [0:0] input_V_user_V_dout;
input   input_V_user_V_empty_n;
output   input_V_user_V_read;
input  [0:0] input_V_last_V_dout;
input   input_V_last_V_empty_n;
output   input_V_last_V_read;
input  [0:0] input_V_id_V_dout;
input   input_V_id_V_empty_n;
output   input_V_id_V_read;
input  [0:0] input_V_dest_V_dout;
input   input_V_dest_V_empty_n;
output   input_V_dest_V_read;
output  [31:0] output_V_data_V_din;
input   output_V_data_V_full_n;
output   output_V_data_V_write;
output  [3:0] output_V_keep_V_din;
input   output_V_keep_V_full_n;
output   output_V_keep_V_write;
output  [3:0] output_V_strb_V_din;
input   output_V_strb_V_full_n;
output   output_V_strb_V_write;
output  [0:0] output_V_user_V_din;
input   output_V_user_V_full_n;
output   output_V_user_V_write;
output  [0:0] output_V_last_V_din;
input   output_V_last_V_full_n;
output   output_V_last_V_write;
output  [0:0] output_V_id_V_din;
input   output_V_id_V_full_n;
output   output_V_id_V_write;
output  [0:0] output_V_dest_V_din;
input   output_V_dest_V_full_n;
output   output_V_dest_V_write;
input  [31:0] rows;
input  [31:0] cols;
input  [31:0] y_lower;
input  [31:0] y_upper;
input  [31:0] cb_lower;
input  [31:0] cb_upper;
input  [31:0] cr_lower;
input  [31:0] cr_upper;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;

wire    Block_Mat_exit45_pro_U0_ap_start;
wire    Block_Mat_exit45_pro_U0_start_full_n;
wire    Block_Mat_exit45_pro_U0_ap_done;
wire    Block_Mat_exit45_pro_U0_ap_continue;
wire    Block_Mat_exit45_pro_U0_ap_idle;
wire    Block_Mat_exit45_pro_U0_ap_ready;
wire    Block_Mat_exit45_pro_U0_start_out;
wire    Block_Mat_exit45_pro_U0_start_write;
wire   [31:0] Block_Mat_exit45_pro_U0_rows_out_din;
wire    Block_Mat_exit45_pro_U0_rows_out_write;
wire   [31:0] Block_Mat_exit45_pro_U0_cols_out_din;
wire    Block_Mat_exit45_pro_U0_cols_out_write;
wire   [31:0] Block_Mat_exit45_pro_U0_img_1_rows_V_out_din;
wire    Block_Mat_exit45_pro_U0_img_1_rows_V_out_write;
wire   [31:0] Block_Mat_exit45_pro_U0_img_1_cols_V_out_din;
wire    Block_Mat_exit45_pro_U0_img_1_cols_V_out_write;
wire   [31:0] Block_Mat_exit45_pro_U0_y_lower_out_din;
wire    Block_Mat_exit45_pro_U0_y_lower_out_write;
wire   [31:0] Block_Mat_exit45_pro_U0_y_upper_out_din;
wire    Block_Mat_exit45_pro_U0_y_upper_out_write;
wire   [31:0] Block_Mat_exit45_pro_U0_cb_lower_out_din;
wire    Block_Mat_exit45_pro_U0_cb_lower_out_write;
wire   [31:0] Block_Mat_exit45_pro_U0_cb_upper_out_din;
wire    Block_Mat_exit45_pro_U0_cb_upper_out_write;
wire   [31:0] Block_Mat_exit45_pro_U0_cr_lower_out_din;
wire    Block_Mat_exit45_pro_U0_cr_lower_out_write;
wire   [31:0] Block_Mat_exit45_pro_U0_cr_upper_out_din;
wire    Block_Mat_exit45_pro_U0_cr_upper_out_write;
wire   [31:0] Block_Mat_exit45_pro_U0_ap_return_0;
wire   [31:0] Block_Mat_exit45_pro_U0_ap_return_1;
wire    ap_channel_done_img_0_cols_V_channel;
wire    img_0_cols_V_channel_full_n;
reg    ap_sync_reg_channel_write_img_0_cols_V_channel;
wire    ap_sync_channel_write_img_0_cols_V_channel;
wire    ap_channel_done_img_0_rows_V_channel;
wire    img_0_rows_V_channel_full_n;
reg    ap_sync_reg_channel_write_img_0_rows_V_channel;
wire    ap_sync_channel_write_img_0_rows_V_channel;
wire    AXIvideo2Mat_U0_ap_start;
wire    AXIvideo2Mat_U0_ap_done;
wire    AXIvideo2Mat_U0_ap_continue;
wire    AXIvideo2Mat_U0_ap_idle;
wire    AXIvideo2Mat_U0_ap_ready;
wire    AXIvideo2Mat_U0_AXI_video_strm_V_data_V_read;
wire    AXIvideo2Mat_U0_AXI_video_strm_V_keep_V_read;
wire    AXIvideo2Mat_U0_AXI_video_strm_V_strb_V_read;
wire    AXIvideo2Mat_U0_AXI_video_strm_V_user_V_read;
wire    AXIvideo2Mat_U0_AXI_video_strm_V_last_V_read;
wire    AXIvideo2Mat_U0_AXI_video_strm_V_id_V_read;
wire    AXIvideo2Mat_U0_AXI_video_strm_V_dest_V_read;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_0_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_0_V_write;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_1_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_1_V_write;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_2_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_2_V_write;
wire    hls_skin_dection_U0_ap_start;
wire    hls_skin_dection_U0_ap_done;
wire    hls_skin_dection_U0_ap_continue;
wire    hls_skin_dection_U0_ap_idle;
wire    hls_skin_dection_U0_ap_ready;
wire    hls_skin_dection_U0_src_data_stream_0_V_read;
wire    hls_skin_dection_U0_src_data_stream_1_V_read;
wire    hls_skin_dection_U0_src_data_stream_2_V_read;
wire   [7:0] hls_skin_dection_U0_dst_data_stream_0_V_din;
wire    hls_skin_dection_U0_dst_data_stream_0_V_write;
wire   [7:0] hls_skin_dection_U0_dst_data_stream_1_V_din;
wire    hls_skin_dection_U0_dst_data_stream_1_V_write;
wire   [7:0] hls_skin_dection_U0_dst_data_stream_2_V_din;
wire    hls_skin_dection_U0_dst_data_stream_2_V_write;
wire    hls_skin_dection_U0_rows_read;
wire    hls_skin_dection_U0_cols_read;
wire    hls_skin_dection_U0_y_lower_read;
wire    hls_skin_dection_U0_y_upper_read;
wire    hls_skin_dection_U0_cb_lower_read;
wire    hls_skin_dection_U0_cb_upper_read;
wire    hls_skin_dection_U0_cr_lower_read;
wire    hls_skin_dection_U0_cr_upper_read;
wire    Mat2AXIvideo_U0_ap_start;
wire    Mat2AXIvideo_U0_ap_done;
wire    Mat2AXIvideo_U0_ap_continue;
wire    Mat2AXIvideo_U0_ap_idle;
wire    Mat2AXIvideo_U0_ap_ready;
wire    Mat2AXIvideo_U0_img_rows_V_read;
wire    Mat2AXIvideo_U0_img_cols_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_0_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_1_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_2_V_read;
wire   [31:0] Mat2AXIvideo_U0_AXI_video_strm_V_data_V_din;
wire    Mat2AXIvideo_U0_AXI_video_strm_V_data_V_write;
wire   [3:0] Mat2AXIvideo_U0_AXI_video_strm_V_keep_V_din;
wire    Mat2AXIvideo_U0_AXI_video_strm_V_keep_V_write;
wire   [3:0] Mat2AXIvideo_U0_AXI_video_strm_V_strb_V_din;
wire    Mat2AXIvideo_U0_AXI_video_strm_V_strb_V_write;
wire   [0:0] Mat2AXIvideo_U0_AXI_video_strm_V_user_V_din;
wire    Mat2AXIvideo_U0_AXI_video_strm_V_user_V_write;
wire   [0:0] Mat2AXIvideo_U0_AXI_video_strm_V_last_V_din;
wire    Mat2AXIvideo_U0_AXI_video_strm_V_last_V_write;
wire   [0:0] Mat2AXIvideo_U0_AXI_video_strm_V_id_V_din;
wire    Mat2AXIvideo_U0_AXI_video_strm_V_id_V_write;
wire   [0:0] Mat2AXIvideo_U0_AXI_video_strm_V_dest_V_din;
wire    Mat2AXIvideo_U0_AXI_video_strm_V_dest_V_write;
wire    ap_sync_continue;
wire    rows_c_full_n;
wire   [31:0] rows_c_dout;
wire    rows_c_empty_n;
wire    cols_c_full_n;
wire   [31:0] cols_c_dout;
wire    cols_c_empty_n;
wire    img_1_rows_V_c_full_n;
wire   [31:0] img_1_rows_V_c_dout;
wire    img_1_rows_V_c_empty_n;
wire    img_1_cols_V_c_full_n;
wire   [31:0] img_1_cols_V_c_dout;
wire    img_1_cols_V_c_empty_n;
wire    y_lower_c_full_n;
wire   [31:0] y_lower_c_dout;
wire    y_lower_c_empty_n;
wire    y_upper_c_full_n;
wire   [31:0] y_upper_c_dout;
wire    y_upper_c_empty_n;
wire    cb_lower_c_full_n;
wire   [31:0] cb_lower_c_dout;
wire    cb_lower_c_empty_n;
wire    cb_upper_c_full_n;
wire   [31:0] cb_upper_c_dout;
wire    cb_upper_c_empty_n;
wire    cr_lower_c_full_n;
wire   [31:0] cr_lower_c_dout;
wire    cr_lower_c_empty_n;
wire    cr_upper_c_full_n;
wire   [31:0] cr_upper_c_dout;
wire    cr_upper_c_empty_n;
wire   [31:0] img_0_rows_V_channel_dout;
wire    img_0_rows_V_channel_empty_n;
wire   [31:0] img_0_cols_V_channel_dout;
wire    img_0_cols_V_channel_empty_n;
wire    img_0_data_stream_0_full_n;
wire   [7:0] img_0_data_stream_0_dout;
wire    img_0_data_stream_0_empty_n;
wire    img_0_data_stream_1_full_n;
wire   [7:0] img_0_data_stream_1_dout;
wire    img_0_data_stream_1_empty_n;
wire    img_0_data_stream_2_full_n;
wire   [7:0] img_0_data_stream_2_dout;
wire    img_0_data_stream_2_empty_n;
wire    img_1_data_stream_0_full_n;
wire   [7:0] img_1_data_stream_0_dout;
wire    img_1_data_stream_0_empty_n;
wire    img_1_data_stream_1_full_n;
wire   [7:0] img_1_data_stream_1_dout;
wire    img_1_data_stream_1_empty_n;
wire    img_1_data_stream_2_full_n;
wire   [7:0] img_1_data_stream_2_dout;
wire    img_1_data_stream_2_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_Block_Mat_exit45_pro_U0_ap_ready;
wire    ap_sync_Block_Mat_exit45_pro_U0_ap_ready;
reg   [1:0] Block_Mat_exit45_pro_U0_ap_ready_count;
reg    ap_sync_reg_AXIvideo2Mat_U0_ap_ready;
wire    ap_sync_AXIvideo2Mat_U0_ap_ready;
reg   [1:0] AXIvideo2Mat_U0_ap_ready_count;
wire   [0:0] start_for_hls_skin_dection_U0_din;
wire    start_for_hls_skin_dection_U0_full_n;
wire   [0:0] start_for_hls_skin_dection_U0_dout;
wire    start_for_hls_skin_dection_U0_empty_n;
wire   [0:0] start_for_Mat2AXIvideo_U0_din;
wire    start_for_Mat2AXIvideo_U0_full_n;
wire   [0:0] start_for_Mat2AXIvideo_U0_dout;
wire    start_for_Mat2AXIvideo_U0_empty_n;
wire    AXIvideo2Mat_U0_start_full_n;
wire    AXIvideo2Mat_U0_start_write;
wire    hls_skin_dection_U0_start_full_n;
wire    hls_skin_dection_U0_start_write;
wire    Mat2AXIvideo_U0_start_full_n;
wire    Mat2AXIvideo_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_img_0_cols_V_channel = 1'b0;
#0 ap_sync_reg_channel_write_img_0_rows_V_channel = 1'b0;
#0 ap_sync_reg_Block_Mat_exit45_pro_U0_ap_ready = 1'b0;
#0 Block_Mat_exit45_pro_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_AXIvideo2Mat_U0_ap_ready = 1'b0;
#0 AXIvideo2Mat_U0_ap_ready_count = 2'd0;
end

Block_Mat_exit45_pro Block_Mat_exit45_pro_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Block_Mat_exit45_pro_U0_ap_start),
    .start_full_n(Block_Mat_exit45_pro_U0_start_full_n),
    .ap_done(Block_Mat_exit45_pro_U0_ap_done),
    .ap_continue(Block_Mat_exit45_pro_U0_ap_continue),
    .ap_idle(Block_Mat_exit45_pro_U0_ap_idle),
    .ap_ready(Block_Mat_exit45_pro_U0_ap_ready),
    .start_out(Block_Mat_exit45_pro_U0_start_out),
    .start_write(Block_Mat_exit45_pro_U0_start_write),
    .rows(rows),
    .cols(cols),
    .y_lower(y_lower),
    .y_upper(y_upper),
    .cb_lower(cb_lower),
    .cb_upper(cb_upper),
    .cr_lower(cr_lower),
    .cr_upper(cr_upper),
    .rows_out_din(Block_Mat_exit45_pro_U0_rows_out_din),
    .rows_out_full_n(rows_c_full_n),
    .rows_out_write(Block_Mat_exit45_pro_U0_rows_out_write),
    .cols_out_din(Block_Mat_exit45_pro_U0_cols_out_din),
    .cols_out_full_n(cols_c_full_n),
    .cols_out_write(Block_Mat_exit45_pro_U0_cols_out_write),
    .img_1_rows_V_out_din(Block_Mat_exit45_pro_U0_img_1_rows_V_out_din),
    .img_1_rows_V_out_full_n(img_1_rows_V_c_full_n),
    .img_1_rows_V_out_write(Block_Mat_exit45_pro_U0_img_1_rows_V_out_write),
    .img_1_cols_V_out_din(Block_Mat_exit45_pro_U0_img_1_cols_V_out_din),
    .img_1_cols_V_out_full_n(img_1_cols_V_c_full_n),
    .img_1_cols_V_out_write(Block_Mat_exit45_pro_U0_img_1_cols_V_out_write),
    .y_lower_out_din(Block_Mat_exit45_pro_U0_y_lower_out_din),
    .y_lower_out_full_n(y_lower_c_full_n),
    .y_lower_out_write(Block_Mat_exit45_pro_U0_y_lower_out_write),
    .y_upper_out_din(Block_Mat_exit45_pro_U0_y_upper_out_din),
    .y_upper_out_full_n(y_upper_c_full_n),
    .y_upper_out_write(Block_Mat_exit45_pro_U0_y_upper_out_write),
    .cb_lower_out_din(Block_Mat_exit45_pro_U0_cb_lower_out_din),
    .cb_lower_out_full_n(cb_lower_c_full_n),
    .cb_lower_out_write(Block_Mat_exit45_pro_U0_cb_lower_out_write),
    .cb_upper_out_din(Block_Mat_exit45_pro_U0_cb_upper_out_din),
    .cb_upper_out_full_n(cb_upper_c_full_n),
    .cb_upper_out_write(Block_Mat_exit45_pro_U0_cb_upper_out_write),
    .cr_lower_out_din(Block_Mat_exit45_pro_U0_cr_lower_out_din),
    .cr_lower_out_full_n(cr_lower_c_full_n),
    .cr_lower_out_write(Block_Mat_exit45_pro_U0_cr_lower_out_write),
    .cr_upper_out_din(Block_Mat_exit45_pro_U0_cr_upper_out_din),
    .cr_upper_out_full_n(cr_upper_c_full_n),
    .cr_upper_out_write(Block_Mat_exit45_pro_U0_cr_upper_out_write),
    .ap_return_0(Block_Mat_exit45_pro_U0_ap_return_0),
    .ap_return_1(Block_Mat_exit45_pro_U0_ap_return_1)
);

AXIvideo2Mat AXIvideo2Mat_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(AXIvideo2Mat_U0_ap_start),
    .ap_done(AXIvideo2Mat_U0_ap_done),
    .ap_continue(AXIvideo2Mat_U0_ap_continue),
    .ap_idle(AXIvideo2Mat_U0_ap_idle),
    .ap_ready(AXIvideo2Mat_U0_ap_ready),
    .AXI_video_strm_V_data_V_dout(input_V_data_V_dout),
    .AXI_video_strm_V_data_V_empty_n(input_V_data_V_empty_n),
    .AXI_video_strm_V_data_V_read(AXIvideo2Mat_U0_AXI_video_strm_V_data_V_read),
    .AXI_video_strm_V_keep_V_dout(input_V_keep_V_dout),
    .AXI_video_strm_V_keep_V_empty_n(input_V_keep_V_empty_n),
    .AXI_video_strm_V_keep_V_read(AXIvideo2Mat_U0_AXI_video_strm_V_keep_V_read),
    .AXI_video_strm_V_strb_V_dout(input_V_strb_V_dout),
    .AXI_video_strm_V_strb_V_empty_n(input_V_strb_V_empty_n),
    .AXI_video_strm_V_strb_V_read(AXIvideo2Mat_U0_AXI_video_strm_V_strb_V_read),
    .AXI_video_strm_V_user_V_dout(input_V_user_V_dout),
    .AXI_video_strm_V_user_V_empty_n(input_V_user_V_empty_n),
    .AXI_video_strm_V_user_V_read(AXIvideo2Mat_U0_AXI_video_strm_V_user_V_read),
    .AXI_video_strm_V_last_V_dout(input_V_last_V_dout),
    .AXI_video_strm_V_last_V_empty_n(input_V_last_V_empty_n),
    .AXI_video_strm_V_last_V_read(AXIvideo2Mat_U0_AXI_video_strm_V_last_V_read),
    .AXI_video_strm_V_id_V_dout(input_V_id_V_dout),
    .AXI_video_strm_V_id_V_empty_n(input_V_id_V_empty_n),
    .AXI_video_strm_V_id_V_read(AXIvideo2Mat_U0_AXI_video_strm_V_id_V_read),
    .AXI_video_strm_V_dest_V_dout(input_V_dest_V_dout),
    .AXI_video_strm_V_dest_V_empty_n(input_V_dest_V_empty_n),
    .AXI_video_strm_V_dest_V_read(AXIvideo2Mat_U0_AXI_video_strm_V_dest_V_read),
    .img_rows_V_read(img_0_rows_V_channel_dout),
    .img_cols_V_read(img_0_cols_V_channel_dout),
    .img_data_stream_0_V_din(AXIvideo2Mat_U0_img_data_stream_0_V_din),
    .img_data_stream_0_V_full_n(img_0_data_stream_0_full_n),
    .img_data_stream_0_V_write(AXIvideo2Mat_U0_img_data_stream_0_V_write),
    .img_data_stream_1_V_din(AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .img_data_stream_1_V_full_n(img_0_data_stream_1_full_n),
    .img_data_stream_1_V_write(AXIvideo2Mat_U0_img_data_stream_1_V_write),
    .img_data_stream_2_V_din(AXIvideo2Mat_U0_img_data_stream_2_V_din),
    .img_data_stream_2_V_full_n(img_0_data_stream_2_full_n),
    .img_data_stream_2_V_write(AXIvideo2Mat_U0_img_data_stream_2_V_write)
);

hls_skin_dection hls_skin_dection_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(hls_skin_dection_U0_ap_start),
    .ap_done(hls_skin_dection_U0_ap_done),
    .ap_continue(hls_skin_dection_U0_ap_continue),
    .ap_idle(hls_skin_dection_U0_ap_idle),
    .ap_ready(hls_skin_dection_U0_ap_ready),
    .src_data_stream_0_V_dout(img_0_data_stream_0_dout),
    .src_data_stream_0_V_empty_n(img_0_data_stream_0_empty_n),
    .src_data_stream_0_V_read(hls_skin_dection_U0_src_data_stream_0_V_read),
    .src_data_stream_1_V_dout(img_0_data_stream_1_dout),
    .src_data_stream_1_V_empty_n(img_0_data_stream_1_empty_n),
    .src_data_stream_1_V_read(hls_skin_dection_U0_src_data_stream_1_V_read),
    .src_data_stream_2_V_dout(img_0_data_stream_2_dout),
    .src_data_stream_2_V_empty_n(img_0_data_stream_2_empty_n),
    .src_data_stream_2_V_read(hls_skin_dection_U0_src_data_stream_2_V_read),
    .dst_data_stream_0_V_din(hls_skin_dection_U0_dst_data_stream_0_V_din),
    .dst_data_stream_0_V_full_n(img_1_data_stream_0_full_n),
    .dst_data_stream_0_V_write(hls_skin_dection_U0_dst_data_stream_0_V_write),
    .dst_data_stream_1_V_din(hls_skin_dection_U0_dst_data_stream_1_V_din),
    .dst_data_stream_1_V_full_n(img_1_data_stream_1_full_n),
    .dst_data_stream_1_V_write(hls_skin_dection_U0_dst_data_stream_1_V_write),
    .dst_data_stream_2_V_din(hls_skin_dection_U0_dst_data_stream_2_V_din),
    .dst_data_stream_2_V_full_n(img_1_data_stream_2_full_n),
    .dst_data_stream_2_V_write(hls_skin_dection_U0_dst_data_stream_2_V_write),
    .rows_dout(rows_c_dout),
    .rows_empty_n(rows_c_empty_n),
    .rows_read(hls_skin_dection_U0_rows_read),
    .cols_dout(cols_c_dout),
    .cols_empty_n(cols_c_empty_n),
    .cols_read(hls_skin_dection_U0_cols_read),
    .y_lower_dout(y_lower_c_dout),
    .y_lower_empty_n(y_lower_c_empty_n),
    .y_lower_read(hls_skin_dection_U0_y_lower_read),
    .y_upper_dout(y_upper_c_dout),
    .y_upper_empty_n(y_upper_c_empty_n),
    .y_upper_read(hls_skin_dection_U0_y_upper_read),
    .cb_lower_dout(cb_lower_c_dout),
    .cb_lower_empty_n(cb_lower_c_empty_n),
    .cb_lower_read(hls_skin_dection_U0_cb_lower_read),
    .cb_upper_dout(cb_upper_c_dout),
    .cb_upper_empty_n(cb_upper_c_empty_n),
    .cb_upper_read(hls_skin_dection_U0_cb_upper_read),
    .cr_lower_dout(cr_lower_c_dout),
    .cr_lower_empty_n(cr_lower_c_empty_n),
    .cr_lower_read(hls_skin_dection_U0_cr_lower_read),
    .cr_upper_dout(cr_upper_c_dout),
    .cr_upper_empty_n(cr_upper_c_empty_n),
    .cr_upper_read(hls_skin_dection_U0_cr_upper_read)
);

Mat2AXIvideo Mat2AXIvideo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Mat2AXIvideo_U0_ap_start),
    .ap_done(Mat2AXIvideo_U0_ap_done),
    .ap_continue(Mat2AXIvideo_U0_ap_continue),
    .ap_idle(Mat2AXIvideo_U0_ap_idle),
    .ap_ready(Mat2AXIvideo_U0_ap_ready),
    .img_rows_V_dout(img_1_rows_V_c_dout),
    .img_rows_V_empty_n(img_1_rows_V_c_empty_n),
    .img_rows_V_read(Mat2AXIvideo_U0_img_rows_V_read),
    .img_cols_V_dout(img_1_cols_V_c_dout),
    .img_cols_V_empty_n(img_1_cols_V_c_empty_n),
    .img_cols_V_read(Mat2AXIvideo_U0_img_cols_V_read),
    .img_data_stream_0_V_dout(img_1_data_stream_0_dout),
    .img_data_stream_0_V_empty_n(img_1_data_stream_0_empty_n),
    .img_data_stream_0_V_read(Mat2AXIvideo_U0_img_data_stream_0_V_read),
    .img_data_stream_1_V_dout(img_1_data_stream_1_dout),
    .img_data_stream_1_V_empty_n(img_1_data_stream_1_empty_n),
    .img_data_stream_1_V_read(Mat2AXIvideo_U0_img_data_stream_1_V_read),
    .img_data_stream_2_V_dout(img_1_data_stream_2_dout),
    .img_data_stream_2_V_empty_n(img_1_data_stream_2_empty_n),
    .img_data_stream_2_V_read(Mat2AXIvideo_U0_img_data_stream_2_V_read),
    .AXI_video_strm_V_data_V_din(Mat2AXIvideo_U0_AXI_video_strm_V_data_V_din),
    .AXI_video_strm_V_data_V_full_n(output_V_data_V_full_n),
    .AXI_video_strm_V_data_V_write(Mat2AXIvideo_U0_AXI_video_strm_V_data_V_write),
    .AXI_video_strm_V_keep_V_din(Mat2AXIvideo_U0_AXI_video_strm_V_keep_V_din),
    .AXI_video_strm_V_keep_V_full_n(output_V_keep_V_full_n),
    .AXI_video_strm_V_keep_V_write(Mat2AXIvideo_U0_AXI_video_strm_V_keep_V_write),
    .AXI_video_strm_V_strb_V_din(Mat2AXIvideo_U0_AXI_video_strm_V_strb_V_din),
    .AXI_video_strm_V_strb_V_full_n(output_V_strb_V_full_n),
    .AXI_video_strm_V_strb_V_write(Mat2AXIvideo_U0_AXI_video_strm_V_strb_V_write),
    .AXI_video_strm_V_user_V_din(Mat2AXIvideo_U0_AXI_video_strm_V_user_V_din),
    .AXI_video_strm_V_user_V_full_n(output_V_user_V_full_n),
    .AXI_video_strm_V_user_V_write(Mat2AXIvideo_U0_AXI_video_strm_V_user_V_write),
    .AXI_video_strm_V_last_V_din(Mat2AXIvideo_U0_AXI_video_strm_V_last_V_din),
    .AXI_video_strm_V_last_V_full_n(output_V_last_V_full_n),
    .AXI_video_strm_V_last_V_write(Mat2AXIvideo_U0_AXI_video_strm_V_last_V_write),
    .AXI_video_strm_V_id_V_din(Mat2AXIvideo_U0_AXI_video_strm_V_id_V_din),
    .AXI_video_strm_V_id_V_full_n(output_V_id_V_full_n),
    .AXI_video_strm_V_id_V_write(Mat2AXIvideo_U0_AXI_video_strm_V_id_V_write),
    .AXI_video_strm_V_dest_V_din(Mat2AXIvideo_U0_AXI_video_strm_V_dest_V_din),
    .AXI_video_strm_V_dest_V_full_n(output_V_dest_V_full_n),
    .AXI_video_strm_V_dest_V_write(Mat2AXIvideo_U0_AXI_video_strm_V_dest_V_write)
);

fifo_w32_d3_A rows_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit45_pro_U0_rows_out_din),
    .if_full_n(rows_c_full_n),
    .if_write(Block_Mat_exit45_pro_U0_rows_out_write),
    .if_dout(rows_c_dout),
    .if_empty_n(rows_c_empty_n),
    .if_read(hls_skin_dection_U0_rows_read)
);

fifo_w32_d3_A cols_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit45_pro_U0_cols_out_din),
    .if_full_n(cols_c_full_n),
    .if_write(Block_Mat_exit45_pro_U0_cols_out_write),
    .if_dout(cols_c_dout),
    .if_empty_n(cols_c_empty_n),
    .if_read(hls_skin_dection_U0_cols_read)
);

fifo_w32_d4_A img_1_rows_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit45_pro_U0_img_1_rows_V_out_din),
    .if_full_n(img_1_rows_V_c_full_n),
    .if_write(Block_Mat_exit45_pro_U0_img_1_rows_V_out_write),
    .if_dout(img_1_rows_V_c_dout),
    .if_empty_n(img_1_rows_V_c_empty_n),
    .if_read(Mat2AXIvideo_U0_img_rows_V_read)
);

fifo_w32_d4_A img_1_cols_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit45_pro_U0_img_1_cols_V_out_din),
    .if_full_n(img_1_cols_V_c_full_n),
    .if_write(Block_Mat_exit45_pro_U0_img_1_cols_V_out_write),
    .if_dout(img_1_cols_V_c_dout),
    .if_empty_n(img_1_cols_V_c_empty_n),
    .if_read(Mat2AXIvideo_U0_img_cols_V_read)
);

fifo_w32_d3_A y_lower_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit45_pro_U0_y_lower_out_din),
    .if_full_n(y_lower_c_full_n),
    .if_write(Block_Mat_exit45_pro_U0_y_lower_out_write),
    .if_dout(y_lower_c_dout),
    .if_empty_n(y_lower_c_empty_n),
    .if_read(hls_skin_dection_U0_y_lower_read)
);

fifo_w32_d3_A y_upper_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit45_pro_U0_y_upper_out_din),
    .if_full_n(y_upper_c_full_n),
    .if_write(Block_Mat_exit45_pro_U0_y_upper_out_write),
    .if_dout(y_upper_c_dout),
    .if_empty_n(y_upper_c_empty_n),
    .if_read(hls_skin_dection_U0_y_upper_read)
);

fifo_w32_d3_A cb_lower_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit45_pro_U0_cb_lower_out_din),
    .if_full_n(cb_lower_c_full_n),
    .if_write(Block_Mat_exit45_pro_U0_cb_lower_out_write),
    .if_dout(cb_lower_c_dout),
    .if_empty_n(cb_lower_c_empty_n),
    .if_read(hls_skin_dection_U0_cb_lower_read)
);

fifo_w32_d3_A cb_upper_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit45_pro_U0_cb_upper_out_din),
    .if_full_n(cb_upper_c_full_n),
    .if_write(Block_Mat_exit45_pro_U0_cb_upper_out_write),
    .if_dout(cb_upper_c_dout),
    .if_empty_n(cb_upper_c_empty_n),
    .if_read(hls_skin_dection_U0_cb_upper_read)
);

fifo_w32_d3_A cr_lower_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit45_pro_U0_cr_lower_out_din),
    .if_full_n(cr_lower_c_full_n),
    .if_write(Block_Mat_exit45_pro_U0_cr_lower_out_write),
    .if_dout(cr_lower_c_dout),
    .if_empty_n(cr_lower_c_empty_n),
    .if_read(hls_skin_dection_U0_cr_lower_read)
);

fifo_w32_d3_A cr_upper_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit45_pro_U0_cr_upper_out_din),
    .if_full_n(cr_upper_c_full_n),
    .if_write(Block_Mat_exit45_pro_U0_cr_upper_out_write),
    .if_dout(cr_upper_c_dout),
    .if_empty_n(cr_upper_c_empty_n),
    .if_read(hls_skin_dection_U0_cr_upper_read)
);

fifo_w32_d2_A img_0_rows_V_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit45_pro_U0_ap_return_0),
    .if_full_n(img_0_rows_V_channel_full_n),
    .if_write(ap_channel_done_img_0_rows_V_channel),
    .if_dout(img_0_rows_V_channel_dout),
    .if_empty_n(img_0_rows_V_channel_empty_n),
    .if_read(AXIvideo2Mat_U0_ap_ready)
);

fifo_w32_d2_A img_0_cols_V_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit45_pro_U0_ap_return_1),
    .if_full_n(img_0_cols_V_channel_full_n),
    .if_write(ap_channel_done_img_0_cols_V_channel),
    .if_dout(img_0_cols_V_channel_dout),
    .if_empty_n(img_0_cols_V_channel_empty_n),
    .if_read(AXIvideo2Mat_U0_ap_ready)
);

fifo_w8_d2_A img_0_data_stream_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_0_V_din),
    .if_full_n(img_0_data_stream_0_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_0_V_write),
    .if_dout(img_0_data_stream_0_dout),
    .if_empty_n(img_0_data_stream_0_empty_n),
    .if_read(hls_skin_dection_U0_src_data_stream_0_V_read)
);

fifo_w8_d2_A img_0_data_stream_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .if_full_n(img_0_data_stream_1_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_1_V_write),
    .if_dout(img_0_data_stream_1_dout),
    .if_empty_n(img_0_data_stream_1_empty_n),
    .if_read(hls_skin_dection_U0_src_data_stream_1_V_read)
);

fifo_w8_d2_A img_0_data_stream_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_2_V_din),
    .if_full_n(img_0_data_stream_2_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_2_V_write),
    .if_dout(img_0_data_stream_2_dout),
    .if_empty_n(img_0_data_stream_2_empty_n),
    .if_read(hls_skin_dection_U0_src_data_stream_2_V_read)
);

fifo_w8_d2_A img_1_data_stream_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(hls_skin_dection_U0_dst_data_stream_0_V_din),
    .if_full_n(img_1_data_stream_0_full_n),
    .if_write(hls_skin_dection_U0_dst_data_stream_0_V_write),
    .if_dout(img_1_data_stream_0_dout),
    .if_empty_n(img_1_data_stream_0_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_0_V_read)
);

fifo_w8_d2_A img_1_data_stream_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(hls_skin_dection_U0_dst_data_stream_1_V_din),
    .if_full_n(img_1_data_stream_1_full_n),
    .if_write(hls_skin_dection_U0_dst_data_stream_1_V_write),
    .if_dout(img_1_data_stream_1_dout),
    .if_empty_n(img_1_data_stream_1_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_1_V_read)
);

fifo_w8_d2_A img_1_data_stream_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(hls_skin_dection_U0_dst_data_stream_2_V_din),
    .if_full_n(img_1_data_stream_2_full_n),
    .if_write(hls_skin_dection_U0_dst_data_stream_2_V_write),
    .if_dout(img_1_data_stream_2_dout),
    .if_empty_n(img_1_data_stream_2_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_2_V_read)
);

start_for_hls_skig8j start_for_hls_skig8j_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_hls_skin_dection_U0_din),
    .if_full_n(start_for_hls_skin_dection_U0_full_n),
    .if_write(Block_Mat_exit45_pro_U0_start_write),
    .if_dout(start_for_hls_skin_dection_U0_dout),
    .if_empty_n(start_for_hls_skin_dection_U0_empty_n),
    .if_read(hls_skin_dection_U0_ap_ready)
);

start_for_Mat2AXIhbi start_for_Mat2AXIhbi_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Mat2AXIvideo_U0_din),
    .if_full_n(start_for_Mat2AXIvideo_U0_full_n),
    .if_write(Block_Mat_exit45_pro_U0_start_write),
    .if_dout(start_for_Mat2AXIvideo_U0_dout),
    .if_empty_n(start_for_Mat2AXIvideo_U0_empty_n),
    .if_read(Mat2AXIvideo_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_AXIvideo2Mat_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_AXIvideo2Mat_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_AXIvideo2Mat_U0_ap_ready <= ap_sync_AXIvideo2Mat_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_Block_Mat_exit45_pro_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Block_Mat_exit45_pro_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Block_Mat_exit45_pro_U0_ap_ready <= ap_sync_Block_Mat_exit45_pro_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_img_0_cols_V_channel <= 1'b0;
    end else begin
        if (((Block_Mat_exit45_pro_U0_ap_done & Block_Mat_exit45_pro_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_img_0_cols_V_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_img_0_cols_V_channel <= ap_sync_channel_write_img_0_cols_V_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_img_0_rows_V_channel <= 1'b0;
    end else begin
        if (((Block_Mat_exit45_pro_U0_ap_done & Block_Mat_exit45_pro_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_img_0_rows_V_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_img_0_rows_V_channel <= ap_sync_channel_write_img_0_rows_V_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == AXIvideo2Mat_U0_ap_ready) & (ap_sync_ready == 1'b1))) begin
        AXIvideo2Mat_U0_ap_ready_count <= (AXIvideo2Mat_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (1'b1 == AXIvideo2Mat_U0_ap_ready))) begin
        AXIvideo2Mat_U0_ap_ready_count <= (AXIvideo2Mat_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == Block_Mat_exit45_pro_U0_ap_ready) & (ap_sync_ready == 1'b1))) begin
        Block_Mat_exit45_pro_U0_ap_ready_count <= (Block_Mat_exit45_pro_U0_ap_ready_count - 2'd1);
    end else if (((1'b1 == Block_Mat_exit45_pro_U0_ap_ready) & (ap_sync_ready == 1'b0))) begin
        Block_Mat_exit45_pro_U0_ap_ready_count <= (Block_Mat_exit45_pro_U0_ap_ready_count + 2'd1);
    end
end

assign AXIvideo2Mat_U0_ap_continue = 1'b1;

assign AXIvideo2Mat_U0_ap_start = (img_0_rows_V_channel_empty_n & img_0_cols_V_channel_empty_n & (ap_sync_reg_AXIvideo2Mat_U0_ap_ready ^ 1'b1) & ap_start);

assign AXIvideo2Mat_U0_start_full_n = 1'b1;

assign AXIvideo2Mat_U0_start_write = 1'b0;

assign Block_Mat_exit45_pro_U0_ap_continue = (ap_sync_channel_write_img_0_rows_V_channel & ap_sync_channel_write_img_0_cols_V_channel);

assign Block_Mat_exit45_pro_U0_ap_start = ((ap_sync_reg_Block_Mat_exit45_pro_U0_ap_ready ^ 1'b1) & ap_start);

assign Block_Mat_exit45_pro_U0_start_full_n = (start_for_hls_skin_dection_U0_full_n & start_for_Mat2AXIvideo_U0_full_n);

assign Mat2AXIvideo_U0_ap_continue = 1'b1;

assign Mat2AXIvideo_U0_ap_start = start_for_Mat2AXIvideo_U0_empty_n;

assign Mat2AXIvideo_U0_start_full_n = 1'b1;

assign Mat2AXIvideo_U0_start_write = 1'b0;

assign ap_channel_done_img_0_cols_V_channel = ((ap_sync_reg_channel_write_img_0_cols_V_channel ^ 1'b1) & Block_Mat_exit45_pro_U0_ap_done);

assign ap_channel_done_img_0_rows_V_channel = ((ap_sync_reg_channel_write_img_0_rows_V_channel ^ 1'b1) & Block_Mat_exit45_pro_U0_ap_done);

assign ap_done = Mat2AXIvideo_U0_ap_done;

assign ap_idle = (hls_skin_dection_U0_ap_idle & (img_0_cols_V_channel_empty_n ^ 1'b1) & (img_0_rows_V_channel_empty_n ^ 1'b1) & Mat2AXIvideo_U0_ap_idle & Block_Mat_exit45_pro_U0_ap_idle & AXIvideo2Mat_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_AXIvideo2Mat_U0_ap_ready = (ap_sync_reg_AXIvideo2Mat_U0_ap_ready | AXIvideo2Mat_U0_ap_ready);

assign ap_sync_Block_Mat_exit45_pro_U0_ap_ready = (ap_sync_reg_Block_Mat_exit45_pro_U0_ap_ready | Block_Mat_exit45_pro_U0_ap_ready);

assign ap_sync_channel_write_img_0_cols_V_channel = ((img_0_cols_V_channel_full_n & ap_channel_done_img_0_cols_V_channel) | ap_sync_reg_channel_write_img_0_cols_V_channel);

assign ap_sync_channel_write_img_0_rows_V_channel = ((img_0_rows_V_channel_full_n & ap_channel_done_img_0_rows_V_channel) | ap_sync_reg_channel_write_img_0_rows_V_channel);

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Mat2AXIvideo_U0_ap_done;

assign ap_sync_ready = (ap_sync_Block_Mat_exit45_pro_U0_ap_ready & ap_sync_AXIvideo2Mat_U0_ap_ready);

assign hls_skin_dection_U0_ap_continue = 1'b1;

assign hls_skin_dection_U0_ap_start = start_for_hls_skin_dection_U0_empty_n;

assign hls_skin_dection_U0_start_full_n = 1'b1;

assign hls_skin_dection_U0_start_write = 1'b0;

assign input_V_data_V_read = AXIvideo2Mat_U0_AXI_video_strm_V_data_V_read;

assign input_V_dest_V_read = AXIvideo2Mat_U0_AXI_video_strm_V_dest_V_read;

assign input_V_id_V_read = AXIvideo2Mat_U0_AXI_video_strm_V_id_V_read;

assign input_V_keep_V_read = AXIvideo2Mat_U0_AXI_video_strm_V_keep_V_read;

assign input_V_last_V_read = AXIvideo2Mat_U0_AXI_video_strm_V_last_V_read;

assign input_V_strb_V_read = AXIvideo2Mat_U0_AXI_video_strm_V_strb_V_read;

assign input_V_user_V_read = AXIvideo2Mat_U0_AXI_video_strm_V_user_V_read;

assign output_V_data_V_din = Mat2AXIvideo_U0_AXI_video_strm_V_data_V_din;

assign output_V_data_V_write = Mat2AXIvideo_U0_AXI_video_strm_V_data_V_write;

assign output_V_dest_V_din = Mat2AXIvideo_U0_AXI_video_strm_V_dest_V_din;

assign output_V_dest_V_write = Mat2AXIvideo_U0_AXI_video_strm_V_dest_V_write;

assign output_V_id_V_din = Mat2AXIvideo_U0_AXI_video_strm_V_id_V_din;

assign output_V_id_V_write = Mat2AXIvideo_U0_AXI_video_strm_V_id_V_write;

assign output_V_keep_V_din = Mat2AXIvideo_U0_AXI_video_strm_V_keep_V_din;

assign output_V_keep_V_write = Mat2AXIvideo_U0_AXI_video_strm_V_keep_V_write;

assign output_V_last_V_din = Mat2AXIvideo_U0_AXI_video_strm_V_last_V_din;

assign output_V_last_V_write = Mat2AXIvideo_U0_AXI_video_strm_V_last_V_write;

assign output_V_strb_V_din = Mat2AXIvideo_U0_AXI_video_strm_V_strb_V_din;

assign output_V_strb_V_write = Mat2AXIvideo_U0_AXI_video_strm_V_strb_V_write;

assign output_V_user_V_din = Mat2AXIvideo_U0_AXI_video_strm_V_user_V_din;

assign output_V_user_V_write = Mat2AXIvideo_U0_AXI_video_strm_V_user_V_write;

assign start_for_Mat2AXIvideo_U0_din = 1'b1;

assign start_for_hls_skin_dection_U0_din = 1'b1;

endmodule //ImgProcess_Top