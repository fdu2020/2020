# ==============================================================
# File generated on Thu Jul 23 15:32:22 +0800 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../src/Test_shift_led.cpp -cflags { -Wno-unknown-pragmas}
add_files shift_led/src/top.cpp
add_files shift_led/src/shift_led.h
set_part xcku115-flva1517-2-e
create_clock -name default -period 10