// Copyright (C) 1991-2010 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II"
// VERSION "Version 10.1 Build 153 11/29/2010 SJ Full Version"

// DATE "03/23/2016 15:44:19"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module top_kirsch_chip (	nrst,
	clk,
	rxflex,
	txflex,
	o_sevenseg,
	o_mode,
	o_nrst,
	debug_key,
	debug_switch,
	debug_led_red,
	debug_led_grn,
	debug_sevenseg_0,
	debug_sevenseg_1,
	debug_sevenseg_2,
	debug_sevenseg_3,
	debug_sevenseg_4,
	debug_sevenseg_5);
input 	nrst;
input 	clk;
input 	rxflex;
output 	txflex;
output 	[15:0] o_sevenseg;
output 	[1:0] o_mode;
output 	o_nrst;
input 	[3:1] debug_key;
input 	[17:0] debug_switch;
output 	[16:0] debug_led_red;
output 	[5:0] debug_led_grn;
output 	[7:0] debug_sevenseg_0;
output 	[7:0] debug_sevenseg_1;
output 	[7:0] debug_sevenseg_2;
output 	[7:0] debug_sevenseg_3;
output 	[7:0] debug_sevenseg_4;
output 	[7:0] debug_sevenseg_5;

// Design Ports Information
// txflex	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[1]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[2]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[5]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[6]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[7]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[8]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[9]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[10]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[11]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[12]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[13]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[14]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[15]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_mode[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_mode[1]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_nrst	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_key[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_led_red[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[0]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[1]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[2]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[4]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[5]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[6]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[7]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[0]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[1]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[2]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[4]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[5]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[6]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[7]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[1]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[2]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[4]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[5]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[6]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[7]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[0]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[1]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[2]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[4]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[5]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[6]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[7]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[0]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[1]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[2]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[4]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[5]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[6]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[7]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[0]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[1]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[2]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[4]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[5]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[6]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[7]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// nrst	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// rxflex	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("top_kirsch_v.sdo");
// synopsys translate_on

wire \u_uw_uart|ld_sdout ;
wire \u_uw_uart|i_uarts|nx27627z3 ;
wire \u_uw_uart|nx18433z1 ;
wire \u_uw_uart|i_uarts|TxDiv_6_ ;
wire \u_uw_uart|i_uarts|TxDiv_5_ ;
wire \u_uw_uart|i_uarts|TxDiv_0_ ;
wire \u_uw_uart|i_uarts|nx32400z6 ;
wire \u_uw_uart|waitcount_8_ ;
wire \u_uw_uart|waitcount_5_ ;
wire \u_uw_uart|waitcount_3_ ;
wire \u_uw_uart|waitcount_0_ ;
wire \u_uw_uart|nx39480z6 ;
wire \u_uw_uart|i_uarts|inc_d_5__dup_104 ;
wire \u_uw_uart|i_uarts|inc_d_6__dup_106 ;
wire \u_uw_uart|i_uarts|inc_d_0__dup_94 ;
wire \u_uw_uart|mdata_0_ ;
wire \u_uw_uart|inc_d_3_ ;
wire \u_uw_uart|inc_d_5_ ;
wire \u_uw_uart|inc_d_8_ ;
wire \u_uw_uart|inc_d_0_ ;
wire \u_uw_uart|nx33757z2 ;
wire \u_uw_uart|nx33757z1 ;
wire \u_uw_uart|i_uarts|RxFSM_4_ ;
wire \u_uw_uart|i_uarts|RxDiv_1_ ;
wire \u_uw_uart|i_uarts|RxDiv_10_ ;
wire \u_uw_uart|i_uarts|RxDiv_6_ ;
wire \u_uw_uart|i_uarts|nx51271z6 ;
wire \u_uw_uart|i_uarts|RxDiv_4_ ;
wire \u_uw_uart|i_uarts|RxFSM_2_ ;
wire \u_uw_uart|i_uarts|RxBitCnt_3_ ;
wire \u_uw_uart|i_uarts|RxBitCnt_2_ ;
wire \u_uw_uart|i_uarts|RxBitCnt_1_ ;
wire \u_uw_uart|i_uarts|RxBitCnt_0_ ;
wire \u_uw_uart|i_uarts|nx13547z2 ;
wire \u_uw_uart|i_uarts|nx12550z1 ;
wire \u_uw_uart|i_uarts|inc_d_1_ ;
wire \u_uw_uart|i_uarts|inc_d_4_ ;
wire \u_uw_uart|i_uarts|inc_d_6_ ;
wire \u_uw_uart|i_uarts|nx17096z1 ;
wire \u_uw_uart|i_uarts|inc_d_10_ ;
wire \u_uw_uart|i_uarts|RxFSM_3_ ;
wire \u_uw_uart|i_uarts|nx14544z1 ;
wire \u_uw_uart|i_uarts|nx8373z2 ;
wire \u_uw_uart|i_uarts|nx8373z1 ;
wire \u_uw_uart|i_uarts|nx11364z2 ;
wire \u_uw_uart|i_uarts|nx9370z1 ;
wire \u_uw_uart|i_uarts|nx10367z1 ;
wire \u_uw_uart|i_uarts|nx11364z1 ;
wire \u_uw_uart|i_uarts|nx13547z1 ;
wire \u_uw_uart|mdata_7_ ;
wire \u_uw_uart|nx39739z1 ;
wire \clk~combout ;
wire \clk~clkctrl_outclk ;
wire \u_uw_uart|i_uarts|nx18093z11 ;
wire \u_uw_uart|i_uarts|inc_d_1__dup_96 ;
wire \nrst~combout ;
wire \u_uw_uart|i_uarts|TxDiv_1_ ;
wire \u_uw_uart|i_uarts|nx18093z10 ;
wire \u_uw_uart|i_uarts|inc_d_2__dup_98 ;
wire \u_uw_uart|i_uarts|TxDiv_2_ ;
wire \u_uw_uart|i_uarts|nx18093z9 ;
wire \u_uw_uart|i_uarts|inc_d_3__dup_100 ;
wire \u_uw_uart|i_uarts|TxDiv_3_ ;
wire \u_uw_uart|i_uarts|nx18093z8 ;
wire \u_uw_uart|i_uarts|inc_d_4__dup_102 ;
wire \u_uw_uart|i_uarts|TxDiv_4_ ;
wire \u_uw_uart|i_uarts|nx32400z5 ;
wire \u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout ;
wire \u_uw_uart|i_uarts|RxDivisor_4_ ;
wire \u_uw_uart|i_uarts|nx18093z7 ;
wire \u_uw_uart|i_uarts|nx18093z6 ;
wire \u_uw_uart|i_uarts|nx18093z5 ;
wire \u_uw_uart|i_uarts|inc_d_7__dup_108 ;
wire \u_uw_uart|i_uarts|TxDiv_7_ ;
wire \u_uw_uart|i_uarts|nx18093z4 ;
wire \u_uw_uart|i_uarts|inc_d_8__dup_110 ;
wire \u_uw_uart|i_uarts|TxDiv_8_ ;
wire \u_uw_uart|i_uarts|nx18093z3 ;
wire \u_uw_uart|i_uarts|inc_d_9__dup_112 ;
wire \u_uw_uart|i_uarts|TxDiv_9_ ;
wire \u_uw_uart|i_uarts|nx32400z4 ;
wire \u_uw_uart|i_uarts|nx32400z3 ;
wire \u_uw_uart|i_uarts|nx18093z2 ;
wire \u_uw_uart|i_uarts|inc_d_10__dup_113 ;
wire \u_uw_uart|i_uarts|TxDiv_10_ ;
wire \u_uw_uart|i_uarts|nx18093z1 ;
wire \u_uw_uart|i_uarts|inc_d_11_ ;
wire \u_uw_uart|i_uarts|TxDiv_11_ ;
wire \u_uw_uart|i_uarts|nx32400z2 ;
wire \u_uw_uart|i_uarts|nx32400z1 ;
wire \u_uw_uart|i_uarts|TopTx ;
wire \u_uw_uart|i_uarts|nx48926z1 ;
wire \u_uw_uart|i_uarts|nx5605z1 ;
wire \u_uw_uart|i_uarts|TxFSM_1_ ;
wire \u_uw_uart|i_uarts|nx48926z2 ;
wire \u_uw_uart|i_uarts|TxBitCnt_0_ ;
wire \u_uw_uart|i_uarts|nx49923z1 ;
wire \u_uw_uart|i_uarts|TxBitCnt_1_ ;
wire \u_uw_uart|i_uarts|nx50920z2 ;
wire \u_uw_uart|i_uarts|nx51917z2 ;
wire \u_uw_uart|i_uarts|nx51917z1 ;
wire \u_uw_uart|i_uarts|TxBitCnt_3_ ;
wire \u_uw_uart|i_uarts|nx50920z1 ;
wire \u_uw_uart|i_uarts|TxBitCnt_2_ ;
wire \u_uw_uart|i_uarts|nx4608z4 ;
wire \u_uw_uart|i_uarts|nx4608z3 ;
wire \u_uw_uart|i_uarts|nx4608z5 ;
wire \u_uw_uart|i_uarts|nx4608z2 ;
wire \u_uw_uart|i_uarts|nx4608z1 ;
wire \u_uw_uart|i_uarts|TxFSM_0_ ;
wire \u_uw_uart|i_uarts|nx27627z2 ;
wire \u_uw_uart|i_uarts|nx52268z1 ;
wire \u_uw_uart|i_uarts|nx60244z8 ;
wire \u_uw_uart|i_uarts|nx60244z7 ;
wire \u_uw_uart|i_uarts|inc_d_3_ ;
wire \u_uw_uart|i_uarts|nx51271z2~_wirecell_combout ;
wire \rxflex~combout ;
wire \u_uw_uart|rawrx ;
wire \u_uw_uart|rawrx~_wirecell_combout ;
wire \u_uw_uart|i_uarts|nx16538z2 ;
wire \u_uw_uart|i_uarts|nx13547z4 ;
wire \u_uw_uart|i_uarts|nx13547z3 ;
wire \u_uw_uart|i_uarts|RxFSM_1_ ;
wire \u_uw_uart|i_uarts|nx11553z1 ;
wire \u_uw_uart|i_uarts|RxFSM_5_ ;
wire \u_uw_uart|i_uarts|nx16538z1 ;
wire \u_uw_uart|i_uarts|nx51271z2 ;
wire \u_uw_uart|i_uarts|inc_d_8_ ;
wire \u_uw_uart|i_uarts|RxDiv_8_ ;
wire \u_uw_uart|i_uarts|nx51271z5 ;
wire \u_uw_uart|i_uarts|nx51271z7 ;
wire \u_uw_uart|i_uarts|inc_d_2_ ;
wire \u_uw_uart|i_uarts|RxDiv_2_ ;
wire \u_uw_uart|i_uarts|inc_d_0_ ;
wire \u_uw_uart|i_uarts|RxDiv_0_ ;
wire \u_uw_uart|i_uarts|nx51271z8 ;
wire \u_uw_uart|i_uarts|nx51271z4 ;
wire \u_uw_uart|i_uarts|nx51271z1 ;
wire \u_uw_uart|i_uarts|RxDiv_3_ ;
wire \u_uw_uart|i_uarts|nx60244z6 ;
wire \u_uw_uart|i_uarts|nx60244z5 ;
wire \u_uw_uart|i_uarts|inc_d_5_ ;
wire \u_uw_uart|i_uarts|RxDiv_5_ ;
wire \u_uw_uart|i_uarts|nx60244z4 ;
wire \u_uw_uart|i_uarts|nx60244z3 ;
wire \u_uw_uart|i_uarts|inc_d_7_ ;
wire \u_uw_uart|i_uarts|RxDiv_7_ ;
wire \u_uw_uart|i_uarts|nx60244z2 ;
wire \u_uw_uart|i_uarts|nx60244z1 ;
wire \u_uw_uart|i_uarts|inc_d_9_ ;
wire \u_uw_uart|i_uarts|RxDiv_9_ ;
wire \u_uw_uart|i_uarts|nx51271z3 ;
wire \u_uw_uart|i_uarts|nx34394z1 ;
wire \u_uw_uart|i_uarts|TopRx ;
wire \u_uw_uart|i_uarts|nx43465z1 ;
wire \u_uw_uart|i_uarts|RxRDY ;
wire \u_uw_uart|i_uarts|nx15376z1 ;
wire \u_uw_uart|i_uarts|RxErr ;
wire \u_uw_uart|nx22081z15 ;
wire \u_uw_uart|inc_d_1_ ;
wire \u_uw_uart|nx21084z2 ;
wire \u_uw_uart|nx58116z1 ;
wire \u_uw_uart|o_pixavail_dup_0 ;
wire \u_uw_uart|nx21084z1 ;
wire \u_uw_uart|waitcount_1_ ;
wire \u_uw_uart|nx22081z14 ;
wire \u_uw_uart|inc_d_2_ ;
wire \u_uw_uart|waitcount_2_ ;
wire \u_uw_uart|nx22081z13 ;
wire \u_uw_uart|nx22081z12 ;
wire \u_uw_uart|inc_d_4_ ;
wire \u_uw_uart|waitcount_4_ ;
wire \u_uw_uart|nx22081z11 ;
wire \u_uw_uart|nx22081z10 ;
wire \u_uw_uart|nx22081z9 ;
wire \u_uw_uart|inc_d_7_ ;
wire \u_uw_uart|waitcount_7_ ;
wire \u_uw_uart|nx22081z8 ;
wire \u_uw_uart|nx22081z7 ;
wire \u_uw_uart|inc_d_9_ ;
wire \u_uw_uart|waitcount_9_ ;
wire \u_uw_uart|nx22081z6 ;
wire \u_uw_uart|nx22081z5 ;
wire \u_uw_uart|inc_d_11_ ;
wire \u_uw_uart|waitcount_11_ ;
wire \u_uw_uart|inc_d_10_ ;
wire \u_uw_uart|waitcount_10_ ;
wire \u_uw_uart|nx39480z4 ;
wire \u_uw_uart|inc_d_6_ ;
wire \u_uw_uart|waitcount_6_ ;
wire \u_uw_uart|nx39480z5 ;
wire \u_uw_uart|nx22081z4 ;
wire \u_uw_uart|nx22081z3 ;
wire \u_uw_uart|inc_d_13_ ;
wire \u_uw_uart|waitcount_13_ ;
wire \u_uw_uart|nx22081z2 ;
wire \u_uw_uart|inc_d_14_ ;
wire \u_uw_uart|waitcount_14_ ;
wire \u_uw_uart|nx22081z1 ;
wire \u_uw_uart|inc_d_15_ ;
wire \u_uw_uart|waitcount_15_ ;
wire \u_uw_uart|inc_d_12_ ;
wire \u_uw_uart|waitcount_12_ ;
wire \u_uw_uart|nx39480z3 ;
wire \u_uw_uart|nx39480z2 ;
wire \u_uw_uart|nx39480z1 ;
wire \u_uw_uart|ack ;
wire \u_uw_uart|nx46385z3 ;
wire \u_uw_uart|nx46385z2 ;
wire \u_uw_uart|dsend ;
wire \u_uw_uart|nx38650z1 ;
wire \u_uw_uart|state ;
wire \u_uw_uart|nx45847z1 ;
wire \u_uw_uart|sdout_0_ ;
wire \u_uw_uart|sdout_0_~_wirecell_combout ;
wire \u_uw_uart|i_uarts|nx27627z5~feeder_combout ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_2_~feeder_combout ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_4_~feeder_combout ;
wire \u_uw_uart|nx41859z1 ;
wire \u_uw_uart|sdout_4_ ;
wire \u_uw_uart|sdout_4_~_wirecell_combout ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_5_~feeder_combout ;
wire \u_uw_uart|sdout_6_~_wirecell_combout ;
wire \u_uw_uart|nx39865z1 ;
wire \u_uw_uart|sdout_6_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_ ;
wire \u_uw_uart|i_uarts|nx35603z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_8_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_7_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_6_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_5_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_4_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_3_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_2_ ;
wire \u_uw_uart|i_uarts|nx27627z5 ;
wire \u_uw_uart|i_uarts|nx27627z4 ;
wire \u_uw_uart|i_uarts|nx27627z1 ;
wire \u_uw_uart|i_uarts|nx18332z1 ;


// Location: LCFF_X61_Y16_N11
cycloneii_lcell_ff \u_uw_uart|reg_ld_sdout (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx18433z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|ld_sdout ));

// Location: LCCOMB_X57_Y16_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix27627z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx27627z3  = (\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|TxFSM_0_ ) # (!\u_uw_uart|i_uarts|TopTx )))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx27627z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix27627z52925 .lut_mask = 16'hC0F0;
defparam \u_uw_uart|i_uarts|ix27627z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X61_Y16_N10
cycloneii_lcell_comb \u_uw_uart|ix18433z52923 (
// Equation(s):
// \u_uw_uart|nx18433z1  = (!\u_uw_uart|state  & ((\u_uw_uart|ld_sdout ) # (\u_uw_uart|dsend )))

	.dataa(vcc),
	.datab(\u_uw_uart|state ),
	.datac(\u_uw_uart|ld_sdout ),
	.datad(\u_uw_uart|dsend ),
	.cin(gnd),
	.combout(\u_uw_uart|nx18433z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix18433z52923 .lut_mask = 16'h3330;
defparam \u_uw_uart|ix18433z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X60_Y16_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_6__dup_4 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_6__dup_106 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_6_ ));

// Location: LCFF_X60_Y16_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_5__dup_5 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_5__dup_104 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_5_ ));

// Location: LCFF_X60_Y16_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_0__dup_10 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_0__dup_94 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_0_ ));

// Location: LCCOMB_X61_Y16_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z6  = (\u_uw_uart|i_uarts|TxDiv_1_ ) # (\u_uw_uart|i_uarts|TxDiv_0_  $ (\u_uw_uart|i_uarts|RxDivisor_4_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxDiv_0_ ),
	.datac(\u_uw_uart|i_uarts|RxDivisor_4_ ),
	.datad(\u_uw_uart|i_uarts|TxDiv_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52928 .lut_mask = 16'hFF3C;
defparam \u_uw_uart|i_uarts|ix32400z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X62_Y17_N17
cycloneii_lcell_ff \u_uw_uart|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_8_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_8_ ));

// Location: LCFF_X62_Y17_N11
cycloneii_lcell_ff \u_uw_uart|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_5_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_5_ ));

// Location: LCFF_X62_Y17_N7
cycloneii_lcell_ff \u_uw_uart|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_3_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_3_ ));

// Location: LCFF_X61_Y17_N9
cycloneii_lcell_ff \u_uw_uart|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_0_ ));

