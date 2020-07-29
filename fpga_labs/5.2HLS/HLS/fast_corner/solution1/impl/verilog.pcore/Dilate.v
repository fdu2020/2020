// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Dilate (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_src_rows_V,
        p_src_cols_V,
        p_src_data_stream_V_dout,
        p_src_data_stream_V_empty_n,
        p_src_data_stream_V_read,
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
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] p_src_rows_V;
input  [31:0] p_src_cols_V;
input  [7:0] p_src_data_stream_V_dout;
input   p_src_data_stream_V_empty_n;
output   p_src_data_stream_V_read;
output  [7:0] p_dst_data_stream_V_din;
input   p_dst_data_stream_V_full_n;
output   p_dst_data_stream_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_data_stream_V_read;
reg p_dst_data_stream_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_src_data_stream_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] or_cond_i_i_i_reg_1111;
reg   [0:0] icmp_reg_1067;
reg   [0:0] tmp_21_reg_1058;
reg    p_dst_data_stream_V_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] or_cond_i_i_reg_1147;
reg   [0:0] or_cond_i_i_reg_1147_pp0_iter1_reg;
reg   [31:0] t_V_5_reg_269;
reg    ap_block_state1;
wire   [31:0] tmp_s_fu_280_p2;
wire   [31:0] tmp_18_fu_286_p2;
wire   [31:0] tmp_19_fu_292_p2;
wire   [31:0] p_neg465_i_i_fu_298_p2;
wire   [0:0] exitcond461_i_i_fu_304_p2;
wire    ap_CS_fsm_state2;
wire   [31:0] i_V_fu_309_p2;
reg   [31:0] i_V_reg_1053;
wire   [0:0] tmp_21_fu_315_p2;
wire   [0:0] tmp_137_not_fu_320_p2;
reg   [0:0] tmp_137_not_reg_1062;
wire   [0:0] icmp_fu_336_p2;
wire   [0:0] tmp_23_fu_342_p2;
reg   [0:0] tmp_23_reg_1072;
wire   [0:0] tmp_167_2_fu_348_p2;
reg   [0:0] tmp_167_2_reg_1076;
wire   [0:0] tmp_24_fu_354_p2;
reg   [0:0] tmp_24_reg_1080;
wire   [1:0] tmp_50_fu_510_p1;
reg   [1:0] tmp_50_reg_1087;
wire   [1:0] tmp_51_fu_527_p1;
reg   [1:0] tmp_51_reg_1092;
wire   [1:0] tmp_52_fu_544_p1;
reg   [1:0] tmp_52_reg_1097;
wire   [0:0] exitcond460_i_i_fu_548_p2;
reg   [0:0] exitcond460_i_i_reg_1102;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_predicate_op125_read_state4;
reg    ap_predicate_op133_read_state4;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond460_i_i_reg_1102_pp0_iter1_reg;
wire   [31:0] j_V_fu_553_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] or_cond_i_i_i_fu_600_p2;
wire   [0:0] brmerge_fu_634_p2;
reg   [0:0] brmerge_reg_1115;
reg   [10:0] k_buf_0_val_3_addr_reg_1122;
wire   [1:0] tmp_56_fu_646_p1;
reg   [1:0] tmp_56_reg_1128;
reg   [10:0] k_buf_0_val_4_addr_reg_1135;
reg   [10:0] k_buf_0_val_5_addr_reg_1141;
wire   [0:0] or_cond_i_i_fu_650_p2;
wire   [7:0] src_kernel_win_0_va_6_fu_744_p3;
reg   [7:0] src_kernel_win_0_va_6_reg_1151;
wire   [7:0] temp_0_i_i_i_0210_i_4_fu_861_p3;
reg   [7:0] temp_0_i_i_i_0210_i_4_reg_1158;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
wire   [10:0] k_buf_0_val_3_address0;
reg    k_buf_0_val_3_ce0;
wire   [7:0] k_buf_0_val_3_q0;
wire   [10:0] k_buf_0_val_3_address1;
reg    k_buf_0_val_3_ce1;
reg    k_buf_0_val_3_we1;
wire   [10:0] k_buf_0_val_4_address0;
reg    k_buf_0_val_4_ce0;
wire   [7:0] k_buf_0_val_4_q0;
wire   [10:0] k_buf_0_val_4_address1;
reg    k_buf_0_val_4_ce1;
reg    k_buf_0_val_4_we1;
reg   [7:0] k_buf_0_val_4_d1;
wire   [10:0] k_buf_0_val_5_address0;
reg    k_buf_0_val_5_ce0;
wire   [7:0] k_buf_0_val_5_q0;
wire   [10:0] k_buf_0_val_5_address1;
reg    k_buf_0_val_5_ce1;
reg    k_buf_0_val_5_we1;
reg   [7:0] k_buf_0_val_5_d1;
reg   [31:0] t_V_reg_258;
wire    ap_CS_fsm_state6;
wire   [63:0] tmp_29_fu_639_p1;
reg    ap_block_pp0_stage0_01001;
reg   [7:0] src_kernel_win_0_va_fu_132;
reg   [7:0] src_kernel_win_0_va_1_fu_136;
reg   [7:0] src_kernel_win_0_va_2_fu_140;
wire   [7:0] src_kernel_win_0_va_7_fu_762_p3;
reg   [7:0] src_kernel_win_0_va_3_fu_144;
reg   [7:0] src_kernel_win_0_va_4_fu_148;
wire   [7:0] src_kernel_win_0_va_8_fu_780_p3;
reg   [7:0] src_kernel_win_0_va_5_fu_152;
reg   [7:0] right_border_buf_0_s_fu_156;
wire   [7:0] col_buf_0_val_0_0_fu_675_p3;
reg   [7:0] right_border_buf_0_1_fu_160;
wire   [7:0] col_buf_0_val_2_0_fu_711_p3;
reg   [7:0] right_border_buf_0_2_fu_164;
wire   [7:0] col_buf_0_val_1_0_fu_693_p3;
wire   [30:0] tmp_fu_326_p4;
wire   [31:0] tmp_25_fu_359_p2;
wire   [0:0] tmp_44_fu_365_p3;
wire   [0:0] tmp_26_fu_379_p2;
wire   [0:0] rev_fu_373_p2;
wire   [0:0] tmp_45_fu_390_p3;
wire   [31:0] p_assign_4_1_fu_405_p2;
wire   [0:0] tmp_46_fu_411_p3;
wire   [0:0] tmp_194_1_fu_425_p2;
wire   [0:0] rev1_fu_419_p2;
wire   [0:0] tmp_47_fu_436_p3;
wire   [31:0] p_assign_4_2_fu_451_p2;
wire   [0:0] tmp_48_fu_457_p3;
wire   [0:0] tmp_194_2_fu_471_p2;
wire   [0:0] rev2_fu_465_p2;
wire   [0:0] tmp_49_fu_482_p3;
wire   [0:0] or_cond_i495_i_i_fu_384_p2;
wire   [31:0] p_assign_5_fu_398_p3;
wire   [31:0] y_fu_497_p3;
wire   [31:0] row_assign_7_fu_505_p2;
wire   [0:0] or_cond_i495_i_i_1_fu_430_p2;
wire   [31:0] p_assign_5_1_fu_444_p3;
wire   [31:0] y_1_fu_514_p3;
wire   [31:0] row_assign_7_1_fu_522_p2;
wire   [0:0] or_cond_i495_i_i_2_fu_476_p2;
wire   [31:0] p_assign_5_2_fu_490_p3;
wire   [31:0] y_2_fu_531_p3;
wire   [31:0] row_assign_7_2_fu_539_p2;
wire   [30:0] tmp_53_fu_559_p4;
wire   [31:0] ImagLoc_x_fu_575_p2;
wire   [0:0] tmp_54_fu_581_p3;
wire   [0:0] tmp_28_fu_595_p2;
wire   [0:0] rev3_fu_589_p2;
wire   [0:0] tmp_55_fu_606_p3;
wire   [31:0] p_assign_1_fu_614_p3;
wire   [31:0] x_fu_621_p3;
wire   [31:0] col_assign_1_fu_629_p2;
wire   [0:0] icmp2_fu_569_p2;
wire   [7:0] tmp_30_fu_664_p5;
wire   [7:0] tmp_31_fu_682_p5;
wire   [7:0] tmp_32_fu_700_p5;
wire   [7:0] tmp_33_fu_733_p5;
wire   [7:0] tmp_34_fu_751_p5;
wire   [7:0] tmp_35_fu_769_p5;
wire   [0:0] tmp_213_0_1_fu_799_p2;
wire   [7:0] temp_0_i_i_i_0210_i_fu_805_p3;
wire   [0:0] tmp_213_0_2_fu_813_p2;
wire   [7:0] temp_0_i_i_i_0210_i_1_fu_819_p3;
wire   [0:0] tmp_213_1_fu_827_p2;
wire   [7:0] temp_0_i_i_i_0210_i_2_fu_833_p3;
wire   [0:0] tmp_213_1_1_fu_841_p2;
wire   [7:0] temp_0_i_i_i_0210_i_3_fu_847_p3;
wire   [0:0] tmp_213_1_2_fu_855_p2;
wire   [0:0] tmp_213_2_fu_901_p2;
wire   [7:0] temp_0_i_i_i_0210_i_5_fu_906_p3;
wire   [0:0] tmp_213_2_1_fu_913_p2;
wire   [7:0] temp_0_i_i_i_0210_i_6_fu_919_p3;
wire   [0:0] tmp_213_2_2_fu_927_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_block_pp0;
reg    ap_enable_operation_99;
reg    ap_enable_state3_pp0_iter0_stage0;
wire    ap_enable_operation_116;
reg    ap_enable_state4_pp0_iter1_stage0;
reg    ap_predicate_op129_store_state4;
reg    ap_enable_operation_129;
reg    ap_predicate_op134_store_state4;
reg    ap_enable_operation_134;
reg    ap_enable_operation_102;
wire    ap_enable_operation_119;
reg    ap_predicate_op127_store_state4;
reg    ap_enable_operation_127;
reg    ap_predicate_op132_store_state4;
reg    ap_enable_operation_132;
reg    ap_enable_operation_104;
wire    ap_enable_operation_122;
reg    ap_predicate_op126_store_state4;
reg    ap_enable_operation_126;
reg    ap_predicate_op131_store_state4;
reg    ap_enable_operation_131;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_734;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

