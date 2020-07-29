// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _shift_led_HH_
#define _shift_led_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct shift_led : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > led_o_V;
    sc_out< sc_logic > led_o_V_ap_vld;
    sc_in< sc_lv<8> > led_i_V;
    sc_in< sc_logic > led_i_V_ap_vld;


    // Module declarations
    shift_led(sc_module_name name);
    SC_HAS_PROCESS(shift_led);

    ~shift_led();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > led_i_V_preg;
    sc_signal< sc_lv<8> > led_i_V_in_sig;
    sc_signal< sc_logic > led_i_V_ap_vld_preg;
    sc_signal< sc_logic > led_i_V_ap_vld_in_sig;
    sc_signal< sc_logic > led_i_V_blk_n;
    sc_signal< sc_lv<26> > i_V_fu_83_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<26> > p_Val2_s_reg_61;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<1> > exitcond_fu_77_p2;
    sc_signal< sc_lv<8> > p_s_fu_44;
    sc_signal< sc_lv<8> > tmp_led_V_fu_110_p3;
    sc_signal< sc_lv<1> > tmp_fu_89_p2;
    sc_signal< sc_lv<7> > tmp_2_fu_106_p1;
    sc_signal< sc_lv<1> > tmp_1_fu_98_p3;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<26> ap_const_lv26_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<26> ap_const_lv26_2FAF080;
    static const sc_lv<26> ap_const_lv26_1;
    static const sc_lv<26> ap_const_lv26_2FAF07E;
    static const sc_lv<32> ap_const_lv32_7;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_exitcond_fu_77_p2();
    void thread_i_V_fu_83_p2();
    void thread_led_i_V_ap_vld_in_sig();
    void thread_led_i_V_blk_n();
    void thread_led_i_V_in_sig();
    void thread_led_o_V();
    void thread_led_o_V_ap_vld();
    void thread_tmp_1_fu_98_p3();
    void thread_tmp_2_fu_106_p1();
    void thread_tmp_fu_89_p2();
    void thread_tmp_led_V_fu_110_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
