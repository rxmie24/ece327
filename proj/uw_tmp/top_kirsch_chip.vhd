-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 10.1 Build 153 11/29/2010 SJ Full Version"

-- DATE "03/23/2016 15:44:17"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_kirsch_chip IS
    PORT (
	nrst : IN std_logic;
	clk : IN std_logic;
	rxflex : IN std_logic;
	txflex : OUT std_logic;
	o_sevenseg : OUT std_logic_vector(15 DOWNTO 0);
	o_mode : OUT std_logic_vector(1 DOWNTO 0);
	o_nrst : OUT std_logic;
	debug_key : IN std_logic_vector(3 DOWNTO 1);
	debug_switch : IN std_logic_vector(17 DOWNTO 0);
	debug_led_red : OUT std_logic_vector(16 DOWNTO 0);
	debug_led_grn : OUT std_logic_vector(5 DOWNTO 0);
	debug_sevenseg_0 : OUT std_logic_vector(7 DOWNTO 0);
	debug_sevenseg_1 : OUT std_logic_vector(7 DOWNTO 0);
	debug_sevenseg_2 : OUT std_logic_vector(7 DOWNTO 0);
	debug_sevenseg_3 : OUT std_logic_vector(7 DOWNTO 0);
	debug_sevenseg_4 : OUT std_logic_vector(7 DOWNTO 0);
	debug_sevenseg_5 : OUT std_logic_vector(7 DOWNTO 0)
	);
END top_kirsch_chip;

-- Design Ports Information
-- txflex	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[1]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[2]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[5]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[6]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[7]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[8]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[9]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[10]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[11]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[12]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[13]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[14]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[15]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_mode[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_mode[1]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_nrst	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_key[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_led_red[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[0]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[1]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[2]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[4]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[5]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[6]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[7]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[0]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[1]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[2]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[4]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[5]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[6]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[7]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[1]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[2]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[4]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[5]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[6]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[7]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[0]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[1]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[2]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[4]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[5]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[6]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[7]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[0]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[1]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[2]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[4]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[5]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[6]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[7]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[0]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[1]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[2]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[4]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[5]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[6]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[7]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nrst	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rxflex	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_kirsch_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nrst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rxflex : std_logic;
SIGNAL ww_txflex : std_logic;
SIGNAL ww_o_sevenseg : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_nrst : std_logic;
SIGNAL ww_debug_key : std_logic_vector(3 DOWNTO 1);
SIGNAL ww_debug_switch : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_led_red : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_debug_led_grn : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_debug_sevenseg_0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_sevenseg_1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_sevenseg_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_sevenseg_3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_sevenseg_4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_sevenseg_5 : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_uw_uart|ld_sdout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx27627z3\ : std_logic;
SIGNAL \u_uw_uart|nx18433z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z6\ : std_logic;
SIGNAL \u_uw_uart|waitcount_8_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_5_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_3_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_0_\ : std_logic;
SIGNAL \u_uw_uart|nx39480z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_5__dup_104\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_6__dup_106\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_0__dup_94\ : std_logic;
SIGNAL \u_uw_uart|mdata_0_\ : std_logic;
SIGNAL \u_uw_uart|inc_d_3_\ : std_logic;
SIGNAL \u_uw_uart|inc_d_5_\ : std_logic;
SIGNAL \u_uw_uart|inc_d_8_\ : std_logic;
SIGNAL \u_uw_uart|inc_d_0_\ : std_logic;
SIGNAL \u_uw_uart|nx33757z2\ : std_logic;
SIGNAL \u_uw_uart|nx33757z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_10_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51271z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx13547z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx12550z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_10_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx14544z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx8373z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx8373z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx11364z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx9370z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx10367z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx11364z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx13547z1\ : std_logic;
SIGNAL \u_uw_uart|mdata_7_\ : std_logic;
SIGNAL \u_uw_uart|nx39739z1\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18093z11\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_1__dup_96\ : std_logic;
SIGNAL \nrst~combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18093z10\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_2__dup_98\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18093z9\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_3__dup_100\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18093z8\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_4__dup_102\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDivisor_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18093z7\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18093z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18093z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_7__dup_108\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18093z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_8__dup_110\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_8_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18093z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_9__dup_112\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_9_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18093z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_10__dup_113\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_10_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18093z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_11_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_11_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TopTx\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx48926z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx5605z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxFSM_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx48926z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx49923z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx50920z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx50920z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxFSM_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx27627z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx60244z8\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx60244z7\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51271z2~_wirecell_combout\ : std_logic;
SIGNAL \rxflex~combout\ : std_logic;
SIGNAL \u_uw_uart|rawrx\ : std_logic;
SIGNAL \u_uw_uart|rawrx~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx16538z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx13547z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx13547z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx11553z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx16538z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51271z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_8_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_8_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51271z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51271z7\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51271z8\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51271z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51271z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx60244z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx60244z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx60244z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx60244z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx60244z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_9_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_9_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51271z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TopRx\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx43465z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxRDY\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15376z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxErr\ : std_logic;
SIGNAL \u_uw_uart|nx22081z15\ : std_logic;
SIGNAL \u_uw_uart|inc_d_1_\ : std_logic;
SIGNAL \u_uw_uart|nx21084z2\ : std_logic;
SIGNAL \u_uw_uart|nx58116z1\ : std_logic;
SIGNAL \u_uw_uart|o_pixavail_dup_0\ : std_logic;
SIGNAL \u_uw_uart|nx21084z1\ : std_logic;
SIGNAL \u_uw_uart|waitcount_1_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z14\ : std_logic;
SIGNAL \u_uw_uart|inc_d_2_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_2_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z13\ : std_logic;
SIGNAL \u_uw_uart|nx22081z12\ : std_logic;
SIGNAL \u_uw_uart|inc_d_4_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_4_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z11\ : std_logic;
SIGNAL \u_uw_uart|nx22081z10\ : std_logic;
SIGNAL \u_uw_uart|nx22081z9\ : std_logic;
SIGNAL \u_uw_uart|inc_d_7_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_7_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z8\ : std_logic;
SIGNAL \u_uw_uart|nx22081z7\ : std_logic;
SIGNAL \u_uw_uart|inc_d_9_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_9_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z6\ : std_logic;
SIGNAL \u_uw_uart|nx22081z5\ : std_logic;
SIGNAL \u_uw_uart|inc_d_11_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_11_\ : std_logic;
SIGNAL \u_uw_uart|inc_d_10_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_10_\ : std_logic;
SIGNAL \u_uw_uart|nx39480z4\ : std_logic;
SIGNAL \u_uw_uart|inc_d_6_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_6_\ : std_logic;
SIGNAL \u_uw_uart|nx39480z5\ : std_logic;
SIGNAL \u_uw_uart|nx22081z4\ : std_logic;
SIGNAL \u_uw_uart|nx22081z3\ : std_logic;
SIGNAL \u_uw_uart|inc_d_13_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_13_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z2\ : std_logic;
SIGNAL \u_uw_uart|inc_d_14_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_14_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z1\ : std_logic;
SIGNAL \u_uw_uart|inc_d_15_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_15_\ : std_logic;
SIGNAL \u_uw_uart|inc_d_12_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_12_\ : std_logic;
SIGNAL \u_uw_uart|nx39480z3\ : std_logic;
SIGNAL \u_uw_uart|nx39480z2\ : std_logic;
SIGNAL \u_uw_uart|nx39480z1\ : std_logic;
SIGNAL \u_uw_uart|ack\ : std_logic;
SIGNAL \u_uw_uart|nx46385z3\ : std_logic;
SIGNAL \u_uw_uart|nx46385z2\ : std_logic;
SIGNAL \u_uw_uart|dsend\ : std_logic;
SIGNAL \u_uw_uart|nx38650z1\ : std_logic;
SIGNAL \u_uw_uart|state\ : std_logic;
SIGNAL \u_uw_uart|nx45847z1\ : std_logic;
SIGNAL \u_uw_uart|sdout_0_\ : std_logic;
SIGNAL \u_uw_uart|sdout_0_~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx27627z5~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_2_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_4_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|nx41859z1\ : std_logic;
SIGNAL \u_uw_uart|sdout_4_\ : std_logic;
SIGNAL \u_uw_uart|sdout_4_~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_5_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_6_~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|nx39865z1\ : std_logic;
SIGNAL \u_uw_uart|sdout_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx35603z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_8_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx27627z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx27627z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx27627z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18332z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|ALT_INV_nx18332z1\ : std_logic;
SIGNAL \ALT_INV_nrst~combout\ : std_logic;

BEGIN

ww_nrst <= nrst;
ww_clk <= clk;
ww_rxflex <= rxflex;
txflex <= ww_txflex;
o_sevenseg <= ww_o_sevenseg;
o_mode <= ww_o_mode;
o_nrst <= ww_o_nrst;
ww_debug_key <= debug_key;
ww_debug_switch <= debug_switch;
debug_led_red <= ww_debug_led_red;
debug_led_grn <= ww_debug_led_grn;
debug_sevenseg_0 <= ww_debug_sevenseg_0;
debug_sevenseg_1 <= ww_debug_sevenseg_1;
debug_sevenseg_2 <= ww_debug_sevenseg_2;
debug_sevenseg_3 <= ww_debug_sevenseg_3;
debug_sevenseg_4 <= ww_debug_sevenseg_4;
debug_sevenseg_5 <= ww_debug_sevenseg_5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\u_uw_uart|i_uarts|ALT_INV_nx18332z1\ <= NOT \u_uw_uart|i_uarts|nx18332z1\;
\ALT_INV_nrst~combout\ <= NOT \nrst~combout\;

-- Location: LCFF_X61_Y16_N11
\u_uw_uart|reg_ld_sdout\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx18433z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|ld_sdout\);

-- Location: LCCOMB_X57_Y16_N14
\u_uw_uart|i_uarts|ix27627z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx27627z3\ = (\u_uw_uart|i_uarts|TxFSM_1_\ & ((\u_uw_uart|i_uarts|TxFSM_0_\) # (!\u_uw_uart|i_uarts|TopTx\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx27627z3\);

-- Location: LCCOMB_X61_Y16_N10
\u_uw_uart|ix18433z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx18433z1\ = (!\u_uw_uart|state\ & ((\u_uw_uart|ld_sdout\) # (\u_uw_uart|dsend\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|state\,
	datac => \u_uw_uart|ld_sdout\,
	datad => \u_uw_uart|dsend\,
	combout => \u_uw_uart|nx18433z1\);

-- Location: LCFF_X60_Y16_N13
\u_uw_uart|i_uarts|reg_q_6__dup_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_6__dup_106\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_6_\);

-- Location: LCFF_X60_Y16_N11
\u_uw_uart|i_uarts|reg_q_5__dup_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_5__dup_104\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_5_\);

-- Location: LCFF_X60_Y16_N25
\u_uw_uart|i_uarts|reg_q_0__dup_10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_0__dup_94\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_0_\);

-- Location: LCCOMB_X61_Y16_N12
\u_uw_uart|i_uarts|ix32400z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z6\ = (\u_uw_uart|i_uarts|TxDiv_1_\) # (\u_uw_uart|i_uarts|TxDiv_0_\ $ (\u_uw_uart|i_uarts|RxDivisor_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxDiv_0_\,
	datac => \u_uw_uart|i_uarts|RxDivisor_4_\,
	datad => \u_uw_uart|i_uarts|TxDiv_1_\,
	combout => \u_uw_uart|i_uarts|nx32400z6\);

-- Location: LCFF_X62_Y17_N17
\u_uw_uart|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_8_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_8_\);