FAST_t_opr_k_buf_eOg #(
    .DataWidth( 8 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
k_buf_0_val_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(k_buf_0_val_3_address0),
    .ce0(k_buf_0_val_3_ce0),
    .q0(k_buf_0_val_3_q0),
    .address1(k_buf_0_val_3_address1),
    .ce1(k_buf_0_val_3_ce1),
    .we1(k_buf_0_val_3_we1),
    .d1(p_src_data_stream_V_dout)
);

FAST_t_opr_k_buf_eOg #(
    .DataWidth( 8 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
k_buf_0_val_4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(k_buf_0_val_4_address0),
    .ce0(k_buf_0_val_4_ce0),
    .q0(k_buf_0_val_4_q0),
    .address1(k_buf_0_val_4_address1),
    .ce1(k_buf_0_val_4_ce1),
    .we1(k_buf_0_val_4_we1),
    .d1(k_buf_0_val_4_d1)
);

FAST_t_opr_k_buf_eOg #(
    .DataWidth( 8 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
k_buf_0_val_5_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(k_buf_0_val_5_address0),
    .ce0(k_buf_0_val_5_ce0),
    .q0(k_buf_0_val_5_q0),
    .address1(k_buf_0_val_5_address1),
    .ce1(k_buf_0_val_5_ce1),
    .we1(k_buf_0_val_5_we1),
    .d1(k_buf_0_val_5_d1)
);