// Location: LCCOMB_X61_Y17_N2
cycloneii_lcell_comb \u_uw_uart|ix39480z52928 (
// Equation(s):
// \u_uw_uart|nx39480z6  = (!\u_uw_uart|waitcount_1_  & (!\u_uw_uart|waitcount_0_  & (!\u_uw_uart|waitcount_3_  & \u_uw_uart|waitcount_2_ )))

	.dataa(\u_uw_uart|waitcount_1_ ),
	.datab(\u_uw_uart|waitcount_0_ ),
	.datac(\u_uw_uart|waitcount_3_ ),
	.datad(\u_uw_uart|waitcount_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52928 .lut_mask = 16'h0100;
defparam \u_uw_uart|ix39480z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X60_Y16_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix18093z52930 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_5__dup_104  = (\u_uw_uart|i_uarts|TxDiv_5_  & (!\u_uw_uart|i_uarts|nx18093z7 )) # (!\u_uw_uart|i_uarts|TxDiv_5_  & ((\u_uw_uart|i_uarts|nx18093z7 ) # (GND)))
// \u_uw_uart|i_uarts|nx18093z6  = CARRY((!\u_uw_uart|i_uarts|nx18093z7 ) # (!\u_uw_uart|i_uarts|TxDiv_5_ ))

	.dataa(\u_uw_uart|i_uarts|TxDiv_5_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx18093z7 ),
	.combout(\u_uw_uart|i_uarts|inc_d_5__dup_104 ),
	.cout(\u_uw_uart|i_uarts|nx18093z6 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix18093z52930 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|ix18093z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X60_Y16_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix18093z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_6__dup_106  = (\u_uw_uart|i_uarts|TxDiv_6_  & (\u_uw_uart|i_uarts|nx18093z6  $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_6_  & (!\u_uw_uart|i_uarts|nx18093z6  & VCC))
// \u_uw_uart|i_uarts|nx18093z5  = CARRY((\u_uw_uart|i_uarts|TxDiv_6_  & !\u_uw_uart|i_uarts|nx18093z6 ))

	.dataa(\u_uw_uart|i_uarts|TxDiv_6_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx18093z6 ),
	.combout(\u_uw_uart|i_uarts|inc_d_6__dup_106 ),
	.cout(\u_uw_uart|i_uarts|nx18093z5 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix18093z52929 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|ix18093z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X60_Y16_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix17415z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_0__dup_94  = !\u_uw_uart|i_uarts|TxDiv_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TxDiv_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|inc_d_0__dup_94 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix17415z52923 .lut_mask = 16'h0F0F;
defparam \u_uw_uart|i_uarts|ix17415z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X61_Y17_N31
cycloneii_lcell_ff \u_uw_uart|reg_mdata_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx33757z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_0_ ));

// Location: LCCOMB_X62_Y17_N6
cycloneii_lcell_comb \u_uw_uart|ix22081z52936 (
// Equation(s):
// \u_uw_uart|inc_d_3_  = (\u_uw_uart|waitcount_3_  & (!\u_uw_uart|nx22081z13 )) # (!\u_uw_uart|waitcount_3_  & ((\u_uw_uart|nx22081z13 ) # (GND)))
// \u_uw_uart|nx22081z12  = CARRY((!\u_uw_uart|nx22081z13 ) # (!\u_uw_uart|waitcount_3_ ))

	.dataa(\u_uw_uart|waitcount_3_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z13 ),
	.combout(\u_uw_uart|inc_d_3_ ),
	.cout(\u_uw_uart|nx22081z12 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52936 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|ix22081z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X62_Y17_N10
cycloneii_lcell_comb \u_uw_uart|ix22081z52934 (
// Equation(s):
// \u_uw_uart|inc_d_5_  = (\u_uw_uart|waitcount_5_  & (!\u_uw_uart|nx22081z11 )) # (!\u_uw_uart|waitcount_5_  & ((\u_uw_uart|nx22081z11 ) # (GND)))
// \u_uw_uart|nx22081z10  = CARRY((!\u_uw_uart|nx22081z11 ) # (!\u_uw_uart|waitcount_5_ ))

	.dataa(\u_uw_uart|waitcount_5_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z11 ),
	.combout(\u_uw_uart|inc_d_5_ ),
	.cout(\u_uw_uart|nx22081z10 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52934 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|ix22081z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X62_Y17_N16
cycloneii_lcell_comb \u_uw_uart|ix22081z52931 (
// Equation(s):
// \u_uw_uart|inc_d_8_  = (\u_uw_uart|waitcount_8_  & (\u_uw_uart|nx22081z8  $ (GND))) # (!\u_uw_uart|waitcount_8_  & (!\u_uw_uart|nx22081z8  & VCC))
// \u_uw_uart|nx22081z7  = CARRY((\u_uw_uart|waitcount_8_  & !\u_uw_uart|nx22081z8 ))

	.dataa(\u_uw_uart|waitcount_8_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z8 ),
	.combout(\u_uw_uart|inc_d_8_ ),
	.cout(\u_uw_uart|nx22081z7 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52931 .lut_mask = 16'hA50A;
defparam \u_uw_uart|ix22081z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X61_Y17_N8
cycloneii_lcell_comb \u_uw_uart|ix51271z52923 (
// Equation(s):
// \u_uw_uart|inc_d_0_  = !\u_uw_uart|waitcount_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|waitcount_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|inc_d_0_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix51271z52923 .lut_mask = 16'h0F0F;
defparam \u_uw_uart|ix51271z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X61_Y17_N12
cycloneii_lcell_comb \u_uw_uart|ix33757z52924 (
// Equation(s):
// \u_uw_uart|nx33757z2  = (\nrst~combout  & ((\u_uw_uart|o_pixavail_dup_0 ) # (\u_uw_uart|ack )))

	.dataa(\nrst~combout ),
	.datab(vcc),
	.datac(\u_uw_uart|o_pixavail_dup_0 ),
	.datad(\u_uw_uart|ack ),
	.cin(gnd),
	.combout(\u_uw_uart|nx33757z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix33757z52924 .lut_mask = 16'hAAA0;
defparam \u_uw_uart|ix33757z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X61_Y17_N30
cycloneii_lcell_comb \u_uw_uart|ix33757z52923 (
// Equation(s):
// \u_uw_uart|nx33757z1  = (\u_uw_uart|nx46385z2  & (\u_uw_uart|nx33757z2 )) # (!\u_uw_uart|nx46385z2  & ((\u_uw_uart|mdata_0_ )))

	.dataa(\u_uw_uart|nx33757z2 ),
	.datab(vcc),
	.datac(\u_uw_uart|mdata_0_ ),
	.datad(\u_uw_uart|nx46385z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx33757z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix33757z52923 .lut_mask = 16'hAAF0;
defparam \u_uw_uart|ix33757z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X59_Y16_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx12550z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx13547z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_4_ ));

// Location: LCFF_X62_Y16_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_1_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx51271z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_1_ ));

// Location: LCFF_X62_Y16_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_10_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx51271z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_10_ ));

// Location: LCFF_X62_Y16_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_6_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx51271z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_6_ ));

// Location: LCCOMB_X62_Y16_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51271z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51271z6  = (\u_uw_uart|i_uarts|RxDiv_6_  & ((!\u_uw_uart|i_uarts|RxDiv_7_ ) # (!\u_uw_uart|i_uarts|RxDivisor_4_ ))) # (!\u_uw_uart|i_uarts|RxDiv_6_  & ((\u_uw_uart|i_uarts|RxDivisor_4_ ) # (\u_uw_uart|i_uarts|RxDiv_7_ )))

	.dataa(\u_uw_uart|i_uarts|RxDiv_6_ ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxDivisor_4_ ),
	.datad(\u_uw_uart|i_uarts|RxDiv_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51271z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51271z52928 .lut_mask = 16'h5FFA;
defparam \u_uw_uart|i_uarts|ix51271z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X62_Y16_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_4_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx51271z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_4_ ));

// Location: LCFF_X59_Y16_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx14544z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx13547z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_2_ ));

// Location: LCFF_X58_Y16_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx8373z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx11364z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_3_ ));

// Location: LCFF_X58_Y16_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx9370z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx11364z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_2_ ));

// Location: LCFF_X58_Y16_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx10367z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx11364z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_1_ ));

// Location: LCFF_X58_Y16_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx11364z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx11364z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_0_ ));

// Location: LCCOMB_X59_Y16_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix13547z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx13547z2  = (\u_uw_uart|i_uarts|RxBitCnt_3_  & (!\u_uw_uart|i_uarts|RxBitCnt_2_  & (!\u_uw_uart|i_uarts|RxBitCnt_0_  & !\u_uw_uart|i_uarts|RxBitCnt_1_ )))

	.dataa(\u_uw_uart|i_uarts|RxBitCnt_3_ ),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_2_ ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx13547z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix13547z52924 .lut_mask = 16'h0002;
defparam \u_uw_uart|i_uarts|ix13547z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X59_Y16_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix12550z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx12550z1  = (\u_uw_uart|i_uarts|nx13547z2  & \u_uw_uart|i_uarts|RxFSM_2_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|nx13547z2 ),
	.datac(\u_uw_uart|i_uarts|RxFSM_2_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx12550z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix12550z52923 .lut_mask = 16'hC0C0;
defparam \u_uw_uart|i_uarts|ix12550z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X62_Y16_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix52268z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_1_  = (\u_uw_uart|i_uarts|RxDiv_1_  & (!\u_uw_uart|i_uarts|nx52268z1 )) # (!\u_uw_uart|i_uarts|RxDiv_1_  & ((\u_uw_uart|i_uarts|nx52268z1 ) # (GND)))
// \u_uw_uart|i_uarts|nx60244z8  = CARRY((!\u_uw_uart|i_uarts|nx52268z1 ) # (!\u_uw_uart|i_uarts|RxDiv_1_ ))

	.dataa(\u_uw_uart|i_uarts|RxDiv_1_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx52268z1 ),
	.combout(\u_uw_uart|i_uarts|inc_d_1_ ),
	.cout(\u_uw_uart|i_uarts|nx60244z8 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix52268z52923 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|ix52268z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X62_Y16_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix60244z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_4_  = (\u_uw_uart|i_uarts|RxDiv_4_  & (\u_uw_uart|i_uarts|nx60244z6  $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_4_  & (!\u_uw_uart|i_uarts|nx60244z6  & VCC))
// \u_uw_uart|i_uarts|nx60244z5  = CARRY((\u_uw_uart|i_uarts|RxDiv_4_  & !\u_uw_uart|i_uarts|nx60244z6 ))

	.dataa(\u_uw_uart|i_uarts|RxDiv_4_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx60244z6 ),
	.combout(\u_uw_uart|i_uarts|inc_d_4_ ),
	.cout(\u_uw_uart|i_uarts|nx60244z5 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix60244z52928 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|ix60244z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X62_Y16_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix60244z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_6_  = (\u_uw_uart|i_uarts|RxDiv_6_  & (\u_uw_uart|i_uarts|nx60244z4  $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_6_  & (!\u_uw_uart|i_uarts|nx60244z4  & VCC))
// \u_uw_uart|i_uarts|nx60244z3  = CARRY((\u_uw_uart|i_uarts|RxDiv_6_  & !\u_uw_uart|i_uarts|nx60244z4 ))

	.dataa(\u_uw_uart|i_uarts|RxDiv_6_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx60244z4 ),
	.combout(\u_uw_uart|i_uarts|inc_d_6_ ),
	.cout(\u_uw_uart|i_uarts|nx60244z3 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix60244z52926 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|ix60244z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X62_Y16_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix60244z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_9_  = (\u_uw_uart|i_uarts|RxDiv_9_  & (!\u_uw_uart|i_uarts|nx60244z1 )) # (!\u_uw_uart|i_uarts|RxDiv_9_  & ((\u_uw_uart|i_uarts|nx60244z1 ) # (GND)))
// \u_uw_uart|i_uarts|nx17096z1  = CARRY((!\u_uw_uart|i_uarts|nx60244z1 ) # (!\u_uw_uart|i_uarts|RxDiv_9_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxDiv_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx60244z1 ),
	.combout(\u_uw_uart|i_uarts|inc_d_9_ ),
	.cout(\u_uw_uart|i_uarts|nx17096z1 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix60244z52923 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|ix60244z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X62_Y16_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix17096z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_10_  = \u_uw_uart|i_uarts|RxDiv_10_  $ (!\u_uw_uart|i_uarts|nx17096z1 )

	.dataa(\u_uw_uart|i_uarts|RxDiv_10_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx17096z1 ),
	.combout(\u_uw_uart|i_uarts|inc_d_10_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix17096z52923 .lut_mask = 16'hA5A5;
defparam \u_uw_uart|i_uarts|ix17096z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X59_Y16_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx13547z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx13547z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_3_ ));

// Location: LCCOMB_X59_Y16_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix14544z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx14544z1  = (\u_uw_uart|i_uarts|RxFSM_3_ ) # ((\u_uw_uart|i_uarts|RxFSM_1_  & \u_uw_uart|i_uarts|nx16538z2 ))

	.dataa(\u_uw_uart|i_uarts|RxFSM_1_ ),
	.datab(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|nx16538z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx14544z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix14544z52923 .lut_mask = 16'hEECC;
defparam \u_uw_uart|i_uarts|ix14544z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X59_Y16_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix8373z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx8373z2  = (\u_uw_uart|i_uarts|RxBitCnt_0_  & \u_uw_uart|i_uarts|RxBitCnt_1_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx8373z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix8373z52924 .lut_mask = 16'hCC00;
defparam \u_uw_uart|i_uarts|ix8373z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X58_Y16_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix8373z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx8373z1  = (\u_uw_uart|i_uarts|nx51271z2  & (\u_uw_uart|i_uarts|RxBitCnt_3_  $ (((\u_uw_uart|i_uarts|RxBitCnt_2_  & \u_uw_uart|i_uarts|nx8373z2 )))))

	.dataa(\u_uw_uart|i_uarts|RxBitCnt_2_ ),
	.datab(\u_uw_uart|i_uarts|nx8373z2 ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_3_ ),
	.datad(\u_uw_uart|i_uarts|nx51271z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx8373z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix8373z52923 .lut_mask = 16'h7800;
defparam \u_uw_uart|i_uarts|ix8373z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X59_Y16_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix11364z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx11364z2  = (\u_uw_uart|i_uarts|RxFSM_3_  & (\u_uw_uart|i_uarts|TopRx )) # (!\u_uw_uart|i_uarts|RxFSM_3_  & ((!\u_uw_uart|i_uarts|nx51271z2 )))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TopRx ),
	.datac(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.datad(\u_uw_uart|i_uarts|nx51271z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx11364z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix11364z52924 .lut_mask = 16'hC0CF;
defparam \u_uw_uart|i_uarts|ix11364z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X58_Y16_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix9370z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx9370z1  = (\u_uw_uart|i_uarts|nx51271z2  & (\u_uw_uart|i_uarts|RxBitCnt_2_  $ (((\u_uw_uart|i_uarts|RxBitCnt_0_  & \u_uw_uart|i_uarts|RxBitCnt_1_ )))))

	.dataa(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datab(\u_uw_uart|i_uarts|nx51271z2 ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_2_ ),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx9370z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix9370z52923 .lut_mask = 16'h48C0;
defparam \u_uw_uart|i_uarts|ix9370z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X58_Y16_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix10367z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx10367z1  = (\u_uw_uart|i_uarts|nx51271z2  & (\u_uw_uart|i_uarts|RxBitCnt_0_  $ (\u_uw_uart|i_uarts|RxBitCnt_1_ )))

	.dataa(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.datad(\u_uw_uart|i_uarts|nx51271z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx10367z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix10367z52923 .lut_mask = 16'h5A00;
defparam \u_uw_uart|i_uarts|ix10367z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X58_Y16_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix11364z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx11364z1  = (!\u_uw_uart|i_uarts|RxBitCnt_0_  & \u_uw_uart|i_uarts|nx51271z2 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|nx51271z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx11364z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix11364z52923 .lut_mask = 16'h0F00;
defparam \u_uw_uart|i_uarts|ix11364z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X59_Y16_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix13547z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx13547z1  = (!\u_uw_uart|i_uarts|nx13547z2  & \u_uw_uart|i_uarts|RxFSM_2_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|nx13547z2 ),
	.datac(\u_uw_uart|i_uarts|RxFSM_2_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx13547z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix13547z52923 .lut_mask = 16'h3030;
defparam \u_uw_uart|i_uarts|ix13547z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X61_Y17_N7
cycloneii_lcell_ff \u_uw_uart|reg_mdata_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx39739z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_7_ ));

// Location: LCCOMB_X61_Y17_N6
cycloneii_lcell_comb \u_uw_uart|ix39739z52923 (
// Equation(s):
// \u_uw_uart|nx39739z1  = (\u_uw_uart|nx46385z2  & (\nrst~combout )) # (!\u_uw_uart|nx46385z2  & ((\u_uw_uart|mdata_7_ )))

	.dataa(\nrst~combout ),
	.datab(vcc),
	.datac(\u_uw_uart|mdata_7_ ),
	.datad(\u_uw_uart|nx46385z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39739z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39739z52923 .lut_mask = 16'hAAF0;
defparam \u_uw_uart|ix39739z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \clk~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\clk~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(clk));
// synopsys translate_off
defparam \clk~I .input_async_reset = "none";
defparam \clk~I .input_power_up = "low";
defparam \clk~I .input_register_mode = "none";
defparam \clk~I .input_sync_reset = "none";
defparam \clk~I .oe_async_reset = "none";
defparam \clk~I .oe_power_up = "low";
defparam \clk~I .oe_register_mode = "none";
defparam \clk~I .oe_sync_reset = "none";
defparam \clk~I .operation_mode = "input";
defparam \clk~I .output_async_reset = "none";
defparam \clk~I .output_power_up = "low";
defparam \clk~I .output_register_mode = "none";
defparam \clk~I .output_sync_reset = "none";
// synopsys translate_on

// Location: CLKCTRL_G2
cycloneii_clkctrl \clk~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,\clk~combout }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\clk~clkctrl_outclk ));
// synopsys translate_off
defparam \clk~clkctrl .clock_type = "global clock";
defparam \clk~clkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X60_Y16_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix18093z52935 (
// Equation(s):
// \u_uw_uart|i_uarts|nx18093z11  = CARRY(\u_uw_uart|i_uarts|TxDiv_0_ )

	.dataa(\u_uw_uart|i_uarts|TxDiv_0_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_uw_uart|i_uarts|nx18093z11 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix18093z52935 .lut_mask = 16'h00AA;
defparam \u_uw_uart|i_uarts|ix18093z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X60_Y16_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix18093z52934 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_1__dup_96  = (\u_uw_uart|i_uarts|TxDiv_1_  & (!\u_uw_uart|i_uarts|nx18093z11 )) # (!\u_uw_uart|i_uarts|TxDiv_1_  & ((\u_uw_uart|i_uarts|nx18093z11 ) # (GND)))
// \u_uw_uart|i_uarts|nx18093z10  = CARRY((!\u_uw_uart|i_uarts|nx18093z11 ) # (!\u_uw_uart|i_uarts|TxDiv_1_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxDiv_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx18093z11 ),
	.combout(\u_uw_uart|i_uarts|inc_d_1__dup_96 ),
	.cout(\u_uw_uart|i_uarts|nx18093z10 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix18093z52934 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|ix18093z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \nrst~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\nrst~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(nrst));
// synopsys translate_off
defparam \nrst~I .input_async_reset = "none";
defparam \nrst~I .input_power_up = "low";
defparam \nrst~I .input_register_mode = "none";
defparam \nrst~I .input_sync_reset = "none";
defparam \nrst~I .oe_async_reset = "none";
defparam \nrst~I .oe_power_up = "low";
defparam \nrst~I .oe_register_mode = "none";
defparam \nrst~I .oe_sync_reset = "none";
defparam \nrst~I .operation_mode = "input";
defparam \nrst~I .output_async_reset = "none";
defparam \nrst~I .output_power_up = "low";
defparam \nrst~I .output_register_mode = "none";
defparam \nrst~I .output_sync_reset = "none";
// synopsys translate_on

// Location: LCFF_X60_Y16_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_1__dup_9 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_1__dup_96 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_1_ ));

// Location: LCCOMB_X60_Y16_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix18093z52933 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_2__dup_98  = (\u_uw_uart|i_uarts|TxDiv_2_  & (\u_uw_uart|i_uarts|nx18093z10  $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_2_  & (!\u_uw_uart|i_uarts|nx18093z10  & VCC))
// \u_uw_uart|i_uarts|nx18093z9  = CARRY((\u_uw_uart|i_uarts|TxDiv_2_  & !\u_uw_uart|i_uarts|nx18093z10 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxDiv_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx18093z10 ),
	.combout(\u_uw_uart|i_uarts|inc_d_2__dup_98 ),
	.cout(\u_uw_uart|i_uarts|nx18093z9 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix18093z52933 .lut_mask = 16'hC30C;
defparam \u_uw_uart|i_uarts|ix18093z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X60_Y16_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_2__dup_8 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_2__dup_98 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_2_ ));

// Location: LCCOMB_X60_Y16_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix18093z52932 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_3__dup_100  = (\u_uw_uart|i_uarts|TxDiv_3_  & (!\u_uw_uart|i_uarts|nx18093z9 )) # (!\u_uw_uart|i_uarts|TxDiv_3_  & ((\u_uw_uart|i_uarts|nx18093z9 ) # (GND)))
// \u_uw_uart|i_uarts|nx18093z8  = CARRY((!\u_uw_uart|i_uarts|nx18093z9 ) # (!\u_uw_uart|i_uarts|TxDiv_3_ ))

	.dataa(\u_uw_uart|i_uarts|TxDiv_3_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx18093z9 ),
	.combout(\u_uw_uart|i_uarts|inc_d_3__dup_100 ),
	.cout(\u_uw_uart|i_uarts|nx18093z8 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix18093z52932 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|ix18093z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X60_Y16_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_3__dup_7 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_3__dup_100 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_3_ ));

// Location: LCCOMB_X60_Y16_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix18093z52931 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_4__dup_102  = (\u_uw_uart|i_uarts|TxDiv_4_  & (\u_uw_uart|i_uarts|nx18093z8  $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_4_  & (!\u_uw_uart|i_uarts|nx18093z8  & VCC))
// \u_uw_uart|i_uarts|nx18093z7  = CARRY((\u_uw_uart|i_uarts|TxDiv_4_  & !\u_uw_uart|i_uarts|nx18093z8 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxDiv_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx18093z8 ),
	.combout(\u_uw_uart|i_uarts|inc_d_4__dup_102 ),
	.cout(\u_uw_uart|i_uarts|nx18093z7 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix18093z52931 .lut_mask = 16'hC30C;
defparam \u_uw_uart|i_uarts|ix18093z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X60_Y16_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_4__dup_6 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_4__dup_102 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_4_ ));

// Location: LCCOMB_X61_Y16_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z5  = (\u_uw_uart|i_uarts|TxDiv_3_ ) # (\u_uw_uart|i_uarts|RxDivisor_4_  $ (\u_uw_uart|i_uarts|TxDiv_4_ ))

	.dataa(\u_uw_uart|i_uarts|RxDivisor_4_ ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TxDiv_3_ ),
	.datad(\u_uw_uart|i_uarts|TxDiv_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52927 .lut_mask = 16'hF5FA;
defparam \u_uw_uart|i_uarts|ix32400z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X61_Y16_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|RxDivisor_4_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout  = VCC

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|RxDivisor_4_~feeder .lut_mask = 16'hFFFF;
defparam \u_uw_uart|i_uarts|RxDivisor_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X61_Y16_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxDivisor_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDivisor_4_ ));

// Location: LCCOMB_X60_Y16_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix18093z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_7__dup_108  = (\u_uw_uart|i_uarts|TxDiv_7_  & (!\u_uw_uart|i_uarts|nx18093z5 )) # (!\u_uw_uart|i_uarts|TxDiv_7_  & ((\u_uw_uart|i_uarts|nx18093z5 ) # (GND)))
// \u_uw_uart|i_uarts|nx18093z4  = CARRY((!\u_uw_uart|i_uarts|nx18093z5 ) # (!\u_uw_uart|i_uarts|TxDiv_7_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxDiv_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx18093z5 ),
	.combout(\u_uw_uart|i_uarts|inc_d_7__dup_108 ),
	.cout(\u_uw_uart|i_uarts|nx18093z4 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix18093z52928 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|ix18093z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X60_Y16_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_7__dup_3 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_7__dup_108 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_7_ ));

// Location: LCCOMB_X60_Y16_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix18093z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_8__dup_110  = (\u_uw_uart|i_uarts|TxDiv_8_  & (\u_uw_uart|i_uarts|nx18093z4  $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_8_  & (!\u_uw_uart|i_uarts|nx18093z4  & VCC))
// \u_uw_uart|i_uarts|nx18093z3  = CARRY((\u_uw_uart|i_uarts|TxDiv_8_  & !\u_uw_uart|i_uarts|nx18093z4 ))

	.dataa(\u_uw_uart|i_uarts|TxDiv_8_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx18093z4 ),
	.combout(\u_uw_uart|i_uarts|inc_d_8__dup_110 ),
	.cout(\u_uw_uart|i_uarts|nx18093z3 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix18093z52927 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|ix18093z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X60_Y16_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_8__dup_2 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_8__dup_110 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_8_ ));

// Location: LCCOMB_X60_Y16_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix18093z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_9__dup_112  = (\u_uw_uart|i_uarts|TxDiv_9_  & (!\u_uw_uart|i_uarts|nx18093z3 )) # (!\u_uw_uart|i_uarts|TxDiv_9_  & ((\u_uw_uart|i_uarts|nx18093z3 ) # (GND)))
// \u_uw_uart|i_uarts|nx18093z2  = CARRY((!\u_uw_uart|i_uarts|nx18093z3 ) # (!\u_uw_uart|i_uarts|TxDiv_9_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxDiv_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx18093z3 ),
	.combout(\u_uw_uart|i_uarts|inc_d_9__dup_112 ),
	.cout(\u_uw_uart|i_uarts|nx18093z2 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix18093z52926 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|ix18093z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X60_Y16_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_9__dup_1 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_9__dup_112 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_9_ ));

// Location: LCCOMB_X61_Y16_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z4  = (\u_uw_uart|i_uarts|TxDiv_9_ ) # (\u_uw_uart|i_uarts|TxDiv_8_  $ (\u_uw_uart|i_uarts|RxDivisor_4_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxDiv_8_ ),
	.datac(\u_uw_uart|i_uarts|RxDivisor_4_ ),
	.datad(\u_uw_uart|i_uarts|TxDiv_9_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52926 .lut_mask = 16'hFF3C;
defparam \u_uw_uart|i_uarts|ix32400z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X61_Y16_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z3  = (\u_uw_uart|i_uarts|nx32400z4 ) # ((\u_uw_uart|i_uarts|TxDiv_5_  & ((!\u_uw_uart|i_uarts|TxDiv_7_ ) # (!\u_uw_uart|i_uarts|RxDivisor_4_ ))) # (!\u_uw_uart|i_uarts|TxDiv_5_  & ((\u_uw_uart|i_uarts|RxDivisor_4_ ) # 
// (\u_uw_uart|i_uarts|TxDiv_7_ ))))

	.dataa(\u_uw_uart|i_uarts|TxDiv_5_ ),
	.datab(\u_uw_uart|i_uarts|RxDivisor_4_ ),
	.datac(\u_uw_uart|i_uarts|nx32400z4 ),
	.datad(\u_uw_uart|i_uarts|TxDiv_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52925 .lut_mask = 16'hF7FE;
defparam \u_uw_uart|i_uarts|ix32400z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X60_Y16_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix18093z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_10__dup_113  = (\u_uw_uart|i_uarts|TxDiv_10_  & (\u_uw_uart|i_uarts|nx18093z2  $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_10_  & (!\u_uw_uart|i_uarts|nx18093z2  & VCC))
// \u_uw_uart|i_uarts|nx18093z1  = CARRY((\u_uw_uart|i_uarts|TxDiv_10_  & !\u_uw_uart|i_uarts|nx18093z2 ))

	.dataa(\u_uw_uart|i_uarts|TxDiv_10_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx18093z2 ),
	.combout(\u_uw_uart|i_uarts|inc_d_10__dup_113 ),
	.cout(\u_uw_uart|i_uarts|nx18093z1 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix18093z52925 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|ix18093z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X60_Y16_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_10__dup_0 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_10__dup_113 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_10_ ));

// Location: LCCOMB_X60_Y16_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix18093z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_11_  = \u_uw_uart|i_uarts|nx18093z1  $ (\u_uw_uart|i_uarts|TxDiv_11_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|TxDiv_11_ ),
	.cin(\u_uw_uart|i_uarts|nx18093z1 ),
	.combout(\u_uw_uart|i_uarts|inc_d_11_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix18093z52923 .lut_mask = 16'h0FF0;
defparam \u_uw_uart|i_uarts|ix18093z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X60_Y16_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_11_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_11_ ));

// Location: LCCOMB_X61_Y16_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z2  = (!\u_uw_uart|i_uarts|TxDiv_6_  & (!\u_uw_uart|i_uarts|TxDiv_2_  & (!\u_uw_uart|i_uarts|TxDiv_10_  & !\u_uw_uart|i_uarts|TxDiv_11_ )))

	.dataa(\u_uw_uart|i_uarts|TxDiv_6_ ),
	.datab(\u_uw_uart|i_uarts|TxDiv_2_ ),
	.datac(\u_uw_uart|i_uarts|TxDiv_10_ ),
	.datad(\u_uw_uart|i_uarts|TxDiv_11_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52924 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix32400z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X61_Y16_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z1  = (!\u_uw_uart|i_uarts|nx32400z6  & (!\u_uw_uart|i_uarts|nx32400z5  & (!\u_uw_uart|i_uarts|nx32400z3  & \u_uw_uart|i_uarts|nx32400z2 )))

	.dataa(\u_uw_uart|i_uarts|nx32400z6 ),
	.datab(\u_uw_uart|i_uarts|nx32400z5 ),
	.datac(\u_uw_uart|i_uarts|nx32400z3 ),
	.datad(\u_uw_uart|i_uarts|nx32400z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52923 .lut_mask = 16'h0100;
defparam \u_uw_uart|i_uarts|ix32400z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X61_Y16_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TopTx (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx32400z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TopTx ));

// Location: LCCOMB_X57_Y16_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix48926z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx48926z1  = ((!\u_uw_uart|i_uarts|TxFSM_1_  & \u_uw_uart|i_uarts|TopTx )) # (!\u_uw_uart|i_uarts|TxBitCnt_0_ )

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx48926z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix48926z52923 .lut_mask = 16'h5F0F;
defparam \u_uw_uart|i_uarts|ix48926z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X57_Y16_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix5605z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx5605z1  = \u_uw_uart|i_uarts|TxFSM_1_  $ (((\u_uw_uart|i_uarts|TxFSM_0_  & !\u_uw_uart|i_uarts|nx4608z2 )))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|nx4608z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx5605z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix5605z52923 .lut_mask = 16'hF03C;
defparam \u_uw_uart|i_uarts|ix5605z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X57_Y16_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TxFSM_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx5605z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxFSM_1_ ));

// Location: LCCOMB_X57_Y16_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix48926z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx48926z2  = (\u_uw_uart|i_uarts|TopTx  & (\u_uw_uart|i_uarts|TxFSM_0_  $ (\u_uw_uart|i_uarts|TxFSM_1_ )))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx48926z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix48926z52924 .lut_mask = 16'h3C00;
defparam \u_uw_uart|i_uarts|ix48926z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X57_Y16_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx48926z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx48926z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_0_ ));

// Location: LCCOMB_X57_Y16_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix49923z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx49923z1  = (\u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|TxBitCnt_0_  $ ((!\u_uw_uart|i_uarts|TxBitCnt_1_ )))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & (!\u_uw_uart|i_uarts|TopTx  & (\u_uw_uart|i_uarts|TxBitCnt_0_  $ 
// (!\u_uw_uart|i_uarts|TxBitCnt_1_ ))))

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.datad(\u_uw_uart|i_uarts|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx49923z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix49923z52923 .lut_mask = 16'h82C3;
defparam \u_uw_uart|i_uarts|ix49923z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X57_Y16_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx49923z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx48926z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_1_ ));

// Location: LCCOMB_X57_Y16_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix50920z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx50920z2  = (!\u_uw_uart|i_uarts|TxFSM_1_  & \u_uw_uart|i_uarts|TopTx )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx50920z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix50920z52924 .lut_mask = 16'h0F00;
defparam \u_uw_uart|i_uarts|ix50920z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X57_Y16_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z2  = (\u_uw_uart|i_uarts|TxBitCnt_0_ ) # (\u_uw_uart|i_uarts|TxBitCnt_1_ )

	.dataa(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52924 .lut_mask = 16'hFAFA;
defparam \u_uw_uart|i_uarts|ix51917z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X57_Y16_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z1  = (\u_uw_uart|i_uarts|nx50920z2 ) # (\u_uw_uart|i_uarts|TxBitCnt_3_  $ (((!\u_uw_uart|i_uarts|TxBitCnt_2_  & !\u_uw_uart|i_uarts|nx51917z2 ))))

	.dataa(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.datab(\u_uw_uart|i_uarts|nx50920z2 ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_3_ ),
	.datad(\u_uw_uart|i_uarts|nx51917z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52923 .lut_mask = 16'hFCED;
defparam \u_uw_uart|i_uarts|ix51917z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X57_Y16_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx51917z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx48926z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_3_ ));

// Location: LCCOMB_X57_Y16_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix50920z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx50920z1  = (!\u_uw_uart|i_uarts|nx50920z2  & (\u_uw_uart|i_uarts|TxBitCnt_2_  $ (((!\u_uw_uart|i_uarts|TxBitCnt_0_  & !\u_uw_uart|i_uarts|TxBitCnt_1_ )))))

	.dataa(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.datad(\u_uw_uart|i_uarts|nx50920z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx50920z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix50920z52923 .lut_mask = 16'h00E1;
defparam \u_uw_uart|i_uarts|ix50920z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X57_Y16_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx50920z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx48926z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_2_ ));

// Location: LCCOMB_X57_Y16_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z4  = (!\u_uw_uart|i_uarts|TxBitCnt_3_  & !\u_uw_uart|i_uarts|TxBitCnt_2_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_3_ ),
	.datad(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52926 .lut_mask = 16'h000F;
defparam \u_uw_uart|i_uarts|ix4608z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X57_Y16_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z3  = ((\u_uw_uart|i_uarts|TxBitCnt_1_ ) # ((!\u_uw_uart|i_uarts|TopTx ) # (!\u_uw_uart|i_uarts|nx4608z4 ))) # (!\u_uw_uart|i_uarts|TxBitCnt_0_ )

	.dataa(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.datac(\u_uw_uart|i_uarts|nx4608z4 ),
	.datad(\u_uw_uart|i_uarts|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52925 .lut_mask = 16'hDFFF;
defparam \u_uw_uart|i_uarts|ix4608z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X57_Y16_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z5  = (\u_uw_uart|i_uarts|TxFSM_0_  & (((\u_uw_uart|i_uarts|TxFSM_1_ ) # (!\u_uw_uart|i_uarts|TopTx )))) # (!\u_uw_uart|i_uarts|TxFSM_0_  & (!\u_uw_uart|ld_sdout  & (!\u_uw_uart|i_uarts|TxFSM_1_ )))

	.dataa(\u_uw_uart|ld_sdout ),
	.datab(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52927 .lut_mask = 16'hC1CD;
defparam \u_uw_uart|i_uarts|ix4608z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X57_Y16_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z2  = (\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|nx4608z5  & (!\u_uw_uart|i_uarts|TopTx )) # (!\u_uw_uart|i_uarts|nx4608z5  & ((\u_uw_uart|i_uarts|nx4608z3 ))))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & 
// (((\u_uw_uart|i_uarts|nx4608z5 ))))

	.dataa(\u_uw_uart|i_uarts|TopTx ),
	.datab(\u_uw_uart|i_uarts|nx4608z3 ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|nx4608z5 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52924 .lut_mask = 16'h5FC0;
defparam \u_uw_uart|i_uarts|ix4608z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X57_Y16_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z1  = \u_uw_uart|i_uarts|TxFSM_0_  $ (!\u_uw_uart|i_uarts|nx4608z2 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart|i_uarts|nx4608z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52923 .lut_mask = 16'hF00F;
defparam \u_uw_uart|i_uarts|ix4608z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X57_Y16_N27
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TxFSM_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx4608z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxFSM_0_ ));

// Location: LCCOMB_X57_Y16_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix27627z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx27627z2  = (!\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|TxFSM_0_  & ((!\u_uw_uart|i_uarts|TopTx ))) # (!\u_uw_uart|i_uarts|TxFSM_0_  & (!\u_uw_uart|ld_sdout ))))

	.dataa(\u_uw_uart|ld_sdout ),
	.datab(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx27627z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix27627z52924 .lut_mask = 16'h010D;
defparam \u_uw_uart|i_uarts|ix27627z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X62_Y16_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix52268z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx52268z1  = CARRY(\u_uw_uart|i_uarts|RxDiv_0_ )

	.dataa(\u_uw_uart|i_uarts|RxDiv_0_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_uw_uart|i_uarts|nx52268z1 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix52268z52924 .lut_mask = 16'h00AA;
defparam \u_uw_uart|i_uarts|ix52268z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X62_Y16_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix60244z52930 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_2_  = (\u_uw_uart|i_uarts|RxDiv_2_  & (\u_uw_uart|i_uarts|nx60244z8  $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_2_  & (!\u_uw_uart|i_uarts|nx60244z8  & VCC))
// \u_uw_uart|i_uarts|nx60244z7  = CARRY((\u_uw_uart|i_uarts|RxDiv_2_  & !\u_uw_uart|i_uarts|nx60244z8 ))

	.dataa(\u_uw_uart|i_uarts|RxDiv_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx60244z8 ),
	.combout(\u_uw_uart|i_uarts|inc_d_2_ ),
	.cout(\u_uw_uart|i_uarts|nx60244z7 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix60244z52930 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|ix60244z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X62_Y16_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix60244z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_3_  = (\u_uw_uart|i_uarts|RxDiv_3_  & (!\u_uw_uart|i_uarts|nx60244z7 )) # (!\u_uw_uart|i_uarts|RxDiv_3_  & ((\u_uw_uart|i_uarts|nx60244z7 ) # (GND)))
// \u_uw_uart|i_uarts|nx60244z6  = CARRY((!\u_uw_uart|i_uarts|nx60244z7 ) # (!\u_uw_uart|i_uarts|RxDiv_3_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxDiv_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx60244z7 ),
	.combout(\u_uw_uart|i_uarts|inc_d_3_ ),
	.cout(\u_uw_uart|i_uarts|nx60244z6 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix60244z52929 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|ix60244z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X59_Y16_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|nx51271z2~_wirecell (
// Equation(s):
// \u_uw_uart|i_uarts|nx51271z2~_wirecell_combout  = !\u_uw_uart|i_uarts|nx51271z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|nx51271z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51271z2~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|nx51271z2~_wirecell .lut_mask = 16'h00FF;
defparam \u_uw_uart|i_uarts|nx51271z2~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \rxflex~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\rxflex~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(rxflex));
// synopsys translate_off
defparam \rxflex~I .input_async_reset = "none";
defparam \rxflex~I .input_power_up = "low";
defparam \rxflex~I .input_register_mode = "none";
defparam \rxflex~I .input_sync_reset = "none";
defparam \rxflex~I .oe_async_reset = "none";
defparam \rxflex~I .oe_power_up = "low";
defparam \rxflex~I .oe_register_mode = "none";
defparam \rxflex~I .oe_sync_reset = "none";
defparam \rxflex~I .operation_mode = "input";
defparam \rxflex~I .output_async_reset = "none";
defparam \rxflex~I .output_power_up = "low";
defparam \rxflex~I .output_register_mode = "none";
defparam \rxflex~I .output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X59_Y16_N24
cycloneii_lcell_comb \u_uw_uart|ix15671z52923 (
// Equation(s):
// \u_uw_uart|rawrx  = (\nrst~combout  & \rxflex~combout )

	.dataa(vcc),
	.datab(vcc),
	.datac(\nrst~combout ),
	.datad(\rxflex~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|rawrx ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix15671z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix15671z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X59_Y16_N2
cycloneii_lcell_comb \u_uw_uart|rawrx~_wirecell (
// Equation(s):
// \u_uw_uart|rawrx~_wirecell_combout  = !\u_uw_uart|rawrx 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rawrx ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|rawrx~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rawrx~_wirecell .lut_mask = 16'h0F0F;
defparam \u_uw_uart|rawrx~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X59_Y16_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_r (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rawrx~_wirecell_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx16538z2 ));

// Location: LCCOMB_X59_Y16_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix13547z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx13547z4  = (\u_uw_uart|i_uarts|RxFSM_5_  & (!\u_uw_uart|rawrx )) # (!\u_uw_uart|i_uarts|RxFSM_5_  & (((!\u_uw_uart|i_uarts|TopRx  & \u_uw_uart|i_uarts|nx51271z2 ))))

	.dataa(\u_uw_uart|rawrx ),
	.datab(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.datac(\u_uw_uart|i_uarts|TopRx ),
	.datad(\u_uw_uart|i_uarts|nx51271z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx13547z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix13547z52926 .lut_mask = 16'h4744;
defparam \u_uw_uart|i_uarts|ix13547z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X59_Y16_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix13547z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx13547z3  = (!\u_uw_uart|i_uarts|nx13547z4  & ((\u_uw_uart|i_uarts|nx51271z2 ) # (\u_uw_uart|i_uarts|nx16538z2 )))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|nx51271z2 ),
	.datac(\u_uw_uart|i_uarts|nx16538z2 ),
	.datad(\u_uw_uart|i_uarts|nx13547z4 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx13547z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix13547z52925 .lut_mask = 16'h00FC;
defparam \u_uw_uart|i_uarts|ix13547z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X59_Y16_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx51271z2~_wirecell_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx13547z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_1_ ));

// Location: LCCOMB_X60_Y16_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix11553z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx11553z1  = (\u_uw_uart|i_uarts|nx16538z2  & (\u_uw_uart|i_uarts|RxFSM_4_ )) # (!\u_uw_uart|i_uarts|nx16538z2  & ((\u_uw_uart|i_uarts|RxFSM_1_ )))

	.dataa(\u_uw_uart|i_uarts|RxFSM_4_ ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|nx16538z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx11553z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix11553z52923 .lut_mask = 16'hAAF0;
defparam \u_uw_uart|i_uarts|ix11553z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X60_Y16_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx11553z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx13547z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_5_ ));

// Location: LCCOMB_X60_Y16_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix16538z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx16538z1  = (!\u_uw_uart|i_uarts|RxFSM_5_  & ((\u_uw_uart|i_uarts|nx16538z2 ) # (!\u_uw_uart|i_uarts|RxFSM_4_ )))

	.dataa(\u_uw_uart|i_uarts|RxFSM_4_ ),
	.datab(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|nx16538z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx16538z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix16538z52923 .lut_mask = 16'h3311;
defparam \u_uw_uart|i_uarts|ix16538z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X60_Y16_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx16538z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx13547z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx51271z2 ));

// Location: LCCOMB_X62_Y16_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix60244z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_8_  = (\u_uw_uart|i_uarts|RxDiv_8_  & (\u_uw_uart|i_uarts|nx60244z2  $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_8_  & (!\u_uw_uart|i_uarts|nx60244z2  & VCC))
// \u_uw_uart|i_uarts|nx60244z1  = CARRY((\u_uw_uart|i_uarts|RxDiv_8_  & !\u_uw_uart|i_uarts|nx60244z2 ))

	.dataa(\u_uw_uart|i_uarts|RxDiv_8_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx60244z2 ),
	.combout(\u_uw_uart|i_uarts|inc_d_8_ ),
	.cout(\u_uw_uart|i_uarts|nx60244z1 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix60244z52924 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|ix60244z52924 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X62_Y16_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_8_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx51271z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_8_ ));

// Location: LCCOMB_X62_Y16_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51271z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51271z5  = (\u_uw_uart|i_uarts|RxDiv_10_ ) # (\u_uw_uart|i_uarts|RxDiv_8_ )

	.dataa(\u_uw_uart|i_uarts|RxDiv_10_ ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxDiv_8_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51271z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51271z52927 .lut_mask = 16'hFAFA;
defparam \u_uw_uart|i_uarts|ix51271z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X62_Y16_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51271z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51271z7  = (\u_uw_uart|i_uarts|RxDiv_4_  & ((!\u_uw_uart|i_uarts|RxDiv_3_ ) # (!\u_uw_uart|i_uarts|RxDivisor_4_ ))) # (!\u_uw_uart|i_uarts|RxDiv_4_  & ((\u_uw_uart|i_uarts|RxDivisor_4_ ) # (\u_uw_uart|i_uarts|RxDiv_3_ )))

	.dataa(\u_uw_uart|i_uarts|RxDiv_4_ ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxDivisor_4_ ),
	.datad(\u_uw_uart|i_uarts|RxDiv_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51271z7 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51271z52929 .lut_mask = 16'h5FFA;
defparam \u_uw_uart|i_uarts|ix51271z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X62_Y16_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_2_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx51271z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_2_ ));

// Location: LCCOMB_X61_Y16_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51271z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_0_  = !\u_uw_uart|i_uarts|RxDiv_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxDiv_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|inc_d_0_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51271z52923 .lut_mask = 16'h0F0F;
defparam \u_uw_uart|i_uarts|ix51271z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X61_Y16_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_0_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx51271z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_0_ ));

// Location: LCCOMB_X61_Y16_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51271z52930 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51271z8  = (\u_uw_uart|i_uarts|RxDiv_2_ ) # (\u_uw_uart|i_uarts|RxDiv_0_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxDiv_2_ ),
	.datad(\u_uw_uart|i_uarts|RxDiv_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51271z8 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51271z52930 .lut_mask = 16'hFFF0;
defparam \u_uw_uart|i_uarts|ix51271z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X62_Y16_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51271z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51271z4  = (\u_uw_uart|i_uarts|nx51271z6 ) # ((\u_uw_uart|i_uarts|nx51271z5 ) # ((\u_uw_uart|i_uarts|nx51271z7 ) # (\u_uw_uart|i_uarts|nx51271z8 )))

	.dataa(\u_uw_uart|i_uarts|nx51271z6 ),
	.datab(\u_uw_uart|i_uarts|nx51271z5 ),
	.datac(\u_uw_uart|i_uarts|nx51271z7 ),
	.datad(\u_uw_uart|i_uarts|nx51271z8 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51271z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51271z52926 .lut_mask = 16'hFFFE;
defparam \u_uw_uart|i_uarts|ix51271z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X62_Y16_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51271z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51271z1  = ((!\u_uw_uart|i_uarts|RxDiv_1_  & (\u_uw_uart|i_uarts|nx51271z3  & !\u_uw_uart|i_uarts|nx51271z4 ))) # (!\u_uw_uart|i_uarts|nx51271z2 )

	.dataa(\u_uw_uart|i_uarts|RxDiv_1_ ),
	.datab(\u_uw_uart|i_uarts|nx51271z2 ),
	.datac(\u_uw_uart|i_uarts|nx51271z3 ),
	.datad(\u_uw_uart|i_uarts|nx51271z4 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51271z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51271z52924 .lut_mask = 16'h3373;
defparam \u_uw_uart|i_uarts|ix51271z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X62_Y16_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_3_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx51271z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_3_ ));

// Location: LCCOMB_X62_Y16_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix60244z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_5_  = (\u_uw_uart|i_uarts|RxDiv_5_  & (!\u_uw_uart|i_uarts|nx60244z5 )) # (!\u_uw_uart|i_uarts|RxDiv_5_  & ((\u_uw_uart|i_uarts|nx60244z5 ) # (GND)))
// \u_uw_uart|i_uarts|nx60244z4  = CARRY((!\u_uw_uart|i_uarts|nx60244z5 ) # (!\u_uw_uart|i_uarts|RxDiv_5_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxDiv_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx60244z5 ),
	.combout(\u_uw_uart|i_uarts|inc_d_5_ ),
	.cout(\u_uw_uart|i_uarts|nx60244z4 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix60244z52927 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|ix60244z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X62_Y16_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_5_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx51271z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_5_ ));

// Location: LCCOMB_X62_Y16_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix60244z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_7_  = (\u_uw_uart|i_uarts|RxDiv_7_  & (!\u_uw_uart|i_uarts|nx60244z3 )) # (!\u_uw_uart|i_uarts|RxDiv_7_  & ((\u_uw_uart|i_uarts|nx60244z3 ) # (GND)))
// \u_uw_uart|i_uarts|nx60244z2  = CARRY((!\u_uw_uart|i_uarts|nx60244z3 ) # (!\u_uw_uart|i_uarts|RxDiv_7_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxDiv_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx60244z3 ),
	.combout(\u_uw_uart|i_uarts|inc_d_7_ ),
	.cout(\u_uw_uart|i_uarts|nx60244z2 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix60244z52925 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|ix60244z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X62_Y16_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_7_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx51271z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_7_ ));

// Location: LCFF_X62_Y16_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_9_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx51271z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_9_ ));

// Location: LCCOMB_X59_Y16_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51271z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51271z3  = (!\u_uw_uart|i_uarts|RxDiv_9_  & !\u_uw_uart|i_uarts|RxDiv_5_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxDiv_9_ ),
	.datad(\u_uw_uart|i_uarts|RxDiv_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51271z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51271z52925 .lut_mask = 16'h000F;
defparam \u_uw_uart|i_uarts|ix51271z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X59_Y16_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z1  = (!\u_uw_uart|i_uarts|RxDiv_1_  & (\u_uw_uart|i_uarts|nx51271z3  & (!\u_uw_uart|i_uarts|nx51271z4  & \u_uw_uart|i_uarts|nx51271z2 )))

	.dataa(\u_uw_uart|i_uarts|RxDiv_1_ ),
	.datab(\u_uw_uart|i_uarts|nx51271z3 ),
	.datac(\u_uw_uart|i_uarts|nx51271z4 ),
	.datad(\u_uw_uart|i_uarts|nx51271z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52923 .lut_mask = 16'h0400;
defparam \u_uw_uart|i_uarts|ix34394z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X59_Y16_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TopRx (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx34394z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TopRx ));

// Location: LCCOMB_X60_Y16_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix43465z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx43465z1  = (\u_uw_uart|i_uarts|RxFSM_4_  & (\u_uw_uart|i_uarts|TopRx  & !\u_uw_uart|i_uarts|nx16538z2 ))

	.dataa(\u_uw_uart|i_uarts|RxFSM_4_ ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TopRx ),
	.datad(\u_uw_uart|i_uarts|nx16538z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx43465z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix43465z52923 .lut_mask = 16'h00A0;
defparam \u_uw_uart|i_uarts|ix43465z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X60_Y16_N27
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxRDYi (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx43465z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxRDY ));

// Location: LCCOMB_X61_Y17_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15376z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15376z1  = (\u_uw_uart|i_uarts|RxFSM_5_ ) # ((!\u_uw_uart|i_uarts|RxRDY  & \u_uw_uart|i_uarts|RxErr ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxRDY ),
	.datac(\u_uw_uart|i_uarts|RxErr ),
	.datad(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15376z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15376z52923 .lut_mask = 16'hFF30;
defparam \u_uw_uart|i_uarts|ix15376z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X61_Y17_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxErr (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx15376z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxErr ));

// Location: LCCOMB_X62_Y17_N0
cycloneii_lcell_comb \u_uw_uart|ix22081z52939 (
// Equation(s):
// \u_uw_uart|nx22081z15  = CARRY(\u_uw_uart|waitcount_0_ )

	.dataa(\u_uw_uart|waitcount_0_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_uw_uart|nx22081z15 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52939 .lut_mask = 16'h00AA;
defparam \u_uw_uart|ix22081z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X62_Y17_N2
cycloneii_lcell_comb \u_uw_uart|ix22081z52938 (
// Equation(s):
// \u_uw_uart|inc_d_1_  = (\u_uw_uart|waitcount_1_  & (!\u_uw_uart|nx22081z15 )) # (!\u_uw_uart|waitcount_1_  & ((\u_uw_uart|nx22081z15 ) # (GND)))
// \u_uw_uart|nx22081z14  = CARRY((!\u_uw_uart|nx22081z15 ) # (!\u_uw_uart|waitcount_1_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z15 ),
	.combout(\u_uw_uart|inc_d_1_ ),
	.cout(\u_uw_uart|nx22081z14 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52938 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|ix22081z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X61_Y17_N24
cycloneii_lcell_comb \u_uw_uart|ix21084z52924 (
// Equation(s):
// \u_uw_uart|nx21084z2  = (\u_uw_uart|nx39480z2 ) # (!\nrst~combout )

	.dataa(\nrst~combout ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|nx39480z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx21084z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix21084z52924 .lut_mask = 16'hFF55;
defparam \u_uw_uart|ix21084z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X61_Y17_N20
cycloneii_lcell_comb \u_uw_uart|ix58116z52923 (
// Equation(s):
// \u_uw_uart|nx58116z1  = (\u_uw_uart|i_uarts|RxRDY  & !\u_uw_uart|o_pixavail_dup_0 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxRDY ),
	.datac(\u_uw_uart|o_pixavail_dup_0 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|nx58116z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix58116z52923 .lut_mask = 16'h0C0C;
defparam \u_uw_uart|ix58116z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X61_Y17_N21
cycloneii_lcell_ff \u_uw_uart|reg_charavail (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx58116z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|o_pixavail_dup_0 ));

// Location: LCCOMB_X61_Y17_N26
cycloneii_lcell_comb \u_uw_uart|ix21084z52923 (
// Equation(s):
// \u_uw_uart|nx21084z1  = ((\u_uw_uart|o_pixavail_dup_0 ) # (\u_uw_uart|ack )) # (!\nrst~combout )

	.dataa(\nrst~combout ),
	.datab(vcc),
	.datac(\u_uw_uart|o_pixavail_dup_0 ),
	.datad(\u_uw_uart|ack ),
	.cin(gnd),
	.combout(\u_uw_uart|nx21084z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix21084z52923 .lut_mask = 16'hFFF5;
defparam \u_uw_uart|ix21084z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X62_Y17_N3
cycloneii_lcell_ff \u_uw_uart|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_1_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_1_ ));

// Location: LCCOMB_X62_Y17_N4
cycloneii_lcell_comb \u_uw_uart|ix22081z52937 (
// Equation(s):
// \u_uw_uart|inc_d_2_  = (\u_uw_uart|waitcount_2_  & (\u_uw_uart|nx22081z14  $ (GND))) # (!\u_uw_uart|waitcount_2_  & (!\u_uw_uart|nx22081z14  & VCC))
// \u_uw_uart|nx22081z13  = CARRY((\u_uw_uart|waitcount_2_  & !\u_uw_uart|nx22081z14 ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z14 ),
	.combout(\u_uw_uart|inc_d_2_ ),
	.cout(\u_uw_uart|nx22081z13 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52937 .lut_mask = 16'hC30C;
defparam \u_uw_uart|ix22081z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X62_Y17_N5
cycloneii_lcell_ff \u_uw_uart|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_2_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_2_ ));

// Location: LCCOMB_X62_Y17_N8
cycloneii_lcell_comb \u_uw_uart|ix22081z52935 (
// Equation(s):
// \u_uw_uart|inc_d_4_  = (\u_uw_uart|waitcount_4_  & (\u_uw_uart|nx22081z12  $ (GND))) # (!\u_uw_uart|waitcount_4_  & (!\u_uw_uart|nx22081z12  & VCC))
// \u_uw_uart|nx22081z11  = CARRY((\u_uw_uart|waitcount_4_  & !\u_uw_uart|nx22081z12 ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z12 ),
	.combout(\u_uw_uart|inc_d_4_ ),
	.cout(\u_uw_uart|nx22081z11 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52935 .lut_mask = 16'hC30C;
defparam \u_uw_uart|ix22081z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X62_Y17_N9
cycloneii_lcell_ff \u_uw_uart|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_4_ ));

// Location: LCCOMB_X62_Y17_N12
cycloneii_lcell_comb \u_uw_uart|ix22081z52933 (
// Equation(s):
// \u_uw_uart|inc_d_6_  = (\u_uw_uart|waitcount_6_  & (\u_uw_uart|nx22081z10  $ (GND))) # (!\u_uw_uart|waitcount_6_  & (!\u_uw_uart|nx22081z10  & VCC))
// \u_uw_uart|nx22081z9  = CARRY((\u_uw_uart|waitcount_6_  & !\u_uw_uart|nx22081z10 ))

	.dataa(\u_uw_uart|waitcount_6_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z10 ),
	.combout(\u_uw_uart|inc_d_6_ ),
	.cout(\u_uw_uart|nx22081z9 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52933 .lut_mask = 16'hA50A;
defparam \u_uw_uart|ix22081z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X62_Y17_N14
cycloneii_lcell_comb \u_uw_uart|ix22081z52932 (
// Equation(s):
// \u_uw_uart|inc_d_7_  = (\u_uw_uart|waitcount_7_  & (!\u_uw_uart|nx22081z9 )) # (!\u_uw_uart|waitcount_7_  & ((\u_uw_uart|nx22081z9 ) # (GND)))
// \u_uw_uart|nx22081z8  = CARRY((!\u_uw_uart|nx22081z9 ) # (!\u_uw_uart|waitcount_7_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z9 ),
	.combout(\u_uw_uart|inc_d_7_ ),
	.cout(\u_uw_uart|nx22081z8 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52932 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|ix22081z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X62_Y17_N15
cycloneii_lcell_ff \u_uw_uart|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_7_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_7_ ));

// Location: LCCOMB_X62_Y17_N18
cycloneii_lcell_comb \u_uw_uart|ix22081z52930 (
// Equation(s):
// \u_uw_uart|inc_d_9_  = (\u_uw_uart|waitcount_9_  & (!\u_uw_uart|nx22081z7 )) # (!\u_uw_uart|waitcount_9_  & ((\u_uw_uart|nx22081z7 ) # (GND)))
// \u_uw_uart|nx22081z6  = CARRY((!\u_uw_uart|nx22081z7 ) # (!\u_uw_uart|waitcount_9_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z7 ),
	.combout(\u_uw_uart|inc_d_9_ ),
	.cout(\u_uw_uart|nx22081z6 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52930 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|ix22081z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X62_Y17_N19
cycloneii_lcell_ff \u_uw_uart|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_9_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_9_ ));

// Location: LCCOMB_X62_Y17_N20
cycloneii_lcell_comb \u_uw_uart|ix22081z52929 (
// Equation(s):
// \u_uw_uart|inc_d_10_  = (\u_uw_uart|waitcount_10_  & (\u_uw_uart|nx22081z6  $ (GND))) # (!\u_uw_uart|waitcount_10_  & (!\u_uw_uart|nx22081z6  & VCC))
// \u_uw_uart|nx22081z5  = CARRY((\u_uw_uart|waitcount_10_  & !\u_uw_uart|nx22081z6 ))

	.dataa(\u_uw_uart|waitcount_10_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z6 ),
	.combout(\u_uw_uart|inc_d_10_ ),
	.cout(\u_uw_uart|nx22081z5 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52929 .lut_mask = 16'hA50A;
defparam \u_uw_uart|ix22081z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X62_Y17_N22
cycloneii_lcell_comb \u_uw_uart|ix22081z52928 (
// Equation(s):
// \u_uw_uart|inc_d_11_  = (\u_uw_uart|waitcount_11_  & (!\u_uw_uart|nx22081z5 )) # (!\u_uw_uart|waitcount_11_  & ((\u_uw_uart|nx22081z5 ) # (GND)))
// \u_uw_uart|nx22081z4  = CARRY((!\u_uw_uart|nx22081z5 ) # (!\u_uw_uart|waitcount_11_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z5 ),
	.combout(\u_uw_uart|inc_d_11_ ),
	.cout(\u_uw_uart|nx22081z4 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52928 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|ix22081z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X62_Y17_N23
cycloneii_lcell_ff \u_uw_uart|reg_q_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_11_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_11_ ));

// Location: LCFF_X62_Y17_N21
cycloneii_lcell_ff \u_uw_uart|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_10_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_10_ ));

// Location: LCCOMB_X61_Y17_N4
cycloneii_lcell_comb \u_uw_uart|ix39480z52926 (
// Equation(s):
// \u_uw_uart|nx39480z4  = (!\u_uw_uart|waitcount_8_  & (!\u_uw_uart|waitcount_11_  & (!\u_uw_uart|waitcount_10_  & !\u_uw_uart|waitcount_9_ )))

	.dataa(\u_uw_uart|waitcount_8_ ),
	.datab(\u_uw_uart|waitcount_11_ ),
	.datac(\u_uw_uart|waitcount_10_ ),
	.datad(\u_uw_uart|waitcount_9_ ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52926 .lut_mask = 16'h0001;
defparam \u_uw_uart|ix39480z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X62_Y17_N13
cycloneii_lcell_ff \u_uw_uart|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_6_ ));

// Location: LCCOMB_X61_Y17_N14
cycloneii_lcell_comb \u_uw_uart|ix39480z52927 (
// Equation(s):
// \u_uw_uart|nx39480z5  = (\u_uw_uart|waitcount_5_  & (!\u_uw_uart|waitcount_7_  & (\u_uw_uart|waitcount_6_  & !\u_uw_uart|waitcount_4_ )))

	.dataa(\u_uw_uart|waitcount_5_ ),
	.datab(\u_uw_uart|waitcount_7_ ),
	.datac(\u_uw_uart|waitcount_6_ ),
	.datad(\u_uw_uart|waitcount_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52927 .lut_mask = 16'h0020;
defparam \u_uw_uart|ix39480z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X62_Y17_N24
cycloneii_lcell_comb \u_uw_uart|ix22081z52927 (
// Equation(s):
// \u_uw_uart|inc_d_12_  = (\u_uw_uart|waitcount_12_  & (\u_uw_uart|nx22081z4  $ (GND))) # (!\u_uw_uart|waitcount_12_  & (!\u_uw_uart|nx22081z4  & VCC))
// \u_uw_uart|nx22081z3  = CARRY((\u_uw_uart|waitcount_12_  & !\u_uw_uart|nx22081z4 ))

	.dataa(\u_uw_uart|waitcount_12_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z4 ),
	.combout(\u_uw_uart|inc_d_12_ ),
	.cout(\u_uw_uart|nx22081z3 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52927 .lut_mask = 16'hA50A;
defparam \u_uw_uart|ix22081z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X62_Y17_N26
cycloneii_lcell_comb \u_uw_uart|ix22081z52926 (
// Equation(s):
// \u_uw_uart|inc_d_13_  = (\u_uw_uart|waitcount_13_  & (!\u_uw_uart|nx22081z3 )) # (!\u_uw_uart|waitcount_13_  & ((\u_uw_uart|nx22081z3 ) # (GND)))
// \u_uw_uart|nx22081z2  = CARRY((!\u_uw_uart|nx22081z3 ) # (!\u_uw_uart|waitcount_13_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_13_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z3 ),
	.combout(\u_uw_uart|inc_d_13_ ),
	.cout(\u_uw_uart|nx22081z2 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52926 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|ix22081z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X62_Y17_N27
cycloneii_lcell_ff \u_uw_uart|reg_q_13_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_13_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_13_ ));

// Location: LCCOMB_X62_Y17_N28
cycloneii_lcell_comb \u_uw_uart|ix22081z52925 (
// Equation(s):
// \u_uw_uart|inc_d_14_  = (\u_uw_uart|waitcount_14_  & (\u_uw_uart|nx22081z2  $ (GND))) # (!\u_uw_uart|waitcount_14_  & (!\u_uw_uart|nx22081z2  & VCC))
// \u_uw_uart|nx22081z1  = CARRY((\u_uw_uart|waitcount_14_  & !\u_uw_uart|nx22081z2 ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_14_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z2 ),
	.combout(\u_uw_uart|inc_d_14_ ),
	.cout(\u_uw_uart|nx22081z1 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52925 .lut_mask = 16'hC30C;
defparam \u_uw_uart|ix22081z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X62_Y17_N29
cycloneii_lcell_ff \u_uw_uart|reg_q_14_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_14_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_14_ ));

// Location: LCCOMB_X62_Y17_N30
cycloneii_lcell_comb \u_uw_uart|ix22081z52923 (
// Equation(s):
// \u_uw_uart|inc_d_15_  = \u_uw_uart|nx22081z1  $ (\u_uw_uart|waitcount_15_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|waitcount_15_ ),
	.cin(\u_uw_uart|nx22081z1 ),
	.combout(\u_uw_uart|inc_d_15_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix22081z52923 .lut_mask = 16'h0FF0;
defparam \u_uw_uart|ix22081z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X62_Y17_N31
cycloneii_lcell_ff \u_uw_uart|reg_q_15_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_15_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_15_ ));

// Location: LCFF_X62_Y17_N25
cycloneii_lcell_ff \u_uw_uart|reg_q_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_12_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx21084z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_12_ ));

// Location: LCCOMB_X61_Y17_N10
cycloneii_lcell_comb \u_uw_uart|ix39480z52925 (
// Equation(s):
// \u_uw_uart|nx39480z3  = (!\u_uw_uart|waitcount_13_  & (!\u_uw_uart|waitcount_15_  & (!\u_uw_uart|waitcount_14_  & !\u_uw_uart|waitcount_12_ )))

	.dataa(\u_uw_uart|waitcount_13_ ),
	.datab(\u_uw_uart|waitcount_15_ ),
	.datac(\u_uw_uart|waitcount_14_ ),
	.datad(\u_uw_uart|waitcount_12_ ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52925 .lut_mask = 16'h0001;
defparam \u_uw_uart|ix39480z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X61_Y17_N28
cycloneii_lcell_comb \u_uw_uart|ix39480z52924 (
// Equation(s):
// \u_uw_uart|nx39480z2  = (\u_uw_uart|nx39480z6  & (\u_uw_uart|nx39480z4  & (\u_uw_uart|nx39480z5  & \u_uw_uart|nx39480z3 )))

	.dataa(\u_uw_uart|nx39480z6 ),
	.datab(\u_uw_uart|nx39480z4 ),
	.datac(\u_uw_uart|nx39480z5 ),
	.datad(\u_uw_uart|nx39480z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52924 .lut_mask = 16'h8000;
defparam \u_uw_uart|ix39480z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X61_Y17_N22
cycloneii_lcell_comb \u_uw_uart|ix39480z52923 (
// Equation(s):
// \u_uw_uart|nx39480z1  = (!\u_uw_uart|nx39480z2  & (\nrst~combout  & ((\u_uw_uart|o_pixavail_dup_0 ) # (\u_uw_uart|ack ))))

	.dataa(\u_uw_uart|o_pixavail_dup_0 ),
	.datab(\u_uw_uart|nx39480z2 ),
	.datac(\u_uw_uart|ack ),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52923 .lut_mask = 16'h3200;
defparam \u_uw_uart|ix39480z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X61_Y17_N23
cycloneii_lcell_ff \u_uw_uart|reg_ack (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx39480z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|ack ));

// Location: LCCOMB_X61_Y17_N16
cycloneii_lcell_comb \u_uw_uart|ix46385z52925 (
// Equation(s):
// \u_uw_uart|nx46385z3  = (\u_uw_uart|ack ) # (\u_uw_uart|o_pixavail_dup_0 )

	.dataa(vcc),
	.datab(\u_uw_uart|ack ),
	.datac(\u_uw_uart|o_pixavail_dup_0 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|nx46385z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46385z52925 .lut_mask = 16'hFCFC;
defparam \u_uw_uart|ix46385z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X61_Y17_N0
cycloneii_lcell_comb \u_uw_uart|ix46385z52924 (
// Equation(s):
// \u_uw_uart|nx46385z2  = (\nrst~combout  & ((\u_uw_uart|nx46385z3  & ((\u_uw_uart|nx39480z2 ))) # (!\u_uw_uart|nx46385z3  & (\u_uw_uart|i_uarts|RxErr ))))

	.dataa(\nrst~combout ),
	.datab(\u_uw_uart|i_uarts|RxErr ),
	.datac(\u_uw_uart|nx46385z3 ),
	.datad(\u_uw_uart|nx39480z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx46385z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46385z52924 .lut_mask = 16'hA808;
defparam \u_uw_uart|ix46385z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X61_Y17_N1
cycloneii_lcell_ff \u_uw_uart|reg_dsend (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx46385z2 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|dsend ));

// Location: LCCOMB_X61_Y16_N8
cycloneii_lcell_comb \u_uw_uart|ix38650z52923 (
// Equation(s):
// \u_uw_uart|nx38650z1  = (!\u_uw_uart|state  & \u_uw_uart|dsend )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|state ),
	.datad(\u_uw_uart|dsend ),
	.cin(gnd),
	.combout(\u_uw_uart|nx38650z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix38650z52923 .lut_mask = 16'h0F00;
defparam \u_uw_uart|ix38650z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X61_Y16_N9
cycloneii_lcell_ff \u_uw_uart|reg_state (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx38650z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|state ));

// Location: LCCOMB_X61_Y16_N6
cycloneii_lcell_comb \u_uw_uart|ix45847z52923 (
// Equation(s):
// \u_uw_uart|nx45847z1  = (\u_uw_uart|state  & (((\u_uw_uart|sdout_0_ )))) # (!\u_uw_uart|state  & ((\u_uw_uart|dsend  & (\u_uw_uart|mdata_0_ )) # (!\u_uw_uart|dsend  & ((\u_uw_uart|sdout_0_ )))))

	.dataa(\u_uw_uart|mdata_0_ ),
	.datab(\u_uw_uart|state ),
	.datac(\u_uw_uart|sdout_0_ ),
	.datad(\u_uw_uart|dsend ),
	.cin(gnd),
	.combout(\u_uw_uart|nx45847z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix45847z52923 .lut_mask = 16'hE2F0;
defparam \u_uw_uart|ix45847z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X61_Y16_N7
cycloneii_lcell_ff \u_uw_uart|reg_sdout_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx45847z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_0_ ));

// Location: LCCOMB_X58_Y16_N12
cycloneii_lcell_comb \u_uw_uart|sdout_0_~_wirecell (
// Equation(s):
// \u_uw_uart|sdout_0_~_wirecell_combout  = !\u_uw_uart|sdout_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|sdout_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_0_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_0_~_wirecell .lut_mask = 16'h00FF;
defparam \u_uw_uart|sdout_0_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X58_Y16_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|nx27627z5~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|nx27627z5~feeder_combout  = \u_uw_uart|sdout_0_~_wirecell_combout 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|sdout_0_~_wirecell_combout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx27627z5~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|nx27627z5~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|nx27627z5~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X58_Y16_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|NOT_Tx_Reg_2_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_2_~feeder_combout  = \u_uw_uart|sdout_0_~_wirecell_combout 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|sdout_0_~_wirecell_combout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|NOT_Tx_Reg_2_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|NOT_Tx_Reg_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X58_Y16_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|NOT_Tx_Reg_4_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_4_~feeder_combout  = \u_uw_uart|sdout_0_~_wirecell_combout 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|sdout_0_~_wirecell_combout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|NOT_Tx_Reg_4_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|NOT_Tx_Reg_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X61_Y16_N4
cycloneii_lcell_comb \u_uw_uart|ix41859z52923 (
// Equation(s):
// \u_uw_uart|nx41859z1  = (\u_uw_uart|sdout_4_ ) # ((!\u_uw_uart|state  & \u_uw_uart|dsend ))

	.dataa(vcc),
	.datab(\u_uw_uart|state ),
	.datac(\u_uw_uart|sdout_4_ ),
	.datad(\u_uw_uart|dsend ),
	.cin(gnd),
	.combout(\u_uw_uart|nx41859z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix41859z52923 .lut_mask = 16'hF3F0;
defparam \u_uw_uart|ix41859z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X61_Y16_N5
cycloneii_lcell_ff \u_uw_uart|reg_sdout_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx41859z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_4_ ));

// Location: LCCOMB_X58_Y16_N2
cycloneii_lcell_comb \u_uw_uart|sdout_4_~_wirecell (
// Equation(s):
// \u_uw_uart|sdout_4_~_wirecell_combout  = !\u_uw_uart|sdout_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|sdout_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_4_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_4_~_wirecell .lut_mask = 16'h00FF;
defparam \u_uw_uart|sdout_4_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X58_Y16_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|NOT_Tx_Reg_5_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_5_~feeder_combout  = \u_uw_uart|sdout_4_~_wirecell_combout 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|sdout_4_~_wirecell_combout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|NOT_Tx_Reg_5_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|NOT_Tx_Reg_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X58_Y16_N4
cycloneii_lcell_comb \u_uw_uart|sdout_6_~_wirecell (
// Equation(s):
// \u_uw_uart|sdout_6_~_wirecell_combout  = !\u_uw_uart|sdout_6_ 

	.dataa(\u_uw_uart|sdout_6_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_6_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_6_~_wirecell .lut_mask = 16'h5555;
defparam \u_uw_uart|sdout_6_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X61_Y16_N22
cycloneii_lcell_comb \u_uw_uart|ix39865z52923 (
// Equation(s):
// \u_uw_uart|nx39865z1  = (\u_uw_uart|state  & (((\u_uw_uart|sdout_6_ )))) # (!\u_uw_uart|state  & ((\u_uw_uart|dsend  & (\u_uw_uart|mdata_7_ )) # (!\u_uw_uart|dsend  & ((\u_uw_uart|sdout_6_ )))))

	.dataa(\u_uw_uart|mdata_7_ ),
	.datab(\u_uw_uart|state ),
	.datac(\u_uw_uart|sdout_6_ ),
	.datad(\u_uw_uart|dsend ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39865z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39865z52923 .lut_mask = 16'hE2F0;
defparam \u_uw_uart|ix39865z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X61_Y16_N23
cycloneii_lcell_ff \u_uw_uart|reg_sdout_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx39865z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_6_ ));

// Location: LCCOMB_X58_Y16_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix35603z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_  = (!\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_6_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|sdout_6_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix35603z52923 .lut_mask = 16'h0303;
defparam \u_uw_uart|i_uarts|ix35603z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X57_Y16_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix35603z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx35603z1  = (!\u_uw_uart|i_uarts|TxFSM_0_  & ((\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|TopTx ))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|ld_sdout ))))

	.dataa(\u_uw_uart|ld_sdout ),
	.datab(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx35603z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix35603z52924 .lut_mask = 16'h3202;
defparam \u_uw_uart|i_uarts|ix35603z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X58_Y16_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|NOT_Tx_Reg_8_ ));

// Location: LCFF_X58_Y16_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_6_~_wirecell_combout ),
	.sdata(\u_uw_uart|i_uarts|NOT_Tx_Reg_8_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|NOT_Tx_Reg_7_ ));

// Location: LCFF_X58_Y16_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_4_~_wirecell_combout ),
	.sdata(\u_uw_uart|i_uarts|NOT_Tx_Reg_7_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|NOT_Tx_Reg_6_ ));

// Location: LCFF_X58_Y16_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_5_~feeder_combout ),
	.sdata(\u_uw_uart|i_uarts|NOT_Tx_Reg_6_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|NOT_Tx_Reg_5_ ));

// Location: LCFF_X58_Y16_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_4_~feeder_combout ),
	.sdata(\u_uw_uart|i_uarts|NOT_Tx_Reg_5_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|NOT_Tx_Reg_4_ ));

// Location: LCFF_X58_Y16_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_0_~_wirecell_combout ),
	.sdata(\u_uw_uart|i_uarts|NOT_Tx_Reg_4_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|NOT_Tx_Reg_3_ ));

// Location: LCFF_X58_Y16_N27
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_2_~feeder_combout ),
	.sdata(\u_uw_uart|i_uarts|NOT_Tx_Reg_3_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|NOT_Tx_Reg_2_ ));

// Location: LCFF_X58_Y16_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx27627z5~feeder_combout ),
	.sdata(\u_uw_uart|i_uarts|NOT_Tx_Reg_2_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx27627z5 ));

// Location: LCCOMB_X61_Y16_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix27627z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx27627z4  = (!\u_uw_uart|i_uarts|TxFSM_0_  & (((!\u_uw_uart|i_uarts|nx27627z5  & \u_uw_uart|i_uarts|TopTx )) # (!\u_uw_uart|i_uarts|TxFSM_1_ )))

	.dataa(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|i_uarts|nx27627z5 ),
	.datad(\u_uw_uart|i_uarts|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx27627z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix27627z52926 .lut_mask = 16'h1511;
defparam \u_uw_uart|i_uarts|ix27627z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X61_Y16_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix27627z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx27627z1  = (\u_uw_uart|i_uarts|nx27627z2  & (((\u_uw_uart|i_uarts|nx18332z1 )))) # (!\u_uw_uart|i_uarts|nx27627z2  & (!\u_uw_uart|i_uarts|nx27627z4  & ((\u_uw_uart|i_uarts|nx18332z1 ) # (!\u_uw_uart|i_uarts|nx27627z3 ))))

	.dataa(\u_uw_uart|i_uarts|nx27627z3 ),
	.datab(\u_uw_uart|i_uarts|nx27627z2 ),
	.datac(\u_uw_uart|i_uarts|nx18332z1 ),
	.datad(\u_uw_uart|i_uarts|nx27627z4 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx27627z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix27627z52923 .lut_mask = 16'hC0F1;
defparam \u_uw_uart|i_uarts|ix27627z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X61_Y16_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx27627z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx18332z1 ));

// Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \txflex~I (
	.datain(!\u_uw_uart|i_uarts|nx18332z1 ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(txflex));
// synopsys translate_off
defparam \txflex~I .input_async_reset = "none";
defparam \txflex~I .input_power_up = "low";
defparam \txflex~I .input_register_mode = "none";
defparam \txflex~I .input_sync_reset = "none";
defparam \txflex~I .oe_async_reset = "none";
defparam \txflex~I .oe_power_up = "low";
defparam \txflex~I .oe_register_mode = "none";
defparam \txflex~I .oe_sync_reset = "none";
defparam \txflex~I .operation_mode = "output";
defparam \txflex~I .output_async_reset = "none";
defparam \txflex~I .output_power_up = "low";
defparam \txflex~I .output_register_mode = "none";
defparam \txflex~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[0]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[0]));
// synopsys translate_off
defparam \o_sevenseg[0]~I .input_async_reset = "none";
defparam \o_sevenseg[0]~I .input_power_up = "low";
defparam \o_sevenseg[0]~I .input_register_mode = "none";
defparam \o_sevenseg[0]~I .input_sync_reset = "none";
defparam \o_sevenseg[0]~I .oe_async_reset = "none";
defparam \o_sevenseg[0]~I .oe_power_up = "low";
defparam \o_sevenseg[0]~I .oe_register_mode = "none";
defparam \o_sevenseg[0]~I .oe_sync_reset = "none";
defparam \o_sevenseg[0]~I .operation_mode = "output";
defparam \o_sevenseg[0]~I .output_async_reset = "none";
defparam \o_sevenseg[0]~I .output_power_up = "low";
defparam \o_sevenseg[0]~I .output_register_mode = "none";
defparam \o_sevenseg[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[1]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[1]));
// synopsys translate_off
defparam \o_sevenseg[1]~I .input_async_reset = "none";
defparam \o_sevenseg[1]~I .input_power_up = "low";
defparam \o_sevenseg[1]~I .input_register_mode = "none";
defparam \o_sevenseg[1]~I .input_sync_reset = "none";
defparam \o_sevenseg[1]~I .oe_async_reset = "none";
defparam \o_sevenseg[1]~I .oe_power_up = "low";
defparam \o_sevenseg[1]~I .oe_register_mode = "none";
defparam \o_sevenseg[1]~I .oe_sync_reset = "none";
defparam \o_sevenseg[1]~I .operation_mode = "output";
defparam \o_sevenseg[1]~I .output_async_reset = "none";
defparam \o_sevenseg[1]~I .output_power_up = "low";
defparam \o_sevenseg[1]~I .output_register_mode = "none";
defparam \o_sevenseg[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[2]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[2]));
// synopsys translate_off
defparam \o_sevenseg[2]~I .input_async_reset = "none";
defparam \o_sevenseg[2]~I .input_power_up = "low";
defparam \o_sevenseg[2]~I .input_register_mode = "none";
defparam \o_sevenseg[2]~I .input_sync_reset = "none";
defparam \o_sevenseg[2]~I .oe_async_reset = "none";
defparam \o_sevenseg[2]~I .oe_power_up = "low";
defparam \o_sevenseg[2]~I .oe_register_mode = "none";
defparam \o_sevenseg[2]~I .oe_sync_reset = "none";
defparam \o_sevenseg[2]~I .operation_mode = "output";
defparam \o_sevenseg[2]~I .output_async_reset = "none";
defparam \o_sevenseg[2]~I .output_power_up = "low";
defparam \o_sevenseg[2]~I .output_register_mode = "none";
defparam \o_sevenseg[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[3]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[3]));
// synopsys translate_off
defparam \o_sevenseg[3]~I .input_async_reset = "none";
defparam \o_sevenseg[3]~I .input_power_up = "low";
defparam \o_sevenseg[3]~I .input_register_mode = "none";
defparam \o_sevenseg[3]~I .input_sync_reset = "none";
defparam \o_sevenseg[3]~I .oe_async_reset = "none";
defparam \o_sevenseg[3]~I .oe_power_up = "low";
defparam \o_sevenseg[3]~I .oe_register_mode = "none";
defparam \o_sevenseg[3]~I .oe_sync_reset = "none";
defparam \o_sevenseg[3]~I .operation_mode = "output";
defparam \o_sevenseg[3]~I .output_async_reset = "none";
defparam \o_sevenseg[3]~I .output_power_up = "low";
defparam \o_sevenseg[3]~I .output_register_mode = "none";
defparam \o_sevenseg[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[4]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[4]));
// synopsys translate_off
defparam \o_sevenseg[4]~I .input_async_reset = "none";
defparam \o_sevenseg[4]~I .input_power_up = "low";
defparam \o_sevenseg[4]~I .input_register_mode = "none";
defparam \o_sevenseg[4]~I .input_sync_reset = "none";
defparam \o_sevenseg[4]~I .oe_async_reset = "none";
defparam \o_sevenseg[4]~I .oe_power_up = "low";
defparam \o_sevenseg[4]~I .oe_register_mode = "none";
defparam \o_sevenseg[4]~I .oe_sync_reset = "none";
defparam \o_sevenseg[4]~I .operation_mode = "output";
defparam \o_sevenseg[4]~I .output_async_reset = "none";
defparam \o_sevenseg[4]~I .output_power_up = "low";
defparam \o_sevenseg[4]~I .output_register_mode = "none";
defparam \o_sevenseg[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[5]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[5]));
// synopsys translate_off
defparam \o_sevenseg[5]~I .input_async_reset = "none";
defparam \o_sevenseg[5]~I .input_power_up = "low";
defparam \o_sevenseg[5]~I .input_register_mode = "none";
defparam \o_sevenseg[5]~I .input_sync_reset = "none";
defparam \o_sevenseg[5]~I .oe_async_reset = "none";
defparam \o_sevenseg[5]~I .oe_power_up = "low";
defparam \o_sevenseg[5]~I .oe_register_mode = "none";
defparam \o_sevenseg[5]~I .oe_sync_reset = "none";
defparam \o_sevenseg[5]~I .operation_mode = "output";
defparam \o_sevenseg[5]~I .output_async_reset = "none";
defparam \o_sevenseg[5]~I .output_power_up = "low";
defparam \o_sevenseg[5]~I .output_register_mode = "none";
defparam \o_sevenseg[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[6]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[6]));
// synopsys translate_off
defparam \o_sevenseg[6]~I .input_async_reset = "none";
defparam \o_sevenseg[6]~I .input_power_up = "low";
defparam \o_sevenseg[6]~I .input_register_mode = "none";
defparam \o_sevenseg[6]~I .input_sync_reset = "none";
defparam \o_sevenseg[6]~I .oe_async_reset = "none";
defparam \o_sevenseg[6]~I .oe_power_up = "low";
defparam \o_sevenseg[6]~I .oe_register_mode = "none";
defparam \o_sevenseg[6]~I .oe_sync_reset = "none";
defparam \o_sevenseg[6]~I .operation_mode = "output";
defparam \o_sevenseg[6]~I .output_async_reset = "none";
defparam \o_sevenseg[6]~I .output_power_up = "low";
defparam \o_sevenseg[6]~I .output_register_mode = "none";
defparam \o_sevenseg[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[7]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[7]));
// synopsys translate_off
defparam \o_sevenseg[7]~I .input_async_reset = "none";
defparam \o_sevenseg[7]~I .input_power_up = "low";
defparam \o_sevenseg[7]~I .input_register_mode = "none";
defparam \o_sevenseg[7]~I .input_sync_reset = "none";
defparam \o_sevenseg[7]~I .oe_async_reset = "none";
defparam \o_sevenseg[7]~I .oe_power_up = "low";
defparam \o_sevenseg[7]~I .oe_register_mode = "none";
defparam \o_sevenseg[7]~I .oe_sync_reset = "none";
defparam \o_sevenseg[7]~I .operation_mode = "output";
defparam \o_sevenseg[7]~I .output_async_reset = "none";
defparam \o_sevenseg[7]~I .output_power_up = "low";
defparam \o_sevenseg[7]~I .output_register_mode = "none";
defparam \o_sevenseg[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[8]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[8]));
// synopsys translate_off
defparam \o_sevenseg[8]~I .input_async_reset = "none";
defparam \o_sevenseg[8]~I .input_power_up = "low";
defparam \o_sevenseg[8]~I .input_register_mode = "none";
defparam \o_sevenseg[8]~I .input_sync_reset = "none";
defparam \o_sevenseg[8]~I .oe_async_reset = "none";
defparam \o_sevenseg[8]~I .oe_power_up = "low";
defparam \o_sevenseg[8]~I .oe_register_mode = "none";
defparam \o_sevenseg[8]~I .oe_sync_reset = "none";
defparam \o_sevenseg[8]~I .operation_mode = "output";
defparam \o_sevenseg[8]~I .output_async_reset = "none";
defparam \o_sevenseg[8]~I .output_power_up = "low";
defparam \o_sevenseg[8]~I .output_register_mode = "none";
defparam \o_sevenseg[8]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[9]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[9]));
// synopsys translate_off
defparam \o_sevenseg[9]~I .input_async_reset = "none";
defparam \o_sevenseg[9]~I .input_power_up = "low";
defparam \o_sevenseg[9]~I .input_register_mode = "none";
defparam \o_sevenseg[9]~I .input_sync_reset = "none";
defparam \o_sevenseg[9]~I .oe_async_reset = "none";
defparam \o_sevenseg[9]~I .oe_power_up = "low";
defparam \o_sevenseg[9]~I .oe_register_mode = "none";
defparam \o_sevenseg[9]~I .oe_sync_reset = "none";
defparam \o_sevenseg[9]~I .operation_mode = "output";
defparam \o_sevenseg[9]~I .output_async_reset = "none";
defparam \o_sevenseg[9]~I .output_power_up = "low";
defparam \o_sevenseg[9]~I .output_register_mode = "none";
defparam \o_sevenseg[9]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[10]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[10]));
// synopsys translate_off
defparam \o_sevenseg[10]~I .input_async_reset = "none";
defparam \o_sevenseg[10]~I .input_power_up = "low";
defparam \o_sevenseg[10]~I .input_register_mode = "none";
defparam \o_sevenseg[10]~I .input_sync_reset = "none";
defparam \o_sevenseg[10]~I .oe_async_reset = "none";
defparam \o_sevenseg[10]~I .oe_power_up = "low";
defparam \o_sevenseg[10]~I .oe_register_mode = "none";
defparam \o_sevenseg[10]~I .oe_sync_reset = "none";
defparam \o_sevenseg[10]~I .operation_mode = "output";
defparam \o_sevenseg[10]~I .output_async_reset = "none";
defparam \o_sevenseg[10]~I .output_power_up = "low";
defparam \o_sevenseg[10]~I .output_register_mode = "none";
defparam \o_sevenseg[10]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[11]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[11]));
// synopsys translate_off
defparam \o_sevenseg[11]~I .input_async_reset = "none";
defparam \o_sevenseg[11]~I .input_power_up = "low";
defparam \o_sevenseg[11]~I .input_register_mode = "none";
defparam \o_sevenseg[11]~I .input_sync_reset = "none";
defparam \o_sevenseg[11]~I .oe_async_reset = "none";
defparam \o_sevenseg[11]~I .oe_power_up = "low";
defparam \o_sevenseg[11]~I .oe_register_mode = "none";
defparam \o_sevenseg[11]~I .oe_sync_reset = "none";
defparam \o_sevenseg[11]~I .operation_mode = "output";
defparam \o_sevenseg[11]~I .output_async_reset = "none";
defparam \o_sevenseg[11]~I .output_power_up = "low";
defparam \o_sevenseg[11]~I .output_register_mode = "none";
defparam \o_sevenseg[11]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[12]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[12]));
// synopsys translate_off
defparam \o_sevenseg[12]~I .input_async_reset = "none";
defparam \o_sevenseg[12]~I .input_power_up = "low";
defparam \o_sevenseg[12]~I .input_register_mode = "none";
defparam \o_sevenseg[12]~I .input_sync_reset = "none";
defparam \o_sevenseg[12]~I .oe_async_reset = "none";
defparam \o_sevenseg[12]~I .oe_power_up = "low";
defparam \o_sevenseg[12]~I .oe_register_mode = "none";
defparam \o_sevenseg[12]~I .oe_sync_reset = "none";
defparam \o_sevenseg[12]~I .operation_mode = "output";
defparam \o_sevenseg[12]~I .output_async_reset = "none";
defparam \o_sevenseg[12]~I .output_power_up = "low";
defparam \o_sevenseg[12]~I .output_register_mode = "none";
defparam \o_sevenseg[12]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[13]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[13]));
// synopsys translate_off
defparam \o_sevenseg[13]~I .input_async_reset = "none";
defparam \o_sevenseg[13]~I .input_power_up = "low";
defparam \o_sevenseg[13]~I .input_register_mode = "none";
defparam \o_sevenseg[13]~I .input_sync_reset = "none";
defparam \o_sevenseg[13]~I .oe_async_reset = "none";
defparam \o_sevenseg[13]~I .oe_power_up = "low";
defparam \o_sevenseg[13]~I .oe_register_mode = "none";
defparam \o_sevenseg[13]~I .oe_sync_reset = "none";
defparam \o_sevenseg[13]~I .operation_mode = "output";
defparam \o_sevenseg[13]~I .output_async_reset = "none";
defparam \o_sevenseg[13]~I .output_power_up = "low";
defparam \o_sevenseg[13]~I .output_register_mode = "none";
defparam \o_sevenseg[13]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[14]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[14]));
// synopsys translate_off
defparam \o_sevenseg[14]~I .input_async_reset = "none";
defparam \o_sevenseg[14]~I .input_power_up = "low";
defparam \o_sevenseg[14]~I .input_register_mode = "none";
defparam \o_sevenseg[14]~I .input_sync_reset = "none";
defparam \o_sevenseg[14]~I .oe_async_reset = "none";
defparam \o_sevenseg[14]~I .oe_power_up = "low";
defparam \o_sevenseg[14]~I .oe_register_mode = "none";
defparam \o_sevenseg[14]~I .oe_sync_reset = "none";
defparam \o_sevenseg[14]~I .operation_mode = "output";
defparam \o_sevenseg[14]~I .output_async_reset = "none";
defparam \o_sevenseg[14]~I .output_power_up = "low";
defparam \o_sevenseg[14]~I .output_register_mode = "none";
defparam \o_sevenseg[14]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[15]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[15]));
// synopsys translate_off
defparam \o_sevenseg[15]~I .input_async_reset = "none";
defparam \o_sevenseg[15]~I .input_power_up = "low";
defparam \o_sevenseg[15]~I .input_register_mode = "none";
defparam \o_sevenseg[15]~I .input_sync_reset = "none";
defparam \o_sevenseg[15]~I .oe_async_reset = "none";
defparam \o_sevenseg[15]~I .oe_power_up = "low";
defparam \o_sevenseg[15]~I .oe_register_mode = "none";
defparam \o_sevenseg[15]~I .oe_sync_reset = "none";
defparam \o_sevenseg[15]~I .operation_mode = "output";
defparam \o_sevenseg[15]~I .output_async_reset = "none";
defparam \o_sevenseg[15]~I .output_power_up = "low";
defparam \o_sevenseg[15]~I .output_register_mode = "none";
defparam \o_sevenseg[15]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_mode[0]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_mode[0]));
// synopsys translate_off
defparam \o_mode[0]~I .input_async_reset = "none";
defparam \o_mode[0]~I .input_power_up = "low";
defparam \o_mode[0]~I .input_register_mode = "none";
defparam \o_mode[0]~I .input_sync_reset = "none";
defparam \o_mode[0]~I .oe_async_reset = "none";
defparam \o_mode[0]~I .oe_power_up = "low";
defparam \o_mode[0]~I .oe_register_mode = "none";
defparam \o_mode[0]~I .oe_sync_reset = "none";
defparam \o_mode[0]~I .operation_mode = "output";
defparam \o_mode[0]~I .output_async_reset = "none";
defparam \o_mode[0]~I .output_power_up = "low";
defparam \o_mode[0]~I .output_register_mode = "none";
defparam \o_mode[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_mode[1]~I (
	.datain(\nrst~combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_mode[1]));
// synopsys translate_off
defparam \o_mode[1]~I .input_async_reset = "none";
defparam \o_mode[1]~I .input_power_up = "low";
defparam \o_mode[1]~I .input_register_mode = "none";
defparam \o_mode[1]~I .input_sync_reset = "none";
defparam \o_mode[1]~I .oe_async_reset = "none";
defparam \o_mode[1]~I .oe_power_up = "low";
defparam \o_mode[1]~I .oe_register_mode = "none";
defparam \o_mode[1]~I .oe_sync_reset = "none";
defparam \o_mode[1]~I .operation_mode = "output";
defparam \o_mode[1]~I .output_async_reset = "none";
defparam \o_mode[1]~I .output_power_up = "low";
defparam \o_mode[1]~I .output_register_mode = "none";
defparam \o_mode[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_nrst~I (
	.datain(!\nrst~combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_nrst));
// synopsys translate_off
defparam \o_nrst~I .input_async_reset = "none";
defparam \o_nrst~I .input_power_up = "low";
defparam \o_nrst~I .input_register_mode = "none";
defparam \o_nrst~I .input_sync_reset = "none";
defparam \o_nrst~I .oe_async_reset = "none";
defparam \o_nrst~I .oe_power_up = "low";
defparam \o_nrst~I .oe_register_mode = "none";
defparam \o_nrst~I .oe_sync_reset = "none";
defparam \o_nrst~I .operation_mode = "output";
defparam \o_nrst~I .output_async_reset = "none";
defparam \o_nrst~I .output_power_up = "low";
defparam \o_nrst~I .output_register_mode = "none";
defparam \o_nrst~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_key[1]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[1]));
// synopsys translate_off
defparam \debug_key[1]~I .input_async_reset = "none";
defparam \debug_key[1]~I .input_power_up = "low";
defparam \debug_key[1]~I .input_register_mode = "none";
defparam \debug_key[1]~I .input_sync_reset = "none";
defparam \debug_key[1]~I .oe_async_reset = "none";
defparam \debug_key[1]~I .oe_power_up = "low";
defparam \debug_key[1]~I .oe_register_mode = "none";
defparam \debug_key[1]~I .oe_sync_reset = "none";
defparam \debug_key[1]~I .operation_mode = "input";
defparam \debug_key[1]~I .output_async_reset = "none";
defparam \debug_key[1]~I .output_power_up = "low";
defparam \debug_key[1]~I .output_register_mode = "none";
defparam \debug_key[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_key[2]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[2]));
// synopsys translate_off
defparam \debug_key[2]~I .input_async_reset = "none";
defparam \debug_key[2]~I .input_power_up = "low";
defparam \debug_key[2]~I .input_register_mode = "none";
defparam \debug_key[2]~I .input_sync_reset = "none";
defparam \debug_key[2]~I .oe_async_reset = "none";
defparam \debug_key[2]~I .oe_power_up = "low";
defparam \debug_key[2]~I .oe_register_mode = "none";
defparam \debug_key[2]~I .oe_sync_reset = "none";
defparam \debug_key[2]~I .operation_mode = "input";
defparam \debug_key[2]~I .output_async_reset = "none";
defparam \debug_key[2]~I .output_power_up = "low";
defparam \debug_key[2]~I .output_register_mode = "none";
defparam \debug_key[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_key[3]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[3]));
// synopsys translate_off
defparam \debug_key[3]~I .input_async_reset = "none";
defparam \debug_key[3]~I .input_power_up = "low";
defparam \debug_key[3]~I .input_register_mode = "none";
defparam \debug_key[3]~I .input_sync_reset = "none";
defparam \debug_key[3]~I .oe_async_reset = "none";
defparam \debug_key[3]~I .oe_power_up = "low";
defparam \debug_key[3]~I .oe_register_mode = "none";
defparam \debug_key[3]~I .oe_sync_reset = "none";
defparam \debug_key[3]~I .operation_mode = "input";
defparam \debug_key[3]~I .output_async_reset = "none";
defparam \debug_key[3]~I .output_power_up = "low";
defparam \debug_key[3]~I .output_register_mode = "none";
defparam \debug_key[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[0]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[0]));
// synopsys translate_off
defparam \debug_switch[0]~I .input_async_reset = "none";
defparam \debug_switch[0]~I .input_power_up = "low";
defparam \debug_switch[0]~I .input_register_mode = "none";
defparam \debug_switch[0]~I .input_sync_reset = "none";
defparam \debug_switch[0]~I .oe_async_reset = "none";
defparam \debug_switch[0]~I .oe_power_up = "low";
defparam \debug_switch[0]~I .oe_register_mode = "none";
defparam \debug_switch[0]~I .oe_sync_reset = "none";
defparam \debug_switch[0]~I .operation_mode = "input";
defparam \debug_switch[0]~I .output_async_reset = "none";
defparam \debug_switch[0]~I .output_power_up = "low";
defparam \debug_switch[0]~I .output_register_mode = "none";
defparam \debug_switch[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[1]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[1]));
// synopsys translate_off
defparam \debug_switch[1]~I .input_async_reset = "none";
defparam \debug_switch[1]~I .input_power_up = "low";
defparam \debug_switch[1]~I .input_register_mode = "none";
defparam \debug_switch[1]~I .input_sync_reset = "none";
defparam \debug_switch[1]~I .oe_async_reset = "none";
defparam \debug_switch[1]~I .oe_power_up = "low";
defparam \debug_switch[1]~I .oe_register_mode = "none";
defparam \debug_switch[1]~I .oe_sync_reset = "none";
defparam \debug_switch[1]~I .operation_mode = "input";
defparam \debug_switch[1]~I .output_async_reset = "none";
defparam \debug_switch[1]~I .output_power_up = "low";
defparam \debug_switch[1]~I .output_register_mode = "none";
defparam \debug_switch[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[2]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[2]));
// synopsys translate_off
defparam \debug_switch[2]~I .input_async_reset = "none";
defparam \debug_switch[2]~I .input_power_up = "low";
defparam \debug_switch[2]~I .input_register_mode = "none";
defparam \debug_switch[2]~I .input_sync_reset = "none";
defparam \debug_switch[2]~I .oe_async_reset = "none";
defparam \debug_switch[2]~I .oe_power_up = "low";
defparam \debug_switch[2]~I .oe_register_mode = "none";
defparam \debug_switch[2]~I .oe_sync_reset = "none";
defparam \debug_switch[2]~I .operation_mode = "input";
defparam \debug_switch[2]~I .output_async_reset = "none";
defparam \debug_switch[2]~I .output_power_up = "low";
defparam \debug_switch[2]~I .output_register_mode = "none";
defparam \debug_switch[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[3]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[3]));
// synopsys translate_off
defparam \debug_switch[3]~I .input_async_reset = "none";
defparam \debug_switch[3]~I .input_power_up = "low";
defparam \debug_switch[3]~I .input_register_mode = "none";
defparam \debug_switch[3]~I .input_sync_reset = "none";
defparam \debug_switch[3]~I .oe_async_reset = "none";
defparam \debug_switch[3]~I .oe_power_up = "low";
defparam \debug_switch[3]~I .oe_register_mode = "none";
defparam \debug_switch[3]~I .oe_sync_reset = "none";
defparam \debug_switch[3]~I .operation_mode = "input";
defparam \debug_switch[3]~I .output_async_reset = "none";
defparam \debug_switch[3]~I .output_power_up = "low";
defparam \debug_switch[3]~I .output_register_mode = "none";
defparam \debug_switch[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[4]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[4]));
// synopsys translate_off
defparam \debug_switch[4]~I .input_async_reset = "none";
defparam \debug_switch[4]~I .input_power_up = "low";
defparam \debug_switch[4]~I .input_register_mode = "none";
defparam \debug_switch[4]~I .input_sync_reset = "none";
defparam \debug_switch[4]~I .oe_async_reset = "none";
defparam \debug_switch[4]~I .oe_power_up = "low";
defparam \debug_switch[4]~I .oe_register_mode = "none";
defparam \debug_switch[4]~I .oe_sync_reset = "none";
defparam \debug_switch[4]~I .operation_mode = "input";
defparam \debug_switch[4]~I .output_async_reset = "none";
defparam \debug_switch[4]~I .output_power_up = "low";
defparam \debug_switch[4]~I .output_register_mode = "none";
defparam \debug_switch[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[5]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[5]));
// synopsys translate_off
defparam \debug_switch[5]~I .input_async_reset = "none";
defparam \debug_switch[5]~I .input_power_up = "low";
defparam \debug_switch[5]~I .input_register_mode = "none";
defparam \debug_switch[5]~I .input_sync_reset = "none";
defparam \debug_switch[5]~I .oe_async_reset = "none";
defparam \debug_switch[5]~I .oe_power_up = "low";
defparam \debug_switch[5]~I .oe_register_mode = "none";
defparam \debug_switch[5]~I .oe_sync_reset = "none";
defparam \debug_switch[5]~I .operation_mode = "input";
defparam \debug_switch[5]~I .output_async_reset = "none";
defparam \debug_switch[5]~I .output_power_up = "low";
defparam \debug_switch[5]~I .output_register_mode = "none";
defparam \debug_switch[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[6]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[6]));
// synopsys translate_off
defparam \debug_switch[6]~I .input_async_reset = "none";
defparam \debug_switch[6]~I .input_power_up = "low";
defparam \debug_switch[6]~I .input_register_mode = "none";
defparam \debug_switch[6]~I .input_sync_reset = "none";
defparam \debug_switch[6]~I .oe_async_reset = "none";
defparam \debug_switch[6]~I .oe_power_up = "low";
defparam \debug_switch[6]~I .oe_register_mode = "none";
defparam \debug_switch[6]~I .oe_sync_reset = "none";
defparam \debug_switch[6]~I .operation_mode = "input";
defparam \debug_switch[6]~I .output_async_reset = "none";
defparam \debug_switch[6]~I .output_power_up = "low";
defparam \debug_switch[6]~I .output_register_mode = "none";
defparam \debug_switch[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[7]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[7]));
// synopsys translate_off
defparam \debug_switch[7]~I .input_async_reset = "none";
defparam \debug_switch[7]~I .input_power_up = "low";
defparam \debug_switch[7]~I .input_register_mode = "none";
defparam \debug_switch[7]~I .input_sync_reset = "none";
defparam \debug_switch[7]~I .oe_async_reset = "none";
defparam \debug_switch[7]~I .oe_power_up = "low";
defparam \debug_switch[7]~I .oe_register_mode = "none";
defparam \debug_switch[7]~I .oe_sync_reset = "none";
defparam \debug_switch[7]~I .operation_mode = "input";
defparam \debug_switch[7]~I .output_async_reset = "none";
defparam \debug_switch[7]~I .output_power_up = "low";
defparam \debug_switch[7]~I .output_register_mode = "none";
defparam \debug_switch[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[8]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[8]));
// synopsys translate_off
defparam \debug_switch[8]~I .input_async_reset = "none";
defparam \debug_switch[8]~I .input_power_up = "low";
defparam \debug_switch[8]~I .input_register_mode = "none";
defparam \debug_switch[8]~I .input_sync_reset = "none";
defparam \debug_switch[8]~I .oe_async_reset = "none";
defparam \debug_switch[8]~I .oe_power_up = "low";
defparam \debug_switch[8]~I .oe_register_mode = "none";
defparam \debug_switch[8]~I .oe_sync_reset = "none";
defparam \debug_switch[8]~I .operation_mode = "input";
defparam \debug_switch[8]~I .output_async_reset = "none";
defparam \debug_switch[8]~I .output_power_up = "low";
defparam \debug_switch[8]~I .output_register_mode = "none";
defparam \debug_switch[8]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[9]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[9]));
// synopsys translate_off
defparam \debug_switch[9]~I .input_async_reset = "none";
defparam \debug_switch[9]~I .input_power_up = "low";
defparam \debug_switch[9]~I .input_register_mode = "none";
defparam \debug_switch[9]~I .input_sync_reset = "none";
defparam \debug_switch[9]~I .oe_async_reset = "none";
defparam \debug_switch[9]~I .oe_power_up = "low";
defparam \debug_switch[9]~I .oe_register_mode = "none";
defparam \debug_switch[9]~I .oe_sync_reset = "none";
defparam \debug_switch[9]~I .operation_mode = "input";
defparam \debug_switch[9]~I .output_async_reset = "none";
defparam \debug_switch[9]~I .output_power_up = "low";
defparam \debug_switch[9]~I .output_register_mode = "none";
defparam \debug_switch[9]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[10]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[10]));
// synopsys translate_off
defparam \debug_switch[10]~I .input_async_reset = "none";
defparam \debug_switch[10]~I .input_power_up = "low";
defparam \debug_switch[10]~I .input_register_mode = "none";
defparam \debug_switch[10]~I .input_sync_reset = "none";
defparam \debug_switch[10]~I .oe_async_reset = "none";
defparam \debug_switch[10]~I .oe_power_up = "low";
defparam \debug_switch[10]~I .oe_register_mode = "none";
defparam \debug_switch[10]~I .oe_sync_reset = "none";
defparam \debug_switch[10]~I .operation_mode = "input";
defparam \debug_switch[10]~I .output_async_reset = "none";
defparam \debug_switch[10]~I .output_power_up = "low";
defparam \debug_switch[10]~I .output_register_mode = "none";
defparam \debug_switch[10]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[11]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[11]));
// synopsys translate_off
defparam \debug_switch[11]~I .input_async_reset = "none";
defparam \debug_switch[11]~I .input_power_up = "low";
defparam \debug_switch[11]~I .input_register_mode = "none";
defparam \debug_switch[11]~I .input_sync_reset = "none";
defparam \debug_switch[11]~I .oe_async_reset = "none";
defparam \debug_switch[11]~I .oe_power_up = "low";
defparam \debug_switch[11]~I .oe_register_mode = "none";
defparam \debug_switch[11]~I .oe_sync_reset = "none";
defparam \debug_switch[11]~I .operation_mode = "input";
defparam \debug_switch[11]~I .output_async_reset = "none";
defparam \debug_switch[11]~I .output_power_up = "low";
defparam \debug_switch[11]~I .output_register_mode = "none";
defparam \debug_switch[11]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[12]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[12]));
// synopsys translate_off
defparam \debug_switch[12]~I .input_async_reset = "none";
defparam \debug_switch[12]~I .input_power_up = "low";
defparam \debug_switch[12]~I .input_register_mode = "none";
defparam \debug_switch[12]~I .input_sync_reset = "none";
defparam \debug_switch[12]~I .oe_async_reset = "none";
defparam \debug_switch[12]~I .oe_power_up = "low";
defparam \debug_switch[12]~I .oe_register_mode = "none";
defparam \debug_switch[12]~I .oe_sync_reset = "none";
defparam \debug_switch[12]~I .operation_mode = "input";
defparam \debug_switch[12]~I .output_async_reset = "none";
defparam \debug_switch[12]~I .output_power_up = "low";
defparam \debug_switch[12]~I .output_register_mode = "none";
defparam \debug_switch[12]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[13]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[13]));
// synopsys translate_off
defparam \debug_switch[13]~I .input_async_reset = "none";
defparam \debug_switch[13]~I .input_power_up = "low";
defparam \debug_switch[13]~I .input_register_mode = "none";
defparam \debug_switch[13]~I .input_sync_reset = "none";
defparam \debug_switch[13]~I .oe_async_reset = "none";
defparam \debug_switch[13]~I .oe_power_up = "low";
defparam \debug_switch[13]~I .oe_register_mode = "none";
defparam \debug_switch[13]~I .oe_sync_reset = "none";
defparam \debug_switch[13]~I .operation_mode = "input";
defparam \debug_switch[13]~I .output_async_reset = "none";
defparam \debug_switch[13]~I .output_power_up = "low";
defparam \debug_switch[13]~I .output_register_mode = "none";
defparam \debug_switch[13]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[14]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[14]));
// synopsys translate_off
defparam \debug_switch[14]~I .input_async_reset = "none";
defparam \debug_switch[14]~I .input_power_up = "low";
defparam \debug_switch[14]~I .input_register_mode = "none";
defparam \debug_switch[14]~I .input_sync_reset = "none";
defparam \debug_switch[14]~I .oe_async_reset = "none";
defparam \debug_switch[14]~I .oe_power_up = "low";
defparam \debug_switch[14]~I .oe_register_mode = "none";
defparam \debug_switch[14]~I .oe_sync_reset = "none";
defparam \debug_switch[14]~I .operation_mode = "input";
defparam \debug_switch[14]~I .output_async_reset = "none";
defparam \debug_switch[14]~I .output_power_up = "low";
defparam \debug_switch[14]~I .output_register_mode = "none";
defparam \debug_switch[14]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[15]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[15]));
// synopsys translate_off
defparam \debug_switch[15]~I .input_async_reset = "none";
defparam \debug_switch[15]~I .input_power_up = "low";
defparam \debug_switch[15]~I .input_register_mode = "none";
defparam \debug_switch[15]~I .input_sync_reset = "none";
defparam \debug_switch[15]~I .oe_async_reset = "none";
defparam \debug_switch[15]~I .oe_power_up = "low";
defparam \debug_switch[15]~I .oe_register_mode = "none";
defparam \debug_switch[15]~I .oe_sync_reset = "none";
defparam \debug_switch[15]~I .operation_mode = "input";
defparam \debug_switch[15]~I .output_async_reset = "none";
defparam \debug_switch[15]~I .output_power_up = "low";
defparam \debug_switch[15]~I .output_register_mode = "none";
defparam \debug_switch[15]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[16]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[16]));
// synopsys translate_off
defparam \debug_switch[16]~I .input_async_reset = "none";
defparam \debug_switch[16]~I .input_power_up = "low";
defparam \debug_switch[16]~I .input_register_mode = "none";
defparam \debug_switch[16]~I .input_sync_reset = "none";
defparam \debug_switch[16]~I .oe_async_reset = "none";
defparam \debug_switch[16]~I .oe_power_up = "low";
defparam \debug_switch[16]~I .oe_register_mode = "none";
defparam \debug_switch[16]~I .oe_sync_reset = "none";
defparam \debug_switch[16]~I .operation_mode = "input";
defparam \debug_switch[16]~I .output_async_reset = "none";
defparam \debug_switch[16]~I .output_power_up = "low";
defparam \debug_switch[16]~I .output_register_mode = "none";
defparam \debug_switch[16]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[17]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[17]));
// synopsys translate_off
defparam \debug_switch[17]~I .input_async_reset = "none";
defparam \debug_switch[17]~I .input_power_up = "low";
defparam \debug_switch[17]~I .input_register_mode = "none";
defparam \debug_switch[17]~I .input_sync_reset = "none";
defparam \debug_switch[17]~I .oe_async_reset = "none";
defparam \debug_switch[17]~I .oe_power_up = "low";
defparam \debug_switch[17]~I .oe_register_mode = "none";
defparam \debug_switch[17]~I .oe_sync_reset = "none";
defparam \debug_switch[17]~I .operation_mode = "input";
defparam \debug_switch[17]~I .output_async_reset = "none";
defparam \debug_switch[17]~I .output_power_up = "low";
defparam \debug_switch[17]~I .output_register_mode = "none";
defparam \debug_switch[17]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[0]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[0]));
// synopsys translate_off
defparam \debug_led_red[0]~I .input_async_reset = "none";
defparam \debug_led_red[0]~I .input_power_up = "low";
defparam \debug_led_red[0]~I .input_register_mode = "none";
defparam \debug_led_red[0]~I .input_sync_reset = "none";
defparam \debug_led_red[0]~I .oe_async_reset = "none";
defparam \debug_led_red[0]~I .oe_power_up = "low";
defparam \debug_led_red[0]~I .oe_register_mode = "none";
defparam \debug_led_red[0]~I .oe_sync_reset = "none";
defparam \debug_led_red[0]~I .operation_mode = "output";
defparam \debug_led_red[0]~I .output_async_reset = "none";
defparam \debug_led_red[0]~I .output_power_up = "low";
defparam \debug_led_red[0]~I .output_register_mode = "none";
defparam \debug_led_red[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[1]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[1]));
// synopsys translate_off
defparam \debug_led_red[1]~I .input_async_reset = "none";
defparam \debug_led_red[1]~I .input_power_up = "low";
defparam \debug_led_red[1]~I .input_register_mode = "none";
defparam \debug_led_red[1]~I .input_sync_reset = "none";
defparam \debug_led_red[1]~I .oe_async_reset = "none";
defparam \debug_led_red[1]~I .oe_power_up = "low";
defparam \debug_led_red[1]~I .oe_register_mode = "none";
defparam \debug_led_red[1]~I .oe_sync_reset = "none";
defparam \debug_led_red[1]~I .operation_mode = "output";
defparam \debug_led_red[1]~I .output_async_reset = "none";
defparam \debug_led_red[1]~I .output_power_up = "low";
defparam \debug_led_red[1]~I .output_register_mode = "none";
defparam \debug_led_red[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[2]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[2]));
// synopsys translate_off
defparam \debug_led_red[2]~I .input_async_reset = "none";
defparam \debug_led_red[2]~I .input_power_up = "low";
defparam \debug_led_red[2]~I .input_register_mode = "none";
defparam \debug_led_red[2]~I .input_sync_reset = "none";
defparam \debug_led_red[2]~I .oe_async_reset = "none";
defparam \debug_led_red[2]~I .oe_power_up = "low";
defparam \debug_led_red[2]~I .oe_register_mode = "none";
defparam \debug_led_red[2]~I .oe_sync_reset = "none";
defparam \debug_led_red[2]~I .operation_mode = "output";
defparam \debug_led_red[2]~I .output_async_reset = "none";
defparam \debug_led_red[2]~I .output_power_up = "low";
defparam \debug_led_red[2]~I .output_register_mode = "none";
defparam \debug_led_red[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[3]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[3]));
// synopsys translate_off
defparam \debug_led_red[3]~I .input_async_reset = "none";
defparam \debug_led_red[3]~I .input_power_up = "low";
defparam \debug_led_red[3]~I .input_register_mode = "none";
defparam \debug_led_red[3]~I .input_sync_reset = "none";
defparam \debug_led_red[3]~I .oe_async_reset = "none";
defparam \debug_led_red[3]~I .oe_power_up = "low";
defparam \debug_led_red[3]~I .oe_register_mode = "none";
defparam \debug_led_red[3]~I .oe_sync_reset = "none";
defparam \debug_led_red[3]~I .operation_mode = "output";
defparam \debug_led_red[3]~I .output_async_reset = "none";
defparam \debug_led_red[3]~I .output_power_up = "low";
defparam \debug_led_red[3]~I .output_register_mode = "none";
defparam \debug_led_red[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[4]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[4]));
// synopsys translate_off
defparam \debug_led_red[4]~I .input_async_reset = "none";
defparam \debug_led_red[4]~I .input_power_up = "low";
defparam \debug_led_red[4]~I .input_register_mode = "none";
defparam \debug_led_red[4]~I .input_sync_reset = "none";
defparam \debug_led_red[4]~I .oe_async_reset = "none";
defparam \debug_led_red[4]~I .oe_power_up = "low";
defparam \debug_led_red[4]~I .oe_register_mode = "none";
defparam \debug_led_red[4]~I .oe_sync_reset = "none";
defparam \debug_led_red[4]~I .operation_mode = "output";
defparam \debug_led_red[4]~I .output_async_reset = "none";
defparam \debug_led_red[4]~I .output_power_up = "low";
defparam \debug_led_red[4]~I .output_register_mode = "none";
defparam \debug_led_red[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[5]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[5]));
// synopsys translate_off
defparam \debug_led_red[5]~I .input_async_reset = "none";
defparam \debug_led_red[5]~I .input_power_up = "low";
defparam \debug_led_red[5]~I .input_register_mode = "none";
defparam \debug_led_red[5]~I .input_sync_reset = "none";
defparam \debug_led_red[5]~I .oe_async_reset = "none";
defparam \debug_led_red[5]~I .oe_power_up = "low";
defparam \debug_led_red[5]~I .oe_register_mode = "none";
defparam \debug_led_red[5]~I .oe_sync_reset = "none";
defparam \debug_led_red[5]~I .operation_mode = "output";
defparam \debug_led_red[5]~I .output_async_reset = "none";
defparam \debug_led_red[5]~I .output_power_up = "low";
defparam \debug_led_red[5]~I .output_register_mode = "none";
defparam \debug_led_red[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[6]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[6]));
// synopsys translate_off
defparam \debug_led_red[6]~I .input_async_reset = "none";
defparam \debug_led_red[6]~I .input_power_up = "low";
defparam \debug_led_red[6]~I .input_register_mode = "none";
defparam \debug_led_red[6]~I .input_sync_reset = "none";
defparam \debug_led_red[6]~I .oe_async_reset = "none";
defparam \debug_led_red[6]~I .oe_power_up = "low";
defparam \debug_led_red[6]~I .oe_register_mode = "none";
defparam \debug_led_red[6]~I .oe_sync_reset = "none";
defparam \debug_led_red[6]~I .operation_mode = "output";
defparam \debug_led_red[6]~I .output_async_reset = "none";
defparam \debug_led_red[6]~I .output_power_up = "low";
defparam \debug_led_red[6]~I .output_register_mode = "none";
defparam \debug_led_red[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[7]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[7]));
// synopsys translate_off
defparam \debug_led_red[7]~I .input_async_reset = "none";
defparam \debug_led_red[7]~I .input_power_up = "low";
defparam \debug_led_red[7]~I .input_register_mode = "none";
defparam \debug_led_red[7]~I .input_sync_reset = "none";
defparam \debug_led_red[7]~I .oe_async_reset = "none";
defparam \debug_led_red[7]~I .oe_power_up = "low";
defparam \debug_led_red[7]~I .oe_register_mode = "none";
defparam \debug_led_red[7]~I .oe_sync_reset = "none";
defparam \debug_led_red[7]~I .operation_mode = "output";
defparam \debug_led_red[7]~I .output_async_reset = "none";
defparam \debug_led_red[7]~I .output_power_up = "low";
defparam \debug_led_red[7]~I .output_register_mode = "none";
defparam \debug_led_red[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[8]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[8]));
// synopsys translate_off
defparam \debug_led_red[8]~I .input_async_reset = "none";
defparam \debug_led_red[8]~I .input_power_up = "low";
defparam \debug_led_red[8]~I .input_register_mode = "none";
defparam \debug_led_red[8]~I .input_sync_reset = "none";
defparam \debug_led_red[8]~I .oe_async_reset = "none";
defparam \debug_led_red[8]~I .oe_power_up = "low";
defparam \debug_led_red[8]~I .oe_register_mode = "none";
defparam \debug_led_red[8]~I .oe_sync_reset = "none";
defparam \debug_led_red[8]~I .operation_mode = "output";
defparam \debug_led_red[8]~I .output_async_reset = "none";
defparam \debug_led_red[8]~I .output_power_up = "low";
defparam \debug_led_red[8]~I .output_register_mode = "none";
defparam \debug_led_red[8]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[9]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[9]));
// synopsys translate_off
defparam \debug_led_red[9]~I .input_async_reset = "none";
defparam \debug_led_red[9]~I .input_power_up = "low";
defparam \debug_led_red[9]~I .input_register_mode = "none";
defparam \debug_led_red[9]~I .input_sync_reset = "none";
defparam \debug_led_red[9]~I .oe_async_reset = "none";
defparam \debug_led_red[9]~I .oe_power_up = "low";
defparam \debug_led_red[9]~I .oe_register_mode = "none";
defparam \debug_led_red[9]~I .oe_sync_reset = "none";
defparam \debug_led_red[9]~I .operation_mode = "output";
defparam \debug_led_red[9]~I .output_async_reset = "none";
defparam \debug_led_red[9]~I .output_power_up = "low";
defparam \debug_led_red[9]~I .output_register_mode = "none";
defparam \debug_led_red[9]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[10]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[10]));
// synopsys translate_off
defparam \debug_led_red[10]~I .input_async_reset = "none";
defparam \debug_led_red[10]~I .input_power_up = "low";
defparam \debug_led_red[10]~I .input_register_mode = "none";
defparam \debug_led_red[10]~I .input_sync_reset = "none";
defparam \debug_led_red[10]~I .oe_async_reset = "none";
defparam \debug_led_red[10]~I .oe_power_up = "low";
defparam \debug_led_red[10]~I .oe_register_mode = "none";
defparam \debug_led_red[10]~I .oe_sync_reset = "none";
defparam \debug_led_red[10]~I .operation_mode = "output";
defparam \debug_led_red[10]~I .output_async_reset = "none";
defparam \debug_led_red[10]~I .output_power_up = "low";
defparam \debug_led_red[10]~I .output_register_mode = "none";
defparam \debug_led_red[10]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[11]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[11]));
// synopsys translate_off
defparam \debug_led_red[11]~I .input_async_reset = "none";
defparam \debug_led_red[11]~I .input_power_up = "low";
defparam \debug_led_red[11]~I .input_register_mode = "none";
defparam \debug_led_red[11]~I .input_sync_reset = "none";
defparam \debug_led_red[11]~I .oe_async_reset = "none";
defparam \debug_led_red[11]~I .oe_power_up = "low";
defparam \debug_led_red[11]~I .oe_register_mode = "none";
defparam \debug_led_red[11]~I .oe_sync_reset = "none";
defparam \debug_led_red[11]~I .operation_mode = "output";
defparam \debug_led_red[11]~I .output_async_reset = "none";
defparam \debug_led_red[11]~I .output_power_up = "low";
defparam \debug_led_red[11]~I .output_register_mode = "none";
defparam \debug_led_red[11]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[12]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[12]));
// synopsys translate_off
defparam \debug_led_red[12]~I .input_async_reset = "none";
defparam \debug_led_red[12]~I .input_power_up = "low";
defparam \debug_led_red[12]~I .input_register_mode = "none";
defparam \debug_led_red[12]~I .input_sync_reset = "none";
defparam \debug_led_red[12]~I .oe_async_reset = "none";
defparam \debug_led_red[12]~I .oe_power_up = "low";
defparam \debug_led_red[12]~I .oe_register_mode = "none";
defparam \debug_led_red[12]~I .oe_sync_reset = "none";
defparam \debug_led_red[12]~I .operation_mode = "output";
defparam \debug_led_red[12]~I .output_async_reset = "none";
defparam \debug_led_red[12]~I .output_power_up = "low";
defparam \debug_led_red[12]~I .output_register_mode = "none";
defparam \debug_led_red[12]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[13]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[13]));
// synopsys translate_off
defparam \debug_led_red[13]~I .input_async_reset = "none";
defparam \debug_led_red[13]~I .input_power_up = "low";
defparam \debug_led_red[13]~I .input_register_mode = "none";
defparam \debug_led_red[13]~I .input_sync_reset = "none";
defparam \debug_led_red[13]~I .oe_async_reset = "none";
defparam \debug_led_red[13]~I .oe_power_up = "low";
defparam \debug_led_red[13]~I .oe_register_mode = "none";
defparam \debug_led_red[13]~I .oe_sync_reset = "none";
defparam \debug_led_red[13]~I .operation_mode = "output";
defparam \debug_led_red[13]~I .output_async_reset = "none";
defparam \debug_led_red[13]~I .output_power_up = "low";
defparam \debug_led_red[13]~I .output_register_mode = "none";
defparam \debug_led_red[13]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[14]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[14]));
// synopsys translate_off
defparam \debug_led_red[14]~I .input_async_reset = "none";
defparam \debug_led_red[14]~I .input_power_up = "low";
defparam \debug_led_red[14]~I .input_register_mode = "none";
defparam \debug_led_red[14]~I .input_sync_reset = "none";
defparam \debug_led_red[14]~I .oe_async_reset = "none";
defparam \debug_led_red[14]~I .oe_power_up = "low";
defparam \debug_led_red[14]~I .oe_register_mode = "none";
defparam \debug_led_red[14]~I .oe_sync_reset = "none";
defparam \debug_led_red[14]~I .operation_mode = "output";
defparam \debug_led_red[14]~I .output_async_reset = "none";
defparam \debug_led_red[14]~I .output_power_up = "low";
defparam \debug_led_red[14]~I .output_register_mode = "none";
defparam \debug_led_red[14]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[15]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[15]));
// synopsys translate_off
defparam \debug_led_red[15]~I .input_async_reset = "none";
defparam \debug_led_red[15]~I .input_power_up = "low";
defparam \debug_led_red[15]~I .input_register_mode = "none";
defparam \debug_led_red[15]~I .input_sync_reset = "none";
defparam \debug_led_red[15]~I .oe_async_reset = "none";
defparam \debug_led_red[15]~I .oe_power_up = "low";
defparam \debug_led_red[15]~I .oe_register_mode = "none";
defparam \debug_led_red[15]~I .oe_sync_reset = "none";
defparam \debug_led_red[15]~I .operation_mode = "output";
defparam \debug_led_red[15]~I .output_async_reset = "none";
defparam \debug_led_red[15]~I .output_power_up = "low";
defparam \debug_led_red[15]~I .output_register_mode = "none";
defparam \debug_led_red[15]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[16]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[16]));
// synopsys translate_off
defparam \debug_led_red[16]~I .input_async_reset = "none";
defparam \debug_led_red[16]~I .input_power_up = "low";
defparam \debug_led_red[16]~I .input_register_mode = "none";
defparam \debug_led_red[16]~I .input_sync_reset = "none";
defparam \debug_led_red[16]~I .oe_async_reset = "none";
defparam \debug_led_red[16]~I .oe_power_up = "low";
defparam \debug_led_red[16]~I .oe_register_mode = "none";
defparam \debug_led_red[16]~I .oe_sync_reset = "none";
defparam \debug_led_red[16]~I .operation_mode = "output";
defparam \debug_led_red[16]~I .output_async_reset = "none";
defparam \debug_led_red[16]~I .output_power_up = "low";
defparam \debug_led_red[16]~I .output_register_mode = "none";
defparam \debug_led_red[16]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_grn[0]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[0]));
// synopsys translate_off
defparam \debug_led_grn[0]~I .input_async_reset = "none";
defparam \debug_led_grn[0]~I .input_power_up = "low";
defparam \debug_led_grn[0]~I .input_register_mode = "none";
defparam \debug_led_grn[0]~I .input_sync_reset = "none";
defparam \debug_led_grn[0]~I .oe_async_reset = "none";
defparam \debug_led_grn[0]~I .oe_power_up = "low";
defparam \debug_led_grn[0]~I .oe_register_mode = "none";
defparam \debug_led_grn[0]~I .oe_sync_reset = "none";
defparam \debug_led_grn[0]~I .operation_mode = "output";
defparam \debug_led_grn[0]~I .output_async_reset = "none";
defparam \debug_led_grn[0]~I .output_power_up = "low";
defparam \debug_led_grn[0]~I .output_register_mode = "none";
defparam \debug_led_grn[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_grn[1]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[1]));
// synopsys translate_off
defparam \debug_led_grn[1]~I .input_async_reset = "none";
defparam \debug_led_grn[1]~I .input_power_up = "low";
defparam \debug_led_grn[1]~I .input_register_mode = "none";
defparam \debug_led_grn[1]~I .input_sync_reset = "none";
defparam \debug_led_grn[1]~I .oe_async_reset = "none";
defparam \debug_led_grn[1]~I .oe_power_up = "low";
defparam \debug_led_grn[1]~I .oe_register_mode = "none";
defparam \debug_led_grn[1]~I .oe_sync_reset = "none";
defparam \debug_led_grn[1]~I .operation_mode = "output";
defparam \debug_led_grn[1]~I .output_async_reset = "none";
defparam \debug_led_grn[1]~I .output_power_up = "low";
defparam \debug_led_grn[1]~I .output_register_mode = "none";
defparam \debug_led_grn[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_grn[2]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[2]));
// synopsys translate_off
defparam \debug_led_grn[2]~I .input_async_reset = "none";
defparam \debug_led_grn[2]~I .input_power_up = "low";
defparam \debug_led_grn[2]~I .input_register_mode = "none";
defparam \debug_led_grn[2]~I .input_sync_reset = "none";
defparam \debug_led_grn[2]~I .oe_async_reset = "none";
defparam \debug_led_grn[2]~I .oe_power_up = "low";
defparam \debug_led_grn[2]~I .oe_register_mode = "none";
defparam \debug_led_grn[2]~I .oe_sync_reset = "none";
defparam \debug_led_grn[2]~I .operation_mode = "output";
defparam \debug_led_grn[2]~I .output_async_reset = "none";
defparam \debug_led_grn[2]~I .output_power_up = "low";
defparam \debug_led_grn[2]~I .output_register_mode = "none";
defparam \debug_led_grn[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_grn[3]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[3]));
// synopsys translate_off
defparam \debug_led_grn[3]~I .input_async_reset = "none";
defparam \debug_led_grn[3]~I .input_power_up = "low";
defparam \debug_led_grn[3]~I .input_register_mode = "none";
defparam \debug_led_grn[3]~I .input_sync_reset = "none";
defparam \debug_led_grn[3]~I .oe_async_reset = "none";
defparam \debug_led_grn[3]~I .oe_power_up = "low";
defparam \debug_led_grn[3]~I .oe_register_mode = "none";
defparam \debug_led_grn[3]~I .oe_sync_reset = "none";
defparam \debug_led_grn[3]~I .operation_mode = "output";
defparam \debug_led_grn[3]~I .output_async_reset = "none";
defparam \debug_led_grn[3]~I .output_power_up = "low";
defparam \debug_led_grn[3]~I .output_register_mode = "none";
defparam \debug_led_grn[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_grn[4]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[4]));
// synopsys translate_off
defparam \debug_led_grn[4]~I .input_async_reset = "none";
defparam \debug_led_grn[4]~I .input_power_up = "low";
defparam \debug_led_grn[4]~I .input_register_mode = "none";
defparam \debug_led_grn[4]~I .input_sync_reset = "none";
defparam \debug_led_grn[4]~I .oe_async_reset = "none";
defparam \debug_led_grn[4]~I .oe_power_up = "low";
defparam \debug_led_grn[4]~I .oe_register_mode = "none";
defparam \debug_led_grn[4]~I .oe_sync_reset = "none";
defparam \debug_led_grn[4]~I .operation_mode = "output";
defparam \debug_led_grn[4]~I .output_async_reset = "none";
defparam \debug_led_grn[4]~I .output_power_up = "low";
defparam \debug_led_grn[4]~I .output_register_mode = "none";
defparam \debug_led_grn[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_grn[5]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[5]));
// synopsys translate_off
defparam \debug_led_grn[5]~I .input_async_reset = "none";
defparam \debug_led_grn[5]~I .input_power_up = "low";
defparam \debug_led_grn[5]~I .input_register_mode = "none";
defparam \debug_led_grn[5]~I .input_sync_reset = "none";
defparam \debug_led_grn[5]~I .oe_async_reset = "none";
defparam \debug_led_grn[5]~I .oe_power_up = "low";
defparam \debug_led_grn[5]~I .oe_register_mode = "none";
defparam \debug_led_grn[5]~I .oe_sync_reset = "none";
defparam \debug_led_grn[5]~I .operation_mode = "output";
defparam \debug_led_grn[5]~I .output_async_reset = "none";
defparam \debug_led_grn[5]~I .output_power_up = "low";
defparam \debug_led_grn[5]~I .output_register_mode = "none";
defparam \debug_led_grn[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[0]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[0]));
// synopsys translate_off
defparam \debug_sevenseg_0[0]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[0]~I .input_power_up = "low";
defparam \debug_sevenseg_0[0]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[0]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[0]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[0]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[0]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[0]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[0]~I .operation_mode = "output";
defparam \debug_sevenseg_0[0]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[0]~I .output_power_up = "low";
defparam \debug_sevenseg_0[0]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[1]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[1]));
// synopsys translate_off
defparam \debug_sevenseg_0[1]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[1]~I .input_power_up = "low";
defparam \debug_sevenseg_0[1]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[1]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[1]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[1]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[1]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[1]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[1]~I .operation_mode = "output";
defparam \debug_sevenseg_0[1]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[1]~I .output_power_up = "low";
defparam \debug_sevenseg_0[1]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[2]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[2]));
// synopsys translate_off
defparam \debug_sevenseg_0[2]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[2]~I .input_power_up = "low";
defparam \debug_sevenseg_0[2]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[2]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[2]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[2]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[2]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[2]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[2]~I .operation_mode = "output";
defparam \debug_sevenseg_0[2]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[2]~I .output_power_up = "low";
defparam \debug_sevenseg_0[2]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[3]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[3]));
// synopsys translate_off
defparam \debug_sevenseg_0[3]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[3]~I .input_power_up = "low";
defparam \debug_sevenseg_0[3]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[3]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[3]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[3]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[3]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[3]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[3]~I .operation_mode = "output";
defparam \debug_sevenseg_0[3]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[3]~I .output_power_up = "low";
defparam \debug_sevenseg_0[3]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[4]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[4]));
// synopsys translate_off
defparam \debug_sevenseg_0[4]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[4]~I .input_power_up = "low";
defparam \debug_sevenseg_0[4]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[4]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[4]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[4]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[4]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[4]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[4]~I .operation_mode = "output";
defparam \debug_sevenseg_0[4]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[4]~I .output_power_up = "low";
defparam \debug_sevenseg_0[4]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[5]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[5]));
// synopsys translate_off
defparam \debug_sevenseg_0[5]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[5]~I .input_power_up = "low";
defparam \debug_sevenseg_0[5]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[5]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[5]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[5]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[5]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[5]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[5]~I .operation_mode = "output";
defparam \debug_sevenseg_0[5]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[5]~I .output_power_up = "low";
defparam \debug_sevenseg_0[5]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[6]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[6]));
// synopsys translate_off
defparam \debug_sevenseg_0[6]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[6]~I .input_power_up = "low";
defparam \debug_sevenseg_0[6]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[6]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[6]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[6]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[6]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[6]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[6]~I .operation_mode = "output";
defparam \debug_sevenseg_0[6]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[6]~I .output_power_up = "low";
defparam \debug_sevenseg_0[6]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[7]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[7]));
// synopsys translate_off
defparam \debug_sevenseg_0[7]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[7]~I .input_power_up = "low";
defparam \debug_sevenseg_0[7]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[7]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[7]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[7]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[7]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[7]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[7]~I .operation_mode = "output";
defparam \debug_sevenseg_0[7]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[7]~I .output_power_up = "low";
defparam \debug_sevenseg_0[7]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[0]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[0]));
// synopsys translate_off
defparam \debug_sevenseg_1[0]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[0]~I .input_power_up = "low";
defparam \debug_sevenseg_1[0]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[0]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[0]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[0]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[0]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[0]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[0]~I .operation_mode = "output";
defparam \debug_sevenseg_1[0]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[0]~I .output_power_up = "low";
defparam \debug_sevenseg_1[0]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[1]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[1]));
// synopsys translate_off
defparam \debug_sevenseg_1[1]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[1]~I .input_power_up = "low";
defparam \debug_sevenseg_1[1]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[1]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[1]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[1]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[1]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[1]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[1]~I .operation_mode = "output";
defparam \debug_sevenseg_1[1]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[1]~I .output_power_up = "low";
defparam \debug_sevenseg_1[1]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[2]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[2]));
// synopsys translate_off
defparam \debug_sevenseg_1[2]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[2]~I .input_power_up = "low";
defparam \debug_sevenseg_1[2]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[2]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[2]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[2]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[2]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[2]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[2]~I .operation_mode = "output";
defparam \debug_sevenseg_1[2]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[2]~I .output_power_up = "low";
defparam \debug_sevenseg_1[2]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[3]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[3]));
// synopsys translate_off
defparam \debug_sevenseg_1[3]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[3]~I .input_power_up = "low";
defparam \debug_sevenseg_1[3]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[3]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[3]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[3]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[3]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[3]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[3]~I .operation_mode = "output";
defparam \debug_sevenseg_1[3]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[3]~I .output_power_up = "low";
defparam \debug_sevenseg_1[3]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[4]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[4]));
// synopsys translate_off
defparam \debug_sevenseg_1[4]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[4]~I .input_power_up = "low";
defparam \debug_sevenseg_1[4]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[4]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[4]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[4]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[4]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[4]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[4]~I .operation_mode = "output";
defparam \debug_sevenseg_1[4]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[4]~I .output_power_up = "low";
defparam \debug_sevenseg_1[4]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[5]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[5]));
// synopsys translate_off
defparam \debug_sevenseg_1[5]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[5]~I .input_power_up = "low";
defparam \debug_sevenseg_1[5]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[5]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[5]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[5]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[5]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[5]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[5]~I .operation_mode = "output";
defparam \debug_sevenseg_1[5]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[5]~I .output_power_up = "low";
defparam \debug_sevenseg_1[5]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[6]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[6]));
// synopsys translate_off
defparam \debug_sevenseg_1[6]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[6]~I .input_power_up = "low";
defparam \debug_sevenseg_1[6]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[6]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[6]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[6]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[6]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[6]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[6]~I .operation_mode = "output";
defparam \debug_sevenseg_1[6]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[6]~I .output_power_up = "low";
defparam \debug_sevenseg_1[6]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[7]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[7]));
// synopsys translate_off
defparam \debug_sevenseg_1[7]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[7]~I .input_power_up = "low";
defparam \debug_sevenseg_1[7]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[7]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[7]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[7]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[7]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[7]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[7]~I .operation_mode = "output";
defparam \debug_sevenseg_1[7]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[7]~I .output_power_up = "low";
defparam \debug_sevenseg_1[7]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[0]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[0]));
// synopsys translate_off
defparam \debug_sevenseg_2[0]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[0]~I .input_power_up = "low";
defparam \debug_sevenseg_2[0]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[0]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[0]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[0]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[0]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[0]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[0]~I .operation_mode = "output";
defparam \debug_sevenseg_2[0]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[0]~I .output_power_up = "low";
defparam \debug_sevenseg_2[0]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[1]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[1]));
// synopsys translate_off
defparam \debug_sevenseg_2[1]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[1]~I .input_power_up = "low";
defparam \debug_sevenseg_2[1]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[1]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[1]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[1]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[1]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[1]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[1]~I .operation_mode = "output";
defparam \debug_sevenseg_2[1]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[1]~I .output_power_up = "low";
defparam \debug_sevenseg_2[1]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[2]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[2]));
// synopsys translate_off
defparam \debug_sevenseg_2[2]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[2]~I .input_power_up = "low";
defparam \debug_sevenseg_2[2]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[2]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[2]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[2]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[2]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[2]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[2]~I .operation_mode = "output";
defparam \debug_sevenseg_2[2]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[2]~I .output_power_up = "low";
defparam \debug_sevenseg_2[2]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[3]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[3]));
// synopsys translate_off
defparam \debug_sevenseg_2[3]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[3]~I .input_power_up = "low";
defparam \debug_sevenseg_2[3]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[3]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[3]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[3]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[3]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[3]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[3]~I .operation_mode = "output";
defparam \debug_sevenseg_2[3]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[3]~I .output_power_up = "low";
defparam \debug_sevenseg_2[3]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[4]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[4]));
// synopsys translate_off
defparam \debug_sevenseg_2[4]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[4]~I .input_power_up = "low";
defparam \debug_sevenseg_2[4]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[4]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[4]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[4]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[4]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[4]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[4]~I .operation_mode = "output";
defparam \debug_sevenseg_2[4]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[4]~I .output_power_up = "low";
defparam \debug_sevenseg_2[4]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[5]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[5]));
// synopsys translate_off
defparam \debug_sevenseg_2[5]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[5]~I .input_power_up = "low";
defparam \debug_sevenseg_2[5]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[5]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[5]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[5]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[5]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[5]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[5]~I .operation_mode = "output";
defparam \debug_sevenseg_2[5]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[5]~I .output_power_up = "low";
defparam \debug_sevenseg_2[5]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[6]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[6]));
// synopsys translate_off
defparam \debug_sevenseg_2[6]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[6]~I .input_power_up = "low";
defparam \debug_sevenseg_2[6]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[6]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[6]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[6]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[6]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[6]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[6]~I .operation_mode = "output";
defparam \debug_sevenseg_2[6]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[6]~I .output_power_up = "low";
defparam \debug_sevenseg_2[6]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[7]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[7]));
// synopsys translate_off
defparam \debug_sevenseg_2[7]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[7]~I .input_power_up = "low";
defparam \debug_sevenseg_2[7]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[7]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[7]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[7]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[7]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[7]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[7]~I .operation_mode = "output";
defparam \debug_sevenseg_2[7]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[7]~I .output_power_up = "low";
defparam \debug_sevenseg_2[7]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[0]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[0]));
// synopsys translate_off
defparam \debug_sevenseg_3[0]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[0]~I .input_power_up = "low";
defparam \debug_sevenseg_3[0]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[0]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[0]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[0]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[0]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[0]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[0]~I .operation_mode = "output";
defparam \debug_sevenseg_3[0]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[0]~I .output_power_up = "low";
defparam \debug_sevenseg_3[0]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[1]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[1]));
// synopsys translate_off
defparam \debug_sevenseg_3[1]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[1]~I .input_power_up = "low";
defparam \debug_sevenseg_3[1]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[1]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[1]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[1]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[1]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[1]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[1]~I .operation_mode = "output";
defparam \debug_sevenseg_3[1]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[1]~I .output_power_up = "low";
defparam \debug_sevenseg_3[1]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[2]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[2]));
// synopsys translate_off
defparam \debug_sevenseg_3[2]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[2]~I .input_power_up = "low";
defparam \debug_sevenseg_3[2]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[2]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[2]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[2]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[2]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[2]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[2]~I .operation_mode = "output";
defparam \debug_sevenseg_3[2]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[2]~I .output_power_up = "low";
defparam \debug_sevenseg_3[2]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[3]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[3]));
// synopsys translate_off
defparam \debug_sevenseg_3[3]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[3]~I .input_power_up = "low";
defparam \debug_sevenseg_3[3]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[3]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[3]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[3]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[3]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[3]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[3]~I .operation_mode = "output";
defparam \debug_sevenseg_3[3]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[3]~I .output_power_up = "low";
defparam \debug_sevenseg_3[3]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[4]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[4]));
// synopsys translate_off
defparam \debug_sevenseg_3[4]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[4]~I .input_power_up = "low";
defparam \debug_sevenseg_3[4]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[4]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[4]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[4]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[4]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[4]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[4]~I .operation_mode = "output";
defparam \debug_sevenseg_3[4]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[4]~I .output_power_up = "low";
defparam \debug_sevenseg_3[4]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[5]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[5]));
// synopsys translate_off
defparam \debug_sevenseg_3[5]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[5]~I .input_power_up = "low";
defparam \debug_sevenseg_3[5]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[5]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[5]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[5]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[5]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[5]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[5]~I .operation_mode = "output";
defparam \debug_sevenseg_3[5]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[5]~I .output_power_up = "low";
defparam \debug_sevenseg_3[5]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[6]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[6]));
// synopsys translate_off
defparam \debug_sevenseg_3[6]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[6]~I .input_power_up = "low";
defparam \debug_sevenseg_3[6]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[6]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[6]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[6]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[6]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[6]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[6]~I .operation_mode = "output";
defparam \debug_sevenseg_3[6]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[6]~I .output_power_up = "low";
defparam \debug_sevenseg_3[6]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[7]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[7]));
// synopsys translate_off
defparam \debug_sevenseg_3[7]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[7]~I .input_power_up = "low";
defparam \debug_sevenseg_3[7]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[7]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[7]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[7]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[7]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[7]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[7]~I .operation_mode = "output";
defparam \debug_sevenseg_3[7]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[7]~I .output_power_up = "low";
defparam \debug_sevenseg_3[7]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[0]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[0]));
// synopsys translate_off
defparam \debug_sevenseg_4[0]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[0]~I .input_power_up = "low";
defparam \debug_sevenseg_4[0]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[0]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[0]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[0]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[0]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[0]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[0]~I .operation_mode = "output";
defparam \debug_sevenseg_4[0]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[0]~I .output_power_up = "low";
defparam \debug_sevenseg_4[0]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[1]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[1]));
// synopsys translate_off
defparam \debug_sevenseg_4[1]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[1]~I .input_power_up = "low";
defparam \debug_sevenseg_4[1]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[1]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[1]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[1]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[1]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[1]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[1]~I .operation_mode = "output";
defparam \debug_sevenseg_4[1]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[1]~I .output_power_up = "low";
defparam \debug_sevenseg_4[1]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[2]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[2]));
// synopsys translate_off
defparam \debug_sevenseg_4[2]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[2]~I .input_power_up = "low";
defparam \debug_sevenseg_4[2]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[2]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[2]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[2]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[2]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[2]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[2]~I .operation_mode = "output";
defparam \debug_sevenseg_4[2]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[2]~I .output_power_up = "low";
defparam \debug_sevenseg_4[2]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[3]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[3]));
// synopsys translate_off
defparam \debug_sevenseg_4[3]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[3]~I .input_power_up = "low";
defparam \debug_sevenseg_4[3]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[3]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[3]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[3]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[3]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[3]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[3]~I .operation_mode = "output";
defparam \debug_sevenseg_4[3]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[3]~I .output_power_up = "low";
defparam \debug_sevenseg_4[3]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[4]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[4]));
// synopsys translate_off
defparam \debug_sevenseg_4[4]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[4]~I .input_power_up = "low";
defparam \debug_sevenseg_4[4]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[4]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[4]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[4]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[4]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[4]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[4]~I .operation_mode = "output";
defparam \debug_sevenseg_4[4]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[4]~I .output_power_up = "low";
defparam \debug_sevenseg_4[4]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[5]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[5]));
// synopsys translate_off
defparam \debug_sevenseg_4[5]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[5]~I .input_power_up = "low";
defparam \debug_sevenseg_4[5]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[5]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[5]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[5]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[5]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[5]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[5]~I .operation_mode = "output";
defparam \debug_sevenseg_4[5]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[5]~I .output_power_up = "low";
defparam \debug_sevenseg_4[5]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[6]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[6]));
// synopsys translate_off
defparam \debug_sevenseg_4[6]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[6]~I .input_power_up = "low";
defparam \debug_sevenseg_4[6]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[6]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[6]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[6]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[6]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[6]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[6]~I .operation_mode = "output";
defparam \debug_sevenseg_4[6]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[6]~I .output_power_up = "low";
defparam \debug_sevenseg_4[6]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[7]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[7]));
// synopsys translate_off
defparam \debug_sevenseg_4[7]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[7]~I .input_power_up = "low";
defparam \debug_sevenseg_4[7]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[7]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[7]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[7]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[7]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[7]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[7]~I .operation_mode = "output";
defparam \debug_sevenseg_4[7]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[7]~I .output_power_up = "low";
defparam \debug_sevenseg_4[7]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[0]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[0]));
// synopsys translate_off
defparam \debug_sevenseg_5[0]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[0]~I .input_power_up = "low";
defparam \debug_sevenseg_5[0]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[0]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[0]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[0]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[0]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[0]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[0]~I .operation_mode = "output";
defparam \debug_sevenseg_5[0]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[0]~I .output_power_up = "low";
defparam \debug_sevenseg_5[0]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[1]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[1]));
// synopsys translate_off
defparam \debug_sevenseg_5[1]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[1]~I .input_power_up = "low";
defparam \debug_sevenseg_5[1]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[1]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[1]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[1]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[1]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[1]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[1]~I .operation_mode = "output";
defparam \debug_sevenseg_5[1]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[1]~I .output_power_up = "low";
defparam \debug_sevenseg_5[1]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[2]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[2]));
// synopsys translate_off
defparam \debug_sevenseg_5[2]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[2]~I .input_power_up = "low";
defparam \debug_sevenseg_5[2]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[2]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[2]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[2]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[2]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[2]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[2]~I .operation_mode = "output";
defparam \debug_sevenseg_5[2]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[2]~I .output_power_up = "low";
defparam \debug_sevenseg_5[2]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[3]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[3]));
// synopsys translate_off
defparam \debug_sevenseg_5[3]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[3]~I .input_power_up = "low";
defparam \debug_sevenseg_5[3]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[3]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[3]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[3]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[3]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[3]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[3]~I .operation_mode = "output";
defparam \debug_sevenseg_5[3]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[3]~I .output_power_up = "low";
defparam \debug_sevenseg_5[3]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[4]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[4]));
// synopsys translate_off
defparam \debug_sevenseg_5[4]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[4]~I .input_power_up = "low";
defparam \debug_sevenseg_5[4]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[4]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[4]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[4]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[4]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[4]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[4]~I .operation_mode = "output";
defparam \debug_sevenseg_5[4]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[4]~I .output_power_up = "low";
defparam \debug_sevenseg_5[4]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[5]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[5]));
// synopsys translate_off
defparam \debug_sevenseg_5[5]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[5]~I .input_power_up = "low";
defparam \debug_sevenseg_5[5]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[5]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[5]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[5]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[5]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[5]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[5]~I .operation_mode = "output";
defparam \debug_sevenseg_5[5]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[5]~I .output_power_up = "low";
defparam \debug_sevenseg_5[5]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[6]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[6]));
// synopsys translate_off
defparam \debug_sevenseg_5[6]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[6]~I .input_power_up = "low";
defparam \debug_sevenseg_5[6]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[6]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[6]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[6]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[6]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[6]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[6]~I .operation_mode = "output";
defparam \debug_sevenseg_5[6]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[6]~I .output_power_up = "low";
defparam \debug_sevenseg_5[6]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[7]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[7]));
// synopsys translate_off
defparam \debug_sevenseg_5[7]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[7]~I .input_power_up = "low";
defparam \debug_sevenseg_5[7]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[7]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[7]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[7]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[7]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[7]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[7]~I .operation_mode = "output";
defparam \debug_sevenseg_5[7]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[7]~I .output_power_up = "low";
defparam \debug_sevenseg_5[7]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[7]~I .output_sync_reset = "none";
// synopsys translate_on

endmodule