-- Location: LCFF_X62_Y17_N11
\u_uw_uart|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_5_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_5_\);

-- Location: LCFF_X62_Y17_N7
\u_uw_uart|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_3_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_3_\);

-- Location: LCFF_X61_Y17_N9
\u_uw_uart|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_0_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_0_\);

-- Location: LCCOMB_X61_Y17_N2
\u_uw_uart|ix39480z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z6\ = (!\u_uw_uart|waitcount_1_\ & (!\u_uw_uart|waitcount_0_\ & (!\u_uw_uart|waitcount_3_\ & \u_uw_uart|waitcount_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_1_\,
	datab => \u_uw_uart|waitcount_0_\,
	datac => \u_uw_uart|waitcount_3_\,
	datad => \u_uw_uart|waitcount_2_\,
	combout => \u_uw_uart|nx39480z6\);

-- Location: LCCOMB_X60_Y16_N10
\u_uw_uart|i_uarts|ix18093z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_5__dup_104\ = (\u_uw_uart|i_uarts|TxDiv_5_\ & (!\u_uw_uart|i_uarts|nx18093z7\)) # (!\u_uw_uart|i_uarts|TxDiv_5_\ & ((\u_uw_uart|i_uarts|nx18093z7\) # (GND)))
-- \u_uw_uart|i_uarts|nx18093z6\ = CARRY((!\u_uw_uart|i_uarts|nx18093z7\) # (!\u_uw_uart|i_uarts|TxDiv_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_5_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx18093z7\,
	combout => \u_uw_uart|i_uarts|inc_d_5__dup_104\,
	cout => \u_uw_uart|i_uarts|nx18093z6\);

-- Location: LCCOMB_X60_Y16_N12
\u_uw_uart|i_uarts|ix18093z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_6__dup_106\ = (\u_uw_uart|i_uarts|TxDiv_6_\ & (\u_uw_uart|i_uarts|nx18093z6\ $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_6_\ & (!\u_uw_uart|i_uarts|nx18093z6\ & VCC))
-- \u_uw_uart|i_uarts|nx18093z5\ = CARRY((\u_uw_uart|i_uarts|TxDiv_6_\ & !\u_uw_uart|i_uarts|nx18093z6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_6_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx18093z6\,
	combout => \u_uw_uart|i_uarts|inc_d_6__dup_106\,
	cout => \u_uw_uart|i_uarts|nx18093z5\);

-- Location: LCCOMB_X60_Y16_N24
\u_uw_uart|i_uarts|ix17415z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_0__dup_94\ = !\u_uw_uart|i_uarts|TxDiv_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|TxDiv_0_\,
	combout => \u_uw_uart|i_uarts|inc_d_0__dup_94\);

-- Location: LCFF_X61_Y17_N31
\u_uw_uart|reg_mdata_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx33757z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_0_\);

-- Location: LCCOMB_X62_Y17_N6
\u_uw_uart|ix22081z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_3_\ = (\u_uw_uart|waitcount_3_\ & (!\u_uw_uart|nx22081z13\)) # (!\u_uw_uart|waitcount_3_\ & ((\u_uw_uart|nx22081z13\) # (GND)))
-- \u_uw_uart|nx22081z12\ = CARRY((!\u_uw_uart|nx22081z13\) # (!\u_uw_uart|waitcount_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_3_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z13\,
	combout => \u_uw_uart|inc_d_3_\,
	cout => \u_uw_uart|nx22081z12\);

-- Location: LCCOMB_X62_Y17_N10
\u_uw_uart|ix22081z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_5_\ = (\u_uw_uart|waitcount_5_\ & (!\u_uw_uart|nx22081z11\)) # (!\u_uw_uart|waitcount_5_\ & ((\u_uw_uart|nx22081z11\) # (GND)))
-- \u_uw_uart|nx22081z10\ = CARRY((!\u_uw_uart|nx22081z11\) # (!\u_uw_uart|waitcount_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_5_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z11\,
	combout => \u_uw_uart|inc_d_5_\,
	cout => \u_uw_uart|nx22081z10\);

-- Location: LCCOMB_X62_Y17_N16
\u_uw_uart|ix22081z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_8_\ = (\u_uw_uart|waitcount_8_\ & (\u_uw_uart|nx22081z8\ $ (GND))) # (!\u_uw_uart|waitcount_8_\ & (!\u_uw_uart|nx22081z8\ & VCC))
-- \u_uw_uart|nx22081z7\ = CARRY((\u_uw_uart|waitcount_8_\ & !\u_uw_uart|nx22081z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_8_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z8\,
	combout => \u_uw_uart|inc_d_8_\,
	cout => \u_uw_uart|nx22081z7\);

-- Location: LCCOMB_X61_Y17_N8
\u_uw_uart|ix51271z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_0_\ = !\u_uw_uart|waitcount_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|waitcount_0_\,
	combout => \u_uw_uart|inc_d_0_\);

-- Location: LCCOMB_X61_Y17_N12
\u_uw_uart|ix33757z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx33757z2\ = (\nrst~combout\ & ((\u_uw_uart|o_pixavail_dup_0\) # (\u_uw_uart|ack\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~combout\,
	datac => \u_uw_uart|o_pixavail_dup_0\,
	datad => \u_uw_uart|ack\,
	combout => \u_uw_uart|nx33757z2\);

-- Location: LCCOMB_X61_Y17_N30
\u_uw_uart|ix33757z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx33757z1\ = (\u_uw_uart|nx46385z2\ & (\u_uw_uart|nx33757z2\)) # (!\u_uw_uart|nx46385z2\ & ((\u_uw_uart|mdata_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx33757z2\,
	datac => \u_uw_uart|mdata_0_\,
	datad => \u_uw_uart|nx46385z2\,
	combout => \u_uw_uart|nx33757z1\);

-- Location: LCFF_X59_Y16_N13
\u_uw_uart|i_uarts|reg_RxFSM_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx12550z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx13547z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_4_\);

-- Location: LCFF_X62_Y16_N7
\u_uw_uart|i_uarts|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_1_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx51271z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_1_\);

-- Location: LCFF_X62_Y16_N25
\u_uw_uart|i_uarts|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_10_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx51271z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_10_\);

-- Location: LCFF_X62_Y16_N17
\u_uw_uart|i_uarts|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_6_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx51271z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_6_\);

-- Location: LCCOMB_X62_Y16_N26
\u_uw_uart|i_uarts|ix51271z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51271z6\ = (\u_uw_uart|i_uarts|RxDiv_6_\ & ((!\u_uw_uart|i_uarts|RxDiv_7_\) # (!\u_uw_uart|i_uarts|RxDivisor_4_\))) # (!\u_uw_uart|i_uarts|RxDiv_6_\ & ((\u_uw_uart|i_uarts|RxDivisor_4_\) # (\u_uw_uart|i_uarts|RxDiv_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_6_\,
	datac => \u_uw_uart|i_uarts|RxDivisor_4_\,
	datad => \u_uw_uart|i_uarts|RxDiv_7_\,
	combout => \u_uw_uart|i_uarts|nx51271z6\);

-- Location: LCFF_X62_Y16_N13
\u_uw_uart|i_uarts|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_4_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx51271z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_4_\);

-- Location: LCFF_X59_Y16_N9
\u_uw_uart|i_uarts|reg_RxFSM_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx14544z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx13547z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_2_\);

-- Location: LCFF_X58_Y16_N11
\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx8373z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx11364z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_3_\);

-- Location: LCFF_X58_Y16_N29
\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx9370z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx11364z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_2_\);

-- Location: LCFF_X58_Y16_N23
\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx10367z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx11364z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_1_\);

-- Location: LCFF_X58_Y16_N25
\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx11364z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx11364z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_0_\);

