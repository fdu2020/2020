@echo off
set xv_path=D:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto 468dcb3e46f144908b8bc175208d4fd1 -m64 --debug typical --relax --mt 2 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot Divider_Multiple_top_TB_time_synth -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.Divider_Multiple_top_TB xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
