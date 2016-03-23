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

-- DATE "03/23/2016 14:38:32"

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

ENTITY 	kirsch_chip IS
    PORT (
	i_clock : IN std_logic;
	i_reset : IN std_logic;
	i_valid : IN std_logic;
	i_pixel : IN std_logic_vector(7 DOWNTO 0);
	o_valid : OUT std_logic;
	o_edge : OUT std_logic;
	o_dir : OUT std_logic_vector(2 DOWNTO 0);
	o_mode : OUT std_logic_vector(1 DOWNTO 0);
	o_row : OUT std_logic_vector(7 DOWNTO 0);
	debug_key : IN std_logic_vector(3 DOWNTO 1);
	debug_switch : IN std_logic_vector(17 DOWNTO 0);
	debug_led_red : OUT std_logic_vector(17 DOWNTO 0);
	debug_led_grn : OUT std_logic_vector(5 DOWNTO 0);
	debug_num_0 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_1 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_2 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_3 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_4 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_5 : OUT std_logic_vector(3 DOWNTO 0)
	);
END kirsch_chip;

-- Design Ports Information
-- o_valid	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_dir[0]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_dir[1]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_dir[2]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[0]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[1]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[2]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[3]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[4]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[5]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[6]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[7]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- i_clock	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_valid	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[0]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[1]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[2]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[3]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[4]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[5]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[6]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[7]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- o_edge	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_mode[0]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_mode[1]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_key[1]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[2]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[3]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[0]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[1]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[2]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[3]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[4]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[5]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[6]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[7]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[8]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[9]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[10]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[11]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[12]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[13]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[14]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[15]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[16]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[17]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_led_red[0]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[1]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[2]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[3]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[4]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[5]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[6]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[7]	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[8]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[9]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[10]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[11]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[12]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[13]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[14]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[15]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[16]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[17]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[0]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[1]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[2]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[3]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[4]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[1]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[2]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[3]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[1]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[2]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[3]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[0]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[1]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[2]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[3]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[0]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[1]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[2]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[3]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[0]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[1]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[2]	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[3]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[1]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[2]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[3]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- i_reset	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF kirsch_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_i_reset : std_logic;
SIGNAL ww_i_valid : std_logic;
SIGNAL ww_i_pixel : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_valid : std_logic;
SIGNAL ww_o_edge : std_logic;
SIGNAL ww_o_dir : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_o_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_row : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_key : std_logic_vector(3 DOWNTO 1);
SIGNAL ww_debug_switch : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_led_red : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_led_grn : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_debug_num_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_5 : std_logic_vector(3 DOWNTO 0);
SIGNAL i_reset_acombout : std_logic;
SIGNAL ALT_INV_i_reset_acombout : std_logic;

BEGIN

ww_i_clock <= i_clock;
ww_i_reset <= i_reset;
ww_i_valid <= i_valid;
ww_i_pixel <= i_pixel;
o_valid <= ww_o_valid;
o_edge <= ww_o_edge;
o_dir <= ww_o_dir;
o_mode <= ww_o_mode;
o_row <= ww_o_row;
ww_debug_key <= debug_key;
ww_debug_switch <= debug_switch;
debug_led_red <= ww_debug_led_red;
debug_led_grn <= ww_debug_led_grn;
debug_num_0 <= ww_debug_num_0;
debug_num_1 <= ww_debug_num_1;
debug_num_2 <= ww_debug_num_2;
debug_num_3 <= ww_debug_num_3;
debug_num_4 <= ww_debug_num_4;
debug_num_5 <= ww_debug_num_5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_i_reset_acombout <= NOT i_reset_acombout;

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_reset_aI : cycloneii_io
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
	padio => ww_i_reset,
	combout => i_reset_acombout);

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_valid_aI : cycloneii_io
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
	open_drain_output => "true",
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
	padio => ww_o_valid);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_dir_a0_a_aI : cycloneii_io
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
	open_drain_output => "true",
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
	padio => ww_o_dir(0));

-- Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_dir_a1_a_aI : cycloneii_io
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
	open_drain_output => "true",
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
	padio => ww_o_dir(1));

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_dir_a2_a_aI : cycloneii_io
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
	open_drain_output => "true",
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
	padio => ww_o_dir(2));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a0_a_aI : cycloneii_io
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
	open_drain_output => "true",
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
	padio => ww_o_row(0));

-- Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a1_a_aI : cycloneii_io
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
	open_drain_output => "true",
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
	padio => ww_o_row(1));

-- Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a2_a_aI : cycloneii_io
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
	open_drain_output => "true",
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
	padio => ww_o_row(2));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a3_a_aI : cycloneii_io
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
	open_drain_output => "true",
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
	padio => ww_o_row(3));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a4_a_aI : cycloneii_io
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
	open_drain_output => "true",
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
	padio => ww_o_row(4));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a5_a_aI : cycloneii_io
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
	open_drain_output => "true",
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
	padio => ww_o_row(5));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a6_a_aI : cycloneii_io
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
	open_drain_output => "true",
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
	padio => ww_o_row(6));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a7_a_aI : cycloneii_io
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
	open_drain_output => "true",
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
	padio => ww_o_row(7));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_clock_aI : cycloneii_io
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
	padio => ww_i_clock);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_valid_aI : cycloneii_io
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
	padio => ww_i_valid);

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a0_a_aI : cycloneii_io
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
	padio => ww_i_pixel(0));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a1_a_aI : cycloneii_io
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
	padio => ww_i_pixel(1));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a2_a_aI : cycloneii_io
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
	padio => ww_i_pixel(2));

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a3_a_aI : cycloneii_io
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
	padio => ww_i_pixel(3));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a4_a_aI : cycloneii_io
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
	padio => ww_i_pixel(4));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a5_a_aI : cycloneii_io
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
	padio => ww_i_pixel(5));

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a6_a_aI : cycloneii_io
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
	padio => ww_i_pixel(6));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a7_a_aI : cycloneii_io
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
	padio => ww_i_pixel(7));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_edge_aI : cycloneii_io
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
	padio => ww_o_edge);

-- Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_mode_a0_a_aI : cycloneii_io
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

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_mode_a1_a_aI : cycloneii_io
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
	datain => ALT_INV_i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(1));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_key_a1_a_aI : cycloneii_io
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

-- Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_key_a2_a_aI : cycloneii_io
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

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_key_a3_a_aI : cycloneii_io
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

-- Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a0_a_aI : cycloneii_io
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

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a1_a_aI : cycloneii_io
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

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a2_a_aI : cycloneii_io
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

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a3_a_aI : cycloneii_io
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

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a4_a_aI : cycloneii_io
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

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a5_a_aI : cycloneii_io
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

-- Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a6_a_aI : cycloneii_io
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

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a7_a_aI : cycloneii_io
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

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a8_a_aI : cycloneii_io
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

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a9_a_aI : cycloneii_io
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

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a10_a_aI : cycloneii_io
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

-- Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a11_a_aI : cycloneii_io
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

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a12_a_aI : cycloneii_io
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

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a13_a_aI : cycloneii_io
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

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a14_a_aI : cycloneii_io
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

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a15_a_aI : cycloneii_io
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

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a16_a_aI : cycloneii_io
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

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a17_a_aI : cycloneii_io
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

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a0_a_aI : cycloneii_io
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

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a1_a_aI : cycloneii_io
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

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a2_a_aI : cycloneii_io
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

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a3_a_aI : cycloneii_io
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

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a4_a_aI : cycloneii_io
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

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a5_a_aI : cycloneii_io
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

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a6_a_aI : cycloneii_io
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

-- Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a7_a_aI : cycloneii_io
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

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a8_a_aI : cycloneii_io
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

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a9_a_aI : cycloneii_io
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

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a10_a_aI : cycloneii_io
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

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a11_a_aI : cycloneii_io
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

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a12_a_aI : cycloneii_io
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

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a13_a_aI : cycloneii_io
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

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a14_a_aI : cycloneii_io
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

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a15_a_aI : cycloneii_io
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

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a16_a_aI : cycloneii_io
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

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a17_a_aI : cycloneii_io
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
	padio => ww_debug_led_red(17));

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a0_a_aI : cycloneii_io
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

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a1_a_aI : cycloneii_io
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

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a2_a_aI : cycloneii_io
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

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a3_a_aI : cycloneii_io
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

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a4_a_aI : cycloneii_io
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

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a5_a_aI : cycloneii_io
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

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_a0_a_aI : cycloneii_io
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
	padio => ww_debug_num_0(0));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_a1_a_aI : cycloneii_io
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
	padio => ww_debug_num_0(1));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_a2_a_aI : cycloneii_io
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
	padio => ww_debug_num_0(2));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_a3_a_aI : cycloneii_io
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
	padio => ww_debug_num_0(3));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_a0_a_aI : cycloneii_io
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
	padio => ww_debug_num_1(0));

-- Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_a1_a_aI : cycloneii_io
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
	padio => ww_debug_num_1(1));

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_a2_a_aI : cycloneii_io
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
	padio => ww_debug_num_1(2));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_a3_a_aI : cycloneii_io
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
	padio => ww_debug_num_1(3));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_a0_a_aI : cycloneii_io
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
	padio => ww_debug_num_2(0));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_a1_a_aI : cycloneii_io
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
	padio => ww_debug_num_2(1));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_a2_a_aI : cycloneii_io
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
	padio => ww_debug_num_2(2));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_a3_a_aI : cycloneii_io
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
	padio => ww_debug_num_2(3));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_a0_a_aI : cycloneii_io
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
	padio => ww_debug_num_3(0));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_a1_a_aI : cycloneii_io
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
	padio => ww_debug_num_3(1));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_a2_a_aI : cycloneii_io
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
	padio => ww_debug_num_3(2));

-- Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_a3_a_aI : cycloneii_io
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
	padio => ww_debug_num_3(3));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_a0_a_aI : cycloneii_io
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
	padio => ww_debug_num_4(0));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_a1_a_aI : cycloneii_io
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
	padio => ww_debug_num_4(1));

-- Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_a2_a_aI : cycloneii_io
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
	padio => ww_debug_num_4(2));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_a3_a_aI : cycloneii_io
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
	padio => ww_debug_num_4(3));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_a0_a_aI : cycloneii_io
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
	padio => ww_debug_num_5(0));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_a1_a_aI : cycloneii_io
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
	padio => ww_debug_num_5(1));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_a2_a_aI : cycloneii_io
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
	padio => ww_debug_num_5(2));

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_a3_a_aI : cycloneii_io
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
	padio => ww_debug_num_5(3));
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.state_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity kirsch is
  port (
      i_clock  : in STD_LOGIC
    ; i_reset  : in STD_LOGIC
    ; i_valid  : in STD_LOGIC
    ; i_pixel  : in std_logic_vector (7 downto 0)
    ; o_valid  : out STD_LOGIC
    ; o_edge  : out STD_LOGIC
    ; o_dir  : out std_logic_vector (2 downto 0)
    ; o_mode  : out std_logic_vector (1 downto 0)
    ; o_row  : out std_logic_vector (7 downto 0)
    ; debug_key  : in std_logic_vector (3 downto 1)
    ; debug_switch  : in std_logic_vector (17 downto 0)
    ; debug_led_red  : out std_logic_vector (17 downto 0)
    ; debug_led_grn  : out std_logic_vector (5 downto 0)
    ; debug_num_0  : out std_logic_vector (3 downto 0)
    ; debug_num_1  : out std_logic_vector (3 downto 0)
    ; debug_num_2  : out std_logic_vector (3 downto 0)
    ; debug_num_3  : out std_logic_vector (3 downto 0)
    ; debug_num_4  : out std_logic_vector (3 downto 0)
    ; debug_num_5  : out std_logic_vector (3 downto 0)
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of kirsch is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.kirsch_chip
    port map (
        i_clock => i_clock
      , i_reset => i_reset
      , i_valid => i_valid
      , i_pixel(7) => i_pixel(7)
      , i_pixel(6) => i_pixel(6)
      , i_pixel(5) => i_pixel(5)
      , i_pixel(4) => i_pixel(4)
      , i_pixel(3) => i_pixel(3)
      , i_pixel(2) => i_pixel(2)
      , i_pixel(1) => i_pixel(1)
      , i_pixel(0) => i_pixel(0)
      , o_valid => o_valid
      , o_edge => o_edge
      , o_dir(2) => o_dir(2)
      , o_dir(1) => o_dir(1)
      , o_dir(0) => o_dir(0)
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
      , o_row(7) => o_row(7)
      , o_row(6) => o_row(6)
      , o_row(5) => o_row(5)
      , o_row(4) => o_row(4)
      , o_row(3) => o_row(3)
      , o_row(2) => o_row(2)
      , o_row(1) => o_row(1)
      , o_row(0) => o_row(0)
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
      , debug_led_red(17) => debug_led_red(17)
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
      , debug_num_0(3) => debug_num_0(3)
      , debug_num_0(2) => debug_num_0(2)
      , debug_num_0(1) => debug_num_0(1)
      , debug_num_0(0) => debug_num_0(0)
      , debug_num_1(3) => debug_num_1(3)
      , debug_num_1(2) => debug_num_1(2)
      , debug_num_1(1) => debug_num_1(1)
      , debug_num_1(0) => debug_num_1(0)
      , debug_num_2(3) => debug_num_2(3)
      , debug_num_2(2) => debug_num_2(2)
      , debug_num_2(1) => debug_num_2(1)
      , debug_num_2(0) => debug_num_2(0)
      , debug_num_3(3) => debug_num_3(3)
      , debug_num_3(2) => debug_num_3(2)
      , debug_num_3(1) => debug_num_3(1)
      , debug_num_3(0) => debug_num_3(0)
      , debug_num_4(3) => debug_num_4(3)
      , debug_num_4(2) => debug_num_4(2)
      , debug_num_4(1) => debug_num_4(1)
      , debug_num_4(0) => debug_num_4(0)
      , debug_num_5(3) => debug_num_5(3)
      , debug_num_5(2) => debug_num_5(2)
      , debug_num_5(1) => debug_num_5(1)
      , debug_num_5(0) => debug_num_5(0)
    );
end architecture;