-- Location: LCCOMB_X59_Y16_N18
\u_uw_uart|i_uarts|ix13547z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx13547z2\ = (\u_uw_uart|i_uarts|RxBitCnt_3_\ & (!\u_uw_uart|i_uarts|RxBitCnt_2_\ & (!\u_uw_uart|i_uarts|RxBitCnt_0_\ & !\u_uw_uart|i_uarts|RxBitCnt_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxBitCnt_3_\,
	datab => \u_uw_uart|i_uarts|RxBitCnt_2_\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx13547z2\);

-- Location: LCCOMB_X59_Y16_N12
\u_uw_uart|i_uarts|ix12550z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx12550z1\ = (\u_uw_uart|i_uarts|nx13547z2\ & \u_uw_uart|i_uarts|RxFSM_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|nx13547z2\,
	datac => \u_uw_uart|i_uarts|RxFSM_2_\,
	combout => \u_uw_uart|i_uarts|nx12550z1\);

-- Location: LCCOMB_X62_Y16_N6
\u_uw_uart|i_uarts|ix52268z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_1_\ = (\u_uw_uart|i_uarts|RxDiv_1_\ & (!\u_uw_uart|i_uarts|nx52268z1\)) # (!\u_uw_uart|i_uarts|RxDiv_1_\ & ((\u_uw_uart|i_uarts|nx52268z1\) # (GND)))
-- \u_uw_uart|i_uarts|nx60244z8\ = CARRY((!\u_uw_uart|i_uarts|nx52268z1\) # (!\u_uw_uart|i_uarts|RxDiv_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_1_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx52268z1\,
	combout => \u_uw_uart|i_uarts|inc_d_1_\,
	cout => \u_uw_uart|i_uarts|nx60244z8\);

-- Location: LCCOMB_X62_Y16_N12
\u_uw_uart|i_uarts|ix60244z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_4_\ = (\u_uw_uart|i_uarts|RxDiv_4_\ & (\u_uw_uart|i_uarts|nx60244z6\ $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_4_\ & (!\u_uw_uart|i_uarts|nx60244z6\ & VCC))
-- \u_uw_uart|i_uarts|nx60244z5\ = CARRY((\u_uw_uart|i_uarts|RxDiv_4_\ & !\u_uw_uart|i_uarts|nx60244z6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_4_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx60244z6\,
	combout => \u_uw_uart|i_uarts|inc_d_4_\,
	cout => \u_uw_uart|i_uarts|nx60244z5\);

-- Location: LCCOMB_X62_Y16_N16
\u_uw_uart|i_uarts|ix60244z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_6_\ = (\u_uw_uart|i_uarts|RxDiv_6_\ & (\u_uw_uart|i_uarts|nx60244z4\ $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_6_\ & (!\u_uw_uart|i_uarts|nx60244z4\ & VCC))
-- \u_uw_uart|i_uarts|nx60244z3\ = CARRY((\u_uw_uart|i_uarts|RxDiv_6_\ & !\u_uw_uart|i_uarts|nx60244z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_6_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx60244z4\,
	combout => \u_uw_uart|i_uarts|inc_d_6_\,
	cout => \u_uw_uart|i_uarts|nx60244z3\);

-- Location: LCCOMB_X62_Y16_N22
\u_uw_uart|i_uarts|ix60244z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_9_\ = (\u_uw_uart|i_uarts|RxDiv_9_\ & (!\u_uw_uart|i_uarts|nx60244z1\)) # (!\u_uw_uart|i_uarts|RxDiv_9_\ & ((\u_uw_uart|i_uarts|nx60244z1\) # (GND)))
-- \u_uw_uart|i_uarts|nx17096z1\ = CARRY((!\u_uw_uart|i_uarts|nx60244z1\) # (!\u_uw_uart|i_uarts|RxDiv_9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxDiv_9_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx60244z1\,
	combout => \u_uw_uart|i_uarts|inc_d_9_\,
	cout => \u_uw_uart|i_uarts|nx17096z1\);

-- Location: LCCOMB_X62_Y16_N24
\u_uw_uart|i_uarts|ix17096z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_10_\ = \u_uw_uart|i_uarts|RxDiv_10_\ $ (!\u_uw_uart|i_uarts|nx17096z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_10_\,
	cin => \u_uw_uart|i_uarts|nx17096z1\,
	combout => \u_uw_uart|i_uarts|inc_d_10_\);

-- Location: LCFF_X59_Y16_N29
\u_uw_uart|i_uarts|reg_RxFSM_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx13547z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx13547z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_3_\);

-- Location: LCCOMB_X59_Y16_N8
\u_uw_uart|i_uarts|ix14544z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx14544z1\ = (\u_uw_uart|i_uarts|RxFSM_3_\) # ((\u_uw_uart|i_uarts|RxFSM_1_\ & \u_uw_uart|i_uarts|nx16538z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxFSM_1_\,
	datab => \u_uw_uart|i_uarts|RxFSM_3_\,
	datad => \u_uw_uart|i_uarts|nx16538z2\,
	combout => \u_uw_uart|i_uarts|nx14544z1\);

-- Location: LCCOMB_X59_Y16_N30
\u_uw_uart|i_uarts|ix8373z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx8373z2\ = (\u_uw_uart|i_uarts|RxBitCnt_0_\ & \u_uw_uart|i_uarts|RxBitCnt_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx8373z2\);

-- Location: LCCOMB_X58_Y16_N10
\u_uw_uart|i_uarts|ix8373z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx8373z1\ = (\u_uw_uart|i_uarts|nx51271z2\ & (\u_uw_uart|i_uarts|RxBitCnt_3_\ $ (((\u_uw_uart|i_uarts|RxBitCnt_2_\ & \u_uw_uart|i_uarts|nx8373z2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxBitCnt_2_\,
	datab => \u_uw_uart|i_uarts|nx8373z2\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_3_\,
	datad => \u_uw_uart|i_uarts|nx51271z2\,
	combout => \u_uw_uart|i_uarts|nx8373z1\);

-- Location: LCCOMB_X59_Y16_N16
\u_uw_uart|i_uarts|ix11364z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx11364z2\ = (\u_uw_uart|i_uarts|RxFSM_3_\ & (\u_uw_uart|i_uarts|TopRx\)) # (!\u_uw_uart|i_uarts|RxFSM_3_\ & ((!\u_uw_uart|i_uarts|nx51271z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TopRx\,
	datac => \u_uw_uart|i_uarts|RxFSM_3_\,
	datad => \u_uw_uart|i_uarts|nx51271z2\,
	combout => \u_uw_uart|i_uarts|nx11364z2\);

-- Location: LCCOMB_X58_Y16_N28
\u_uw_uart|i_uarts|ix9370z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx9370z1\ = (\u_uw_uart|i_uarts|nx51271z2\ & (\u_uw_uart|i_uarts|RxBitCnt_2_\ $ (((\u_uw_uart|i_uarts|RxBitCnt_0_\ & \u_uw_uart|i_uarts|RxBitCnt_1_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datab => \u_uw_uart|i_uarts|nx51271z2\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_2_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx9370z1\);

-- Location: LCCOMB_X58_Y16_N22
\u_uw_uart|i_uarts|ix10367z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx10367z1\ = (\u_uw_uart|i_uarts|nx51271z2\ & (\u_uw_uart|i_uarts|RxBitCnt_0_\ $ (\u_uw_uart|i_uarts|RxBitCnt_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	datad => \u_uw_uart|i_uarts|nx51271z2\,
	combout => \u_uw_uart|i_uarts|nx10367z1\);

-- Location: LCCOMB_X58_Y16_N24
\u_uw_uart|i_uarts|ix11364z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx11364z1\ = (!\u_uw_uart|i_uarts|RxBitCnt_0_\ & \u_uw_uart|i_uarts|nx51271z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|nx51271z2\,
	combout => \u_uw_uart|i_uarts|nx11364z1\);

-- Location: LCCOMB_X59_Y16_N28
\u_uw_uart|i_uarts|ix13547z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx13547z1\ = (!\u_uw_uart|i_uarts|nx13547z2\ & \u_uw_uart|i_uarts|RxFSM_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|nx13547z2\,
	datac => \u_uw_uart|i_uarts|RxFSM_2_\,
	combout => \u_uw_uart|i_uarts|nx13547z1\);

-- Location: LCFF_X61_Y17_N7
\u_uw_uart|reg_mdata_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx39739z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_7_\);

-- Location: LCCOMB_X61_Y17_N6
\u_uw_uart|ix39739z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39739z1\ = (\u_uw_uart|nx46385z2\ & (\nrst~combout\)) # (!\u_uw_uart|nx46385z2\ & ((\u_uw_uart|mdata_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~combout\,
	datac => \u_uw_uart|mdata_7_\,
	datad => \u_uw_uart|nx46385z2\,
	combout => \u_uw_uart|nx39739z1\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X60_Y16_N0
\u_uw_uart|i_uarts|ix18093z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx18093z11\ = CARRY(\u_uw_uart|i_uarts|TxDiv_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_0_\,
	datad => VCC,
	cout => \u_uw_uart|i_uarts|nx18093z11\);

-- Location: LCCOMB_X60_Y16_N2
\u_uw_uart|i_uarts|ix18093z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_1__dup_96\ = (\u_uw_uart|i_uarts|TxDiv_1_\ & (!\u_uw_uart|i_uarts|nx18093z11\)) # (!\u_uw_uart|i_uarts|TxDiv_1_\ & ((\u_uw_uart|i_uarts|nx18093z11\) # (GND)))
-- \u_uw_uart|i_uarts|nx18093z10\ = CARRY((!\u_uw_uart|i_uarts|nx18093z11\) # (!\u_uw_uart|i_uarts|TxDiv_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxDiv_1_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx18093z11\,
	combout => \u_uw_uart|i_uarts|inc_d_1__dup_96\,
	cout => \u_uw_uart|i_uarts|nx18093z10\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nrst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_nrst,
	combout => \nrst~combout\);

-- Location: LCFF_X60_Y16_N3
\u_uw_uart|i_uarts|reg_q_1__dup_9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_1__dup_96\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_1_\);

-- Location: LCCOMB_X60_Y16_N4
\u_uw_uart|i_uarts|ix18093z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_2__dup_98\ = (\u_uw_uart|i_uarts|TxDiv_2_\ & (\u_uw_uart|i_uarts|nx18093z10\ $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_2_\ & (!\u_uw_uart|i_uarts|nx18093z10\ & VCC))
-- \u_uw_uart|i_uarts|nx18093z9\ = CARRY((\u_uw_uart|i_uarts|TxDiv_2_\ & !\u_uw_uart|i_uarts|nx18093z10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxDiv_2_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx18093z10\,
	combout => \u_uw_uart|i_uarts|inc_d_2__dup_98\,
	cout => \u_uw_uart|i_uarts|nx18093z9\);

-- Location: LCFF_X60_Y16_N5
\u_uw_uart|i_uarts|reg_q_2__dup_8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_2__dup_98\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_2_\);

-- Location: LCCOMB_X60_Y16_N6
\u_uw_uart|i_uarts|ix18093z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_3__dup_100\ = (\u_uw_uart|i_uarts|TxDiv_3_\ & (!\u_uw_uart|i_uarts|nx18093z9\)) # (!\u_uw_uart|i_uarts|TxDiv_3_\ & ((\u_uw_uart|i_uarts|nx18093z9\) # (GND)))
-- \u_uw_uart|i_uarts|nx18093z8\ = CARRY((!\u_uw_uart|i_uarts|nx18093z9\) # (!\u_uw_uart|i_uarts|TxDiv_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_3_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx18093z9\,
	combout => \u_uw_uart|i_uarts|inc_d_3__dup_100\,
	cout => \u_uw_uart|i_uarts|nx18093z8\);

-- Location: LCFF_X60_Y16_N7
\u_uw_uart|i_uarts|reg_q_3__dup_7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_3__dup_100\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_3_\);

-- Location: LCCOMB_X60_Y16_N8
\u_uw_uart|i_uarts|ix18093z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_4__dup_102\ = (\u_uw_uart|i_uarts|TxDiv_4_\ & (\u_uw_uart|i_uarts|nx18093z8\ $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_4_\ & (!\u_uw_uart|i_uarts|nx18093z8\ & VCC))
-- \u_uw_uart|i_uarts|nx18093z7\ = CARRY((\u_uw_uart|i_uarts|TxDiv_4_\ & !\u_uw_uart|i_uarts|nx18093z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxDiv_4_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx18093z8\,
	combout => \u_uw_uart|i_uarts|inc_d_4__dup_102\,
	cout => \u_uw_uart|i_uarts|nx18093z7\);

-- Location: LCFF_X60_Y16_N9
\u_uw_uart|i_uarts|reg_q_4__dup_6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_4__dup_102\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_4_\);

-- Location: LCCOMB_X61_Y16_N26
\u_uw_uart|i_uarts|ix32400z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z5\ = (\u_uw_uart|i_uarts|TxDiv_3_\) # (\u_uw_uart|i_uarts|RxDivisor_4_\ $ (\u_uw_uart|i_uarts|TxDiv_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDivisor_4_\,
	datac => \u_uw_uart|i_uarts|TxDiv_3_\,
	datad => \u_uw_uart|i_uarts|TxDiv_4_\,
	combout => \u_uw_uart|i_uarts|nx32400z5\);

-- Location: LCCOMB_X61_Y16_N20
\u_uw_uart|i_uarts|RxDivisor_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout\);

-- Location: LCFF_X61_Y16_N21
\u_uw_uart|i_uarts|reg_RxDivisor_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDivisor_4_\);

-- Location: LCCOMB_X60_Y16_N14
\u_uw_uart|i_uarts|ix18093z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_7__dup_108\ = (\u_uw_uart|i_uarts|TxDiv_7_\ & (!\u_uw_uart|i_uarts|nx18093z5\)) # (!\u_uw_uart|i_uarts|TxDiv_7_\ & ((\u_uw_uart|i_uarts|nx18093z5\) # (GND)))
-- \u_uw_uart|i_uarts|nx18093z4\ = CARRY((!\u_uw_uart|i_uarts|nx18093z5\) # (!\u_uw_uart|i_uarts|TxDiv_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxDiv_7_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx18093z5\,
	combout => \u_uw_uart|i_uarts|inc_d_7__dup_108\,
	cout => \u_uw_uart|i_uarts|nx18093z4\);

-- Location: LCFF_X60_Y16_N15
\u_uw_uart|i_uarts|reg_q_7__dup_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_7__dup_108\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_7_\);

-- Location: LCCOMB_X60_Y16_N16
\u_uw_uart|i_uarts|ix18093z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_8__dup_110\ = (\u_uw_uart|i_uarts|TxDiv_8_\ & (\u_uw_uart|i_uarts|nx18093z4\ $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_8_\ & (!\u_uw_uart|i_uarts|nx18093z4\ & VCC))
-- \u_uw_uart|i_uarts|nx18093z3\ = CARRY((\u_uw_uart|i_uarts|TxDiv_8_\ & !\u_uw_uart|i_uarts|nx18093z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_8_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx18093z4\,
	combout => \u_uw_uart|i_uarts|inc_d_8__dup_110\,
	cout => \u_uw_uart|i_uarts|nx18093z3\);

-- Location: LCFF_X60_Y16_N17
\u_uw_uart|i_uarts|reg_q_8__dup_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_8__dup_110\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_8_\);

-- Location: LCCOMB_X60_Y16_N18
\u_uw_uart|i_uarts|ix18093z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_9__dup_112\ = (\u_uw_uart|i_uarts|TxDiv_9_\ & (!\u_uw_uart|i_uarts|nx18093z3\)) # (!\u_uw_uart|i_uarts|TxDiv_9_\ & ((\u_uw_uart|i_uarts|nx18093z3\) # (GND)))
-- \u_uw_uart|i_uarts|nx18093z2\ = CARRY((!\u_uw_uart|i_uarts|nx18093z3\) # (!\u_uw_uart|i_uarts|TxDiv_9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxDiv_9_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx18093z3\,
	combout => \u_uw_uart|i_uarts|inc_d_9__dup_112\,
	cout => \u_uw_uart|i_uarts|nx18093z2\);

-- Location: LCFF_X60_Y16_N19
\u_uw_uart|i_uarts|reg_q_9__dup_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_9__dup_112\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_9_\);

-- Location: LCCOMB_X61_Y16_N14
\u_uw_uart|i_uarts|ix32400z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z4\ = (\u_uw_uart|i_uarts|TxDiv_9_\) # (\u_uw_uart|i_uarts|TxDiv_8_\ $ (\u_uw_uart|i_uarts|RxDivisor_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxDiv_8_\,
	datac => \u_uw_uart|i_uarts|RxDivisor_4_\,
	datad => \u_uw_uart|i_uarts|TxDiv_9_\,
	combout => \u_uw_uart|i_uarts|nx32400z4\);

-- Location: LCCOMB_X61_Y16_N16
\u_uw_uart|i_uarts|ix32400z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z3\ = (\u_uw_uart|i_uarts|nx32400z4\) # ((\u_uw_uart|i_uarts|TxDiv_5_\ & ((!\u_uw_uart|i_uarts|TxDiv_7_\) # (!\u_uw_uart|i_uarts|RxDivisor_4_\))) # (!\u_uw_uart|i_uarts|TxDiv_5_\ & ((\u_uw_uart|i_uarts|RxDivisor_4_\) # 
-- (\u_uw_uart|i_uarts|TxDiv_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_5_\,
	datab => \u_uw_uart|i_uarts|RxDivisor_4_\,
	datac => \u_uw_uart|i_uarts|nx32400z4\,
	datad => \u_uw_uart|i_uarts|TxDiv_7_\,
	combout => \u_uw_uart|i_uarts|nx32400z3\);

-- Location: LCCOMB_X60_Y16_N20
\u_uw_uart|i_uarts|ix18093z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_10__dup_113\ = (\u_uw_uart|i_uarts|TxDiv_10_\ & (\u_uw_uart|i_uarts|nx18093z2\ $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_10_\ & (!\u_uw_uart|i_uarts|nx18093z2\ & VCC))
-- \u_uw_uart|i_uarts|nx18093z1\ = CARRY((\u_uw_uart|i_uarts|TxDiv_10_\ & !\u_uw_uart|i_uarts|nx18093z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_10_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx18093z2\,
	combout => \u_uw_uart|i_uarts|inc_d_10__dup_113\,
	cout => \u_uw_uart|i_uarts|nx18093z1\);

-- Location: LCFF_X60_Y16_N21
\u_uw_uart|i_uarts|reg_q_10__dup_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_10__dup_113\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_10_\);

-- Location: LCCOMB_X60_Y16_N22
\u_uw_uart|i_uarts|ix18093z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_11_\ = \u_uw_uart|i_uarts|nx18093z1\ $ (\u_uw_uart|i_uarts|TxDiv_11_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|TxDiv_11_\,
	cin => \u_uw_uart|i_uarts|nx18093z1\,
	combout => \u_uw_uart|i_uarts|inc_d_11_\);

-- Location: LCFF_X60_Y16_N23
\u_uw_uart|i_uarts|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_11_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_11_\);

-- Location: LCCOMB_X61_Y16_N18
\u_uw_uart|i_uarts|ix32400z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z2\ = (!\u_uw_uart|i_uarts|TxDiv_6_\ & (!\u_uw_uart|i_uarts|TxDiv_2_\ & (!\u_uw_uart|i_uarts|TxDiv_10_\ & !\u_uw_uart|i_uarts|TxDiv_11_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_6_\,
	datab => \u_uw_uart|i_uarts|TxDiv_2_\,
	datac => \u_uw_uart|i_uarts|TxDiv_10_\,
	datad => \u_uw_uart|i_uarts|TxDiv_11_\,
	combout => \u_uw_uart|i_uarts|nx32400z2\);

-- Location: LCCOMB_X61_Y16_N28
\u_uw_uart|i_uarts|ix32400z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z1\ = (!\u_uw_uart|i_uarts|nx32400z6\ & (!\u_uw_uart|i_uarts|nx32400z5\ & (!\u_uw_uart|i_uarts|nx32400z3\ & \u_uw_uart|i_uarts|nx32400z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx32400z6\,
	datab => \u_uw_uart|i_uarts|nx32400z5\,
	datac => \u_uw_uart|i_uarts|nx32400z3\,
	datad => \u_uw_uart|i_uarts|nx32400z2\,
	combout => \u_uw_uart|i_uarts|nx32400z1\);

-- Location: LCFF_X61_Y16_N29
\u_uw_uart|i_uarts|reg_TopTx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx32400z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TopTx\);

-- Location: LCCOMB_X57_Y16_N10
\u_uw_uart|i_uarts|ix48926z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx48926z1\ = ((!\u_uw_uart|i_uarts|TxFSM_1_\ & \u_uw_uart|i_uarts|TopTx\)) # (!\u_uw_uart|i_uarts|TxBitCnt_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx48926z1\);

-- Location: LCCOMB_X57_Y16_N16
\u_uw_uart|i_uarts|ix5605z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx5605z1\ = \u_uw_uart|i_uarts|TxFSM_1_\ $ (((\u_uw_uart|i_uarts|TxFSM_0_\ & !\u_uw_uart|i_uarts|nx4608z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|i_uarts|nx4608z2\,
	combout => \u_uw_uart|i_uarts|nx5605z1\);

-- Location: LCFF_X57_Y16_N17
\u_uw_uart|i_uarts|reg_TxFSM_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx5605z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxFSM_1_\);

-- Location: LCCOMB_X57_Y16_N18
\u_uw_uart|i_uarts|ix48926z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx48926z2\ = (\u_uw_uart|i_uarts|TopTx\ & (\u_uw_uart|i_uarts|TxFSM_0_\ $ (\u_uw_uart|i_uarts|TxFSM_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx48926z2\);

-- Location: LCFF_X57_Y16_N11
\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx48926z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx48926z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_0_\);

-- Location: LCCOMB_X57_Y16_N8
\u_uw_uart|i_uarts|ix49923z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx49923z1\ = (\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|TxBitCnt_0_\ $ ((!\u_uw_uart|i_uarts|TxBitCnt_1_\)))) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & (!\u_uw_uart|i_uarts|TopTx\ & (\u_uw_uart|i_uarts|TxBitCnt_0_\ $ 
-- (!\u_uw_uart|i_uarts|TxBitCnt_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datab => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	datad => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx49923z1\);

-- Location: LCFF_X57_Y16_N9
\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx49923z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx48926z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_1_\);

-- Location: LCCOMB_X57_Y16_N4
\u_uw_uart|i_uarts|ix50920z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx50920z2\ = (!\u_uw_uart|i_uarts|TxFSM_1_\ & \u_uw_uart|i_uarts|TopTx\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx50920z2\);

-- Location: LCCOMB_X57_Y16_N22
\u_uw_uart|i_uarts|ix51917z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z2\ = (\u_uw_uart|i_uarts|TxBitCnt_0_\) # (\u_uw_uart|i_uarts|TxBitCnt_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx51917z2\);

-- Location: LCCOMB_X57_Y16_N20
\u_uw_uart|i_uarts|ix51917z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z1\ = (\u_uw_uart|i_uarts|nx50920z2\) # (\u_uw_uart|i_uarts|TxBitCnt_3_\ $ (((!\u_uw_uart|i_uarts|TxBitCnt_2_\ & !\u_uw_uart|i_uarts|nx51917z2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	datab => \u_uw_uart|i_uarts|nx50920z2\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_3_\,
	datad => \u_uw_uart|i_uarts|nx51917z2\,
	combout => \u_uw_uart|i_uarts|nx51917z1\);

-- Location: LCFF_X57_Y16_N21
\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx51917z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx48926z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_3_\);

-- Location: LCCOMB_X57_Y16_N6
\u_uw_uart|i_uarts|ix50920z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx50920z1\ = (!\u_uw_uart|i_uarts|nx50920z2\ & (\u_uw_uart|i_uarts|TxBitCnt_2_\ $ (((!\u_uw_uart|i_uarts|TxBitCnt_0_\ & !\u_uw_uart|i_uarts|TxBitCnt_1_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datab => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	datad => \u_uw_uart|i_uarts|nx50920z2\,
	combout => \u_uw_uart|i_uarts|nx50920z1\);

-- Location: LCFF_X57_Y16_N7
\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx50920z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx48926z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_2_\);

-- Location: LCCOMB_X57_Y16_N24
\u_uw_uart|i_uarts|ix4608z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z4\ = (!\u_uw_uart|i_uarts|TxBitCnt_3_\ & !\u_uw_uart|i_uarts|TxBitCnt_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|TxBitCnt_3_\,
	datad => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	combout => \u_uw_uart|i_uarts|nx4608z4\);

-- Location: LCCOMB_X57_Y16_N2
\u_uw_uart|i_uarts|ix4608z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z3\ = ((\u_uw_uart|i_uarts|TxBitCnt_1_\) # ((!\u_uw_uart|i_uarts|TopTx\) # (!\u_uw_uart|i_uarts|nx4608z4\))) # (!\u_uw_uart|i_uarts|TxBitCnt_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datab => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	datac => \u_uw_uart|i_uarts|nx4608z4\,
	datad => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx4608z3\);

-- Location: LCCOMB_X57_Y16_N28
\u_uw_uart|i_uarts|ix4608z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z5\ = (\u_uw_uart|i_uarts|TxFSM_0_\ & (((\u_uw_uart|i_uarts|TxFSM_1_\) # (!\u_uw_uart|i_uarts|TopTx\)))) # (!\u_uw_uart|i_uarts|TxFSM_0_\ & (!\u_uw_uart|ld_sdout\ & (!\u_uw_uart|i_uarts|TxFSM_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|ld_sdout\,
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx4608z5\);

-- Location: LCCOMB_X57_Y16_N30
\u_uw_uart|i_uarts|ix4608z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z2\ = (\u_uw_uart|i_uarts|TxFSM_1_\ & ((\u_uw_uart|i_uarts|nx4608z5\ & (!\u_uw_uart|i_uarts|TopTx\)) # (!\u_uw_uart|i_uarts|nx4608z5\ & ((\u_uw_uart|i_uarts|nx4608z3\))))) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & 
-- (((\u_uw_uart|i_uarts|nx4608z5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopTx\,
	datab => \u_uw_uart|i_uarts|nx4608z3\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|i_uarts|nx4608z5\,
	combout => \u_uw_uart|i_uarts|nx4608z2\);

-- Location: LCCOMB_X57_Y16_N26
\u_uw_uart|i_uarts|ix4608z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z1\ = \u_uw_uart|i_uarts|TxFSM_0_\ $ (!\u_uw_uart|i_uarts|nx4608z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|TxFSM_0_\,
	datad => \u_uw_uart|i_uarts|nx4608z2\,
	combout => \u_uw_uart|i_uarts|nx4608z1\);

-- Location: LCFF_X57_Y16_N27
\u_uw_uart|i_uarts|reg_TxFSM_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx4608z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxFSM_0_\);

-- Location: LCCOMB_X57_Y16_N12
\u_uw_uart|i_uarts|ix27627z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx27627z2\ = (!\u_uw_uart|i_uarts|TxFSM_1_\ & ((\u_uw_uart|i_uarts|TxFSM_0_\ & ((!\u_uw_uart|i_uarts|TopTx\))) # (!\u_uw_uart|i_uarts|TxFSM_0_\ & (!\u_uw_uart|ld_sdout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|ld_sdout\,
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx27627z2\);

-- Location: LCCOMB_X62_Y16_N4
\u_uw_uart|i_uarts|ix52268z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx52268z1\ = CARRY(\u_uw_uart|i_uarts|RxDiv_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_0_\,
	datad => VCC,
	cout => \u_uw_uart|i_uarts|nx52268z1\);

-- Location: LCCOMB_X62_Y16_N8
\u_uw_uart|i_uarts|ix60244z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_2_\ = (\u_uw_uart|i_uarts|RxDiv_2_\ & (\u_uw_uart|i_uarts|nx60244z8\ $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_2_\ & (!\u_uw_uart|i_uarts|nx60244z8\ & VCC))
-- \u_uw_uart|i_uarts|nx60244z7\ = CARRY((\u_uw_uart|i_uarts|RxDiv_2_\ & !\u_uw_uart|i_uarts|nx60244z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_2_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx60244z8\,
	combout => \u_uw_uart|i_uarts|inc_d_2_\,
	cout => \u_uw_uart|i_uarts|nx60244z7\);

-- Location: LCCOMB_X62_Y16_N10
\u_uw_uart|i_uarts|ix60244z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_3_\ = (\u_uw_uart|i_uarts|RxDiv_3_\ & (!\u_uw_uart|i_uarts|nx60244z7\)) # (!\u_uw_uart|i_uarts|RxDiv_3_\ & ((\u_uw_uart|i_uarts|nx60244z7\) # (GND)))
-- \u_uw_uart|i_uarts|nx60244z6\ = CARRY((!\u_uw_uart|i_uarts|nx60244z7\) # (!\u_uw_uart|i_uarts|RxDiv_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxDiv_3_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx60244z7\,
	combout => \u_uw_uart|i_uarts|inc_d_3_\,
	cout => \u_uw_uart|i_uarts|nx60244z6\);

-- Location: LCCOMB_X59_Y16_N6
\u_uw_uart|i_uarts|nx51271z2~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51271z2~_wirecell_combout\ = !\u_uw_uart|i_uarts|nx51271z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|nx51271z2\,
	combout => \u_uw_uart|i_uarts|nx51271z2~_wirecell_combout\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rxflex~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rxflex,
	combout => \rxflex~combout\);

-- Location: LCCOMB_X59_Y16_N24
\u_uw_uart|ix15671z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rawrx\ = (\nrst~combout\ & \rxflex~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nrst~combout\,
	datad => \rxflex~combout\,
	combout => \u_uw_uart|rawrx\);

-- Location: LCCOMB_X59_Y16_N2
\u_uw_uart|rawrx~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rawrx~_wirecell_combout\ = !\u_uw_uart|rawrx\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|rawrx\,
	combout => \u_uw_uart|rawrx~_wirecell_combout\);

-- Location: LCFF_X59_Y16_N3
\u_uw_uart|i_uarts|reg_Rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rawrx~_wirecell_combout\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx16538z2\);

-- Location: LCCOMB_X59_Y16_N26
\u_uw_uart|i_uarts|ix13547z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx13547z4\ = (\u_uw_uart|i_uarts|RxFSM_5_\ & (!\u_uw_uart|rawrx\)) # (!\u_uw_uart|i_uarts|RxFSM_5_\ & (((!\u_uw_uart|i_uarts|TopRx\ & \u_uw_uart|i_uarts|nx51271z2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|rawrx\,
	datab => \u_uw_uart|i_uarts|RxFSM_5_\,
	datac => \u_uw_uart|i_uarts|TopRx\,
	datad => \u_uw_uart|i_uarts|nx51271z2\,
	combout => \u_uw_uart|i_uarts|nx13547z4\);

-- Location: LCCOMB_X59_Y16_N20
\u_uw_uart|i_uarts|ix13547z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx13547z3\ = (!\u_uw_uart|i_uarts|nx13547z4\ & ((\u_uw_uart|i_uarts|nx51271z2\) # (\u_uw_uart|i_uarts|nx16538z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|nx51271z2\,
	datac => \u_uw_uart|i_uarts|nx16538z2\,
	datad => \u_uw_uart|i_uarts|nx13547z4\,
	combout => \u_uw_uart|i_uarts|nx13547z3\);

-- Location: LCFF_X59_Y16_N7
\u_uw_uart|i_uarts|reg_RxFSM_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx51271z2~_wirecell_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx13547z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_1_\);

-- Location: LCCOMB_X60_Y16_N28
\u_uw_uart|i_uarts|ix11553z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx11553z1\ = (\u_uw_uart|i_uarts|nx16538z2\ & (\u_uw_uart|i_uarts|RxFSM_4_\)) # (!\u_uw_uart|i_uarts|nx16538z2\ & ((\u_uw_uart|i_uarts|RxFSM_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxFSM_4_\,
	datac => \u_uw_uart|i_uarts|RxFSM_1_\,
	datad => \u_uw_uart|i_uarts|nx16538z2\,
	combout => \u_uw_uart|i_uarts|nx11553z1\);

-- Location: LCFF_X60_Y16_N29
\u_uw_uart|i_uarts|reg_RxFSM_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx11553z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx13547z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_5_\);

-- Location: LCCOMB_X60_Y16_N30
\u_uw_uart|i_uarts|ix16538z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx16538z1\ = (!\u_uw_uart|i_uarts|RxFSM_5_\ & ((\u_uw_uart|i_uarts|nx16538z2\) # (!\u_uw_uart|i_uarts|RxFSM_4_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxFSM_4_\,
	datab => \u_uw_uart|i_uarts|RxFSM_5_\,
	datad => \u_uw_uart|i_uarts|nx16538z2\,
	combout => \u_uw_uart|i_uarts|nx16538z1\);

-- Location: LCFF_X60_Y16_N31
\u_uw_uart|i_uarts|reg_RxFSM_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx16538z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx13547z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx51271z2\);

-- Location: LCCOMB_X62_Y16_N20
\u_uw_uart|i_uarts|ix60244z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_8_\ = (\u_uw_uart|i_uarts|RxDiv_8_\ & (\u_uw_uart|i_uarts|nx60244z2\ $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_8_\ & (!\u_uw_uart|i_uarts|nx60244z2\ & VCC))
-- \u_uw_uart|i_uarts|nx60244z1\ = CARRY((\u_uw_uart|i_uarts|RxDiv_8_\ & !\u_uw_uart|i_uarts|nx60244z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_8_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx60244z2\,
	combout => \u_uw_uart|i_uarts|inc_d_8_\,
	cout => \u_uw_uart|i_uarts|nx60244z1\);

-- Location: LCFF_X62_Y16_N21
\u_uw_uart|i_uarts|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_8_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx51271z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_8_\);

-- Location: LCCOMB_X62_Y16_N0
\u_uw_uart|i_uarts|ix51271z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51271z5\ = (\u_uw_uart|i_uarts|RxDiv_10_\) # (\u_uw_uart|i_uarts|RxDiv_8_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_10_\,
	datac => \u_uw_uart|i_uarts|RxDiv_8_\,
	combout => \u_uw_uart|i_uarts|nx51271z5\);

-- Location: LCCOMB_X62_Y16_N2
\u_uw_uart|i_uarts|ix51271z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51271z7\ = (\u_uw_uart|i_uarts|RxDiv_4_\ & ((!\u_uw_uart|i_uarts|RxDiv_3_\) # (!\u_uw_uart|i_uarts|RxDivisor_4_\))) # (!\u_uw_uart|i_uarts|RxDiv_4_\ & ((\u_uw_uart|i_uarts|RxDivisor_4_\) # (\u_uw_uart|i_uarts|RxDiv_3_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_4_\,
	datac => \u_uw_uart|i_uarts|RxDivisor_4_\,
	datad => \u_uw_uart|i_uarts|RxDiv_3_\,
	combout => \u_uw_uart|i_uarts|nx51271z7\);

-- Location: LCFF_X62_Y16_N9
\u_uw_uart|i_uarts|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_2_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx51271z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_2_\);

-- Location: LCCOMB_X61_Y16_N0
\u_uw_uart|i_uarts|ix51271z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_0_\ = !\u_uw_uart|i_uarts|RxDiv_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|RxDiv_0_\,
	combout => \u_uw_uart|i_uarts|inc_d_0_\);

-- Location: LCFF_X61_Y16_N1
\u_uw_uart|i_uarts|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_0_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx51271z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_0_\);

-- Location: LCCOMB_X61_Y16_N2
\u_uw_uart|i_uarts|ix51271z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51271z8\ = (\u_uw_uart|i_uarts|RxDiv_2_\) # (\u_uw_uart|i_uarts|RxDiv_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|RxDiv_2_\,
	datad => \u_uw_uart|i_uarts|RxDiv_0_\,
	combout => \u_uw_uart|i_uarts|nx51271z8\);

-- Location: LCCOMB_X62_Y16_N28
\u_uw_uart|i_uarts|ix51271z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51271z4\ = (\u_uw_uart|i_uarts|nx51271z6\) # ((\u_uw_uart|i_uarts|nx51271z5\) # ((\u_uw_uart|i_uarts|nx51271z7\) # (\u_uw_uart|i_uarts|nx51271z8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx51271z6\,
	datab => \u_uw_uart|i_uarts|nx51271z5\,
	datac => \u_uw_uart|i_uarts|nx51271z7\,
	datad => \u_uw_uart|i_uarts|nx51271z8\,
	combout => \u_uw_uart|i_uarts|nx51271z4\);

-- Location: LCCOMB_X62_Y16_N30
\u_uw_uart|i_uarts|ix51271z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51271z1\ = ((!\u_uw_uart|i_uarts|RxDiv_1_\ & (\u_uw_uart|i_uarts|nx51271z3\ & !\u_uw_uart|i_uarts|nx51271z4\))) # (!\u_uw_uart|i_uarts|nx51271z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_1_\,
	datab => \u_uw_uart|i_uarts|nx51271z2\,
	datac => \u_uw_uart|i_uarts|nx51271z3\,
	datad => \u_uw_uart|i_uarts|nx51271z4\,
	combout => \u_uw_uart|i_uarts|nx51271z1\);

-- Location: LCFF_X62_Y16_N11
\u_uw_uart|i_uarts|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_3_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx51271z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_3_\);

-- Location: LCCOMB_X62_Y16_N14
\u_uw_uart|i_uarts|ix60244z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_5_\ = (\u_uw_uart|i_uarts|RxDiv_5_\ & (!\u_uw_uart|i_uarts|nx60244z5\)) # (!\u_uw_uart|i_uarts|RxDiv_5_\ & ((\u_uw_uart|i_uarts|nx60244z5\) # (GND)))
-- \u_uw_uart|i_uarts|nx60244z4\ = CARRY((!\u_uw_uart|i_uarts|nx60244z5\) # (!\u_uw_uart|i_uarts|RxDiv_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxDiv_5_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx60244z5\,
	combout => \u_uw_uart|i_uarts|inc_d_5_\,
	cout => \u_uw_uart|i_uarts|nx60244z4\);

-- Location: LCFF_X62_Y16_N15
\u_uw_uart|i_uarts|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_5_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx51271z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_5_\);

-- Location: LCCOMB_X62_Y16_N18
\u_uw_uart|i_uarts|ix60244z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_7_\ = (\u_uw_uart|i_uarts|RxDiv_7_\ & (!\u_uw_uart|i_uarts|nx60244z3\)) # (!\u_uw_uart|i_uarts|RxDiv_7_\ & ((\u_uw_uart|i_uarts|nx60244z3\) # (GND)))
-- \u_uw_uart|i_uarts|nx60244z2\ = CARRY((!\u_uw_uart|i_uarts|nx60244z3\) # (!\u_uw_uart|i_uarts|RxDiv_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxDiv_7_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx60244z3\,
	combout => \u_uw_uart|i_uarts|inc_d_7_\,
	cout => \u_uw_uart|i_uarts|nx60244z2\);

-- Location: LCFF_X62_Y16_N19
\u_uw_uart|i_uarts|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_7_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx51271z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_7_\);

-- Location: LCFF_X62_Y16_N23
\u_uw_uart|i_uarts|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_9_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx51271z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_9_\);

-- Location: LCCOMB_X59_Y16_N22
\u_uw_uart|i_uarts|ix51271z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51271z3\ = (!\u_uw_uart|i_uarts|RxDiv_9_\ & !\u_uw_uart|i_uarts|RxDiv_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|RxDiv_9_\,
	datad => \u_uw_uart|i_uarts|RxDiv_5_\,
	combout => \u_uw_uart|i_uarts|nx51271z3\);

-- Location: LCCOMB_X59_Y16_N0
\u_uw_uart|i_uarts|ix34394z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z1\ = (!\u_uw_uart|i_uarts|RxDiv_1_\ & (\u_uw_uart|i_uarts|nx51271z3\ & (!\u_uw_uart|i_uarts|nx51271z4\ & \u_uw_uart|i_uarts|nx51271z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_1_\,
	datab => \u_uw_uart|i_uarts|nx51271z3\,
	datac => \u_uw_uart|i_uarts|nx51271z4\,
	datad => \u_uw_uart|i_uarts|nx51271z2\,
	combout => \u_uw_uart|i_uarts|nx34394z1\);

-- Location: LCFF_X59_Y16_N1
\u_uw_uart|i_uarts|reg_TopRx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx34394z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TopRx\);

-- Location: LCCOMB_X60_Y16_N26
\u_uw_uart|i_uarts|ix43465z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx43465z1\ = (\u_uw_uart|i_uarts|RxFSM_4_\ & (\u_uw_uart|i_uarts|TopRx\ & !\u_uw_uart|i_uarts|nx16538z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxFSM_4_\,
	datac => \u_uw_uart|i_uarts|TopRx\,
	datad => \u_uw_uart|i_uarts|nx16538z2\,
	combout => \u_uw_uart|i_uarts|nx43465z1\);

-- Location: LCFF_X60_Y16_N27
\u_uw_uart|i_uarts|reg_RxRDYi\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx43465z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxRDY\);

-- Location: LCCOMB_X61_Y17_N18
\u_uw_uart|i_uarts|ix15376z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15376z1\ = (\u_uw_uart|i_uarts|RxFSM_5_\) # ((!\u_uw_uart|i_uarts|RxRDY\ & \u_uw_uart|i_uarts|RxErr\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxRDY\,
	datac => \u_uw_uart|i_uarts|RxErr\,
	datad => \u_uw_uart|i_uarts|RxFSM_5_\,
	combout => \u_uw_uart|i_uarts|nx15376z1\);

-- Location: LCFF_X61_Y17_N19
\u_uw_uart|i_uarts|reg_RxErr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx15376z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxErr\);

-- Location: LCCOMB_X62_Y17_N0
\u_uw_uart|ix22081z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx22081z15\ = CARRY(\u_uw_uart|waitcount_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_0_\,
	datad => VCC,
	cout => \u_uw_uart|nx22081z15\);

-- Location: LCCOMB_X62_Y17_N2
\u_uw_uart|ix22081z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_1_\ = (\u_uw_uart|waitcount_1_\ & (!\u_uw_uart|nx22081z15\)) # (!\u_uw_uart|waitcount_1_\ & ((\u_uw_uart|nx22081z15\) # (GND)))
-- \u_uw_uart|nx22081z14\ = CARRY((!\u_uw_uart|nx22081z15\) # (!\u_uw_uart|waitcount_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_1_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z15\,
	combout => \u_uw_uart|inc_d_1_\,
	cout => \u_uw_uart|nx22081z14\);

-- Location: LCCOMB_X61_Y17_N24
\u_uw_uart|ix21084z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx21084z2\ = (\u_uw_uart|nx39480z2\) # (!\nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~combout\,
	datad => \u_uw_uart|nx39480z2\,
	combout => \u_uw_uart|nx21084z2\);

-- Location: LCCOMB_X61_Y17_N20
\u_uw_uart|ix58116z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx58116z1\ = (\u_uw_uart|i_uarts|RxRDY\ & !\u_uw_uart|o_pixavail_dup_0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxRDY\,
	datac => \u_uw_uart|o_pixavail_dup_0\,
	combout => \u_uw_uart|nx58116z1\);

-- Location: LCFF_X61_Y17_N21
\u_uw_uart|reg_charavail\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx58116z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|o_pixavail_dup_0\);

-- Location: LCCOMB_X61_Y17_N26
\u_uw_uart|ix21084z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx21084z1\ = ((\u_uw_uart|o_pixavail_dup_0\) # (\u_uw_uart|ack\)) # (!\nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~combout\,
	datac => \u_uw_uart|o_pixavail_dup_0\,
	datad => \u_uw_uart|ack\,
	combout => \u_uw_uart|nx21084z1\);

-- Location: LCFF_X62_Y17_N3
\u_uw_uart|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_1_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_1_\);

-- Location: LCCOMB_X62_Y17_N4
\u_uw_uart|ix22081z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_2_\ = (\u_uw_uart|waitcount_2_\ & (\u_uw_uart|nx22081z14\ $ (GND))) # (!\u_uw_uart|waitcount_2_\ & (!\u_uw_uart|nx22081z14\ & VCC))
-- \u_uw_uart|nx22081z13\ = CARRY((\u_uw_uart|waitcount_2_\ & !\u_uw_uart|nx22081z14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_2_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z14\,
	combout => \u_uw_uart|inc_d_2_\,
	cout => \u_uw_uart|nx22081z13\);

-- Location: LCFF_X62_Y17_N5
\u_uw_uart|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_2_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_2_\);

-- Location: LCCOMB_X62_Y17_N8
\u_uw_uart|ix22081z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_4_\ = (\u_uw_uart|waitcount_4_\ & (\u_uw_uart|nx22081z12\ $ (GND))) # (!\u_uw_uart|waitcount_4_\ & (!\u_uw_uart|nx22081z12\ & VCC))
-- \u_uw_uart|nx22081z11\ = CARRY((\u_uw_uart|waitcount_4_\ & !\u_uw_uart|nx22081z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_4_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z12\,
	combout => \u_uw_uart|inc_d_4_\,
	cout => \u_uw_uart|nx22081z11\);

-- Location: LCFF_X62_Y17_N9
\u_uw_uart|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_4_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_4_\);

-- Location: LCCOMB_X62_Y17_N12
\u_uw_uart|ix22081z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_6_\ = (\u_uw_uart|waitcount_6_\ & (\u_uw_uart|nx22081z10\ $ (GND))) # (!\u_uw_uart|waitcount_6_\ & (!\u_uw_uart|nx22081z10\ & VCC))
-- \u_uw_uart|nx22081z9\ = CARRY((\u_uw_uart|waitcount_6_\ & !\u_uw_uart|nx22081z10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_6_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z10\,
	combout => \u_uw_uart|inc_d_6_\,
	cout => \u_uw_uart|nx22081z9\);

-- Location: LCCOMB_X62_Y17_N14
\u_uw_uart|ix22081z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_7_\ = (\u_uw_uart|waitcount_7_\ & (!\u_uw_uart|nx22081z9\)) # (!\u_uw_uart|waitcount_7_\ & ((\u_uw_uart|nx22081z9\) # (GND)))
-- \u_uw_uart|nx22081z8\ = CARRY((!\u_uw_uart|nx22081z9\) # (!\u_uw_uart|waitcount_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_7_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z9\,
	combout => \u_uw_uart|inc_d_7_\,
	cout => \u_uw_uart|nx22081z8\);

-- Location: LCFF_X62_Y17_N15
\u_uw_uart|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_7_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_7_\);

-- Location: LCCOMB_X62_Y17_N18
\u_uw_uart|ix22081z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_9_\ = (\u_uw_uart|waitcount_9_\ & (!\u_uw_uart|nx22081z7\)) # (!\u_uw_uart|waitcount_9_\ & ((\u_uw_uart|nx22081z7\) # (GND)))
-- \u_uw_uart|nx22081z6\ = CARRY((!\u_uw_uart|nx22081z7\) # (!\u_uw_uart|waitcount_9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_9_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z7\,
	combout => \u_uw_uart|inc_d_9_\,
	cout => \u_uw_uart|nx22081z6\);

-- Location: LCFF_X62_Y17_N19
\u_uw_uart|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_9_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_9_\);

-- Location: LCCOMB_X62_Y17_N20
\u_uw_uart|ix22081z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_10_\ = (\u_uw_uart|waitcount_10_\ & (\u_uw_uart|nx22081z6\ $ (GND))) # (!\u_uw_uart|waitcount_10_\ & (!\u_uw_uart|nx22081z6\ & VCC))
-- \u_uw_uart|nx22081z5\ = CARRY((\u_uw_uart|waitcount_10_\ & !\u_uw_uart|nx22081z6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_10_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z6\,
	combout => \u_uw_uart|inc_d_10_\,
	cout => \u_uw_uart|nx22081z5\);

-- Location: LCCOMB_X62_Y17_N22
\u_uw_uart|ix22081z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_11_\ = (\u_uw_uart|waitcount_11_\ & (!\u_uw_uart|nx22081z5\)) # (!\u_uw_uart|waitcount_11_\ & ((\u_uw_uart|nx22081z5\) # (GND)))
-- \u_uw_uart|nx22081z4\ = CARRY((!\u_uw_uart|nx22081z5\) # (!\u_uw_uart|waitcount_11_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_11_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z5\,
	combout => \u_uw_uart|inc_d_11_\,
	cout => \u_uw_uart|nx22081z4\);

-- Location: LCFF_X62_Y17_N23
\u_uw_uart|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_11_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_11_\);

-- Location: LCFF_X62_Y17_N21
\u_uw_uart|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_10_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_10_\);

