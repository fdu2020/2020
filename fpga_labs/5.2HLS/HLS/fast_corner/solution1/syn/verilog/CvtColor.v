// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module CvtColor (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        p_src_rows_V,
        p_src_cols_V,
        p_src_data_stream_0_V_dout,
        p_src_data_stream_0_V_empty_n,
        p_src_data_stream_0_V_read,
        p_src_data_stream_1_V_dout,
        p_src_data_stream_1_V_empty_n,
        p_src_data_stream_1_V_read,
        p_src_data_stream_2_V_dout,
        p_src_data_stream_2_V_empty_n,
        p_src_data_stream_2_V_read,
        p_dst_data_stream_V_din,
        p_dst_data_stream_V_full_n,
        p_dst_data_stream_V_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [31:0] p_src_rows_V;
input  [31:0] p_src_cols_V;
input  [7:0] p_src_data_stream_0_V_dout;
input   p_src_data_stream_0_V_empty_n;
output   p_src_data_stream_0_V_read;
input  [7:0] p_src_data_stream_1_V_dout;
input   p_src_data_stream_1_V_empty_n;
output   p_src_data_stream_1_V_read;
input  [7:0] p_src_data_stream_2_V_dout;
input   p_src_data_stream_2_V_empty_n;
output   p_src_data_stream_2_V_read;
output  [7:0] p_dst_data_stream_V_din;
input   p_dst_data_stream_V_full_n;
output   p_dst_data_stream_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg p_src_data_stream_0_V_read;
reg p_src_data_stream_1_V_read;
reg p_src_data_stream_2_V_read;
reg p_dst_data_stream_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    p_src_data_stream_0_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] tmp_35_reg_377;
reg    p_src_data_stream_1_V_blk_n;
reg    p_src_data_stream_2_V_blk_n;
reg    p_dst_data_stream_V_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] tmp_35_reg_377_pp0_iter1_reg;
reg   [30:0] j_reg_216;
reg    ap_block_state1;
wire   [0:0] tmp_s_fu_231_p2;
wire    ap_CS_fsm_state2;
wire   [30:0] i_1_fu_236_p2;
reg   [30:0] i_1_reg_372;
wire   [0:0] tmp_35_fu_246_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [30:0] j_1_fu_251_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [7:0] tmp_68_reg_386;
wire   [28:0] grp_fu_333_p3;
reg   [28:0] ret_V_reg_391;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg   [30:0] i_reg_205;
wire    ap_CS_fsm_state6;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] i_cast_fu_227_p1;
wire   [31:0] j_cast_fu_242_p1;
wire   [29:0] grp_fu_347_p3;
wire   [0:0] tmp_63_fu_280_p3;
wire   [7:0] tmp_9_i_i_i_cast_fu_287_p1;
wire   [7:0] p_Val2_3_fu_271_p4;
wire   [0:0] tmp_64_fu_297_p3;
wire   [7:0] p_Val2_4_fu_291_p2;
wire   [0:0] tmp_65_fu_310_p3;
wire   [0:0] rev_fu_304_p2;
wire   [0:0] deleted_zeros_fu_318_p2;
wire   [19:0] grp_fu_333_p0;
wire   [7:0] grp_fu_333_p1;
wire   [28:0] r_V_4_i_fu_340_p2;
wire   [21:0] r_V_4_i_fu_340_p0;
wire   [7:0] r_V_4_i_fu_340_p1;
wire   [22:0] grp_fu_347_p0;
wire   [7:0] grp_fu_347_p1;
wire   [28:0] grp_fu_347_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [27:0] grp_fu_333_p10;
wire   [29:0] grp_fu_347_p10;
wire   [29:0] grp_fu_347_p20;
wire   [28:0] r_V_4_i_fu_340_p10;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

hls_fast_corner_mbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 20 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
hls_fast_corner_mbkb_U24(
    .din0(grp_fu_333_p0),
    .din1(grp_fu_333_p1),
    .din2(r_V_4_i_fu_340_p2),
    .dout(grp_fu_333_p3)
);

hls_fast_corner_mcud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 22 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 29 ))
hls_fast_corner_mcud_U25(
    .din0(r_V_4_i_fu_340_p0),
    .din1(r_V_4_i_fu_340_p1),
    .dout(r_V_4_i_fu_340_p2)
);

