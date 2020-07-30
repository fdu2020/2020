#include "FAST_t_opr.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void FAST_t_opr::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(ap_const_lv1_1, exitcond3_i_fu_1368_p2.read()))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_lv1_1, exitcond4_i_fu_1418_p2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_i_fu_1368_p2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter10 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter10 = ap_enable_reg_pp0_iter9.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter11 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter11 = ap_enable_reg_pp0_iter10.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_i_fu_1368_p2.read()))) {
            ap_enable_reg_pp0_iter11 = ap_const_logic_0;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            if (esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter1_state4.read())) {
                ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter0.read();
            } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
                ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter3 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter3 = ap_enable_reg_pp0_iter2.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter4 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter4 = ap_enable_reg_pp0_iter3.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter5 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter5 = ap_enable_reg_pp0_iter4.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter6 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter6 = ap_enable_reg_pp0_iter5.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter7 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter7 = ap_enable_reg_pp0_iter6.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter8 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter8 = ap_enable_reg_pp0_iter7.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter9 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter9 = ap_enable_reg_pp0_iter8.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter10.read()))) {
        if (esl_seteq<1,1,1>(ap_condition_2580.read(), ap_const_boolean_1)) {
            ap_phi_reg_pp0_iter11_core_1_i_reg_592 = phitmp_i_fu_4079_p2.read();
        } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
            ap_phi_reg_pp0_iter11_core_1_i_reg_592 = ap_phi_reg_pp0_iter10_core_1_i_reg_592.read();
        }
    }
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_fu_1418_p2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, or_cond1_i_reg_4559.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_10_i_fu_1461_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_fu_1418_p2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, or_cond1_i_reg_4559.read())))) {
        ap_phi_reg_pp0_iter1_core_1_i_reg_592 = ap_const_lv16_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        ap_phi_reg_pp0_iter1_core_1_i_reg_592 = ap_phi_reg_pp0_iter0_core_1_i_reg_592.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()))) {
        if (esl_seteq<1,1,1>(ap_condition_2583.read(), ap_const_boolean_1)) {
            ap_phi_reg_pp0_iter5_core_1_i_reg_592 = ap_const_lv16_0;
        } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
            ap_phi_reg_pp0_iter5_core_1_i_reg_592 = ap_phi_reg_pp0_iter4_core_1_i_reg_592.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        start_once_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, real_start.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_0, internal_ap_ready.read()))) {
            start_once_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, internal_ap_ready.read())) {
            start_once_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_fu_1418_p2.read()))) {
        t_V_3_reg_581 = j_V_fu_1423_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_i_fu_1368_p2.read()))) {
        t_V_3_reg_581 = ap_const_lv32_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state15.read())) {
        t_V_reg_570 = i_V_reg_4549.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        t_V_reg_570 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_1, or_cond1_i_reg_4559.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_reg_4573_pp0_iter7_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_10_i_reg_4635_pp0_iter7_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, iscorner_2_i_16_i_reg_5009_pp0_iter7_reg.read()))) {
        a0_1_4_i_reg_5157 = a0_1_4_i_max_int_s_fu_1201_ap_return.read();
        b0_1_4_i_reg_5167 = b0_1_4_i_min_int_s_fu_867_ap_return.read();
        tmp_86_4_i_reg_5162 = tmp_86_4_i_min_int_s_fu_834_ap_return.read();
        tmp_94_4_i_reg_5172 = tmp_94_4_i_max_int_s_fu_1230_ap_return.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_1, or_cond1_i_reg_4559.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_reg_4573_pp0_iter6_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_10_i_reg_4635_pp0_iter6_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, iscorner_2_i_16_i_reg_5009_pp0_iter6_reg.read()))) {
        a0_2_1_i_reg_5127 = a0_2_1_i_max_int_s_fu_1124_ap_return.read();
        b0_2_1_i_reg_5142 = b0_2_1_i_min_int_s_fu_809_ap_return.read();
        tmp_75_2_i_reg_5107 = tmp_75_2_i_min_int_s_fu_741_ap_return.read();
        tmp_75_4_i_reg_5117 = tmp_75_4_i_min_int_s_fu_747_ap_return.read();
        tmp_75_i_reg_5097 = tmp_75_i_min_int_s_fu_735_ap_return.read();
        tmp_77_2_i_reg_5112 = tmp_77_2_i_max_int_s_fu_1089_ap_return.read();
        tmp_77_4_i_reg_5122 = tmp_77_4_i_max_int_s_fu_1095_ap_return.read();
        tmp_77_i_reg_5102 = tmp_77_i_max_int_s_fu_1083_ap_return.read();
        tmp_83_2_i_reg_5132 = tmp_83_2_i_min_int_s_fu_777_ap_return.read();
        tmp_86_2_i_reg_5137 = tmp_86_2_i_min_int_s_fu_783_ap_return.read();
        tmp_91_2_i_reg_5147 = tmp_91_2_i_max_int_s_fu_1160_ap_return.read();
        tmp_94_2_i_reg_5152 = tmp_94_2_i_max_int_s_fu_1166_ap_return.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_1, or_cond1_i_reg_4559.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_reg_4573_pp0_iter8_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_10_i_reg_4635_pp0_iter8_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, iscorner_2_i_16_i_reg_5009_pp0_iter8_reg.read()))) {
        a0_2_6_i_reg_5177 = a0_2_6_i_max_int_s_fu_1266_ap_return.read();
        b0_2_6_i_reg_5192 = b0_2_6_i_min_int_s_fu_937_ap_return.read();
        tmp_83_7_i_reg_5182 = tmp_83_7_i_min_int_s_fu_898_ap_return.read();
        tmp_86_7_i_reg_5187 = tmp_86_7_i_min_int_s_fu_904_ap_return.read();
        tmp_91_7_i_reg_5197 = tmp_91_7_i_max_int_s_fu_1302_ap_return.read();
        tmp_94_7_i_reg_5202 = tmp_94_7_i_max_int_s_fu_1308_ap_return.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter9.read()))) {
        ap_phi_reg_pp0_iter10_core_1_i_reg_592 = ap_phi_reg_pp0_iter9_core_1_i_reg_592.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        ap_phi_reg_pp0_iter2_core_1_i_reg_592 = ap_phi_reg_pp0_iter1_core_1_i_reg_592.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()))) {
        ap_phi_reg_pp0_iter3_core_1_i_reg_592 = ap_phi_reg_pp0_iter2_core_1_i_reg_592.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()))) {
        ap_phi_reg_pp0_iter4_core_1_i_reg_592 = ap_phi_reg_pp0_iter3_core_1_i_reg_592.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        ap_phi_reg_pp0_iter6_core_1_i_reg_592 = ap_phi_reg_pp0_iter5_core_1_i_reg_592.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        ap_phi_reg_pp0_iter7_core_1_i_reg_592 = ap_phi_reg_pp0_iter6_core_1_i_reg_592.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter7.read()))) {
        ap_phi_reg_pp0_iter8_core_1_i_reg_592 = ap_phi_reg_pp0_iter7_core_1_i_reg_592.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter8.read()))) {
        ap_phi_reg_pp0_iter9_core_1_i_reg_592 = ap_phi_reg_pp0_iter8_core_1_i_reg_592.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_fu_1418_p2.read()))) {
        core_buf_val_0_V_ad_reg_4623 =  (sc_lv<11>) (tmp_8_i_fu_1449_p1.read());
        core_buf_val_1_V_ad_reg_4629 =  (sc_lv<11>) (tmp_8_i_fu_1449_p1.read());
        or_cond4_i_reg_4644 = or_cond4_i_fu_1489_p2.read();
        or_cond_i_reg_4582 = or_cond_i_fu_1434_p2.read();
        tmp_22_i_reg_4639 = tmp_22_i_fu_1467_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0)) {
        core_buf_val_1_V_ad_reg_4629_pp0_iter10_reg = core_buf_val_1_V_ad_reg_4629_pp0_iter9_reg.read();
        core_buf_val_1_V_ad_reg_4629_pp0_iter2_reg = core_buf_val_1_V_ad_reg_4629_pp0_iter1_reg.read();
        core_buf_val_1_V_ad_reg_4629_pp0_iter3_reg = core_buf_val_1_V_ad_reg_4629_pp0_iter2_reg.read();
        core_buf_val_1_V_ad_reg_4629_pp0_iter4_reg = core_buf_val_1_V_ad_reg_4629_pp0_iter3_reg.read();
        core_buf_val_1_V_ad_reg_4629_pp0_iter5_reg = core_buf_val_1_V_ad_reg_4629_pp0_iter4_reg.read();
        core_buf_val_1_V_ad_reg_4629_pp0_iter6_reg = core_buf_val_1_V_ad_reg_4629_pp0_iter5_reg.read();
        core_buf_val_1_V_ad_reg_4629_pp0_iter7_reg = core_buf_val_1_V_ad_reg_4629_pp0_iter6_reg.read();
        core_buf_val_1_V_ad_reg_4629_pp0_iter8_reg = core_buf_val_1_V_ad_reg_4629_pp0_iter7_reg.read();
        core_buf_val_1_V_ad_reg_4629_pp0_iter9_reg = core_buf_val_1_V_ad_reg_4629_pp0_iter8_reg.read();
        core_win_val_1_V_1_1_reg_4648_pp0_iter10_reg = core_win_val_1_V_1_1_reg_4648_pp0_iter9_reg.read();
        core_win_val_1_V_1_1_reg_4648_pp0_iter2_reg = core_win_val_1_V_1_1_reg_4648.read();
        core_win_val_1_V_1_1_reg_4648_pp0_iter3_reg = core_win_val_1_V_1_1_reg_4648_pp0_iter2_reg.read();
        core_win_val_1_V_1_1_reg_4648_pp0_iter4_reg = core_win_val_1_V_1_1_reg_4648_pp0_iter3_reg.read();
        core_win_val_1_V_1_1_reg_4648_pp0_iter5_reg = core_win_val_1_V_1_1_reg_4648_pp0_iter4_reg.read();
        core_win_val_1_V_1_1_reg_4648_pp0_iter6_reg = core_win_val_1_V_1_1_reg_4648_pp0_iter5_reg.read();
        core_win_val_1_V_1_1_reg_4648_pp0_iter7_reg = core_win_val_1_V_1_1_reg_4648_pp0_iter6_reg.read();
        core_win_val_1_V_1_1_reg_4648_pp0_iter8_reg = core_win_val_1_V_1_1_reg_4648_pp0_iter7_reg.read();
        core_win_val_1_V_1_1_reg_4648_pp0_iter9_reg = core_win_val_1_V_1_1_reg_4648_pp0_iter8_reg.read();
        exitcond4_i_reg_4573_pp0_iter10_reg = exitcond4_i_reg_4573_pp0_iter9_reg.read();
        exitcond4_i_reg_4573_pp0_iter2_reg = exitcond4_i_reg_4573_pp0_iter1_reg.read();
        exitcond4_i_reg_4573_pp0_iter3_reg = exitcond4_i_reg_4573_pp0_iter2_reg.read();
        exitcond4_i_reg_4573_pp0_iter4_reg = exitcond4_i_reg_4573_pp0_iter3_reg.read();
        exitcond4_i_reg_4573_pp0_iter5_reg = exitcond4_i_reg_4573_pp0_iter4_reg.read();
        exitcond4_i_reg_4573_pp0_iter6_reg = exitcond4_i_reg_4573_pp0_iter5_reg.read();
        exitcond4_i_reg_4573_pp0_iter7_reg = exitcond4_i_reg_4573_pp0_iter6_reg.read();
        exitcond4_i_reg_4573_pp0_iter8_reg = exitcond4_i_reg_4573_pp0_iter7_reg.read();
        exitcond4_i_reg_4573_pp0_iter9_reg = exitcond4_i_reg_4573_pp0_iter8_reg.read();
        flag_d_assign_10_i_reg_4961_pp0_iter5_reg = flag_d_assign_10_i_reg_4961.read();
        flag_d_assign_10_i_reg_4961_pp0_iter6_reg = flag_d_assign_10_i_reg_4961_pp0_iter5_reg.read();
        flag_d_assign_10_i_reg_4961_pp0_iter7_reg = flag_d_assign_10_i_reg_4961_pp0_iter6_reg.read();
        flag_d_assign_10_i_reg_4961_pp0_iter8_reg = flag_d_assign_10_i_reg_4961_pp0_iter7_reg.read();
        flag_d_assign_11_i_reg_4973_pp0_iter5_reg = flag_d_assign_11_i_reg_4973.read();
        flag_d_assign_11_i_reg_4973_pp0_iter6_reg = flag_d_assign_11_i_reg_4973_pp0_iter5_reg.read();
        flag_d_assign_12_i_reg_4985_pp0_iter5_reg = flag_d_assign_12_i_reg_4985.read();
        flag_d_assign_12_i_reg_4985_pp0_iter6_reg = flag_d_assign_12_i_reg_4985_pp0_iter5_reg.read();
        flag_d_assign_12_i_reg_4985_pp0_iter7_reg = flag_d_assign_12_i_reg_4985_pp0_iter6_reg.read();
        flag_d_assign_12_i_reg_4985_pp0_iter8_reg = flag_d_assign_12_i_reg_4985_pp0_iter7_reg.read();
        flag_d_assign_13_i_reg_5019_pp0_iter6_reg = flag_d_assign_13_i_reg_5019.read();
        flag_d_assign_14_i_reg_5025_pp0_iter6_reg = flag_d_assign_14_i_reg_5025.read();
        flag_d_assign_14_i_reg_5025_pp0_iter7_reg = flag_d_assign_14_i_reg_5025_pp0_iter6_reg.read();
        flag_d_assign_14_i_reg_5025_pp0_iter8_reg = flag_d_assign_14_i_reg_5025_pp0_iter7_reg.read();
        flag_d_assign_15_i_reg_5031_pp0_iter6_reg = flag_d_assign_15_i_reg_5031.read();
        flag_d_assign_15_i_reg_5031_pp0_iter7_reg = flag_d_assign_15_i_reg_5031_pp0_iter6_reg.read();
        flag_d_assign_16_i_reg_5013_pp0_iter6_reg = flag_d_assign_16_i_reg_5013.read();
        flag_d_assign_1_i_reg_4943_pp0_iter5_reg = flag_d_assign_1_i_reg_4943.read();
        flag_d_assign_1_i_reg_4943_pp0_iter6_reg = flag_d_assign_1_i_reg_4943_pp0_iter5_reg.read();
        flag_d_assign_1_i_reg_4943_pp0_iter7_reg = flag_d_assign_1_i_reg_4943_pp0_iter6_reg.read();
        flag_d_assign_2_i_reg_4955_pp0_iter5_reg = flag_d_assign_2_i_reg_4955.read();
        flag_d_assign_2_i_reg_4955_pp0_iter6_reg = flag_d_assign_2_i_reg_4955_pp0_iter5_reg.read();
        flag_d_assign_3_i_reg_4967_pp0_iter5_reg = flag_d_assign_3_i_reg_4967.read();
        flag_d_assign_3_i_reg_4967_pp0_iter6_reg = flag_d_assign_3_i_reg_4967_pp0_iter5_reg.read();
        flag_d_assign_3_i_reg_4967_pp0_iter7_reg = flag_d_assign_3_i_reg_4967_pp0_iter6_reg.read();
        flag_d_assign_3_i_reg_4967_pp0_iter8_reg = flag_d_assign_3_i_reg_4967_pp0_iter7_reg.read();
        flag_d_assign_4_i_reg_4979_pp0_iter5_reg = flag_d_assign_4_i_reg_4979.read();
        flag_d_assign_4_i_reg_4979_pp0_iter6_reg = flag_d_assign_4_i_reg_4979_pp0_iter5_reg.read();
        flag_d_assign_5_i_reg_4991_pp0_iter5_reg = flag_d_assign_5_i_reg_4991.read();
        flag_d_assign_5_i_reg_4991_pp0_iter6_reg = flag_d_assign_5_i_reg_4991_pp0_iter5_reg.read();
        flag_d_assign_5_i_reg_4991_pp0_iter7_reg = flag_d_assign_5_i_reg_4991_pp0_iter6_reg.read();
        flag_d_assign_5_i_reg_4991_pp0_iter8_reg = flag_d_assign_5_i_reg_4991_pp0_iter7_reg.read();
        flag_d_assign_6_i_reg_4997_pp0_iter5_reg = flag_d_assign_6_i_reg_4997.read();
        flag_d_assign_6_i_reg_4997_pp0_iter6_reg = flag_d_assign_6_i_reg_4997_pp0_iter5_reg.read();
        flag_d_assign_6_i_reg_4997_pp0_iter7_reg = flag_d_assign_6_i_reg_4997_pp0_iter6_reg.read();
        flag_d_assign_7_i_reg_5003_pp0_iter5_reg = flag_d_assign_7_i_reg_5003.read();
        flag_d_assign_7_i_reg_5003_pp0_iter6_reg = flag_d_assign_7_i_reg_5003_pp0_iter5_reg.read();
        flag_d_assign_7_i_reg_5003_pp0_iter7_reg = flag_d_assign_7_i_reg_5003_pp0_iter6_reg.read();
        flag_d_assign_7_i_reg_5003_pp0_iter8_reg = flag_d_assign_7_i_reg_5003_pp0_iter7_reg.read();
        flag_d_assign_8_i_reg_4937_pp0_iter5_reg = flag_d_assign_8_i_reg_4937.read();
        flag_d_assign_8_i_reg_4937_pp0_iter6_reg = flag_d_assign_8_i_reg_4937_pp0_iter5_reg.read();
        flag_d_assign_8_i_reg_4937_pp0_iter7_reg = flag_d_assign_8_i_reg_4937_pp0_iter6_reg.read();
        flag_d_assign_9_i_reg_4949_pp0_iter5_reg = flag_d_assign_9_i_reg_4949.read();
        flag_d_assign_9_i_reg_4949_pp0_iter6_reg = flag_d_assign_9_i_reg_4949_pp0_iter5_reg.read();
        iscorner_2_i_16_i_reg_5009_pp0_iter5_reg = iscorner_2_i_16_i_reg_5009.read();
        iscorner_2_i_16_i_reg_5009_pp0_iter6_reg = iscorner_2_i_16_i_reg_5009_pp0_iter5_reg.read();
        iscorner_2_i_16_i_reg_5009_pp0_iter7_reg = iscorner_2_i_16_i_reg_5009_pp0_iter6_reg.read();
        iscorner_2_i_16_i_reg_5009_pp0_iter8_reg = iscorner_2_i_16_i_reg_5009_pp0_iter7_reg.read();
        iscorner_2_i_16_i_reg_5009_pp0_iter9_reg = iscorner_2_i_16_i_reg_5009_pp0_iter8_reg.read();
        or_cond4_i_reg_4644_pp0_iter10_reg = or_cond4_i_reg_4644_pp0_iter9_reg.read();
        or_cond4_i_reg_4644_pp0_iter2_reg = or_cond4_i_reg_4644_pp0_iter1_reg.read();
        or_cond4_i_reg_4644_pp0_iter3_reg = or_cond4_i_reg_4644_pp0_iter2_reg.read();
        or_cond4_i_reg_4644_pp0_iter4_reg = or_cond4_i_reg_4644_pp0_iter3_reg.read();
        or_cond4_i_reg_4644_pp0_iter5_reg = or_cond4_i_reg_4644_pp0_iter4_reg.read();
        or_cond4_i_reg_4644_pp0_iter6_reg = or_cond4_i_reg_4644_pp0_iter5_reg.read();
        or_cond4_i_reg_4644_pp0_iter7_reg = or_cond4_i_reg_4644_pp0_iter6_reg.read();
        or_cond4_i_reg_4644_pp0_iter8_reg = or_cond4_i_reg_4644_pp0_iter7_reg.read();
        or_cond4_i_reg_4644_pp0_iter9_reg = or_cond4_i_reg_4644_pp0_iter8_reg.read();
        or_cond_i_reg_4582_pp0_iter10_reg = or_cond_i_reg_4582_pp0_iter9_reg.read();
        or_cond_i_reg_4582_pp0_iter2_reg = or_cond_i_reg_4582_pp0_iter1_reg.read();
        or_cond_i_reg_4582_pp0_iter3_reg = or_cond_i_reg_4582_pp0_iter2_reg.read();
        or_cond_i_reg_4582_pp0_iter4_reg = or_cond_i_reg_4582_pp0_iter3_reg.read();
        or_cond_i_reg_4582_pp0_iter5_reg = or_cond_i_reg_4582_pp0_iter4_reg.read();
        or_cond_i_reg_4582_pp0_iter6_reg = or_cond_i_reg_4582_pp0_iter5_reg.read();
        or_cond_i_reg_4582_pp0_iter7_reg = or_cond_i_reg_4582_pp0_iter6_reg.read();
        or_cond_i_reg_4582_pp0_iter8_reg = or_cond_i_reg_4582_pp0_iter7_reg.read();
        or_cond_i_reg_4582_pp0_iter9_reg = or_cond_i_reg_4582_pp0_iter8_reg.read();
        ret_V_1_i_reg_4696_pp0_iter3_reg = ret_V_1_i_reg_4696.read();
        ret_V_2_1_i_reg_4701_pp0_iter3_reg = ret_V_2_1_i_reg_4701.read();
        ret_V_2_2_i_reg_4713_pp0_iter3_reg = ret_V_2_2_i_reg_4713.read();
        ret_V_2_3_i_reg_4725_pp0_iter3_reg = ret_V_2_3_i_reg_4725.read();
        ret_V_2_4_i_reg_4737_pp0_iter3_reg = ret_V_2_4_i_reg_4737.read();
        ret_V_2_5_i_reg_4749_pp0_iter3_reg = ret_V_2_5_i_reg_4749.read();
        ret_V_2_5_i_reg_4749_pp0_iter4_reg = ret_V_2_5_i_reg_4749_pp0_iter3_reg.read();
        ret_V_2_6_i_reg_4761_pp0_iter3_reg = ret_V_2_6_i_reg_4761.read();
        ret_V_2_6_i_reg_4761_pp0_iter4_reg = ret_V_2_6_i_reg_4761_pp0_iter3_reg.read();
        ret_V_2_7_i_reg_4773_pp0_iter3_reg = ret_V_2_7_i_reg_4773.read();
        ret_V_2_7_i_reg_4773_pp0_iter4_reg = ret_V_2_7_i_reg_4773_pp0_iter3_reg.read();
        ret_V_2_i_reg_4680_pp0_iter3_reg = ret_V_2_i_reg_4680.read();
        ret_V_4_i_reg_4732_pp0_iter3_reg = ret_V_4_i_reg_4732.read();
        ret_V_5_i_reg_4744_pp0_iter3_reg = ret_V_5_i_reg_4744.read();
        ret_V_6_i_reg_4756_pp0_iter3_reg = ret_V_6_i_reg_4756.read();
        ret_V_7_i_reg_4768_pp0_iter3_reg = ret_V_7_i_reg_4768.read();
        ret_V_8_i_reg_4720_pp0_iter3_reg = ret_V_8_i_reg_4720.read();
        ret_V_i_59_reg_4708_pp0_iter3_reg = ret_V_i_59_reg_4708.read();
        ret_V_i_reg_4675_pp0_iter3_reg = ret_V_i_reg_4675.read();
        ret_V_i_reg_4675_pp0_iter4_reg = ret_V_i_reg_4675_pp0_iter3_reg.read();
        tmp20_reg_4670_pp0_iter10_reg = tmp20_reg_4670_pp0_iter9_reg.read();
        tmp20_reg_4670_pp0_iter2_reg = tmp20_reg_4670.read();
        tmp20_reg_4670_pp0_iter3_reg = tmp20_reg_4670_pp0_iter2_reg.read();
        tmp20_reg_4670_pp0_iter4_reg = tmp20_reg_4670_pp0_iter3_reg.read();
        tmp20_reg_4670_pp0_iter5_reg = tmp20_reg_4670_pp0_iter4_reg.read();
        tmp20_reg_4670_pp0_iter6_reg = tmp20_reg_4670_pp0_iter5_reg.read();
        tmp20_reg_4670_pp0_iter7_reg = tmp20_reg_4670_pp0_iter6_reg.read();
        tmp20_reg_4670_pp0_iter8_reg = tmp20_reg_4670_pp0_iter7_reg.read();
        tmp20_reg_4670_pp0_iter9_reg = tmp20_reg_4670_pp0_iter8_reg.read();
        tmp_100_2_i_reg_4655_pp0_iter10_reg = tmp_100_2_i_reg_4655_pp0_iter9_reg.read();
        tmp_100_2_i_reg_4655_pp0_iter2_reg = tmp_100_2_i_reg_4655.read();
        tmp_100_2_i_reg_4655_pp0_iter3_reg = tmp_100_2_i_reg_4655_pp0_iter2_reg.read();
        tmp_100_2_i_reg_4655_pp0_iter4_reg = tmp_100_2_i_reg_4655_pp0_iter3_reg.read();
        tmp_100_2_i_reg_4655_pp0_iter5_reg = tmp_100_2_i_reg_4655_pp0_iter4_reg.read();
        tmp_100_2_i_reg_4655_pp0_iter6_reg = tmp_100_2_i_reg_4655_pp0_iter5_reg.read();
        tmp_100_2_i_reg_4655_pp0_iter7_reg = tmp_100_2_i_reg_4655_pp0_iter6_reg.read();
        tmp_100_2_i_reg_4655_pp0_iter8_reg = tmp_100_2_i_reg_4655_pp0_iter7_reg.read();
        tmp_100_2_i_reg_4655_pp0_iter9_reg = tmp_100_2_i_reg_4655_pp0_iter8_reg.read();
        tmp_10_i_reg_4635_pp0_iter2_reg = tmp_10_i_reg_4635_pp0_iter1_reg.read();
        tmp_10_i_reg_4635_pp0_iter3_reg = tmp_10_i_reg_4635_pp0_iter2_reg.read();
        tmp_10_i_reg_4635_pp0_iter4_reg = tmp_10_i_reg_4635_pp0_iter3_reg.read();
        tmp_10_i_reg_4635_pp0_iter5_reg = tmp_10_i_reg_4635_pp0_iter4_reg.read();
        tmp_10_i_reg_4635_pp0_iter6_reg = tmp_10_i_reg_4635_pp0_iter5_reg.read();
        tmp_10_i_reg_4635_pp0_iter7_reg = tmp_10_i_reg_4635_pp0_iter6_reg.read();
        tmp_10_i_reg_4635_pp0_iter8_reg = tmp_10_i_reg_4635_pp0_iter7_reg.read();
        tmp_10_i_reg_4635_pp0_iter9_reg = tmp_10_i_reg_4635_pp0_iter8_reg.read();
        tmp_23_i_reg_4660_pp0_iter10_reg = tmp_23_i_reg_4660_pp0_iter9_reg.read();
        tmp_23_i_reg_4660_pp0_iter2_reg = tmp_23_i_reg_4660.read();
        tmp_23_i_reg_4660_pp0_iter3_reg = tmp_23_i_reg_4660_pp0_iter2_reg.read();
        tmp_23_i_reg_4660_pp0_iter4_reg = tmp_23_i_reg_4660_pp0_iter3_reg.read();
        tmp_23_i_reg_4660_pp0_iter5_reg = tmp_23_i_reg_4660_pp0_iter4_reg.read();
        tmp_23_i_reg_4660_pp0_iter6_reg = tmp_23_i_reg_4660_pp0_iter5_reg.read();
        tmp_23_i_reg_4660_pp0_iter7_reg = tmp_23_i_reg_4660_pp0_iter6_reg.read();
        tmp_23_i_reg_4660_pp0_iter8_reg = tmp_23_i_reg_4660_pp0_iter7_reg.read();
        tmp_23_i_reg_4660_pp0_iter9_reg = tmp_23_i_reg_4660_pp0_iter8_reg.read();
        tmp_24_i_reg_4665_pp0_iter10_reg = tmp_24_i_reg_4665_pp0_iter9_reg.read();
        tmp_24_i_reg_4665_pp0_iter2_reg = tmp_24_i_reg_4665.read();
        tmp_24_i_reg_4665_pp0_iter3_reg = tmp_24_i_reg_4665_pp0_iter2_reg.read();
        tmp_24_i_reg_4665_pp0_iter4_reg = tmp_24_i_reg_4665_pp0_iter3_reg.read();
        tmp_24_i_reg_4665_pp0_iter5_reg = tmp_24_i_reg_4665_pp0_iter4_reg.read();
        tmp_24_i_reg_4665_pp0_iter6_reg = tmp_24_i_reg_4665_pp0_iter5_reg.read();
        tmp_24_i_reg_4665_pp0_iter7_reg = tmp_24_i_reg_4665_pp0_iter6_reg.read();
        tmp_24_i_reg_4665_pp0_iter8_reg = tmp_24_i_reg_4665_pp0_iter7_reg.read();
        tmp_24_i_reg_4665_pp0_iter9_reg = tmp_24_i_reg_4665_pp0_iter8_reg.read();
        tmp_54_1_not_i_reg_4791_pp0_iter3_reg = tmp_54_1_not_i_reg_4791.read();
        tmp_54_2_not_i_reg_4803_pp0_iter3_reg = tmp_54_2_not_i_reg_4803.read();
        tmp_54_3_not_i_reg_4815_pp0_iter3_reg = tmp_54_3_not_i_reg_4815.read();
        tmp_54_4_not_i_reg_4827_pp0_iter3_reg = tmp_54_4_not_i_reg_4827.read();
        tmp_54_5_not_i_reg_4839_pp0_iter3_reg = tmp_54_5_not_i_reg_4839.read();
        tmp_56_1_i_reg_4797_pp0_iter3_reg = tmp_56_1_i_reg_4797.read();
        tmp_56_2_i_reg_4809_pp0_iter3_reg = tmp_56_2_i_reg_4809.read();
        tmp_56_3_i_reg_4821_pp0_iter3_reg = tmp_56_3_i_reg_4821.read();
        tmp_56_4_i_reg_4833_pp0_iter3_reg = tmp_56_4_i_reg_4833.read();
        tmp_56_5_i_reg_4845_pp0_iter3_reg = tmp_56_5_i_reg_4845.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        core_buf_val_1_V_ad_reg_4629_pp0_iter1_reg = core_buf_val_1_V_ad_reg_4629.read();
        exitcond4_i_reg_4573 = exitcond4_i_fu_1418_p2.read();
        exitcond4_i_reg_4573_pp0_iter1_reg = exitcond4_i_reg_4573.read();
        or_cond4_i_reg_4644_pp0_iter1_reg = or_cond4_i_reg_4644.read();
        or_cond_i_reg_4582_pp0_iter1_reg = or_cond_i_reg_4582.read();
        tmp_10_i_reg_4635_pp0_iter1_reg = tmp_10_i_reg_4635.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(exitcond4_i_reg_4573.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        core_win_val_0_V_0_fu_196 = core_win_val_0_V_1_fu_192.read();
        core_win_val_0_V_1_fu_192 = core_buf_val_0_V_q0.read();
        core_win_val_1_V_0_fu_188 = core_win_val_1_V_1_fu_184.read();
        core_win_val_1_V_1_fu_184 = core_buf_val_1_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(exitcond4_i_reg_4573.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        core_win_val_1_V_1_1_reg_4648 = core_win_val_1_V_1_fu_184.read();
        tmp20_reg_4670 = tmp20_fu_1881_p2.read();
        tmp_100_2_i_reg_4655 = tmp_100_2_i_fu_1847_p2.read();
        tmp_23_i_reg_4660 = tmp_23_i_fu_1853_p2.read();
        tmp_24_i_reg_4665 = tmp_24_i_fu_1859_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter11.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_reg_4573_pp0_iter10_reg.read()))) {
        core_win_val_2_V_0_fu_180 = core_win_val_2_V_1_fu_176.read();
        core_win_val_2_V_1_fu_176 = core_win_val_2_V_2_fu_4091_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_1, or_cond1_i_reg_4559.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_reg_4573_pp0_iter2_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_10_i_reg_4635_pp0_iter2_reg.read()))) {
        count_1_i_4_i_reg_4904 = count_1_i_4_i_fu_3235_p3.read();
        not_or_cond11_i_reg_4916 = not_or_cond11_i_fu_3257_p2.read();
        not_or_cond12_i_reg_4899 = not_or_cond12_i_fu_2834_p2.read();
        or_cond10_i_reg_4894 = or_cond10_i_fu_2736_p2.read();
        or_cond20_i_reg_4910 = or_cond20_i_fu_3248_p2.read();
        or_cond5_i_reg_4868 = or_cond5_i_fu_2716_p2.read();
        or_cond6_i_reg_4874 = or_cond6_i_fu_2720_p2.read();
        or_cond7_i_reg_4879 = or_cond7_i_fu_2724_p2.read();
        or_cond8_i_reg_4884 = or_cond8_i_fu_2728_p2.read();
        or_cond9_i_reg_4889 = or_cond9_i_fu_2732_p2.read();
        tmp10_reg_4927 = tmp10_fu_3281_p2.read();
        tmp11_reg_4932 = tmp11_fu_3287_p2.read();
        tmp6_reg_4922 = tmp6_fu_3275_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_1, or_cond1_i_reg_4559.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_reg_4573_pp0_iter3_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_10_i_reg_4635_pp0_iter3_reg.read()))) {
        flag_d_assign_10_i_reg_4961 = flag_d_assign_10_i_fu_3313_p1.read();
        flag_d_assign_11_i_reg_4973 = flag_d_assign_11_i_fu_3323_p1.read();
        flag_d_assign_12_i_reg_4985 = flag_d_assign_12_i_fu_3333_p1.read();
        flag_d_assign_1_i_reg_4943 = flag_d_assign_1_i_fu_3298_p1.read();
        flag_d_assign_2_i_reg_4955 = flag_d_assign_2_i_fu_3308_p1.read();
        flag_d_assign_3_i_reg_4967 = flag_d_assign_3_i_fu_3318_p1.read();
        flag_d_assign_4_i_reg_4979 = flag_d_assign_4_i_fu_3328_p1.read();
        flag_d_assign_5_i_reg_4991 = flag_d_assign_5_i_fu_3338_p1.read();
        flag_d_assign_6_i_reg_4997 = flag_d_assign_6_i_fu_3343_p1.read();
        flag_d_assign_7_i_reg_5003 = flag_d_assign_7_i_fu_3348_p1.read();
        flag_d_assign_8_i_reg_4937 = flag_d_assign_8_i_fu_3293_p1.read();
        flag_d_assign_9_i_reg_4949 = flag_d_assign_9_i_fu_3303_p1.read();
        iscorner_2_i_16_i_reg_5009 = iscorner_2_i_16_i_fu_3676_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_1, or_cond1_i_reg_4559.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_reg_4573_pp0_iter4_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_10_i_reg_4635_pp0_iter4_reg.read()))) {
        flag_d_assign_13_i_reg_5019 = flag_d_assign_13_i_fu_3779_p1.read();
        flag_d_assign_14_i_reg_5025 = flag_d_assign_14_i_fu_3784_p1.read();
        flag_d_assign_15_i_reg_5031 = flag_d_assign_15_i_fu_3789_p1.read();
        flag_d_assign_16_i_reg_5013 = flag_d_assign_16_i_fu_3774_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_1, or_cond1_i_reg_4559.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_reg_4573_pp0_iter4_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_10_i_reg_4635_pp0_iter4_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, iscorner_2_i_16_i_reg_5009.read()))) {
        flag_d_max2_11_reg_5052 = grp_reg_int_s_fu_3767_ap_return.read();
        flag_d_max2_1_reg_5042 = grp_reg_int_s_fu_3689_ap_return.read();
        flag_d_min2_11_reg_5047 = grp_reg_int_s_fu_3760_ap_return.read();
        flag_d_min2_1_reg_5037 = grp_reg_int_s_fu_3682_ap_return.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_1, or_cond1_i_reg_4559.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_reg_4573_pp0_iter5_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_10_i_reg_4635_pp0_iter5_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, iscorner_2_i_16_i_reg_5009_pp0_iter5_reg.read()))) {
        flag_d_max4_1_reg_5062 = grp_reg_int_s_fu_3833_ap_return.read();
        flag_d_max4_3_reg_5072 = grp_reg_int_s_fu_3847_ap_return.read();
        flag_d_max4_7_reg_5082 = grp_reg_int_s_fu_3877_ap_return.read();
        flag_d_max4_9_reg_5092 = grp_reg_int_s_fu_3891_ap_return.read();
        flag_d_min4_1_reg_5057 = grp_reg_int_s_fu_3826_ap_return.read();
        flag_d_min4_3_reg_5067 = grp_reg_int_s_fu_3840_ap_return.read();
        flag_d_min4_7_reg_5077 = grp_reg_int_s_fu_3870_ap_return.read();
        flag_d_min4_9_reg_5087 = grp_reg_int_s_fu_3884_ap_return.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_1, or_cond1_i_reg_4559.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_reg_4573_pp0_iter1_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_10_i_reg_4635_pp0_iter1_reg.read()))) {
        flag_val_V_assign_lo_1_reg_4690 = flag_val_V_assign_lo_1_fu_2044_p3.read();
        flag_val_V_assign_lo_reg_4685 = flag_val_V_assign_lo_fu_2012_p3.read();
        ret_V_1_i_reg_4696 = ret_V_1_i_fu_2056_p2.read();
        ret_V_2_1_i_reg_4701 = ret_V_2_1_i_fu_2066_p2.read();
        ret_V_2_2_i_reg_4713 = ret_V_2_2_i_fu_2118_p2.read();
        ret_V_2_3_i_reg_4725 = ret_V_2_3_i_fu_2170_p2.read();
        ret_V_2_4_i_reg_4737 = ret_V_2_4_i_fu_2222_p2.read();
        ret_V_2_5_i_reg_4749 = ret_V_2_5_i_fu_2274_p2.read();
        ret_V_2_6_i_reg_4761 = ret_V_2_6_i_fu_2326_p2.read();
        ret_V_2_7_i_reg_4773 = ret_V_2_7_i_fu_2378_p2.read();
        ret_V_2_i_reg_4680 = ret_V_2_i_fu_1982_p2.read();
        ret_V_4_i_reg_4732 = ret_V_4_i_fu_2212_p2.read();
        ret_V_5_i_reg_4744 = ret_V_5_i_fu_2264_p2.read();
        ret_V_6_i_reg_4756 = ret_V_6_i_fu_2316_p2.read();
        ret_V_7_i_reg_4768 = ret_V_7_i_fu_2368_p2.read();
        ret_V_8_i_reg_4720 = ret_V_8_i_fu_2160_p2.read();
        ret_V_i_59_reg_4708 = ret_V_i_59_fu_2108_p2.read();
        ret_V_i_reg_4675 = ret_V_i_fu_1972_p2.read();
        tmp_54_0_not_i_reg_4780 = tmp_54_0_not_i_fu_2416_p2.read();
        tmp_54_1_not_i_reg_4791 = tmp_54_1_not_i_fu_2428_p2.read();
        tmp_54_2_not_i_reg_4803 = tmp_54_2_not_i_fu_2440_p2.read();
        tmp_54_3_not_i_reg_4815 = tmp_54_3_not_i_fu_2452_p2.read();
        tmp_54_4_not_i_reg_4827 = tmp_54_4_not_i_fu_2464_p2.read();
        tmp_54_5_not_i_reg_4839 = tmp_54_5_not_i_fu_2476_p2.read();
        tmp_54_6_not_i_reg_4851 = tmp_54_6_not_i_fu_2488_p2.read();
        tmp_54_7_not_i_reg_4863 = tmp_54_7_not_i_fu_2500_p2.read();
        tmp_56_1_i_reg_4797 = tmp_56_1_i_fu_2434_p2.read();
        tmp_56_2_i_reg_4809 = tmp_56_2_i_fu_2446_p2.read();
        tmp_56_3_i_reg_4821 = tmp_56_3_i_fu_2458_p2.read();
        tmp_56_4_i_reg_4833 = tmp_56_4_i_fu_2470_p2.read();
        tmp_56_5_i_reg_4845 = tmp_56_5_i_fu_2482_p2.read();
        tmp_56_6_i_reg_4857 = tmp_56_6_i_fu_2494_p2.read();
        tmp_56_i_reg_4785 = tmp_56_i_fu_2422_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_V_reg_4549 = i_V_fu_1373_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_i_fu_1368_p2.read()))) {
        icmp_reg_4568 = icmp_fu_1412_p2.read();
        or_cond1_i_reg_4559 = or_cond1_i_fu_1390_p2.read();
        tmp_2_i_reg_4554 = tmp_2_i_fu_1379_p2.read();
        tmp_4_i_reg_4563 = tmp_4_i_fu_1396_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_fu_1418_p2.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, or_cond_i_fu_1434_p2.read()))) {
        k_buf_val_0_V_addr_reg_4587 =  (sc_lv<11>) (tmp_7_i_fu_1439_p1.read());
        k_buf_val_1_V_addr_reg_4593 =  (sc_lv<11>) (tmp_7_i_fu_1439_p1.read());
        k_buf_val_2_V_addr_reg_4599 =  (sc_lv<11>) (tmp_7_i_fu_1439_p1.read());
        k_buf_val_3_V_addr_reg_4605 =  (sc_lv<11>) (tmp_7_i_fu_1439_p1.read());
        k_buf_val_4_V_addr_reg_4611 =  (sc_lv<11>) (tmp_7_i_fu_1439_p1.read());
        k_buf_val_5_V_addr_reg_4617 =  (sc_lv<11>) (tmp_7_i_fu_1439_p1.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_i_fu_1418_p2.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, or_cond1_i_reg_4559.read()))) {
        tmp_10_i_reg_4635 = tmp_10_i_fu_1461_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(exitcond4_i_reg_4573.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(or_cond_i_reg_4582.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        win_val_0_V_2_1_fu_204 = win_val_0_V_3_fu_208.read();
        win_val_0_V_2_fu_200 = win_val_0_V_2_1_fu_204.read();
        win_val_0_V_3_fu_208 = win_val_0_V_4_fu_212.read();
        win_val_0_V_4_fu_212 = win_val_0_V_5_fu_216.read();
        win_val_0_V_5_fu_216 = k_buf_val_0_V_q0.read();
        win_val_1_V_1_1_fu_224 = win_val_1_V_2_fu_228.read();
        win_val_1_V_1_fu_220 = win_val_1_V_1_1_fu_224.read();
        win_val_1_V_2_fu_228 = win_val_1_V_3_fu_232.read();
        win_val_1_V_3_fu_232 = win_val_1_V_4_fu_236.read();
        win_val_1_V_4_fu_236 = win_val_1_V_5_fu_240.read();
        win_val_1_V_5_fu_240 = k_buf_val_1_V_q0.read();
        win_val_2_V_0_1_fu_248 = win_val_2_V_1_fu_252.read();
        win_val_2_V_0_fu_244 = win_val_2_V_0_1_fu_248.read();
        win_val_2_V_1_fu_252 = win_val_2_V_2_fu_256.read();
        win_val_2_V_2_fu_256 = win_val_2_V_3_fu_260.read();
        win_val_2_V_3_fu_260 = win_val_2_V_4_fu_264.read();
        win_val_2_V_4_fu_264 = win_val_2_V_5_fu_268.read();
        win_val_2_V_5_fu_268 = k_buf_val_2_V_q0.read();
        win_val_3_V_0_1_fu_276 = win_val_3_V_1_fu_280.read();
        win_val_3_V_0_fu_272 = win_val_3_V_0_1_fu_276.read();
        win_val_3_V_1_fu_280 = win_val_3_V_2_fu_284.read();
        win_val_3_V_2_fu_284 = win_val_3_V_3_fu_288.read();
        win_val_3_V_3_fu_288 = win_val_3_V_4_fu_292.read();
        win_val_3_V_4_fu_292 = win_val_3_V_5_fu_296.read();
        win_val_3_V_5_fu_296 = k_buf_val_3_V_q0.read();
        win_val_4_V_0_1_fu_304 = win_val_4_V_1_fu_308.read();
        win_val_4_V_0_fu_300 = win_val_4_V_0_1_fu_304.read();
        win_val_4_V_1_fu_308 = win_val_4_V_2_fu_312.read();
        win_val_4_V_2_fu_312 = win_val_4_V_3_fu_316.read();
        win_val_4_V_3_fu_316 = win_val_4_V_4_fu_320.read();
        win_val_4_V_4_fu_320 = win_val_4_V_5_fu_324.read();
        win_val_4_V_5_fu_324 = k_buf_val_4_V_q0.read();
        win_val_5_V_1_1_fu_332 = win_val_5_V_2_fu_336.read();
        win_val_5_V_1_fu_328 = win_val_5_V_1_1_fu_332.read();
        win_val_5_V_2_fu_336 = win_val_5_V_3_fu_340.read();
        win_val_5_V_3_fu_340 = win_val_5_V_4_fu_344.read();
        win_val_5_V_4_fu_344 = win_val_5_V_5_fu_348.read();
        win_val_5_V_5_fu_348 = k_buf_val_5_V_q0.read();
        win_val_6_V_2_1_fu_356 = win_val_6_V_3_fu_360.read();
        win_val_6_V_2_fu_352 = win_val_6_V_2_1_fu_356.read();
        win_val_6_V_3_fu_360 = win_val_6_V_4_fu_364.read();
        win_val_6_V_4_fu_364 = win_val_6_V_5_fu_368.read();
        win_val_6_V_5_fu_368 = p_src_data_stream_V_dout.read();
    }
}

void FAST_t_opr::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, exitcond3_i_fu_1368_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            if ((!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter11.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter10.read(), ap_const_logic_0)) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_0) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter11.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter10.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_0) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_state15;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}