-- Location: LCCOMB_X61_Y17_N4
\u_uw_uart|ix39480z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z4\ = (!\u_uw_uart|waitcount_8_\ & (!\u_uw_uart|waitcount_11_\ & (!\u_uw_uart|waitcount_10_\ & !\u_uw_uart|waitcount_9_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_8_\,
	datab => \u_uw_uart|waitcount_11_\,
	datac => \u_uw_uart|waitcount_10_\,
	datad => \u_uw_uart|waitcount_9_\,
	combout => \u_uw_uart|nx39480z4\);

-- Location: LCFF_X62_Y17_N13
\u_uw_uart|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_6_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_6_\);

-- Location: LCCOMB_X61_Y17_N14
\u_uw_uart|ix39480z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z5\ = (\u_uw_uart|waitcount_5_\ & (!\u_uw_uart|waitcount_7_\ & (\u_uw_uart|waitcount_6_\ & !\u_uw_uart|waitcount_4_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_5_\,
	datab => \u_uw_uart|waitcount_7_\,
	datac => \u_uw_uart|waitcount_6_\,
	datad => \u_uw_uart|waitcount_4_\,
	combout => \u_uw_uart|nx39480z5\);

-- Location: LCCOMB_X62_Y17_N24
\u_uw_uart|ix22081z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_12_\ = (\u_uw_uart|waitcount_12_\ & (\u_uw_uart|nx22081z4\ $ (GND))) # (!\u_uw_uart|waitcount_12_\ & (!\u_uw_uart|nx22081z4\ & VCC))
-- \u_uw_uart|nx22081z3\ = CARRY((\u_uw_uart|waitcount_12_\ & !\u_uw_uart|nx22081z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_12_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z4\,
	combout => \u_uw_uart|inc_d_12_\,
	cout => \u_uw_uart|nx22081z3\);

-- Location: LCCOMB_X62_Y17_N26
\u_uw_uart|ix22081z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_13_\ = (\u_uw_uart|waitcount_13_\ & (!\u_uw_uart|nx22081z3\)) # (!\u_uw_uart|waitcount_13_\ & ((\u_uw_uart|nx22081z3\) # (GND)))
-- \u_uw_uart|nx22081z2\ = CARRY((!\u_uw_uart|nx22081z3\) # (!\u_uw_uart|waitcount_13_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_13_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z3\,
	combout => \u_uw_uart|inc_d_13_\,
	cout => \u_uw_uart|nx22081z2\);

-- Location: LCFF_X62_Y17_N27
\u_uw_uart|reg_q_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_13_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_13_\);

-- Location: LCCOMB_X62_Y17_N28
\u_uw_uart|ix22081z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_14_\ = (\u_uw_uart|waitcount_14_\ & (\u_uw_uart|nx22081z2\ $ (GND))) # (!\u_uw_uart|waitcount_14_\ & (!\u_uw_uart|nx22081z2\ & VCC))
-- \u_uw_uart|nx22081z1\ = CARRY((\u_uw_uart|waitcount_14_\ & !\u_uw_uart|nx22081z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_14_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z2\,
	combout => \u_uw_uart|inc_d_14_\,
	cout => \u_uw_uart|nx22081z1\);

-- Location: LCFF_X62_Y17_N29
\u_uw_uart|reg_q_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_14_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_14_\);

-- Location: LCCOMB_X62_Y17_N30
\u_uw_uart|ix22081z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_15_\ = \u_uw_uart|nx22081z1\ $ (\u_uw_uart|waitcount_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|waitcount_15_\,
	cin => \u_uw_uart|nx22081z1\,
	combout => \u_uw_uart|inc_d_15_\);

-- Location: LCFF_X62_Y17_N31
\u_uw_uart|reg_q_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_15_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_15_\);

-- Location: LCFF_X62_Y17_N25
\u_uw_uart|reg_q_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_12_\,
	sclr => \u_uw_uart|nx21084z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_12_\);

-- Location: LCCOMB_X61_Y17_N10
\u_uw_uart|ix39480z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z3\ = (!\u_uw_uart|waitcount_13_\ & (!\u_uw_uart|waitcount_15_\ & (!\u_uw_uart|waitcount_14_\ & !\u_uw_uart|waitcount_12_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_13_\,
	datab => \u_uw_uart|waitcount_15_\,
	datac => \u_uw_uart|waitcount_14_\,
	datad => \u_uw_uart|waitcount_12_\,
	combout => \u_uw_uart|nx39480z3\);

-- Location: LCCOMB_X61_Y17_N28
\u_uw_uart|ix39480z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z2\ = (\u_uw_uart|nx39480z6\ & (\u_uw_uart|nx39480z4\ & (\u_uw_uart|nx39480z5\ & \u_uw_uart|nx39480z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx39480z6\,
	datab => \u_uw_uart|nx39480z4\,
	datac => \u_uw_uart|nx39480z5\,
	datad => \u_uw_uart|nx39480z3\,
	combout => \u_uw_uart|nx39480z2\);

-- Location: LCCOMB_X61_Y17_N22
\u_uw_uart|ix39480z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z1\ = (!\u_uw_uart|nx39480z2\ & (\nrst~combout\ & ((\u_uw_uart|o_pixavail_dup_0\) # (\u_uw_uart|ack\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail_dup_0\,
	datab => \u_uw_uart|nx39480z2\,
	datac => \u_uw_uart|ack\,
	datad => \nrst~combout\,
	combout => \u_uw_uart|nx39480z1\);

-- Location: LCFF_X61_Y17_N23
\u_uw_uart|reg_ack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx39480z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|ack\);

-- Location: LCCOMB_X61_Y17_N16
\u_uw_uart|ix46385z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx46385z3\ = (\u_uw_uart|ack\) # (\u_uw_uart|o_pixavail_dup_0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|ack\,
	datac => \u_uw_uart|o_pixavail_dup_0\,
	combout => \u_uw_uart|nx46385z3\);

-- Location: LCCOMB_X61_Y17_N0
\u_uw_uart|ix46385z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx46385z2\ = (\nrst~combout\ & ((\u_uw_uart|nx46385z3\ & ((\u_uw_uart|nx39480z2\))) # (!\u_uw_uart|nx46385z3\ & (\u_uw_uart|i_uarts|RxErr\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~combout\,
	datab => \u_uw_uart|i_uarts|RxErr\,
	datac => \u_uw_uart|nx46385z3\,
	datad => \u_uw_uart|nx39480z2\,
	combout => \u_uw_uart|nx46385z2\);

-- Location: LCFF_X61_Y17_N1
\u_uw_uart|reg_dsend\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx46385z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|dsend\);

-- Location: LCCOMB_X61_Y16_N8
\u_uw_uart|ix38650z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx38650z1\ = (!\u_uw_uart|state\ & \u_uw_uart|dsend\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|state\,
	datad => \u_uw_uart|dsend\,
	combout => \u_uw_uart|nx38650z1\);

-- Location: LCFF_X61_Y16_N9
\u_uw_uart|reg_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx38650z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|state\);

-- Location: LCCOMB_X61_Y16_N6
\u_uw_uart|ix45847z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx45847z1\ = (\u_uw_uart|state\ & (((\u_uw_uart|sdout_0_\)))) # (!\u_uw_uart|state\ & ((\u_uw_uart|dsend\ & (\u_uw_uart|mdata_0_\)) # (!\u_uw_uart|dsend\ & ((\u_uw_uart|sdout_0_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|mdata_0_\,
	datab => \u_uw_uart|state\,
	datac => \u_uw_uart|sdout_0_\,
	datad => \u_uw_uart|dsend\,
	combout => \u_uw_uart|nx45847z1\);

-- Location: LCFF_X61_Y16_N7
\u_uw_uart|reg_sdout_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx45847z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_0_\);

-- Location: LCCOMB_X58_Y16_N12
\u_uw_uart|sdout_0_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_0_~_wirecell_combout\ = !\u_uw_uart|sdout_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|sdout_0_\,
	combout => \u_uw_uart|sdout_0_~_wirecell_combout\);

-- Location: LCCOMB_X58_Y16_N8
\u_uw_uart|i_uarts|nx27627z5~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx27627z5~feeder_combout\ = \u_uw_uart|sdout_0_~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|sdout_0_~_wirecell_combout\,
	combout => \u_uw_uart|i_uarts|nx27627z5~feeder_combout\);