hls_fast_corner_mdEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 23 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 30 ))
hls_fast_corner_mdEe_U26(
    .din0(grp_fu_347_p0),
    .din1(grp_fu_347_p1),
    .din2(grp_fu_347_p2),
    .dout(grp_fu_347_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((tmp_s_fu_231_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((tmp_s_fu_231_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((tmp_s_fu_231_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_reg_205 <= i_1_reg_372;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_205 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_35_fu_246_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        j_reg_216 <= j_1_fu_251_p2;
    end else if (((tmp_s_fu_231_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_216 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_372 <= i_1_fu_236_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_35_reg_377 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ret_V_reg_391 <= grp_fu_333_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_35_reg_377 <= tmp_35_fu_246_p2;
        tmp_35_reg_377_pp0_iter1_reg <= tmp_35_reg_377;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_35_reg_377 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_68_reg_386 <= p_src_data_stream_1_V_dout;
    end
end

always @ (*) begin
    if ((tmp_35_fu_246_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_s_fu_231_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_s_fu_231_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_reg_377_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_dst_data_stream_V_blk_n = p_dst_data_stream_V_full_n;
    end else begin
        p_dst_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_35_reg_377_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_dst_data_stream_V_write = 1'b1;
    end else begin
        p_dst_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_reg_377 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_src_data_stream_0_V_blk_n = p_src_data_stream_0_V_empty_n;
    end else begin
        p_src_data_stream_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_35_reg_377 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_src_data_stream_0_V_read = 1'b1;
    end else begin
        p_src_data_stream_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_reg_377 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_src_data_stream_1_V_blk_n = p_src_data_stream_1_V_empty_n;
    end else begin
        p_src_data_stream_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_35_reg_377 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_src_data_stream_1_V_read = 1'b1;
    end else begin
        p_src_data_stream_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_35_reg_377 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_src_data_stream_2_V_blk_n = p_src_data_stream_2_V_empty_n;
    end else begin
        p_src_data_stream_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_35_reg_377 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_src_data_stream_2_V_read = 1'b1;
    end else begin
        p_src_data_stream_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_s_fu_231_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (tmp_35_fu_246_p2 == 1'd0)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (tmp_35_fu_246_p2 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((tmp_35_reg_377_pp0_iter1_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((tmp_35_reg_377 == 1'd1) & (p_src_data_stream_2_V_empty_n == 1'b0)) | ((tmp_35_reg_377 == 1'd1) & (p_src_data_stream_1_V_empty_n == 1'b0)) | ((tmp_35_reg_377 == 1'd1) & (p_src_data_stream_0_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((tmp_35_reg_377_pp0_iter1_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((tmp_35_reg_377 == 1'd1) & (p_src_data_stream_2_V_empty_n == 1'b0)) | ((tmp_35_reg_377 == 1'd1) & (p_src_data_stream_1_V_empty_n == 1'b0)) | ((tmp_35_reg_377 == 1'd1) & (p_src_data_stream_0_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((tmp_35_reg_377_pp0_iter1_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((tmp_35_reg_377 == 1'd1) & (p_src_data_stream_2_V_empty_n == 1'b0)) | ((tmp_35_reg_377 == 1'd1) & (p_src_data_stream_1_V_empty_n == 1'b0)) | ((tmp_35_reg_377 == 1'd1) & (p_src_data_stream_0_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = (((tmp_35_reg_377 == 1'd1) & (p_src_data_stream_2_V_empty_n == 1'b0)) | ((tmp_35_reg_377 == 1'd1) & (p_src_data_stream_1_V_empty_n == 1'b0)) | ((tmp_35_reg_377 == 1'd1) & (p_src_data_stream_0_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter2 = ((tmp_35_reg_377_pp0_iter1_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign deleted_zeros_fu_318_p2 = (tmp_65_fu_310_p3 | rev_fu_304_p2);

assign grp_fu_333_p0 = 28'd478150;

assign grp_fu_333_p1 = grp_fu_333_p10;

assign grp_fu_333_p10 = p_src_data_stream_0_V_dout;

assign grp_fu_347_p0 = 30'd2462056;

assign grp_fu_347_p1 = grp_fu_347_p10;

assign grp_fu_347_p10 = tmp_68_reg_386;

assign grp_fu_347_p2 = grp_fu_347_p20;

assign grp_fu_347_p20 = ret_V_reg_391;

assign i_1_fu_236_p2 = (i_reg_205 + 31'd1);

assign i_cast_fu_227_p1 = i_reg_205;

assign j_1_fu_251_p2 = (j_reg_216 + 31'd1);

assign j_cast_fu_242_p1 = j_reg_216;

assign p_Val2_3_fu_271_p4 = {{grp_fu_347_p3[29:22]}};

assign p_Val2_4_fu_291_p2 = (tmp_9_i_i_i_cast_fu_287_p1 + p_Val2_3_fu_271_p4);

assign p_dst_data_stream_V_din = ((deleted_zeros_fu_318_p2[0:0] === 1'b1) ? p_Val2_4_fu_291_p2 : 8'd255);

assign r_V_4_i_fu_340_p0 = 29'd1254096;

assign r_V_4_i_fu_340_p1 = r_V_4_i_fu_340_p10;

assign r_V_4_i_fu_340_p10 = p_src_data_stream_2_V_dout;

assign rev_fu_304_p2 = (tmp_64_fu_297_p3 ^ 1'd1);

assign start_out = real_start;

assign tmp_35_fu_246_p2 = (($signed(j_cast_fu_242_p1) < $signed(p_src_cols_V)) ? 1'b1 : 1'b0);

assign tmp_63_fu_280_p3 = grp_fu_347_p3[32'd21];

assign tmp_64_fu_297_p3 = grp_fu_347_p3[32'd29];

assign tmp_65_fu_310_p3 = p_Val2_4_fu_291_p2[32'd7];

assign tmp_9_i_i_i_cast_fu_287_p1 = tmp_63_fu_280_p3;

assign tmp_s_fu_231_p2 = (($signed(i_cast_fu_227_p1) < $signed(p_src_rows_V)) ? 1'b1 : 1'b0);

endmodule //CvtColor
