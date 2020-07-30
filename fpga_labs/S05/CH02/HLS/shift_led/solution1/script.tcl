############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project shift_led
set_top shift_led
add_files shift_led/src/shift_led.h
add_files shift_led/src/top.cpp
add_files -tb shift_led/src/Test_shift_led.cpp
open_solution "solution1"
set_part {xcku115-flva1517-2-e} -tool vivado
create_clock -period 10 -name default
#source "./shift_led/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -tool modelsim
export_design -rtl verilog -format ip_catalog -description "8bit_shift_led"