-- Location: LCCOMB_X58_Y16_N26
\u_uw_uart|i_uarts|NOT_Tx_Reg_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_2_~feeder_combout\ = \u_uw_uart|sdout_0_~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|sdout_0_~_wirecell_combout\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_2_~feeder_combout\);

-- Location: LCCOMB_X58_Y16_N14
\u_uw_uart|i_uarts|NOT_Tx_Reg_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_4_~feeder_combout\ = \u_uw_uart|sdout_0_~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|sdout_0_~_wirecell_combout\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_4_~feeder_combout\);

-- Location: LCCOMB_X61_Y16_N4
\u_uw_uart|ix41859z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx41859z1\ = (\u_uw_uart|sdout_4_\) # ((!\u_uw_uart|state\ & \u_uw_uart|dsend\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|state\,
	datac => \u_uw_uart|sdout_4_\,
	datad => \u_uw_uart|dsend\,
	combout => \u_uw_uart|nx41859z1\);

-- Location: LCFF_X61_Y16_N5
\u_uw_uart|reg_sdout_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx41859z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_4_\);

-- Location: LCCOMB_X58_Y16_N2
\u_uw_uart|sdout_4_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_4_~_wirecell_combout\ = !\u_uw_uart|sdout_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|sdout_4_\,
	combout => \u_uw_uart|sdout_4_~_wirecell_combout\);

