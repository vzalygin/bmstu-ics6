////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: cla_top_synthesis.v
// /___/   /\     Timestamp: Sat Mar 15 15:15:04 2025
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim cla_top.ngc cla_top_synthesis.v 
// Device	: xc6vlx240t-1-ff1156
// Input file	: cla_top.ngc
// Output file	: /mnt/c/repos/bmstu-ics6/ecm/lab1/part2/netgen/synthesis/cla_top_synthesis.v
// # of Modules	: 1
// Design Name	: cla_top
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module cla_top (
  rst, user_clk, en, error, locked
);
  input rst;
  input user_clk;
  input en;
  output error;
  output locked;
  wire rst_IBUF_0;
  wire en_IBUF_1;
  wire clkfbout;
  wire int_clk;
  wire locked_OBUF_4;
  wire \cla_inst/error_5 ;
  wire clkfbout_bufg;
  wire clk_bufg;
  wire N0;
  wire N1;
  wire locked_inv;
  wire \cla_inst/carry_in_0 ;
  wire \cla_inst/carry_in_INV_8_o ;
  wire \cla_inst/counter[194]_inv_2_OUT<0> ;
  wire \cla_inst/counter[194]_inv_2_OUT<1> ;
  wire \cla_inst/counter[194]_inv_2_OUT<2> ;
  wire \cla_inst/counter[194]_inv_2_OUT<3> ;
  wire \cla_inst/counter[194]_inv_2_OUT<4> ;
  wire \cla_inst/counter[194]_inv_2_OUT<5> ;
  wire \cla_inst/counter[194]_inv_2_OUT<6> ;
  wire \cla_inst/counter[194]_inv_2_OUT<7> ;
  wire \cla_inst/counter[194]_inv_2_OUT<8> ;
  wire \cla_inst/counter[194]_inv_2_OUT<9> ;
  wire \cla_inst/counter[194]_inv_2_OUT<10> ;
  wire \cla_inst/counter[194]_inv_2_OUT<11> ;
  wire \cla_inst/counter[194]_inv_2_OUT<12> ;
  wire \cla_inst/counter[194]_inv_2_OUT<13> ;
  wire \cla_inst/counter[194]_inv_2_OUT<14> ;
  wire \cla_inst/counter[194]_inv_2_OUT<15> ;
  wire \cla_inst/counter[194]_inv_2_OUT<16> ;
  wire \cla_inst/counter[194]_inv_2_OUT<17> ;
  wire \cla_inst/counter[194]_inv_2_OUT<18> ;
  wire \cla_inst/counter[194]_inv_2_OUT<19> ;
  wire \cla_inst/counter[194]_inv_2_OUT<20> ;
  wire \cla_inst/counter[194]_inv_2_OUT<21> ;
  wire \cla_inst/counter[194]_inv_2_OUT<22> ;
  wire \cla_inst/counter[194]_inv_2_OUT<23> ;
  wire \cla_inst/counter[194]_inv_2_OUT<24> ;
  wire \cla_inst/counter[194]_inv_2_OUT<25> ;
  wire \cla_inst/counter[194]_inv_2_OUT<26> ;
  wire \cla_inst/counter[194]_inv_2_OUT<27> ;
  wire \cla_inst/counter[194]_inv_2_OUT<28> ;
  wire \cla_inst/counter[194]_inv_2_OUT<29> ;
  wire \cla_inst/counter[194]_inv_2_OUT<30> ;
  wire \cla_inst/counter[194]_inv_2_OUT<31> ;
  wire \cla_inst/counter[194]_inv_2_OUT<32> ;
  wire \cla_inst/counter[194]_inv_2_OUT<33> ;
  wire \cla_inst/counter[194]_inv_2_OUT<34> ;
  wire \cla_inst/counter[194]_inv_2_OUT<35> ;
  wire \cla_inst/counter[194]_inv_2_OUT<36> ;
  wire \cla_inst/counter[194]_inv_2_OUT<37> ;
  wire \cla_inst/counter[194]_inv_2_OUT<38> ;
  wire \cla_inst/counter[194]_inv_2_OUT<39> ;
  wire \cla_inst/counter[194]_inv_2_OUT<40> ;
  wire \cla_inst/counter[194]_inv_2_OUT<41> ;
  wire \cla_inst/counter[194]_inv_2_OUT<42> ;
  wire \cla_inst/counter[194]_inv_2_OUT<43> ;
  wire \cla_inst/counter[194]_inv_2_OUT<44> ;
  wire \cla_inst/counter[194]_inv_2_OUT<45> ;
  wire \cla_inst/counter[194]_inv_2_OUT<46> ;
  wire \cla_inst/counter[194]_inv_2_OUT<47> ;
  wire \cla_inst/counter[194]_inv_2_OUT<48> ;
  wire \cla_inst/counter[194]_inv_2_OUT<49> ;
  wire \cla_inst/counter[194]_inv_2_OUT<50> ;
  wire \cla_inst/counter[194]_inv_2_OUT<51> ;
  wire \cla_inst/counter[194]_inv_2_OUT<52> ;
  wire \cla_inst/counter[194]_inv_2_OUT<53> ;
  wire \cla_inst/counter[194]_inv_2_OUT<54> ;
  wire \cla_inst/counter[194]_inv_2_OUT<55> ;
  wire \cla_inst/counter[194]_inv_2_OUT<56> ;
  wire \cla_inst/counter[194]_inv_2_OUT<57> ;
  wire \cla_inst/counter[194]_inv_2_OUT<58> ;
  wire \cla_inst/counter[194]_inv_2_OUT<59> ;
  wire \cla_inst/counter[194]_inv_2_OUT<60> ;
  wire \cla_inst/counter[194]_inv_2_OUT<61> ;
  wire \cla_inst/counter[194]_inv_2_OUT<62> ;
  wire \cla_inst/counter[194]_inv_2_OUT<63> ;
  wire \cla_inst/counter[194]_inv_2_OUT<64> ;
  wire \cla_inst/counter[194]_inv_2_OUT<65> ;
  wire \cla_inst/counter[194]_inv_2_OUT<66> ;
  wire \cla_inst/counter[194]_inv_2_OUT<67> ;
  wire \cla_inst/counter[194]_inv_2_OUT<68> ;
  wire \cla_inst/counter[194]_inv_2_OUT<69> ;
  wire \cla_inst/counter[194]_inv_2_OUT<70> ;
  wire \cla_inst/counter[194]_inv_2_OUT<71> ;
  wire \cla_inst/counter[194]_inv_2_OUT<72> ;
  wire \cla_inst/counter[194]_inv_2_OUT<73> ;
  wire \cla_inst/counter[194]_inv_2_OUT<74> ;
  wire \cla_inst/counter[194]_inv_2_OUT<75> ;
  wire \cla_inst/counter[194]_inv_2_OUT<76> ;
  wire \cla_inst/counter[194]_inv_2_OUT<77> ;
  wire \cla_inst/counter[194]_inv_2_OUT<78> ;
  wire \cla_inst/counter[194]_inv_2_OUT<79> ;
  wire \cla_inst/counter[194]_inv_2_OUT<80> ;
  wire \cla_inst/counter[194]_inv_2_OUT<81> ;
  wire \cla_inst/counter[194]_inv_2_OUT<82> ;
  wire \cla_inst/counter[194]_inv_2_OUT<83> ;
  wire \cla_inst/counter[194]_inv_2_OUT<84> ;
  wire \cla_inst/counter[194]_inv_2_OUT<85> ;
  wire \cla_inst/counter[194]_inv_2_OUT<86> ;
  wire \cla_inst/counter[194]_inv_2_OUT<87> ;
  wire \cla_inst/counter[194]_inv_2_OUT<88> ;
  wire \cla_inst/counter[194]_inv_2_OUT<89> ;
  wire \cla_inst/counter[194]_inv_2_OUT<90> ;
  wire \cla_inst/counter[194]_inv_2_OUT<91> ;
  wire \cla_inst/counter[194]_inv_2_OUT<92> ;
  wire \cla_inst/counter[194]_inv_2_OUT<93> ;
  wire \cla_inst/counter[194]_inv_2_OUT<94> ;
  wire \cla_inst/counter[194]_inv_2_OUT<95> ;
  wire \cla_inst/counter[194]_inv_2_OUT<96> ;
  wire \cla_inst/counter[194]_inv_2_OUT<97> ;
  wire \cla_inst/counter[194]_inv_2_OUT<98> ;
  wire \cla_inst/counter[194]_inv_2_OUT<99> ;
  wire \cla_inst/counter[194]_inv_2_OUT<100> ;
  wire \cla_inst/counter[194]_inv_2_OUT<101> ;
  wire \cla_inst/counter[194]_inv_2_OUT<102> ;
  wire \cla_inst/counter[194]_inv_2_OUT<103> ;
  wire \cla_inst/counter[194]_inv_2_OUT<104> ;
  wire \cla_inst/counter[194]_inv_2_OUT<105> ;
  wire \cla_inst/counter[194]_inv_2_OUT<106> ;
  wire \cla_inst/counter[194]_inv_2_OUT<107> ;
  wire \cla_inst/counter[194]_inv_2_OUT<108> ;
  wire \cla_inst/counter[194]_inv_2_OUT<109> ;
  wire \cla_inst/counter[194]_inv_2_OUT<110> ;
  wire \cla_inst/counter[194]_inv_2_OUT<111> ;
  wire \cla_inst/counter[194]_inv_2_OUT<112> ;
  wire \cla_inst/counter[194]_inv_2_OUT<113> ;
  wire \cla_inst/counter[194]_inv_2_OUT<114> ;
  wire \cla_inst/counter[194]_inv_2_OUT<115> ;
  wire \cla_inst/counter[194]_inv_2_OUT<116> ;
  wire \cla_inst/counter[194]_inv_2_OUT<117> ;
  wire \cla_inst/counter[194]_inv_2_OUT<118> ;
  wire \cla_inst/counter[194]_inv_2_OUT<119> ;
  wire \cla_inst/counter[194]_inv_2_OUT<120> ;
  wire \cla_inst/counter[194]_inv_2_OUT<121> ;
  wire \cla_inst/counter[194]_inv_2_OUT<122> ;
  wire \cla_inst/counter[194]_inv_2_OUT<123> ;
  wire \cla_inst/counter[194]_inv_2_OUT<124> ;
  wire \cla_inst/counter[194]_inv_2_OUT<125> ;
  wire \cla_inst/counter[194]_inv_2_OUT<126> ;
  wire \cla_inst/counter[194]_inv_2_OUT<127> ;
  wire \cla_inst/counter[194]_inv_2_OUT<128> ;
  wire \cla_inst/counter[194]_inv_2_OUT<129> ;
  wire \cla_inst/counter[194]_inv_2_OUT<130> ;
  wire \cla_inst/counter[194]_inv_2_OUT<131> ;
  wire \cla_inst/counter[194]_inv_2_OUT<132> ;
  wire \cla_inst/counter[194]_inv_2_OUT<133> ;
  wire \cla_inst/counter[194]_inv_2_OUT<134> ;
  wire \cla_inst/counter[194]_inv_2_OUT<135> ;
  wire \cla_inst/counter[194]_inv_2_OUT<136> ;
  wire \cla_inst/counter[194]_inv_2_OUT<137> ;
  wire \cla_inst/counter[194]_inv_2_OUT<138> ;
  wire \cla_inst/counter[194]_inv_2_OUT<139> ;
  wire \cla_inst/counter[194]_inv_2_OUT<140> ;
  wire \cla_inst/counter[194]_inv_2_OUT<141> ;
  wire \cla_inst/counter[194]_inv_2_OUT<142> ;
  wire \cla_inst/counter[194]_inv_2_OUT<143> ;
  wire \cla_inst/counter[194]_inv_2_OUT<144> ;
  wire \cla_inst/counter[194]_inv_2_OUT<145> ;
  wire \cla_inst/counter[194]_inv_2_OUT<146> ;
  wire \cla_inst/counter[194]_inv_2_OUT<147> ;
  wire \cla_inst/counter[194]_inv_2_OUT<148> ;
  wire \cla_inst/counter[194]_inv_2_OUT<149> ;
  wire \cla_inst/counter[194]_inv_2_OUT<150> ;
  wire \cla_inst/counter[194]_inv_2_OUT<151> ;
  wire \cla_inst/counter[194]_inv_2_OUT<152> ;
  wire \cla_inst/counter[194]_inv_2_OUT<153> ;
  wire \cla_inst/counter[194]_inv_2_OUT<154> ;
  wire \cla_inst/counter[194]_inv_2_OUT<155> ;
  wire \cla_inst/counter[194]_inv_2_OUT<156> ;
  wire \cla_inst/counter[194]_inv_2_OUT<157> ;
  wire \cla_inst/counter[194]_inv_2_OUT<158> ;
  wire \cla_inst/counter[194]_inv_2_OUT<159> ;
  wire \cla_inst/counter[194]_inv_2_OUT<160> ;
  wire \cla_inst/counter[194]_inv_2_OUT<161> ;
  wire \cla_inst/counter[194]_inv_2_OUT<162> ;
  wire \cla_inst/counter[194]_inv_2_OUT<163> ;
  wire \cla_inst/counter[194]_inv_2_OUT<164> ;
  wire \cla_inst/counter[194]_inv_2_OUT<165> ;
  wire \cla_inst/counter[194]_inv_2_OUT<166> ;
  wire \cla_inst/counter[194]_inv_2_OUT<167> ;
  wire \cla_inst/counter[194]_inv_2_OUT<168> ;
  wire \cla_inst/counter[194]_inv_2_OUT<169> ;
  wire \cla_inst/counter[194]_inv_2_OUT<170> ;
  wire \cla_inst/counter[194]_inv_2_OUT<171> ;
  wire \cla_inst/counter[194]_inv_2_OUT<172> ;
  wire \cla_inst/counter[194]_inv_2_OUT<173> ;
  wire \cla_inst/counter[194]_inv_2_OUT<174> ;
  wire \cla_inst/counter[194]_inv_2_OUT<175> ;
  wire \cla_inst/counter[194]_inv_2_OUT<176> ;
  wire \cla_inst/counter[194]_inv_2_OUT<177> ;
  wire \cla_inst/counter[194]_inv_2_OUT<178> ;
  wire \cla_inst/counter[194]_inv_2_OUT<179> ;
  wire \cla_inst/counter[194]_inv_2_OUT<180> ;
  wire \cla_inst/counter[194]_inv_2_OUT<181> ;
  wire \cla_inst/counter[194]_inv_2_OUT<182> ;
  wire \cla_inst/counter[194]_inv_2_OUT<183> ;
  wire \cla_inst/counter[194]_inv_2_OUT<184> ;
  wire \cla_inst/counter[194]_inv_2_OUT<185> ;
  wire \cla_inst/counter[194]_inv_2_OUT<186> ;
  wire \cla_inst/counter[194]_inv_2_OUT<187> ;
  wire \cla_inst/counter[194]_inv_2_OUT<188> ;
  wire \cla_inst/counter[194]_inv_2_OUT<189> ;
  wire \cla_inst/counter[194]_inv_2_OUT<190> ;
  wire \cla_inst/counter[194]_inv_2_OUT<191> ;
  wire \cla_inst/counter[194]_inv_2_OUT<192> ;
  wire \cla_inst/counter[194]_inv_2_OUT<193> ;
  wire \cla_inst/counter[194]_inv_2_OUT<194> ;
  wire \cla_inst/carry_in_1199 ;
  wire \cla_inst/lsfr_128/en_inv ;
  wire \cla_inst/lsfr_128/rstn_inv ;
  wire \cla_inst/lsfr_128/q[194]_q[186]_XOR_3_o ;
  wire \cla_inst/error_glue_set_1663 ;
  wire user_clk_IBUF_1665;
  wire NLW_MMCM_BASE_inst_CLKOUT3_UNCONNECTED;
  wire NLW_MMCM_BASE_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_MMCM_BASE_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_MMCM_BASE_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_MMCM_BASE_inst_CLKOUT5_UNCONNECTED;
  wire NLW_MMCM_BASE_inst_DRDY_UNCONNECTED;
  wire NLW_MMCM_BASE_inst_CLKOUT0_UNCONNECTED;
  wire NLW_MMCM_BASE_inst_CLKOUT4_UNCONNECTED;
  wire NLW_MMCM_BASE_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_MMCM_BASE_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_MMCM_BASE_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_MMCM_BASE_inst_CLKOUT2_UNCONNECTED;
  wire NLW_MMCM_BASE_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_MMCM_BASE_inst_PSDONE_UNCONNECTED;
  wire NLW_MMCM_BASE_inst_CLKOUT6_UNCONNECTED;
  wire \NLW_MMCM_BASE_inst_DO<15>_UNCONNECTED ;
  wire \NLW_MMCM_BASE_inst_DO<14>_UNCONNECTED ;
  wire \NLW_MMCM_BASE_inst_DO<13>_UNCONNECTED ;
  wire \NLW_MMCM_BASE_inst_DO<12>_UNCONNECTED ;
  wire \NLW_MMCM_BASE_inst_DO<11>_UNCONNECTED ;
  wire \NLW_MMCM_BASE_inst_DO<10>_UNCONNECTED ;
  wire \NLW_MMCM_BASE_inst_DO<9>_UNCONNECTED ;
  wire \NLW_MMCM_BASE_inst_DO<8>_UNCONNECTED ;
  wire \NLW_MMCM_BASE_inst_DO<7>_UNCONNECTED ;
  wire \NLW_MMCM_BASE_inst_DO<6>_UNCONNECTED ;
  wire \NLW_MMCM_BASE_inst_DO<5>_UNCONNECTED ;
  wire \NLW_MMCM_BASE_inst_DO<4>_UNCONNECTED ;
  wire \NLW_MMCM_BASE_inst_DO<3>_UNCONNECTED ;
  wire \NLW_MMCM_BASE_inst_DO<2>_UNCONNECTED ;
  wire \NLW_MMCM_BASE_inst_DO<1>_UNCONNECTED ;
  wire \NLW_MMCM_BASE_inst_DO<0>_UNCONNECTED ;
  wire [15 : 0] logic_resetn;
  wire [195 : 1] \cla_inst/Madd_n0028_lut ;
  wire [194 : 0] \cla_inst/Madd_n0028_cy ;
  wire [195 : 1] \cla_inst/n0028 ;
  wire [194 : 0] \cla_inst/b ;
  wire [194 : 0] \cla_inst/a ;
  wire [194 : 0] \cla_inst/sum ;
  wire [194 : 0] \cla_inst/counter ;
  wire [32 : 0] \cla_inst/n0014_inv_wg_lut ;
  wire [32 : 0] \cla_inst/n0014_inv_wg_cy ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FDC   logic_resetn_0 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(logic_resetn[1]),
    .Q(logic_resetn[0])
  );
  FDC   logic_resetn_1 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(logic_resetn[2]),
    .Q(logic_resetn[1])
  );
  FDC   logic_resetn_2 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(logic_resetn[3]),
    .Q(logic_resetn[2])
  );
  FDC   logic_resetn_3 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(logic_resetn[4]),
    .Q(logic_resetn[3])
  );
  FDC   logic_resetn_4 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(logic_resetn[5]),
    .Q(logic_resetn[4])
  );
  FDC   logic_resetn_5 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(logic_resetn[6]),
    .Q(logic_resetn[5])
  );
  FDC   logic_resetn_6 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(logic_resetn[7]),
    .Q(logic_resetn[6])
  );
  FDC   logic_resetn_7 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(logic_resetn[8]),
    .Q(logic_resetn[7])
  );
  FDC   logic_resetn_8 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(logic_resetn[9]),
    .Q(logic_resetn[8])
  );
  FDC   logic_resetn_9 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(logic_resetn[10]),
    .Q(logic_resetn[9])
  );
  FDC   logic_resetn_10 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(logic_resetn[11]),
    .Q(logic_resetn[10])
  );
  FDC   logic_resetn_11 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(logic_resetn[12]),
    .Q(logic_resetn[11])
  );
  FDC   logic_resetn_12 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(logic_resetn[13]),
    .Q(logic_resetn[12])
  );
  FDC   logic_resetn_13 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(logic_resetn[14]),
    .Q(logic_resetn[13])
  );
  FDC   logic_resetn_14 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(logic_resetn[15]),
    .Q(logic_resetn[14])
  );
  FDC   logic_resetn_15 (
    .C(clk_bufg),
    .CLR(locked_inv),
    .D(N0),
    .Q(logic_resetn[15])
  );
  BUFG   bufgctrl_fb (
    .O(clkfbout_bufg),
    .I(clkfbout)
  );
  BUFG   bufgctrl_clk (
    .O(clk_bufg),
    .I(int_clk)
  );
  MMCM_ADV #(
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLKOUT4_CASCADE ( "FALSE" ),
    .CLOCK_HOLD ( "FALSE" ),
    .STARTUP_WAIT ( "FALSE" ),
    .CLKOUT1_DIVIDE ( 3 ),
    .CLKOUT2_DIVIDE ( 1 ),
    .CLKOUT3_DIVIDE ( 1 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .CLKOUT6_DIVIDE ( 1 ),
    .DIVCLK_DIVIDE ( 1 ),
    .CLKFBOUT_MULT_F ( 8.000000 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKIN1_PERIOD ( 15.150000 ),
    .CLKOUT0_DIVIDE_F ( 1.000000 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT0_PHASE ( 0.000000 ),
    .CLKOUT1_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_PHASE ( 0.000000 ),
    .CLKOUT2_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT2_PHASE ( 0.000000 ),
    .CLKOUT3_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT3_PHASE ( 0.000000 ),
    .CLKOUT4_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT4_PHASE ( 0.000000 ),
    .CLKOUT5_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT5_PHASE ( 0.000000 ),
    .CLKOUT6_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT6_PHASE ( 0.000000 ),
    .REF_JITTER1 ( 0.000000 ),
    .CLKIN2_PERIOD ( 10.000 ),
    .REF_JITTER2 ( 0.010000 ),
    .CLKFBOUT_USE_FINE_PS ( "FALSE" ),
    .CLKOUT0_USE_FINE_PS ( "FALSE" ),
    .CLKOUT1_USE_FINE_PS ( "FALSE" ),
    .CLKOUT2_USE_FINE_PS ( "FALSE" ),
    .CLKOUT3_USE_FINE_PS ( "FALSE" ),
    .CLKOUT4_USE_FINE_PS ( "FALSE" ),
    .CLKOUT5_USE_FINE_PS ( "FALSE" ),
    .CLKOUT6_USE_FINE_PS ( "FALSE" ),
    .COMPENSATION ( "ZHOLD" ))
  MMCM_BASE_inst (
    .CLKOUT3(NLW_MMCM_BASE_inst_CLKOUT3_UNCONNECTED),
    .CLKFBIN(clkfbout_bufg),
    .PSCLK(N1),
    .CLKOUT3B(NLW_MMCM_BASE_inst_CLKOUT3B_UNCONNECTED),
    .PWRDWN(N1),
    .DCLK(N1),
    .CLKFBOUT(clkfbout),
    .CLKFBSTOPPED(NLW_MMCM_BASE_inst_CLKFBSTOPPED_UNCONNECTED),
    .CLKFBOUTB(NLW_MMCM_BASE_inst_CLKFBOUTB_UNCONNECTED),
    .CLKOUT1(int_clk),
    .DEN(N1),
    .CLKOUT5(NLW_MMCM_BASE_inst_CLKOUT5_UNCONNECTED),
    .CLKINSEL(N0),
    .CLKIN2(N1),
    .DRDY(NLW_MMCM_BASE_inst_DRDY_UNCONNECTED),
    .RST(rst_IBUF_0),
    .PSINCDEC(N1),
    .DWE(N1),
    .PSEN(N1),
    .CLKOUT0(NLW_MMCM_BASE_inst_CLKOUT0_UNCONNECTED),
    .CLKOUT4(NLW_MMCM_BASE_inst_CLKOUT4_UNCONNECTED),
    .CLKOUT1B(NLW_MMCM_BASE_inst_CLKOUT1B_UNCONNECTED),
    .CLKINSTOPPED(NLW_MMCM_BASE_inst_CLKINSTOPPED_UNCONNECTED),
    .CLKOUT0B(NLW_MMCM_BASE_inst_CLKOUT0B_UNCONNECTED),
    .CLKIN1(user_clk_IBUF_1665),
    .CLKOUT2(NLW_MMCM_BASE_inst_CLKOUT2_UNCONNECTED),
    .CLKOUT2B(NLW_MMCM_BASE_inst_CLKOUT2B_UNCONNECTED),
    .PSDONE(NLW_MMCM_BASE_inst_PSDONE_UNCONNECTED),
    .CLKOUT6(NLW_MMCM_BASE_inst_CLKOUT6_UNCONNECTED),
    .LOCKED(locked_OBUF_4),
    .DI({N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1}),
    .DO({\NLW_MMCM_BASE_inst_DO<15>_UNCONNECTED , \NLW_MMCM_BASE_inst_DO<14>_UNCONNECTED , \NLW_MMCM_BASE_inst_DO<13>_UNCONNECTED , 
\NLW_MMCM_BASE_inst_DO<12>_UNCONNECTED , \NLW_MMCM_BASE_inst_DO<11>_UNCONNECTED , \NLW_MMCM_BASE_inst_DO<10>_UNCONNECTED , 
\NLW_MMCM_BASE_inst_DO<9>_UNCONNECTED , \NLW_MMCM_BASE_inst_DO<8>_UNCONNECTED , \NLW_MMCM_BASE_inst_DO<7>_UNCONNECTED , 
\NLW_MMCM_BASE_inst_DO<6>_UNCONNECTED , \NLW_MMCM_BASE_inst_DO<5>_UNCONNECTED , \NLW_MMCM_BASE_inst_DO<4>_UNCONNECTED , 
\NLW_MMCM_BASE_inst_DO<3>_UNCONNECTED , \NLW_MMCM_BASE_inst_DO<2>_UNCONNECTED , \NLW_MMCM_BASE_inst_DO<1>_UNCONNECTED , 
\NLW_MMCM_BASE_inst_DO<0>_UNCONNECTED }),
    .DADDR({N1, N1, N1, N1, N1, N1, N1})
  );
  XORCY   \cla_inst/Madd_n0028_xor<195>  (
    .CI(\cla_inst/Madd_n0028_cy [194]),
    .LI(\cla_inst/Madd_n0028_lut [195]),
    .O(\cla_inst/n0028 [195])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<195>  (
    .I0(\cla_inst/a [194]),
    .I1(\cla_inst/b [194]),
    .O(\cla_inst/Madd_n0028_lut [195])
  );
  XORCY   \cla_inst/Madd_n0028_xor<194>  (
    .CI(\cla_inst/Madd_n0028_cy [193]),
    .LI(\cla_inst/Madd_n0028_lut [194]),
    .O(\cla_inst/n0028 [194])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<194>  (
    .CI(\cla_inst/Madd_n0028_cy [193]),
    .DI(\cla_inst/a [193]),
    .S(\cla_inst/Madd_n0028_lut [194]),
    .O(\cla_inst/Madd_n0028_cy [194])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<194>  (
    .I0(\cla_inst/a [193]),
    .I1(\cla_inst/b [193]),
    .O(\cla_inst/Madd_n0028_lut [194])
  );
  XORCY   \cla_inst/Madd_n0028_xor<193>  (
    .CI(\cla_inst/Madd_n0028_cy [192]),
    .LI(\cla_inst/Madd_n0028_lut [193]),
    .O(\cla_inst/n0028 [193])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<193>  (
    .CI(\cla_inst/Madd_n0028_cy [192]),
    .DI(\cla_inst/a [192]),
    .S(\cla_inst/Madd_n0028_lut [193]),
    .O(\cla_inst/Madd_n0028_cy [193])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<193>  (
    .I0(\cla_inst/a [192]),
    .I1(\cla_inst/b [192]),
    .O(\cla_inst/Madd_n0028_lut [193])
  );
  XORCY   \cla_inst/Madd_n0028_xor<192>  (
    .CI(\cla_inst/Madd_n0028_cy [191]),
    .LI(\cla_inst/Madd_n0028_lut [192]),
    .O(\cla_inst/n0028 [192])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<192>  (
    .CI(\cla_inst/Madd_n0028_cy [191]),
    .DI(\cla_inst/a [191]),
    .S(\cla_inst/Madd_n0028_lut [192]),
    .O(\cla_inst/Madd_n0028_cy [192])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<192>  (
    .I0(\cla_inst/a [191]),
    .I1(\cla_inst/b [191]),
    .O(\cla_inst/Madd_n0028_lut [192])
  );
  XORCY   \cla_inst/Madd_n0028_xor<191>  (
    .CI(\cla_inst/Madd_n0028_cy [190]),
    .LI(\cla_inst/Madd_n0028_lut [191]),
    .O(\cla_inst/n0028 [191])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<191>  (
    .CI(\cla_inst/Madd_n0028_cy [190]),
    .DI(\cla_inst/a [190]),
    .S(\cla_inst/Madd_n0028_lut [191]),
    .O(\cla_inst/Madd_n0028_cy [191])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<191>  (
    .I0(\cla_inst/a [190]),
    .I1(\cla_inst/b [190]),
    .O(\cla_inst/Madd_n0028_lut [191])
  );
  XORCY   \cla_inst/Madd_n0028_xor<190>  (
    .CI(\cla_inst/Madd_n0028_cy [189]),
    .LI(\cla_inst/Madd_n0028_lut [190]),
    .O(\cla_inst/n0028 [190])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<190>  (
    .CI(\cla_inst/Madd_n0028_cy [189]),
    .DI(\cla_inst/a [189]),
    .S(\cla_inst/Madd_n0028_lut [190]),
    .O(\cla_inst/Madd_n0028_cy [190])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<190>  (
    .I0(\cla_inst/a [189]),
    .I1(\cla_inst/b [189]),
    .O(\cla_inst/Madd_n0028_lut [190])
  );
  XORCY   \cla_inst/Madd_n0028_xor<189>  (
    .CI(\cla_inst/Madd_n0028_cy [188]),
    .LI(\cla_inst/Madd_n0028_lut [189]),
    .O(\cla_inst/n0028 [189])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<189>  (
    .CI(\cla_inst/Madd_n0028_cy [188]),
    .DI(\cla_inst/a [188]),
    .S(\cla_inst/Madd_n0028_lut [189]),
    .O(\cla_inst/Madd_n0028_cy [189])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<189>  (
    .I0(\cla_inst/a [188]),
    .I1(\cla_inst/b [188]),
    .O(\cla_inst/Madd_n0028_lut [189])
  );
  XORCY   \cla_inst/Madd_n0028_xor<188>  (
    .CI(\cla_inst/Madd_n0028_cy [187]),
    .LI(\cla_inst/Madd_n0028_lut [188]),
    .O(\cla_inst/n0028 [188])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<188>  (
    .CI(\cla_inst/Madd_n0028_cy [187]),
    .DI(\cla_inst/a [187]),
    .S(\cla_inst/Madd_n0028_lut [188]),
    .O(\cla_inst/Madd_n0028_cy [188])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<188>  (
    .I0(\cla_inst/a [187]),
    .I1(\cla_inst/b [187]),
    .O(\cla_inst/Madd_n0028_lut [188])
  );
  XORCY   \cla_inst/Madd_n0028_xor<187>  (
    .CI(\cla_inst/Madd_n0028_cy [186]),
    .LI(\cla_inst/Madd_n0028_lut [187]),
    .O(\cla_inst/n0028 [187])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<187>  (
    .CI(\cla_inst/Madd_n0028_cy [186]),
    .DI(\cla_inst/a [186]),
    .S(\cla_inst/Madd_n0028_lut [187]),
    .O(\cla_inst/Madd_n0028_cy [187])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<187>  (
    .I0(\cla_inst/a [186]),
    .I1(\cla_inst/b [186]),
    .O(\cla_inst/Madd_n0028_lut [187])
  );
  XORCY   \cla_inst/Madd_n0028_xor<186>  (
    .CI(\cla_inst/Madd_n0028_cy [185]),
    .LI(\cla_inst/Madd_n0028_lut [186]),
    .O(\cla_inst/n0028 [186])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<186>  (
    .CI(\cla_inst/Madd_n0028_cy [185]),
    .DI(\cla_inst/a [185]),
    .S(\cla_inst/Madd_n0028_lut [186]),
    .O(\cla_inst/Madd_n0028_cy [186])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<186>  (
    .I0(\cla_inst/a [185]),
    .I1(\cla_inst/b [185]),
    .O(\cla_inst/Madd_n0028_lut [186])
  );
  XORCY   \cla_inst/Madd_n0028_xor<185>  (
    .CI(\cla_inst/Madd_n0028_cy [184]),
    .LI(\cla_inst/Madd_n0028_lut [185]),
    .O(\cla_inst/n0028 [185])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<185>  (
    .CI(\cla_inst/Madd_n0028_cy [184]),
    .DI(\cla_inst/a [184]),
    .S(\cla_inst/Madd_n0028_lut [185]),
    .O(\cla_inst/Madd_n0028_cy [185])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<185>  (
    .I0(\cla_inst/a [184]),
    .I1(\cla_inst/b [184]),
    .O(\cla_inst/Madd_n0028_lut [185])
  );
  XORCY   \cla_inst/Madd_n0028_xor<184>  (
    .CI(\cla_inst/Madd_n0028_cy [183]),
    .LI(\cla_inst/Madd_n0028_lut [184]),
    .O(\cla_inst/n0028 [184])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<184>  (
    .CI(\cla_inst/Madd_n0028_cy [183]),
    .DI(\cla_inst/a [183]),
    .S(\cla_inst/Madd_n0028_lut [184]),
    .O(\cla_inst/Madd_n0028_cy [184])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<184>  (
    .I0(\cla_inst/a [183]),
    .I1(\cla_inst/b [183]),
    .O(\cla_inst/Madd_n0028_lut [184])
  );
  XORCY   \cla_inst/Madd_n0028_xor<183>  (
    .CI(\cla_inst/Madd_n0028_cy [182]),
    .LI(\cla_inst/Madd_n0028_lut [183]),
    .O(\cla_inst/n0028 [183])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<183>  (
    .CI(\cla_inst/Madd_n0028_cy [182]),
    .DI(\cla_inst/a [182]),
    .S(\cla_inst/Madd_n0028_lut [183]),
    .O(\cla_inst/Madd_n0028_cy [183])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<183>  (
    .I0(\cla_inst/a [182]),
    .I1(\cla_inst/b [182]),
    .O(\cla_inst/Madd_n0028_lut [183])
  );
  XORCY   \cla_inst/Madd_n0028_xor<182>  (
    .CI(\cla_inst/Madd_n0028_cy [181]),
    .LI(\cla_inst/Madd_n0028_lut [182]),
    .O(\cla_inst/n0028 [182])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<182>  (
    .CI(\cla_inst/Madd_n0028_cy [181]),
    .DI(\cla_inst/a [181]),
    .S(\cla_inst/Madd_n0028_lut [182]),
    .O(\cla_inst/Madd_n0028_cy [182])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<182>  (
    .I0(\cla_inst/a [181]),
    .I1(\cla_inst/b [181]),
    .O(\cla_inst/Madd_n0028_lut [182])
  );
  XORCY   \cla_inst/Madd_n0028_xor<181>  (
    .CI(\cla_inst/Madd_n0028_cy [180]),
    .LI(\cla_inst/Madd_n0028_lut [181]),
    .O(\cla_inst/n0028 [181])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<181>  (
    .CI(\cla_inst/Madd_n0028_cy [180]),
    .DI(\cla_inst/a [180]),
    .S(\cla_inst/Madd_n0028_lut [181]),
    .O(\cla_inst/Madd_n0028_cy [181])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<181>  (
    .I0(\cla_inst/a [180]),
    .I1(\cla_inst/b [180]),
    .O(\cla_inst/Madd_n0028_lut [181])
  );
  XORCY   \cla_inst/Madd_n0028_xor<180>  (
    .CI(\cla_inst/Madd_n0028_cy [179]),
    .LI(\cla_inst/Madd_n0028_lut [180]),
    .O(\cla_inst/n0028 [180])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<180>  (
    .CI(\cla_inst/Madd_n0028_cy [179]),
    .DI(\cla_inst/a [179]),
    .S(\cla_inst/Madd_n0028_lut [180]),
    .O(\cla_inst/Madd_n0028_cy [180])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<180>  (
    .I0(\cla_inst/a [179]),
    .I1(\cla_inst/b [179]),
    .O(\cla_inst/Madd_n0028_lut [180])
  );
  XORCY   \cla_inst/Madd_n0028_xor<179>  (
    .CI(\cla_inst/Madd_n0028_cy [178]),
    .LI(\cla_inst/Madd_n0028_lut [179]),
    .O(\cla_inst/n0028 [179])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<179>  (
    .CI(\cla_inst/Madd_n0028_cy [178]),
    .DI(\cla_inst/a [178]),
    .S(\cla_inst/Madd_n0028_lut [179]),
    .O(\cla_inst/Madd_n0028_cy [179])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<179>  (
    .I0(\cla_inst/a [178]),
    .I1(\cla_inst/b [178]),
    .O(\cla_inst/Madd_n0028_lut [179])
  );
  XORCY   \cla_inst/Madd_n0028_xor<178>  (
    .CI(\cla_inst/Madd_n0028_cy [177]),
    .LI(\cla_inst/Madd_n0028_lut [178]),
    .O(\cla_inst/n0028 [178])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<178>  (
    .CI(\cla_inst/Madd_n0028_cy [177]),
    .DI(\cla_inst/a [177]),
    .S(\cla_inst/Madd_n0028_lut [178]),
    .O(\cla_inst/Madd_n0028_cy [178])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<178>  (
    .I0(\cla_inst/a [177]),
    .I1(\cla_inst/b [177]),
    .O(\cla_inst/Madd_n0028_lut [178])
  );
  XORCY   \cla_inst/Madd_n0028_xor<177>  (
    .CI(\cla_inst/Madd_n0028_cy [176]),
    .LI(\cla_inst/Madd_n0028_lut [177]),
    .O(\cla_inst/n0028 [177])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<177>  (
    .CI(\cla_inst/Madd_n0028_cy [176]),
    .DI(\cla_inst/a [176]),
    .S(\cla_inst/Madd_n0028_lut [177]),
    .O(\cla_inst/Madd_n0028_cy [177])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<177>  (
    .I0(\cla_inst/a [176]),
    .I1(\cla_inst/b [176]),
    .O(\cla_inst/Madd_n0028_lut [177])
  );
  XORCY   \cla_inst/Madd_n0028_xor<176>  (
    .CI(\cla_inst/Madd_n0028_cy [175]),
    .LI(\cla_inst/Madd_n0028_lut [176]),
    .O(\cla_inst/n0028 [176])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<176>  (
    .CI(\cla_inst/Madd_n0028_cy [175]),
    .DI(\cla_inst/a [175]),
    .S(\cla_inst/Madd_n0028_lut [176]),
    .O(\cla_inst/Madd_n0028_cy [176])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<176>  (
    .I0(\cla_inst/a [175]),
    .I1(\cla_inst/b [175]),
    .O(\cla_inst/Madd_n0028_lut [176])
  );
  XORCY   \cla_inst/Madd_n0028_xor<175>  (
    .CI(\cla_inst/Madd_n0028_cy [174]),
    .LI(\cla_inst/Madd_n0028_lut [175]),
    .O(\cla_inst/n0028 [175])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<175>  (
    .CI(\cla_inst/Madd_n0028_cy [174]),
    .DI(\cla_inst/a [174]),
    .S(\cla_inst/Madd_n0028_lut [175]),
    .O(\cla_inst/Madd_n0028_cy [175])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<175>  (
    .I0(\cla_inst/a [174]),
    .I1(\cla_inst/b [174]),
    .O(\cla_inst/Madd_n0028_lut [175])
  );
  XORCY   \cla_inst/Madd_n0028_xor<174>  (
    .CI(\cla_inst/Madd_n0028_cy [173]),
    .LI(\cla_inst/Madd_n0028_lut [174]),
    .O(\cla_inst/n0028 [174])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<174>  (
    .CI(\cla_inst/Madd_n0028_cy [173]),
    .DI(\cla_inst/a [173]),
    .S(\cla_inst/Madd_n0028_lut [174]),
    .O(\cla_inst/Madd_n0028_cy [174])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<174>  (
    .I0(\cla_inst/a [173]),
    .I1(\cla_inst/b [173]),
    .O(\cla_inst/Madd_n0028_lut [174])
  );
  XORCY   \cla_inst/Madd_n0028_xor<173>  (
    .CI(\cla_inst/Madd_n0028_cy [172]),
    .LI(\cla_inst/Madd_n0028_lut [173]),
    .O(\cla_inst/n0028 [173])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<173>  (
    .CI(\cla_inst/Madd_n0028_cy [172]),
    .DI(\cla_inst/a [172]),
    .S(\cla_inst/Madd_n0028_lut [173]),
    .O(\cla_inst/Madd_n0028_cy [173])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<173>  (
    .I0(\cla_inst/a [172]),
    .I1(\cla_inst/b [172]),
    .O(\cla_inst/Madd_n0028_lut [173])
  );
  XORCY   \cla_inst/Madd_n0028_xor<172>  (
    .CI(\cla_inst/Madd_n0028_cy [171]),
    .LI(\cla_inst/Madd_n0028_lut [172]),
    .O(\cla_inst/n0028 [172])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<172>  (
    .CI(\cla_inst/Madd_n0028_cy [171]),
    .DI(\cla_inst/a [171]),
    .S(\cla_inst/Madd_n0028_lut [172]),
    .O(\cla_inst/Madd_n0028_cy [172])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<172>  (
    .I0(\cla_inst/a [171]),
    .I1(\cla_inst/b [171]),
    .O(\cla_inst/Madd_n0028_lut [172])
  );
  XORCY   \cla_inst/Madd_n0028_xor<171>  (
    .CI(\cla_inst/Madd_n0028_cy [170]),
    .LI(\cla_inst/Madd_n0028_lut [171]),
    .O(\cla_inst/n0028 [171])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<171>  (
    .CI(\cla_inst/Madd_n0028_cy [170]),
    .DI(\cla_inst/a [170]),
    .S(\cla_inst/Madd_n0028_lut [171]),
    .O(\cla_inst/Madd_n0028_cy [171])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<171>  (
    .I0(\cla_inst/a [170]),
    .I1(\cla_inst/b [170]),
    .O(\cla_inst/Madd_n0028_lut [171])
  );
  XORCY   \cla_inst/Madd_n0028_xor<170>  (
    .CI(\cla_inst/Madd_n0028_cy [169]),
    .LI(\cla_inst/Madd_n0028_lut [170]),
    .O(\cla_inst/n0028 [170])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<170>  (
    .CI(\cla_inst/Madd_n0028_cy [169]),
    .DI(\cla_inst/a [169]),
    .S(\cla_inst/Madd_n0028_lut [170]),
    .O(\cla_inst/Madd_n0028_cy [170])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<170>  (
    .I0(\cla_inst/a [169]),
    .I1(\cla_inst/b [169]),
    .O(\cla_inst/Madd_n0028_lut [170])
  );
  XORCY   \cla_inst/Madd_n0028_xor<169>  (
    .CI(\cla_inst/Madd_n0028_cy [168]),
    .LI(\cla_inst/Madd_n0028_lut [169]),
    .O(\cla_inst/n0028 [169])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<169>  (
    .CI(\cla_inst/Madd_n0028_cy [168]),
    .DI(\cla_inst/a [168]),
    .S(\cla_inst/Madd_n0028_lut [169]),
    .O(\cla_inst/Madd_n0028_cy [169])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<169>  (
    .I0(\cla_inst/a [168]),
    .I1(\cla_inst/b [168]),
    .O(\cla_inst/Madd_n0028_lut [169])
  );
  XORCY   \cla_inst/Madd_n0028_xor<168>  (
    .CI(\cla_inst/Madd_n0028_cy [167]),
    .LI(\cla_inst/Madd_n0028_lut [168]),
    .O(\cla_inst/n0028 [168])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<168>  (
    .CI(\cla_inst/Madd_n0028_cy [167]),
    .DI(\cla_inst/a [167]),
    .S(\cla_inst/Madd_n0028_lut [168]),
    .O(\cla_inst/Madd_n0028_cy [168])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<168>  (
    .I0(\cla_inst/a [167]),
    .I1(\cla_inst/b [167]),
    .O(\cla_inst/Madd_n0028_lut [168])
  );
  XORCY   \cla_inst/Madd_n0028_xor<167>  (
    .CI(\cla_inst/Madd_n0028_cy [166]),
    .LI(\cla_inst/Madd_n0028_lut [167]),
    .O(\cla_inst/n0028 [167])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<167>  (
    .CI(\cla_inst/Madd_n0028_cy [166]),
    .DI(\cla_inst/a [166]),
    .S(\cla_inst/Madd_n0028_lut [167]),
    .O(\cla_inst/Madd_n0028_cy [167])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<167>  (
    .I0(\cla_inst/a [166]),
    .I1(\cla_inst/b [166]),
    .O(\cla_inst/Madd_n0028_lut [167])
  );
  XORCY   \cla_inst/Madd_n0028_xor<166>  (
    .CI(\cla_inst/Madd_n0028_cy [165]),
    .LI(\cla_inst/Madd_n0028_lut [166]),
    .O(\cla_inst/n0028 [166])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<166>  (
    .CI(\cla_inst/Madd_n0028_cy [165]),
    .DI(\cla_inst/a [165]),
    .S(\cla_inst/Madd_n0028_lut [166]),
    .O(\cla_inst/Madd_n0028_cy [166])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<166>  (
    .I0(\cla_inst/a [165]),
    .I1(\cla_inst/b [165]),
    .O(\cla_inst/Madd_n0028_lut [166])
  );
  XORCY   \cla_inst/Madd_n0028_xor<165>  (
    .CI(\cla_inst/Madd_n0028_cy [164]),
    .LI(\cla_inst/Madd_n0028_lut [165]),
    .O(\cla_inst/n0028 [165])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<165>  (
    .CI(\cla_inst/Madd_n0028_cy [164]),
    .DI(\cla_inst/a [164]),
    .S(\cla_inst/Madd_n0028_lut [165]),
    .O(\cla_inst/Madd_n0028_cy [165])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<165>  (
    .I0(\cla_inst/a [164]),
    .I1(\cla_inst/b [164]),
    .O(\cla_inst/Madd_n0028_lut [165])
  );
  XORCY   \cla_inst/Madd_n0028_xor<164>  (
    .CI(\cla_inst/Madd_n0028_cy [163]),
    .LI(\cla_inst/Madd_n0028_lut [164]),
    .O(\cla_inst/n0028 [164])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<164>  (
    .CI(\cla_inst/Madd_n0028_cy [163]),
    .DI(\cla_inst/a [163]),
    .S(\cla_inst/Madd_n0028_lut [164]),
    .O(\cla_inst/Madd_n0028_cy [164])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<164>  (
    .I0(\cla_inst/a [163]),
    .I1(\cla_inst/b [163]),
    .O(\cla_inst/Madd_n0028_lut [164])
  );
  XORCY   \cla_inst/Madd_n0028_xor<163>  (
    .CI(\cla_inst/Madd_n0028_cy [162]),
    .LI(\cla_inst/Madd_n0028_lut [163]),
    .O(\cla_inst/n0028 [163])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<163>  (
    .CI(\cla_inst/Madd_n0028_cy [162]),
    .DI(\cla_inst/a [162]),
    .S(\cla_inst/Madd_n0028_lut [163]),
    .O(\cla_inst/Madd_n0028_cy [163])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<163>  (
    .I0(\cla_inst/a [162]),
    .I1(\cla_inst/b [162]),
    .O(\cla_inst/Madd_n0028_lut [163])
  );
  XORCY   \cla_inst/Madd_n0028_xor<162>  (
    .CI(\cla_inst/Madd_n0028_cy [161]),
    .LI(\cla_inst/Madd_n0028_lut [162]),
    .O(\cla_inst/n0028 [162])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<162>  (
    .CI(\cla_inst/Madd_n0028_cy [161]),
    .DI(\cla_inst/a [161]),
    .S(\cla_inst/Madd_n0028_lut [162]),
    .O(\cla_inst/Madd_n0028_cy [162])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<162>  (
    .I0(\cla_inst/a [161]),
    .I1(\cla_inst/b [161]),
    .O(\cla_inst/Madd_n0028_lut [162])
  );
  XORCY   \cla_inst/Madd_n0028_xor<161>  (
    .CI(\cla_inst/Madd_n0028_cy [160]),
    .LI(\cla_inst/Madd_n0028_lut [161]),
    .O(\cla_inst/n0028 [161])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<161>  (
    .CI(\cla_inst/Madd_n0028_cy [160]),
    .DI(\cla_inst/a [160]),
    .S(\cla_inst/Madd_n0028_lut [161]),
    .O(\cla_inst/Madd_n0028_cy [161])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<161>  (
    .I0(\cla_inst/a [160]),
    .I1(\cla_inst/b [160]),
    .O(\cla_inst/Madd_n0028_lut [161])
  );
  XORCY   \cla_inst/Madd_n0028_xor<160>  (
    .CI(\cla_inst/Madd_n0028_cy [159]),
    .LI(\cla_inst/Madd_n0028_lut [160]),
    .O(\cla_inst/n0028 [160])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<160>  (
    .CI(\cla_inst/Madd_n0028_cy [159]),
    .DI(\cla_inst/a [159]),
    .S(\cla_inst/Madd_n0028_lut [160]),
    .O(\cla_inst/Madd_n0028_cy [160])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<160>  (
    .I0(\cla_inst/a [159]),
    .I1(\cla_inst/b [159]),
    .O(\cla_inst/Madd_n0028_lut [160])
  );
  XORCY   \cla_inst/Madd_n0028_xor<159>  (
    .CI(\cla_inst/Madd_n0028_cy [158]),
    .LI(\cla_inst/Madd_n0028_lut [159]),
    .O(\cla_inst/n0028 [159])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<159>  (
    .CI(\cla_inst/Madd_n0028_cy [158]),
    .DI(\cla_inst/a [158]),
    .S(\cla_inst/Madd_n0028_lut [159]),
    .O(\cla_inst/Madd_n0028_cy [159])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<159>  (
    .I0(\cla_inst/a [158]),
    .I1(\cla_inst/b [158]),
    .O(\cla_inst/Madd_n0028_lut [159])
  );
  XORCY   \cla_inst/Madd_n0028_xor<158>  (
    .CI(\cla_inst/Madd_n0028_cy [157]),
    .LI(\cla_inst/Madd_n0028_lut [158]),
    .O(\cla_inst/n0028 [158])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<158>  (
    .CI(\cla_inst/Madd_n0028_cy [157]),
    .DI(\cla_inst/a [157]),
    .S(\cla_inst/Madd_n0028_lut [158]),
    .O(\cla_inst/Madd_n0028_cy [158])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<158>  (
    .I0(\cla_inst/a [157]),
    .I1(\cla_inst/b [157]),
    .O(\cla_inst/Madd_n0028_lut [158])
  );
  XORCY   \cla_inst/Madd_n0028_xor<157>  (
    .CI(\cla_inst/Madd_n0028_cy [156]),
    .LI(\cla_inst/Madd_n0028_lut [157]),
    .O(\cla_inst/n0028 [157])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<157>  (
    .CI(\cla_inst/Madd_n0028_cy [156]),
    .DI(\cla_inst/a [156]),
    .S(\cla_inst/Madd_n0028_lut [157]),
    .O(\cla_inst/Madd_n0028_cy [157])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<157>  (
    .I0(\cla_inst/a [156]),
    .I1(\cla_inst/b [156]),
    .O(\cla_inst/Madd_n0028_lut [157])
  );
  XORCY   \cla_inst/Madd_n0028_xor<156>  (
    .CI(\cla_inst/Madd_n0028_cy [155]),
    .LI(\cla_inst/Madd_n0028_lut [156]),
    .O(\cla_inst/n0028 [156])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<156>  (
    .CI(\cla_inst/Madd_n0028_cy [155]),
    .DI(\cla_inst/a [155]),
    .S(\cla_inst/Madd_n0028_lut [156]),
    .O(\cla_inst/Madd_n0028_cy [156])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<156>  (
    .I0(\cla_inst/a [155]),
    .I1(\cla_inst/b [155]),
    .O(\cla_inst/Madd_n0028_lut [156])
  );
  XORCY   \cla_inst/Madd_n0028_xor<155>  (
    .CI(\cla_inst/Madd_n0028_cy [154]),
    .LI(\cla_inst/Madd_n0028_lut [155]),
    .O(\cla_inst/n0028 [155])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<155>  (
    .CI(\cla_inst/Madd_n0028_cy [154]),
    .DI(\cla_inst/a [154]),
    .S(\cla_inst/Madd_n0028_lut [155]),
    .O(\cla_inst/Madd_n0028_cy [155])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<155>  (
    .I0(\cla_inst/a [154]),
    .I1(\cla_inst/b [154]),
    .O(\cla_inst/Madd_n0028_lut [155])
  );
  XORCY   \cla_inst/Madd_n0028_xor<154>  (
    .CI(\cla_inst/Madd_n0028_cy [153]),
    .LI(\cla_inst/Madd_n0028_lut [154]),
    .O(\cla_inst/n0028 [154])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<154>  (
    .CI(\cla_inst/Madd_n0028_cy [153]),
    .DI(\cla_inst/a [153]),
    .S(\cla_inst/Madd_n0028_lut [154]),
    .O(\cla_inst/Madd_n0028_cy [154])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<154>  (
    .I0(\cla_inst/a [153]),
    .I1(\cla_inst/b [153]),
    .O(\cla_inst/Madd_n0028_lut [154])
  );
  XORCY   \cla_inst/Madd_n0028_xor<153>  (
    .CI(\cla_inst/Madd_n0028_cy [152]),
    .LI(\cla_inst/Madd_n0028_lut [153]),
    .O(\cla_inst/n0028 [153])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<153>  (
    .CI(\cla_inst/Madd_n0028_cy [152]),
    .DI(\cla_inst/a [152]),
    .S(\cla_inst/Madd_n0028_lut [153]),
    .O(\cla_inst/Madd_n0028_cy [153])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<153>  (
    .I0(\cla_inst/a [152]),
    .I1(\cla_inst/b [152]),
    .O(\cla_inst/Madd_n0028_lut [153])
  );
  XORCY   \cla_inst/Madd_n0028_xor<152>  (
    .CI(\cla_inst/Madd_n0028_cy [151]),
    .LI(\cla_inst/Madd_n0028_lut [152]),
    .O(\cla_inst/n0028 [152])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<152>  (
    .CI(\cla_inst/Madd_n0028_cy [151]),
    .DI(\cla_inst/a [151]),
    .S(\cla_inst/Madd_n0028_lut [152]),
    .O(\cla_inst/Madd_n0028_cy [152])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<152>  (
    .I0(\cla_inst/a [151]),
    .I1(\cla_inst/b [151]),
    .O(\cla_inst/Madd_n0028_lut [152])
  );
  XORCY   \cla_inst/Madd_n0028_xor<151>  (
    .CI(\cla_inst/Madd_n0028_cy [150]),
    .LI(\cla_inst/Madd_n0028_lut [151]),
    .O(\cla_inst/n0028 [151])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<151>  (
    .CI(\cla_inst/Madd_n0028_cy [150]),
    .DI(\cla_inst/a [150]),
    .S(\cla_inst/Madd_n0028_lut [151]),
    .O(\cla_inst/Madd_n0028_cy [151])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<151>  (
    .I0(\cla_inst/a [150]),
    .I1(\cla_inst/b [150]),
    .O(\cla_inst/Madd_n0028_lut [151])
  );
  XORCY   \cla_inst/Madd_n0028_xor<150>  (
    .CI(\cla_inst/Madd_n0028_cy [149]),
    .LI(\cla_inst/Madd_n0028_lut [150]),
    .O(\cla_inst/n0028 [150])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<150>  (
    .CI(\cla_inst/Madd_n0028_cy [149]),
    .DI(\cla_inst/a [149]),
    .S(\cla_inst/Madd_n0028_lut [150]),
    .O(\cla_inst/Madd_n0028_cy [150])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<150>  (
    .I0(\cla_inst/a [149]),
    .I1(\cla_inst/b [149]),
    .O(\cla_inst/Madd_n0028_lut [150])
  );
  XORCY   \cla_inst/Madd_n0028_xor<149>  (
    .CI(\cla_inst/Madd_n0028_cy [148]),
    .LI(\cla_inst/Madd_n0028_lut [149]),
    .O(\cla_inst/n0028 [149])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<149>  (
    .CI(\cla_inst/Madd_n0028_cy [148]),
    .DI(\cla_inst/a [148]),
    .S(\cla_inst/Madd_n0028_lut [149]),
    .O(\cla_inst/Madd_n0028_cy [149])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<149>  (
    .I0(\cla_inst/a [148]),
    .I1(\cla_inst/b [148]),
    .O(\cla_inst/Madd_n0028_lut [149])
  );
  XORCY   \cla_inst/Madd_n0028_xor<148>  (
    .CI(\cla_inst/Madd_n0028_cy [147]),
    .LI(\cla_inst/Madd_n0028_lut [148]),
    .O(\cla_inst/n0028 [148])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<148>  (
    .CI(\cla_inst/Madd_n0028_cy [147]),
    .DI(\cla_inst/a [147]),
    .S(\cla_inst/Madd_n0028_lut [148]),
    .O(\cla_inst/Madd_n0028_cy [148])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<148>  (
    .I0(\cla_inst/a [147]),
    .I1(\cla_inst/b [147]),
    .O(\cla_inst/Madd_n0028_lut [148])
  );
  XORCY   \cla_inst/Madd_n0028_xor<147>  (
    .CI(\cla_inst/Madd_n0028_cy [146]),
    .LI(\cla_inst/Madd_n0028_lut [147]),
    .O(\cla_inst/n0028 [147])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<147>  (
    .CI(\cla_inst/Madd_n0028_cy [146]),
    .DI(\cla_inst/a [146]),
    .S(\cla_inst/Madd_n0028_lut [147]),
    .O(\cla_inst/Madd_n0028_cy [147])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<147>  (
    .I0(\cla_inst/a [146]),
    .I1(\cla_inst/b [146]),
    .O(\cla_inst/Madd_n0028_lut [147])
  );
  XORCY   \cla_inst/Madd_n0028_xor<146>  (
    .CI(\cla_inst/Madd_n0028_cy [145]),
    .LI(\cla_inst/Madd_n0028_lut [146]),
    .O(\cla_inst/n0028 [146])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<146>  (
    .CI(\cla_inst/Madd_n0028_cy [145]),
    .DI(\cla_inst/a [145]),
    .S(\cla_inst/Madd_n0028_lut [146]),
    .O(\cla_inst/Madd_n0028_cy [146])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<146>  (
    .I0(\cla_inst/a [145]),
    .I1(\cla_inst/b [145]),
    .O(\cla_inst/Madd_n0028_lut [146])
  );
  XORCY   \cla_inst/Madd_n0028_xor<145>  (
    .CI(\cla_inst/Madd_n0028_cy [144]),
    .LI(\cla_inst/Madd_n0028_lut [145]),
    .O(\cla_inst/n0028 [145])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<145>  (
    .CI(\cla_inst/Madd_n0028_cy [144]),
    .DI(\cla_inst/a [144]),
    .S(\cla_inst/Madd_n0028_lut [145]),
    .O(\cla_inst/Madd_n0028_cy [145])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<145>  (
    .I0(\cla_inst/a [144]),
    .I1(\cla_inst/b [144]),
    .O(\cla_inst/Madd_n0028_lut [145])
  );
  XORCY   \cla_inst/Madd_n0028_xor<144>  (
    .CI(\cla_inst/Madd_n0028_cy [143]),
    .LI(\cla_inst/Madd_n0028_lut [144]),
    .O(\cla_inst/n0028 [144])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<144>  (
    .CI(\cla_inst/Madd_n0028_cy [143]),
    .DI(\cla_inst/a [143]),
    .S(\cla_inst/Madd_n0028_lut [144]),
    .O(\cla_inst/Madd_n0028_cy [144])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<144>  (
    .I0(\cla_inst/a [143]),
    .I1(\cla_inst/b [143]),
    .O(\cla_inst/Madd_n0028_lut [144])
  );
  XORCY   \cla_inst/Madd_n0028_xor<143>  (
    .CI(\cla_inst/Madd_n0028_cy [142]),
    .LI(\cla_inst/Madd_n0028_lut [143]),
    .O(\cla_inst/n0028 [143])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<143>  (
    .CI(\cla_inst/Madd_n0028_cy [142]),
    .DI(\cla_inst/a [142]),
    .S(\cla_inst/Madd_n0028_lut [143]),
    .O(\cla_inst/Madd_n0028_cy [143])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<143>  (
    .I0(\cla_inst/a [142]),
    .I1(\cla_inst/b [142]),
    .O(\cla_inst/Madd_n0028_lut [143])
  );
  XORCY   \cla_inst/Madd_n0028_xor<142>  (
    .CI(\cla_inst/Madd_n0028_cy [141]),
    .LI(\cla_inst/Madd_n0028_lut [142]),
    .O(\cla_inst/n0028 [142])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<142>  (
    .CI(\cla_inst/Madd_n0028_cy [141]),
    .DI(\cla_inst/a [141]),
    .S(\cla_inst/Madd_n0028_lut [142]),
    .O(\cla_inst/Madd_n0028_cy [142])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<142>  (
    .I0(\cla_inst/a [141]),
    .I1(\cla_inst/b [141]),
    .O(\cla_inst/Madd_n0028_lut [142])
  );
  XORCY   \cla_inst/Madd_n0028_xor<141>  (
    .CI(\cla_inst/Madd_n0028_cy [140]),
    .LI(\cla_inst/Madd_n0028_lut [141]),
    .O(\cla_inst/n0028 [141])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<141>  (
    .CI(\cla_inst/Madd_n0028_cy [140]),
    .DI(\cla_inst/a [140]),
    .S(\cla_inst/Madd_n0028_lut [141]),
    .O(\cla_inst/Madd_n0028_cy [141])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<141>  (
    .I0(\cla_inst/a [140]),
    .I1(\cla_inst/b [140]),
    .O(\cla_inst/Madd_n0028_lut [141])
  );
  XORCY   \cla_inst/Madd_n0028_xor<140>  (
    .CI(\cla_inst/Madd_n0028_cy [139]),
    .LI(\cla_inst/Madd_n0028_lut [140]),
    .O(\cla_inst/n0028 [140])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<140>  (
    .CI(\cla_inst/Madd_n0028_cy [139]),
    .DI(\cla_inst/a [139]),
    .S(\cla_inst/Madd_n0028_lut [140]),
    .O(\cla_inst/Madd_n0028_cy [140])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<140>  (
    .I0(\cla_inst/a [139]),
    .I1(\cla_inst/b [139]),
    .O(\cla_inst/Madd_n0028_lut [140])
  );
  XORCY   \cla_inst/Madd_n0028_xor<139>  (
    .CI(\cla_inst/Madd_n0028_cy [138]),
    .LI(\cla_inst/Madd_n0028_lut [139]),
    .O(\cla_inst/n0028 [139])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<139>  (
    .CI(\cla_inst/Madd_n0028_cy [138]),
    .DI(\cla_inst/a [138]),
    .S(\cla_inst/Madd_n0028_lut [139]),
    .O(\cla_inst/Madd_n0028_cy [139])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<139>  (
    .I0(\cla_inst/a [138]),
    .I1(\cla_inst/b [138]),
    .O(\cla_inst/Madd_n0028_lut [139])
  );
  XORCY   \cla_inst/Madd_n0028_xor<138>  (
    .CI(\cla_inst/Madd_n0028_cy [137]),
    .LI(\cla_inst/Madd_n0028_lut [138]),
    .O(\cla_inst/n0028 [138])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<138>  (
    .CI(\cla_inst/Madd_n0028_cy [137]),
    .DI(\cla_inst/a [137]),
    .S(\cla_inst/Madd_n0028_lut [138]),
    .O(\cla_inst/Madd_n0028_cy [138])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<138>  (
    .I0(\cla_inst/a [137]),
    .I1(\cla_inst/b [137]),
    .O(\cla_inst/Madd_n0028_lut [138])
  );
  XORCY   \cla_inst/Madd_n0028_xor<137>  (
    .CI(\cla_inst/Madd_n0028_cy [136]),
    .LI(\cla_inst/Madd_n0028_lut [137]),
    .O(\cla_inst/n0028 [137])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<137>  (
    .CI(\cla_inst/Madd_n0028_cy [136]),
    .DI(\cla_inst/a [136]),
    .S(\cla_inst/Madd_n0028_lut [137]),
    .O(\cla_inst/Madd_n0028_cy [137])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<137>  (
    .I0(\cla_inst/a [136]),
    .I1(\cla_inst/b [136]),
    .O(\cla_inst/Madd_n0028_lut [137])
  );
  XORCY   \cla_inst/Madd_n0028_xor<136>  (
    .CI(\cla_inst/Madd_n0028_cy [135]),
    .LI(\cla_inst/Madd_n0028_lut [136]),
    .O(\cla_inst/n0028 [136])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<136>  (
    .CI(\cla_inst/Madd_n0028_cy [135]),
    .DI(\cla_inst/a [135]),
    .S(\cla_inst/Madd_n0028_lut [136]),
    .O(\cla_inst/Madd_n0028_cy [136])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<136>  (
    .I0(\cla_inst/a [135]),
    .I1(\cla_inst/b [135]),
    .O(\cla_inst/Madd_n0028_lut [136])
  );
  XORCY   \cla_inst/Madd_n0028_xor<135>  (
    .CI(\cla_inst/Madd_n0028_cy [134]),
    .LI(\cla_inst/Madd_n0028_lut [135]),
    .O(\cla_inst/n0028 [135])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<135>  (
    .CI(\cla_inst/Madd_n0028_cy [134]),
    .DI(\cla_inst/a [134]),
    .S(\cla_inst/Madd_n0028_lut [135]),
    .O(\cla_inst/Madd_n0028_cy [135])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<135>  (
    .I0(\cla_inst/a [134]),
    .I1(\cla_inst/b [134]),
    .O(\cla_inst/Madd_n0028_lut [135])
  );
  XORCY   \cla_inst/Madd_n0028_xor<134>  (
    .CI(\cla_inst/Madd_n0028_cy [133]),
    .LI(\cla_inst/Madd_n0028_lut [134]),
    .O(\cla_inst/n0028 [134])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<134>  (
    .CI(\cla_inst/Madd_n0028_cy [133]),
    .DI(\cla_inst/a [133]),
    .S(\cla_inst/Madd_n0028_lut [134]),
    .O(\cla_inst/Madd_n0028_cy [134])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<134>  (
    .I0(\cla_inst/a [133]),
    .I1(\cla_inst/b [133]),
    .O(\cla_inst/Madd_n0028_lut [134])
  );
  XORCY   \cla_inst/Madd_n0028_xor<133>  (
    .CI(\cla_inst/Madd_n0028_cy [132]),
    .LI(\cla_inst/Madd_n0028_lut [133]),
    .O(\cla_inst/n0028 [133])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<133>  (
    .CI(\cla_inst/Madd_n0028_cy [132]),
    .DI(\cla_inst/a [132]),
    .S(\cla_inst/Madd_n0028_lut [133]),
    .O(\cla_inst/Madd_n0028_cy [133])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<133>  (
    .I0(\cla_inst/a [132]),
    .I1(\cla_inst/b [132]),
    .O(\cla_inst/Madd_n0028_lut [133])
  );
  XORCY   \cla_inst/Madd_n0028_xor<132>  (
    .CI(\cla_inst/Madd_n0028_cy [131]),
    .LI(\cla_inst/Madd_n0028_lut [132]),
    .O(\cla_inst/n0028 [132])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<132>  (
    .CI(\cla_inst/Madd_n0028_cy [131]),
    .DI(\cla_inst/a [131]),
    .S(\cla_inst/Madd_n0028_lut [132]),
    .O(\cla_inst/Madd_n0028_cy [132])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<132>  (
    .I0(\cla_inst/a [131]),
    .I1(\cla_inst/b [131]),
    .O(\cla_inst/Madd_n0028_lut [132])
  );
  XORCY   \cla_inst/Madd_n0028_xor<131>  (
    .CI(\cla_inst/Madd_n0028_cy [130]),
    .LI(\cla_inst/Madd_n0028_lut [131]),
    .O(\cla_inst/n0028 [131])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<131>  (
    .CI(\cla_inst/Madd_n0028_cy [130]),
    .DI(\cla_inst/a [130]),
    .S(\cla_inst/Madd_n0028_lut [131]),
    .O(\cla_inst/Madd_n0028_cy [131])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<131>  (
    .I0(\cla_inst/a [130]),
    .I1(\cla_inst/b [130]),
    .O(\cla_inst/Madd_n0028_lut [131])
  );
  XORCY   \cla_inst/Madd_n0028_xor<130>  (
    .CI(\cla_inst/Madd_n0028_cy [129]),
    .LI(\cla_inst/Madd_n0028_lut [130]),
    .O(\cla_inst/n0028 [130])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<130>  (
    .CI(\cla_inst/Madd_n0028_cy [129]),
    .DI(\cla_inst/a [129]),
    .S(\cla_inst/Madd_n0028_lut [130]),
    .O(\cla_inst/Madd_n0028_cy [130])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<130>  (
    .I0(\cla_inst/a [129]),
    .I1(\cla_inst/b [129]),
    .O(\cla_inst/Madd_n0028_lut [130])
  );
  XORCY   \cla_inst/Madd_n0028_xor<129>  (
    .CI(\cla_inst/Madd_n0028_cy [128]),
    .LI(\cla_inst/Madd_n0028_lut [129]),
    .O(\cla_inst/n0028 [129])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<129>  (
    .CI(\cla_inst/Madd_n0028_cy [128]),
    .DI(\cla_inst/a [128]),
    .S(\cla_inst/Madd_n0028_lut [129]),
    .O(\cla_inst/Madd_n0028_cy [129])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<129>  (
    .I0(\cla_inst/a [128]),
    .I1(\cla_inst/b [128]),
    .O(\cla_inst/Madd_n0028_lut [129])
  );
  XORCY   \cla_inst/Madd_n0028_xor<128>  (
    .CI(\cla_inst/Madd_n0028_cy [127]),
    .LI(\cla_inst/Madd_n0028_lut [128]),
    .O(\cla_inst/n0028 [128])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<128>  (
    .CI(\cla_inst/Madd_n0028_cy [127]),
    .DI(\cla_inst/a [127]),
    .S(\cla_inst/Madd_n0028_lut [128]),
    .O(\cla_inst/Madd_n0028_cy [128])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<128>  (
    .I0(\cla_inst/a [127]),
    .I1(\cla_inst/b [127]),
    .O(\cla_inst/Madd_n0028_lut [128])
  );
  XORCY   \cla_inst/Madd_n0028_xor<127>  (
    .CI(\cla_inst/Madd_n0028_cy [126]),
    .LI(\cla_inst/Madd_n0028_lut [127]),
    .O(\cla_inst/n0028 [127])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<127>  (
    .CI(\cla_inst/Madd_n0028_cy [126]),
    .DI(\cla_inst/a [126]),
    .S(\cla_inst/Madd_n0028_lut [127]),
    .O(\cla_inst/Madd_n0028_cy [127])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<127>  (
    .I0(\cla_inst/a [126]),
    .I1(\cla_inst/b [126]),
    .O(\cla_inst/Madd_n0028_lut [127])
  );
  XORCY   \cla_inst/Madd_n0028_xor<126>  (
    .CI(\cla_inst/Madd_n0028_cy [125]),
    .LI(\cla_inst/Madd_n0028_lut [126]),
    .O(\cla_inst/n0028 [126])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<126>  (
    .CI(\cla_inst/Madd_n0028_cy [125]),
    .DI(\cla_inst/a [125]),
    .S(\cla_inst/Madd_n0028_lut [126]),
    .O(\cla_inst/Madd_n0028_cy [126])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<126>  (
    .I0(\cla_inst/a [125]),
    .I1(\cla_inst/b [125]),
    .O(\cla_inst/Madd_n0028_lut [126])
  );
  XORCY   \cla_inst/Madd_n0028_xor<125>  (
    .CI(\cla_inst/Madd_n0028_cy [124]),
    .LI(\cla_inst/Madd_n0028_lut [125]),
    .O(\cla_inst/n0028 [125])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<125>  (
    .CI(\cla_inst/Madd_n0028_cy [124]),
    .DI(\cla_inst/a [124]),
    .S(\cla_inst/Madd_n0028_lut [125]),
    .O(\cla_inst/Madd_n0028_cy [125])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<125>  (
    .I0(\cla_inst/a [124]),
    .I1(\cla_inst/b [124]),
    .O(\cla_inst/Madd_n0028_lut [125])
  );
  XORCY   \cla_inst/Madd_n0028_xor<124>  (
    .CI(\cla_inst/Madd_n0028_cy [123]),
    .LI(\cla_inst/Madd_n0028_lut [124]),
    .O(\cla_inst/n0028 [124])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<124>  (
    .CI(\cla_inst/Madd_n0028_cy [123]),
    .DI(\cla_inst/a [123]),
    .S(\cla_inst/Madd_n0028_lut [124]),
    .O(\cla_inst/Madd_n0028_cy [124])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<124>  (
    .I0(\cla_inst/a [123]),
    .I1(\cla_inst/b [123]),
    .O(\cla_inst/Madd_n0028_lut [124])
  );
  XORCY   \cla_inst/Madd_n0028_xor<123>  (
    .CI(\cla_inst/Madd_n0028_cy [122]),
    .LI(\cla_inst/Madd_n0028_lut [123]),
    .O(\cla_inst/n0028 [123])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<123>  (
    .CI(\cla_inst/Madd_n0028_cy [122]),
    .DI(\cla_inst/a [122]),
    .S(\cla_inst/Madd_n0028_lut [123]),
    .O(\cla_inst/Madd_n0028_cy [123])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<123>  (
    .I0(\cla_inst/a [122]),
    .I1(\cla_inst/b [122]),
    .O(\cla_inst/Madd_n0028_lut [123])
  );
  XORCY   \cla_inst/Madd_n0028_xor<122>  (
    .CI(\cla_inst/Madd_n0028_cy [121]),
    .LI(\cla_inst/Madd_n0028_lut [122]),
    .O(\cla_inst/n0028 [122])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<122>  (
    .CI(\cla_inst/Madd_n0028_cy [121]),
    .DI(\cla_inst/a [121]),
    .S(\cla_inst/Madd_n0028_lut [122]),
    .O(\cla_inst/Madd_n0028_cy [122])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<122>  (
    .I0(\cla_inst/a [121]),
    .I1(\cla_inst/b [121]),
    .O(\cla_inst/Madd_n0028_lut [122])
  );
  XORCY   \cla_inst/Madd_n0028_xor<121>  (
    .CI(\cla_inst/Madd_n0028_cy [120]),
    .LI(\cla_inst/Madd_n0028_lut [121]),
    .O(\cla_inst/n0028 [121])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<121>  (
    .CI(\cla_inst/Madd_n0028_cy [120]),
    .DI(\cla_inst/a [120]),
    .S(\cla_inst/Madd_n0028_lut [121]),
    .O(\cla_inst/Madd_n0028_cy [121])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<121>  (
    .I0(\cla_inst/a [120]),
    .I1(\cla_inst/b [120]),
    .O(\cla_inst/Madd_n0028_lut [121])
  );
  XORCY   \cla_inst/Madd_n0028_xor<120>  (
    .CI(\cla_inst/Madd_n0028_cy [119]),
    .LI(\cla_inst/Madd_n0028_lut [120]),
    .O(\cla_inst/n0028 [120])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<120>  (
    .CI(\cla_inst/Madd_n0028_cy [119]),
    .DI(\cla_inst/a [119]),
    .S(\cla_inst/Madd_n0028_lut [120]),
    .O(\cla_inst/Madd_n0028_cy [120])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<120>  (
    .I0(\cla_inst/a [119]),
    .I1(\cla_inst/b [119]),
    .O(\cla_inst/Madd_n0028_lut [120])
  );
  XORCY   \cla_inst/Madd_n0028_xor<119>  (
    .CI(\cla_inst/Madd_n0028_cy [118]),
    .LI(\cla_inst/Madd_n0028_lut [119]),
    .O(\cla_inst/n0028 [119])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<119>  (
    .CI(\cla_inst/Madd_n0028_cy [118]),
    .DI(\cla_inst/a [118]),
    .S(\cla_inst/Madd_n0028_lut [119]),
    .O(\cla_inst/Madd_n0028_cy [119])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<119>  (
    .I0(\cla_inst/a [118]),
    .I1(\cla_inst/b [118]),
    .O(\cla_inst/Madd_n0028_lut [119])
  );
  XORCY   \cla_inst/Madd_n0028_xor<118>  (
    .CI(\cla_inst/Madd_n0028_cy [117]),
    .LI(\cla_inst/Madd_n0028_lut [118]),
    .O(\cla_inst/n0028 [118])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<118>  (
    .CI(\cla_inst/Madd_n0028_cy [117]),
    .DI(\cla_inst/a [117]),
    .S(\cla_inst/Madd_n0028_lut [118]),
    .O(\cla_inst/Madd_n0028_cy [118])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<118>  (
    .I0(\cla_inst/a [117]),
    .I1(\cla_inst/b [117]),
    .O(\cla_inst/Madd_n0028_lut [118])
  );
  XORCY   \cla_inst/Madd_n0028_xor<117>  (
    .CI(\cla_inst/Madd_n0028_cy [116]),
    .LI(\cla_inst/Madd_n0028_lut [117]),
    .O(\cla_inst/n0028 [117])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<117>  (
    .CI(\cla_inst/Madd_n0028_cy [116]),
    .DI(\cla_inst/a [116]),
    .S(\cla_inst/Madd_n0028_lut [117]),
    .O(\cla_inst/Madd_n0028_cy [117])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<117>  (
    .I0(\cla_inst/a [116]),
    .I1(\cla_inst/b [116]),
    .O(\cla_inst/Madd_n0028_lut [117])
  );
  XORCY   \cla_inst/Madd_n0028_xor<116>  (
    .CI(\cla_inst/Madd_n0028_cy [115]),
    .LI(\cla_inst/Madd_n0028_lut [116]),
    .O(\cla_inst/n0028 [116])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<116>  (
    .CI(\cla_inst/Madd_n0028_cy [115]),
    .DI(\cla_inst/a [115]),
    .S(\cla_inst/Madd_n0028_lut [116]),
    .O(\cla_inst/Madd_n0028_cy [116])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<116>  (
    .I0(\cla_inst/a [115]),
    .I1(\cla_inst/b [115]),
    .O(\cla_inst/Madd_n0028_lut [116])
  );
  XORCY   \cla_inst/Madd_n0028_xor<115>  (
    .CI(\cla_inst/Madd_n0028_cy [114]),
    .LI(\cla_inst/Madd_n0028_lut [115]),
    .O(\cla_inst/n0028 [115])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<115>  (
    .CI(\cla_inst/Madd_n0028_cy [114]),
    .DI(\cla_inst/a [114]),
    .S(\cla_inst/Madd_n0028_lut [115]),
    .O(\cla_inst/Madd_n0028_cy [115])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<115>  (
    .I0(\cla_inst/a [114]),
    .I1(\cla_inst/b [114]),
    .O(\cla_inst/Madd_n0028_lut [115])
  );
  XORCY   \cla_inst/Madd_n0028_xor<114>  (
    .CI(\cla_inst/Madd_n0028_cy [113]),
    .LI(\cla_inst/Madd_n0028_lut [114]),
    .O(\cla_inst/n0028 [114])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<114>  (
    .CI(\cla_inst/Madd_n0028_cy [113]),
    .DI(\cla_inst/a [113]),
    .S(\cla_inst/Madd_n0028_lut [114]),
    .O(\cla_inst/Madd_n0028_cy [114])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<114>  (
    .I0(\cla_inst/a [113]),
    .I1(\cla_inst/b [113]),
    .O(\cla_inst/Madd_n0028_lut [114])
  );
  XORCY   \cla_inst/Madd_n0028_xor<113>  (
    .CI(\cla_inst/Madd_n0028_cy [112]),
    .LI(\cla_inst/Madd_n0028_lut [113]),
    .O(\cla_inst/n0028 [113])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<113>  (
    .CI(\cla_inst/Madd_n0028_cy [112]),
    .DI(\cla_inst/a [112]),
    .S(\cla_inst/Madd_n0028_lut [113]),
    .O(\cla_inst/Madd_n0028_cy [113])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<113>  (
    .I0(\cla_inst/a [112]),
    .I1(\cla_inst/b [112]),
    .O(\cla_inst/Madd_n0028_lut [113])
  );
  XORCY   \cla_inst/Madd_n0028_xor<112>  (
    .CI(\cla_inst/Madd_n0028_cy [111]),
    .LI(\cla_inst/Madd_n0028_lut [112]),
    .O(\cla_inst/n0028 [112])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<112>  (
    .CI(\cla_inst/Madd_n0028_cy [111]),
    .DI(\cla_inst/a [111]),
    .S(\cla_inst/Madd_n0028_lut [112]),
    .O(\cla_inst/Madd_n0028_cy [112])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<112>  (
    .I0(\cla_inst/a [111]),
    .I1(\cla_inst/b [111]),
    .O(\cla_inst/Madd_n0028_lut [112])
  );
  XORCY   \cla_inst/Madd_n0028_xor<111>  (
    .CI(\cla_inst/Madd_n0028_cy [110]),
    .LI(\cla_inst/Madd_n0028_lut [111]),
    .O(\cla_inst/n0028 [111])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<111>  (
    .CI(\cla_inst/Madd_n0028_cy [110]),
    .DI(\cla_inst/a [110]),
    .S(\cla_inst/Madd_n0028_lut [111]),
    .O(\cla_inst/Madd_n0028_cy [111])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<111>  (
    .I0(\cla_inst/a [110]),
    .I1(\cla_inst/b [110]),
    .O(\cla_inst/Madd_n0028_lut [111])
  );
  XORCY   \cla_inst/Madd_n0028_xor<110>  (
    .CI(\cla_inst/Madd_n0028_cy [109]),
    .LI(\cla_inst/Madd_n0028_lut [110]),
    .O(\cla_inst/n0028 [110])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<110>  (
    .CI(\cla_inst/Madd_n0028_cy [109]),
    .DI(\cla_inst/a [109]),
    .S(\cla_inst/Madd_n0028_lut [110]),
    .O(\cla_inst/Madd_n0028_cy [110])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<110>  (
    .I0(\cla_inst/a [109]),
    .I1(\cla_inst/b [109]),
    .O(\cla_inst/Madd_n0028_lut [110])
  );
  XORCY   \cla_inst/Madd_n0028_xor<109>  (
    .CI(\cla_inst/Madd_n0028_cy [108]),
    .LI(\cla_inst/Madd_n0028_lut [109]),
    .O(\cla_inst/n0028 [109])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<109>  (
    .CI(\cla_inst/Madd_n0028_cy [108]),
    .DI(\cla_inst/a [108]),
    .S(\cla_inst/Madd_n0028_lut [109]),
    .O(\cla_inst/Madd_n0028_cy [109])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<109>  (
    .I0(\cla_inst/a [108]),
    .I1(\cla_inst/b [108]),
    .O(\cla_inst/Madd_n0028_lut [109])
  );
  XORCY   \cla_inst/Madd_n0028_xor<108>  (
    .CI(\cla_inst/Madd_n0028_cy [107]),
    .LI(\cla_inst/Madd_n0028_lut [108]),
    .O(\cla_inst/n0028 [108])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<108>  (
    .CI(\cla_inst/Madd_n0028_cy [107]),
    .DI(\cla_inst/a [107]),
    .S(\cla_inst/Madd_n0028_lut [108]),
    .O(\cla_inst/Madd_n0028_cy [108])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<108>  (
    .I0(\cla_inst/a [107]),
    .I1(\cla_inst/b [107]),
    .O(\cla_inst/Madd_n0028_lut [108])
  );
  XORCY   \cla_inst/Madd_n0028_xor<107>  (
    .CI(\cla_inst/Madd_n0028_cy [106]),
    .LI(\cla_inst/Madd_n0028_lut [107]),
    .O(\cla_inst/n0028 [107])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<107>  (
    .CI(\cla_inst/Madd_n0028_cy [106]),
    .DI(\cla_inst/a [106]),
    .S(\cla_inst/Madd_n0028_lut [107]),
    .O(\cla_inst/Madd_n0028_cy [107])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<107>  (
    .I0(\cla_inst/a [106]),
    .I1(\cla_inst/b [106]),
    .O(\cla_inst/Madd_n0028_lut [107])
  );
  XORCY   \cla_inst/Madd_n0028_xor<106>  (
    .CI(\cla_inst/Madd_n0028_cy [105]),
    .LI(\cla_inst/Madd_n0028_lut [106]),
    .O(\cla_inst/n0028 [106])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<106>  (
    .CI(\cla_inst/Madd_n0028_cy [105]),
    .DI(\cla_inst/a [105]),
    .S(\cla_inst/Madd_n0028_lut [106]),
    .O(\cla_inst/Madd_n0028_cy [106])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<106>  (
    .I0(\cla_inst/a [105]),
    .I1(\cla_inst/b [105]),
    .O(\cla_inst/Madd_n0028_lut [106])
  );
  XORCY   \cla_inst/Madd_n0028_xor<105>  (
    .CI(\cla_inst/Madd_n0028_cy [104]),
    .LI(\cla_inst/Madd_n0028_lut [105]),
    .O(\cla_inst/n0028 [105])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<105>  (
    .CI(\cla_inst/Madd_n0028_cy [104]),
    .DI(\cla_inst/a [104]),
    .S(\cla_inst/Madd_n0028_lut [105]),
    .O(\cla_inst/Madd_n0028_cy [105])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<105>  (
    .I0(\cla_inst/a [104]),
    .I1(\cla_inst/b [104]),
    .O(\cla_inst/Madd_n0028_lut [105])
  );
  XORCY   \cla_inst/Madd_n0028_xor<104>  (
    .CI(\cla_inst/Madd_n0028_cy [103]),
    .LI(\cla_inst/Madd_n0028_lut [104]),
    .O(\cla_inst/n0028 [104])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<104>  (
    .CI(\cla_inst/Madd_n0028_cy [103]),
    .DI(\cla_inst/a [103]),
    .S(\cla_inst/Madd_n0028_lut [104]),
    .O(\cla_inst/Madd_n0028_cy [104])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<104>  (
    .I0(\cla_inst/a [103]),
    .I1(\cla_inst/b [103]),
    .O(\cla_inst/Madd_n0028_lut [104])
  );
  XORCY   \cla_inst/Madd_n0028_xor<103>  (
    .CI(\cla_inst/Madd_n0028_cy [102]),
    .LI(\cla_inst/Madd_n0028_lut [103]),
    .O(\cla_inst/n0028 [103])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<103>  (
    .CI(\cla_inst/Madd_n0028_cy [102]),
    .DI(\cla_inst/a [102]),
    .S(\cla_inst/Madd_n0028_lut [103]),
    .O(\cla_inst/Madd_n0028_cy [103])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<103>  (
    .I0(\cla_inst/a [102]),
    .I1(\cla_inst/b [102]),
    .O(\cla_inst/Madd_n0028_lut [103])
  );
  XORCY   \cla_inst/Madd_n0028_xor<102>  (
    .CI(\cla_inst/Madd_n0028_cy [101]),
    .LI(\cla_inst/Madd_n0028_lut [102]),
    .O(\cla_inst/n0028 [102])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<102>  (
    .CI(\cla_inst/Madd_n0028_cy [101]),
    .DI(\cla_inst/a [101]),
    .S(\cla_inst/Madd_n0028_lut [102]),
    .O(\cla_inst/Madd_n0028_cy [102])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<102>  (
    .I0(\cla_inst/a [101]),
    .I1(\cla_inst/b [101]),
    .O(\cla_inst/Madd_n0028_lut [102])
  );
  XORCY   \cla_inst/Madd_n0028_xor<101>  (
    .CI(\cla_inst/Madd_n0028_cy [100]),
    .LI(\cla_inst/Madd_n0028_lut [101]),
    .O(\cla_inst/n0028 [101])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<101>  (
    .CI(\cla_inst/Madd_n0028_cy [100]),
    .DI(\cla_inst/a [100]),
    .S(\cla_inst/Madd_n0028_lut [101]),
    .O(\cla_inst/Madd_n0028_cy [101])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<101>  (
    .I0(\cla_inst/a [100]),
    .I1(\cla_inst/b [100]),
    .O(\cla_inst/Madd_n0028_lut [101])
  );
  XORCY   \cla_inst/Madd_n0028_xor<100>  (
    .CI(\cla_inst/Madd_n0028_cy [99]),
    .LI(\cla_inst/Madd_n0028_lut [100]),
    .O(\cla_inst/n0028 [100])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<100>  (
    .CI(\cla_inst/Madd_n0028_cy [99]),
    .DI(\cla_inst/a [99]),
    .S(\cla_inst/Madd_n0028_lut [100]),
    .O(\cla_inst/Madd_n0028_cy [100])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<100>  (
    .I0(\cla_inst/a [99]),
    .I1(\cla_inst/b [99]),
    .O(\cla_inst/Madd_n0028_lut [100])
  );
  XORCY   \cla_inst/Madd_n0028_xor<99>  (
    .CI(\cla_inst/Madd_n0028_cy [98]),
    .LI(\cla_inst/Madd_n0028_lut [99]),
    .O(\cla_inst/n0028 [99])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<99>  (
    .CI(\cla_inst/Madd_n0028_cy [98]),
    .DI(\cla_inst/a [98]),
    .S(\cla_inst/Madd_n0028_lut [99]),
    .O(\cla_inst/Madd_n0028_cy [99])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<99>  (
    .I0(\cla_inst/a [98]),
    .I1(\cla_inst/b [98]),
    .O(\cla_inst/Madd_n0028_lut [99])
  );
  XORCY   \cla_inst/Madd_n0028_xor<98>  (
    .CI(\cla_inst/Madd_n0028_cy [97]),
    .LI(\cla_inst/Madd_n0028_lut [98]),
    .O(\cla_inst/n0028 [98])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<98>  (
    .CI(\cla_inst/Madd_n0028_cy [97]),
    .DI(\cla_inst/a [97]),
    .S(\cla_inst/Madd_n0028_lut [98]),
    .O(\cla_inst/Madd_n0028_cy [98])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<98>  (
    .I0(\cla_inst/a [97]),
    .I1(\cla_inst/b [97]),
    .O(\cla_inst/Madd_n0028_lut [98])
  );
  XORCY   \cla_inst/Madd_n0028_xor<97>  (
    .CI(\cla_inst/Madd_n0028_cy [96]),
    .LI(\cla_inst/Madd_n0028_lut [97]),
    .O(\cla_inst/n0028 [97])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<97>  (
    .CI(\cla_inst/Madd_n0028_cy [96]),
    .DI(\cla_inst/a [96]),
    .S(\cla_inst/Madd_n0028_lut [97]),
    .O(\cla_inst/Madd_n0028_cy [97])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<97>  (
    .I0(\cla_inst/a [96]),
    .I1(\cla_inst/b [96]),
    .O(\cla_inst/Madd_n0028_lut [97])
  );
  XORCY   \cla_inst/Madd_n0028_xor<96>  (
    .CI(\cla_inst/Madd_n0028_cy [95]),
    .LI(\cla_inst/Madd_n0028_lut [96]),
    .O(\cla_inst/n0028 [96])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<96>  (
    .CI(\cla_inst/Madd_n0028_cy [95]),
    .DI(\cla_inst/a [95]),
    .S(\cla_inst/Madd_n0028_lut [96]),
    .O(\cla_inst/Madd_n0028_cy [96])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<96>  (
    .I0(\cla_inst/a [95]),
    .I1(\cla_inst/b [95]),
    .O(\cla_inst/Madd_n0028_lut [96])
  );
  XORCY   \cla_inst/Madd_n0028_xor<95>  (
    .CI(\cla_inst/Madd_n0028_cy [94]),
    .LI(\cla_inst/Madd_n0028_lut [95]),
    .O(\cla_inst/n0028 [95])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<95>  (
    .CI(\cla_inst/Madd_n0028_cy [94]),
    .DI(\cla_inst/a [94]),
    .S(\cla_inst/Madd_n0028_lut [95]),
    .O(\cla_inst/Madd_n0028_cy [95])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<95>  (
    .I0(\cla_inst/a [94]),
    .I1(\cla_inst/b [94]),
    .O(\cla_inst/Madd_n0028_lut [95])
  );
  XORCY   \cla_inst/Madd_n0028_xor<94>  (
    .CI(\cla_inst/Madd_n0028_cy [93]),
    .LI(\cla_inst/Madd_n0028_lut [94]),
    .O(\cla_inst/n0028 [94])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<94>  (
    .CI(\cla_inst/Madd_n0028_cy [93]),
    .DI(\cla_inst/a [93]),
    .S(\cla_inst/Madd_n0028_lut [94]),
    .O(\cla_inst/Madd_n0028_cy [94])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<94>  (
    .I0(\cla_inst/a [93]),
    .I1(\cla_inst/b [93]),
    .O(\cla_inst/Madd_n0028_lut [94])
  );
  XORCY   \cla_inst/Madd_n0028_xor<93>  (
    .CI(\cla_inst/Madd_n0028_cy [92]),
    .LI(\cla_inst/Madd_n0028_lut [93]),
    .O(\cla_inst/n0028 [93])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<93>  (
    .CI(\cla_inst/Madd_n0028_cy [92]),
    .DI(\cla_inst/a [92]),
    .S(\cla_inst/Madd_n0028_lut [93]),
    .O(\cla_inst/Madd_n0028_cy [93])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<93>  (
    .I0(\cla_inst/a [92]),
    .I1(\cla_inst/b [92]),
    .O(\cla_inst/Madd_n0028_lut [93])
  );
  XORCY   \cla_inst/Madd_n0028_xor<92>  (
    .CI(\cla_inst/Madd_n0028_cy [91]),
    .LI(\cla_inst/Madd_n0028_lut [92]),
    .O(\cla_inst/n0028 [92])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<92>  (
    .CI(\cla_inst/Madd_n0028_cy [91]),
    .DI(\cla_inst/a [91]),
    .S(\cla_inst/Madd_n0028_lut [92]),
    .O(\cla_inst/Madd_n0028_cy [92])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<92>  (
    .I0(\cla_inst/a [91]),
    .I1(\cla_inst/b [91]),
    .O(\cla_inst/Madd_n0028_lut [92])
  );
  XORCY   \cla_inst/Madd_n0028_xor<91>  (
    .CI(\cla_inst/Madd_n0028_cy [90]),
    .LI(\cla_inst/Madd_n0028_lut [91]),
    .O(\cla_inst/n0028 [91])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<91>  (
    .CI(\cla_inst/Madd_n0028_cy [90]),
    .DI(\cla_inst/a [90]),
    .S(\cla_inst/Madd_n0028_lut [91]),
    .O(\cla_inst/Madd_n0028_cy [91])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<91>  (
    .I0(\cla_inst/a [90]),
    .I1(\cla_inst/b [90]),
    .O(\cla_inst/Madd_n0028_lut [91])
  );
  XORCY   \cla_inst/Madd_n0028_xor<90>  (
    .CI(\cla_inst/Madd_n0028_cy [89]),
    .LI(\cla_inst/Madd_n0028_lut [90]),
    .O(\cla_inst/n0028 [90])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<90>  (
    .CI(\cla_inst/Madd_n0028_cy [89]),
    .DI(\cla_inst/a [89]),
    .S(\cla_inst/Madd_n0028_lut [90]),
    .O(\cla_inst/Madd_n0028_cy [90])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<90>  (
    .I0(\cla_inst/a [89]),
    .I1(\cla_inst/b [89]),
    .O(\cla_inst/Madd_n0028_lut [90])
  );
  XORCY   \cla_inst/Madd_n0028_xor<89>  (
    .CI(\cla_inst/Madd_n0028_cy [88]),
    .LI(\cla_inst/Madd_n0028_lut [89]),
    .O(\cla_inst/n0028 [89])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<89>  (
    .CI(\cla_inst/Madd_n0028_cy [88]),
    .DI(\cla_inst/a [88]),
    .S(\cla_inst/Madd_n0028_lut [89]),
    .O(\cla_inst/Madd_n0028_cy [89])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<89>  (
    .I0(\cla_inst/a [88]),
    .I1(\cla_inst/b [88]),
    .O(\cla_inst/Madd_n0028_lut [89])
  );
  XORCY   \cla_inst/Madd_n0028_xor<88>  (
    .CI(\cla_inst/Madd_n0028_cy [87]),
    .LI(\cla_inst/Madd_n0028_lut [88]),
    .O(\cla_inst/n0028 [88])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<88>  (
    .CI(\cla_inst/Madd_n0028_cy [87]),
    .DI(\cla_inst/a [87]),
    .S(\cla_inst/Madd_n0028_lut [88]),
    .O(\cla_inst/Madd_n0028_cy [88])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<88>  (
    .I0(\cla_inst/a [87]),
    .I1(\cla_inst/b [87]),
    .O(\cla_inst/Madd_n0028_lut [88])
  );
  XORCY   \cla_inst/Madd_n0028_xor<87>  (
    .CI(\cla_inst/Madd_n0028_cy [86]),
    .LI(\cla_inst/Madd_n0028_lut [87]),
    .O(\cla_inst/n0028 [87])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<87>  (
    .CI(\cla_inst/Madd_n0028_cy [86]),
    .DI(\cla_inst/a [86]),
    .S(\cla_inst/Madd_n0028_lut [87]),
    .O(\cla_inst/Madd_n0028_cy [87])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<87>  (
    .I0(\cla_inst/a [86]),
    .I1(\cla_inst/b [86]),
    .O(\cla_inst/Madd_n0028_lut [87])
  );
  XORCY   \cla_inst/Madd_n0028_xor<86>  (
    .CI(\cla_inst/Madd_n0028_cy [85]),
    .LI(\cla_inst/Madd_n0028_lut [86]),
    .O(\cla_inst/n0028 [86])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<86>  (
    .CI(\cla_inst/Madd_n0028_cy [85]),
    .DI(\cla_inst/a [85]),
    .S(\cla_inst/Madd_n0028_lut [86]),
    .O(\cla_inst/Madd_n0028_cy [86])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<86>  (
    .I0(\cla_inst/a [85]),
    .I1(\cla_inst/b [85]),
    .O(\cla_inst/Madd_n0028_lut [86])
  );
  XORCY   \cla_inst/Madd_n0028_xor<85>  (
    .CI(\cla_inst/Madd_n0028_cy [84]),
    .LI(\cla_inst/Madd_n0028_lut [85]),
    .O(\cla_inst/n0028 [85])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<85>  (
    .CI(\cla_inst/Madd_n0028_cy [84]),
    .DI(\cla_inst/a [84]),
    .S(\cla_inst/Madd_n0028_lut [85]),
    .O(\cla_inst/Madd_n0028_cy [85])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<85>  (
    .I0(\cla_inst/a [84]),
    .I1(\cla_inst/b [84]),
    .O(\cla_inst/Madd_n0028_lut [85])
  );
  XORCY   \cla_inst/Madd_n0028_xor<84>  (
    .CI(\cla_inst/Madd_n0028_cy [83]),
    .LI(\cla_inst/Madd_n0028_lut [84]),
    .O(\cla_inst/n0028 [84])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<84>  (
    .CI(\cla_inst/Madd_n0028_cy [83]),
    .DI(\cla_inst/a [83]),
    .S(\cla_inst/Madd_n0028_lut [84]),
    .O(\cla_inst/Madd_n0028_cy [84])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<84>  (
    .I0(\cla_inst/a [83]),
    .I1(\cla_inst/b [83]),
    .O(\cla_inst/Madd_n0028_lut [84])
  );
  XORCY   \cla_inst/Madd_n0028_xor<83>  (
    .CI(\cla_inst/Madd_n0028_cy [82]),
    .LI(\cla_inst/Madd_n0028_lut [83]),
    .O(\cla_inst/n0028 [83])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<83>  (
    .CI(\cla_inst/Madd_n0028_cy [82]),
    .DI(\cla_inst/a [82]),
    .S(\cla_inst/Madd_n0028_lut [83]),
    .O(\cla_inst/Madd_n0028_cy [83])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<83>  (
    .I0(\cla_inst/a [82]),
    .I1(\cla_inst/b [82]),
    .O(\cla_inst/Madd_n0028_lut [83])
  );
  XORCY   \cla_inst/Madd_n0028_xor<82>  (
    .CI(\cla_inst/Madd_n0028_cy [81]),
    .LI(\cla_inst/Madd_n0028_lut [82]),
    .O(\cla_inst/n0028 [82])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<82>  (
    .CI(\cla_inst/Madd_n0028_cy [81]),
    .DI(\cla_inst/a [81]),
    .S(\cla_inst/Madd_n0028_lut [82]),
    .O(\cla_inst/Madd_n0028_cy [82])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<82>  (
    .I0(\cla_inst/a [81]),
    .I1(\cla_inst/b [81]),
    .O(\cla_inst/Madd_n0028_lut [82])
  );
  XORCY   \cla_inst/Madd_n0028_xor<81>  (
    .CI(\cla_inst/Madd_n0028_cy [80]),
    .LI(\cla_inst/Madd_n0028_lut [81]),
    .O(\cla_inst/n0028 [81])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<81>  (
    .CI(\cla_inst/Madd_n0028_cy [80]),
    .DI(\cla_inst/a [80]),
    .S(\cla_inst/Madd_n0028_lut [81]),
    .O(\cla_inst/Madd_n0028_cy [81])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<81>  (
    .I0(\cla_inst/a [80]),
    .I1(\cla_inst/b [80]),
    .O(\cla_inst/Madd_n0028_lut [81])
  );
  XORCY   \cla_inst/Madd_n0028_xor<80>  (
    .CI(\cla_inst/Madd_n0028_cy [79]),
    .LI(\cla_inst/Madd_n0028_lut [80]),
    .O(\cla_inst/n0028 [80])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<80>  (
    .CI(\cla_inst/Madd_n0028_cy [79]),
    .DI(\cla_inst/a [79]),
    .S(\cla_inst/Madd_n0028_lut [80]),
    .O(\cla_inst/Madd_n0028_cy [80])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<80>  (
    .I0(\cla_inst/a [79]),
    .I1(\cla_inst/b [79]),
    .O(\cla_inst/Madd_n0028_lut [80])
  );
  XORCY   \cla_inst/Madd_n0028_xor<79>  (
    .CI(\cla_inst/Madd_n0028_cy [78]),
    .LI(\cla_inst/Madd_n0028_lut [79]),
    .O(\cla_inst/n0028 [79])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<79>  (
    .CI(\cla_inst/Madd_n0028_cy [78]),
    .DI(\cla_inst/a [78]),
    .S(\cla_inst/Madd_n0028_lut [79]),
    .O(\cla_inst/Madd_n0028_cy [79])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<79>  (
    .I0(\cla_inst/a [78]),
    .I1(\cla_inst/b [78]),
    .O(\cla_inst/Madd_n0028_lut [79])
  );
  XORCY   \cla_inst/Madd_n0028_xor<78>  (
    .CI(\cla_inst/Madd_n0028_cy [77]),
    .LI(\cla_inst/Madd_n0028_lut [78]),
    .O(\cla_inst/n0028 [78])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<78>  (
    .CI(\cla_inst/Madd_n0028_cy [77]),
    .DI(\cla_inst/a [77]),
    .S(\cla_inst/Madd_n0028_lut [78]),
    .O(\cla_inst/Madd_n0028_cy [78])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<78>  (
    .I0(\cla_inst/a [77]),
    .I1(\cla_inst/b [77]),
    .O(\cla_inst/Madd_n0028_lut [78])
  );
  XORCY   \cla_inst/Madd_n0028_xor<77>  (
    .CI(\cla_inst/Madd_n0028_cy [76]),
    .LI(\cla_inst/Madd_n0028_lut [77]),
    .O(\cla_inst/n0028 [77])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<77>  (
    .CI(\cla_inst/Madd_n0028_cy [76]),
    .DI(\cla_inst/a [76]),
    .S(\cla_inst/Madd_n0028_lut [77]),
    .O(\cla_inst/Madd_n0028_cy [77])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<77>  (
    .I0(\cla_inst/a [76]),
    .I1(\cla_inst/b [76]),
    .O(\cla_inst/Madd_n0028_lut [77])
  );
  XORCY   \cla_inst/Madd_n0028_xor<76>  (
    .CI(\cla_inst/Madd_n0028_cy [75]),
    .LI(\cla_inst/Madd_n0028_lut [76]),
    .O(\cla_inst/n0028 [76])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<76>  (
    .CI(\cla_inst/Madd_n0028_cy [75]),
    .DI(\cla_inst/a [75]),
    .S(\cla_inst/Madd_n0028_lut [76]),
    .O(\cla_inst/Madd_n0028_cy [76])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<76>  (
    .I0(\cla_inst/a [75]),
    .I1(\cla_inst/b [75]),
    .O(\cla_inst/Madd_n0028_lut [76])
  );
  XORCY   \cla_inst/Madd_n0028_xor<75>  (
    .CI(\cla_inst/Madd_n0028_cy [74]),
    .LI(\cla_inst/Madd_n0028_lut [75]),
    .O(\cla_inst/n0028 [75])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<75>  (
    .CI(\cla_inst/Madd_n0028_cy [74]),
    .DI(\cla_inst/a [74]),
    .S(\cla_inst/Madd_n0028_lut [75]),
    .O(\cla_inst/Madd_n0028_cy [75])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<75>  (
    .I0(\cla_inst/a [74]),
    .I1(\cla_inst/b [74]),
    .O(\cla_inst/Madd_n0028_lut [75])
  );
  XORCY   \cla_inst/Madd_n0028_xor<74>  (
    .CI(\cla_inst/Madd_n0028_cy [73]),
    .LI(\cla_inst/Madd_n0028_lut [74]),
    .O(\cla_inst/n0028 [74])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<74>  (
    .CI(\cla_inst/Madd_n0028_cy [73]),
    .DI(\cla_inst/a [73]),
    .S(\cla_inst/Madd_n0028_lut [74]),
    .O(\cla_inst/Madd_n0028_cy [74])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<74>  (
    .I0(\cla_inst/a [73]),
    .I1(\cla_inst/b [73]),
    .O(\cla_inst/Madd_n0028_lut [74])
  );
  XORCY   \cla_inst/Madd_n0028_xor<73>  (
    .CI(\cla_inst/Madd_n0028_cy [72]),
    .LI(\cla_inst/Madd_n0028_lut [73]),
    .O(\cla_inst/n0028 [73])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<73>  (
    .CI(\cla_inst/Madd_n0028_cy [72]),
    .DI(\cla_inst/a [72]),
    .S(\cla_inst/Madd_n0028_lut [73]),
    .O(\cla_inst/Madd_n0028_cy [73])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<73>  (
    .I0(\cla_inst/a [72]),
    .I1(\cla_inst/b [72]),
    .O(\cla_inst/Madd_n0028_lut [73])
  );
  XORCY   \cla_inst/Madd_n0028_xor<72>  (
    .CI(\cla_inst/Madd_n0028_cy [71]),
    .LI(\cla_inst/Madd_n0028_lut [72]),
    .O(\cla_inst/n0028 [72])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<72>  (
    .CI(\cla_inst/Madd_n0028_cy [71]),
    .DI(\cla_inst/a [71]),
    .S(\cla_inst/Madd_n0028_lut [72]),
    .O(\cla_inst/Madd_n0028_cy [72])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<72>  (
    .I0(\cla_inst/a [71]),
    .I1(\cla_inst/b [71]),
    .O(\cla_inst/Madd_n0028_lut [72])
  );
  XORCY   \cla_inst/Madd_n0028_xor<71>  (
    .CI(\cla_inst/Madd_n0028_cy [70]),
    .LI(\cla_inst/Madd_n0028_lut [71]),
    .O(\cla_inst/n0028 [71])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<71>  (
    .CI(\cla_inst/Madd_n0028_cy [70]),
    .DI(\cla_inst/a [70]),
    .S(\cla_inst/Madd_n0028_lut [71]),
    .O(\cla_inst/Madd_n0028_cy [71])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<71>  (
    .I0(\cla_inst/a [70]),
    .I1(\cla_inst/b [70]),
    .O(\cla_inst/Madd_n0028_lut [71])
  );
  XORCY   \cla_inst/Madd_n0028_xor<70>  (
    .CI(\cla_inst/Madd_n0028_cy [69]),
    .LI(\cla_inst/Madd_n0028_lut [70]),
    .O(\cla_inst/n0028 [70])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<70>  (
    .CI(\cla_inst/Madd_n0028_cy [69]),
    .DI(\cla_inst/a [69]),
    .S(\cla_inst/Madd_n0028_lut [70]),
    .O(\cla_inst/Madd_n0028_cy [70])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<70>  (
    .I0(\cla_inst/a [69]),
    .I1(\cla_inst/b [69]),
    .O(\cla_inst/Madd_n0028_lut [70])
  );
  XORCY   \cla_inst/Madd_n0028_xor<69>  (
    .CI(\cla_inst/Madd_n0028_cy [68]),
    .LI(\cla_inst/Madd_n0028_lut [69]),
    .O(\cla_inst/n0028 [69])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<69>  (
    .CI(\cla_inst/Madd_n0028_cy [68]),
    .DI(\cla_inst/a [68]),
    .S(\cla_inst/Madd_n0028_lut [69]),
    .O(\cla_inst/Madd_n0028_cy [69])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<69>  (
    .I0(\cla_inst/a [68]),
    .I1(\cla_inst/b [68]),
    .O(\cla_inst/Madd_n0028_lut [69])
  );
  XORCY   \cla_inst/Madd_n0028_xor<68>  (
    .CI(\cla_inst/Madd_n0028_cy [67]),
    .LI(\cla_inst/Madd_n0028_lut [68]),
    .O(\cla_inst/n0028 [68])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<68>  (
    .CI(\cla_inst/Madd_n0028_cy [67]),
    .DI(\cla_inst/a [67]),
    .S(\cla_inst/Madd_n0028_lut [68]),
    .O(\cla_inst/Madd_n0028_cy [68])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<68>  (
    .I0(\cla_inst/a [67]),
    .I1(\cla_inst/b [67]),
    .O(\cla_inst/Madd_n0028_lut [68])
  );
  XORCY   \cla_inst/Madd_n0028_xor<67>  (
    .CI(\cla_inst/Madd_n0028_cy [66]),
    .LI(\cla_inst/Madd_n0028_lut [67]),
    .O(\cla_inst/n0028 [67])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<67>  (
    .CI(\cla_inst/Madd_n0028_cy [66]),
    .DI(\cla_inst/a [66]),
    .S(\cla_inst/Madd_n0028_lut [67]),
    .O(\cla_inst/Madd_n0028_cy [67])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<67>  (
    .I0(\cla_inst/a [66]),
    .I1(\cla_inst/b [66]),
    .O(\cla_inst/Madd_n0028_lut [67])
  );
  XORCY   \cla_inst/Madd_n0028_xor<66>  (
    .CI(\cla_inst/Madd_n0028_cy [65]),
    .LI(\cla_inst/Madd_n0028_lut [66]),
    .O(\cla_inst/n0028 [66])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<66>  (
    .CI(\cla_inst/Madd_n0028_cy [65]),
    .DI(\cla_inst/a [65]),
    .S(\cla_inst/Madd_n0028_lut [66]),
    .O(\cla_inst/Madd_n0028_cy [66])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<66>  (
    .I0(\cla_inst/a [65]),
    .I1(\cla_inst/b [65]),
    .O(\cla_inst/Madd_n0028_lut [66])
  );
  XORCY   \cla_inst/Madd_n0028_xor<65>  (
    .CI(\cla_inst/Madd_n0028_cy [64]),
    .LI(\cla_inst/Madd_n0028_lut [65]),
    .O(\cla_inst/n0028 [65])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<65>  (
    .CI(\cla_inst/Madd_n0028_cy [64]),
    .DI(\cla_inst/a [64]),
    .S(\cla_inst/Madd_n0028_lut [65]),
    .O(\cla_inst/Madd_n0028_cy [65])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<65>  (
    .I0(\cla_inst/a [64]),
    .I1(\cla_inst/b [64]),
    .O(\cla_inst/Madd_n0028_lut [65])
  );
  XORCY   \cla_inst/Madd_n0028_xor<64>  (
    .CI(\cla_inst/Madd_n0028_cy [63]),
    .LI(\cla_inst/Madd_n0028_lut [64]),
    .O(\cla_inst/n0028 [64])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<64>  (
    .CI(\cla_inst/Madd_n0028_cy [63]),
    .DI(\cla_inst/a [63]),
    .S(\cla_inst/Madd_n0028_lut [64]),
    .O(\cla_inst/Madd_n0028_cy [64])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<64>  (
    .I0(\cla_inst/a [63]),
    .I1(\cla_inst/b [63]),
    .O(\cla_inst/Madd_n0028_lut [64])
  );
  XORCY   \cla_inst/Madd_n0028_xor<63>  (
    .CI(\cla_inst/Madd_n0028_cy [62]),
    .LI(\cla_inst/Madd_n0028_lut [63]),
    .O(\cla_inst/n0028 [63])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<63>  (
    .CI(\cla_inst/Madd_n0028_cy [62]),
    .DI(\cla_inst/a [62]),
    .S(\cla_inst/Madd_n0028_lut [63]),
    .O(\cla_inst/Madd_n0028_cy [63])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<63>  (
    .I0(\cla_inst/a [62]),
    .I1(\cla_inst/b [62]),
    .O(\cla_inst/Madd_n0028_lut [63])
  );
  XORCY   \cla_inst/Madd_n0028_xor<62>  (
    .CI(\cla_inst/Madd_n0028_cy [61]),
    .LI(\cla_inst/Madd_n0028_lut [62]),
    .O(\cla_inst/n0028 [62])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<62>  (
    .CI(\cla_inst/Madd_n0028_cy [61]),
    .DI(\cla_inst/a [61]),
    .S(\cla_inst/Madd_n0028_lut [62]),
    .O(\cla_inst/Madd_n0028_cy [62])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<62>  (
    .I0(\cla_inst/a [61]),
    .I1(\cla_inst/b [61]),
    .O(\cla_inst/Madd_n0028_lut [62])
  );
  XORCY   \cla_inst/Madd_n0028_xor<61>  (
    .CI(\cla_inst/Madd_n0028_cy [60]),
    .LI(\cla_inst/Madd_n0028_lut [61]),
    .O(\cla_inst/n0028 [61])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<61>  (
    .CI(\cla_inst/Madd_n0028_cy [60]),
    .DI(\cla_inst/a [60]),
    .S(\cla_inst/Madd_n0028_lut [61]),
    .O(\cla_inst/Madd_n0028_cy [61])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<61>  (
    .I0(\cla_inst/a [60]),
    .I1(\cla_inst/b [60]),
    .O(\cla_inst/Madd_n0028_lut [61])
  );
  XORCY   \cla_inst/Madd_n0028_xor<60>  (
    .CI(\cla_inst/Madd_n0028_cy [59]),
    .LI(\cla_inst/Madd_n0028_lut [60]),
    .O(\cla_inst/n0028 [60])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<60>  (
    .CI(\cla_inst/Madd_n0028_cy [59]),
    .DI(\cla_inst/a [59]),
    .S(\cla_inst/Madd_n0028_lut [60]),
    .O(\cla_inst/Madd_n0028_cy [60])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<60>  (
    .I0(\cla_inst/a [59]),
    .I1(\cla_inst/b [59]),
    .O(\cla_inst/Madd_n0028_lut [60])
  );
  XORCY   \cla_inst/Madd_n0028_xor<59>  (
    .CI(\cla_inst/Madd_n0028_cy [58]),
    .LI(\cla_inst/Madd_n0028_lut [59]),
    .O(\cla_inst/n0028 [59])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<59>  (
    .CI(\cla_inst/Madd_n0028_cy [58]),
    .DI(\cla_inst/a [58]),
    .S(\cla_inst/Madd_n0028_lut [59]),
    .O(\cla_inst/Madd_n0028_cy [59])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<59>  (
    .I0(\cla_inst/a [58]),
    .I1(\cla_inst/b [58]),
    .O(\cla_inst/Madd_n0028_lut [59])
  );
  XORCY   \cla_inst/Madd_n0028_xor<58>  (
    .CI(\cla_inst/Madd_n0028_cy [57]),
    .LI(\cla_inst/Madd_n0028_lut [58]),
    .O(\cla_inst/n0028 [58])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<58>  (
    .CI(\cla_inst/Madd_n0028_cy [57]),
    .DI(\cla_inst/a [57]),
    .S(\cla_inst/Madd_n0028_lut [58]),
    .O(\cla_inst/Madd_n0028_cy [58])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<58>  (
    .I0(\cla_inst/a [57]),
    .I1(\cla_inst/b [57]),
    .O(\cla_inst/Madd_n0028_lut [58])
  );
  XORCY   \cla_inst/Madd_n0028_xor<57>  (
    .CI(\cla_inst/Madd_n0028_cy [56]),
    .LI(\cla_inst/Madd_n0028_lut [57]),
    .O(\cla_inst/n0028 [57])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<57>  (
    .CI(\cla_inst/Madd_n0028_cy [56]),
    .DI(\cla_inst/a [56]),
    .S(\cla_inst/Madd_n0028_lut [57]),
    .O(\cla_inst/Madd_n0028_cy [57])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<57>  (
    .I0(\cla_inst/a [56]),
    .I1(\cla_inst/b [56]),
    .O(\cla_inst/Madd_n0028_lut [57])
  );
  XORCY   \cla_inst/Madd_n0028_xor<56>  (
    .CI(\cla_inst/Madd_n0028_cy [55]),
    .LI(\cla_inst/Madd_n0028_lut [56]),
    .O(\cla_inst/n0028 [56])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<56>  (
    .CI(\cla_inst/Madd_n0028_cy [55]),
    .DI(\cla_inst/a [55]),
    .S(\cla_inst/Madd_n0028_lut [56]),
    .O(\cla_inst/Madd_n0028_cy [56])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<56>  (
    .I0(\cla_inst/a [55]),
    .I1(\cla_inst/b [55]),
    .O(\cla_inst/Madd_n0028_lut [56])
  );
  XORCY   \cla_inst/Madd_n0028_xor<55>  (
    .CI(\cla_inst/Madd_n0028_cy [54]),
    .LI(\cla_inst/Madd_n0028_lut [55]),
    .O(\cla_inst/n0028 [55])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<55>  (
    .CI(\cla_inst/Madd_n0028_cy [54]),
    .DI(\cla_inst/a [54]),
    .S(\cla_inst/Madd_n0028_lut [55]),
    .O(\cla_inst/Madd_n0028_cy [55])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<55>  (
    .I0(\cla_inst/a [54]),
    .I1(\cla_inst/b [54]),
    .O(\cla_inst/Madd_n0028_lut [55])
  );
  XORCY   \cla_inst/Madd_n0028_xor<54>  (
    .CI(\cla_inst/Madd_n0028_cy [53]),
    .LI(\cla_inst/Madd_n0028_lut [54]),
    .O(\cla_inst/n0028 [54])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<54>  (
    .CI(\cla_inst/Madd_n0028_cy [53]),
    .DI(\cla_inst/a [53]),
    .S(\cla_inst/Madd_n0028_lut [54]),
    .O(\cla_inst/Madd_n0028_cy [54])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<54>  (
    .I0(\cla_inst/a [53]),
    .I1(\cla_inst/b [53]),
    .O(\cla_inst/Madd_n0028_lut [54])
  );
  XORCY   \cla_inst/Madd_n0028_xor<53>  (
    .CI(\cla_inst/Madd_n0028_cy [52]),
    .LI(\cla_inst/Madd_n0028_lut [53]),
    .O(\cla_inst/n0028 [53])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<53>  (
    .CI(\cla_inst/Madd_n0028_cy [52]),
    .DI(\cla_inst/a [52]),
    .S(\cla_inst/Madd_n0028_lut [53]),
    .O(\cla_inst/Madd_n0028_cy [53])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<53>  (
    .I0(\cla_inst/a [52]),
    .I1(\cla_inst/b [52]),
    .O(\cla_inst/Madd_n0028_lut [53])
  );
  XORCY   \cla_inst/Madd_n0028_xor<52>  (
    .CI(\cla_inst/Madd_n0028_cy [51]),
    .LI(\cla_inst/Madd_n0028_lut [52]),
    .O(\cla_inst/n0028 [52])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<52>  (
    .CI(\cla_inst/Madd_n0028_cy [51]),
    .DI(\cla_inst/a [51]),
    .S(\cla_inst/Madd_n0028_lut [52]),
    .O(\cla_inst/Madd_n0028_cy [52])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<52>  (
    .I0(\cla_inst/a [51]),
    .I1(\cla_inst/b [51]),
    .O(\cla_inst/Madd_n0028_lut [52])
  );
  XORCY   \cla_inst/Madd_n0028_xor<51>  (
    .CI(\cla_inst/Madd_n0028_cy [50]),
    .LI(\cla_inst/Madd_n0028_lut [51]),
    .O(\cla_inst/n0028 [51])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<51>  (
    .CI(\cla_inst/Madd_n0028_cy [50]),
    .DI(\cla_inst/a [50]),
    .S(\cla_inst/Madd_n0028_lut [51]),
    .O(\cla_inst/Madd_n0028_cy [51])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<51>  (
    .I0(\cla_inst/a [50]),
    .I1(\cla_inst/b [50]),
    .O(\cla_inst/Madd_n0028_lut [51])
  );
  XORCY   \cla_inst/Madd_n0028_xor<50>  (
    .CI(\cla_inst/Madd_n0028_cy [49]),
    .LI(\cla_inst/Madd_n0028_lut [50]),
    .O(\cla_inst/n0028 [50])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<50>  (
    .CI(\cla_inst/Madd_n0028_cy [49]),
    .DI(\cla_inst/a [49]),
    .S(\cla_inst/Madd_n0028_lut [50]),
    .O(\cla_inst/Madd_n0028_cy [50])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<50>  (
    .I0(\cla_inst/a [49]),
    .I1(\cla_inst/b [49]),
    .O(\cla_inst/Madd_n0028_lut [50])
  );
  XORCY   \cla_inst/Madd_n0028_xor<49>  (
    .CI(\cla_inst/Madd_n0028_cy [48]),
    .LI(\cla_inst/Madd_n0028_lut [49]),
    .O(\cla_inst/n0028 [49])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<49>  (
    .CI(\cla_inst/Madd_n0028_cy [48]),
    .DI(\cla_inst/a [48]),
    .S(\cla_inst/Madd_n0028_lut [49]),
    .O(\cla_inst/Madd_n0028_cy [49])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<49>  (
    .I0(\cla_inst/a [48]),
    .I1(\cla_inst/b [48]),
    .O(\cla_inst/Madd_n0028_lut [49])
  );
  XORCY   \cla_inst/Madd_n0028_xor<48>  (
    .CI(\cla_inst/Madd_n0028_cy [47]),
    .LI(\cla_inst/Madd_n0028_lut [48]),
    .O(\cla_inst/n0028 [48])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<48>  (
    .CI(\cla_inst/Madd_n0028_cy [47]),
    .DI(\cla_inst/a [47]),
    .S(\cla_inst/Madd_n0028_lut [48]),
    .O(\cla_inst/Madd_n0028_cy [48])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<48>  (
    .I0(\cla_inst/a [47]),
    .I1(\cla_inst/b [47]),
    .O(\cla_inst/Madd_n0028_lut [48])
  );
  XORCY   \cla_inst/Madd_n0028_xor<47>  (
    .CI(\cla_inst/Madd_n0028_cy [46]),
    .LI(\cla_inst/Madd_n0028_lut [47]),
    .O(\cla_inst/n0028 [47])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<47>  (
    .CI(\cla_inst/Madd_n0028_cy [46]),
    .DI(\cla_inst/a [46]),
    .S(\cla_inst/Madd_n0028_lut [47]),
    .O(\cla_inst/Madd_n0028_cy [47])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<47>  (
    .I0(\cla_inst/a [46]),
    .I1(\cla_inst/b [46]),
    .O(\cla_inst/Madd_n0028_lut [47])
  );
  XORCY   \cla_inst/Madd_n0028_xor<46>  (
    .CI(\cla_inst/Madd_n0028_cy [45]),
    .LI(\cla_inst/Madd_n0028_lut [46]),
    .O(\cla_inst/n0028 [46])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<46>  (
    .CI(\cla_inst/Madd_n0028_cy [45]),
    .DI(\cla_inst/a [45]),
    .S(\cla_inst/Madd_n0028_lut [46]),
    .O(\cla_inst/Madd_n0028_cy [46])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<46>  (
    .I0(\cla_inst/a [45]),
    .I1(\cla_inst/b [45]),
    .O(\cla_inst/Madd_n0028_lut [46])
  );
  XORCY   \cla_inst/Madd_n0028_xor<45>  (
    .CI(\cla_inst/Madd_n0028_cy [44]),
    .LI(\cla_inst/Madd_n0028_lut [45]),
    .O(\cla_inst/n0028 [45])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<45>  (
    .CI(\cla_inst/Madd_n0028_cy [44]),
    .DI(\cla_inst/a [44]),
    .S(\cla_inst/Madd_n0028_lut [45]),
    .O(\cla_inst/Madd_n0028_cy [45])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<45>  (
    .I0(\cla_inst/a [44]),
    .I1(\cla_inst/b [44]),
    .O(\cla_inst/Madd_n0028_lut [45])
  );
  XORCY   \cla_inst/Madd_n0028_xor<44>  (
    .CI(\cla_inst/Madd_n0028_cy [43]),
    .LI(\cla_inst/Madd_n0028_lut [44]),
    .O(\cla_inst/n0028 [44])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<44>  (
    .CI(\cla_inst/Madd_n0028_cy [43]),
    .DI(\cla_inst/a [43]),
    .S(\cla_inst/Madd_n0028_lut [44]),
    .O(\cla_inst/Madd_n0028_cy [44])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<44>  (
    .I0(\cla_inst/a [43]),
    .I1(\cla_inst/b [43]),
    .O(\cla_inst/Madd_n0028_lut [44])
  );
  XORCY   \cla_inst/Madd_n0028_xor<43>  (
    .CI(\cla_inst/Madd_n0028_cy [42]),
    .LI(\cla_inst/Madd_n0028_lut [43]),
    .O(\cla_inst/n0028 [43])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<43>  (
    .CI(\cla_inst/Madd_n0028_cy [42]),
    .DI(\cla_inst/a [42]),
    .S(\cla_inst/Madd_n0028_lut [43]),
    .O(\cla_inst/Madd_n0028_cy [43])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<43>  (
    .I0(\cla_inst/a [42]),
    .I1(\cla_inst/b [42]),
    .O(\cla_inst/Madd_n0028_lut [43])
  );
  XORCY   \cla_inst/Madd_n0028_xor<42>  (
    .CI(\cla_inst/Madd_n0028_cy [41]),
    .LI(\cla_inst/Madd_n0028_lut [42]),
    .O(\cla_inst/n0028 [42])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<42>  (
    .CI(\cla_inst/Madd_n0028_cy [41]),
    .DI(\cla_inst/a [41]),
    .S(\cla_inst/Madd_n0028_lut [42]),
    .O(\cla_inst/Madd_n0028_cy [42])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<42>  (
    .I0(\cla_inst/a [41]),
    .I1(\cla_inst/b [41]),
    .O(\cla_inst/Madd_n0028_lut [42])
  );
  XORCY   \cla_inst/Madd_n0028_xor<41>  (
    .CI(\cla_inst/Madd_n0028_cy [40]),
    .LI(\cla_inst/Madd_n0028_lut [41]),
    .O(\cla_inst/n0028 [41])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<41>  (
    .CI(\cla_inst/Madd_n0028_cy [40]),
    .DI(\cla_inst/a [40]),
    .S(\cla_inst/Madd_n0028_lut [41]),
    .O(\cla_inst/Madd_n0028_cy [41])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<41>  (
    .I0(\cla_inst/a [40]),
    .I1(\cla_inst/b [40]),
    .O(\cla_inst/Madd_n0028_lut [41])
  );
  XORCY   \cla_inst/Madd_n0028_xor<40>  (
    .CI(\cla_inst/Madd_n0028_cy [39]),
    .LI(\cla_inst/Madd_n0028_lut [40]),
    .O(\cla_inst/n0028 [40])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<40>  (
    .CI(\cla_inst/Madd_n0028_cy [39]),
    .DI(\cla_inst/a [39]),
    .S(\cla_inst/Madd_n0028_lut [40]),
    .O(\cla_inst/Madd_n0028_cy [40])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<40>  (
    .I0(\cla_inst/a [39]),
    .I1(\cla_inst/b [39]),
    .O(\cla_inst/Madd_n0028_lut [40])
  );
  XORCY   \cla_inst/Madd_n0028_xor<39>  (
    .CI(\cla_inst/Madd_n0028_cy [38]),
    .LI(\cla_inst/Madd_n0028_lut [39]),
    .O(\cla_inst/n0028 [39])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<39>  (
    .CI(\cla_inst/Madd_n0028_cy [38]),
    .DI(\cla_inst/a [38]),
    .S(\cla_inst/Madd_n0028_lut [39]),
    .O(\cla_inst/Madd_n0028_cy [39])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<39>  (
    .I0(\cla_inst/a [38]),
    .I1(\cla_inst/b [38]),
    .O(\cla_inst/Madd_n0028_lut [39])
  );
  XORCY   \cla_inst/Madd_n0028_xor<38>  (
    .CI(\cla_inst/Madd_n0028_cy [37]),
    .LI(\cla_inst/Madd_n0028_lut [38]),
    .O(\cla_inst/n0028 [38])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<38>  (
    .CI(\cla_inst/Madd_n0028_cy [37]),
    .DI(\cla_inst/a [37]),
    .S(\cla_inst/Madd_n0028_lut [38]),
    .O(\cla_inst/Madd_n0028_cy [38])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<38>  (
    .I0(\cla_inst/a [37]),
    .I1(\cla_inst/b [37]),
    .O(\cla_inst/Madd_n0028_lut [38])
  );
  XORCY   \cla_inst/Madd_n0028_xor<37>  (
    .CI(\cla_inst/Madd_n0028_cy [36]),
    .LI(\cla_inst/Madd_n0028_lut [37]),
    .O(\cla_inst/n0028 [37])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<37>  (
    .CI(\cla_inst/Madd_n0028_cy [36]),
    .DI(\cla_inst/a [36]),
    .S(\cla_inst/Madd_n0028_lut [37]),
    .O(\cla_inst/Madd_n0028_cy [37])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<37>  (
    .I0(\cla_inst/a [36]),
    .I1(\cla_inst/b [36]),
    .O(\cla_inst/Madd_n0028_lut [37])
  );
  XORCY   \cla_inst/Madd_n0028_xor<36>  (
    .CI(\cla_inst/Madd_n0028_cy [35]),
    .LI(\cla_inst/Madd_n0028_lut [36]),
    .O(\cla_inst/n0028 [36])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<36>  (
    .CI(\cla_inst/Madd_n0028_cy [35]),
    .DI(\cla_inst/a [35]),
    .S(\cla_inst/Madd_n0028_lut [36]),
    .O(\cla_inst/Madd_n0028_cy [36])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<36>  (
    .I0(\cla_inst/a [35]),
    .I1(\cla_inst/b [35]),
    .O(\cla_inst/Madd_n0028_lut [36])
  );
  XORCY   \cla_inst/Madd_n0028_xor<35>  (
    .CI(\cla_inst/Madd_n0028_cy [34]),
    .LI(\cla_inst/Madd_n0028_lut [35]),
    .O(\cla_inst/n0028 [35])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<35>  (
    .CI(\cla_inst/Madd_n0028_cy [34]),
    .DI(\cla_inst/a [34]),
    .S(\cla_inst/Madd_n0028_lut [35]),
    .O(\cla_inst/Madd_n0028_cy [35])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<35>  (
    .I0(\cla_inst/a [34]),
    .I1(\cla_inst/b [34]),
    .O(\cla_inst/Madd_n0028_lut [35])
  );
  XORCY   \cla_inst/Madd_n0028_xor<34>  (
    .CI(\cla_inst/Madd_n0028_cy [33]),
    .LI(\cla_inst/Madd_n0028_lut [34]),
    .O(\cla_inst/n0028 [34])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<34>  (
    .CI(\cla_inst/Madd_n0028_cy [33]),
    .DI(\cla_inst/a [33]),
    .S(\cla_inst/Madd_n0028_lut [34]),
    .O(\cla_inst/Madd_n0028_cy [34])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<34>  (
    .I0(\cla_inst/a [33]),
    .I1(\cla_inst/b [33]),
    .O(\cla_inst/Madd_n0028_lut [34])
  );
  XORCY   \cla_inst/Madd_n0028_xor<33>  (
    .CI(\cla_inst/Madd_n0028_cy [32]),
    .LI(\cla_inst/Madd_n0028_lut [33]),
    .O(\cla_inst/n0028 [33])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<33>  (
    .CI(\cla_inst/Madd_n0028_cy [32]),
    .DI(\cla_inst/a [32]),
    .S(\cla_inst/Madd_n0028_lut [33]),
    .O(\cla_inst/Madd_n0028_cy [33])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<33>  (
    .I0(\cla_inst/a [32]),
    .I1(\cla_inst/b [32]),
    .O(\cla_inst/Madd_n0028_lut [33])
  );
  XORCY   \cla_inst/Madd_n0028_xor<32>  (
    .CI(\cla_inst/Madd_n0028_cy [31]),
    .LI(\cla_inst/Madd_n0028_lut [32]),
    .O(\cla_inst/n0028 [32])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<32>  (
    .CI(\cla_inst/Madd_n0028_cy [31]),
    .DI(\cla_inst/a [31]),
    .S(\cla_inst/Madd_n0028_lut [32]),
    .O(\cla_inst/Madd_n0028_cy [32])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<32>  (
    .I0(\cla_inst/a [31]),
    .I1(\cla_inst/b [31]),
    .O(\cla_inst/Madd_n0028_lut [32])
  );
  XORCY   \cla_inst/Madd_n0028_xor<31>  (
    .CI(\cla_inst/Madd_n0028_cy [30]),
    .LI(\cla_inst/Madd_n0028_lut [31]),
    .O(\cla_inst/n0028 [31])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<31>  (
    .CI(\cla_inst/Madd_n0028_cy [30]),
    .DI(\cla_inst/a [30]),
    .S(\cla_inst/Madd_n0028_lut [31]),
    .O(\cla_inst/Madd_n0028_cy [31])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<31>  (
    .I0(\cla_inst/a [30]),
    .I1(\cla_inst/b [30]),
    .O(\cla_inst/Madd_n0028_lut [31])
  );
  XORCY   \cla_inst/Madd_n0028_xor<30>  (
    .CI(\cla_inst/Madd_n0028_cy [29]),
    .LI(\cla_inst/Madd_n0028_lut [30]),
    .O(\cla_inst/n0028 [30])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<30>  (
    .CI(\cla_inst/Madd_n0028_cy [29]),
    .DI(\cla_inst/a [29]),
    .S(\cla_inst/Madd_n0028_lut [30]),
    .O(\cla_inst/Madd_n0028_cy [30])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<30>  (
    .I0(\cla_inst/a [29]),
    .I1(\cla_inst/b [29]),
    .O(\cla_inst/Madd_n0028_lut [30])
  );
  XORCY   \cla_inst/Madd_n0028_xor<29>  (
    .CI(\cla_inst/Madd_n0028_cy [28]),
    .LI(\cla_inst/Madd_n0028_lut [29]),
    .O(\cla_inst/n0028 [29])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<29>  (
    .CI(\cla_inst/Madd_n0028_cy [28]),
    .DI(\cla_inst/a [28]),
    .S(\cla_inst/Madd_n0028_lut [29]),
    .O(\cla_inst/Madd_n0028_cy [29])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<29>  (
    .I0(\cla_inst/a [28]),
    .I1(\cla_inst/b [28]),
    .O(\cla_inst/Madd_n0028_lut [29])
  );
  XORCY   \cla_inst/Madd_n0028_xor<28>  (
    .CI(\cla_inst/Madd_n0028_cy [27]),
    .LI(\cla_inst/Madd_n0028_lut [28]),
    .O(\cla_inst/n0028 [28])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<28>  (
    .CI(\cla_inst/Madd_n0028_cy [27]),
    .DI(\cla_inst/a [27]),
    .S(\cla_inst/Madd_n0028_lut [28]),
    .O(\cla_inst/Madd_n0028_cy [28])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<28>  (
    .I0(\cla_inst/a [27]),
    .I1(\cla_inst/b [27]),
    .O(\cla_inst/Madd_n0028_lut [28])
  );
  XORCY   \cla_inst/Madd_n0028_xor<27>  (
    .CI(\cla_inst/Madd_n0028_cy [26]),
    .LI(\cla_inst/Madd_n0028_lut [27]),
    .O(\cla_inst/n0028 [27])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<27>  (
    .CI(\cla_inst/Madd_n0028_cy [26]),
    .DI(\cla_inst/a [26]),
    .S(\cla_inst/Madd_n0028_lut [27]),
    .O(\cla_inst/Madd_n0028_cy [27])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<27>  (
    .I0(\cla_inst/a [26]),
    .I1(\cla_inst/b [26]),
    .O(\cla_inst/Madd_n0028_lut [27])
  );
  XORCY   \cla_inst/Madd_n0028_xor<26>  (
    .CI(\cla_inst/Madd_n0028_cy [25]),
    .LI(\cla_inst/Madd_n0028_lut [26]),
    .O(\cla_inst/n0028 [26])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<26>  (
    .CI(\cla_inst/Madd_n0028_cy [25]),
    .DI(\cla_inst/a [25]),
    .S(\cla_inst/Madd_n0028_lut [26]),
    .O(\cla_inst/Madd_n0028_cy [26])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<26>  (
    .I0(\cla_inst/a [25]),
    .I1(\cla_inst/b [25]),
    .O(\cla_inst/Madd_n0028_lut [26])
  );
  XORCY   \cla_inst/Madd_n0028_xor<25>  (
    .CI(\cla_inst/Madd_n0028_cy [24]),
    .LI(\cla_inst/Madd_n0028_lut [25]),
    .O(\cla_inst/n0028 [25])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<25>  (
    .CI(\cla_inst/Madd_n0028_cy [24]),
    .DI(\cla_inst/a [24]),
    .S(\cla_inst/Madd_n0028_lut [25]),
    .O(\cla_inst/Madd_n0028_cy [25])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<25>  (
    .I0(\cla_inst/a [24]),
    .I1(\cla_inst/b [24]),
    .O(\cla_inst/Madd_n0028_lut [25])
  );
  XORCY   \cla_inst/Madd_n0028_xor<24>  (
    .CI(\cla_inst/Madd_n0028_cy [23]),
    .LI(\cla_inst/Madd_n0028_lut [24]),
    .O(\cla_inst/n0028 [24])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<24>  (
    .CI(\cla_inst/Madd_n0028_cy [23]),
    .DI(\cla_inst/a [23]),
    .S(\cla_inst/Madd_n0028_lut [24]),
    .O(\cla_inst/Madd_n0028_cy [24])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<24>  (
    .I0(\cla_inst/a [23]),
    .I1(\cla_inst/b [23]),
    .O(\cla_inst/Madd_n0028_lut [24])
  );
  XORCY   \cla_inst/Madd_n0028_xor<23>  (
    .CI(\cla_inst/Madd_n0028_cy [22]),
    .LI(\cla_inst/Madd_n0028_lut [23]),
    .O(\cla_inst/n0028 [23])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<23>  (
    .CI(\cla_inst/Madd_n0028_cy [22]),
    .DI(\cla_inst/a [22]),
    .S(\cla_inst/Madd_n0028_lut [23]),
    .O(\cla_inst/Madd_n0028_cy [23])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<23>  (
    .I0(\cla_inst/a [22]),
    .I1(\cla_inst/b [22]),
    .O(\cla_inst/Madd_n0028_lut [23])
  );
  XORCY   \cla_inst/Madd_n0028_xor<22>  (
    .CI(\cla_inst/Madd_n0028_cy [21]),
    .LI(\cla_inst/Madd_n0028_lut [22]),
    .O(\cla_inst/n0028 [22])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<22>  (
    .CI(\cla_inst/Madd_n0028_cy [21]),
    .DI(\cla_inst/a [21]),
    .S(\cla_inst/Madd_n0028_lut [22]),
    .O(\cla_inst/Madd_n0028_cy [22])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<22>  (
    .I0(\cla_inst/a [21]),
    .I1(\cla_inst/b [21]),
    .O(\cla_inst/Madd_n0028_lut [22])
  );
  XORCY   \cla_inst/Madd_n0028_xor<21>  (
    .CI(\cla_inst/Madd_n0028_cy [20]),
    .LI(\cla_inst/Madd_n0028_lut [21]),
    .O(\cla_inst/n0028 [21])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<21>  (
    .CI(\cla_inst/Madd_n0028_cy [20]),
    .DI(\cla_inst/a [20]),
    .S(\cla_inst/Madd_n0028_lut [21]),
    .O(\cla_inst/Madd_n0028_cy [21])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<21>  (
    .I0(\cla_inst/a [20]),
    .I1(\cla_inst/b [20]),
    .O(\cla_inst/Madd_n0028_lut [21])
  );
  XORCY   \cla_inst/Madd_n0028_xor<20>  (
    .CI(\cla_inst/Madd_n0028_cy [19]),
    .LI(\cla_inst/Madd_n0028_lut [20]),
    .O(\cla_inst/n0028 [20])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<20>  (
    .CI(\cla_inst/Madd_n0028_cy [19]),
    .DI(\cla_inst/a [19]),
    .S(\cla_inst/Madd_n0028_lut [20]),
    .O(\cla_inst/Madd_n0028_cy [20])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<20>  (
    .I0(\cla_inst/a [19]),
    .I1(\cla_inst/b [19]),
    .O(\cla_inst/Madd_n0028_lut [20])
  );
  XORCY   \cla_inst/Madd_n0028_xor<19>  (
    .CI(\cla_inst/Madd_n0028_cy [18]),
    .LI(\cla_inst/Madd_n0028_lut [19]),
    .O(\cla_inst/n0028 [19])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<19>  (
    .CI(\cla_inst/Madd_n0028_cy [18]),
    .DI(\cla_inst/a [18]),
    .S(\cla_inst/Madd_n0028_lut [19]),
    .O(\cla_inst/Madd_n0028_cy [19])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<19>  (
    .I0(\cla_inst/a [18]),
    .I1(\cla_inst/b [18]),
    .O(\cla_inst/Madd_n0028_lut [19])
  );
  XORCY   \cla_inst/Madd_n0028_xor<18>  (
    .CI(\cla_inst/Madd_n0028_cy [17]),
    .LI(\cla_inst/Madd_n0028_lut [18]),
    .O(\cla_inst/n0028 [18])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<18>  (
    .CI(\cla_inst/Madd_n0028_cy [17]),
    .DI(\cla_inst/a [17]),
    .S(\cla_inst/Madd_n0028_lut [18]),
    .O(\cla_inst/Madd_n0028_cy [18])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<18>  (
    .I0(\cla_inst/a [17]),
    .I1(\cla_inst/b [17]),
    .O(\cla_inst/Madd_n0028_lut [18])
  );
  XORCY   \cla_inst/Madd_n0028_xor<17>  (
    .CI(\cla_inst/Madd_n0028_cy [16]),
    .LI(\cla_inst/Madd_n0028_lut [17]),
    .O(\cla_inst/n0028 [17])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<17>  (
    .CI(\cla_inst/Madd_n0028_cy [16]),
    .DI(\cla_inst/a [16]),
    .S(\cla_inst/Madd_n0028_lut [17]),
    .O(\cla_inst/Madd_n0028_cy [17])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<17>  (
    .I0(\cla_inst/a [16]),
    .I1(\cla_inst/b [16]),
    .O(\cla_inst/Madd_n0028_lut [17])
  );
  XORCY   \cla_inst/Madd_n0028_xor<16>  (
    .CI(\cla_inst/Madd_n0028_cy [15]),
    .LI(\cla_inst/Madd_n0028_lut [16]),
    .O(\cla_inst/n0028 [16])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<16>  (
    .CI(\cla_inst/Madd_n0028_cy [15]),
    .DI(\cla_inst/a [15]),
    .S(\cla_inst/Madd_n0028_lut [16]),
    .O(\cla_inst/Madd_n0028_cy [16])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<16>  (
    .I0(\cla_inst/a [15]),
    .I1(\cla_inst/b [15]),
    .O(\cla_inst/Madd_n0028_lut [16])
  );
  XORCY   \cla_inst/Madd_n0028_xor<15>  (
    .CI(\cla_inst/Madd_n0028_cy [14]),
    .LI(\cla_inst/Madd_n0028_lut [15]),
    .O(\cla_inst/n0028 [15])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<15>  (
    .CI(\cla_inst/Madd_n0028_cy [14]),
    .DI(\cla_inst/a [14]),
    .S(\cla_inst/Madd_n0028_lut [15]),
    .O(\cla_inst/Madd_n0028_cy [15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<15>  (
    .I0(\cla_inst/a [14]),
    .I1(\cla_inst/b [14]),
    .O(\cla_inst/Madd_n0028_lut [15])
  );
  XORCY   \cla_inst/Madd_n0028_xor<14>  (
    .CI(\cla_inst/Madd_n0028_cy [13]),
    .LI(\cla_inst/Madd_n0028_lut [14]),
    .O(\cla_inst/n0028 [14])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<14>  (
    .CI(\cla_inst/Madd_n0028_cy [13]),
    .DI(\cla_inst/a [13]),
    .S(\cla_inst/Madd_n0028_lut [14]),
    .O(\cla_inst/Madd_n0028_cy [14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<14>  (
    .I0(\cla_inst/a [13]),
    .I1(\cla_inst/b [13]),
    .O(\cla_inst/Madd_n0028_lut [14])
  );
  XORCY   \cla_inst/Madd_n0028_xor<13>  (
    .CI(\cla_inst/Madd_n0028_cy [12]),
    .LI(\cla_inst/Madd_n0028_lut [13]),
    .O(\cla_inst/n0028 [13])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<13>  (
    .CI(\cla_inst/Madd_n0028_cy [12]),
    .DI(\cla_inst/a [12]),
    .S(\cla_inst/Madd_n0028_lut [13]),
    .O(\cla_inst/Madd_n0028_cy [13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<13>  (
    .I0(\cla_inst/a [12]),
    .I1(\cla_inst/b [12]),
    .O(\cla_inst/Madd_n0028_lut [13])
  );
  XORCY   \cla_inst/Madd_n0028_xor<12>  (
    .CI(\cla_inst/Madd_n0028_cy [11]),
    .LI(\cla_inst/Madd_n0028_lut [12]),
    .O(\cla_inst/n0028 [12])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<12>  (
    .CI(\cla_inst/Madd_n0028_cy [11]),
    .DI(\cla_inst/a [11]),
    .S(\cla_inst/Madd_n0028_lut [12]),
    .O(\cla_inst/Madd_n0028_cy [12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<12>  (
    .I0(\cla_inst/a [11]),
    .I1(\cla_inst/b [11]),
    .O(\cla_inst/Madd_n0028_lut [12])
  );
  XORCY   \cla_inst/Madd_n0028_xor<11>  (
    .CI(\cla_inst/Madd_n0028_cy [10]),
    .LI(\cla_inst/Madd_n0028_lut [11]),
    .O(\cla_inst/n0028 [11])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<11>  (
    .CI(\cla_inst/Madd_n0028_cy [10]),
    .DI(\cla_inst/a [10]),
    .S(\cla_inst/Madd_n0028_lut [11]),
    .O(\cla_inst/Madd_n0028_cy [11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<11>  (
    .I0(\cla_inst/a [10]),
    .I1(\cla_inst/b [10]),
    .O(\cla_inst/Madd_n0028_lut [11])
  );
  XORCY   \cla_inst/Madd_n0028_xor<10>  (
    .CI(\cla_inst/Madd_n0028_cy [9]),
    .LI(\cla_inst/Madd_n0028_lut [10]),
    .O(\cla_inst/n0028 [10])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<10>  (
    .CI(\cla_inst/Madd_n0028_cy [9]),
    .DI(\cla_inst/a [9]),
    .S(\cla_inst/Madd_n0028_lut [10]),
    .O(\cla_inst/Madd_n0028_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<10>  (
    .I0(\cla_inst/a [9]),
    .I1(\cla_inst/b [9]),
    .O(\cla_inst/Madd_n0028_lut [10])
  );
  XORCY   \cla_inst/Madd_n0028_xor<9>  (
    .CI(\cla_inst/Madd_n0028_cy [8]),
    .LI(\cla_inst/Madd_n0028_lut [9]),
    .O(\cla_inst/n0028 [9])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<9>  (
    .CI(\cla_inst/Madd_n0028_cy [8]),
    .DI(\cla_inst/a [8]),
    .S(\cla_inst/Madd_n0028_lut [9]),
    .O(\cla_inst/Madd_n0028_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<9>  (
    .I0(\cla_inst/a [8]),
    .I1(\cla_inst/b [8]),
    .O(\cla_inst/Madd_n0028_lut [9])
  );
  XORCY   \cla_inst/Madd_n0028_xor<8>  (
    .CI(\cla_inst/Madd_n0028_cy [7]),
    .LI(\cla_inst/Madd_n0028_lut [8]),
    .O(\cla_inst/n0028 [8])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<8>  (
    .CI(\cla_inst/Madd_n0028_cy [7]),
    .DI(\cla_inst/a [7]),
    .S(\cla_inst/Madd_n0028_lut [8]),
    .O(\cla_inst/Madd_n0028_cy [8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<8>  (
    .I0(\cla_inst/a [7]),
    .I1(\cla_inst/b [7]),
    .O(\cla_inst/Madd_n0028_lut [8])
  );
  XORCY   \cla_inst/Madd_n0028_xor<7>  (
    .CI(\cla_inst/Madd_n0028_cy [6]),
    .LI(\cla_inst/Madd_n0028_lut [7]),
    .O(\cla_inst/n0028 [7])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<7>  (
    .CI(\cla_inst/Madd_n0028_cy [6]),
    .DI(\cla_inst/a [6]),
    .S(\cla_inst/Madd_n0028_lut [7]),
    .O(\cla_inst/Madd_n0028_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<7>  (
    .I0(\cla_inst/a [6]),
    .I1(\cla_inst/b [6]),
    .O(\cla_inst/Madd_n0028_lut [7])
  );
  XORCY   \cla_inst/Madd_n0028_xor<6>  (
    .CI(\cla_inst/Madd_n0028_cy [5]),
    .LI(\cla_inst/Madd_n0028_lut [6]),
    .O(\cla_inst/n0028 [6])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<6>  (
    .CI(\cla_inst/Madd_n0028_cy [5]),
    .DI(\cla_inst/a [5]),
    .S(\cla_inst/Madd_n0028_lut [6]),
    .O(\cla_inst/Madd_n0028_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<6>  (
    .I0(\cla_inst/a [5]),
    .I1(\cla_inst/b [5]),
    .O(\cla_inst/Madd_n0028_lut [6])
  );
  XORCY   \cla_inst/Madd_n0028_xor<5>  (
    .CI(\cla_inst/Madd_n0028_cy [4]),
    .LI(\cla_inst/Madd_n0028_lut [5]),
    .O(\cla_inst/n0028 [5])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<5>  (
    .CI(\cla_inst/Madd_n0028_cy [4]),
    .DI(\cla_inst/a [4]),
    .S(\cla_inst/Madd_n0028_lut [5]),
    .O(\cla_inst/Madd_n0028_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<5>  (
    .I0(\cla_inst/a [4]),
    .I1(\cla_inst/b [4]),
    .O(\cla_inst/Madd_n0028_lut [5])
  );
  XORCY   \cla_inst/Madd_n0028_xor<4>  (
    .CI(\cla_inst/Madd_n0028_cy [3]),
    .LI(\cla_inst/Madd_n0028_lut [4]),
    .O(\cla_inst/n0028 [4])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<4>  (
    .CI(\cla_inst/Madd_n0028_cy [3]),
    .DI(\cla_inst/a [3]),
    .S(\cla_inst/Madd_n0028_lut [4]),
    .O(\cla_inst/Madd_n0028_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<4>  (
    .I0(\cla_inst/a [3]),
    .I1(\cla_inst/b [3]),
    .O(\cla_inst/Madd_n0028_lut [4])
  );
  XORCY   \cla_inst/Madd_n0028_xor<3>  (
    .CI(\cla_inst/Madd_n0028_cy [2]),
    .LI(\cla_inst/Madd_n0028_lut [3]),
    .O(\cla_inst/n0028 [3])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<3>  (
    .CI(\cla_inst/Madd_n0028_cy [2]),
    .DI(\cla_inst/a [2]),
    .S(\cla_inst/Madd_n0028_lut [3]),
    .O(\cla_inst/Madd_n0028_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<3>  (
    .I0(\cla_inst/a [2]),
    .I1(\cla_inst/b [2]),
    .O(\cla_inst/Madd_n0028_lut [3])
  );
  XORCY   \cla_inst/Madd_n0028_xor<2>  (
    .CI(\cla_inst/Madd_n0028_cy [1]),
    .LI(\cla_inst/Madd_n0028_lut [2]),
    .O(\cla_inst/n0028 [2])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<2>  (
    .CI(\cla_inst/Madd_n0028_cy [1]),
    .DI(\cla_inst/a [1]),
    .S(\cla_inst/Madd_n0028_lut [2]),
    .O(\cla_inst/Madd_n0028_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<2>  (
    .I0(\cla_inst/a [1]),
    .I1(\cla_inst/b [1]),
    .O(\cla_inst/Madd_n0028_lut [2])
  );
  XORCY   \cla_inst/Madd_n0028_xor<1>  (
    .CI(\cla_inst/Madd_n0028_cy [0]),
    .LI(\cla_inst/Madd_n0028_lut [1]),
    .O(\cla_inst/n0028 [1])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<1>  (
    .CI(\cla_inst/Madd_n0028_cy [0]),
    .DI(\cla_inst/a [0]),
    .S(\cla_inst/Madd_n0028_lut [1]),
    .O(\cla_inst/Madd_n0028_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \cla_inst/Madd_n0028_lut<1>  (
    .I0(\cla_inst/a [0]),
    .I1(\cla_inst/b [0]),
    .O(\cla_inst/Madd_n0028_lut [1])
  );
  MUXCY   \cla_inst/Madd_n0028_cy<0>  (
    .CI(N1),
    .DI(\cla_inst/carry_in_1199 ),
    .S(N1),
    .O(\cla_inst/Madd_n0028_cy [0])
  );
  FDR   \cla_inst/sum_194  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [195]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [194])
  );
  FDR   \cla_inst/sum_193  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [194]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [193])
  );
  FDR   \cla_inst/sum_192  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [193]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [192])
  );
  FDR   \cla_inst/sum_191  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [192]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [191])
  );
  FDR   \cla_inst/sum_190  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [191]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [190])
  );
  FDR   \cla_inst/sum_189  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [190]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [189])
  );
  FDR   \cla_inst/sum_188  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [189]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [188])
  );
  FDR   \cla_inst/sum_187  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [188]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [187])
  );
  FDR   \cla_inst/sum_186  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [187]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [186])
  );
  FDR   \cla_inst/sum_185  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [186]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [185])
  );
  FDR   \cla_inst/sum_184  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [185]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [184])
  );
  FDR   \cla_inst/sum_183  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [184]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [183])
  );
  FDR   \cla_inst/sum_182  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [183]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [182])
  );
  FDR   \cla_inst/sum_181  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [182]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [181])
  );
  FDR   \cla_inst/sum_180  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [181]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [180])
  );
  FDR   \cla_inst/sum_179  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [180]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [179])
  );
  FDR   \cla_inst/sum_178  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [179]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [178])
  );
  FDR   \cla_inst/sum_177  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [178]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [177])
  );
  FDR   \cla_inst/sum_176  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [177]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [176])
  );
  FDR   \cla_inst/sum_175  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [176]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [175])
  );
  FDR   \cla_inst/sum_174  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [175]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [174])
  );
  FDR   \cla_inst/sum_173  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [174]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [173])
  );
  FDR   \cla_inst/sum_172  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [173]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [172])
  );
  FDR   \cla_inst/sum_171  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [172]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [171])
  );
  FDR   \cla_inst/sum_170  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [171]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [170])
  );
  FDR   \cla_inst/sum_169  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [170]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [169])
  );
  FDR   \cla_inst/sum_168  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [169]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [168])
  );
  FDR   \cla_inst/sum_167  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [168]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [167])
  );
  FDR   \cla_inst/sum_166  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [167]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [166])
  );
  FDR   \cla_inst/sum_165  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [166]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [165])
  );
  FDR   \cla_inst/sum_164  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [165]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [164])
  );
  FDR   \cla_inst/sum_163  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [164]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [163])
  );
  FDR   \cla_inst/sum_162  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [163]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [162])
  );
  FDR   \cla_inst/sum_161  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [162]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [161])
  );
  FDR   \cla_inst/sum_160  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [161]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [160])
  );
  FDR   \cla_inst/sum_159  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [160]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [159])
  );
  FDR   \cla_inst/sum_158  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [159]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [158])
  );
  FDR   \cla_inst/sum_157  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [158]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [157])
  );
  FDR   \cla_inst/sum_156  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [157]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [156])
  );
  FDR   \cla_inst/sum_155  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [156]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [155])
  );
  FDR   \cla_inst/sum_154  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [155]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [154])
  );
  FDR   \cla_inst/sum_153  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [154]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [153])
  );
  FDR   \cla_inst/sum_152  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [153]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [152])
  );
  FDR   \cla_inst/sum_151  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [152]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [151])
  );
  FDR   \cla_inst/sum_150  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [151]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [150])
  );
  FDR   \cla_inst/sum_149  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [150]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [149])
  );
  FDR   \cla_inst/sum_148  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [149]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [148])
  );
  FDR   \cla_inst/sum_147  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [148]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [147])
  );
  FDR   \cla_inst/sum_146  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [147]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [146])
  );
  FDR   \cla_inst/sum_145  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [146]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [145])
  );
  FDR   \cla_inst/sum_144  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [145]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [144])
  );
  FDR   \cla_inst/sum_143  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [144]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [143])
  );
  FDR   \cla_inst/sum_142  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [143]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [142])
  );
  FDR   \cla_inst/sum_141  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [142]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [141])
  );
  FDR   \cla_inst/sum_140  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [141]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [140])
  );
  FDR   \cla_inst/sum_139  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [140]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [139])
  );
  FDR   \cla_inst/sum_138  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [139]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [138])
  );
  FDR   \cla_inst/sum_137  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [138]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [137])
  );
  FDR   \cla_inst/sum_136  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [137]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [136])
  );
  FDR   \cla_inst/sum_135  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [136]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [135])
  );
  FDR   \cla_inst/sum_134  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [135]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [134])
  );
  FDR   \cla_inst/sum_133  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [134]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [133])
  );
  FDR   \cla_inst/sum_132  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [133]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [132])
  );
  FDR   \cla_inst/sum_131  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [132]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [131])
  );
  FDR   \cla_inst/sum_130  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [131]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [130])
  );
  FDR   \cla_inst/sum_129  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [130]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [129])
  );
  FDR   \cla_inst/sum_128  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [129]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [128])
  );
  FDR   \cla_inst/sum_127  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [128]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [127])
  );
  FDR   \cla_inst/sum_126  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [127]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [126])
  );
  FDR   \cla_inst/sum_125  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [126]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [125])
  );
  FDR   \cla_inst/sum_124  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [125]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [124])
  );
  FDR   \cla_inst/sum_123  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [124]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [123])
  );
  FDR   \cla_inst/sum_122  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [123]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [122])
  );
  FDR   \cla_inst/sum_121  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [122]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [121])
  );
  FDR   \cla_inst/sum_120  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [121]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [120])
  );
  FDR   \cla_inst/sum_119  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [120]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [119])
  );
  FDR   \cla_inst/sum_118  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [119]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [118])
  );
  FDR   \cla_inst/sum_117  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [118]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [117])
  );
  FDR   \cla_inst/sum_116  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [117]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [116])
  );
  FDR   \cla_inst/sum_115  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [116]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [115])
  );
  FDR   \cla_inst/sum_114  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [115]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [114])
  );
  FDR   \cla_inst/sum_113  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [114]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [113])
  );
  FDR   \cla_inst/sum_112  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [113]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [112])
  );
  FDR   \cla_inst/sum_111  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [112]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [111])
  );
  FDR   \cla_inst/sum_110  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [111]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [110])
  );
  FDR   \cla_inst/sum_109  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [110]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [109])
  );
  FDR   \cla_inst/sum_108  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [109]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [108])
  );
  FDR   \cla_inst/sum_107  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [108]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [107])
  );
  FDR   \cla_inst/sum_106  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [107]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [106])
  );
  FDR   \cla_inst/sum_105  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [106]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [105])
  );
  FDR   \cla_inst/sum_104  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [105]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [104])
  );
  FDR   \cla_inst/sum_103  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [104]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [103])
  );
  FDR   \cla_inst/sum_102  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [103]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [102])
  );
  FDR   \cla_inst/sum_101  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [102]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [101])
  );
  FDR   \cla_inst/sum_100  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [101]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [100])
  );
  FDR   \cla_inst/sum_99  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [100]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [99])
  );
  FDR   \cla_inst/sum_98  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [99]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [98])
  );
  FDR   \cla_inst/sum_97  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [98]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [97])
  );
  FDR   \cla_inst/sum_96  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [97]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [96])
  );
  FDR   \cla_inst/sum_95  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [96]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [95])
  );
  FDR   \cla_inst/sum_94  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [95]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [94])
  );
  FDR   \cla_inst/sum_93  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [94]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [93])
  );
  FDR   \cla_inst/sum_92  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [93]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [92])
  );
  FDR   \cla_inst/sum_91  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [92]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [91])
  );
  FDR   \cla_inst/sum_90  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [91]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [90])
  );
  FDR   \cla_inst/sum_89  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [90]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [89])
  );
  FDR   \cla_inst/sum_88  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [89]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [88])
  );
  FDR   \cla_inst/sum_87  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [88]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [87])
  );
  FDR   \cla_inst/sum_86  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [87]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [86])
  );
  FDR   \cla_inst/sum_85  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [86]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [85])
  );
  FDR   \cla_inst/sum_84  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [85]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [84])
  );
  FDR   \cla_inst/sum_83  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [84]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [83])
  );
  FDR   \cla_inst/sum_82  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [83]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [82])
  );
  FDR   \cla_inst/sum_81  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [82]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [81])
  );
  FDR   \cla_inst/sum_80  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [81]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [80])
  );
  FDR   \cla_inst/sum_79  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [80]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [79])
  );
  FDR   \cla_inst/sum_78  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [79]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [78])
  );
  FDR   \cla_inst/sum_77  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [78]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [77])
  );
  FDR   \cla_inst/sum_76  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [77]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [76])
  );
  FDR   \cla_inst/sum_75  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [76]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [75])
  );
  FDR   \cla_inst/sum_74  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [75]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [74])
  );
  FDR   \cla_inst/sum_73  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [74]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [73])
  );
  FDR   \cla_inst/sum_72  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [73]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [72])
  );
  FDR   \cla_inst/sum_71  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [72]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [71])
  );
  FDR   \cla_inst/sum_70  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [71]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [70])
  );
  FDR   \cla_inst/sum_69  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [70]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [69])
  );
  FDR   \cla_inst/sum_68  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [69]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [68])
  );
  FDR   \cla_inst/sum_67  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [68]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [67])
  );
  FDR   \cla_inst/sum_66  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [67]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [66])
  );
  FDR   \cla_inst/sum_65  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [66]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [65])
  );
  FDR   \cla_inst/sum_64  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [65]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [64])
  );
  FDR   \cla_inst/sum_63  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [64]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [63])
  );
  FDR   \cla_inst/sum_62  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [63]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [62])
  );
  FDR   \cla_inst/sum_61  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [62]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [61])
  );
  FDR   \cla_inst/sum_60  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [61]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [60])
  );
  FDR   \cla_inst/sum_59  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [60]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [59])
  );
  FDR   \cla_inst/sum_58  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [59]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [58])
  );
  FDR   \cla_inst/sum_57  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [58]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [57])
  );
  FDR   \cla_inst/sum_56  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [57]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [56])
  );
  FDR   \cla_inst/sum_55  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [56]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [55])
  );
  FDR   \cla_inst/sum_54  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [55]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [54])
  );
  FDR   \cla_inst/sum_53  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [54]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [53])
  );
  FDR   \cla_inst/sum_52  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [53]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [52])
  );
  FDR   \cla_inst/sum_51  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [52]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [51])
  );
  FDR   \cla_inst/sum_50  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [51]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [50])
  );
  FDR   \cla_inst/sum_49  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [50]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [49])
  );
  FDR   \cla_inst/sum_48  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [49]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [48])
  );
  FDR   \cla_inst/sum_47  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [48]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [47])
  );
  FDR   \cla_inst/sum_46  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [47]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [46])
  );
  FDR   \cla_inst/sum_45  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [46]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [45])
  );
  FDR   \cla_inst/sum_44  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [45]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [44])
  );
  FDR   \cla_inst/sum_43  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [44]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [43])
  );
  FDR   \cla_inst/sum_42  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [43]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [42])
  );
  FDR   \cla_inst/sum_41  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [42]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [41])
  );
  FDR   \cla_inst/sum_40  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [41]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [40])
  );
  FDR   \cla_inst/sum_39  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [40]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [39])
  );
  FDR   \cla_inst/sum_38  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [39]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [38])
  );
  FDR   \cla_inst/sum_37  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [38]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [37])
  );
  FDR   \cla_inst/sum_36  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [37]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [36])
  );
  FDR   \cla_inst/sum_35  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [36]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [35])
  );
  FDR   \cla_inst/sum_34  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [35]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [34])
  );
  FDR   \cla_inst/sum_33  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [34]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [33])
  );
  FDR   \cla_inst/sum_32  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [33]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [32])
  );
  FDR   \cla_inst/sum_31  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [32]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [31])
  );
  FDR   \cla_inst/sum_30  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [31]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [30])
  );
  FDR   \cla_inst/sum_29  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [30]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [29])
  );
  FDR   \cla_inst/sum_28  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [29]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [28])
  );
  FDR   \cla_inst/sum_27  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [28]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [27])
  );
  FDR   \cla_inst/sum_26  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [27]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [26])
  );
  FDR   \cla_inst/sum_25  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [26]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [25])
  );
  FDR   \cla_inst/sum_24  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [25]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [24])
  );
  FDR   \cla_inst/sum_23  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [24]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [23])
  );
  FDR   \cla_inst/sum_22  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [23]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [22])
  );
  FDR   \cla_inst/sum_21  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [22]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [21])
  );
  FDR   \cla_inst/sum_20  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [21]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [20])
  );
  FDR   \cla_inst/sum_19  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [20]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [19])
  );
  FDR   \cla_inst/sum_18  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [19]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [18])
  );
  FDR   \cla_inst/sum_17  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [18]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [17])
  );
  FDR   \cla_inst/sum_16  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [17]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [16])
  );
  FDR   \cla_inst/sum_15  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [16]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [15])
  );
  FDR   \cla_inst/sum_14  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [15]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [14])
  );
  FDR   \cla_inst/sum_13  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [14]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [13])
  );
  FDR   \cla_inst/sum_12  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [13]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [12])
  );
  FDR   \cla_inst/sum_11  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [12]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [11])
  );
  FDR   \cla_inst/sum_10  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [11]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [10])
  );
  FDR   \cla_inst/sum_9  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [10]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [9])
  );
  FDR   \cla_inst/sum_8  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [9]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [8])
  );
  FDR   \cla_inst/sum_7  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [8]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [7])
  );
  FDR   \cla_inst/sum_6  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [7]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [6])
  );
  FDR   \cla_inst/sum_5  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [6]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [5])
  );
  FDR   \cla_inst/sum_4  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [5]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [4])
  );
  FDR   \cla_inst/sum_3  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [4]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [3])
  );
  FDR   \cla_inst/sum_2  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [3]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [2])
  );
  FDR   \cla_inst/sum_1  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [2]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [1])
  );
  FDR   \cla_inst/sum_0  (
    .C(clk_bufg),
    .D(\cla_inst/n0028 [1]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/sum [0])
  );
  FDR   \cla_inst/b_194  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<194> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [194])
  );
  FDR   \cla_inst/b_193  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<193> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [193])
  );
  FDR   \cla_inst/b_192  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<192> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [192])
  );
  FDR   \cla_inst/b_191  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<191> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [191])
  );
  FDR   \cla_inst/b_190  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<190> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [190])
  );
  FDR   \cla_inst/b_189  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<189> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [189])
  );
  FDR   \cla_inst/b_188  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<188> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [188])
  );
  FDR   \cla_inst/b_187  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<187> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [187])
  );
  FDR   \cla_inst/b_186  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<186> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [186])
  );
  FDR   \cla_inst/b_185  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<185> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [185])
  );
  FDR   \cla_inst/b_184  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<184> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [184])
  );
  FDR   \cla_inst/b_183  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<183> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [183])
  );
  FDR   \cla_inst/b_182  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<182> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [182])
  );
  FDR   \cla_inst/b_181  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<181> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [181])
  );
  FDR   \cla_inst/b_180  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<180> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [180])
  );
  FDR   \cla_inst/b_179  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<179> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [179])
  );
  FDR   \cla_inst/b_178  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<178> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [178])
  );
  FDR   \cla_inst/b_177  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<177> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [177])
  );
  FDR   \cla_inst/b_176  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<176> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [176])
  );
  FDR   \cla_inst/b_175  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<175> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [175])
  );
  FDR   \cla_inst/b_174  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<174> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [174])
  );
  FDR   \cla_inst/b_173  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<173> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [173])
  );
  FDR   \cla_inst/b_172  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<172> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [172])
  );
  FDR   \cla_inst/b_171  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<171> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [171])
  );
  FDR   \cla_inst/b_170  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<170> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [170])
  );
  FDR   \cla_inst/b_169  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<169> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [169])
  );
  FDR   \cla_inst/b_168  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<168> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [168])
  );
  FDR   \cla_inst/b_167  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<167> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [167])
  );
  FDR   \cla_inst/b_166  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<166> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [166])
  );
  FDR   \cla_inst/b_165  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<165> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [165])
  );
  FDR   \cla_inst/b_164  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<164> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [164])
  );
  FDR   \cla_inst/b_163  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<163> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [163])
  );
  FDR   \cla_inst/b_162  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<162> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [162])
  );
  FDR   \cla_inst/b_161  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<161> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [161])
  );
  FDR   \cla_inst/b_160  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<160> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [160])
  );
  FDR   \cla_inst/b_159  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<159> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [159])
  );
  FDR   \cla_inst/b_158  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<158> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [158])
  );
  FDR   \cla_inst/b_157  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<157> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [157])
  );
  FDR   \cla_inst/b_156  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<156> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [156])
  );
  FDR   \cla_inst/b_155  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<155> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [155])
  );
  FDR   \cla_inst/b_154  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<154> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [154])
  );
  FDR   \cla_inst/b_153  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<153> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [153])
  );
  FDR   \cla_inst/b_152  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<152> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [152])
  );
  FDR   \cla_inst/b_151  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<151> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [151])
  );
  FDR   \cla_inst/b_150  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<150> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [150])
  );
  FDR   \cla_inst/b_149  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<149> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [149])
  );
  FDR   \cla_inst/b_148  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<148> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [148])
  );
  FDR   \cla_inst/b_147  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<147> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [147])
  );
  FDR   \cla_inst/b_146  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<146> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [146])
  );
  FDR   \cla_inst/b_145  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<145> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [145])
  );
  FDR   \cla_inst/b_144  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<144> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [144])
  );
  FDR   \cla_inst/b_143  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<143> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [143])
  );
  FDR   \cla_inst/b_142  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<142> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [142])
  );
  FDR   \cla_inst/b_141  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<141> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [141])
  );
  FDR   \cla_inst/b_140  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<140> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [140])
  );
  FDR   \cla_inst/b_139  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<139> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [139])
  );
  FDR   \cla_inst/b_138  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<138> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [138])
  );
  FDR   \cla_inst/b_137  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<137> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [137])
  );
  FDR   \cla_inst/b_136  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<136> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [136])
  );
  FDR   \cla_inst/b_135  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<135> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [135])
  );
  FDR   \cla_inst/b_134  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<134> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [134])
  );
  FDR   \cla_inst/b_133  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<133> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [133])
  );
  FDR   \cla_inst/b_132  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<132> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [132])
  );
  FDR   \cla_inst/b_131  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<131> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [131])
  );
  FDR   \cla_inst/b_130  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<130> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [130])
  );
  FDR   \cla_inst/b_129  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<129> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [129])
  );
  FDR   \cla_inst/b_128  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<128> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [128])
  );
  FDR   \cla_inst/b_127  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<127> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [127])
  );
  FDR   \cla_inst/b_126  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<126> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [126])
  );
  FDR   \cla_inst/b_125  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<125> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [125])
  );
  FDR   \cla_inst/b_124  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<124> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [124])
  );
  FDR   \cla_inst/b_123  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<123> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [123])
  );
  FDR   \cla_inst/b_122  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<122> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [122])
  );
  FDR   \cla_inst/b_121  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<121> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [121])
  );
  FDR   \cla_inst/b_120  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<120> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [120])
  );
  FDR   \cla_inst/b_119  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<119> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [119])
  );
  FDR   \cla_inst/b_118  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<118> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [118])
  );
  FDR   \cla_inst/b_117  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<117> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [117])
  );
  FDR   \cla_inst/b_116  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<116> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [116])
  );
  FDR   \cla_inst/b_115  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<115> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [115])
  );
  FDR   \cla_inst/b_114  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<114> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [114])
  );
  FDR   \cla_inst/b_113  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<113> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [113])
  );
  FDR   \cla_inst/b_112  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<112> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [112])
  );
  FDR   \cla_inst/b_111  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<111> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [111])
  );
  FDR   \cla_inst/b_110  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<110> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [110])
  );
  FDR   \cla_inst/b_109  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<109> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [109])
  );
  FDR   \cla_inst/b_108  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<108> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [108])
  );
  FDR   \cla_inst/b_107  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<107> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [107])
  );
  FDR   \cla_inst/b_106  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<106> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [106])
  );
  FDR   \cla_inst/b_105  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<105> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [105])
  );
  FDR   \cla_inst/b_104  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<104> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [104])
  );
  FDR   \cla_inst/b_103  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<103> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [103])
  );
  FDR   \cla_inst/b_102  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<102> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [102])
  );
  FDR   \cla_inst/b_101  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<101> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [101])
  );
  FDR   \cla_inst/b_100  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<100> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [100])
  );
  FDR   \cla_inst/b_99  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<99> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [99])
  );
  FDR   \cla_inst/b_98  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<98> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [98])
  );
  FDR   \cla_inst/b_97  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<97> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [97])
  );
  FDR   \cla_inst/b_96  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<96> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [96])
  );
  FDR   \cla_inst/b_95  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<95> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [95])
  );
  FDR   \cla_inst/b_94  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<94> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [94])
  );
  FDR   \cla_inst/b_93  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<93> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [93])
  );
  FDR   \cla_inst/b_92  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<92> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [92])
  );
  FDR   \cla_inst/b_91  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<91> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [91])
  );
  FDR   \cla_inst/b_90  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<90> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [90])
  );
  FDR   \cla_inst/b_89  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<89> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [89])
  );
  FDR   \cla_inst/b_88  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<88> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [88])
  );
  FDR   \cla_inst/b_87  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<87> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [87])
  );
  FDR   \cla_inst/b_86  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<86> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [86])
  );
  FDR   \cla_inst/b_85  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<85> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [85])
  );
  FDR   \cla_inst/b_84  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<84> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [84])
  );
  FDR   \cla_inst/b_83  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<83> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [83])
  );
  FDR   \cla_inst/b_82  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<82> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [82])
  );
  FDR   \cla_inst/b_81  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<81> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [81])
  );
  FDR   \cla_inst/b_80  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<80> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [80])
  );
  FDR   \cla_inst/b_79  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<79> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [79])
  );
  FDR   \cla_inst/b_78  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<78> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [78])
  );
  FDR   \cla_inst/b_77  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<77> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [77])
  );
  FDR   \cla_inst/b_76  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<76> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [76])
  );
  FDR   \cla_inst/b_75  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<75> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [75])
  );
  FDR   \cla_inst/b_74  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<74> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [74])
  );
  FDR   \cla_inst/b_73  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<73> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [73])
  );
  FDR   \cla_inst/b_72  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<72> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [72])
  );
  FDR   \cla_inst/b_71  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<71> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [71])
  );
  FDR   \cla_inst/b_70  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<70> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [70])
  );
  FDR   \cla_inst/b_69  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<69> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [69])
  );
  FDR   \cla_inst/b_68  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<68> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [68])
  );
  FDR   \cla_inst/b_67  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<67> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [67])
  );
  FDR   \cla_inst/b_66  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<66> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [66])
  );
  FDR   \cla_inst/b_65  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<65> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [65])
  );
  FDR   \cla_inst/b_64  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<64> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [64])
  );
  FDR   \cla_inst/b_63  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<63> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [63])
  );
  FDR   \cla_inst/b_62  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<62> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [62])
  );
  FDR   \cla_inst/b_61  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<61> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [61])
  );
  FDR   \cla_inst/b_60  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<60> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [60])
  );
  FDR   \cla_inst/b_59  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<59> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [59])
  );
  FDR   \cla_inst/b_58  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<58> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [58])
  );
  FDR   \cla_inst/b_57  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<57> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [57])
  );
  FDR   \cla_inst/b_56  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<56> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [56])
  );
  FDR   \cla_inst/b_55  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<55> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [55])
  );
  FDR   \cla_inst/b_54  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<54> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [54])
  );
  FDR   \cla_inst/b_53  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<53> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [53])
  );
  FDR   \cla_inst/b_52  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<52> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [52])
  );
  FDR   \cla_inst/b_51  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<51> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [51])
  );
  FDR   \cla_inst/b_50  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<50> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [50])
  );
  FDR   \cla_inst/b_49  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<49> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [49])
  );
  FDR   \cla_inst/b_48  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<48> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [48])
  );
  FDR   \cla_inst/b_47  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<47> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [47])
  );
  FDR   \cla_inst/b_46  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<46> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [46])
  );
  FDR   \cla_inst/b_45  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<45> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [45])
  );
  FDR   \cla_inst/b_44  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<44> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [44])
  );
  FDR   \cla_inst/b_43  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<43> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [43])
  );
  FDR   \cla_inst/b_42  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<42> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [42])
  );
  FDR   \cla_inst/b_41  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<41> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [41])
  );
  FDR   \cla_inst/b_40  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<40> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [40])
  );
  FDR   \cla_inst/b_39  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<39> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [39])
  );
  FDR   \cla_inst/b_38  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<38> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [38])
  );
  FDR   \cla_inst/b_37  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<37> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [37])
  );
  FDR   \cla_inst/b_36  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<36> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [36])
  );
  FDR   \cla_inst/b_35  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<35> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [35])
  );
  FDR   \cla_inst/b_34  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<34> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [34])
  );
  FDR   \cla_inst/b_33  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<33> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [33])
  );
  FDR   \cla_inst/b_32  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<32> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [32])
  );
  FDR   \cla_inst/b_31  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<31> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [31])
  );
  FDR   \cla_inst/b_30  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<30> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [30])
  );
  FDR   \cla_inst/b_29  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<29> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [29])
  );
  FDR   \cla_inst/b_28  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<28> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [28])
  );
  FDR   \cla_inst/b_27  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<27> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [27])
  );
  FDR   \cla_inst/b_26  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<26> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [26])
  );
  FDR   \cla_inst/b_25  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<25> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [25])
  );
  FDR   \cla_inst/b_24  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<24> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [24])
  );
  FDR   \cla_inst/b_23  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<23> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [23])
  );
  FDR   \cla_inst/b_22  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<22> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [22])
  );
  FDR   \cla_inst/b_21  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<21> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [21])
  );
  FDR   \cla_inst/b_20  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<20> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [20])
  );
  FDR   \cla_inst/b_19  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<19> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [19])
  );
  FDR   \cla_inst/b_18  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<18> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [18])
  );
  FDR   \cla_inst/b_17  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<17> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [17])
  );
  FDR   \cla_inst/b_16  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<16> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [16])
  );
  FDR   \cla_inst/b_15  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<15> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [15])
  );
  FDR   \cla_inst/b_14  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<14> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [14])
  );
  FDR   \cla_inst/b_13  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<13> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [13])
  );
  FDR   \cla_inst/b_12  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<12> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [12])
  );
  FDR   \cla_inst/b_11  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<11> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [11])
  );
  FDR   \cla_inst/b_10  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<10> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [10])
  );
  FDR   \cla_inst/b_9  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<9> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [9])
  );
  FDR   \cla_inst/b_8  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<8> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [8])
  );
  FDR   \cla_inst/b_7  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<7> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [7])
  );
  FDR   \cla_inst/b_6  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<6> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [6])
  );
  FDR   \cla_inst/b_5  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<5> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [5])
  );
  FDR   \cla_inst/b_4  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<4> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [4])
  );
  FDR   \cla_inst/b_3  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<3> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [3])
  );
  FDR   \cla_inst/b_2  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<2> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [2])
  );
  FDR   \cla_inst/b_1  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<1> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [1])
  );
  FDR   \cla_inst/b_0  (
    .C(clk_bufg),
    .D(\cla_inst/counter[194]_inv_2_OUT<0> ),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/b [0])
  );
  FDR   \cla_inst/a_194  (
    .C(clk_bufg),
    .D(\cla_inst/counter [194]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [194])
  );
  FDR   \cla_inst/a_193  (
    .C(clk_bufg),
    .D(\cla_inst/counter [193]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [193])
  );
  FDR   \cla_inst/a_192  (
    .C(clk_bufg),
    .D(\cla_inst/counter [192]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [192])
  );
  FDR   \cla_inst/a_191  (
    .C(clk_bufg),
    .D(\cla_inst/counter [191]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [191])
  );
  FDR   \cla_inst/a_190  (
    .C(clk_bufg),
    .D(\cla_inst/counter [190]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [190])
  );
  FDR   \cla_inst/a_189  (
    .C(clk_bufg),
    .D(\cla_inst/counter [189]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [189])
  );
  FDR   \cla_inst/a_188  (
    .C(clk_bufg),
    .D(\cla_inst/counter [188]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [188])
  );
  FDR   \cla_inst/a_187  (
    .C(clk_bufg),
    .D(\cla_inst/counter [187]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [187])
  );
  FDR   \cla_inst/a_186  (
    .C(clk_bufg),
    .D(\cla_inst/counter [186]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [186])
  );
  FDR   \cla_inst/a_185  (
    .C(clk_bufg),
    .D(\cla_inst/counter [185]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [185])
  );
  FDR   \cla_inst/a_184  (
    .C(clk_bufg),
    .D(\cla_inst/counter [184]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [184])
  );
  FDR   \cla_inst/a_183  (
    .C(clk_bufg),
    .D(\cla_inst/counter [183]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [183])
  );
  FDR   \cla_inst/a_182  (
    .C(clk_bufg),
    .D(\cla_inst/counter [182]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [182])
  );
  FDR   \cla_inst/a_181  (
    .C(clk_bufg),
    .D(\cla_inst/counter [181]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [181])
  );
  FDR   \cla_inst/a_180  (
    .C(clk_bufg),
    .D(\cla_inst/counter [180]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [180])
  );
  FDR   \cla_inst/a_179  (
    .C(clk_bufg),
    .D(\cla_inst/counter [179]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [179])
  );
  FDR   \cla_inst/a_178  (
    .C(clk_bufg),
    .D(\cla_inst/counter [178]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [178])
  );
  FDR   \cla_inst/a_177  (
    .C(clk_bufg),
    .D(\cla_inst/counter [177]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [177])
  );
  FDR   \cla_inst/a_176  (
    .C(clk_bufg),
    .D(\cla_inst/counter [176]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [176])
  );
  FDR   \cla_inst/a_175  (
    .C(clk_bufg),
    .D(\cla_inst/counter [175]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [175])
  );
  FDR   \cla_inst/a_174  (
    .C(clk_bufg),
    .D(\cla_inst/counter [174]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [174])
  );
  FDR   \cla_inst/a_173  (
    .C(clk_bufg),
    .D(\cla_inst/counter [173]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [173])
  );
  FDR   \cla_inst/a_172  (
    .C(clk_bufg),
    .D(\cla_inst/counter [172]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [172])
  );
  FDR   \cla_inst/a_171  (
    .C(clk_bufg),
    .D(\cla_inst/counter [171]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [171])
  );
  FDR   \cla_inst/a_170  (
    .C(clk_bufg),
    .D(\cla_inst/counter [170]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [170])
  );
  FDR   \cla_inst/a_169  (
    .C(clk_bufg),
    .D(\cla_inst/counter [169]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [169])
  );
  FDR   \cla_inst/a_168  (
    .C(clk_bufg),
    .D(\cla_inst/counter [168]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [168])
  );
  FDR   \cla_inst/a_167  (
    .C(clk_bufg),
    .D(\cla_inst/counter [167]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [167])
  );
  FDR   \cla_inst/a_166  (
    .C(clk_bufg),
    .D(\cla_inst/counter [166]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [166])
  );
  FDR   \cla_inst/a_165  (
    .C(clk_bufg),
    .D(\cla_inst/counter [165]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [165])
  );
  FDR   \cla_inst/a_164  (
    .C(clk_bufg),
    .D(\cla_inst/counter [164]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [164])
  );
  FDR   \cla_inst/a_163  (
    .C(clk_bufg),
    .D(\cla_inst/counter [163]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [163])
  );
  FDR   \cla_inst/a_162  (
    .C(clk_bufg),
    .D(\cla_inst/counter [162]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [162])
  );
  FDR   \cla_inst/a_161  (
    .C(clk_bufg),
    .D(\cla_inst/counter [161]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [161])
  );
  FDR   \cla_inst/a_160  (
    .C(clk_bufg),
    .D(\cla_inst/counter [160]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [160])
  );
  FDR   \cla_inst/a_159  (
    .C(clk_bufg),
    .D(\cla_inst/counter [159]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [159])
  );
  FDR   \cla_inst/a_158  (
    .C(clk_bufg),
    .D(\cla_inst/counter [158]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [158])
  );
  FDR   \cla_inst/a_157  (
    .C(clk_bufg),
    .D(\cla_inst/counter [157]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [157])
  );
  FDR   \cla_inst/a_156  (
    .C(clk_bufg),
    .D(\cla_inst/counter [156]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [156])
  );
  FDR   \cla_inst/a_155  (
    .C(clk_bufg),
    .D(\cla_inst/counter [155]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [155])
  );
  FDR   \cla_inst/a_154  (
    .C(clk_bufg),
    .D(\cla_inst/counter [154]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [154])
  );
  FDR   \cla_inst/a_153  (
    .C(clk_bufg),
    .D(\cla_inst/counter [153]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [153])
  );
  FDR   \cla_inst/a_152  (
    .C(clk_bufg),
    .D(\cla_inst/counter [152]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [152])
  );
  FDR   \cla_inst/a_151  (
    .C(clk_bufg),
    .D(\cla_inst/counter [151]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [151])
  );
  FDR   \cla_inst/a_150  (
    .C(clk_bufg),
    .D(\cla_inst/counter [150]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [150])
  );
  FDR   \cla_inst/a_149  (
    .C(clk_bufg),
    .D(\cla_inst/counter [149]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [149])
  );
  FDR   \cla_inst/a_148  (
    .C(clk_bufg),
    .D(\cla_inst/counter [148]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [148])
  );
  FDR   \cla_inst/a_147  (
    .C(clk_bufg),
    .D(\cla_inst/counter [147]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [147])
  );
  FDR   \cla_inst/a_146  (
    .C(clk_bufg),
    .D(\cla_inst/counter [146]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [146])
  );
  FDR   \cla_inst/a_145  (
    .C(clk_bufg),
    .D(\cla_inst/counter [145]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [145])
  );
  FDR   \cla_inst/a_144  (
    .C(clk_bufg),
    .D(\cla_inst/counter [144]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [144])
  );
  FDR   \cla_inst/a_143  (
    .C(clk_bufg),
    .D(\cla_inst/counter [143]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [143])
  );
  FDR   \cla_inst/a_142  (
    .C(clk_bufg),
    .D(\cla_inst/counter [142]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [142])
  );
  FDR   \cla_inst/a_141  (
    .C(clk_bufg),
    .D(\cla_inst/counter [141]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [141])
  );
  FDR   \cla_inst/a_140  (
    .C(clk_bufg),
    .D(\cla_inst/counter [140]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [140])
  );
  FDR   \cla_inst/a_139  (
    .C(clk_bufg),
    .D(\cla_inst/counter [139]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [139])
  );
  FDR   \cla_inst/a_138  (
    .C(clk_bufg),
    .D(\cla_inst/counter [138]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [138])
  );
  FDR   \cla_inst/a_137  (
    .C(clk_bufg),
    .D(\cla_inst/counter [137]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [137])
  );
  FDR   \cla_inst/a_136  (
    .C(clk_bufg),
    .D(\cla_inst/counter [136]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [136])
  );
  FDR   \cla_inst/a_135  (
    .C(clk_bufg),
    .D(\cla_inst/counter [135]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [135])
  );
  FDR   \cla_inst/a_134  (
    .C(clk_bufg),
    .D(\cla_inst/counter [134]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [134])
  );
  FDR   \cla_inst/a_133  (
    .C(clk_bufg),
    .D(\cla_inst/counter [133]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [133])
  );
  FDR   \cla_inst/a_132  (
    .C(clk_bufg),
    .D(\cla_inst/counter [132]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [132])
  );
  FDR   \cla_inst/a_131  (
    .C(clk_bufg),
    .D(\cla_inst/counter [131]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [131])
  );
  FDR   \cla_inst/a_130  (
    .C(clk_bufg),
    .D(\cla_inst/counter [130]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [130])
  );
  FDR   \cla_inst/a_129  (
    .C(clk_bufg),
    .D(\cla_inst/counter [129]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [129])
  );
  FDR   \cla_inst/a_128  (
    .C(clk_bufg),
    .D(\cla_inst/counter [128]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [128])
  );
  FDR   \cla_inst/a_127  (
    .C(clk_bufg),
    .D(\cla_inst/counter [127]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [127])
  );
  FDR   \cla_inst/a_126  (
    .C(clk_bufg),
    .D(\cla_inst/counter [126]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [126])
  );
  FDR   \cla_inst/a_125  (
    .C(clk_bufg),
    .D(\cla_inst/counter [125]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [125])
  );
  FDR   \cla_inst/a_124  (
    .C(clk_bufg),
    .D(\cla_inst/counter [124]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [124])
  );
  FDR   \cla_inst/a_123  (
    .C(clk_bufg),
    .D(\cla_inst/counter [123]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [123])
  );
  FDR   \cla_inst/a_122  (
    .C(clk_bufg),
    .D(\cla_inst/counter [122]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [122])
  );
  FDR   \cla_inst/a_121  (
    .C(clk_bufg),
    .D(\cla_inst/counter [121]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [121])
  );
  FDR   \cla_inst/a_120  (
    .C(clk_bufg),
    .D(\cla_inst/counter [120]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [120])
  );
  FDR   \cla_inst/a_119  (
    .C(clk_bufg),
    .D(\cla_inst/counter [119]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [119])
  );
  FDR   \cla_inst/a_118  (
    .C(clk_bufg),
    .D(\cla_inst/counter [118]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [118])
  );
  FDR   \cla_inst/a_117  (
    .C(clk_bufg),
    .D(\cla_inst/counter [117]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [117])
  );
  FDR   \cla_inst/a_116  (
    .C(clk_bufg),
    .D(\cla_inst/counter [116]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [116])
  );
  FDR   \cla_inst/a_115  (
    .C(clk_bufg),
    .D(\cla_inst/counter [115]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [115])
  );
  FDR   \cla_inst/a_114  (
    .C(clk_bufg),
    .D(\cla_inst/counter [114]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [114])
  );
  FDR   \cla_inst/a_113  (
    .C(clk_bufg),
    .D(\cla_inst/counter [113]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [113])
  );
  FDR   \cla_inst/a_112  (
    .C(clk_bufg),
    .D(\cla_inst/counter [112]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [112])
  );
  FDR   \cla_inst/a_111  (
    .C(clk_bufg),
    .D(\cla_inst/counter [111]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [111])
  );
  FDR   \cla_inst/a_110  (
    .C(clk_bufg),
    .D(\cla_inst/counter [110]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [110])
  );
  FDR   \cla_inst/a_109  (
    .C(clk_bufg),
    .D(\cla_inst/counter [109]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [109])
  );
  FDR   \cla_inst/a_108  (
    .C(clk_bufg),
    .D(\cla_inst/counter [108]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [108])
  );
  FDR   \cla_inst/a_107  (
    .C(clk_bufg),
    .D(\cla_inst/counter [107]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [107])
  );
  FDR   \cla_inst/a_106  (
    .C(clk_bufg),
    .D(\cla_inst/counter [106]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [106])
  );
  FDR   \cla_inst/a_105  (
    .C(clk_bufg),
    .D(\cla_inst/counter [105]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [105])
  );
  FDR   \cla_inst/a_104  (
    .C(clk_bufg),
    .D(\cla_inst/counter [104]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [104])
  );
  FDR   \cla_inst/a_103  (
    .C(clk_bufg),
    .D(\cla_inst/counter [103]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [103])
  );
  FDR   \cla_inst/a_102  (
    .C(clk_bufg),
    .D(\cla_inst/counter [102]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [102])
  );
  FDR   \cla_inst/a_101  (
    .C(clk_bufg),
    .D(\cla_inst/counter [101]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [101])
  );
  FDR   \cla_inst/a_100  (
    .C(clk_bufg),
    .D(\cla_inst/counter [100]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [100])
  );
  FDR   \cla_inst/a_99  (
    .C(clk_bufg),
    .D(\cla_inst/counter [99]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [99])
  );
  FDR   \cla_inst/a_98  (
    .C(clk_bufg),
    .D(\cla_inst/counter [98]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [98])
  );
  FDR   \cla_inst/a_97  (
    .C(clk_bufg),
    .D(\cla_inst/counter [97]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [97])
  );
  FDR   \cla_inst/a_96  (
    .C(clk_bufg),
    .D(\cla_inst/counter [96]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [96])
  );
  FDR   \cla_inst/a_95  (
    .C(clk_bufg),
    .D(\cla_inst/counter [95]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [95])
  );
  FDR   \cla_inst/a_94  (
    .C(clk_bufg),
    .D(\cla_inst/counter [94]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [94])
  );
  FDR   \cla_inst/a_93  (
    .C(clk_bufg),
    .D(\cla_inst/counter [93]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [93])
  );
  FDR   \cla_inst/a_92  (
    .C(clk_bufg),
    .D(\cla_inst/counter [92]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [92])
  );
  FDR   \cla_inst/a_91  (
    .C(clk_bufg),
    .D(\cla_inst/counter [91]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [91])
  );
  FDR   \cla_inst/a_90  (
    .C(clk_bufg),
    .D(\cla_inst/counter [90]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [90])
  );
  FDR   \cla_inst/a_89  (
    .C(clk_bufg),
    .D(\cla_inst/counter [89]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [89])
  );
  FDR   \cla_inst/a_88  (
    .C(clk_bufg),
    .D(\cla_inst/counter [88]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [88])
  );
  FDR   \cla_inst/a_87  (
    .C(clk_bufg),
    .D(\cla_inst/counter [87]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [87])
  );
  FDR   \cla_inst/a_86  (
    .C(clk_bufg),
    .D(\cla_inst/counter [86]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [86])
  );
  FDR   \cla_inst/a_85  (
    .C(clk_bufg),
    .D(\cla_inst/counter [85]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [85])
  );
  FDR   \cla_inst/a_84  (
    .C(clk_bufg),
    .D(\cla_inst/counter [84]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [84])
  );
  FDR   \cla_inst/a_83  (
    .C(clk_bufg),
    .D(\cla_inst/counter [83]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [83])
  );
  FDR   \cla_inst/a_82  (
    .C(clk_bufg),
    .D(\cla_inst/counter [82]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [82])
  );
  FDR   \cla_inst/a_81  (
    .C(clk_bufg),
    .D(\cla_inst/counter [81]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [81])
  );
  FDR   \cla_inst/a_80  (
    .C(clk_bufg),
    .D(\cla_inst/counter [80]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [80])
  );
  FDR   \cla_inst/a_79  (
    .C(clk_bufg),
    .D(\cla_inst/counter [79]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [79])
  );
  FDR   \cla_inst/a_78  (
    .C(clk_bufg),
    .D(\cla_inst/counter [78]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [78])
  );
  FDR   \cla_inst/a_77  (
    .C(clk_bufg),
    .D(\cla_inst/counter [77]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [77])
  );
  FDR   \cla_inst/a_76  (
    .C(clk_bufg),
    .D(\cla_inst/counter [76]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [76])
  );
  FDR   \cla_inst/a_75  (
    .C(clk_bufg),
    .D(\cla_inst/counter [75]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [75])
  );
  FDR   \cla_inst/a_74  (
    .C(clk_bufg),
    .D(\cla_inst/counter [74]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [74])
  );
  FDR   \cla_inst/a_73  (
    .C(clk_bufg),
    .D(\cla_inst/counter [73]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [73])
  );
  FDR   \cla_inst/a_72  (
    .C(clk_bufg),
    .D(\cla_inst/counter [72]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [72])
  );
  FDR   \cla_inst/a_71  (
    .C(clk_bufg),
    .D(\cla_inst/counter [71]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [71])
  );
  FDR   \cla_inst/a_70  (
    .C(clk_bufg),
    .D(\cla_inst/counter [70]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [70])
  );
  FDR   \cla_inst/a_69  (
    .C(clk_bufg),
    .D(\cla_inst/counter [69]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [69])
  );
  FDR   \cla_inst/a_68  (
    .C(clk_bufg),
    .D(\cla_inst/counter [68]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [68])
  );
  FDR   \cla_inst/a_67  (
    .C(clk_bufg),
    .D(\cla_inst/counter [67]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [67])
  );
  FDR   \cla_inst/a_66  (
    .C(clk_bufg),
    .D(\cla_inst/counter [66]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [66])
  );
  FDR   \cla_inst/a_65  (
    .C(clk_bufg),
    .D(\cla_inst/counter [65]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [65])
  );
  FDR   \cla_inst/a_64  (
    .C(clk_bufg),
    .D(\cla_inst/counter [64]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [64])
  );
  FDR   \cla_inst/a_63  (
    .C(clk_bufg),
    .D(\cla_inst/counter [63]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [63])
  );
  FDR   \cla_inst/a_62  (
    .C(clk_bufg),
    .D(\cla_inst/counter [62]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [62])
  );
  FDR   \cla_inst/a_61  (
    .C(clk_bufg),
    .D(\cla_inst/counter [61]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [61])
  );
  FDR   \cla_inst/a_60  (
    .C(clk_bufg),
    .D(\cla_inst/counter [60]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [60])
  );
  FDR   \cla_inst/a_59  (
    .C(clk_bufg),
    .D(\cla_inst/counter [59]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [59])
  );
  FDR   \cla_inst/a_58  (
    .C(clk_bufg),
    .D(\cla_inst/counter [58]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [58])
  );
  FDR   \cla_inst/a_57  (
    .C(clk_bufg),
    .D(\cla_inst/counter [57]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [57])
  );
  FDR   \cla_inst/a_56  (
    .C(clk_bufg),
    .D(\cla_inst/counter [56]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [56])
  );
  FDR   \cla_inst/a_55  (
    .C(clk_bufg),
    .D(\cla_inst/counter [55]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [55])
  );
  FDR   \cla_inst/a_54  (
    .C(clk_bufg),
    .D(\cla_inst/counter [54]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [54])
  );
  FDR   \cla_inst/a_53  (
    .C(clk_bufg),
    .D(\cla_inst/counter [53]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [53])
  );
  FDR   \cla_inst/a_52  (
    .C(clk_bufg),
    .D(\cla_inst/counter [52]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [52])
  );
  FDR   \cla_inst/a_51  (
    .C(clk_bufg),
    .D(\cla_inst/counter [51]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [51])
  );
  FDR   \cla_inst/a_50  (
    .C(clk_bufg),
    .D(\cla_inst/counter [50]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [50])
  );
  FDR   \cla_inst/a_49  (
    .C(clk_bufg),
    .D(\cla_inst/counter [49]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [49])
  );
  FDR   \cla_inst/a_48  (
    .C(clk_bufg),
    .D(\cla_inst/counter [48]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [48])
  );
  FDR   \cla_inst/a_47  (
    .C(clk_bufg),
    .D(\cla_inst/counter [47]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [47])
  );
  FDR   \cla_inst/a_46  (
    .C(clk_bufg),
    .D(\cla_inst/counter [46]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [46])
  );
  FDR   \cla_inst/a_45  (
    .C(clk_bufg),
    .D(\cla_inst/counter [45]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [45])
  );
  FDR   \cla_inst/a_44  (
    .C(clk_bufg),
    .D(\cla_inst/counter [44]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [44])
  );
  FDR   \cla_inst/a_43  (
    .C(clk_bufg),
    .D(\cla_inst/counter [43]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [43])
  );
  FDR   \cla_inst/a_42  (
    .C(clk_bufg),
    .D(\cla_inst/counter [42]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [42])
  );
  FDR   \cla_inst/a_41  (
    .C(clk_bufg),
    .D(\cla_inst/counter [41]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [41])
  );
  FDR   \cla_inst/a_40  (
    .C(clk_bufg),
    .D(\cla_inst/counter [40]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [40])
  );
  FDR   \cla_inst/a_39  (
    .C(clk_bufg),
    .D(\cla_inst/counter [39]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [39])
  );
  FDR   \cla_inst/a_38  (
    .C(clk_bufg),
    .D(\cla_inst/counter [38]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [38])
  );
  FDR   \cla_inst/a_37  (
    .C(clk_bufg),
    .D(\cla_inst/counter [37]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [37])
  );
  FDR   \cla_inst/a_36  (
    .C(clk_bufg),
    .D(\cla_inst/counter [36]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [36])
  );
  FDR   \cla_inst/a_35  (
    .C(clk_bufg),
    .D(\cla_inst/counter [35]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [35])
  );
  FDR   \cla_inst/a_34  (
    .C(clk_bufg),
    .D(\cla_inst/counter [34]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [34])
  );
  FDR   \cla_inst/a_33  (
    .C(clk_bufg),
    .D(\cla_inst/counter [33]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [33])
  );
  FDR   \cla_inst/a_32  (
    .C(clk_bufg),
    .D(\cla_inst/counter [32]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [32])
  );
  FDR   \cla_inst/a_31  (
    .C(clk_bufg),
    .D(\cla_inst/counter [31]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [31])
  );
  FDR   \cla_inst/a_30  (
    .C(clk_bufg),
    .D(\cla_inst/counter [30]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [30])
  );
  FDR   \cla_inst/a_29  (
    .C(clk_bufg),
    .D(\cla_inst/counter [29]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [29])
  );
  FDR   \cla_inst/a_28  (
    .C(clk_bufg),
    .D(\cla_inst/counter [28]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [28])
  );
  FDR   \cla_inst/a_27  (
    .C(clk_bufg),
    .D(\cla_inst/counter [27]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [27])
  );
  FDR   \cla_inst/a_26  (
    .C(clk_bufg),
    .D(\cla_inst/counter [26]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [26])
  );
  FDR   \cla_inst/a_25  (
    .C(clk_bufg),
    .D(\cla_inst/counter [25]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [25])
  );
  FDR   \cla_inst/a_24  (
    .C(clk_bufg),
    .D(\cla_inst/counter [24]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [24])
  );
  FDR   \cla_inst/a_23  (
    .C(clk_bufg),
    .D(\cla_inst/counter [23]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [23])
  );
  FDR   \cla_inst/a_22  (
    .C(clk_bufg),
    .D(\cla_inst/counter [22]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [22])
  );
  FDR   \cla_inst/a_21  (
    .C(clk_bufg),
    .D(\cla_inst/counter [21]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [21])
  );
  FDR   \cla_inst/a_20  (
    .C(clk_bufg),
    .D(\cla_inst/counter [20]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [20])
  );
  FDR   \cla_inst/a_19  (
    .C(clk_bufg),
    .D(\cla_inst/counter [19]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [19])
  );
  FDR   \cla_inst/a_18  (
    .C(clk_bufg),
    .D(\cla_inst/counter [18]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [18])
  );
  FDR   \cla_inst/a_17  (
    .C(clk_bufg),
    .D(\cla_inst/counter [17]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [17])
  );
  FDR   \cla_inst/a_16  (
    .C(clk_bufg),
    .D(\cla_inst/counter [16]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [16])
  );
  FDR   \cla_inst/a_15  (
    .C(clk_bufg),
    .D(\cla_inst/counter [15]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [15])
  );
  FDR   \cla_inst/a_14  (
    .C(clk_bufg),
    .D(\cla_inst/counter [14]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [14])
  );
  FDR   \cla_inst/a_13  (
    .C(clk_bufg),
    .D(\cla_inst/counter [13]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [13])
  );
  FDR   \cla_inst/a_12  (
    .C(clk_bufg),
    .D(\cla_inst/counter [12]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [12])
  );
  FDR   \cla_inst/a_11  (
    .C(clk_bufg),
    .D(\cla_inst/counter [11]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [11])
  );
  FDR   \cla_inst/a_10  (
    .C(clk_bufg),
    .D(\cla_inst/counter [10]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [10])
  );
  FDR   \cla_inst/a_9  (
    .C(clk_bufg),
    .D(\cla_inst/counter [9]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [9])
  );
  FDR   \cla_inst/a_8  (
    .C(clk_bufg),
    .D(\cla_inst/counter [8]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [8])
  );
  FDR   \cla_inst/a_7  (
    .C(clk_bufg),
    .D(\cla_inst/counter [7]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [7])
  );
  FDR   \cla_inst/a_6  (
    .C(clk_bufg),
    .D(\cla_inst/counter [6]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [6])
  );
  FDR   \cla_inst/a_5  (
    .C(clk_bufg),
    .D(\cla_inst/counter [5]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [5])
  );
  FDR   \cla_inst/a_4  (
    .C(clk_bufg),
    .D(\cla_inst/counter [4]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [4])
  );
  FDR   \cla_inst/a_3  (
    .C(clk_bufg),
    .D(\cla_inst/counter [3]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [3])
  );
  FDR   \cla_inst/a_2  (
    .C(clk_bufg),
    .D(\cla_inst/counter [2]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [2])
  );
  FDR   \cla_inst/a_1  (
    .C(clk_bufg),
    .D(\cla_inst/counter [1]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [1])
  );
  FDR   \cla_inst/a_0  (
    .C(clk_bufg),
    .D(\cla_inst/counter [0]),
    .R(\cla_inst/carry_in_0 ),
    .Q(\cla_inst/a [0])
  );
  FDR   \cla_inst/carry_in  (
    .C(clk_bufg),
    .D(\cla_inst/carry_in_INV_8_o ),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/carry_in_1199 )
  );
  FDRE   \cla_inst/lsfr_128/q_194  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [193]),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [194])
  );
  FDSE   \cla_inst/lsfr_128/q_193  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [192]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [193])
  );
  FDSE   \cla_inst/lsfr_128/q_192  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [191]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [192])
  );
  FDSE   \cla_inst/lsfr_128/q_191  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [190]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [191])
  );
  FDSE   \cla_inst/lsfr_128/q_190  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [189]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [190])
  );
  FDSE   \cla_inst/lsfr_128/q_189  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [188]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [189])
  );
  FDSE   \cla_inst/lsfr_128/q_188  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [187]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [188])
  );
  FDSE   \cla_inst/lsfr_128/q_187  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [186]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [187])
  );
  FDSE   \cla_inst/lsfr_128/q_186  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [185]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [186])
  );
  FDSE   \cla_inst/lsfr_128/q_185  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [184]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [185])
  );
  FDSE   \cla_inst/lsfr_128/q_184  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [183]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [184])
  );
  FDSE   \cla_inst/lsfr_128/q_183  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [182]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [183])
  );
  FDSE   \cla_inst/lsfr_128/q_182  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [181]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [182])
  );
  FDSE   \cla_inst/lsfr_128/q_181  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [180]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [181])
  );
  FDSE   \cla_inst/lsfr_128/q_180  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [179]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [180])
  );
  FDSE   \cla_inst/lsfr_128/q_179  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [178]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [179])
  );
  FDSE   \cla_inst/lsfr_128/q_178  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [177]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [178])
  );
  FDSE   \cla_inst/lsfr_128/q_177  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [176]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [177])
  );
  FDSE   \cla_inst/lsfr_128/q_176  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [175]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [176])
  );
  FDSE   \cla_inst/lsfr_128/q_175  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [174]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [175])
  );
  FDSE   \cla_inst/lsfr_128/q_174  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [173]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [174])
  );
  FDSE   \cla_inst/lsfr_128/q_173  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [172]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [173])
  );
  FDSE   \cla_inst/lsfr_128/q_172  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [171]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [172])
  );
  FDSE   \cla_inst/lsfr_128/q_171  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [170]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [171])
  );
  FDSE   \cla_inst/lsfr_128/q_170  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [169]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [170])
  );
  FDSE   \cla_inst/lsfr_128/q_169  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [168]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [169])
  );
  FDSE   \cla_inst/lsfr_128/q_168  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [167]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [168])
  );
  FDSE   \cla_inst/lsfr_128/q_167  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [166]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [167])
  );
  FDSE   \cla_inst/lsfr_128/q_166  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [165]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [166])
  );
  FDSE   \cla_inst/lsfr_128/q_165  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [164]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [165])
  );
  FDSE   \cla_inst/lsfr_128/q_164  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [163]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [164])
  );
  FDSE   \cla_inst/lsfr_128/q_163  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [162]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [163])
  );
  FDSE   \cla_inst/lsfr_128/q_162  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [161]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [162])
  );
  FDSE   \cla_inst/lsfr_128/q_161  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [160]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [161])
  );
  FDSE   \cla_inst/lsfr_128/q_160  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [159]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [160])
  );
  FDSE   \cla_inst/lsfr_128/q_159  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [158]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [159])
  );
  FDSE   \cla_inst/lsfr_128/q_158  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [157]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [158])
  );
  FDSE   \cla_inst/lsfr_128/q_157  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [156]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [157])
  );
  FDSE   \cla_inst/lsfr_128/q_156  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [155]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [156])
  );
  FDSE   \cla_inst/lsfr_128/q_155  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [154]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [155])
  );
  FDSE   \cla_inst/lsfr_128/q_154  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [153]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [154])
  );
  FDSE   \cla_inst/lsfr_128/q_153  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [152]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [153])
  );
  FDSE   \cla_inst/lsfr_128/q_152  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [151]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [152])
  );
  FDSE   \cla_inst/lsfr_128/q_151  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [150]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [151])
  );
  FDSE   \cla_inst/lsfr_128/q_150  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [149]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [150])
  );
  FDSE   \cla_inst/lsfr_128/q_149  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [148]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [149])
  );
  FDSE   \cla_inst/lsfr_128/q_148  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [147]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [148])
  );
  FDSE   \cla_inst/lsfr_128/q_147  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [146]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [147])
  );
  FDSE   \cla_inst/lsfr_128/q_146  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [145]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [146])
  );
  FDSE   \cla_inst/lsfr_128/q_145  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [144]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [145])
  );
  FDSE   \cla_inst/lsfr_128/q_144  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [143]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [144])
  );
  FDSE   \cla_inst/lsfr_128/q_143  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [142]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [143])
  );
  FDSE   \cla_inst/lsfr_128/q_142  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [141]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [142])
  );
  FDSE   \cla_inst/lsfr_128/q_141  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [140]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [141])
  );
  FDSE   \cla_inst/lsfr_128/q_140  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [139]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [140])
  );
  FDSE   \cla_inst/lsfr_128/q_139  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [138]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [139])
  );
  FDSE   \cla_inst/lsfr_128/q_138  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [137]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [138])
  );
  FDSE   \cla_inst/lsfr_128/q_137  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [136]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [137])
  );
  FDSE   \cla_inst/lsfr_128/q_136  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [135]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [136])
  );
  FDSE   \cla_inst/lsfr_128/q_135  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [134]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [135])
  );
  FDSE   \cla_inst/lsfr_128/q_134  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [133]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [134])
  );
  FDSE   \cla_inst/lsfr_128/q_133  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [132]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [133])
  );
  FDSE   \cla_inst/lsfr_128/q_132  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [131]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [132])
  );
  FDSE   \cla_inst/lsfr_128/q_131  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [130]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [131])
  );
  FDSE   \cla_inst/lsfr_128/q_130  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [129]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [130])
  );
  FDSE   \cla_inst/lsfr_128/q_129  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [128]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [129])
  );
  FDSE   \cla_inst/lsfr_128/q_128  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [127]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [128])
  );
  FDSE   \cla_inst/lsfr_128/q_127  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [126]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [127])
  );
  FDSE   \cla_inst/lsfr_128/q_126  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [125]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [126])
  );
  FDSE   \cla_inst/lsfr_128/q_125  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [124]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [125])
  );
  FDSE   \cla_inst/lsfr_128/q_124  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [123]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [124])
  );
  FDSE   \cla_inst/lsfr_128/q_123  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [122]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [123])
  );
  FDSE   \cla_inst/lsfr_128/q_122  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [121]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [122])
  );
  FDSE   \cla_inst/lsfr_128/q_121  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [120]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [121])
  );
  FDSE   \cla_inst/lsfr_128/q_120  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [119]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [120])
  );
  FDSE   \cla_inst/lsfr_128/q_119  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [118]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [119])
  );
  FDSE   \cla_inst/lsfr_128/q_118  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [117]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [118])
  );
  FDSE   \cla_inst/lsfr_128/q_117  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [116]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [117])
  );
  FDSE   \cla_inst/lsfr_128/q_116  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [115]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [116])
  );
  FDSE   \cla_inst/lsfr_128/q_115  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [114]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [115])
  );
  FDSE   \cla_inst/lsfr_128/q_114  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [113]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [114])
  );
  FDSE   \cla_inst/lsfr_128/q_113  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [112]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [113])
  );
  FDSE   \cla_inst/lsfr_128/q_112  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [111]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [112])
  );
  FDSE   \cla_inst/lsfr_128/q_111  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [110]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [111])
  );
  FDSE   \cla_inst/lsfr_128/q_110  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [109]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [110])
  );
  FDSE   \cla_inst/lsfr_128/q_109  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [108]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [109])
  );
  FDSE   \cla_inst/lsfr_128/q_108  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [107]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [108])
  );
  FDSE   \cla_inst/lsfr_128/q_107  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [106]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [107])
  );
  FDSE   \cla_inst/lsfr_128/q_106  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [105]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [106])
  );
  FDSE   \cla_inst/lsfr_128/q_105  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [104]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [105])
  );
  FDSE   \cla_inst/lsfr_128/q_104  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [103]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [104])
  );
  FDSE   \cla_inst/lsfr_128/q_103  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [102]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [103])
  );
  FDSE   \cla_inst/lsfr_128/q_102  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [101]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [102])
  );
  FDSE   \cla_inst/lsfr_128/q_101  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [100]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [101])
  );
  FDSE   \cla_inst/lsfr_128/q_100  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [99]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [100])
  );
  FDSE   \cla_inst/lsfr_128/q_99  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [98]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [99])
  );
  FDSE   \cla_inst/lsfr_128/q_98  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [97]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [98])
  );
  FDSE   \cla_inst/lsfr_128/q_97  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [96]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [97])
  );
  FDSE   \cla_inst/lsfr_128/q_96  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [95]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [96])
  );
  FDSE   \cla_inst/lsfr_128/q_95  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [94]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [95])
  );
  FDSE   \cla_inst/lsfr_128/q_94  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [93]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [94])
  );
  FDSE   \cla_inst/lsfr_128/q_93  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [92]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [93])
  );
  FDSE   \cla_inst/lsfr_128/q_92  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [91]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [92])
  );
  FDSE   \cla_inst/lsfr_128/q_91  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [90]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [91])
  );
  FDSE   \cla_inst/lsfr_128/q_90  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [89]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [90])
  );
  FDSE   \cla_inst/lsfr_128/q_89  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [88]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [89])
  );
  FDSE   \cla_inst/lsfr_128/q_88  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [87]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [88])
  );
  FDSE   \cla_inst/lsfr_128/q_87  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [86]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [87])
  );
  FDSE   \cla_inst/lsfr_128/q_86  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [85]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [86])
  );
  FDSE   \cla_inst/lsfr_128/q_85  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [84]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [85])
  );
  FDSE   \cla_inst/lsfr_128/q_84  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [83]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [84])
  );
  FDSE   \cla_inst/lsfr_128/q_83  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [82]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [83])
  );
  FDSE   \cla_inst/lsfr_128/q_82  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [81]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [82])
  );
  FDSE   \cla_inst/lsfr_128/q_81  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [80]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [81])
  );
  FDSE   \cla_inst/lsfr_128/q_80  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [79]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [80])
  );
  FDSE   \cla_inst/lsfr_128/q_79  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [78]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [79])
  );
  FDSE   \cla_inst/lsfr_128/q_78  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [77]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [78])
  );
  FDSE   \cla_inst/lsfr_128/q_77  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [76]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [77])
  );
  FDSE   \cla_inst/lsfr_128/q_76  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [75]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [76])
  );
  FDSE   \cla_inst/lsfr_128/q_75  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [74]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [75])
  );
  FDSE   \cla_inst/lsfr_128/q_74  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [73]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [74])
  );
  FDSE   \cla_inst/lsfr_128/q_73  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [72]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [73])
  );
  FDSE   \cla_inst/lsfr_128/q_72  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [71]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [72])
  );
  FDSE   \cla_inst/lsfr_128/q_71  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [70]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [71])
  );
  FDSE   \cla_inst/lsfr_128/q_70  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [69]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [70])
  );
  FDSE   \cla_inst/lsfr_128/q_69  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [68]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [69])
  );
  FDSE   \cla_inst/lsfr_128/q_68  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [67]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [68])
  );
  FDSE   \cla_inst/lsfr_128/q_67  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [66]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [67])
  );
  FDSE   \cla_inst/lsfr_128/q_66  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [65]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [66])
  );
  FDSE   \cla_inst/lsfr_128/q_65  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [64]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [65])
  );
  FDSE   \cla_inst/lsfr_128/q_64  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [63]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [64])
  );
  FDSE   \cla_inst/lsfr_128/q_63  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [62]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [63])
  );
  FDSE   \cla_inst/lsfr_128/q_62  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [61]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [62])
  );
  FDSE   \cla_inst/lsfr_128/q_61  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [60]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [61])
  );
  FDSE   \cla_inst/lsfr_128/q_60  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [59]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [60])
  );
  FDSE   \cla_inst/lsfr_128/q_59  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [58]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [59])
  );
  FDSE   \cla_inst/lsfr_128/q_58  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [57]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [58])
  );
  FDSE   \cla_inst/lsfr_128/q_57  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [56]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [57])
  );
  FDSE   \cla_inst/lsfr_128/q_56  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [55]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [56])
  );
  FDSE   \cla_inst/lsfr_128/q_55  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [54]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [55])
  );
  FDSE   \cla_inst/lsfr_128/q_54  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [53]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [54])
  );
  FDSE   \cla_inst/lsfr_128/q_53  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [52]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [53])
  );
  FDSE   \cla_inst/lsfr_128/q_52  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [51]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [52])
  );
  FDSE   \cla_inst/lsfr_128/q_51  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [50]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [51])
  );
  FDSE   \cla_inst/lsfr_128/q_50  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [49]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [50])
  );
  FDSE   \cla_inst/lsfr_128/q_49  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [48]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [49])
  );
  FDSE   \cla_inst/lsfr_128/q_48  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [47]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [48])
  );
  FDSE   \cla_inst/lsfr_128/q_47  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [46]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [47])
  );
  FDSE   \cla_inst/lsfr_128/q_46  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [45]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [46])
  );
  FDSE   \cla_inst/lsfr_128/q_45  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [44]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [45])
  );
  FDSE   \cla_inst/lsfr_128/q_44  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [43]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [44])
  );
  FDSE   \cla_inst/lsfr_128/q_43  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [42]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [43])
  );
  FDSE   \cla_inst/lsfr_128/q_42  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [41]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [42])
  );
  FDSE   \cla_inst/lsfr_128/q_41  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [40]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [41])
  );
  FDSE   \cla_inst/lsfr_128/q_40  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [39]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [40])
  );
  FDSE   \cla_inst/lsfr_128/q_39  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [38]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [39])
  );
  FDSE   \cla_inst/lsfr_128/q_38  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [37]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [38])
  );
  FDSE   \cla_inst/lsfr_128/q_37  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [36]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [37])
  );
  FDSE   \cla_inst/lsfr_128/q_36  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [35]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [36])
  );
  FDSE   \cla_inst/lsfr_128/q_35  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [34]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [35])
  );
  FDSE   \cla_inst/lsfr_128/q_34  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [33]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [34])
  );
  FDSE   \cla_inst/lsfr_128/q_33  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [32]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [33])
  );
  FDSE   \cla_inst/lsfr_128/q_32  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [31]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [32])
  );
  FDSE   \cla_inst/lsfr_128/q_31  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [30]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [31])
  );
  FDSE   \cla_inst/lsfr_128/q_30  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [29]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [30])
  );
  FDSE   \cla_inst/lsfr_128/q_29  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [28]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [29])
  );
  FDSE   \cla_inst/lsfr_128/q_28  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [27]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [28])
  );
  FDSE   \cla_inst/lsfr_128/q_27  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [26]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [27])
  );
  FDSE   \cla_inst/lsfr_128/q_26  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [25]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [26])
  );
  FDSE   \cla_inst/lsfr_128/q_25  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [24]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [25])
  );
  FDSE   \cla_inst/lsfr_128/q_24  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [23]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [24])
  );
  FDSE   \cla_inst/lsfr_128/q_23  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [22]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [23])
  );
  FDSE   \cla_inst/lsfr_128/q_22  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [21]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [22])
  );
  FDSE   \cla_inst/lsfr_128/q_21  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [20]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [21])
  );
  FDSE   \cla_inst/lsfr_128/q_20  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [19]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [20])
  );
  FDSE   \cla_inst/lsfr_128/q_19  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [18]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [19])
  );
  FDSE   \cla_inst/lsfr_128/q_18  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [17]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [18])
  );
  FDSE   \cla_inst/lsfr_128/q_17  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [16]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [17])
  );
  FDSE   \cla_inst/lsfr_128/q_16  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [15]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [16])
  );
  FDSE   \cla_inst/lsfr_128/q_15  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [14]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [15])
  );
  FDSE   \cla_inst/lsfr_128/q_14  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [13]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [14])
  );
  FDSE   \cla_inst/lsfr_128/q_13  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [12]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [13])
  );
  FDSE   \cla_inst/lsfr_128/q_12  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [11]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [12])
  );
  FDSE   \cla_inst/lsfr_128/q_11  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [10]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [11])
  );
  FDSE   \cla_inst/lsfr_128/q_10  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [9]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [10])
  );
  FDSE   \cla_inst/lsfr_128/q_9  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [8]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [9])
  );
  FDSE   \cla_inst/lsfr_128/q_8  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [7]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [8])
  );
  FDSE   \cla_inst/lsfr_128/q_7  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [6]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [7])
  );
  FDSE   \cla_inst/lsfr_128/q_6  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [5]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [6])
  );
  FDSE   \cla_inst/lsfr_128/q_5  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [4]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [5])
  );
  FDSE   \cla_inst/lsfr_128/q_4  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [3]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [4])
  );
  FDSE   \cla_inst/lsfr_128/q_3  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [2]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [3])
  );
  FDSE   \cla_inst/lsfr_128/q_2  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [1]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [2])
  );
  FDSE   \cla_inst/lsfr_128/q_1  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/counter [0]),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [1])
  );
  FDSE   \cla_inst/lsfr_128/q_0  (
    .C(clk_bufg),
    .CE(\cla_inst/lsfr_128/en_inv ),
    .D(\cla_inst/lsfr_128/q[194]_q[186]_XOR_3_o ),
    .S(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/counter [0])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \cla_inst/carry_in_01  (
    .I0(logic_resetn[0]),
    .I1(\cla_inst/carry_in_1199 ),
    .O(\cla_inst/carry_in_0 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \cla_inst/lsfr_128/Mxor_q[194]_q[186]_XOR_3_o_xo<0>1  (
    .I0(\cla_inst/counter [186]),
    .I1(\cla_inst/counter [191]),
    .I2(\cla_inst/counter [192]),
    .I3(\cla_inst/counter [194]),
    .O(\cla_inst/lsfr_128/q[194]_q[186]_XOR_3_o )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \cla_inst/n0014_inv_wg_lut<0>  (
    .I0(\cla_inst/sum [160]),
    .I1(\cla_inst/sum [161]),
    .I2(\cla_inst/sum [156]),
    .O(\cla_inst/n0014_inv_wg_lut [0])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [0]),
    .O(\cla_inst/n0014_inv_wg_cy [0])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<1>  (
    .I0(\cla_inst/sum [158]),
    .I1(\cla_inst/sum [157]),
    .I2(\cla_inst/sum [153]),
    .I3(\cla_inst/sum [155]),
    .I4(\cla_inst/sum [159]),
    .I5(\cla_inst/sum [154]),
    .O(\cla_inst/n0014_inv_wg_lut [1])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<1>  (
    .CI(\cla_inst/n0014_inv_wg_cy [0]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [1]),
    .O(\cla_inst/n0014_inv_wg_cy [1])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<2>  (
    .I0(\cla_inst/sum [150]),
    .I1(\cla_inst/sum [152]),
    .I2(\cla_inst/sum [151]),
    .I3(\cla_inst/sum [147]),
    .I4(\cla_inst/sum [163]),
    .I5(\cla_inst/sum [149]),
    .O(\cla_inst/n0014_inv_wg_lut [2])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<2>  (
    .CI(\cla_inst/n0014_inv_wg_cy [1]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [2]),
    .O(\cla_inst/n0014_inv_wg_cy [2])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<3>  (
    .I0(\cla_inst/sum [148]),
    .I1(\cla_inst/sum [144]),
    .I2(\cla_inst/sum [146]),
    .I3(\cla_inst/sum [145]),
    .I4(\cla_inst/sum [164]),
    .I5(\cla_inst/sum [143]),
    .O(\cla_inst/n0014_inv_wg_lut [3])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<3>  (
    .CI(\cla_inst/n0014_inv_wg_cy [2]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [3]),
    .O(\cla_inst/n0014_inv_wg_cy [3])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<4>  (
    .I0(\cla_inst/sum [142]),
    .I1(\cla_inst/sum [141]),
    .I2(\cla_inst/sum [140]),
    .I3(\cla_inst/sum [137]),
    .I4(\cla_inst/sum [162]),
    .I5(\cla_inst/sum [139]),
    .O(\cla_inst/n0014_inv_wg_lut [4])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<4>  (
    .CI(\cla_inst/n0014_inv_wg_cy [3]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [4]),
    .O(\cla_inst/n0014_inv_wg_cy [4])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<5>  (
    .I0(\cla_inst/sum [138]),
    .I1(\cla_inst/sum [134]),
    .I2(\cla_inst/sum [136]),
    .I3(\cla_inst/sum [135]),
    .I4(\cla_inst/sum [166]),
    .I5(\cla_inst/sum [131]),
    .O(\cla_inst/n0014_inv_wg_lut [5])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<5>  (
    .CI(\cla_inst/n0014_inv_wg_cy [4]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [5]),
    .O(\cla_inst/n0014_inv_wg_cy [5])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<6>  (
    .I0(\cla_inst/sum [133]),
    .I1(\cla_inst/sum [132]),
    .I2(\cla_inst/sum [128]),
    .I3(\cla_inst/sum [130]),
    .I4(\cla_inst/sum [167]),
    .I5(\cla_inst/sum [129]),
    .O(\cla_inst/n0014_inv_wg_lut [6])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<6>  (
    .CI(\cla_inst/n0014_inv_wg_cy [5]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [6]),
    .O(\cla_inst/n0014_inv_wg_cy [6])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<7>  (
    .I0(\cla_inst/sum [125]),
    .I1(\cla_inst/sum [127]),
    .I2(\cla_inst/sum [126]),
    .I3(\cla_inst/sum [122]),
    .I4(\cla_inst/sum [165]),
    .I5(\cla_inst/sum [124]),
    .O(\cla_inst/n0014_inv_wg_lut [7])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<7>  (
    .CI(\cla_inst/n0014_inv_wg_cy [6]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [7]),
    .O(\cla_inst/n0014_inv_wg_cy [7])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<8>  (
    .I0(\cla_inst/sum [123]),
    .I1(\cla_inst/sum [119]),
    .I2(\cla_inst/sum [121]),
    .I3(\cla_inst/sum [120]),
    .I4(\cla_inst/sum [169]),
    .I5(\cla_inst/sum [116]),
    .O(\cla_inst/n0014_inv_wg_lut [8])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<8>  (
    .CI(\cla_inst/n0014_inv_wg_cy [7]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [8]),
    .O(\cla_inst/n0014_inv_wg_cy [8])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<9>  (
    .I0(\cla_inst/sum [118]),
    .I1(\cla_inst/sum [117]),
    .I2(\cla_inst/sum [113]),
    .I3(\cla_inst/sum [115]),
    .I4(\cla_inst/sum [170]),
    .I5(\cla_inst/sum [114]),
    .O(\cla_inst/n0014_inv_wg_lut [9])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<9>  (
    .CI(\cla_inst/n0014_inv_wg_cy [8]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [9]),
    .O(\cla_inst/n0014_inv_wg_cy [9])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<10>  (
    .I0(\cla_inst/sum [110]),
    .I1(\cla_inst/sum [112]),
    .I2(\cla_inst/sum [111]),
    .I3(\cla_inst/sum [107]),
    .I4(\cla_inst/sum [168]),
    .I5(\cla_inst/sum [109]),
    .O(\cla_inst/n0014_inv_wg_lut [10])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<10>  (
    .CI(\cla_inst/n0014_inv_wg_cy [9]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [10]),
    .O(\cla_inst/n0014_inv_wg_cy [10])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<11>  (
    .I0(\cla_inst/sum [108]),
    .I1(\cla_inst/sum [104]),
    .I2(\cla_inst/sum [106]),
    .I3(\cla_inst/sum [105]),
    .I4(\cla_inst/sum [172]),
    .I5(\cla_inst/sum [101]),
    .O(\cla_inst/n0014_inv_wg_lut [11])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<11>  (
    .CI(N1),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [11]),
    .O(\cla_inst/n0014_inv_wg_cy [11])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<12>  (
    .I0(\cla_inst/sum [103]),
    .I1(\cla_inst/sum [102]),
    .I2(\cla_inst/sum [98]),
    .I3(\cla_inst/sum [100]),
    .I4(\cla_inst/sum [173]),
    .I5(\cla_inst/sum [99]),
    .O(\cla_inst/n0014_inv_wg_lut [12])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<12>  (
    .CI(\cla_inst/n0014_inv_wg_cy [11]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [12]),
    .O(\cla_inst/n0014_inv_wg_cy [12])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<13>  (
    .I0(\cla_inst/sum [95]),
    .I1(\cla_inst/sum [97]),
    .I2(\cla_inst/sum [96]),
    .I3(\cla_inst/sum [94]),
    .I4(\cla_inst/sum [171]),
    .I5(\cla_inst/sum [93]),
    .O(\cla_inst/n0014_inv_wg_lut [13])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<13>  (
    .CI(\cla_inst/n0014_inv_wg_cy [12]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [13]),
    .O(\cla_inst/n0014_inv_wg_cy [13])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<14>  (
    .I0(\cla_inst/sum [92]),
    .I1(\cla_inst/sum [91]),
    .I2(\cla_inst/sum [88]),
    .I3(\cla_inst/sum [90]),
    .I4(\cla_inst/sum [175]),
    .I5(\cla_inst/sum [89]),
    .O(\cla_inst/n0014_inv_wg_lut [14])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<14>  (
    .CI(\cla_inst/n0014_inv_wg_cy [13]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [14]),
    .O(\cla_inst/n0014_inv_wg_cy [14])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<15>  (
    .I0(\cla_inst/sum [85]),
    .I1(\cla_inst/sum [87]),
    .I2(\cla_inst/sum [86]),
    .I3(\cla_inst/sum [82]),
    .I4(\cla_inst/sum [176]),
    .I5(\cla_inst/sum [84]),
    .O(\cla_inst/n0014_inv_wg_lut [15])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<15>  (
    .CI(\cla_inst/n0014_inv_wg_cy [14]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [15]),
    .O(\cla_inst/n0014_inv_wg_cy [15])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<16>  (
    .I0(\cla_inst/sum [83]),
    .I1(\cla_inst/sum [79]),
    .I2(\cla_inst/sum [81]),
    .I3(\cla_inst/sum [80]),
    .I4(\cla_inst/sum [174]),
    .I5(\cla_inst/sum [76]),
    .O(\cla_inst/n0014_inv_wg_lut [16])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<16>  (
    .CI(\cla_inst/n0014_inv_wg_cy [15]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [16]),
    .O(\cla_inst/n0014_inv_wg_cy [16])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<17>  (
    .I0(\cla_inst/sum [78]),
    .I1(\cla_inst/sum [77]),
    .I2(\cla_inst/sum [73]),
    .I3(\cla_inst/sum [75]),
    .I4(\cla_inst/sum [178]),
    .I5(\cla_inst/sum [74]),
    .O(\cla_inst/n0014_inv_wg_lut [17])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<17>  (
    .CI(\cla_inst/n0014_inv_wg_cy [16]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [17]),
    .O(\cla_inst/n0014_inv_wg_cy [17])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<18>  (
    .I0(\cla_inst/sum [70]),
    .I1(\cla_inst/sum [72]),
    .I2(\cla_inst/sum [71]),
    .I3(\cla_inst/sum [67]),
    .I4(\cla_inst/sum [179]),
    .I5(\cla_inst/sum [69]),
    .O(\cla_inst/n0014_inv_wg_lut [18])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<18>  (
    .CI(\cla_inst/n0014_inv_wg_cy [17]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [18]),
    .O(\cla_inst/n0014_inv_wg_cy [18])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<19>  (
    .I0(\cla_inst/sum [68]),
    .I1(\cla_inst/sum [64]),
    .I2(\cla_inst/sum [66]),
    .I3(\cla_inst/sum [65]),
    .I4(\cla_inst/sum [177]),
    .I5(\cla_inst/sum [61]),
    .O(\cla_inst/n0014_inv_wg_lut [19])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<19>  (
    .CI(\cla_inst/n0014_inv_wg_cy [18]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [19]),
    .O(\cla_inst/n0014_inv_wg_cy [19])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<20>  (
    .I0(\cla_inst/sum [63]),
    .I1(\cla_inst/sum [62]),
    .I2(\cla_inst/sum [58]),
    .I3(\cla_inst/sum [60]),
    .I4(\cla_inst/sum [181]),
    .I5(\cla_inst/sum [59]),
    .O(\cla_inst/n0014_inv_wg_lut [20])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<20>  (
    .CI(\cla_inst/n0014_inv_wg_cy [19]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [20]),
    .O(\cla_inst/n0014_inv_wg_cy [20])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<21>  (
    .I0(\cla_inst/sum [55]),
    .I1(\cla_inst/sum [57]),
    .I2(\cla_inst/sum [56]),
    .I3(\cla_inst/sum [52]),
    .I4(\cla_inst/sum [182]),
    .I5(\cla_inst/sum [54]),
    .O(\cla_inst/n0014_inv_wg_lut [21])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<21>  (
    .CI(\cla_inst/n0014_inv_wg_cy [20]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [21]),
    .O(\cla_inst/n0014_inv_wg_cy [21])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<22>  (
    .I0(\cla_inst/sum [53]),
    .I1(\cla_inst/sum [49]),
    .I2(\cla_inst/sum [51]),
    .I3(\cla_inst/sum [50]),
    .I4(\cla_inst/sum [180]),
    .I5(\cla_inst/sum [46]),
    .O(\cla_inst/n0014_inv_wg_lut [22])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<22>  (
    .CI(N1),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [22]),
    .O(\cla_inst/n0014_inv_wg_cy [22])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<23>  (
    .I0(\cla_inst/sum [48]),
    .I1(\cla_inst/sum [47]),
    .I2(\cla_inst/sum [43]),
    .I3(\cla_inst/sum [45]),
    .I4(\cla_inst/sum [184]),
    .I5(\cla_inst/sum [44]),
    .O(\cla_inst/n0014_inv_wg_lut [23])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<23>  (
    .CI(\cla_inst/n0014_inv_wg_cy [22]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [23]),
    .O(\cla_inst/n0014_inv_wg_cy [23])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<24>  (
    .I0(\cla_inst/sum [40]),
    .I1(\cla_inst/sum [42]),
    .I2(\cla_inst/sum [41]),
    .I3(\cla_inst/sum [37]),
    .I4(\cla_inst/sum [185]),
    .I5(\cla_inst/sum [39]),
    .O(\cla_inst/n0014_inv_wg_lut [24])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<24>  (
    .CI(\cla_inst/n0014_inv_wg_cy [23]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [24]),
    .O(\cla_inst/n0014_inv_wg_cy [24])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<25>  (
    .I0(\cla_inst/sum [38]),
    .I1(\cla_inst/sum [34]),
    .I2(\cla_inst/sum [36]),
    .I3(\cla_inst/sum [35]),
    .I4(\cla_inst/sum [183]),
    .I5(\cla_inst/sum [31]),
    .O(\cla_inst/n0014_inv_wg_lut [25])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<25>  (
    .CI(\cla_inst/n0014_inv_wg_cy [24]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [25]),
    .O(\cla_inst/n0014_inv_wg_cy [25])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<26>  (
    .I0(\cla_inst/sum [33]),
    .I1(\cla_inst/sum [32]),
    .I2(\cla_inst/sum [28]),
    .I3(\cla_inst/sum [30]),
    .I4(\cla_inst/sum [187]),
    .I5(\cla_inst/sum [29]),
    .O(\cla_inst/n0014_inv_wg_lut [26])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<26>  (
    .CI(\cla_inst/n0014_inv_wg_cy [25]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [26]),
    .O(\cla_inst/n0014_inv_wg_cy [26])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<27>  (
    .I0(\cla_inst/sum [25]),
    .I1(\cla_inst/sum [27]),
    .I2(\cla_inst/sum [26]),
    .I3(\cla_inst/sum [22]),
    .I4(\cla_inst/sum [188]),
    .I5(\cla_inst/sum [24]),
    .O(\cla_inst/n0014_inv_wg_lut [27])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<27>  (
    .CI(\cla_inst/n0014_inv_wg_cy [26]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [27]),
    .O(\cla_inst/n0014_inv_wg_cy [27])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<28>  (
    .I0(\cla_inst/sum [23]),
    .I1(\cla_inst/sum [19]),
    .I2(\cla_inst/sum [21]),
    .I3(\cla_inst/sum [20]),
    .I4(\cla_inst/sum [186]),
    .I5(\cla_inst/sum [16]),
    .O(\cla_inst/n0014_inv_wg_lut [28])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<28>  (
    .CI(\cla_inst/n0014_inv_wg_cy [27]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [28]),
    .O(\cla_inst/n0014_inv_wg_cy [28])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<29>  (
    .I0(\cla_inst/sum [18]),
    .I1(\cla_inst/sum [17]),
    .I2(\cla_inst/sum [13]),
    .I3(\cla_inst/sum [15]),
    .I4(\cla_inst/sum [189]),
    .I5(\cla_inst/sum [14]),
    .O(\cla_inst/n0014_inv_wg_lut [29])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<29>  (
    .CI(\cla_inst/n0014_inv_wg_cy [28]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [29]),
    .O(\cla_inst/n0014_inv_wg_cy [29])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<30>  (
    .I0(\cla_inst/sum [10]),
    .I1(\cla_inst/sum [12]),
    .I2(\cla_inst/sum [11]),
    .I3(\cla_inst/sum [7]),
    .I4(\cla_inst/sum [190]),
    .I5(\cla_inst/sum [9]),
    .O(\cla_inst/n0014_inv_wg_lut [30])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<30>  (
    .CI(\cla_inst/n0014_inv_wg_cy [29]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [30]),
    .O(\cla_inst/n0014_inv_wg_cy [30])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<31>  (
    .I0(\cla_inst/sum [8]),
    .I1(\cla_inst/sum [4]),
    .I2(\cla_inst/sum [6]),
    .I3(\cla_inst/sum [5]),
    .I4(\cla_inst/sum [191]),
    .I5(\cla_inst/sum [1]),
    .O(\cla_inst/n0014_inv_wg_lut [31])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<31>  (
    .CI(\cla_inst/n0014_inv_wg_cy [30]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [31]),
    .O(\cla_inst/n0014_inv_wg_cy [31])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cla_inst/n0014_inv_wg_lut<32>  (
    .I0(\cla_inst/sum [3]),
    .I1(\cla_inst/sum [2]),
    .I2(\cla_inst/sum [193]),
    .I3(\cla_inst/sum [0]),
    .I4(\cla_inst/sum [192]),
    .I5(\cla_inst/sum [194]),
    .O(\cla_inst/n0014_inv_wg_lut [32])
  );
  MUXCY   \cla_inst/n0014_inv_wg_cy<32>  (
    .CI(\cla_inst/n0014_inv_wg_cy [31]),
    .DI(N0),
    .S(\cla_inst/n0014_inv_wg_lut [32]),
    .O(\cla_inst/n0014_inv_wg_cy [32])
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_0)
  );
  IBUF   user_clk_IBUF (
    .I(user_clk),
    .O(user_clk_IBUF_1665)
  );
  IBUF   en_IBUF (
    .I(en),
    .O(en_IBUF_1)
  );
  OBUF   error_OBUF (
    .I(\cla_inst/error_5 ),
    .O(error)
  );
  OBUF   locked_OBUF (
    .I(locked_OBUF_4),
    .O(locked)
  );
  FDR   \cla_inst/error  (
    .C(clk_bufg),
    .D(\cla_inst/error_glue_set_1663 ),
    .R(\cla_inst/lsfr_128/rstn_inv ),
    .Q(\cla_inst/error_5 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \cla_inst/error_glue_set  (
    .I0(\cla_inst/error_5 ),
    .I1(\cla_inst/n0014_inv_wg_cy [10]),
    .I2(\cla_inst/n0014_inv_wg_cy [21]),
    .I3(\cla_inst/n0014_inv_wg_cy [32]),
    .O(\cla_inst/error_glue_set_1663 )
  );
  INV   locked_inv1_INV_0 (
    .I(locked_OBUF_4),
    .O(locked_inv)
  );
  INV   \cla_inst/rstn_inv1_INV_0  (
    .I(logic_resetn[0]),
    .O(\cla_inst/lsfr_128/rstn_inv )
  );
  INV   \cla_inst/carry_in_INV_8_o1_INV_0  (
    .I(\cla_inst/carry_in_1199 ),
    .O(\cla_inst/carry_in_INV_8_o )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<0>1_INV_0  (
    .I(\cla_inst/counter [0]),
    .O(\cla_inst/counter[194]_inv_2_OUT<0> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<1>1_INV_0  (
    .I(\cla_inst/counter [1]),
    .O(\cla_inst/counter[194]_inv_2_OUT<1> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<2>1_INV_0  (
    .I(\cla_inst/counter [2]),
    .O(\cla_inst/counter[194]_inv_2_OUT<2> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<3>1_INV_0  (
    .I(\cla_inst/counter [3]),
    .O(\cla_inst/counter[194]_inv_2_OUT<3> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<4>1_INV_0  (
    .I(\cla_inst/counter [4]),
    .O(\cla_inst/counter[194]_inv_2_OUT<4> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<5>1_INV_0  (
    .I(\cla_inst/counter [5]),
    .O(\cla_inst/counter[194]_inv_2_OUT<5> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<6>1_INV_0  (
    .I(\cla_inst/counter [6]),
    .O(\cla_inst/counter[194]_inv_2_OUT<6> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<7>1_INV_0  (
    .I(\cla_inst/counter [7]),
    .O(\cla_inst/counter[194]_inv_2_OUT<7> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<8>1_INV_0  (
    .I(\cla_inst/counter [8]),
    .O(\cla_inst/counter[194]_inv_2_OUT<8> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<9>1_INV_0  (
    .I(\cla_inst/counter [9]),
    .O(\cla_inst/counter[194]_inv_2_OUT<9> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<10>1_INV_0  (
    .I(\cla_inst/counter [10]),
    .O(\cla_inst/counter[194]_inv_2_OUT<10> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<11>1_INV_0  (
    .I(\cla_inst/counter [11]),
    .O(\cla_inst/counter[194]_inv_2_OUT<11> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<12>1_INV_0  (
    .I(\cla_inst/counter [12]),
    .O(\cla_inst/counter[194]_inv_2_OUT<12> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<13>1_INV_0  (
    .I(\cla_inst/counter [13]),
    .O(\cla_inst/counter[194]_inv_2_OUT<13> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<14>1_INV_0  (
    .I(\cla_inst/counter [14]),
    .O(\cla_inst/counter[194]_inv_2_OUT<14> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<15>1_INV_0  (
    .I(\cla_inst/counter [15]),
    .O(\cla_inst/counter[194]_inv_2_OUT<15> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<16>1_INV_0  (
    .I(\cla_inst/counter [16]),
    .O(\cla_inst/counter[194]_inv_2_OUT<16> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<17>1_INV_0  (
    .I(\cla_inst/counter [17]),
    .O(\cla_inst/counter[194]_inv_2_OUT<17> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<18>1_INV_0  (
    .I(\cla_inst/counter [18]),
    .O(\cla_inst/counter[194]_inv_2_OUT<18> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<19>1_INV_0  (
    .I(\cla_inst/counter [19]),
    .O(\cla_inst/counter[194]_inv_2_OUT<19> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<20>1_INV_0  (
    .I(\cla_inst/counter [20]),
    .O(\cla_inst/counter[194]_inv_2_OUT<20> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<21>1_INV_0  (
    .I(\cla_inst/counter [21]),
    .O(\cla_inst/counter[194]_inv_2_OUT<21> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<22>1_INV_0  (
    .I(\cla_inst/counter [22]),
    .O(\cla_inst/counter[194]_inv_2_OUT<22> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<23>1_INV_0  (
    .I(\cla_inst/counter [23]),
    .O(\cla_inst/counter[194]_inv_2_OUT<23> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<24>1_INV_0  (
    .I(\cla_inst/counter [24]),
    .O(\cla_inst/counter[194]_inv_2_OUT<24> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<25>1_INV_0  (
    .I(\cla_inst/counter [25]),
    .O(\cla_inst/counter[194]_inv_2_OUT<25> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<26>1_INV_0  (
    .I(\cla_inst/counter [26]),
    .O(\cla_inst/counter[194]_inv_2_OUT<26> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<27>1_INV_0  (
    .I(\cla_inst/counter [27]),
    .O(\cla_inst/counter[194]_inv_2_OUT<27> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<28>1_INV_0  (
    .I(\cla_inst/counter [28]),
    .O(\cla_inst/counter[194]_inv_2_OUT<28> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<29>1_INV_0  (
    .I(\cla_inst/counter [29]),
    .O(\cla_inst/counter[194]_inv_2_OUT<29> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<30>1_INV_0  (
    .I(\cla_inst/counter [30]),
    .O(\cla_inst/counter[194]_inv_2_OUT<30> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<31>1_INV_0  (
    .I(\cla_inst/counter [31]),
    .O(\cla_inst/counter[194]_inv_2_OUT<31> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<32>1_INV_0  (
    .I(\cla_inst/counter [32]),
    .O(\cla_inst/counter[194]_inv_2_OUT<32> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<33>1_INV_0  (
    .I(\cla_inst/counter [33]),
    .O(\cla_inst/counter[194]_inv_2_OUT<33> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<34>1_INV_0  (
    .I(\cla_inst/counter [34]),
    .O(\cla_inst/counter[194]_inv_2_OUT<34> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<35>1_INV_0  (
    .I(\cla_inst/counter [35]),
    .O(\cla_inst/counter[194]_inv_2_OUT<35> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<36>1_INV_0  (
    .I(\cla_inst/counter [36]),
    .O(\cla_inst/counter[194]_inv_2_OUT<36> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<37>1_INV_0  (
    .I(\cla_inst/counter [37]),
    .O(\cla_inst/counter[194]_inv_2_OUT<37> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<38>1_INV_0  (
    .I(\cla_inst/counter [38]),
    .O(\cla_inst/counter[194]_inv_2_OUT<38> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<39>1_INV_0  (
    .I(\cla_inst/counter [39]),
    .O(\cla_inst/counter[194]_inv_2_OUT<39> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<40>1_INV_0  (
    .I(\cla_inst/counter [40]),
    .O(\cla_inst/counter[194]_inv_2_OUT<40> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<41>1_INV_0  (
    .I(\cla_inst/counter [41]),
    .O(\cla_inst/counter[194]_inv_2_OUT<41> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<42>1_INV_0  (
    .I(\cla_inst/counter [42]),
    .O(\cla_inst/counter[194]_inv_2_OUT<42> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<43>1_INV_0  (
    .I(\cla_inst/counter [43]),
    .O(\cla_inst/counter[194]_inv_2_OUT<43> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<44>1_INV_0  (
    .I(\cla_inst/counter [44]),
    .O(\cla_inst/counter[194]_inv_2_OUT<44> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<45>1_INV_0  (
    .I(\cla_inst/counter [45]),
    .O(\cla_inst/counter[194]_inv_2_OUT<45> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<46>1_INV_0  (
    .I(\cla_inst/counter [46]),
    .O(\cla_inst/counter[194]_inv_2_OUT<46> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<47>1_INV_0  (
    .I(\cla_inst/counter [47]),
    .O(\cla_inst/counter[194]_inv_2_OUT<47> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<48>1_INV_0  (
    .I(\cla_inst/counter [48]),
    .O(\cla_inst/counter[194]_inv_2_OUT<48> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<49>1_INV_0  (
    .I(\cla_inst/counter [49]),
    .O(\cla_inst/counter[194]_inv_2_OUT<49> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<50>1_INV_0  (
    .I(\cla_inst/counter [50]),
    .O(\cla_inst/counter[194]_inv_2_OUT<50> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<51>1_INV_0  (
    .I(\cla_inst/counter [51]),
    .O(\cla_inst/counter[194]_inv_2_OUT<51> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<52>1_INV_0  (
    .I(\cla_inst/counter [52]),
    .O(\cla_inst/counter[194]_inv_2_OUT<52> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<53>1_INV_0  (
    .I(\cla_inst/counter [53]),
    .O(\cla_inst/counter[194]_inv_2_OUT<53> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<54>1_INV_0  (
    .I(\cla_inst/counter [54]),
    .O(\cla_inst/counter[194]_inv_2_OUT<54> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<55>1_INV_0  (
    .I(\cla_inst/counter [55]),
    .O(\cla_inst/counter[194]_inv_2_OUT<55> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<56>1_INV_0  (
    .I(\cla_inst/counter [56]),
    .O(\cla_inst/counter[194]_inv_2_OUT<56> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<57>1_INV_0  (
    .I(\cla_inst/counter [57]),
    .O(\cla_inst/counter[194]_inv_2_OUT<57> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<58>1_INV_0  (
    .I(\cla_inst/counter [58]),
    .O(\cla_inst/counter[194]_inv_2_OUT<58> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<59>1_INV_0  (
    .I(\cla_inst/counter [59]),
    .O(\cla_inst/counter[194]_inv_2_OUT<59> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<60>1_INV_0  (
    .I(\cla_inst/counter [60]),
    .O(\cla_inst/counter[194]_inv_2_OUT<60> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<61>1_INV_0  (
    .I(\cla_inst/counter [61]),
    .O(\cla_inst/counter[194]_inv_2_OUT<61> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<62>1_INV_0  (
    .I(\cla_inst/counter [62]),
    .O(\cla_inst/counter[194]_inv_2_OUT<62> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<63>1_INV_0  (
    .I(\cla_inst/counter [63]),
    .O(\cla_inst/counter[194]_inv_2_OUT<63> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<64>1_INV_0  (
    .I(\cla_inst/counter [64]),
    .O(\cla_inst/counter[194]_inv_2_OUT<64> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<65>1_INV_0  (
    .I(\cla_inst/counter [65]),
    .O(\cla_inst/counter[194]_inv_2_OUT<65> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<66>1_INV_0  (
    .I(\cla_inst/counter [66]),
    .O(\cla_inst/counter[194]_inv_2_OUT<66> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<67>1_INV_0  (
    .I(\cla_inst/counter [67]),
    .O(\cla_inst/counter[194]_inv_2_OUT<67> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<68>1_INV_0  (
    .I(\cla_inst/counter [68]),
    .O(\cla_inst/counter[194]_inv_2_OUT<68> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<69>1_INV_0  (
    .I(\cla_inst/counter [69]),
    .O(\cla_inst/counter[194]_inv_2_OUT<69> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<70>1_INV_0  (
    .I(\cla_inst/counter [70]),
    .O(\cla_inst/counter[194]_inv_2_OUT<70> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<71>1_INV_0  (
    .I(\cla_inst/counter [71]),
    .O(\cla_inst/counter[194]_inv_2_OUT<71> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<72>1_INV_0  (
    .I(\cla_inst/counter [72]),
    .O(\cla_inst/counter[194]_inv_2_OUT<72> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<73>1_INV_0  (
    .I(\cla_inst/counter [73]),
    .O(\cla_inst/counter[194]_inv_2_OUT<73> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<74>1_INV_0  (
    .I(\cla_inst/counter [74]),
    .O(\cla_inst/counter[194]_inv_2_OUT<74> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<75>1_INV_0  (
    .I(\cla_inst/counter [75]),
    .O(\cla_inst/counter[194]_inv_2_OUT<75> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<76>1_INV_0  (
    .I(\cla_inst/counter [76]),
    .O(\cla_inst/counter[194]_inv_2_OUT<76> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<77>1_INV_0  (
    .I(\cla_inst/counter [77]),
    .O(\cla_inst/counter[194]_inv_2_OUT<77> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<78>1_INV_0  (
    .I(\cla_inst/counter [78]),
    .O(\cla_inst/counter[194]_inv_2_OUT<78> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<79>1_INV_0  (
    .I(\cla_inst/counter [79]),
    .O(\cla_inst/counter[194]_inv_2_OUT<79> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<80>1_INV_0  (
    .I(\cla_inst/counter [80]),
    .O(\cla_inst/counter[194]_inv_2_OUT<80> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<81>1_INV_0  (
    .I(\cla_inst/counter [81]),
    .O(\cla_inst/counter[194]_inv_2_OUT<81> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<82>1_INV_0  (
    .I(\cla_inst/counter [82]),
    .O(\cla_inst/counter[194]_inv_2_OUT<82> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<83>1_INV_0  (
    .I(\cla_inst/counter [83]),
    .O(\cla_inst/counter[194]_inv_2_OUT<83> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<84>1_INV_0  (
    .I(\cla_inst/counter [84]),
    .O(\cla_inst/counter[194]_inv_2_OUT<84> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<85>1_INV_0  (
    .I(\cla_inst/counter [85]),
    .O(\cla_inst/counter[194]_inv_2_OUT<85> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<86>1_INV_0  (
    .I(\cla_inst/counter [86]),
    .O(\cla_inst/counter[194]_inv_2_OUT<86> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<87>1_INV_0  (
    .I(\cla_inst/counter [87]),
    .O(\cla_inst/counter[194]_inv_2_OUT<87> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<88>1_INV_0  (
    .I(\cla_inst/counter [88]),
    .O(\cla_inst/counter[194]_inv_2_OUT<88> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<89>1_INV_0  (
    .I(\cla_inst/counter [89]),
    .O(\cla_inst/counter[194]_inv_2_OUT<89> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<90>1_INV_0  (
    .I(\cla_inst/counter [90]),
    .O(\cla_inst/counter[194]_inv_2_OUT<90> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<91>1_INV_0  (
    .I(\cla_inst/counter [91]),
    .O(\cla_inst/counter[194]_inv_2_OUT<91> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<92>1_INV_0  (
    .I(\cla_inst/counter [92]),
    .O(\cla_inst/counter[194]_inv_2_OUT<92> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<93>1_INV_0  (
    .I(\cla_inst/counter [93]),
    .O(\cla_inst/counter[194]_inv_2_OUT<93> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<94>1_INV_0  (
    .I(\cla_inst/counter [94]),
    .O(\cla_inst/counter[194]_inv_2_OUT<94> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<95>1_INV_0  (
    .I(\cla_inst/counter [95]),
    .O(\cla_inst/counter[194]_inv_2_OUT<95> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<96>1_INV_0  (
    .I(\cla_inst/counter [96]),
    .O(\cla_inst/counter[194]_inv_2_OUT<96> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<97>1_INV_0  (
    .I(\cla_inst/counter [97]),
    .O(\cla_inst/counter[194]_inv_2_OUT<97> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<98>1_INV_0  (
    .I(\cla_inst/counter [98]),
    .O(\cla_inst/counter[194]_inv_2_OUT<98> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<99>1_INV_0  (
    .I(\cla_inst/counter [99]),
    .O(\cla_inst/counter[194]_inv_2_OUT<99> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<100>1_INV_0  (
    .I(\cla_inst/counter [100]),
    .O(\cla_inst/counter[194]_inv_2_OUT<100> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<101>1_INV_0  (
    .I(\cla_inst/counter [101]),
    .O(\cla_inst/counter[194]_inv_2_OUT<101> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<102>1_INV_0  (
    .I(\cla_inst/counter [102]),
    .O(\cla_inst/counter[194]_inv_2_OUT<102> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<103>1_INV_0  (
    .I(\cla_inst/counter [103]),
    .O(\cla_inst/counter[194]_inv_2_OUT<103> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<104>1_INV_0  (
    .I(\cla_inst/counter [104]),
    .O(\cla_inst/counter[194]_inv_2_OUT<104> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<105>1_INV_0  (
    .I(\cla_inst/counter [105]),
    .O(\cla_inst/counter[194]_inv_2_OUT<105> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<106>1_INV_0  (
    .I(\cla_inst/counter [106]),
    .O(\cla_inst/counter[194]_inv_2_OUT<106> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<107>1_INV_0  (
    .I(\cla_inst/counter [107]),
    .O(\cla_inst/counter[194]_inv_2_OUT<107> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<108>1_INV_0  (
    .I(\cla_inst/counter [108]),
    .O(\cla_inst/counter[194]_inv_2_OUT<108> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<109>1_INV_0  (
    .I(\cla_inst/counter [109]),
    .O(\cla_inst/counter[194]_inv_2_OUT<109> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<110>1_INV_0  (
    .I(\cla_inst/counter [110]),
    .O(\cla_inst/counter[194]_inv_2_OUT<110> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<111>1_INV_0  (
    .I(\cla_inst/counter [111]),
    .O(\cla_inst/counter[194]_inv_2_OUT<111> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<112>1_INV_0  (
    .I(\cla_inst/counter [112]),
    .O(\cla_inst/counter[194]_inv_2_OUT<112> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<113>1_INV_0  (
    .I(\cla_inst/counter [113]),
    .O(\cla_inst/counter[194]_inv_2_OUT<113> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<114>1_INV_0  (
    .I(\cla_inst/counter [114]),
    .O(\cla_inst/counter[194]_inv_2_OUT<114> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<115>1_INV_0  (
    .I(\cla_inst/counter [115]),
    .O(\cla_inst/counter[194]_inv_2_OUT<115> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<116>1_INV_0  (
    .I(\cla_inst/counter [116]),
    .O(\cla_inst/counter[194]_inv_2_OUT<116> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<117>1_INV_0  (
    .I(\cla_inst/counter [117]),
    .O(\cla_inst/counter[194]_inv_2_OUT<117> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<118>1_INV_0  (
    .I(\cla_inst/counter [118]),
    .O(\cla_inst/counter[194]_inv_2_OUT<118> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<119>1_INV_0  (
    .I(\cla_inst/counter [119]),
    .O(\cla_inst/counter[194]_inv_2_OUT<119> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<120>1_INV_0  (
    .I(\cla_inst/counter [120]),
    .O(\cla_inst/counter[194]_inv_2_OUT<120> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<121>1_INV_0  (
    .I(\cla_inst/counter [121]),
    .O(\cla_inst/counter[194]_inv_2_OUT<121> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<122>1_INV_0  (
    .I(\cla_inst/counter [122]),
    .O(\cla_inst/counter[194]_inv_2_OUT<122> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<123>1_INV_0  (
    .I(\cla_inst/counter [123]),
    .O(\cla_inst/counter[194]_inv_2_OUT<123> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<124>1_INV_0  (
    .I(\cla_inst/counter [124]),
    .O(\cla_inst/counter[194]_inv_2_OUT<124> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<125>1_INV_0  (
    .I(\cla_inst/counter [125]),
    .O(\cla_inst/counter[194]_inv_2_OUT<125> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<126>1_INV_0  (
    .I(\cla_inst/counter [126]),
    .O(\cla_inst/counter[194]_inv_2_OUT<126> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<127>1_INV_0  (
    .I(\cla_inst/counter [127]),
    .O(\cla_inst/counter[194]_inv_2_OUT<127> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<128>1_INV_0  (
    .I(\cla_inst/counter [128]),
    .O(\cla_inst/counter[194]_inv_2_OUT<128> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<129>1_INV_0  (
    .I(\cla_inst/counter [129]),
    .O(\cla_inst/counter[194]_inv_2_OUT<129> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<130>1_INV_0  (
    .I(\cla_inst/counter [130]),
    .O(\cla_inst/counter[194]_inv_2_OUT<130> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<131>1_INV_0  (
    .I(\cla_inst/counter [131]),
    .O(\cla_inst/counter[194]_inv_2_OUT<131> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<132>1_INV_0  (
    .I(\cla_inst/counter [132]),
    .O(\cla_inst/counter[194]_inv_2_OUT<132> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<133>1_INV_0  (
    .I(\cla_inst/counter [133]),
    .O(\cla_inst/counter[194]_inv_2_OUT<133> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<134>1_INV_0  (
    .I(\cla_inst/counter [134]),
    .O(\cla_inst/counter[194]_inv_2_OUT<134> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<135>1_INV_0  (
    .I(\cla_inst/counter [135]),
    .O(\cla_inst/counter[194]_inv_2_OUT<135> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<136>1_INV_0  (
    .I(\cla_inst/counter [136]),
    .O(\cla_inst/counter[194]_inv_2_OUT<136> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<137>1_INV_0  (
    .I(\cla_inst/counter [137]),
    .O(\cla_inst/counter[194]_inv_2_OUT<137> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<138>1_INV_0  (
    .I(\cla_inst/counter [138]),
    .O(\cla_inst/counter[194]_inv_2_OUT<138> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<139>1_INV_0  (
    .I(\cla_inst/counter [139]),
    .O(\cla_inst/counter[194]_inv_2_OUT<139> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<140>1_INV_0  (
    .I(\cla_inst/counter [140]),
    .O(\cla_inst/counter[194]_inv_2_OUT<140> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<141>1_INV_0  (
    .I(\cla_inst/counter [141]),
    .O(\cla_inst/counter[194]_inv_2_OUT<141> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<142>1_INV_0  (
    .I(\cla_inst/counter [142]),
    .O(\cla_inst/counter[194]_inv_2_OUT<142> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<143>1_INV_0  (
    .I(\cla_inst/counter [143]),
    .O(\cla_inst/counter[194]_inv_2_OUT<143> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<144>1_INV_0  (
    .I(\cla_inst/counter [144]),
    .O(\cla_inst/counter[194]_inv_2_OUT<144> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<145>1_INV_0  (
    .I(\cla_inst/counter [145]),
    .O(\cla_inst/counter[194]_inv_2_OUT<145> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<146>1_INV_0  (
    .I(\cla_inst/counter [146]),
    .O(\cla_inst/counter[194]_inv_2_OUT<146> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<147>1_INV_0  (
    .I(\cla_inst/counter [147]),
    .O(\cla_inst/counter[194]_inv_2_OUT<147> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<148>1_INV_0  (
    .I(\cla_inst/counter [148]),
    .O(\cla_inst/counter[194]_inv_2_OUT<148> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<149>1_INV_0  (
    .I(\cla_inst/counter [149]),
    .O(\cla_inst/counter[194]_inv_2_OUT<149> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<150>1_INV_0  (
    .I(\cla_inst/counter [150]),
    .O(\cla_inst/counter[194]_inv_2_OUT<150> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<151>1_INV_0  (
    .I(\cla_inst/counter [151]),
    .O(\cla_inst/counter[194]_inv_2_OUT<151> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<152>1_INV_0  (
    .I(\cla_inst/counter [152]),
    .O(\cla_inst/counter[194]_inv_2_OUT<152> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<153>1_INV_0  (
    .I(\cla_inst/counter [153]),
    .O(\cla_inst/counter[194]_inv_2_OUT<153> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<154>1_INV_0  (
    .I(\cla_inst/counter [154]),
    .O(\cla_inst/counter[194]_inv_2_OUT<154> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<155>1_INV_0  (
    .I(\cla_inst/counter [155]),
    .O(\cla_inst/counter[194]_inv_2_OUT<155> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<156>1_INV_0  (
    .I(\cla_inst/counter [156]),
    .O(\cla_inst/counter[194]_inv_2_OUT<156> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<157>1_INV_0  (
    .I(\cla_inst/counter [157]),
    .O(\cla_inst/counter[194]_inv_2_OUT<157> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<158>1_INV_0  (
    .I(\cla_inst/counter [158]),
    .O(\cla_inst/counter[194]_inv_2_OUT<158> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<159>1_INV_0  (
    .I(\cla_inst/counter [159]),
    .O(\cla_inst/counter[194]_inv_2_OUT<159> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<160>1_INV_0  (
    .I(\cla_inst/counter [160]),
    .O(\cla_inst/counter[194]_inv_2_OUT<160> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<161>1_INV_0  (
    .I(\cla_inst/counter [161]),
    .O(\cla_inst/counter[194]_inv_2_OUT<161> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<162>1_INV_0  (
    .I(\cla_inst/counter [162]),
    .O(\cla_inst/counter[194]_inv_2_OUT<162> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<163>1_INV_0  (
    .I(\cla_inst/counter [163]),
    .O(\cla_inst/counter[194]_inv_2_OUT<163> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<164>1_INV_0  (
    .I(\cla_inst/counter [164]),
    .O(\cla_inst/counter[194]_inv_2_OUT<164> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<165>1_INV_0  (
    .I(\cla_inst/counter [165]),
    .O(\cla_inst/counter[194]_inv_2_OUT<165> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<166>1_INV_0  (
    .I(\cla_inst/counter [166]),
    .O(\cla_inst/counter[194]_inv_2_OUT<166> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<167>1_INV_0  (
    .I(\cla_inst/counter [167]),
    .O(\cla_inst/counter[194]_inv_2_OUT<167> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<168>1_INV_0  (
    .I(\cla_inst/counter [168]),
    .O(\cla_inst/counter[194]_inv_2_OUT<168> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<169>1_INV_0  (
    .I(\cla_inst/counter [169]),
    .O(\cla_inst/counter[194]_inv_2_OUT<169> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<170>1_INV_0  (
    .I(\cla_inst/counter [170]),
    .O(\cla_inst/counter[194]_inv_2_OUT<170> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<171>1_INV_0  (
    .I(\cla_inst/counter [171]),
    .O(\cla_inst/counter[194]_inv_2_OUT<171> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<172>1_INV_0  (
    .I(\cla_inst/counter [172]),
    .O(\cla_inst/counter[194]_inv_2_OUT<172> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<173>1_INV_0  (
    .I(\cla_inst/counter [173]),
    .O(\cla_inst/counter[194]_inv_2_OUT<173> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<174>1_INV_0  (
    .I(\cla_inst/counter [174]),
    .O(\cla_inst/counter[194]_inv_2_OUT<174> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<175>1_INV_0  (
    .I(\cla_inst/counter [175]),
    .O(\cla_inst/counter[194]_inv_2_OUT<175> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<176>1_INV_0  (
    .I(\cla_inst/counter [176]),
    .O(\cla_inst/counter[194]_inv_2_OUT<176> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<177>1_INV_0  (
    .I(\cla_inst/counter [177]),
    .O(\cla_inst/counter[194]_inv_2_OUT<177> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<178>1_INV_0  (
    .I(\cla_inst/counter [178]),
    .O(\cla_inst/counter[194]_inv_2_OUT<178> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<179>1_INV_0  (
    .I(\cla_inst/counter [179]),
    .O(\cla_inst/counter[194]_inv_2_OUT<179> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<180>1_INV_0  (
    .I(\cla_inst/counter [180]),
    .O(\cla_inst/counter[194]_inv_2_OUT<180> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<181>1_INV_0  (
    .I(\cla_inst/counter [181]),
    .O(\cla_inst/counter[194]_inv_2_OUT<181> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<182>1_INV_0  (
    .I(\cla_inst/counter [182]),
    .O(\cla_inst/counter[194]_inv_2_OUT<182> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<183>1_INV_0  (
    .I(\cla_inst/counter [183]),
    .O(\cla_inst/counter[194]_inv_2_OUT<183> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<184>1_INV_0  (
    .I(\cla_inst/counter [184]),
    .O(\cla_inst/counter[194]_inv_2_OUT<184> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<185>1_INV_0  (
    .I(\cla_inst/counter [185]),
    .O(\cla_inst/counter[194]_inv_2_OUT<185> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<186>1_INV_0  (
    .I(\cla_inst/counter [186]),
    .O(\cla_inst/counter[194]_inv_2_OUT<186> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<187>1_INV_0  (
    .I(\cla_inst/counter [187]),
    .O(\cla_inst/counter[194]_inv_2_OUT<187> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<188>1_INV_0  (
    .I(\cla_inst/counter [188]),
    .O(\cla_inst/counter[194]_inv_2_OUT<188> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<189>1_INV_0  (
    .I(\cla_inst/counter [189]),
    .O(\cla_inst/counter[194]_inv_2_OUT<189> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<190>1_INV_0  (
    .I(\cla_inst/counter [190]),
    .O(\cla_inst/counter[194]_inv_2_OUT<190> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<191>1_INV_0  (
    .I(\cla_inst/counter [191]),
    .O(\cla_inst/counter[194]_inv_2_OUT<191> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<192>1_INV_0  (
    .I(\cla_inst/counter [192]),
    .O(\cla_inst/counter[194]_inv_2_OUT<192> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<193>1_INV_0  (
    .I(\cla_inst/counter [193]),
    .O(\cla_inst/counter[194]_inv_2_OUT<193> )
  );
  INV   \cla_inst/counter[194]_inv_2_OUT<194>1_INV_0  (
    .I(\cla_inst/counter [194]),
    .O(\cla_inst/counter[194]_inv_2_OUT<194> )
  );
  INV   \cla_inst/lsfr_128/en_inv1_INV_0  (
    .I(en_IBUF_1),
    .O(\cla_inst/lsfr_128/en_inv )
  );
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

