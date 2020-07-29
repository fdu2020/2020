// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _hls_skin_dection_HH_
#define _hls_skin_dection_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ImgProcess_Top_mabkb.h"
#include "ImgProcess_Top_macud.h"
#include "ImgProcess_Top_madEe.h"
#include "ImgProcess_Top_maeOg.h"
#include "ImgProcess_Top_mafYi.h"

namespace ap_rtl {

struct hls_skin_dection : public sc_module {
    // Port declarations 49
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > src_data_stream_0_V_dout;
    sc_in< sc_logic > src_data_stream_0_V_empty_n;
    sc_out< sc_logic > src_data_stream_0_V_read;
    sc_in< sc_lv<8> > src_data_stream_1_V_dout;
    sc_in< sc_logic > src_data_stream_1_V_empty_n;
    sc_out< sc_logic > src_data_stream_1_V_read;
    sc_in< sc_lv<8> > src_data_stream_2_V_dout;
    sc_in< sc_logic > src_data_stream_2_V_empty_n;
    sc_out< sc_logic > src_data_stream_2_V_read;
    sc_out< sc_lv<8> > dst_data_stream_0_V_din;
    sc_in< sc_logic > dst_data_stream_0_V_full_n;
    sc_out< sc_logic > dst_data_stream_0_V_write;
    sc_out< sc_lv<8> > dst_data_stream_1_V_din;
    sc_in< sc_logic > dst_data_stream_1_V_full_n;
    sc_out< sc_logic > dst_data_stream_1_V_write;
    sc_out< sc_lv<8> > dst_data_stream_2_V_din;
    sc_in< sc_logic > dst_data_stream_2_V_full_n;
    sc_out< sc_logic > dst_data_stream_2_V_write;
    sc_in< sc_lv<32> > rows_dout;
    sc_in< sc_logic > rows_empty_n;
    sc_out< sc_logic > rows_read;
    sc_in< sc_lv<32> > cols_dout;
    sc_in< sc_logic > cols_empty_n;
    sc_out< sc_logic > cols_read;
    sc_in< sc_lv<32> > y_lower_dout;
    sc_in< sc_logic > y_lower_empty_n;
    sc_out< sc_logic > y_lower_read;
    sc_in< sc_lv<32> > y_upper_dout;
    sc_in< sc_logic > y_upper_empty_n;
    sc_out< sc_logic > y_upper_read;
    sc_in< sc_lv<32> > cb_lower_dout;
    sc_in< sc_logic > cb_lower_empty_n;
    sc_out< sc_logic > cb_lower_read;
    sc_in< sc_lv<32> > cb_upper_dout;
    sc_in< sc_logic > cb_upper_empty_n;
    sc_out< sc_logic > cb_upper_read;
    sc_in< sc_lv<32> > cr_lower_dout;
    sc_in< sc_logic > cr_lower_empty_n;
    sc_out< sc_logic > cr_lower_read;
    sc_in< sc_lv<32> > cr_upper_dout;
    sc_in< sc_logic > cr_upper_empty_n;
    sc_out< sc_logic > cr_upper_read;


    // Module declarations
    hls_skin_dection(sc_module_name name);
    SC_HAS_PROCESS(hls_skin_dection);

    ~hls_skin_dection();

    sc_trace_file* mVcdFile;

