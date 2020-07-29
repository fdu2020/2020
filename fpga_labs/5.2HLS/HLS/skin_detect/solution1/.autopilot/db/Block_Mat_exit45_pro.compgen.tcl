# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name rows \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rows \
    op interface \
    ports { rows { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name cols \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cols \
    op interface \
    ports { cols { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name y_lower \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y_lower \
    op interface \
    ports { y_lower { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name y_upper \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y_upper \
    op interface \
    ports { y_upper { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name cb_lower \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cb_lower \
    op interface \
    ports { cb_lower { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name cb_upper \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cb_upper \
    op interface \
    ports { cb_upper { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name cr_lower \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cr_lower \
    op interface \
    ports { cr_lower { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name cr_upper \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cr_upper \
    op interface \
    ports { cr_upper { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name rows_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rows_out \
    op interface \
    ports { rows_out_din { O 32 vector } rows_out_full_n { I 1 bit } rows_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name cols_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cols_out \
    op interface \
    ports { cols_out_din { O 32 vector } cols_out_full_n { I 1 bit } cols_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name img_1_rows_V_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_1_rows_V_out \
    op interface \
    ports { img_1_rows_V_out_din { O 32 vector } img_1_rows_V_out_full_n { I 1 bit } img_1_rows_V_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name img_1_cols_V_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_1_cols_V_out \
    op interface \
    ports { img_1_cols_V_out_din { O 32 vector } img_1_cols_V_out_full_n { I 1 bit } img_1_cols_V_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name y_lower_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_y_lower_out \
    op interface \
    ports { y_lower_out_din { O 32 vector } y_lower_out_full_n { I 1 bit } y_lower_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name y_upper_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_y_upper_out \
    op interface \
    ports { y_upper_out_din { O 32 vector } y_upper_out_full_n { I 1 bit } y_upper_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name cb_lower_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cb_lower_out \
    op interface \
    ports { cb_lower_out_din { O 32 vector } cb_lower_out_full_n { I 1 bit } cb_lower_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name cb_upper_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cb_upper_out \
    op interface \
    ports { cb_upper_out_din { O 32 vector } cb_upper_out_full_n { I 1 bit } cb_upper_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name cr_lower_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cr_lower_out \
    op interface \
    ports { cr_lower_out_din { O 32 vector } cr_lower_out_full_n { I 1 bit } cr_lower_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name cr_upper_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cr_upper_out \
    op interface \
    ports { cr_upper_out_din { O 32 vector } cr_upper_out_full_n { I 1 bit } cr_upper_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