-- Location: LCCOMB_X58_Y16_N16
\u_uw_uart|i_uarts|NOT_Tx_Reg_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_5_~feeder_combout\ = \u_uw_uart|sdout_4_~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|sdout_4_~_wirecell_combout\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_5_~feeder_combout\);

-- Location: LCCOMB_X58_Y16_N4
\u_uw_uart|sdout_6_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_6_~_wirecell_combout\ = !\u_uw_uart|sdout_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|sdout_6_\,
	combout => \u_uw_uart|sdout_6_~_wirecell_combout\);

-- Location: LCCOMB_X61_Y16_N22
\u_uw_uart|ix39865z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39865z1\ = (\u_uw_uart|state\ & (((\u_uw_uart|sdout_6_\)))) # (!\u_uw_uart|state\ & ((\u_uw_uart|dsend\ & (\u_uw_uart|mdata_7_\)) # (!\u_uw_uart|dsend\ & ((\u_uw_uart|sdout_6_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|mdata_7_\,
	datab => \u_uw_uart|state\,
	datac => \u_uw_uart|sdout_6_\,
	datad => \u_uw_uart|dsend\,
	combout => \u_uw_uart|nx39865z1\);

-- Location: LCFF_X61_Y16_N23
\u_uw_uart|reg_sdout_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx39865z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_6_\);

-- Location: LCCOMB_X58_Y16_N30
\u_uw_uart|i_uarts|ix35603z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\ = (!\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|sdout_6_\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\);

-- Location: LCCOMB_X57_Y16_N0
\u_uw_uart|i_uarts|ix35603z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx35603z1\ = (!\u_uw_uart|i_uarts|TxFSM_0_\ & ((\u_uw_uart|i_uarts|TxFSM_1_\ & ((\u_uw_uart|i_uarts|TopTx\))) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|ld_sdout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|ld_sdout\,
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx35603z1\);

-- Location: LCFF_X58_Y16_N31
\u_uw_uart|i_uarts|reg_Tx_Reg_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|NOT_Tx_Reg_8_\);

-- Location: LCFF_X58_Y16_N5
\u_uw_uart|i_uarts|reg_Tx_Reg_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_6_~_wirecell_combout\,
	sdata => \u_uw_uart|i_uarts|NOT_Tx_Reg_8_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|TxFSM_1_\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|NOT_Tx_Reg_7_\);

-- Location: LCFF_X58_Y16_N3
\u_uw_uart|i_uarts|reg_Tx_Reg_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_4_~_wirecell_combout\,
	sdata => \u_uw_uart|i_uarts|NOT_Tx_Reg_7_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|TxFSM_1_\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|NOT_Tx_Reg_6_\);

-- Location: LCFF_X58_Y16_N17
\u_uw_uart|i_uarts|reg_Tx_Reg_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_5_~feeder_combout\,
	sdata => \u_uw_uart|i_uarts|NOT_Tx_Reg_6_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|TxFSM_1_\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|NOT_Tx_Reg_5_\);

-- Location: LCFF_X58_Y16_N15
\u_uw_uart|i_uarts|reg_Tx_Reg_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_4_~feeder_combout\,
	sdata => \u_uw_uart|i_uarts|NOT_Tx_Reg_5_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|TxFSM_1_\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|NOT_Tx_Reg_4_\);

-- Location: LCFF_X58_Y16_N13
\u_uw_uart|i_uarts|reg_Tx_Reg_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_0_~_wirecell_combout\,
	sdata => \u_uw_uart|i_uarts|NOT_Tx_Reg_4_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|TxFSM_1_\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|NOT_Tx_Reg_3_\);

-- Location: LCFF_X58_Y16_N27
\u_uw_uart|i_uarts|reg_Tx_Reg_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_2_~feeder_combout\,
	sdata => \u_uw_uart|i_uarts|NOT_Tx_Reg_3_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|TxFSM_1_\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|NOT_Tx_Reg_2_\);

-- Location: LCFF_X58_Y16_N9
\u_uw_uart|i_uarts|reg_Tx_Reg_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx27627z5~feeder_combout\,
	sdata => \u_uw_uart|i_uarts|NOT_Tx_Reg_2_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|TxFSM_1_\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx27627z5\);

-- Location: LCCOMB_X61_Y16_N30
\u_uw_uart|i_uarts|ix27627z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx27627z4\ = (!\u_uw_uart|i_uarts|TxFSM_0_\ & (((!\u_uw_uart|i_uarts|nx27627z5\ & \u_uw_uart|i_uarts|TopTx\)) # (!\u_uw_uart|i_uarts|TxFSM_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_0_\,
	datab => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|i_uarts|nx27627z5\,
	datad => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx27627z4\);

-- Location: LCCOMB_X61_Y16_N24
\u_uw_uart|i_uarts|ix27627z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx27627z1\ = (\u_uw_uart|i_uarts|nx27627z2\ & (((\u_uw_uart|i_uarts|nx18332z1\)))) # (!\u_uw_uart|i_uarts|nx27627z2\ & (!\u_uw_uart|i_uarts|nx27627z4\ & ((\u_uw_uart|i_uarts|nx18332z1\) # (!\u_uw_uart|i_uarts|nx27627z3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx27627z3\,
	datab => \u_uw_uart|i_uarts|nx27627z2\,
	datac => \u_uw_uart|i_uarts|nx18332z1\,
	datad => \u_uw_uart|i_uarts|nx27627z4\,
	combout => \u_uw_uart|i_uarts|nx27627z1\);

-- Location: LCFF_X61_Y16_N25
\u_uw_uart|i_uarts|reg_Tx_Reg_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx27627z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx18332z1\);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\txflex~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_uw_uart|i_uarts|ALT_INV_nx18332z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_txflex);

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(0));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(1));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(3));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(4));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(5));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(6));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(7));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(8));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(9));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(10));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(11));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(12));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(13));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(14));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(15));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_mode[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(0));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_mode[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(1));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_nrst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_nrst);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_key[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_key[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_key[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(3));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(9));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(15));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(16));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(17));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(16));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(0));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(1));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(4));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(5));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(6));

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(7));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(0));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(1));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(4));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(5));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(6));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(7));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(0));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(1));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(3));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(4));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(5));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(6));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(7));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(0));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(1));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(3));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(4));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(5));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(6));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(7));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(0));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(1));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(3));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(4));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(5));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(6));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(7));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(0));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(1));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(3));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(4));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(5));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(6));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(7));
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity top_kirsch is
  port (
      nrst  : in STD_LOGIC
    ; clk  : in STD_LOGIC
    ; rxflex  : in STD_LOGIC
    ; txflex  : out STD_LOGIC
    ; o_sevenseg  : out std_logic_vector (15 downto 0)
    ; o_mode  : out std_logic_vector (1 downto 0)
    ; o_nrst  : out STD_LOGIC
    ; debug_key  : in std_logic_vector (3 downto 1)
    ; debug_switch  : in std_logic_vector (17 downto 0)
    ; debug_led_red  : out std_logic_vector (16 downto 0)
    ; debug_led_grn  : out std_logic_vector (5 downto 0)
    ; debug_sevenseg_0  : out std_logic_vector (7 downto 0)
    ; debug_sevenseg_1  : out std_logic_vector (7 downto 0)
    ; debug_sevenseg_2  : out std_logic_vector (7 downto 0)
    ; debug_sevenseg_3  : out std_logic_vector (7 downto 0)
    ; debug_sevenseg_4  : out std_logic_vector (7 downto 0)
    ; debug_sevenseg_5  : out std_logic_vector (7 downto 0)
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of top_kirsch is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.top_kirsch_chip
    port map (
        nrst => nrst
      , clk => clk
      , rxflex => rxflex
      , txflex => txflex
      , o_sevenseg(15) => o_sevenseg(15)
      , o_sevenseg(14) => o_sevenseg(14)
      , o_sevenseg(13) => o_sevenseg(13)
      , o_sevenseg(12) => o_sevenseg(12)
      , o_sevenseg(11) => o_sevenseg(11)
      , o_sevenseg(10) => o_sevenseg(10)
      , o_sevenseg(9) => o_sevenseg(9)
      , o_sevenseg(8) => o_sevenseg(8)
      , o_sevenseg(7) => o_sevenseg(7)
      , o_sevenseg(6) => o_sevenseg(6)
      , o_sevenseg(5) => o_sevenseg(5)
      , o_sevenseg(4) => o_sevenseg(4)
      , o_sevenseg(3) => o_sevenseg(3)
      , o_sevenseg(2) => o_sevenseg(2)
      , o_sevenseg(1) => o_sevenseg(1)
      , o_sevenseg(0) => o_sevenseg(0)
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
      , o_nrst => o_nrst
      , debug_key(3) => debug_key(3)
      , debug_key(2) => debug_key(2)
      , debug_key(1) => debug_key(1)
      , debug_switch(17) => debug_switch(17)
      , debug_switch(16) => debug_switch(16)
      , debug_switch(15) => debug_switch(15)
      , debug_switch(14) => debug_switch(14)
      , debug_switch(13) => debug_switch(13)
      , debug_switch(12) => debug_switch(12)
      , debug_switch(11) => debug_switch(11)
      , debug_switch(10) => debug_switch(10)
      , debug_switch(9) => debug_switch(9)
      , debug_switch(8) => debug_switch(8)
      , debug_switch(7) => debug_switch(7)
      , debug_switch(6) => debug_switch(6)
      , debug_switch(5) => debug_switch(5)
      , debug_switch(4) => debug_switch(4)
      , debug_switch(3) => debug_switch(3)
      , debug_switch(2) => debug_switch(2)
      , debug_switch(1) => debug_switch(1)
      , debug_switch(0) => debug_switch(0)
      , debug_led_red(16) => debug_led_red(16)
      , debug_led_red(15) => debug_led_red(15)
      , debug_led_red(14) => debug_led_red(14)
      , debug_led_red(13) => debug_led_red(13)
      , debug_led_red(12) => debug_led_red(12)
      , debug_led_red(11) => debug_led_red(11)
      , debug_led_red(10) => debug_led_red(10)
      , debug_led_red(9) => debug_led_red(9)
      , debug_led_red(8) => debug_led_red(8)
      , debug_led_red(7) => debug_led_red(7)
      , debug_led_red(6) => debug_led_red(6)
      , debug_led_red(5) => debug_led_red(5)
      , debug_led_red(4) => debug_led_red(4)
      , debug_led_red(3) => debug_led_red(3)
      , debug_led_red(2) => debug_led_red(2)
      , debug_led_red(1) => debug_led_red(1)
      , debug_led_red(0) => debug_led_red(0)
      , debug_led_grn(5) => debug_led_grn(5)
      , debug_led_grn(4) => debug_led_grn(4)
      , debug_led_grn(3) => debug_led_grn(3)
      , debug_led_grn(2) => debug_led_grn(2)
      , debug_led_grn(1) => debug_led_grn(1)
      , debug_led_grn(0) => debug_led_grn(0)
      , debug_sevenseg_0(7) => debug_sevenseg_0(7)
      , debug_sevenseg_0(6) => debug_sevenseg_0(6)
      , debug_sevenseg_0(5) => debug_sevenseg_0(5)
      , debug_sevenseg_0(4) => debug_sevenseg_0(4)
      , debug_sevenseg_0(3) => debug_sevenseg_0(3)
      , debug_sevenseg_0(2) => debug_sevenseg_0(2)
      , debug_sevenseg_0(1) => debug_sevenseg_0(1)
      , debug_sevenseg_0(0) => debug_sevenseg_0(0)
      , debug_sevenseg_1(7) => debug_sevenseg_1(7)
      , debug_sevenseg_1(6) => debug_sevenseg_1(6)
      , debug_sevenseg_1(5) => debug_sevenseg_1(5)
      , debug_sevenseg_1(4) => debug_sevenseg_1(4)
      , debug_sevenseg_1(3) => debug_sevenseg_1(3)
      , debug_sevenseg_1(2) => debug_sevenseg_1(2)
      , debug_sevenseg_1(1) => debug_sevenseg_1(1)
      , debug_sevenseg_1(0) => debug_sevenseg_1(0)
      , debug_sevenseg_2(7) => debug_sevenseg_2(7)
      , debug_sevenseg_2(6) => debug_sevenseg_2(6)
      , debug_sevenseg_2(5) => debug_sevenseg_2(5)
      , debug_sevenseg_2(4) => debug_sevenseg_2(4)
      , debug_sevenseg_2(3) => debug_sevenseg_2(3)
      , debug_sevenseg_2(2) => debug_sevenseg_2(2)
      , debug_sevenseg_2(1) => debug_sevenseg_2(1)
      , debug_sevenseg_2(0) => debug_sevenseg_2(0)
      , debug_sevenseg_3(7) => debug_sevenseg_3(7)
      , debug_sevenseg_3(6) => debug_sevenseg_3(6)
      , debug_sevenseg_3(5) => debug_sevenseg_3(5)
      , debug_sevenseg_3(4) => debug_sevenseg_3(4)
      , debug_sevenseg_3(3) => debug_sevenseg_3(3)
      , debug_sevenseg_3(2) => debug_sevenseg_3(2)
      , debug_sevenseg_3(1) => debug_sevenseg_3(1)
      , debug_sevenseg_3(0) => debug_sevenseg_3(0)
      , debug_sevenseg_4(7) => debug_sevenseg_4(7)
      , debug_sevenseg_4(6) => debug_sevenseg_4(6)
      , debug_sevenseg_4(5) => debug_sevenseg_4(5)
      , debug_sevenseg_4(4) => debug_sevenseg_4(4)
      , debug_sevenseg_4(3) => debug_sevenseg_4(3)
      , debug_sevenseg_4(2) => debug_sevenseg_4(2)
      , debug_sevenseg_4(1) => debug_sevenseg_4(1)
      , debug_sevenseg_4(0) => debug_sevenseg_4(0)
      , debug_sevenseg_5(7) => debug_sevenseg_5(7)
      , debug_sevenseg_5(6) => debug_sevenseg_5(6)
      , debug_sevenseg_5(5) => debug_sevenseg_5(5)
      , debug_sevenseg_5(4) => debug_sevenseg_5(4)
      , debug_sevenseg_5(3) => debug_sevenseg_5(3)
      , debug_sevenseg_5(2) => debug_sevenseg_5(2)
      , debug_sevenseg_5(1) => debug_sevenseg_5(1)
      , debug_sevenseg_5(0) => debug_sevenseg_5(0)
    );
end architecture;

