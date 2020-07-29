// ==============================================================
// File generated on Tue Jul 28 17:04:08 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __hls_hough_line_p_ocq_H__
#define __hls_hough_line_p_ocq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct hls_hough_line_p_ocq_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 1089900;
  static const unsigned AddressWidth = 21;

//latency = 3
//input_reg = 2
//output_reg = 1
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


sc_core::sc_signal<sc_lv<AddressWidth> > addr0_t0; 
sc_core::sc_signal<sc_logic> ce0_t0; 
sc_core::sc_signal<sc_lv<AddressWidth> > addr0_t1; 
sc_core::sc_signal<sc_logic> ce0_t1; 
sc_core::sc_signal<sc_lv<DataWidth> > d0_t0; 
sc_core::sc_signal<sc_logic> we0_t0; 
sc_core::sc_signal<sc_lv<DataWidth> > d0_t1; 
sc_core::sc_signal<sc_logic> we0_t1; 
sc_core::sc_signal<sc_lv<DataWidth> > q0_t0;
sc_core::sc_signal<sc_lv<DataWidth> > q0_t1;
   SC_CTOR(hls_hough_line_p_ocq_ram) {
SC_METHOD(prc_comb_0);
  sensitive<<address0<<ce0;
  sensitive<<d0<<we0;
  sensitive<<q0_t1;

SC_METHOD(prc_seq);
  sensitive<<clk.pos(); 


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }

void prc_comb_0() {
  addr0_t0 = address0.read();
  ce0_t0 = ce0.read();
  d0_t0 = d0.read();
  we0_t0 = we0.read();
  q0 = q0_t1.read();
}

void prc_seq() { 
    addr0_t1 = addr0_t0.read(); 
    ce0_t1 = ce0_t0.read(); 
    d0_t1 = d0_t0.read();
    we0_t1 = we0_t0.read();
    q0_t1 = q0_t0.read();
}

void prc_write_0()
{
    if (ce0_t1.read() == sc_dt::Log_1) 
    {
        if (we0_t1.read() == sc_dt::Log_1) 
        {
           if(addr0_t1.read().is_01() && addr0_t1.read().to_uint()<AddressRange)
           {
              ram[addr0_t1.read().to_uint()] = d0_t1.read(); 
              q0_t0 = d0_t1.read();
           }
           else
              q0_t0 = sc_lv<DataWidth>();
        }
        else {
            if(addr0_t1.read().is_01() && addr0_t1.read().to_uint()<AddressRange)
              q0_t0 = ram[addr0_t1.read().to_uint()];
            else
              q0_t0 = sc_lv<DataWidth>();
        }
    }
}


}; //endmodule


SC_MODULE(hls_hough_line_p_ocq) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 1089900;
static const unsigned AddressWidth = 21;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


hls_hough_line_p_ocq_ram* meminst;


SC_CTOR(hls_hough_line_p_ocq) {
meminst = new hls_hough_line_p_ocq_ram("hls_hough_line_p_ocq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);
meminst->we0(we0);
meminst->d0(d0);


meminst->reset(reset);
meminst->clk(clk);
}
~hls_hough_line_p_ocq() {
    delete meminst;
}


};//endmodule
#endif