    ImgProcess_Top_mabkb<1,1,8,6,15,15>* ImgProcess_Top_mabkb_U31;
    ImgProcess_Top_macud<1,1,8,7,15,16>* ImgProcess_Top_macud_U32;
    ImgProcess_Top_madEe<1,1,8,8,16,16>* ImgProcess_Top_madEe_U33;
    ImgProcess_Top_madEe<1,1,8,8,16,16>* ImgProcess_Top_madEe_U34;
    ImgProcess_Top_maeOg<1,1,8,6,15,16>* ImgProcess_Top_maeOg_U35;
    ImgProcess_Top_mafYi<1,1,8,9,15,16>* ImgProcess_Top_mafYi_U36;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > src_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > tmp_1_i_fu_376_p2;
    sc_signal< sc_logic > src_data_stream_1_V_blk_n;
    sc_signal< sc_logic > src_data_stream_2_V_blk_n;
    sc_signal< sc_logic > dst_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > dst_data_stream_1_V_blk_n;
    sc_signal< sc_logic > dst_data_stream_2_V_blk_n;
    sc_signal< sc_logic > rows_blk_n;
    sc_signal< sc_logic > cols_blk_n;
    sc_signal< sc_logic > y_lower_blk_n;
    sc_signal< sc_logic > y_upper_blk_n;
    sc_signal< sc_logic > cb_lower_blk_n;
    sc_signal< sc_logic > cb_upper_blk_n;
    sc_signal< sc_logic > cr_lower_blk_n;
    sc_signal< sc_logic > cr_upper_blk_n;
    sc_signal< sc_lv<32> > rows_read_reg_607;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > cols_read_reg_612;
    sc_signal< sc_lv<32> > y_lower_read_reg_617;
    sc_signal< sc_lv<32> > y_upper_read_reg_622;
    sc_signal< sc_lv<32> > cb_lower_read_reg_627;
    sc_signal< sc_lv<32> > cb_upper_read_reg_632;
    sc_signal< sc_lv<32> > cr_lower_read_reg_637;
    sc_signal< sc_lv<32> > cr_upper_read_reg_642;
    sc_signal< sc_lv<31> > row_fu_366_p2;
    sc_signal< sc_lv<31> > row_reg_650;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<31> > col_fu_381_p2;
    sc_signal< sc_lv<31> > col_reg_658;
    sc_signal< bool > ap_block_state3;
    sc_signal< sc_lv<8> > tmp_3_reg_663;
    sc_signal< sc_lv<8> > tmp_4_reg_670;
    sc_signal< sc_lv<8> > tmp_5_reg_676;
    sc_signal< sc_lv<16> > tmp_6_cast_i_fu_396_p1;
    sc_signal< sc_lv<16> > tmp_6_cast_i_reg_683;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<15> > grp_fu_557_p3;
    sc_signal< sc_lv<15> > tmp3_reg_688;
    sc_signal< sc_lv<8> > tmp_17_i_reg_693;
    sc_signal< sc_lv<8> > tmp_24_i_reg_698;
    sc_signal< sc_lv<1> > sel_tmp1_fu_530_p2;
    sc_signal< sc_lv<1> > sel_tmp1_reg_703;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<31> > row_i_reg_335;
    sc_signal< sc_lv<31> > col_i_reg_346;
    sc_signal< sc_lv<1> > tmp_i_fu_361_p2;
    sc_signal< bool > ap_block_state6;
    sc_signal< sc_lv<32> > row_cast_i_fu_357_p1;
    sc_signal< sc_lv<32> > col_cast_i_fu_372_p1;
    sc_signal< sc_lv<8> > tmp_5_i_fu_390_p0;
    sc_signal< sc_lv<15> > tmp_4_cast65_i_fu_387_p1;
    sc_signal< sc_lv<15> > tmp_11_i_fu_402_p3;
    sc_signal< sc_lv<16> > grp_fu_573_p3;
    sc_signal< sc_lv<15> > tmp_18_i_fu_422_p3;
    sc_signal< sc_lv<16> > grp_fu_582_p3;
    sc_signal< sc_lv<16> > grp_fu_599_p3;
    sc_signal< sc_lv<8> > y_fu_445_p4;
    sc_signal< sc_lv<32> > tmp_25_i_fu_464_p1;
    sc_signal< sc_lv<8> > cb_fu_454_p2;
    sc_signal< sc_lv<32> > tmp_30_i_fu_478_p1;
    sc_signal< sc_lv<8> > cr_fu_459_p2;
    sc_signal< sc_lv<32> > tmp_33_i_fu_492_p1;
    sc_signal< sc_lv<1> > tmp_31_i_fu_482_p2;
    sc_signal< sc_lv<1> > tmp_27_i_fu_473_p2;
    sc_signal< sc_lv<1> > tmp9_fu_506_p2;
    sc_signal< sc_lv<1> > tmp_32_i_fu_487_p2;
    sc_signal< sc_lv<1> > tmp_35_i_fu_501_p2;
    sc_signal< sc_lv<1> > tmp_34_i_fu_496_p2;
    sc_signal< sc_lv<1> > tmp1_fu_518_p2;
    sc_signal< sc_lv<1> > tmp_26_i_fu_468_p2;
    sc_signal< sc_lv<1> > tmp2_fu_524_p2;
    sc_signal< sc_lv<1> > tmp8_fu_512_p2;
    sc_signal< sc_lv<8> > grp_fu_557_p0;
    sc_signal< sc_lv<14> > tmp_8_cast64_i_fu_399_p1;
    sc_signal< sc_lv<6> > grp_fu_557_p1;
    sc_signal< sc_lv<15> > grp_fu_557_p2;
    sc_signal< sc_lv<8> > grp_fu_565_p0;
    sc_signal< sc_lv<7> > grp_fu_565_p1;
    sc_signal< sc_lv<15> > grp_fu_565_p2;
    sc_signal< sc_lv<8> > grp_fu_573_p0;
    sc_signal< sc_lv<8> > grp_fu_573_p1;
    sc_signal< sc_lv<16> > grp_fu_565_p3;
    sc_signal< sc_lv<8> > grp_fu_582_p0;
    sc_signal< sc_lv<8> > grp_fu_582_p1;
    sc_signal< sc_lv<16> > grp_fu_590_p3;
    sc_signal< sc_lv<8> > grp_fu_590_p0;
    sc_signal< sc_lv<6> > grp_fu_590_p1;
    sc_signal< sc_lv<15> > grp_fu_590_p2;
    sc_signal< sc_lv<8> > grp_fu_599_p0;
    sc_signal< sc_lv<9> > grp_fu_599_p1;
    sc_signal< sc_lv<15> > grp_fu_599_p2;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    sc_signal< sc_lv<16> > grp_fu_565_p20;
    sc_signal< sc_lv<16> > grp_fu_590_p20;
    sc_signal< sc_lv<16> > grp_fu_599_p20;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<15> ap_const_lv15_4C;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<14> ap_const_lv14_1D;
    static const sc_lv<15> ap_const_lv15_7FD5;
    static const sc_lv<16> ap_const_lv16_FFAB;
    static const sc_lv<16> ap_const_lv16_FF95;
    static const sc_lv<14> ap_const_lv14_3FEB;
    static const sc_lv<16> ap_const_lv16_96;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_state1();
    void thread_ap_block_state3();
    void thread_ap_block_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_cb_fu_454_p2();
    void thread_cb_lower_blk_n();
    void thread_cb_lower_read();
    void thread_cb_upper_blk_n();
    void thread_cb_upper_read();
    void thread_col_cast_i_fu_372_p1();
    void thread_col_fu_381_p2();
    void thread_cols_blk_n();
    void thread_cols_read();
    void thread_cr_fu_459_p2();
    void thread_cr_lower_blk_n();
    void thread_cr_lower_read();
    void thread_cr_upper_blk_n();
    void thread_cr_upper_read();
    void thread_dst_data_stream_0_V_blk_n();
    void thread_dst_data_stream_0_V_din();
    void thread_dst_data_stream_0_V_write();
    void thread_dst_data_stream_1_V_blk_n();
    void thread_dst_data_stream_1_V_din();
    void thread_dst_data_stream_1_V_write();
    void thread_dst_data_stream_2_V_blk_n();
    void thread_dst_data_stream_2_V_din();
    void thread_dst_data_stream_2_V_write();
    void thread_grp_fu_557_p0();
    void thread_grp_fu_557_p1();
    void thread_grp_fu_557_p2();
    void thread_grp_fu_565_p0();
    void thread_grp_fu_565_p1();
    void thread_grp_fu_565_p2();
    void thread_grp_fu_565_p20();
    void thread_grp_fu_573_p0();
    void thread_grp_fu_573_p1();
    void thread_grp_fu_582_p0();
    void thread_grp_fu_582_p1();
    void thread_grp_fu_590_p0();
    void thread_grp_fu_590_p1();
    void thread_grp_fu_590_p2();
    void thread_grp_fu_590_p20();
    void thread_grp_fu_599_p0();
    void thread_grp_fu_599_p1();
    void thread_grp_fu_599_p2();
    void thread_grp_fu_599_p20();
    void thread_row_cast_i_fu_357_p1();
    void thread_row_fu_366_p2();
    void thread_rows_blk_n();
    void thread_rows_read();
    void thread_sel_tmp1_fu_530_p2();
    void thread_src_data_stream_0_V_blk_n();
    void thread_src_data_stream_0_V_read();
    void thread_src_data_stream_1_V_blk_n();
    void thread_src_data_stream_1_V_read();
    void thread_src_data_stream_2_V_blk_n();
    void thread_src_data_stream_2_V_read();
    void thread_tmp1_fu_518_p2();
    void thread_tmp2_fu_524_p2();
    void thread_tmp8_fu_512_p2();
    void thread_tmp9_fu_506_p2();
    void thread_tmp_11_i_fu_402_p3();
    void thread_tmp_18_i_fu_422_p3();
    void thread_tmp_1_i_fu_376_p2();
    void thread_tmp_25_i_fu_464_p1();
    void thread_tmp_26_i_fu_468_p2();
    void thread_tmp_27_i_fu_473_p2();
    void thread_tmp_30_i_fu_478_p1();
    void thread_tmp_31_i_fu_482_p2();
    void thread_tmp_32_i_fu_487_p2();
    void thread_tmp_33_i_fu_492_p1();
    void thread_tmp_34_i_fu_496_p2();
    void thread_tmp_35_i_fu_501_p2();
    void thread_tmp_4_cast65_i_fu_387_p1();
    void thread_tmp_5_i_fu_390_p0();
    void thread_tmp_6_cast_i_fu_396_p1();
    void thread_tmp_8_cast64_i_fu_399_p1();
    void thread_tmp_i_fu_361_p2();
    void thread_y_fu_445_p4();
    void thread_y_lower_blk_n();
    void thread_y_lower_read();
    void thread_y_upper_blk_n();
    void thread_y_upper_read();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif