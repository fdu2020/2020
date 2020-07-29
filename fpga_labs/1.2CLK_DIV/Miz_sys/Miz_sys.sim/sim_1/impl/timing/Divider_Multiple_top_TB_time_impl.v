// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Wed Feb 08 19:44:19 2017
// Host        : AFAAW-704030720 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/MIZ_SOC/SEASON_01/CH09_CLK_DIV/Miz_sys/Miz_sys.sim/sim_1/impl/timing/Divider_Multiple_top_TB_time_impl.v
// Design      : Divider_Multiple_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "5f6db160" *) 
(* NotValidForBitStream *)
module Divider_Multiple_top
   (clk_i,
    rst_n_i,
    div2_o,
    div3_o,
    div4_o,
    div8_o,
    div2hz_o);
  input clk_i;
  input rst_n_i;
  output div2_o;
  output div3_o;
  output div4_o;
  output div8_o;
  output div2hz_o;

  wire clk_i;
  wire clk_i_IBUF;
  wire clk_i_IBUF_BUFG;
  wire div2_o;
  wire div2_o_OBUF;
  wire \div2hz_cnt[0]_i_2_n_0 ;
  wire \div2hz_cnt[0]_i_3_n_0 ;
  wire \div2hz_cnt[0]_i_4_n_0 ;
  wire \div2hz_cnt[0]_i_5_n_0 ;
  wire \div2hz_cnt[0]_i_6_n_0 ;
  wire \div2hz_cnt[0]_i_7_n_0 ;
  wire \div2hz_cnt[0]_i_8_n_0 ;
  wire \div2hz_cnt[0]_i_9_n_0 ;
  wire \div2hz_cnt[12]_i_2_n_0 ;
  wire \div2hz_cnt[12]_i_3_n_0 ;
  wire \div2hz_cnt[12]_i_4_n_0 ;
  wire \div2hz_cnt[12]_i_5_n_0 ;
  wire \div2hz_cnt[16]_i_2_n_0 ;
  wire \div2hz_cnt[16]_i_3_n_0 ;
  wire \div2hz_cnt[16]_i_4_n_0 ;
  wire \div2hz_cnt[16]_i_5_n_0 ;
  wire \div2hz_cnt[16]_i_6_n_0 ;
  wire \div2hz_cnt[20]_i_2_n_0 ;
  wire \div2hz_cnt[20]_i_3_n_0 ;
  wire \div2hz_cnt[20]_i_4_n_0 ;
  wire \div2hz_cnt[20]_i_5_n_0 ;
  wire \div2hz_cnt[24]_i_2_n_0 ;
  wire \div2hz_cnt[24]_i_3_n_0 ;
  wire \div2hz_cnt[4]_i_2_n_0 ;
  wire \div2hz_cnt[4]_i_3_n_0 ;
  wire \div2hz_cnt[4]_i_4_n_0 ;
  wire \div2hz_cnt[4]_i_5_n_0 ;
  wire \div2hz_cnt[8]_i_2_n_0 ;
  wire \div2hz_cnt[8]_i_3_n_0 ;
  wire \div2hz_cnt[8]_i_4_n_0 ;
  wire \div2hz_cnt[8]_i_5_n_0 ;
  wire [25:0]div2hz_cnt_reg;
  wire \div2hz_cnt_reg[0]_i_1_n_0 ;
  wire \div2hz_cnt_reg[0]_i_1_n_4 ;
  wire \div2hz_cnt_reg[0]_i_1_n_5 ;
  wire \div2hz_cnt_reg[0]_i_1_n_6 ;
  wire \div2hz_cnt_reg[0]_i_1_n_7 ;
  wire \div2hz_cnt_reg[12]_i_1_n_0 ;
  wire \div2hz_cnt_reg[12]_i_1_n_4 ;
  wire \div2hz_cnt_reg[12]_i_1_n_5 ;
  wire \div2hz_cnt_reg[12]_i_1_n_6 ;
  wire \div2hz_cnt_reg[12]_i_1_n_7 ;
  wire \div2hz_cnt_reg[16]_i_1_n_0 ;
  wire \div2hz_cnt_reg[16]_i_1_n_4 ;
  wire \div2hz_cnt_reg[16]_i_1_n_5 ;
  wire \div2hz_cnt_reg[16]_i_1_n_6 ;
  wire \div2hz_cnt_reg[16]_i_1_n_7 ;
  wire \div2hz_cnt_reg[20]_i_1_n_0 ;
  wire \div2hz_cnt_reg[20]_i_1_n_4 ;
  wire \div2hz_cnt_reg[20]_i_1_n_5 ;
  wire \div2hz_cnt_reg[20]_i_1_n_6 ;
  wire \div2hz_cnt_reg[20]_i_1_n_7 ;
  wire \div2hz_cnt_reg[24]_i_1_n_6 ;
  wire \div2hz_cnt_reg[24]_i_1_n_7 ;
  wire \div2hz_cnt_reg[4]_i_1_n_0 ;
  wire \div2hz_cnt_reg[4]_i_1_n_4 ;
  wire \div2hz_cnt_reg[4]_i_1_n_5 ;
  wire \div2hz_cnt_reg[4]_i_1_n_6 ;
  wire \div2hz_cnt_reg[4]_i_1_n_7 ;
  wire \div2hz_cnt_reg[8]_i_1_n_0 ;
  wire \div2hz_cnt_reg[8]_i_1_n_4 ;
  wire \div2hz_cnt_reg[8]_i_1_n_5 ;
  wire \div2hz_cnt_reg[8]_i_1_n_6 ;
  wire \div2hz_cnt_reg[8]_i_1_n_7 ;
  wire div2hz_o;
  wire div2hz_o_OBUF;
  wire div2hz_o_r_i_1_n_0;
  wire div2hz_o_r_i_2_n_0;
  wire div2hz_o_r_i_3_n_0;
  wire div2hz_o_r_i_4_n_0;
  wire div2hz_o_r_i_5_n_0;
  wire div2hz_o_r_i_6_n_0;
  wire div2hz_o_r_i_7_n_0;
  wire div3_o;
  wire div3_o_OBUF;
  wire div3_o_r0;
  wire div3_o_r0_i_1_n_0;
  wire div3_o_r1;
  wire div3_o_r1_i_1_n_0;
  wire div3_o_r1_i_2_n_0;
  wire div4_o;
  wire div4_o_OBUF;
  wire div4_o_r0;
  wire div4_o_r_i_1_n_0;
  wire div8_o;
  wire div8_o_OBUF;
  wire div8_o_r_i_1_n_0;
  wire [1:0]div_cnt1;
  wire \div_cnt1[1]_i_1_n_0 ;
  wire [1:0]neg_cnt;
  wire \neg_cnt[0]_i_1_n_0 ;
  wire \neg_cnt[1]_i_1_n_0 ;
  wire p_0_in;
  wire [1:0]pos_cnt;
  wire \pos_cnt[0]_i_1_n_0 ;
  wire \pos_cnt[1]_i_1_n_0 ;
  wire rst_n_i;
  wire rst_n_i_IBUF;
  wire [2:0]\NLW_div2hz_cnt_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_div2hz_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_div2hz_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_div2hz_cnt_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_div2hz_cnt_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_div2hz_cnt_reg[24]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_div2hz_cnt_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_div2hz_cnt_reg[8]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("Divider_Multiple_top_TB_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_i_IBUF_BUFG_inst
       (.I(clk_i_IBUF),
        .O(clk_i_IBUF_BUFG));
  IBUF clk_i_IBUF_inst
       (.I(clk_i),
        .O(clk_i_IBUF));
  OBUF div2_o_OBUF_inst
       (.I(div2_o_OBUF),
        .O(div2_o));
  LUT1 #(
    .INIT(2'h1)) 
    div2_o_r_i_1
       (.I0(div2_o_OBUF),
        .O(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    div2_o_r_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(p_0_in),
        .Q(div2_o_OBUF));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[0]_i_2 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[0]),
        .O(\div2hz_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[0]_i_3 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[3]),
        .O(\div2hz_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[0]_i_4 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[2]),
        .O(\div2hz_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[0]_i_5 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[1]),
        .O(\div2hz_cnt[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555555554445544)) 
    \div2hz_cnt[0]_i_6 
       (.I0(div2hz_cnt_reg[0]),
        .I1(\div2hz_cnt[0]_i_7_n_0 ),
        .I2(div2hz_o_r_i_6_n_0),
        .I3(\div2hz_cnt[0]_i_8_n_0 ),
        .I4(div2hz_cnt_reg[15]),
        .I5(\div2hz_cnt[0]_i_9_n_0 ),
        .O(\div2hz_cnt[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h57575757FF575757)) 
    \div2hz_cnt[0]_i_7 
       (.I0(div2hz_cnt_reg[25]),
        .I1(div2hz_cnt_reg[24]),
        .I2(div2hz_cnt_reg[23]),
        .I3(\div2hz_cnt[0]_i_8_n_0 ),
        .I4(div2hz_o_r_i_5_n_0),
        .I5(div2hz_cnt_reg[11]),
        .O(\div2hz_cnt[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \div2hz_cnt[0]_i_8 
       (.I0(div2hz_cnt_reg[18]),
        .I1(div2hz_cnt_reg[24]),
        .I2(div2hz_cnt_reg[16]),
        .O(\div2hz_cnt[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0F01)) 
    \div2hz_cnt[0]_i_9 
       (.I0(div2hz_cnt_reg[17]),
        .I1(div2hz_cnt_reg[18]),
        .I2(div2hz_cnt_reg[24]),
        .I3(div2hz_o_r_i_4_n_0),
        .O(\div2hz_cnt[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFEA0000)) 
    \div2hz_cnt[12]_i_2 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(\div2hz_cnt[0]_i_9_n_0 ),
        .I4(div2hz_cnt_reg[15]),
        .O(\div2hz_cnt[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[12]_i_3 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[14]),
        .O(\div2hz_cnt[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[12]_i_4 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[13]),
        .O(\div2hz_cnt[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[12]_i_5 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[12]),
        .O(\div2hz_cnt[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[16]_i_2 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[19]),
        .O(\div2hz_cnt[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEFE0000)) 
    \div2hz_cnt[16]_i_3 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(\div2hz_cnt[16]_i_6_n_0 ),
        .I2(div2hz_o_r_i_4_n_0),
        .I3(div2hz_cnt_reg[24]),
        .I4(div2hz_cnt_reg[18]),
        .O(\div2hz_cnt[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEEFE0000)) 
    \div2hz_cnt[16]_i_4 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(\div2hz_cnt[16]_i_6_n_0 ),
        .I2(div2hz_o_r_i_4_n_0),
        .I3(div2hz_cnt_reg[24]),
        .I4(div2hz_cnt_reg[17]),
        .O(\div2hz_cnt[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[16]_i_5 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[16]),
        .O(\div2hz_cnt[16]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4CCCCCCC)) 
    \div2hz_cnt[16]_i_6 
       (.I0(div2hz_cnt_reg[15]),
        .I1(\div2hz_cnt[0]_i_8_n_0 ),
        .I2(div2hz_cnt_reg[14]),
        .I3(div2hz_cnt_reg[13]),
        .I4(div2hz_cnt_reg[12]),
        .O(\div2hz_cnt[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[20]_i_2 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[23]),
        .O(\div2hz_cnt[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[20]_i_3 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[22]),
        .O(\div2hz_cnt[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[20]_i_4 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[21]),
        .O(\div2hz_cnt[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[20]_i_5 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[20]),
        .O(\div2hz_cnt[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[24]_i_2 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[25]),
        .O(\div2hz_cnt[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \div2hz_cnt[24]_i_3 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(\div2hz_cnt[16]_i_6_n_0 ),
        .I2(div2hz_cnt_reg[24]),
        .O(\div2hz_cnt[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[4]_i_2 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[7]),
        .O(\div2hz_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[4]_i_3 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[6]),
        .O(\div2hz_cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[4]_i_4 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[5]),
        .O(\div2hz_cnt[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[4]_i_5 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[4]),
        .O(\div2hz_cnt[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[8]_i_2 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[11]),
        .O(\div2hz_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[8]_i_3 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[10]),
        .O(\div2hz_cnt[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[8]_i_4 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[9]),
        .O(\div2hz_cnt[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFA00000000)) 
    \div2hz_cnt[8]_i_5 
       (.I0(\div2hz_cnt[0]_i_7_n_0 ),
        .I1(div2hz_o_r_i_6_n_0),
        .I2(\div2hz_cnt[0]_i_8_n_0 ),
        .I3(div2hz_cnt_reg[15]),
        .I4(\div2hz_cnt[0]_i_9_n_0 ),
        .I5(div2hz_cnt_reg[8]),
        .O(\div2hz_cnt[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[0]_i_1_n_7 ),
        .Q(div2hz_cnt_reg[0]));
  CARRY4 \div2hz_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\div2hz_cnt_reg[0]_i_1_n_0 ,\NLW_div2hz_cnt_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\div2hz_cnt[0]_i_2_n_0 }),
        .O({\div2hz_cnt_reg[0]_i_1_n_4 ,\div2hz_cnt_reg[0]_i_1_n_5 ,\div2hz_cnt_reg[0]_i_1_n_6 ,\div2hz_cnt_reg[0]_i_1_n_7 }),
        .S({\div2hz_cnt[0]_i_3_n_0 ,\div2hz_cnt[0]_i_4_n_0 ,\div2hz_cnt[0]_i_5_n_0 ,\div2hz_cnt[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[10] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[8]_i_1_n_5 ),
        .Q(div2hz_cnt_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[11] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[8]_i_1_n_4 ),
        .Q(div2hz_cnt_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[12] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[12]_i_1_n_7 ),
        .Q(div2hz_cnt_reg[12]));
  CARRY4 \div2hz_cnt_reg[12]_i_1 
       (.CI(\div2hz_cnt_reg[8]_i_1_n_0 ),
        .CO({\div2hz_cnt_reg[12]_i_1_n_0 ,\NLW_div2hz_cnt_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div2hz_cnt_reg[12]_i_1_n_4 ,\div2hz_cnt_reg[12]_i_1_n_5 ,\div2hz_cnt_reg[12]_i_1_n_6 ,\div2hz_cnt_reg[12]_i_1_n_7 }),
        .S({\div2hz_cnt[12]_i_2_n_0 ,\div2hz_cnt[12]_i_3_n_0 ,\div2hz_cnt[12]_i_4_n_0 ,\div2hz_cnt[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[13] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[12]_i_1_n_6 ),
        .Q(div2hz_cnt_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[14] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[12]_i_1_n_5 ),
        .Q(div2hz_cnt_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[15] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[12]_i_1_n_4 ),
        .Q(div2hz_cnt_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[16] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[16]_i_1_n_7 ),
        .Q(div2hz_cnt_reg[16]));
  CARRY4 \div2hz_cnt_reg[16]_i_1 
       (.CI(\div2hz_cnt_reg[12]_i_1_n_0 ),
        .CO({\div2hz_cnt_reg[16]_i_1_n_0 ,\NLW_div2hz_cnt_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div2hz_cnt_reg[16]_i_1_n_4 ,\div2hz_cnt_reg[16]_i_1_n_5 ,\div2hz_cnt_reg[16]_i_1_n_6 ,\div2hz_cnt_reg[16]_i_1_n_7 }),
        .S({\div2hz_cnt[16]_i_2_n_0 ,\div2hz_cnt[16]_i_3_n_0 ,\div2hz_cnt[16]_i_4_n_0 ,\div2hz_cnt[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[17] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[16]_i_1_n_6 ),
        .Q(div2hz_cnt_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[18] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[16]_i_1_n_5 ),
        .Q(div2hz_cnt_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[19] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[16]_i_1_n_4 ),
        .Q(div2hz_cnt_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[0]_i_1_n_6 ),
        .Q(div2hz_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[20] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[20]_i_1_n_7 ),
        .Q(div2hz_cnt_reg[20]));
  CARRY4 \div2hz_cnt_reg[20]_i_1 
       (.CI(\div2hz_cnt_reg[16]_i_1_n_0 ),
        .CO({\div2hz_cnt_reg[20]_i_1_n_0 ,\NLW_div2hz_cnt_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div2hz_cnt_reg[20]_i_1_n_4 ,\div2hz_cnt_reg[20]_i_1_n_5 ,\div2hz_cnt_reg[20]_i_1_n_6 ,\div2hz_cnt_reg[20]_i_1_n_7 }),
        .S({\div2hz_cnt[20]_i_2_n_0 ,\div2hz_cnt[20]_i_3_n_0 ,\div2hz_cnt[20]_i_4_n_0 ,\div2hz_cnt[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[21] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[20]_i_1_n_6 ),
        .Q(div2hz_cnt_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[22] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[20]_i_1_n_5 ),
        .Q(div2hz_cnt_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[23] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[20]_i_1_n_4 ),
        .Q(div2hz_cnt_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[24] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[24]_i_1_n_7 ),
        .Q(div2hz_cnt_reg[24]));
  CARRY4 \div2hz_cnt_reg[24]_i_1 
       (.CI(\div2hz_cnt_reg[20]_i_1_n_0 ),
        .CO(\NLW_div2hz_cnt_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_div2hz_cnt_reg[24]_i_1_O_UNCONNECTED [3:2],\div2hz_cnt_reg[24]_i_1_n_6 ,\div2hz_cnt_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,\div2hz_cnt[24]_i_2_n_0 ,\div2hz_cnt[24]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[25] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[24]_i_1_n_6 ),
        .Q(div2hz_cnt_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[0]_i_1_n_5 ),
        .Q(div2hz_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[0]_i_1_n_4 ),
        .Q(div2hz_cnt_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[4]_i_1_n_7 ),
        .Q(div2hz_cnt_reg[4]));
  CARRY4 \div2hz_cnt_reg[4]_i_1 
       (.CI(\div2hz_cnt_reg[0]_i_1_n_0 ),
        .CO({\div2hz_cnt_reg[4]_i_1_n_0 ,\NLW_div2hz_cnt_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div2hz_cnt_reg[4]_i_1_n_4 ,\div2hz_cnt_reg[4]_i_1_n_5 ,\div2hz_cnt_reg[4]_i_1_n_6 ,\div2hz_cnt_reg[4]_i_1_n_7 }),
        .S({\div2hz_cnt[4]_i_2_n_0 ,\div2hz_cnt[4]_i_3_n_0 ,\div2hz_cnt[4]_i_4_n_0 ,\div2hz_cnt[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[4]_i_1_n_6 ),
        .Q(div2hz_cnt_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[4]_i_1_n_5 ),
        .Q(div2hz_cnt_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[4]_i_1_n_4 ),
        .Q(div2hz_cnt_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[8] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[8]_i_1_n_7 ),
        .Q(div2hz_cnt_reg[8]));
  CARRY4 \div2hz_cnt_reg[8]_i_1 
       (.CI(\div2hz_cnt_reg[4]_i_1_n_0 ),
        .CO({\div2hz_cnt_reg[8]_i_1_n_0 ,\NLW_div2hz_cnt_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div2hz_cnt_reg[8]_i_1_n_4 ,\div2hz_cnt_reg[8]_i_1_n_5 ,\div2hz_cnt_reg[8]_i_1_n_6 ,\div2hz_cnt_reg[8]_i_1_n_7 }),
        .S({\div2hz_cnt[8]_i_2_n_0 ,\div2hz_cnt[8]_i_3_n_0 ,\div2hz_cnt[8]_i_4_n_0 ,\div2hz_cnt[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \div2hz_cnt_reg[9] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div2hz_cnt_reg[8]_i_1_n_6 ),
        .Q(div2hz_cnt_reg[9]));
  OBUF div2hz_o_OBUF_inst
       (.I(div2hz_o_OBUF),
        .O(div2hz_o));
  LUT6 #(
    .INIT(64'hFFFFF7FF00000800)) 
    div2hz_o_r_i_1
       (.I0(div2hz_o_r_i_2_n_0),
        .I1(div2hz_o_r_i_3_n_0),
        .I2(div2hz_o_r_i_4_n_0),
        .I3(div2hz_o_r_i_5_n_0),
        .I4(div2hz_o_r_i_6_n_0),
        .I5(div2hz_o_OBUF),
        .O(div2hz_o_r_i_1_n_0));
  LUT5 #(
    .INIT(32'h00081000)) 
    div2hz_o_r_i_2
       (.I0(div2hz_cnt_reg[23]),
        .I1(div2hz_cnt_reg[25]),
        .I2(div2hz_cnt_reg[24]),
        .I3(div2hz_cnt_reg[18]),
        .I4(div2hz_cnt_reg[17]),
        .O(div2hz_o_r_i_2_n_0));
  LUT6 #(
    .INIT(64'h0008000000002000)) 
    div2hz_o_r_i_3
       (.I0(div2hz_o_r_i_7_n_0),
        .I1(div2hz_cnt_reg[17]),
        .I2(div2hz_cnt_reg[16]),
        .I3(div2hz_cnt_reg[11]),
        .I4(div2hz_cnt_reg[15]),
        .I5(div2hz_cnt_reg[6]),
        .O(div2hz_o_r_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    div2hz_o_r_i_4
       (.I0(div2hz_cnt_reg[19]),
        .I1(div2hz_cnt_reg[21]),
        .I2(div2hz_cnt_reg[22]),
        .I3(div2hz_cnt_reg[20]),
        .O(div2hz_o_r_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    div2hz_o_r_i_5
       (.I0(div2hz_cnt_reg[8]),
        .I1(div2hz_cnt_reg[7]),
        .I2(div2hz_cnt_reg[10]),
        .I3(div2hz_cnt_reg[9]),
        .O(div2hz_o_r_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    div2hz_o_r_i_6
       (.I0(div2hz_cnt_reg[14]),
        .I1(div2hz_cnt_reg[13]),
        .I2(div2hz_cnt_reg[12]),
        .O(div2hz_o_r_i_6_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    div2hz_o_r_i_7
       (.I0(div2hz_cnt_reg[2]),
        .I1(div2hz_cnt_reg[3]),
        .I2(div2hz_cnt_reg[0]),
        .I3(div2hz_cnt_reg[1]),
        .I4(div2hz_cnt_reg[5]),
        .I5(div2hz_cnt_reg[4]),
        .O(div2hz_o_r_i_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    div2hz_o_r_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(div2hz_o_r_i_1_n_0),
        .Q(div2hz_o_OBUF));
  OBUF div3_o_OBUF_inst
       (.I(div3_o_OBUF),
        .O(div3_o));
  LUT2 #(
    .INIT(4'hE)) 
    div3_o_OBUF_inst_i_1
       (.I0(div3_o_r1),
        .I1(div3_o_r0),
        .O(div3_o_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    div3_o_r0_i_1
       (.I0(pos_cnt[1]),
        .I1(pos_cnt[0]),
        .O(div3_o_r0_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    div3_o_r0_reg
       (.C(div2_o_OBUF),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(div3_o_r0_i_1_n_0),
        .Q(div3_o_r0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    div3_o_r1_i_1
       (.I0(neg_cnt[1]),
        .I1(neg_cnt[0]),
        .O(div3_o_r1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    div3_o_r1_i_2
       (.I0(rst_n_i_IBUF),
        .O(div3_o_r1_i_2_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    div3_o_r1_reg
       (.C(div2_o_OBUF),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(div3_o_r1_i_1_n_0),
        .Q(div3_o_r1));
  OBUF div4_o_OBUF_inst
       (.I(div4_o_OBUF),
        .O(div4_o));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    div4_o_r_i_1
       (.I0(div_cnt1[0]),
        .I1(div4_o_OBUF),
        .O(div4_o_r_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    div4_o_r_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(div4_o_r_i_1_n_0),
        .Q(div4_o_OBUF));
  OBUF div8_o_OBUF_inst
       (.I(div8_o_OBUF),
        .O(div8_o));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    div8_o_r_i_1
       (.I0(div_cnt1[0]),
        .I1(div_cnt1[1]),
        .I2(div8_o_OBUF),
        .O(div8_o_r_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    div8_o_r_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(div8_o_r_i_1_n_0),
        .Q(div8_o_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \div_cnt1[0]_i_1 
       (.I0(div_cnt1[0]),
        .O(div4_o_r0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \div_cnt1[1]_i_1 
       (.I0(div_cnt1[0]),
        .I1(div_cnt1[1]),
        .O(\div_cnt1[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \div_cnt1_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(div4_o_r0),
        .Q(div_cnt1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \div_cnt1_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\div_cnt1[1]_i_1_n_0 ),
        .Q(div_cnt1[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \neg_cnt[0]_i_1 
       (.I0(neg_cnt[0]),
        .I1(neg_cnt[1]),
        .O(\neg_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \neg_cnt[1]_i_1 
       (.I0(neg_cnt[0]),
        .I1(neg_cnt[1]),
        .O(\neg_cnt[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \neg_cnt_reg[0] 
       (.C(div2_o_OBUF),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\neg_cnt[0]_i_1_n_0 ),
        .Q(neg_cnt[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \neg_cnt_reg[1] 
       (.C(div2_o_OBUF),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\neg_cnt[1]_i_1_n_0 ),
        .Q(neg_cnt[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \pos_cnt[0]_i_1 
       (.I0(pos_cnt[0]),
        .I1(pos_cnt[1]),
        .O(\pos_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pos_cnt[1]_i_1 
       (.I0(pos_cnt[0]),
        .I1(pos_cnt[1]),
        .O(\pos_cnt[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_cnt_reg[0] 
       (.C(div2_o_OBUF),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\pos_cnt[0]_i_1_n_0 ),
        .Q(pos_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pos_cnt_reg[1] 
       (.C(div2_o_OBUF),
        .CE(1'b1),
        .CLR(div3_o_r1_i_2_n_0),
        .D(\pos_cnt[1]_i_1_n_0 ),
        .Q(pos_cnt[1]));
  IBUF rst_n_i_IBUF_inst
       (.I(rst_n_i),
        .O(rst_n_i_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