hls_fast_corner_mpcA #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
hls_fast_corner_mpcA_U48(
    .din0(right_border_buf_0_s_fu_156),
    .din1(8'd0),
    .din2(8'd0),
    .din3(tmp_56_reg_1128),
    .dout(tmp_30_fu_664_p5)
);

hls_fast_corner_mpcA #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
hls_fast_corner_mpcA_U49(
    .din0(right_border_buf_0_2_fu_164),
    .din1(8'd0),
    .din2(8'd0),
    .din3(tmp_56_reg_1128),
    .dout(tmp_31_fu_682_p5)
);

hls_fast_corner_mpcA #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
hls_fast_corner_mpcA_U50(
    .din0(right_border_buf_0_1_fu_160),
    .din1(8'd0),
    .din2(8'd0),
    .din3(tmp_56_reg_1128),
    .dout(tmp_32_fu_700_p5)
);

hls_fast_corner_mpcA #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
hls_fast_corner_mpcA_U51(
    .din0(col_buf_0_val_0_0_fu_675_p3),
    .din1(col_buf_0_val_1_0_fu_693_p3),
    .din2(col_buf_0_val_2_0_fu_711_p3),
    .din3(tmp_50_reg_1087),
    .dout(tmp_33_fu_733_p5)
);

hls_fast_corner_mpcA #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
hls_fast_corner_mpcA_U52(
    .din0(col_buf_0_val_0_0_fu_675_p3),
    .din1(col_buf_0_val_1_0_fu_693_p3),
    .din2(col_buf_0_val_2_0_fu_711_p3),
    .din3(tmp_51_reg_1092),
    .dout(tmp_34_fu_751_p5)
);

hls_fast_corner_mpcA #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
hls_fast_corner_mpcA_U53(
    .din0(col_buf_0_val_0_0_fu_675_p3),
    .din1(col_buf_0_val_1_0_fu_693_p3),
    .din2(col_buf_0_val_2_0_fu_711_p3),
    .din3(tmp_52_reg_1097),
    .dout(tmp_35_fu_769_p5)
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
        end else if (((exitcond461_i_i_fu_304_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
        end else if (((exitcond461_i_i_fu_304_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
        end else if (((exitcond461_i_i_fu_304_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond460_i_i_fu_548_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        t_V_5_reg_269 <= j_V_fu_553_p2;
    end else if (((exitcond461_i_i_fu_304_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_5_reg_269 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        t_V_reg_258 <= i_V_reg_1053;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_258 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond460_i_i_fu_548_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        brmerge_reg_1115 <= brmerge_fu_634_p2;
        k_buf_0_val_3_addr_reg_1122 <= tmp_29_fu_639_p1;
        k_buf_0_val_4_addr_reg_1135 <= tmp_29_fu_639_p1;
        k_buf_0_val_5_addr_reg_1141 <= tmp_29_fu_639_p1;
        or_cond_i_i_i_reg_1111 <= or_cond_i_i_i_fu_600_p2;
        or_cond_i_i_reg_1147 <= or_cond_i_i_fu_650_p2;
        tmp_56_reg_1128 <= tmp_56_fu_646_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        exitcond460_i_i_reg_1102 <= exitcond460_i_i_fu_548_p2;
        exitcond460_i_i_reg_1102_pp0_iter1_reg <= exitcond460_i_i_reg_1102;
        or_cond_i_i_reg_1147_pp0_iter1_reg <= or_cond_i_i_reg_1147;
        src_kernel_win_0_va_6_reg_1151 <= src_kernel_win_0_va_6_fu_744_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_V_reg_1053 <= i_V_fu_309_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond461_i_i_fu_304_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_reg_1067 <= icmp_fu_336_p2;
        tmp_137_not_reg_1062 <= tmp_137_not_fu_320_p2;
        tmp_167_2_reg_1076 <= tmp_167_2_fu_348_p2;
        tmp_21_reg_1058 <= tmp_21_fu_315_p2;
        tmp_23_reg_1072 <= tmp_23_fu_342_p2;
        tmp_24_reg_1080 <= tmp_24_fu_354_p2;
        tmp_50_reg_1087 <= tmp_50_fu_510_p1;
        tmp_51_reg_1092 <= tmp_51_fu_527_p1;
        tmp_52_reg_1097 <= tmp_52_fu_544_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_21_reg_1058 == 1'd1) & (icmp_reg_1067 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        right_border_buf_0_1_fu_160 <= col_buf_0_val_2_0_fu_711_p3;
        right_border_buf_0_2_fu_164 <= col_buf_0_val_1_0_fu_693_p3;
        right_border_buf_0_s_fu_156 <= col_buf_0_val_0_0_fu_675_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond460_i_i_reg_1102_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src_kernel_win_0_va_1_fu_136 <= src_kernel_win_0_va_fu_132;
        src_kernel_win_0_va_fu_132 <= src_kernel_win_0_va_6_reg_1151;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond460_i_i_reg_1102 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src_kernel_win_0_va_2_fu_140 <= src_kernel_win_0_va_7_fu_762_p3;
        src_kernel_win_0_va_3_fu_144 <= src_kernel_win_0_va_2_fu_140;
        src_kernel_win_0_va_4_fu_148 <= src_kernel_win_0_va_8_fu_780_p3;
        src_kernel_win_0_va_5_fu_152 <= src_kernel_win_0_va_4_fu_148;
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_i_i_reg_1147 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp_0_i_i_i_0210_i_4_reg_1158 <= temp_0_i_i_i_0210_i_4_fu_861_p3;
    end
end

always @ (*) begin
    if ((exitcond460_i_i_fu_548_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond461_i_i_fu_304_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if (((exitcond461_i_i_fu_304_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        k_buf_0_val_3_ce0 = 1'b1;
    end else begin
        k_buf_0_val_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_21_reg_1058 == 1'd1) & (icmp_reg_1067 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_reg_1067 == 1'd0) & (tmp_167_2_reg_1076 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_3_ce1 = 1'b1;
    end else begin
        k_buf_0_val_3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_21_reg_1058 == 1'd1) & (icmp_reg_1067 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_reg_1067 == 1'd0) & (tmp_167_2_reg_1076 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_3_we1 = 1'b1;
    end else begin
        k_buf_0_val_3_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        k_buf_0_val_4_ce0 = 1'b1;
    end else begin
        k_buf_0_val_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_21_reg_1058 == 1'd1) & (icmp_reg_1067 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_reg_1067 == 1'd0) & (tmp_23_reg_1072 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_4_ce1 = 1'b1;
    end else begin
        k_buf_0_val_4_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_734)) begin
        if (((tmp_21_reg_1058 == 1'd1) & (icmp_reg_1067 == 1'd1))) begin
            k_buf_0_val_4_d1 = k_buf_0_val_3_q0;
        end else if (((icmp_reg_1067 == 1'd0) & (tmp_23_reg_1072 == 1'd1))) begin
            k_buf_0_val_4_d1 = p_src_data_stream_V_dout;
        end else begin
            k_buf_0_val_4_d1 = 'bx;
        end
    end else begin
        k_buf_0_val_4_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((tmp_21_reg_1058 == 1'd1) & (icmp_reg_1067 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_reg_1067 == 1'd0) & (tmp_23_reg_1072 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_4_we1 = 1'b1;
    end else begin
        k_buf_0_val_4_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        k_buf_0_val_5_ce0 = 1'b1;
    end else begin
        k_buf_0_val_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_21_reg_1058 == 1'd1) & (icmp_reg_1067 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_reg_1067 == 1'd0) & (tmp_23_reg_1072 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_5_ce1 = 1'b1;
    end else begin
        k_buf_0_val_5_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_734)) begin
        if (((tmp_21_reg_1058 == 1'd1) & (icmp_reg_1067 == 1'd1))) begin
            k_buf_0_val_5_d1 = k_buf_0_val_4_q0;
        end else if (((icmp_reg_1067 == 1'd0) & (tmp_23_reg_1072 == 1'd1))) begin
            k_buf_0_val_5_d1 = p_src_data_stream_V_dout;
        end else begin
            k_buf_0_val_5_d1 = 'bx;
        end
    end else begin
        k_buf_0_val_5_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((tmp_21_reg_1058 == 1'd1) & (icmp_reg_1067 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_reg_1067 == 1'd0) & (tmp_23_reg_1072 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_5_we1 = 1'b1;
    end else begin
        k_buf_0_val_5_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((or_cond_i_i_reg_1147_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_dst_data_stream_V_blk_n = p_dst_data_stream_V_full_n;
    end else begin
        p_dst_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((or_cond_i_i_reg_1147_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_dst_data_stream_V_write = 1'b1;
    end else begin
        p_dst_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_21_reg_1058 == 1'd1) & (icmp_reg_1067 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_reg_1067 == 1'd0) & (or_cond_i_i_i_reg_1111 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        p_src_data_stream_V_blk_n = p_src_data_stream_V_empty_n;
    end else begin
        p_src_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op133_read_state4 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op125_read_state4 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        p_src_data_stream_V_read = 1'b1;
    end else begin
        p_src_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond461_i_i_fu_304_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((exitcond460_i_i_fu_548_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((exitcond460_i_i_fu_548_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
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

assign ImagLoc_x_fu_575_p2 = ($signed(32'd4294967295) + $signed(t_V_5_reg_269));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_pp0 = ((ap_ST_fsm_pp0_stage0 == ap_CS_fsm) & (1'b1 == ap_block_pp0_stage0_subdone));
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((or_cond_i_i_reg_1147_pp0_iter1_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op133_read_state4 == 1'b1)) | ((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op125_read_state4 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((or_cond_i_i_reg_1147_pp0_iter1_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op133_read_state4 == 1'b1)) | ((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op125_read_state4 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((or_cond_i_i_reg_1147_pp0_iter1_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op133_read_state4 == 1'b1)) | ((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op125_read_state4 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = (((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op133_read_state4 == 1'b1)) | ((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op125_read_state4 == 1'b1)));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter2 = ((or_cond_i_i_reg_1147_pp0_iter1_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_734 = ((or_cond_i_i_i_reg_1111 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_operation_102 = (exitcond460_i_i_fu_548_p2 == 1'd0);
end

always @ (*) begin
    ap_enable_operation_104 = (exitcond460_i_i_fu_548_p2 == 1'd0);
end

assign ap_enable_operation_116 = (1'b1 == 1'b1);

assign ap_enable_operation_119 = (1'b1 == 1'b1);

assign ap_enable_operation_122 = (1'b1 == 1'b1);

always @ (*) begin
    ap_enable_operation_126 = (ap_predicate_op126_store_state4 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_127 = (ap_predicate_op127_store_state4 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_129 = (ap_predicate_op129_store_state4 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_131 = (ap_predicate_op131_store_state4 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_132 = (ap_predicate_op132_store_state4 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_134 = (ap_predicate_op134_store_state4 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_99 = (exitcond460_i_i_fu_548_p2 == 1'd0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_enable_state3_pp0_iter0_stage0 = ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_enable_state4_pp0_iter1_stage0 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_predicate_op125_read_state4 = ((icmp_reg_1067 == 1'd0) & (or_cond_i_i_i_reg_1111 == 1'd1));
end

always @ (*) begin
    ap_predicate_op126_store_state4 = ((icmp_reg_1067 == 1'd0) & (tmp_23_reg_1072 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1));
end

always @ (*) begin
    ap_predicate_op127_store_state4 = ((icmp_reg_1067 == 1'd0) & (tmp_23_reg_1072 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1));
end

always @ (*) begin
    ap_predicate_op129_store_state4 = ((icmp_reg_1067 == 1'd0) & (tmp_167_2_reg_1076 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1));
end

always @ (*) begin
    ap_predicate_op131_store_state4 = ((tmp_21_reg_1058 == 1'd1) & (icmp_reg_1067 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1));
end

always @ (*) begin
    ap_predicate_op132_store_state4 = ((tmp_21_reg_1058 == 1'd1) & (icmp_reg_1067 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1));
end

always @ (*) begin
    ap_predicate_op133_read_state4 = ((tmp_21_reg_1058 == 1'd1) & (icmp_reg_1067 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1));
end

always @ (*) begin
    ap_predicate_op134_store_state4 = ((tmp_21_reg_1058 == 1'd1) & (icmp_reg_1067 == 1'd1) & (or_cond_i_i_i_reg_1111 == 1'd1));
end

assign brmerge_fu_634_p2 = (tmp_28_fu_595_p2 | tmp_137_not_reg_1062);

assign col_assign_1_fu_629_p2 = (tmp_19_fu_292_p2 - x_fu_621_p3);

assign col_buf_0_val_0_0_fu_675_p3 = ((brmerge_reg_1115[0:0] === 1'b1) ? k_buf_0_val_3_q0 : tmp_30_fu_664_p5);

assign col_buf_0_val_1_0_fu_693_p3 = ((brmerge_reg_1115[0:0] === 1'b1) ? k_buf_0_val_4_q0 : tmp_31_fu_682_p5);

assign col_buf_0_val_2_0_fu_711_p3 = ((brmerge_reg_1115[0:0] === 1'b1) ? k_buf_0_val_5_q0 : tmp_32_fu_700_p5);

assign exitcond460_i_i_fu_548_p2 = ((t_V_5_reg_269 == tmp_s_fu_280_p2) ? 1'b1 : 1'b0);

assign exitcond461_i_i_fu_304_p2 = ((t_V_reg_258 == tmp_18_fu_286_p2) ? 1'b1 : 1'b0);

assign i_V_fu_309_p2 = (t_V_reg_258 + 32'd1);

assign icmp2_fu_569_p2 = ((tmp_53_fu_559_p4 != 31'd0) ? 1'b1 : 1'b0);

assign icmp_fu_336_p2 = ((tmp_fu_326_p4 != 31'd0) ? 1'b1 : 1'b0);

assign j_V_fu_553_p2 = (t_V_5_reg_269 + 32'd1);

assign k_buf_0_val_3_address0 = tmp_29_fu_639_p1;

assign k_buf_0_val_3_address1 = k_buf_0_val_3_addr_reg_1122;

assign k_buf_0_val_4_address0 = tmp_29_fu_639_p1;

assign k_buf_0_val_4_address1 = k_buf_0_val_4_addr_reg_1135;

assign k_buf_0_val_5_address0 = tmp_29_fu_639_p1;

assign k_buf_0_val_5_address1 = k_buf_0_val_5_addr_reg_1141;

assign or_cond_i495_i_i_1_fu_430_p2 = (tmp_194_1_fu_425_p2 & rev1_fu_419_p2);

assign or_cond_i495_i_i_2_fu_476_p2 = (tmp_194_2_fu_471_p2 & rev2_fu_465_p2);

assign or_cond_i495_i_i_fu_384_p2 = (tmp_26_fu_379_p2 & rev_fu_373_p2);

assign or_cond_i_i_fu_650_p2 = (icmp_reg_1067 & icmp2_fu_569_p2);

assign or_cond_i_i_i_fu_600_p2 = (tmp_28_fu_595_p2 & rev3_fu_589_p2);

assign p_assign_1_fu_614_p3 = ((tmp_55_fu_606_p3[0:0] === 1'b1) ? 32'd0 : tmp_19_fu_292_p2);

assign p_assign_4_1_fu_405_p2 = ($signed(32'd4294967294) + $signed(t_V_reg_258));

assign p_assign_4_2_fu_451_p2 = ($signed(32'd4294967293) + $signed(t_V_reg_258));

assign p_assign_5_1_fu_444_p3 = ((tmp_47_fu_436_p3[0:0] === 1'b1) ? 32'd0 : p_neg465_i_i_fu_298_p2);

assign p_assign_5_2_fu_490_p3 = ((tmp_49_fu_482_p3[0:0] === 1'b1) ? 32'd0 : p_neg465_i_i_fu_298_p2);

assign p_assign_5_fu_398_p3 = ((tmp_45_fu_390_p3[0:0] === 1'b1) ? 32'd0 : p_neg465_i_i_fu_298_p2);

assign p_dst_data_stream_V_din = ((tmp_213_2_2_fu_927_p2[0:0] === 1'b1) ? src_kernel_win_0_va_6_reg_1151 : temp_0_i_i_i_0210_i_6_fu_919_p3);

assign p_neg465_i_i_fu_298_p2 = ($signed(p_src_rows_V) + $signed(32'd4294967295));

assign rev1_fu_419_p2 = (tmp_46_fu_411_p3 ^ 1'd1);

assign rev2_fu_465_p2 = (tmp_48_fu_457_p3 ^ 1'd1);

assign rev3_fu_589_p2 = (tmp_54_fu_581_p3 ^ 1'd1);

assign rev_fu_373_p2 = (tmp_44_fu_365_p3 ^ 1'd1);

assign row_assign_7_1_fu_522_p2 = (p_neg465_i_i_fu_298_p2 - y_1_fu_514_p3);

assign row_assign_7_2_fu_539_p2 = (p_neg465_i_i_fu_298_p2 - y_2_fu_531_p3);

assign row_assign_7_fu_505_p2 = (p_neg465_i_i_fu_298_p2 - y_fu_497_p3);

assign src_kernel_win_0_va_6_fu_744_p3 = ((tmp_24_reg_1080[0:0] === 1'b1) ? tmp_33_fu_733_p5 : col_buf_0_val_0_0_fu_675_p3);

assign src_kernel_win_0_va_7_fu_762_p3 = ((tmp_24_reg_1080[0:0] === 1'b1) ? tmp_34_fu_751_p5 : col_buf_0_val_1_0_fu_693_p3);

assign src_kernel_win_0_va_8_fu_780_p3 = ((tmp_24_reg_1080[0:0] === 1'b1) ? tmp_35_fu_769_p5 : col_buf_0_val_2_0_fu_711_p3);

assign temp_0_i_i_i_0210_i_1_fu_819_p3 = ((tmp_213_0_2_fu_813_p2[0:0] === 1'b1) ? src_kernel_win_0_va_8_fu_780_p3 : temp_0_i_i_i_0210_i_fu_805_p3);

assign temp_0_i_i_i_0210_i_2_fu_833_p3 = ((tmp_213_1_fu_827_p2[0:0] === 1'b1) ? src_kernel_win_0_va_3_fu_144 : temp_0_i_i_i_0210_i_1_fu_819_p3);

assign temp_0_i_i_i_0210_i_3_fu_847_p3 = ((tmp_213_1_1_fu_841_p2[0:0] === 1'b1) ? src_kernel_win_0_va_2_fu_140 : temp_0_i_i_i_0210_i_2_fu_833_p3);

assign temp_0_i_i_i_0210_i_4_fu_861_p3 = ((tmp_213_1_2_fu_855_p2[0:0] === 1'b1) ? src_kernel_win_0_va_7_fu_762_p3 : temp_0_i_i_i_0210_i_3_fu_847_p3);

assign temp_0_i_i_i_0210_i_5_fu_906_p3 = ((tmp_213_2_fu_901_p2[0:0] === 1'b1) ? src_kernel_win_0_va_1_fu_136 : temp_0_i_i_i_0210_i_4_reg_1158);

assign temp_0_i_i_i_0210_i_6_fu_919_p3 = ((tmp_213_2_1_fu_913_p2[0:0] === 1'b1) ? src_kernel_win_0_va_fu_132 : temp_0_i_i_i_0210_i_5_fu_906_p3);

assign temp_0_i_i_i_0210_i_fu_805_p3 = ((tmp_213_0_1_fu_799_p2[0:0] === 1'b1) ? src_kernel_win_0_va_4_fu_148 : src_kernel_win_0_va_5_fu_152);

assign tmp_137_not_fu_320_p2 = (tmp_21_fu_315_p2 ^ 1'd1);

assign tmp_167_2_fu_348_p2 = ((t_V_reg_258 == 32'd1) ? 1'b1 : 1'b0);

assign tmp_18_fu_286_p2 = (p_src_rows_V + 32'd2);

assign tmp_194_1_fu_425_p2 = (($signed(p_assign_4_1_fu_405_p2) < $signed(p_src_rows_V)) ? 1'b1 : 1'b0);

assign tmp_194_2_fu_471_p2 = (($signed(p_assign_4_2_fu_451_p2) < $signed(p_src_rows_V)) ? 1'b1 : 1'b0);

assign tmp_19_fu_292_p2 = ($signed(p_src_cols_V) + $signed(32'd4294967295));

assign tmp_213_0_1_fu_799_p2 = ((src_kernel_win_0_va_4_fu_148 > src_kernel_win_0_va_5_fu_152) ? 1'b1 : 1'b0);

assign tmp_213_0_2_fu_813_p2 = ((src_kernel_win_0_va_8_fu_780_p3 > temp_0_i_i_i_0210_i_fu_805_p3) ? 1'b1 : 1'b0);

assign tmp_213_1_1_fu_841_p2 = ((src_kernel_win_0_va_2_fu_140 > temp_0_i_i_i_0210_i_2_fu_833_p3) ? 1'b1 : 1'b0);

assign tmp_213_1_2_fu_855_p2 = ((src_kernel_win_0_va_7_fu_762_p3 > temp_0_i_i_i_0210_i_3_fu_847_p3) ? 1'b1 : 1'b0);

assign tmp_213_1_fu_827_p2 = ((src_kernel_win_0_va_3_fu_144 > temp_0_i_i_i_0210_i_1_fu_819_p3) ? 1'b1 : 1'b0);

assign tmp_213_2_1_fu_913_p2 = ((src_kernel_win_0_va_fu_132 > temp_0_i_i_i_0210_i_5_fu_906_p3) ? 1'b1 : 1'b0);

assign tmp_213_2_2_fu_927_p2 = ((src_kernel_win_0_va_6_reg_1151 > temp_0_i_i_i_0210_i_6_fu_919_p3) ? 1'b1 : 1'b0);

assign tmp_213_2_fu_901_p2 = ((src_kernel_win_0_va_1_fu_136 > temp_0_i_i_i_0210_i_4_reg_1158) ? 1'b1 : 1'b0);

assign tmp_21_fu_315_p2 = ((t_V_reg_258 < p_src_rows_V) ? 1'b1 : 1'b0);

assign tmp_23_fu_342_p2 = ((t_V_reg_258 == 32'd0) ? 1'b1 : 1'b0);

assign tmp_24_fu_354_p2 = ((t_V_reg_258 > p_src_rows_V) ? 1'b1 : 1'b0);

assign tmp_25_fu_359_p2 = ($signed(32'd4294967295) + $signed(t_V_reg_258));

assign tmp_26_fu_379_p2 = (($signed(tmp_25_fu_359_p2) < $signed(p_src_rows_V)) ? 1'b1 : 1'b0);

assign tmp_28_fu_595_p2 = (($signed(ImagLoc_x_fu_575_p2) < $signed(p_src_cols_V)) ? 1'b1 : 1'b0);

assign tmp_29_fu_639_p1 = x_fu_621_p3;

assign tmp_44_fu_365_p3 = tmp_25_fu_359_p2[32'd31];

assign tmp_45_fu_390_p3 = tmp_25_fu_359_p2[32'd31];

assign tmp_46_fu_411_p3 = p_assign_4_1_fu_405_p2[32'd31];

assign tmp_47_fu_436_p3 = p_assign_4_1_fu_405_p2[32'd31];

assign tmp_48_fu_457_p3 = p_assign_4_2_fu_451_p2[32'd31];

assign tmp_49_fu_482_p3 = p_assign_4_2_fu_451_p2[32'd31];

assign tmp_50_fu_510_p1 = row_assign_7_fu_505_p2[1:0];

assign tmp_51_fu_527_p1 = row_assign_7_1_fu_522_p2[1:0];

assign tmp_52_fu_544_p1 = row_assign_7_2_fu_539_p2[1:0];

assign tmp_53_fu_559_p4 = {{t_V_5_reg_269[31:1]}};

assign tmp_54_fu_581_p3 = ImagLoc_x_fu_575_p2[32'd31];

assign tmp_55_fu_606_p3 = ImagLoc_x_fu_575_p2[32'd31];

assign tmp_56_fu_646_p1 = col_assign_1_fu_629_p2[1:0];

assign tmp_fu_326_p4 = {{t_V_reg_258[31:1]}};

assign tmp_s_fu_280_p2 = (p_src_cols_V + 32'd2);

assign x_fu_621_p3 = ((or_cond_i_i_i_fu_600_p2[0:0] === 1'b1) ? ImagLoc_x_fu_575_p2 : p_assign_1_fu_614_p3);

assign y_1_fu_514_p3 = ((or_cond_i495_i_i_1_fu_430_p2[0:0] === 1'b1) ? p_assign_4_1_fu_405_p2 : p_assign_5_1_fu_444_p3);

assign y_2_fu_531_p3 = ((or_cond_i495_i_i_2_fu_476_p2[0:0] === 1'b1) ? p_assign_4_2_fu_451_p2 : p_assign_5_2_fu_490_p3);

assign y_fu_497_p3 = ((or_cond_i495_i_i_fu_384_p2[0:0] === 1'b1) ? tmp_25_fu_359_p2 : p_assign_5_fu_398_p3);

endmodule //Dilate
