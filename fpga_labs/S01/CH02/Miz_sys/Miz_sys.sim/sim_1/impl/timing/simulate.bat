@echo off
set xv_path=D:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xsim Divider_Multiple_top_TB_time_impl -key {Post-Implementation:sim_1:Timing:Divider_Multiple_top_TB} -tclbatch Divider_Multiple_top_TB.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
