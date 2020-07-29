@echo off
set xv_path=D:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xsim Divider_Multiple_top_TB_behav -key {Behavioral:sim_1:Functional:Divider_Multiple_top_TB} -tclbatch Divider_Multiple_top_TB.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
