// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _CvtColor_HH_
#define _CvtColor_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "hls_counter_colorbkb.h"
#include "hls_counter_colorcud.h"
#include "hls_counter_colordEe.h"

namespace ap_rtl {

struct CvtColor : public sc_module {
    // Port declarations 24
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<32> > p_src_rows_V;
    sc_in< sc_lv<32> > p_src_cols_V;
    sc_in< sc_lv<8> > p_src_data_stream_0_V_dout;
    sc_in< sc_logic > p_src_data_stream_0_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_0_V_read;
    sc_in< sc_lv<8> > p_src_data_stream_1_V_dout;
    sc_in< sc_logic > p_src_data_stream_1_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_1_V_read;
    sc_in< sc_lv<8> > p_src_data_stream_2_V_dout;
    sc_in< sc_logic > p_src_data_stream_2_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_2_V_read;
    sc_out< sc_lv<8> > p_dst_data_stream_V_din;
    sc_in< sc_logic > p_dst_data_stream_V_full_n;
    sc_out< sc_logic > p_dst_data_stream_V_write;


    // Module declarations
    CvtColor(sc_module_name name);
    SC_HAS_PROCESS(CvtColor);

    ~CvtColor();

    sc_trace_file* mVcdFile;

    hls_counter_colorbkb<1,1,22,8,29>* hls_counter_colorbkb_U13;
    hls_counter_colorcud<1,1,20,8,29,29>* hls_counter_colorcud_U14;
    hls_counter_colordEe<1,1,23,8,29,30>* hls_counter_colordEe_U15;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > p_src_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > tmp_40_reg_377;
    sc_signal< sc_logic > p_src_data_stream_1_V_blk_n;
    sc_signal< sc_logic > p_src_data_stream_2_V_blk_n;
    sc_signal< sc_logic > p_dst_data_stream_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > tmp_40_reg_377_pp0_iter1_reg;
    sc_signal< sc_lv<31> > j_reg_216;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<1> > tmp_s_fu_231_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<31> > i_5_fu_236_p2;
    sc_signal< sc_lv<31> > i_5_reg_372;
    sc_signal< sc_lv<1> > tmp_40_fu_246_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<31> > j_6_fu_251_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<8> > tmp_83_reg_386;
    sc_signal< sc_lv<29> > grp_fu_339_p3;
    sc_signal< sc_lv<29> > ret_V_reg_391;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_lv<31> > i_reg_205;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<32> > i_cast_fu_227_p1;
    sc_signal< sc_lv<32> > j_cast_fu_242_p1;
    sc_signal< sc_lv<30> > grp_fu_347_p3;
    sc_signal< sc_lv<1> > tmp_78_fu_280_p3;
    sc_signal< sc_lv<8> > tmp_42_i_i_i_cast_fu_287_p1;
    sc_signal< sc_lv<8> > p_Val2_8_fu_271_p4;
    sc_signal< sc_lv<1> > tmp_79_fu_297_p3;
    sc_signal< sc_lv<8> > p_Val2_9_fu_291_p2;
    sc_signal< sc_lv<1> > tmp_80_fu_310_p3;
    sc_signal< sc_lv<1> > rev_fu_304_p2;
    sc_signal< sc_lv<1> > deleted_zeros_fu_318_p2;
    sc_signal< sc_lv<22> > r_V_i_fu_333_p0;
    sc_signal< sc_lv<8> > r_V_i_fu_333_p1;
    sc_signal< sc_lv<20> > grp_fu_339_p0;
    sc_signal< sc_lv<8> > grp_fu_339_p1;
    sc_signal< sc_lv<29> > r_V_i_fu_333_p2;
    sc_signal< sc_lv<23> > grp_fu_347_p0;
    sc_signal< sc_lv<8> > grp_fu_347_p1;
    sc_signal< sc_lv<29> > grp_fu_347_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<28> > grp_fu_339_p10;
    sc_signal< sc_lv<30> > grp_fu_347_p10;
    sc_signal< sc_lv<30> > grp_fu_347_p20;
    sc_signal< sc_lv<29> > r_V_i_fu_333_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state6;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<29> ap_const_lv29_1322D0;
    static const sc_lv<28> ap_const_lv28_74BC6;
    static const sc_lv<30> ap_const_lv30_259168;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_deleted_zeros_fu_318_p2();
    void thread_grp_fu_339_p0();
    void thread_grp_fu_339_p1();
    void thread_grp_fu_339_p10();
    void thread_grp_fu_347_p0();
    void thread_grp_fu_347_p1();
    void thread_grp_fu_347_p10();
    void thread_grp_fu_347_p2();
    void thread_grp_fu_347_p20();
    void thread_i_5_fu_236_p2();
    void thread_i_cast_fu_227_p1();
    void thread_internal_ap_ready();
    void thread_j_6_fu_251_p2();
    void thread_j_cast_fu_242_p1();
    void thread_p_Val2_8_fu_271_p4();
    void thread_p_Val2_9_fu_291_p2();
    void thread_p_dst_data_stream_V_blk_n();
    void thread_p_dst_data_stream_V_din();
    void thread_p_dst_data_stream_V_write();
    void thread_p_src_data_stream_0_V_blk_n();
    void thread_p_src_data_stream_0_V_read();
    void thread_p_src_data_stream_1_V_blk_n();
    void thread_p_src_data_stream_1_V_read();
    void thread_p_src_data_stream_2_V_blk_n();
    void thread_p_src_data_stream_2_V_read();
    void thread_r_V_i_fu_333_p0();
    void thread_r_V_i_fu_333_p1();
    void thread_r_V_i_fu_333_p10();
    void thread_real_start();
    void thread_rev_fu_304_p2();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_40_fu_246_p2();
    void thread_tmp_42_i_i_i_cast_fu_287_p1();
    void thread_tmp_78_fu_280_p3();
    void thread_tmp_79_fu_297_p3();
    void thread_tmp_80_fu_310_p3();
    void thread_tmp_s_fu_231_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
