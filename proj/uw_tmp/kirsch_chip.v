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

// DATE "03/23/2016 14:38:34"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module kirsch_chip (	i_clock,
	i_reset,
	i_valid,
	i_pixel,
	o_valid,
	o_edge,
	o_dir,
	o_mode,
	o_row,
	debug_key,
	debug_switch,
	debug_led_red,
	debug_led_grn,
	debug_num_0,
	debug_num_1,
	debug_num_2,
	debug_num_3,
	debug_num_4,
	debug_num_5);
input 	i_clock;
input 	i_reset;
input 	i_valid;
input 	[7:0] i_pixel;
output 	o_valid;
output 	o_edge;
output 	[2:0] o_dir;
output 	[1:0] o_mode;
output 	[7:0] o_row;
input 	[3:1] debug_key;
input 	[17:0] debug_switch;
output 	[17:0] debug_led_red;
output 	[5:0] debug_led_grn;
output 	[3:0] debug_num_0;
output 	[3:0] debug_num_1;
output 	[3:0] debug_num_2;
output 	[3:0] debug_num_3;
output 	[3:0] debug_num_4;
output 	[3:0] debug_num_5;

// Design Ports Information
// o_valid	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_dir[0]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_dir[1]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_dir[2]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[0]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[1]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[2]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[3]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[4]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[5]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[6]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[7]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// i_clock	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_valid	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[0]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[1]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[2]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[3]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[4]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[5]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[6]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[7]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// o_edge	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_mode[0]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_mode[1]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_key[1]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[2]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[3]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[0]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[1]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[2]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[3]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[4]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[5]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[6]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[7]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[8]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[9]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[10]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[11]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[12]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[13]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[14]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[15]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[16]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[17]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_led_red[0]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[1]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[2]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[3]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[4]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[5]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[6]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[7]	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[8]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[9]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[10]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[11]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[12]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[13]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[14]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[15]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[16]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[17]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[0]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[1]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[2]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[3]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[4]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[1]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[2]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[3]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[1]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[2]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[3]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[0]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[1]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[2]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[3]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[0]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[1]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[2]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[3]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[0]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[1]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[2]	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[3]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[1]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[2]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[3]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// i_reset	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
initial $sdf_annotate("kirsch_v.sdo");
// synopsys translate_on

wire i_reset_acombout;


// Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_reset_aI(
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
	.combout(i_reset_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_reset));
// synopsys translate_off
defparam i_reset_aI.input_async_reset = "none";
defparam i_reset_aI.input_power_up = "low";
defparam i_reset_aI.input_register_mode = "none";
defparam i_reset_aI.input_sync_reset = "none";
defparam i_reset_aI.oe_async_reset = "none";
defparam i_reset_aI.oe_power_up = "low";
defparam i_reset_aI.oe_register_mode = "none";
defparam i_reset_aI.oe_sync_reset = "none";
defparam i_reset_aI.operation_mode = "input";
defparam i_reset_aI.output_async_reset = "none";
defparam i_reset_aI.output_power_up = "low";
defparam i_reset_aI.output_register_mode = "none";
defparam i_reset_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_valid_aI(
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
	.padio(o_valid));
// synopsys translate_off
defparam o_valid_aI.input_async_reset = "none";
defparam o_valid_aI.input_power_up = "low";
defparam o_valid_aI.input_register_mode = "none";
defparam o_valid_aI.input_sync_reset = "none";
defparam o_valid_aI.oe_async_reset = "none";
defparam o_valid_aI.oe_power_up = "low";
defparam o_valid_aI.oe_register_mode = "none";
defparam o_valid_aI.oe_sync_reset = "none";
defparam o_valid_aI.open_drain_output = "true";
defparam o_valid_aI.operation_mode = "output";
defparam o_valid_aI.output_async_reset = "none";
defparam o_valid_aI.output_power_up = "low";
defparam o_valid_aI.output_register_mode = "none";
defparam o_valid_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_dir_a0_a_aI(
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
	.padio(o_dir[0]));
// synopsys translate_off
defparam o_dir_a0_a_aI.input_async_reset = "none";
defparam o_dir_a0_a_aI.input_power_up = "low";
defparam o_dir_a0_a_aI.input_register_mode = "none";
defparam o_dir_a0_a_aI.input_sync_reset = "none";
defparam o_dir_a0_a_aI.oe_async_reset = "none";
defparam o_dir_a0_a_aI.oe_power_up = "low";
defparam o_dir_a0_a_aI.oe_register_mode = "none";
defparam o_dir_a0_a_aI.oe_sync_reset = "none";
defparam o_dir_a0_a_aI.open_drain_output = "true";
defparam o_dir_a0_a_aI.operation_mode = "output";
defparam o_dir_a0_a_aI.output_async_reset = "none";
defparam o_dir_a0_a_aI.output_power_up = "low";
defparam o_dir_a0_a_aI.output_register_mode = "none";
defparam o_dir_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_dir_a1_a_aI(
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
	.padio(o_dir[1]));
// synopsys translate_off
defparam o_dir_a1_a_aI.input_async_reset = "none";
defparam o_dir_a1_a_aI.input_power_up = "low";
defparam o_dir_a1_a_aI.input_register_mode = "none";
defparam o_dir_a1_a_aI.input_sync_reset = "none";
defparam o_dir_a1_a_aI.oe_async_reset = "none";
defparam o_dir_a1_a_aI.oe_power_up = "low";
defparam o_dir_a1_a_aI.oe_register_mode = "none";
defparam o_dir_a1_a_aI.oe_sync_reset = "none";
defparam o_dir_a1_a_aI.open_drain_output = "true";
defparam o_dir_a1_a_aI.operation_mode = "output";
defparam o_dir_a1_a_aI.output_async_reset = "none";
defparam o_dir_a1_a_aI.output_power_up = "low";
defparam o_dir_a1_a_aI.output_register_mode = "none";
defparam o_dir_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_dir_a2_a_aI(
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
	.padio(o_dir[2]));
// synopsys translate_off
defparam o_dir_a2_a_aI.input_async_reset = "none";
defparam o_dir_a2_a_aI.input_power_up = "low";
defparam o_dir_a2_a_aI.input_register_mode = "none";
defparam o_dir_a2_a_aI.input_sync_reset = "none";
defparam o_dir_a2_a_aI.oe_async_reset = "none";
defparam o_dir_a2_a_aI.oe_power_up = "low";
defparam o_dir_a2_a_aI.oe_register_mode = "none";
defparam o_dir_a2_a_aI.oe_sync_reset = "none";
defparam o_dir_a2_a_aI.open_drain_output = "true";
defparam o_dir_a2_a_aI.operation_mode = "output";
defparam o_dir_a2_a_aI.output_async_reset = "none";
defparam o_dir_a2_a_aI.output_power_up = "low";
defparam o_dir_a2_a_aI.output_register_mode = "none";
defparam o_dir_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a0_a_aI(
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
	.padio(o_row[0]));
// synopsys translate_off
defparam o_row_a0_a_aI.input_async_reset = "none";
defparam o_row_a0_a_aI.input_power_up = "low";
defparam o_row_a0_a_aI.input_register_mode = "none";
defparam o_row_a0_a_aI.input_sync_reset = "none";
defparam o_row_a0_a_aI.oe_async_reset = "none";
defparam o_row_a0_a_aI.oe_power_up = "low";
defparam o_row_a0_a_aI.oe_register_mode = "none";
defparam o_row_a0_a_aI.oe_sync_reset = "none";
defparam o_row_a0_a_aI.open_drain_output = "true";
defparam o_row_a0_a_aI.operation_mode = "output";
defparam o_row_a0_a_aI.output_async_reset = "none";
defparam o_row_a0_a_aI.output_power_up = "low";
defparam o_row_a0_a_aI.output_register_mode = "none";
defparam o_row_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a1_a_aI(
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
	.padio(o_row[1]));
// synopsys translate_off
defparam o_row_a1_a_aI.input_async_reset = "none";
defparam o_row_a1_a_aI.input_power_up = "low";
defparam o_row_a1_a_aI.input_register_mode = "none";
defparam o_row_a1_a_aI.input_sync_reset = "none";
defparam o_row_a1_a_aI.oe_async_reset = "none";
defparam o_row_a1_a_aI.oe_power_up = "low";
defparam o_row_a1_a_aI.oe_register_mode = "none";
defparam o_row_a1_a_aI.oe_sync_reset = "none";
defparam o_row_a1_a_aI.open_drain_output = "true";
defparam o_row_a1_a_aI.operation_mode = "output";
defparam o_row_a1_a_aI.output_async_reset = "none";
defparam o_row_a1_a_aI.output_power_up = "low";
defparam o_row_a1_a_aI.output_register_mode = "none";
defparam o_row_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a2_a_aI(
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
	.padio(o_row[2]));
// synopsys translate_off
defparam o_row_a2_a_aI.input_async_reset = "none";
defparam o_row_a2_a_aI.input_power_up = "low";
defparam o_row_a2_a_aI.input_register_mode = "none";
defparam o_row_a2_a_aI.input_sync_reset = "none";
defparam o_row_a2_a_aI.oe_async_reset = "none";
defparam o_row_a2_a_aI.oe_power_up = "low";
defparam o_row_a2_a_aI.oe_register_mode = "none";
defparam o_row_a2_a_aI.oe_sync_reset = "none";
defparam o_row_a2_a_aI.open_drain_output = "true";
defparam o_row_a2_a_aI.operation_mode = "output";
defparam o_row_a2_a_aI.output_async_reset = "none";
defparam o_row_a2_a_aI.output_power_up = "low";
defparam o_row_a2_a_aI.output_register_mode = "none";
defparam o_row_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a3_a_aI(
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
	.padio(o_row[3]));
// synopsys translate_off
defparam o_row_a3_a_aI.input_async_reset = "none";
defparam o_row_a3_a_aI.input_power_up = "low";
defparam o_row_a3_a_aI.input_register_mode = "none";
defparam o_row_a3_a_aI.input_sync_reset = "none";
defparam o_row_a3_a_aI.oe_async_reset = "none";
defparam o_row_a3_a_aI.oe_power_up = "low";
defparam o_row_a3_a_aI.oe_register_mode = "none";
defparam o_row_a3_a_aI.oe_sync_reset = "none";
defparam o_row_a3_a_aI.open_drain_output = "true";
defparam o_row_a3_a_aI.operation_mode = "output";
defparam o_row_a3_a_aI.output_async_reset = "none";
defparam o_row_a3_a_aI.output_power_up = "low";
defparam o_row_a3_a_aI.output_register_mode = "none";
defparam o_row_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a4_a_aI(
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
	.padio(o_row[4]));
// synopsys translate_off
defparam o_row_a4_a_aI.input_async_reset = "none";
defparam o_row_a4_a_aI.input_power_up = "low";
defparam o_row_a4_a_aI.input_register_mode = "none";
defparam o_row_a4_a_aI.input_sync_reset = "none";
defparam o_row_a4_a_aI.oe_async_reset = "none";
defparam o_row_a4_a_aI.oe_power_up = "low";
defparam o_row_a4_a_aI.oe_register_mode = "none";
defparam o_row_a4_a_aI.oe_sync_reset = "none";
defparam o_row_a4_a_aI.open_drain_output = "true";
defparam o_row_a4_a_aI.operation_mode = "output";
defparam o_row_a4_a_aI.output_async_reset = "none";
defparam o_row_a4_a_aI.output_power_up = "low";
defparam o_row_a4_a_aI.output_register_mode = "none";
defparam o_row_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a5_a_aI(
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
	.padio(o_row[5]));
// synopsys translate_off
defparam o_row_a5_a_aI.input_async_reset = "none";
defparam o_row_a5_a_aI.input_power_up = "low";
defparam o_row_a5_a_aI.input_register_mode = "none";
defparam o_row_a5_a_aI.input_sync_reset = "none";
defparam o_row_a5_a_aI.oe_async_reset = "none";
defparam o_row_a5_a_aI.oe_power_up = "low";
defparam o_row_a5_a_aI.oe_register_mode = "none";
defparam o_row_a5_a_aI.oe_sync_reset = "none";
defparam o_row_a5_a_aI.open_drain_output = "true";
defparam o_row_a5_a_aI.operation_mode = "output";
defparam o_row_a5_a_aI.output_async_reset = "none";
defparam o_row_a5_a_aI.output_power_up = "low";
defparam o_row_a5_a_aI.output_register_mode = "none";
defparam o_row_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a6_a_aI(
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
	.padio(o_row[6]));
// synopsys translate_off
defparam o_row_a6_a_aI.input_async_reset = "none";
defparam o_row_a6_a_aI.input_power_up = "low";
defparam o_row_a6_a_aI.input_register_mode = "none";
defparam o_row_a6_a_aI.input_sync_reset = "none";
defparam o_row_a6_a_aI.oe_async_reset = "none";
defparam o_row_a6_a_aI.oe_power_up = "low";
defparam o_row_a6_a_aI.oe_register_mode = "none";
defparam o_row_a6_a_aI.oe_sync_reset = "none";
defparam o_row_a6_a_aI.open_drain_output = "true";
defparam o_row_a6_a_aI.operation_mode = "output";
defparam o_row_a6_a_aI.output_async_reset = "none";
defparam o_row_a6_a_aI.output_power_up = "low";
defparam o_row_a6_a_aI.output_register_mode = "none";
defparam o_row_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a7_a_aI(
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
	.padio(o_row[7]));
// synopsys translate_off
defparam o_row_a7_a_aI.input_async_reset = "none";
defparam o_row_a7_a_aI.input_power_up = "low";
defparam o_row_a7_a_aI.input_register_mode = "none";
defparam o_row_a7_a_aI.input_sync_reset = "none";
defparam o_row_a7_a_aI.oe_async_reset = "none";
defparam o_row_a7_a_aI.oe_power_up = "low";
defparam o_row_a7_a_aI.oe_register_mode = "none";
defparam o_row_a7_a_aI.oe_sync_reset = "none";
defparam o_row_a7_a_aI.open_drain_output = "true";
defparam o_row_a7_a_aI.operation_mode = "output";
defparam o_row_a7_a_aI.output_async_reset = "none";
defparam o_row_a7_a_aI.output_power_up = "low";
defparam o_row_a7_a_aI.output_register_mode = "none";
defparam o_row_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_clock_aI(
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
	.padio(i_clock));
// synopsys translate_off
defparam i_clock_aI.input_async_reset = "none";
defparam i_clock_aI.input_power_up = "low";
defparam i_clock_aI.input_register_mode = "none";
defparam i_clock_aI.input_sync_reset = "none";
defparam i_clock_aI.oe_async_reset = "none";
defparam i_clock_aI.oe_power_up = "low";
defparam i_clock_aI.oe_register_mode = "none";
defparam i_clock_aI.oe_sync_reset = "none";
defparam i_clock_aI.operation_mode = "input";
defparam i_clock_aI.output_async_reset = "none";
defparam i_clock_aI.output_power_up = "low";
defparam i_clock_aI.output_register_mode = "none";
defparam i_clock_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_valid_aI(
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
	.padio(i_valid));
// synopsys translate_off
defparam i_valid_aI.input_async_reset = "none";
defparam i_valid_aI.input_power_up = "low";
defparam i_valid_aI.input_register_mode = "none";
defparam i_valid_aI.input_sync_reset = "none";
defparam i_valid_aI.oe_async_reset = "none";
defparam i_valid_aI.oe_power_up = "low";
defparam i_valid_aI.oe_register_mode = "none";
defparam i_valid_aI.oe_sync_reset = "none";
defparam i_valid_aI.operation_mode = "input";
defparam i_valid_aI.output_async_reset = "none";
defparam i_valid_aI.output_power_up = "low";
defparam i_valid_aI.output_register_mode = "none";
defparam i_valid_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a0_a_aI(
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
	.padio(i_pixel[0]));
// synopsys translate_off
defparam i_pixel_a0_a_aI.input_async_reset = "none";
defparam i_pixel_a0_a_aI.input_power_up = "low";
defparam i_pixel_a0_a_aI.input_register_mode = "none";
defparam i_pixel_a0_a_aI.input_sync_reset = "none";
defparam i_pixel_a0_a_aI.oe_async_reset = "none";
defparam i_pixel_a0_a_aI.oe_power_up = "low";
defparam i_pixel_a0_a_aI.oe_register_mode = "none";
defparam i_pixel_a0_a_aI.oe_sync_reset = "none";
defparam i_pixel_a0_a_aI.operation_mode = "input";
defparam i_pixel_a0_a_aI.output_async_reset = "none";
defparam i_pixel_a0_a_aI.output_power_up = "low";
defparam i_pixel_a0_a_aI.output_register_mode = "none";
defparam i_pixel_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a1_a_aI(
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
	.padio(i_pixel[1]));
// synopsys translate_off
defparam i_pixel_a1_a_aI.input_async_reset = "none";
defparam i_pixel_a1_a_aI.input_power_up = "low";
defparam i_pixel_a1_a_aI.input_register_mode = "none";
defparam i_pixel_a1_a_aI.input_sync_reset = "none";
defparam i_pixel_a1_a_aI.oe_async_reset = "none";
defparam i_pixel_a1_a_aI.oe_power_up = "low";
defparam i_pixel_a1_a_aI.oe_register_mode = "none";
defparam i_pixel_a1_a_aI.oe_sync_reset = "none";
defparam i_pixel_a1_a_aI.operation_mode = "input";
defparam i_pixel_a1_a_aI.output_async_reset = "none";
defparam i_pixel_a1_a_aI.output_power_up = "low";
defparam i_pixel_a1_a_aI.output_register_mode = "none";
defparam i_pixel_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a2_a_aI(
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
	.padio(i_pixel[2]));
// synopsys translate_off
defparam i_pixel_a2_a_aI.input_async_reset = "none";
defparam i_pixel_a2_a_aI.input_power_up = "low";
defparam i_pixel_a2_a_aI.input_register_mode = "none";
defparam i_pixel_a2_a_aI.input_sync_reset = "none";
defparam i_pixel_a2_a_aI.oe_async_reset = "none";
defparam i_pixel_a2_a_aI.oe_power_up = "low";
defparam i_pixel_a2_a_aI.oe_register_mode = "none";
defparam i_pixel_a2_a_aI.oe_sync_reset = "none";
defparam i_pixel_a2_a_aI.operation_mode = "input";
defparam i_pixel_a2_a_aI.output_async_reset = "none";
defparam i_pixel_a2_a_aI.output_power_up = "low";
defparam i_pixel_a2_a_aI.output_register_mode = "none";
defparam i_pixel_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a3_a_aI(
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
	.padio(i_pixel[3]));
// synopsys translate_off
defparam i_pixel_a3_a_aI.input_async_reset = "none";
defparam i_pixel_a3_a_aI.input_power_up = "low";
defparam i_pixel_a3_a_aI.input_register_mode = "none";
defparam i_pixel_a3_a_aI.input_sync_reset = "none";
defparam i_pixel_a3_a_aI.oe_async_reset = "none";
defparam i_pixel_a3_a_aI.oe_power_up = "low";
defparam i_pixel_a3_a_aI.oe_register_mode = "none";
defparam i_pixel_a3_a_aI.oe_sync_reset = "none";
defparam i_pixel_a3_a_aI.operation_mode = "input";
defparam i_pixel_a3_a_aI.output_async_reset = "none";
defparam i_pixel_a3_a_aI.output_power_up = "low";
defparam i_pixel_a3_a_aI.output_register_mode = "none";
defparam i_pixel_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a4_a_aI(
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
	.padio(i_pixel[4]));
// synopsys translate_off
defparam i_pixel_a4_a_aI.input_async_reset = "none";
defparam i_pixel_a4_a_aI.input_power_up = "low";
defparam i_pixel_a4_a_aI.input_register_mode = "none";
defparam i_pixel_a4_a_aI.input_sync_reset = "none";
defparam i_pixel_a4_a_aI.oe_async_reset = "none";
defparam i_pixel_a4_a_aI.oe_power_up = "low";
defparam i_pixel_a4_a_aI.oe_register_mode = "none";
defparam i_pixel_a4_a_aI.oe_sync_reset = "none";
defparam i_pixel_a4_a_aI.operation_mode = "input";
defparam i_pixel_a4_a_aI.output_async_reset = "none";
defparam i_pixel_a4_a_aI.output_power_up = "low";
defparam i_pixel_a4_a_aI.output_register_mode = "none";
defparam i_pixel_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a5_a_aI(
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
	.padio(i_pixel[5]));
// synopsys translate_off
defparam i_pixel_a5_a_aI.input_async_reset = "none";
defparam i_pixel_a5_a_aI.input_power_up = "low";
defparam i_pixel_a5_a_aI.input_register_mode = "none";
defparam i_pixel_a5_a_aI.input_sync_reset = "none";
defparam i_pixel_a5_a_aI.oe_async_reset = "none";
defparam i_pixel_a5_a_aI.oe_power_up = "low";
defparam i_pixel_a5_a_aI.oe_register_mode = "none";
defparam i_pixel_a5_a_aI.oe_sync_reset = "none";
defparam i_pixel_a5_a_aI.operation_mode = "input";
defparam i_pixel_a5_a_aI.output_async_reset = "none";
defparam i_pixel_a5_a_aI.output_power_up = "low";
defparam i_pixel_a5_a_aI.output_register_mode = "none";
defparam i_pixel_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a6_a_aI(
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
	.padio(i_pixel[6]));
// synopsys translate_off
defparam i_pixel_a6_a_aI.input_async_reset = "none";
defparam i_pixel_a6_a_aI.input_power_up = "low";
defparam i_pixel_a6_a_aI.input_register_mode = "none";
defparam i_pixel_a6_a_aI.input_sync_reset = "none";
defparam i_pixel_a6_a_aI.oe_async_reset = "none";
defparam i_pixel_a6_a_aI.oe_power_up = "low";
defparam i_pixel_a6_a_aI.oe_register_mode = "none";
defparam i_pixel_a6_a_aI.oe_sync_reset = "none";
defparam i_pixel_a6_a_aI.operation_mode = "input";
defparam i_pixel_a6_a_aI.output_async_reset = "none";
defparam i_pixel_a6_a_aI.output_power_up = "low";
defparam i_pixel_a6_a_aI.output_register_mode = "none";
defparam i_pixel_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a7_a_aI(
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
	.padio(i_pixel[7]));
// synopsys translate_off
defparam i_pixel_a7_a_aI.input_async_reset = "none";
defparam i_pixel_a7_a_aI.input_power_up = "low";
defparam i_pixel_a7_a_aI.input_register_mode = "none";
defparam i_pixel_a7_a_aI.input_sync_reset = "none";
defparam i_pixel_a7_a_aI.oe_async_reset = "none";
defparam i_pixel_a7_a_aI.oe_power_up = "low";
defparam i_pixel_a7_a_aI.oe_register_mode = "none";
defparam i_pixel_a7_a_aI.oe_sync_reset = "none";
defparam i_pixel_a7_a_aI.operation_mode = "input";
defparam i_pixel_a7_a_aI.output_async_reset = "none";
defparam i_pixel_a7_a_aI.output_power_up = "low";
defparam i_pixel_a7_a_aI.output_register_mode = "none";
defparam i_pixel_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_edge_aI(
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
	.padio(o_edge));
// synopsys translate_off
defparam o_edge_aI.input_async_reset = "none";
defparam o_edge_aI.input_power_up = "low";
defparam o_edge_aI.input_register_mode = "none";
defparam o_edge_aI.input_sync_reset = "none";
defparam o_edge_aI.oe_async_reset = "none";
defparam o_edge_aI.oe_power_up = "low";
defparam o_edge_aI.oe_register_mode = "none";
defparam o_edge_aI.oe_sync_reset = "none";
defparam o_edge_aI.operation_mode = "output";
defparam o_edge_aI.output_async_reset = "none";
defparam o_edge_aI.output_power_up = "low";
defparam o_edge_aI.output_register_mode = "none";
defparam o_edge_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_mode_a0_a_aI(
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
defparam o_mode_a0_a_aI.input_async_reset = "none";
defparam o_mode_a0_a_aI.input_power_up = "low";
defparam o_mode_a0_a_aI.input_register_mode = "none";
defparam o_mode_a0_a_aI.input_sync_reset = "none";
defparam o_mode_a0_a_aI.oe_async_reset = "none";
defparam o_mode_a0_a_aI.oe_power_up = "low";
defparam o_mode_a0_a_aI.oe_register_mode = "none";
defparam o_mode_a0_a_aI.oe_sync_reset = "none";
defparam o_mode_a0_a_aI.operation_mode = "output";
defparam o_mode_a0_a_aI.output_async_reset = "none";
defparam o_mode_a0_a_aI.output_power_up = "low";
defparam o_mode_a0_a_aI.output_register_mode = "none";
defparam o_mode_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_mode_a1_a_aI(
	.datain(!i_reset_acombout),
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
defparam o_mode_a1_a_aI.input_async_reset = "none";
defparam o_mode_a1_a_aI.input_power_up = "low";
defparam o_mode_a1_a_aI.input_register_mode = "none";
defparam o_mode_a1_a_aI.input_sync_reset = "none";
defparam o_mode_a1_a_aI.oe_async_reset = "none";
defparam o_mode_a1_a_aI.oe_power_up = "low";
defparam o_mode_a1_a_aI.oe_register_mode = "none";
defparam o_mode_a1_a_aI.oe_sync_reset = "none";
defparam o_mode_a1_a_aI.operation_mode = "output";
defparam o_mode_a1_a_aI.output_async_reset = "none";
defparam o_mode_a1_a_aI.output_power_up = "low";
defparam o_mode_a1_a_aI.output_register_mode = "none";
defparam o_mode_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_key_a1_a_aI(
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
defparam debug_key_a1_a_aI.input_async_reset = "none";
defparam debug_key_a1_a_aI.input_power_up = "low";
defparam debug_key_a1_a_aI.input_register_mode = "none";
defparam debug_key_a1_a_aI.input_sync_reset = "none";
defparam debug_key_a1_a_aI.oe_async_reset = "none";
defparam debug_key_a1_a_aI.oe_power_up = "low";
defparam debug_key_a1_a_aI.oe_register_mode = "none";
defparam debug_key_a1_a_aI.oe_sync_reset = "none";
defparam debug_key_a1_a_aI.operation_mode = "input";
defparam debug_key_a1_a_aI.output_async_reset = "none";
defparam debug_key_a1_a_aI.output_power_up = "low";
defparam debug_key_a1_a_aI.output_register_mode = "none";
defparam debug_key_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_key_a2_a_aI(
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
defparam debug_key_a2_a_aI.input_async_reset = "none";
defparam debug_key_a2_a_aI.input_power_up = "low";
defparam debug_key_a2_a_aI.input_register_mode = "none";
defparam debug_key_a2_a_aI.input_sync_reset = "none";
defparam debug_key_a2_a_aI.oe_async_reset = "none";
defparam debug_key_a2_a_aI.oe_power_up = "low";
defparam debug_key_a2_a_aI.oe_register_mode = "none";
defparam debug_key_a2_a_aI.oe_sync_reset = "none";
defparam debug_key_a2_a_aI.operation_mode = "input";
defparam debug_key_a2_a_aI.output_async_reset = "none";
defparam debug_key_a2_a_aI.output_power_up = "low";
defparam debug_key_a2_a_aI.output_register_mode = "none";
defparam debug_key_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_key_a3_a_aI(
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
defparam debug_key_a3_a_aI.input_async_reset = "none";
defparam debug_key_a3_a_aI.input_power_up = "low";
defparam debug_key_a3_a_aI.input_register_mode = "none";
defparam debug_key_a3_a_aI.input_sync_reset = "none";
defparam debug_key_a3_a_aI.oe_async_reset = "none";
defparam debug_key_a3_a_aI.oe_power_up = "low";
defparam debug_key_a3_a_aI.oe_register_mode = "none";
defparam debug_key_a3_a_aI.oe_sync_reset = "none";
defparam debug_key_a3_a_aI.operation_mode = "input";
defparam debug_key_a3_a_aI.output_async_reset = "none";
defparam debug_key_a3_a_aI.output_power_up = "low";
defparam debug_key_a3_a_aI.output_register_mode = "none";
defparam debug_key_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a0_a_aI(
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
defparam debug_switch_a0_a_aI.input_async_reset = "none";
defparam debug_switch_a0_a_aI.input_power_up = "low";
defparam debug_switch_a0_a_aI.input_register_mode = "none";
defparam debug_switch_a0_a_aI.input_sync_reset = "none";
defparam debug_switch_a0_a_aI.oe_async_reset = "none";
defparam debug_switch_a0_a_aI.oe_power_up = "low";
defparam debug_switch_a0_a_aI.oe_register_mode = "none";
defparam debug_switch_a0_a_aI.oe_sync_reset = "none";
defparam debug_switch_a0_a_aI.operation_mode = "input";
defparam debug_switch_a0_a_aI.output_async_reset = "none";
defparam debug_switch_a0_a_aI.output_power_up = "low";
defparam debug_switch_a0_a_aI.output_register_mode = "none";
defparam debug_switch_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a1_a_aI(
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
defparam debug_switch_a1_a_aI.input_async_reset = "none";
defparam debug_switch_a1_a_aI.input_power_up = "low";
defparam debug_switch_a1_a_aI.input_register_mode = "none";
defparam debug_switch_a1_a_aI.input_sync_reset = "none";
defparam debug_switch_a1_a_aI.oe_async_reset = "none";
defparam debug_switch_a1_a_aI.oe_power_up = "low";
defparam debug_switch_a1_a_aI.oe_register_mode = "none";
defparam debug_switch_a1_a_aI.oe_sync_reset = "none";
defparam debug_switch_a1_a_aI.operation_mode = "input";
defparam debug_switch_a1_a_aI.output_async_reset = "none";
defparam debug_switch_a1_a_aI.output_power_up = "low";
defparam debug_switch_a1_a_aI.output_register_mode = "none";
defparam debug_switch_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a2_a_aI(
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
defparam debug_switch_a2_a_aI.input_async_reset = "none";
defparam debug_switch_a2_a_aI.input_power_up = "low";
defparam debug_switch_a2_a_aI.input_register_mode = "none";
defparam debug_switch_a2_a_aI.input_sync_reset = "none";
defparam debug_switch_a2_a_aI.oe_async_reset = "none";
defparam debug_switch_a2_a_aI.oe_power_up = "low";
defparam debug_switch_a2_a_aI.oe_register_mode = "none";
defparam debug_switch_a2_a_aI.oe_sync_reset = "none";
defparam debug_switch_a2_a_aI.operation_mode = "input";
defparam debug_switch_a2_a_aI.output_async_reset = "none";
defparam debug_switch_a2_a_aI.output_power_up = "low";
defparam debug_switch_a2_a_aI.output_register_mode = "none";
defparam debug_switch_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a3_a_aI(
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
defparam debug_switch_a3_a_aI.input_async_reset = "none";
defparam debug_switch_a3_a_aI.input_power_up = "low";
defparam debug_switch_a3_a_aI.input_register_mode = "none";
defparam debug_switch_a3_a_aI.input_sync_reset = "none";
defparam debug_switch_a3_a_aI.oe_async_reset = "none";
defparam debug_switch_a3_a_aI.oe_power_up = "low";
defparam debug_switch_a3_a_aI.oe_register_mode = "none";
defparam debug_switch_a3_a_aI.oe_sync_reset = "none";
defparam debug_switch_a3_a_aI.operation_mode = "input";
defparam debug_switch_a3_a_aI.output_async_reset = "none";
defparam debug_switch_a3_a_aI.output_power_up = "low";
defparam debug_switch_a3_a_aI.output_register_mode = "none";
defparam debug_switch_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a4_a_aI(
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
defparam debug_switch_a4_a_aI.input_async_reset = "none";
defparam debug_switch_a4_a_aI.input_power_up = "low";
defparam debug_switch_a4_a_aI.input_register_mode = "none";
defparam debug_switch_a4_a_aI.input_sync_reset = "none";
defparam debug_switch_a4_a_aI.oe_async_reset = "none";
defparam debug_switch_a4_a_aI.oe_power_up = "low";
defparam debug_switch_a4_a_aI.oe_register_mode = "none";
defparam debug_switch_a4_a_aI.oe_sync_reset = "none";
defparam debug_switch_a4_a_aI.operation_mode = "input";
defparam debug_switch_a4_a_aI.output_async_reset = "none";
defparam debug_switch_a4_a_aI.output_power_up = "low";
defparam debug_switch_a4_a_aI.output_register_mode = "none";
defparam debug_switch_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a5_a_aI(
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
defparam debug_switch_a5_a_aI.input_async_reset = "none";
defparam debug_switch_a5_a_aI.input_power_up = "low";
defparam debug_switch_a5_a_aI.input_register_mode = "none";
defparam debug_switch_a5_a_aI.input_sync_reset = "none";
defparam debug_switch_a5_a_aI.oe_async_reset = "none";
defparam debug_switch_a5_a_aI.oe_power_up = "low";
defparam debug_switch_a5_a_aI.oe_register_mode = "none";
defparam debug_switch_a5_a_aI.oe_sync_reset = "none";
defparam debug_switch_a5_a_aI.operation_mode = "input";
defparam debug_switch_a5_a_aI.output_async_reset = "none";
defparam debug_switch_a5_a_aI.output_power_up = "low";
defparam debug_switch_a5_a_aI.output_register_mode = "none";
defparam debug_switch_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a6_a_aI(
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
defparam debug_switch_a6_a_aI.input_async_reset = "none";
defparam debug_switch_a6_a_aI.input_power_up = "low";
defparam debug_switch_a6_a_aI.input_register_mode = "none";
defparam debug_switch_a6_a_aI.input_sync_reset = "none";
defparam debug_switch_a6_a_aI.oe_async_reset = "none";
defparam debug_switch_a6_a_aI.oe_power_up = "low";
defparam debug_switch_a6_a_aI.oe_register_mode = "none";
defparam debug_switch_a6_a_aI.oe_sync_reset = "none";
defparam debug_switch_a6_a_aI.operation_mode = "input";
defparam debug_switch_a6_a_aI.output_async_reset = "none";
defparam debug_switch_a6_a_aI.output_power_up = "low";
defparam debug_switch_a6_a_aI.output_register_mode = "none";
defparam debug_switch_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a7_a_aI(
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
defparam debug_switch_a7_a_aI.input_async_reset = "none";
defparam debug_switch_a7_a_aI.input_power_up = "low";
defparam debug_switch_a7_a_aI.input_register_mode = "none";
defparam debug_switch_a7_a_aI.input_sync_reset = "none";
defparam debug_switch_a7_a_aI.oe_async_reset = "none";
defparam debug_switch_a7_a_aI.oe_power_up = "low";
defparam debug_switch_a7_a_aI.oe_register_mode = "none";
defparam debug_switch_a7_a_aI.oe_sync_reset = "none";
defparam debug_switch_a7_a_aI.operation_mode = "input";
defparam debug_switch_a7_a_aI.output_async_reset = "none";
defparam debug_switch_a7_a_aI.output_power_up = "low";
defparam debug_switch_a7_a_aI.output_register_mode = "none";
defparam debug_switch_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a8_a_aI(
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
defparam debug_switch_a8_a_aI.input_async_reset = "none";
defparam debug_switch_a8_a_aI.input_power_up = "low";
defparam debug_switch_a8_a_aI.input_register_mode = "none";
defparam debug_switch_a8_a_aI.input_sync_reset = "none";
defparam debug_switch_a8_a_aI.oe_async_reset = "none";
defparam debug_switch_a8_a_aI.oe_power_up = "low";
defparam debug_switch_a8_a_aI.oe_register_mode = "none";
defparam debug_switch_a8_a_aI.oe_sync_reset = "none";
defparam debug_switch_a8_a_aI.operation_mode = "input";
defparam debug_switch_a8_a_aI.output_async_reset = "none";
defparam debug_switch_a8_a_aI.output_power_up = "low";
defparam debug_switch_a8_a_aI.output_register_mode = "none";
defparam debug_switch_a8_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a9_a_aI(
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
defparam debug_switch_a9_a_aI.input_async_reset = "none";
defparam debug_switch_a9_a_aI.input_power_up = "low";
defparam debug_switch_a9_a_aI.input_register_mode = "none";
defparam debug_switch_a9_a_aI.input_sync_reset = "none";
defparam debug_switch_a9_a_aI.oe_async_reset = "none";
defparam debug_switch_a9_a_aI.oe_power_up = "low";
defparam debug_switch_a9_a_aI.oe_register_mode = "none";
defparam debug_switch_a9_a_aI.oe_sync_reset = "none";
defparam debug_switch_a9_a_aI.operation_mode = "input";
defparam debug_switch_a9_a_aI.output_async_reset = "none";
defparam debug_switch_a9_a_aI.output_power_up = "low";
defparam debug_switch_a9_a_aI.output_register_mode = "none";
defparam debug_switch_a9_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a10_a_aI(
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
defparam debug_switch_a10_a_aI.input_async_reset = "none";
defparam debug_switch_a10_a_aI.input_power_up = "low";
defparam debug_switch_a10_a_aI.input_register_mode = "none";
defparam debug_switch_a10_a_aI.input_sync_reset = "none";
defparam debug_switch_a10_a_aI.oe_async_reset = "none";
defparam debug_switch_a10_a_aI.oe_power_up = "low";
defparam debug_switch_a10_a_aI.oe_register_mode = "none";
defparam debug_switch_a10_a_aI.oe_sync_reset = "none";
defparam debug_switch_a10_a_aI.operation_mode = "input";
defparam debug_switch_a10_a_aI.output_async_reset = "none";
defparam debug_switch_a10_a_aI.output_power_up = "low";
defparam debug_switch_a10_a_aI.output_register_mode = "none";
defparam debug_switch_a10_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a11_a_aI(
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
defparam debug_switch_a11_a_aI.input_async_reset = "none";
defparam debug_switch_a11_a_aI.input_power_up = "low";
defparam debug_switch_a11_a_aI.input_register_mode = "none";
defparam debug_switch_a11_a_aI.input_sync_reset = "none";
defparam debug_switch_a11_a_aI.oe_async_reset = "none";
defparam debug_switch_a11_a_aI.oe_power_up = "low";
defparam debug_switch_a11_a_aI.oe_register_mode = "none";
defparam debug_switch_a11_a_aI.oe_sync_reset = "none";
defparam debug_switch_a11_a_aI.operation_mode = "input";
defparam debug_switch_a11_a_aI.output_async_reset = "none";
defparam debug_switch_a11_a_aI.output_power_up = "low";
defparam debug_switch_a11_a_aI.output_register_mode = "none";
defparam debug_switch_a11_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a12_a_aI(
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
defparam debug_switch_a12_a_aI.input_async_reset = "none";
defparam debug_switch_a12_a_aI.input_power_up = "low";
defparam debug_switch_a12_a_aI.input_register_mode = "none";
defparam debug_switch_a12_a_aI.input_sync_reset = "none";
defparam debug_switch_a12_a_aI.oe_async_reset = "none";
defparam debug_switch_a12_a_aI.oe_power_up = "low";
defparam debug_switch_a12_a_aI.oe_register_mode = "none";
defparam debug_switch_a12_a_aI.oe_sync_reset = "none";
defparam debug_switch_a12_a_aI.operation_mode = "input";
defparam debug_switch_a12_a_aI.output_async_reset = "none";
defparam debug_switch_a12_a_aI.output_power_up = "low";
defparam debug_switch_a12_a_aI.output_register_mode = "none";
defparam debug_switch_a12_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a13_a_aI(
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
defparam debug_switch_a13_a_aI.input_async_reset = "none";
defparam debug_switch_a13_a_aI.input_power_up = "low";
defparam debug_switch_a13_a_aI.input_register_mode = "none";
defparam debug_switch_a13_a_aI.input_sync_reset = "none";
defparam debug_switch_a13_a_aI.oe_async_reset = "none";
defparam debug_switch_a13_a_aI.oe_power_up = "low";
defparam debug_switch_a13_a_aI.oe_register_mode = "none";
defparam debug_switch_a13_a_aI.oe_sync_reset = "none";
defparam debug_switch_a13_a_aI.operation_mode = "input";
defparam debug_switch_a13_a_aI.output_async_reset = "none";
defparam debug_switch_a13_a_aI.output_power_up = "low";
defparam debug_switch_a13_a_aI.output_register_mode = "none";
defparam debug_switch_a13_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a14_a_aI(
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
defparam debug_switch_a14_a_aI.input_async_reset = "none";
defparam debug_switch_a14_a_aI.input_power_up = "low";
defparam debug_switch_a14_a_aI.input_register_mode = "none";
defparam debug_switch_a14_a_aI.input_sync_reset = "none";
defparam debug_switch_a14_a_aI.oe_async_reset = "none";
defparam debug_switch_a14_a_aI.oe_power_up = "low";
defparam debug_switch_a14_a_aI.oe_register_mode = "none";
defparam debug_switch_a14_a_aI.oe_sync_reset = "none";
defparam debug_switch_a14_a_aI.operation_mode = "input";
defparam debug_switch_a14_a_aI.output_async_reset = "none";
defparam debug_switch_a14_a_aI.output_power_up = "low";
defparam debug_switch_a14_a_aI.output_register_mode = "none";
defparam debug_switch_a14_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a15_a_aI(
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
defparam debug_switch_a15_a_aI.input_async_reset = "none";
defparam debug_switch_a15_a_aI.input_power_up = "low";
defparam debug_switch_a15_a_aI.input_register_mode = "none";
defparam debug_switch_a15_a_aI.input_sync_reset = "none";
defparam debug_switch_a15_a_aI.oe_async_reset = "none";
defparam debug_switch_a15_a_aI.oe_power_up = "low";
defparam debug_switch_a15_a_aI.oe_register_mode = "none";
defparam debug_switch_a15_a_aI.oe_sync_reset = "none";
defparam debug_switch_a15_a_aI.operation_mode = "input";
defparam debug_switch_a15_a_aI.output_async_reset = "none";
defparam debug_switch_a15_a_aI.output_power_up = "low";
defparam debug_switch_a15_a_aI.output_register_mode = "none";
defparam debug_switch_a15_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a16_a_aI(
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
defparam debug_switch_a16_a_aI.input_async_reset = "none";
defparam debug_switch_a16_a_aI.input_power_up = "low";
defparam debug_switch_a16_a_aI.input_register_mode = "none";
defparam debug_switch_a16_a_aI.input_sync_reset = "none";
defparam debug_switch_a16_a_aI.oe_async_reset = "none";
defparam debug_switch_a16_a_aI.oe_power_up = "low";
defparam debug_switch_a16_a_aI.oe_register_mode = "none";
defparam debug_switch_a16_a_aI.oe_sync_reset = "none";
defparam debug_switch_a16_a_aI.operation_mode = "input";
defparam debug_switch_a16_a_aI.output_async_reset = "none";
defparam debug_switch_a16_a_aI.output_power_up = "low";
defparam debug_switch_a16_a_aI.output_register_mode = "none";
defparam debug_switch_a16_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a17_a_aI(
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
defparam debug_switch_a17_a_aI.input_async_reset = "none";
defparam debug_switch_a17_a_aI.input_power_up = "low";
defparam debug_switch_a17_a_aI.input_register_mode = "none";
defparam debug_switch_a17_a_aI.input_sync_reset = "none";
defparam debug_switch_a17_a_aI.oe_async_reset = "none";
defparam debug_switch_a17_a_aI.oe_power_up = "low";
defparam debug_switch_a17_a_aI.oe_register_mode = "none";
defparam debug_switch_a17_a_aI.oe_sync_reset = "none";
defparam debug_switch_a17_a_aI.operation_mode = "input";
defparam debug_switch_a17_a_aI.output_async_reset = "none";
defparam debug_switch_a17_a_aI.output_power_up = "low";
defparam debug_switch_a17_a_aI.output_register_mode = "none";
defparam debug_switch_a17_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a0_a_aI(
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
defparam debug_led_red_a0_a_aI.input_async_reset = "none";
defparam debug_led_red_a0_a_aI.input_power_up = "low";
defparam debug_led_red_a0_a_aI.input_register_mode = "none";
defparam debug_led_red_a0_a_aI.input_sync_reset = "none";
defparam debug_led_red_a0_a_aI.oe_async_reset = "none";
defparam debug_led_red_a0_a_aI.oe_power_up = "low";
defparam debug_led_red_a0_a_aI.oe_register_mode = "none";
defparam debug_led_red_a0_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a0_a_aI.operation_mode = "output";
defparam debug_led_red_a0_a_aI.output_async_reset = "none";
defparam debug_led_red_a0_a_aI.output_power_up = "low";
defparam debug_led_red_a0_a_aI.output_register_mode = "none";
defparam debug_led_red_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a1_a_aI(
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
defparam debug_led_red_a1_a_aI.input_async_reset = "none";
defparam debug_led_red_a1_a_aI.input_power_up = "low";
defparam debug_led_red_a1_a_aI.input_register_mode = "none";
defparam debug_led_red_a1_a_aI.input_sync_reset = "none";
defparam debug_led_red_a1_a_aI.oe_async_reset = "none";
defparam debug_led_red_a1_a_aI.oe_power_up = "low";
defparam debug_led_red_a1_a_aI.oe_register_mode = "none";
defparam debug_led_red_a1_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a1_a_aI.operation_mode = "output";
defparam debug_led_red_a1_a_aI.output_async_reset = "none";
defparam debug_led_red_a1_a_aI.output_power_up = "low";
defparam debug_led_red_a1_a_aI.output_register_mode = "none";
defparam debug_led_red_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a2_a_aI(
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
defparam debug_led_red_a2_a_aI.input_async_reset = "none";
defparam debug_led_red_a2_a_aI.input_power_up = "low";
defparam debug_led_red_a2_a_aI.input_register_mode = "none";
defparam debug_led_red_a2_a_aI.input_sync_reset = "none";
defparam debug_led_red_a2_a_aI.oe_async_reset = "none";
defparam debug_led_red_a2_a_aI.oe_power_up = "low";
defparam debug_led_red_a2_a_aI.oe_register_mode = "none";
defparam debug_led_red_a2_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a2_a_aI.operation_mode = "output";
defparam debug_led_red_a2_a_aI.output_async_reset = "none";
defparam debug_led_red_a2_a_aI.output_power_up = "low";
defparam debug_led_red_a2_a_aI.output_register_mode = "none";
defparam debug_led_red_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a3_a_aI(
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
defparam debug_led_red_a3_a_aI.input_async_reset = "none";
defparam debug_led_red_a3_a_aI.input_power_up = "low";
defparam debug_led_red_a3_a_aI.input_register_mode = "none";
defparam debug_led_red_a3_a_aI.input_sync_reset = "none";
defparam debug_led_red_a3_a_aI.oe_async_reset = "none";
defparam debug_led_red_a3_a_aI.oe_power_up = "low";
defparam debug_led_red_a3_a_aI.oe_register_mode = "none";
defparam debug_led_red_a3_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a3_a_aI.operation_mode = "output";
defparam debug_led_red_a3_a_aI.output_async_reset = "none";
defparam debug_led_red_a3_a_aI.output_power_up = "low";
defparam debug_led_red_a3_a_aI.output_register_mode = "none";
defparam debug_led_red_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a4_a_aI(
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
defparam debug_led_red_a4_a_aI.input_async_reset = "none";
defparam debug_led_red_a4_a_aI.input_power_up = "low";
defparam debug_led_red_a4_a_aI.input_register_mode = "none";
defparam debug_led_red_a4_a_aI.input_sync_reset = "none";
defparam debug_led_red_a4_a_aI.oe_async_reset = "none";
defparam debug_led_red_a4_a_aI.oe_power_up = "low";
defparam debug_led_red_a4_a_aI.oe_register_mode = "none";
defparam debug_led_red_a4_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a4_a_aI.operation_mode = "output";
defparam debug_led_red_a4_a_aI.output_async_reset = "none";
defparam debug_led_red_a4_a_aI.output_power_up = "low";
defparam debug_led_red_a4_a_aI.output_register_mode = "none";
defparam debug_led_red_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a5_a_aI(
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
defparam debug_led_red_a5_a_aI.input_async_reset = "none";
defparam debug_led_red_a5_a_aI.input_power_up = "low";
defparam debug_led_red_a5_a_aI.input_register_mode = "none";
defparam debug_led_red_a5_a_aI.input_sync_reset = "none";
defparam debug_led_red_a5_a_aI.oe_async_reset = "none";
defparam debug_led_red_a5_a_aI.oe_power_up = "low";
defparam debug_led_red_a5_a_aI.oe_register_mode = "none";
defparam debug_led_red_a5_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a5_a_aI.operation_mode = "output";
defparam debug_led_red_a5_a_aI.output_async_reset = "none";
defparam debug_led_red_a5_a_aI.output_power_up = "low";
defparam debug_led_red_a5_a_aI.output_register_mode = "none";
defparam debug_led_red_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a6_a_aI(
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
defparam debug_led_red_a6_a_aI.input_async_reset = "none";
defparam debug_led_red_a6_a_aI.input_power_up = "low";
defparam debug_led_red_a6_a_aI.input_register_mode = "none";
defparam debug_led_red_a6_a_aI.input_sync_reset = "none";
defparam debug_led_red_a6_a_aI.oe_async_reset = "none";
defparam debug_led_red_a6_a_aI.oe_power_up = "low";
defparam debug_led_red_a6_a_aI.oe_register_mode = "none";
defparam debug_led_red_a6_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a6_a_aI.operation_mode = "output";
defparam debug_led_red_a6_a_aI.output_async_reset = "none";
defparam debug_led_red_a6_a_aI.output_power_up = "low";
defparam debug_led_red_a6_a_aI.output_register_mode = "none";
defparam debug_led_red_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a7_a_aI(
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
defparam debug_led_red_a7_a_aI.input_async_reset = "none";
defparam debug_led_red_a7_a_aI.input_power_up = "low";
defparam debug_led_red_a7_a_aI.input_register_mode = "none";
defparam debug_led_red_a7_a_aI.input_sync_reset = "none";
defparam debug_led_red_a7_a_aI.oe_async_reset = "none";
defparam debug_led_red_a7_a_aI.oe_power_up = "low";
defparam debug_led_red_a7_a_aI.oe_register_mode = "none";
defparam debug_led_red_a7_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a7_a_aI.operation_mode = "output";
defparam debug_led_red_a7_a_aI.output_async_reset = "none";
defparam debug_led_red_a7_a_aI.output_power_up = "low";
defparam debug_led_red_a7_a_aI.output_register_mode = "none";
defparam debug_led_red_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a8_a_aI(
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
defparam debug_led_red_a8_a_aI.input_async_reset = "none";
defparam debug_led_red_a8_a_aI.input_power_up = "low";
defparam debug_led_red_a8_a_aI.input_register_mode = "none";
defparam debug_led_red_a8_a_aI.input_sync_reset = "none";
defparam debug_led_red_a8_a_aI.oe_async_reset = "none";
defparam debug_led_red_a8_a_aI.oe_power_up = "low";
defparam debug_led_red_a8_a_aI.oe_register_mode = "none";
defparam debug_led_red_a8_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a8_a_aI.operation_mode = "output";
defparam debug_led_red_a8_a_aI.output_async_reset = "none";
defparam debug_led_red_a8_a_aI.output_power_up = "low";
defparam debug_led_red_a8_a_aI.output_register_mode = "none";
defparam debug_led_red_a8_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a9_a_aI(
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
defparam debug_led_red_a9_a_aI.input_async_reset = "none";
defparam debug_led_red_a9_a_aI.input_power_up = "low";
defparam debug_led_red_a9_a_aI.input_register_mode = "none";
defparam debug_led_red_a9_a_aI.input_sync_reset = "none";
defparam debug_led_red_a9_a_aI.oe_async_reset = "none";
defparam debug_led_red_a9_a_aI.oe_power_up = "low";
defparam debug_led_red_a9_a_aI.oe_register_mode = "none";
defparam debug_led_red_a9_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a9_a_aI.operation_mode = "output";
defparam debug_led_red_a9_a_aI.output_async_reset = "none";
defparam debug_led_red_a9_a_aI.output_power_up = "low";
defparam debug_led_red_a9_a_aI.output_register_mode = "none";
defparam debug_led_red_a9_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a10_a_aI(
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
defparam debug_led_red_a10_a_aI.input_async_reset = "none";
defparam debug_led_red_a10_a_aI.input_power_up = "low";
defparam debug_led_red_a10_a_aI.input_register_mode = "none";
defparam debug_led_red_a10_a_aI.input_sync_reset = "none";
defparam debug_led_red_a10_a_aI.oe_async_reset = "none";
defparam debug_led_red_a10_a_aI.oe_power_up = "low";
defparam debug_led_red_a10_a_aI.oe_register_mode = "none";
defparam debug_led_red_a10_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a10_a_aI.operation_mode = "output";
defparam debug_led_red_a10_a_aI.output_async_reset = "none";
defparam debug_led_red_a10_a_aI.output_power_up = "low";
defparam debug_led_red_a10_a_aI.output_register_mode = "none";
defparam debug_led_red_a10_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a11_a_aI(
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
defparam debug_led_red_a11_a_aI.input_async_reset = "none";
defparam debug_led_red_a11_a_aI.input_power_up = "low";
defparam debug_led_red_a11_a_aI.input_register_mode = "none";
defparam debug_led_red_a11_a_aI.input_sync_reset = "none";
defparam debug_led_red_a11_a_aI.oe_async_reset = "none";
defparam debug_led_red_a11_a_aI.oe_power_up = "low";
defparam debug_led_red_a11_a_aI.oe_register_mode = "none";
defparam debug_led_red_a11_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a11_a_aI.operation_mode = "output";
defparam debug_led_red_a11_a_aI.output_async_reset = "none";
defparam debug_led_red_a11_a_aI.output_power_up = "low";
defparam debug_led_red_a11_a_aI.output_register_mode = "none";
defparam debug_led_red_a11_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a12_a_aI(
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
defparam debug_led_red_a12_a_aI.input_async_reset = "none";
defparam debug_led_red_a12_a_aI.input_power_up = "low";
defparam debug_led_red_a12_a_aI.input_register_mode = "none";
defparam debug_led_red_a12_a_aI.input_sync_reset = "none";
defparam debug_led_red_a12_a_aI.oe_async_reset = "none";
defparam debug_led_red_a12_a_aI.oe_power_up = "low";
defparam debug_led_red_a12_a_aI.oe_register_mode = "none";
defparam debug_led_red_a12_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a12_a_aI.operation_mode = "output";
defparam debug_led_red_a12_a_aI.output_async_reset = "none";
defparam debug_led_red_a12_a_aI.output_power_up = "low";
defparam debug_led_red_a12_a_aI.output_register_mode = "none";
defparam debug_led_red_a12_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a13_a_aI(
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
defparam debug_led_red_a13_a_aI.input_async_reset = "none";
defparam debug_led_red_a13_a_aI.input_power_up = "low";
defparam debug_led_red_a13_a_aI.input_register_mode = "none";
defparam debug_led_red_a13_a_aI.input_sync_reset = "none";
defparam debug_led_red_a13_a_aI.oe_async_reset = "none";
defparam debug_led_red_a13_a_aI.oe_power_up = "low";
defparam debug_led_red_a13_a_aI.oe_register_mode = "none";
defparam debug_led_red_a13_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a13_a_aI.operation_mode = "output";
defparam debug_led_red_a13_a_aI.output_async_reset = "none";
defparam debug_led_red_a13_a_aI.output_power_up = "low";
defparam debug_led_red_a13_a_aI.output_register_mode = "none";
defparam debug_led_red_a13_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a14_a_aI(
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
defparam debug_led_red_a14_a_aI.input_async_reset = "none";
defparam debug_led_red_a14_a_aI.input_power_up = "low";
defparam debug_led_red_a14_a_aI.input_register_mode = "none";
defparam debug_led_red_a14_a_aI.input_sync_reset = "none";
defparam debug_led_red_a14_a_aI.oe_async_reset = "none";
defparam debug_led_red_a14_a_aI.oe_power_up = "low";
defparam debug_led_red_a14_a_aI.oe_register_mode = "none";
defparam debug_led_red_a14_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a14_a_aI.operation_mode = "output";
defparam debug_led_red_a14_a_aI.output_async_reset = "none";
defparam debug_led_red_a14_a_aI.output_power_up = "low";
defparam debug_led_red_a14_a_aI.output_register_mode = "none";
defparam debug_led_red_a14_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a15_a_aI(
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
defparam debug_led_red_a15_a_aI.input_async_reset = "none";
defparam debug_led_red_a15_a_aI.input_power_up = "low";
defparam debug_led_red_a15_a_aI.input_register_mode = "none";
defparam debug_led_red_a15_a_aI.input_sync_reset = "none";
defparam debug_led_red_a15_a_aI.oe_async_reset = "none";
defparam debug_led_red_a15_a_aI.oe_power_up = "low";
defparam debug_led_red_a15_a_aI.oe_register_mode = "none";
defparam debug_led_red_a15_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a15_a_aI.operation_mode = "output";
defparam debug_led_red_a15_a_aI.output_async_reset = "none";
defparam debug_led_red_a15_a_aI.output_power_up = "low";
defparam debug_led_red_a15_a_aI.output_register_mode = "none";
defparam debug_led_red_a15_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a16_a_aI(
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
defparam debug_led_red_a16_a_aI.input_async_reset = "none";
defparam debug_led_red_a16_a_aI.input_power_up = "low";
defparam debug_led_red_a16_a_aI.input_register_mode = "none";
defparam debug_led_red_a16_a_aI.input_sync_reset = "none";
defparam debug_led_red_a16_a_aI.oe_async_reset = "none";
defparam debug_led_red_a16_a_aI.oe_power_up = "low";
defparam debug_led_red_a16_a_aI.oe_register_mode = "none";
defparam debug_led_red_a16_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a16_a_aI.operation_mode = "output";
defparam debug_led_red_a16_a_aI.output_async_reset = "none";
defparam debug_led_red_a16_a_aI.output_power_up = "low";
defparam debug_led_red_a16_a_aI.output_register_mode = "none";
defparam debug_led_red_a16_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a17_a_aI(
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
	.padio(debug_led_red[17]));
// synopsys translate_off
defparam debug_led_red_a17_a_aI.input_async_reset = "none";
defparam debug_led_red_a17_a_aI.input_power_up = "low";
defparam debug_led_red_a17_a_aI.input_register_mode = "none";
defparam debug_led_red_a17_a_aI.input_sync_reset = "none";
defparam debug_led_red_a17_a_aI.oe_async_reset = "none";
defparam debug_led_red_a17_a_aI.oe_power_up = "low";
defparam debug_led_red_a17_a_aI.oe_register_mode = "none";
defparam debug_led_red_a17_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a17_a_aI.operation_mode = "output";
defparam debug_led_red_a17_a_aI.output_async_reset = "none";
defparam debug_led_red_a17_a_aI.output_power_up = "low";
defparam debug_led_red_a17_a_aI.output_register_mode = "none";
defparam debug_led_red_a17_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a0_a_aI(
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
defparam debug_led_grn_a0_a_aI.input_async_reset = "none";
defparam debug_led_grn_a0_a_aI.input_power_up = "low";
defparam debug_led_grn_a0_a_aI.input_register_mode = "none";
defparam debug_led_grn_a0_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a0_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a0_a_aI.oe_power_up = "low";
defparam debug_led_grn_a0_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a0_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a0_a_aI.operation_mode = "output";
defparam debug_led_grn_a0_a_aI.output_async_reset = "none";
defparam debug_led_grn_a0_a_aI.output_power_up = "low";
defparam debug_led_grn_a0_a_aI.output_register_mode = "none";
defparam debug_led_grn_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a1_a_aI(
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
defparam debug_led_grn_a1_a_aI.input_async_reset = "none";
defparam debug_led_grn_a1_a_aI.input_power_up = "low";
defparam debug_led_grn_a1_a_aI.input_register_mode = "none";
defparam debug_led_grn_a1_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a1_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a1_a_aI.oe_power_up = "low";
defparam debug_led_grn_a1_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a1_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a1_a_aI.operation_mode = "output";
defparam debug_led_grn_a1_a_aI.output_async_reset = "none";
defparam debug_led_grn_a1_a_aI.output_power_up = "low";
defparam debug_led_grn_a1_a_aI.output_register_mode = "none";
defparam debug_led_grn_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a2_a_aI(
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
defparam debug_led_grn_a2_a_aI.input_async_reset = "none";
defparam debug_led_grn_a2_a_aI.input_power_up = "low";
defparam debug_led_grn_a2_a_aI.input_register_mode = "none";
defparam debug_led_grn_a2_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a2_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a2_a_aI.oe_power_up = "low";
defparam debug_led_grn_a2_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a2_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a2_a_aI.operation_mode = "output";
defparam debug_led_grn_a2_a_aI.output_async_reset = "none";
defparam debug_led_grn_a2_a_aI.output_power_up = "low";
defparam debug_led_grn_a2_a_aI.output_register_mode = "none";
defparam debug_led_grn_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a3_a_aI(
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
defparam debug_led_grn_a3_a_aI.input_async_reset = "none";
defparam debug_led_grn_a3_a_aI.input_power_up = "low";
defparam debug_led_grn_a3_a_aI.input_register_mode = "none";
defparam debug_led_grn_a3_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a3_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a3_a_aI.oe_power_up = "low";
defparam debug_led_grn_a3_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a3_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a3_a_aI.operation_mode = "output";
defparam debug_led_grn_a3_a_aI.output_async_reset = "none";
defparam debug_led_grn_a3_a_aI.output_power_up = "low";
defparam debug_led_grn_a3_a_aI.output_register_mode = "none";
defparam debug_led_grn_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a4_a_aI(
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
defparam debug_led_grn_a4_a_aI.input_async_reset = "none";
defparam debug_led_grn_a4_a_aI.input_power_up = "low";
defparam debug_led_grn_a4_a_aI.input_register_mode = "none";
defparam debug_led_grn_a4_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a4_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a4_a_aI.oe_power_up = "low";
defparam debug_led_grn_a4_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a4_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a4_a_aI.operation_mode = "output";
defparam debug_led_grn_a4_a_aI.output_async_reset = "none";
defparam debug_led_grn_a4_a_aI.output_power_up = "low";
defparam debug_led_grn_a4_a_aI.output_register_mode = "none";
defparam debug_led_grn_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a5_a_aI(
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
defparam debug_led_grn_a5_a_aI.input_async_reset = "none";
defparam debug_led_grn_a5_a_aI.input_power_up = "low";
defparam debug_led_grn_a5_a_aI.input_register_mode = "none";
defparam debug_led_grn_a5_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a5_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a5_a_aI.oe_power_up = "low";
defparam debug_led_grn_a5_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a5_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a5_a_aI.operation_mode = "output";
defparam debug_led_grn_a5_a_aI.output_async_reset = "none";
defparam debug_led_grn_a5_a_aI.output_power_up = "low";
defparam debug_led_grn_a5_a_aI.output_register_mode = "none";
defparam debug_led_grn_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_a0_a_aI(
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
	.padio(debug_num_0[0]));
// synopsys translate_off
defparam debug_num_0_a0_a_aI.input_async_reset = "none";
defparam debug_num_0_a0_a_aI.input_power_up = "low";
defparam debug_num_0_a0_a_aI.input_register_mode = "none";
defparam debug_num_0_a0_a_aI.input_sync_reset = "none";
defparam debug_num_0_a0_a_aI.oe_async_reset = "none";
defparam debug_num_0_a0_a_aI.oe_power_up = "low";
defparam debug_num_0_a0_a_aI.oe_register_mode = "none";
defparam debug_num_0_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_0_a0_a_aI.operation_mode = "output";
defparam debug_num_0_a0_a_aI.output_async_reset = "none";
defparam debug_num_0_a0_a_aI.output_power_up = "low";
defparam debug_num_0_a0_a_aI.output_register_mode = "none";
defparam debug_num_0_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_a1_a_aI(
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
	.padio(debug_num_0[1]));
// synopsys translate_off
defparam debug_num_0_a1_a_aI.input_async_reset = "none";
defparam debug_num_0_a1_a_aI.input_power_up = "low";
defparam debug_num_0_a1_a_aI.input_register_mode = "none";
defparam debug_num_0_a1_a_aI.input_sync_reset = "none";
defparam debug_num_0_a1_a_aI.oe_async_reset = "none";
defparam debug_num_0_a1_a_aI.oe_power_up = "low";
defparam debug_num_0_a1_a_aI.oe_register_mode = "none";
defparam debug_num_0_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_0_a1_a_aI.operation_mode = "output";
defparam debug_num_0_a1_a_aI.output_async_reset = "none";
defparam debug_num_0_a1_a_aI.output_power_up = "low";
defparam debug_num_0_a1_a_aI.output_register_mode = "none";
defparam debug_num_0_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_a2_a_aI(
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
	.padio(debug_num_0[2]));
// synopsys translate_off
defparam debug_num_0_a2_a_aI.input_async_reset = "none";
defparam debug_num_0_a2_a_aI.input_power_up = "low";
defparam debug_num_0_a2_a_aI.input_register_mode = "none";
defparam debug_num_0_a2_a_aI.input_sync_reset = "none";
defparam debug_num_0_a2_a_aI.oe_async_reset = "none";
defparam debug_num_0_a2_a_aI.oe_power_up = "low";
defparam debug_num_0_a2_a_aI.oe_register_mode = "none";
defparam debug_num_0_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_0_a2_a_aI.operation_mode = "output";
defparam debug_num_0_a2_a_aI.output_async_reset = "none";
defparam debug_num_0_a2_a_aI.output_power_up = "low";
defparam debug_num_0_a2_a_aI.output_register_mode = "none";
defparam debug_num_0_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_a3_a_aI(
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
	.padio(debug_num_0[3]));
// synopsys translate_off
defparam debug_num_0_a3_a_aI.input_async_reset = "none";
defparam debug_num_0_a3_a_aI.input_power_up = "low";
defparam debug_num_0_a3_a_aI.input_register_mode = "none";
defparam debug_num_0_a3_a_aI.input_sync_reset = "none";
defparam debug_num_0_a3_a_aI.oe_async_reset = "none";
defparam debug_num_0_a3_a_aI.oe_power_up = "low";
defparam debug_num_0_a3_a_aI.oe_register_mode = "none";
defparam debug_num_0_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_0_a3_a_aI.operation_mode = "output";
defparam debug_num_0_a3_a_aI.output_async_reset = "none";
defparam debug_num_0_a3_a_aI.output_power_up = "low";
defparam debug_num_0_a3_a_aI.output_register_mode = "none";
defparam debug_num_0_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_a0_a_aI(
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
	.padio(debug_num_1[0]));
// synopsys translate_off
defparam debug_num_1_a0_a_aI.input_async_reset = "none";
defparam debug_num_1_a0_a_aI.input_power_up = "low";
defparam debug_num_1_a0_a_aI.input_register_mode = "none";
defparam debug_num_1_a0_a_aI.input_sync_reset = "none";
defparam debug_num_1_a0_a_aI.oe_async_reset = "none";
defparam debug_num_1_a0_a_aI.oe_power_up = "low";
defparam debug_num_1_a0_a_aI.oe_register_mode = "none";
defparam debug_num_1_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_1_a0_a_aI.operation_mode = "output";
defparam debug_num_1_a0_a_aI.output_async_reset = "none";
defparam debug_num_1_a0_a_aI.output_power_up = "low";
defparam debug_num_1_a0_a_aI.output_register_mode = "none";
defparam debug_num_1_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_a1_a_aI(
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
	.padio(debug_num_1[1]));
// synopsys translate_off
defparam debug_num_1_a1_a_aI.input_async_reset = "none";
defparam debug_num_1_a1_a_aI.input_power_up = "low";
defparam debug_num_1_a1_a_aI.input_register_mode = "none";
defparam debug_num_1_a1_a_aI.input_sync_reset = "none";
defparam debug_num_1_a1_a_aI.oe_async_reset = "none";
defparam debug_num_1_a1_a_aI.oe_power_up = "low";
defparam debug_num_1_a1_a_aI.oe_register_mode = "none";
defparam debug_num_1_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_1_a1_a_aI.operation_mode = "output";
defparam debug_num_1_a1_a_aI.output_async_reset = "none";
defparam debug_num_1_a1_a_aI.output_power_up = "low";
defparam debug_num_1_a1_a_aI.output_register_mode = "none";
defparam debug_num_1_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_a2_a_aI(
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
	.padio(debug_num_1[2]));
// synopsys translate_off
defparam debug_num_1_a2_a_aI.input_async_reset = "none";
defparam debug_num_1_a2_a_aI.input_power_up = "low";
defparam debug_num_1_a2_a_aI.input_register_mode = "none";
defparam debug_num_1_a2_a_aI.input_sync_reset = "none";
defparam debug_num_1_a2_a_aI.oe_async_reset = "none";
defparam debug_num_1_a2_a_aI.oe_power_up = "low";
defparam debug_num_1_a2_a_aI.oe_register_mode = "none";
defparam debug_num_1_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_1_a2_a_aI.operation_mode = "output";
defparam debug_num_1_a2_a_aI.output_async_reset = "none";
defparam debug_num_1_a2_a_aI.output_power_up = "low";
defparam debug_num_1_a2_a_aI.output_register_mode = "none";
defparam debug_num_1_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_a3_a_aI(
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
	.padio(debug_num_1[3]));
// synopsys translate_off
defparam debug_num_1_a3_a_aI.input_async_reset = "none";
defparam debug_num_1_a3_a_aI.input_power_up = "low";
defparam debug_num_1_a3_a_aI.input_register_mode = "none";
defparam debug_num_1_a3_a_aI.input_sync_reset = "none";
defparam debug_num_1_a3_a_aI.oe_async_reset = "none";
defparam debug_num_1_a3_a_aI.oe_power_up = "low";
defparam debug_num_1_a3_a_aI.oe_register_mode = "none";
defparam debug_num_1_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_1_a3_a_aI.operation_mode = "output";
defparam debug_num_1_a3_a_aI.output_async_reset = "none";
defparam debug_num_1_a3_a_aI.output_power_up = "low";
defparam debug_num_1_a3_a_aI.output_register_mode = "none";
defparam debug_num_1_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_a0_a_aI(
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
	.padio(debug_num_2[0]));
// synopsys translate_off
defparam debug_num_2_a0_a_aI.input_async_reset = "none";
defparam debug_num_2_a0_a_aI.input_power_up = "low";
defparam debug_num_2_a0_a_aI.input_register_mode = "none";
defparam debug_num_2_a0_a_aI.input_sync_reset = "none";
defparam debug_num_2_a0_a_aI.oe_async_reset = "none";
defparam debug_num_2_a0_a_aI.oe_power_up = "low";
defparam debug_num_2_a0_a_aI.oe_register_mode = "none";
defparam debug_num_2_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_2_a0_a_aI.operation_mode = "output";
defparam debug_num_2_a0_a_aI.output_async_reset = "none";
defparam debug_num_2_a0_a_aI.output_power_up = "low";
defparam debug_num_2_a0_a_aI.output_register_mode = "none";
defparam debug_num_2_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_a1_a_aI(
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
	.padio(debug_num_2[1]));
// synopsys translate_off
defparam debug_num_2_a1_a_aI.input_async_reset = "none";
defparam debug_num_2_a1_a_aI.input_power_up = "low";
defparam debug_num_2_a1_a_aI.input_register_mode = "none";
defparam debug_num_2_a1_a_aI.input_sync_reset = "none";
defparam debug_num_2_a1_a_aI.oe_async_reset = "none";
defparam debug_num_2_a1_a_aI.oe_power_up = "low";
defparam debug_num_2_a1_a_aI.oe_register_mode = "none";
defparam debug_num_2_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_2_a1_a_aI.operation_mode = "output";
defparam debug_num_2_a1_a_aI.output_async_reset = "none";
defparam debug_num_2_a1_a_aI.output_power_up = "low";
defparam debug_num_2_a1_a_aI.output_register_mode = "none";
defparam debug_num_2_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_a2_a_aI(
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
	.padio(debug_num_2[2]));
// synopsys translate_off
defparam debug_num_2_a2_a_aI.input_async_reset = "none";
defparam debug_num_2_a2_a_aI.input_power_up = "low";
defparam debug_num_2_a2_a_aI.input_register_mode = "none";
defparam debug_num_2_a2_a_aI.input_sync_reset = "none";
defparam debug_num_2_a2_a_aI.oe_async_reset = "none";
defparam debug_num_2_a2_a_aI.oe_power_up = "low";
defparam debug_num_2_a2_a_aI.oe_register_mode = "none";
defparam debug_num_2_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_2_a2_a_aI.operation_mode = "output";
defparam debug_num_2_a2_a_aI.output_async_reset = "none";
defparam debug_num_2_a2_a_aI.output_power_up = "low";
defparam debug_num_2_a2_a_aI.output_register_mode = "none";
defparam debug_num_2_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_a3_a_aI(
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
	.padio(debug_num_2[3]));
// synopsys translate_off
defparam debug_num_2_a3_a_aI.input_async_reset = "none";
defparam debug_num_2_a3_a_aI.input_power_up = "low";
defparam debug_num_2_a3_a_aI.input_register_mode = "none";
defparam debug_num_2_a3_a_aI.input_sync_reset = "none";
defparam debug_num_2_a3_a_aI.oe_async_reset = "none";
defparam debug_num_2_a3_a_aI.oe_power_up = "low";
defparam debug_num_2_a3_a_aI.oe_register_mode = "none";
defparam debug_num_2_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_2_a3_a_aI.operation_mode = "output";
defparam debug_num_2_a3_a_aI.output_async_reset = "none";
defparam debug_num_2_a3_a_aI.output_power_up = "low";
defparam debug_num_2_a3_a_aI.output_register_mode = "none";
defparam debug_num_2_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_a0_a_aI(
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
	.padio(debug_num_3[0]));
// synopsys translate_off
defparam debug_num_3_a0_a_aI.input_async_reset = "none";
defparam debug_num_3_a0_a_aI.input_power_up = "low";
defparam debug_num_3_a0_a_aI.input_register_mode = "none";
defparam debug_num_3_a0_a_aI.input_sync_reset = "none";
defparam debug_num_3_a0_a_aI.oe_async_reset = "none";
defparam debug_num_3_a0_a_aI.oe_power_up = "low";
defparam debug_num_3_a0_a_aI.oe_register_mode = "none";
defparam debug_num_3_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_3_a0_a_aI.operation_mode = "output";
defparam debug_num_3_a0_a_aI.output_async_reset = "none";
defparam debug_num_3_a0_a_aI.output_power_up = "low";
defparam debug_num_3_a0_a_aI.output_register_mode = "none";
defparam debug_num_3_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_a1_a_aI(
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
	.padio(debug_num_3[1]));
// synopsys translate_off
defparam debug_num_3_a1_a_aI.input_async_reset = "none";
defparam debug_num_3_a1_a_aI.input_power_up = "low";
defparam debug_num_3_a1_a_aI.input_register_mode = "none";
defparam debug_num_3_a1_a_aI.input_sync_reset = "none";
defparam debug_num_3_a1_a_aI.oe_async_reset = "none";
defparam debug_num_3_a1_a_aI.oe_power_up = "low";
defparam debug_num_3_a1_a_aI.oe_register_mode = "none";
defparam debug_num_3_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_3_a1_a_aI.operation_mode = "output";
defparam debug_num_3_a1_a_aI.output_async_reset = "none";
defparam debug_num_3_a1_a_aI.output_power_up = "low";
defparam debug_num_3_a1_a_aI.output_register_mode = "none";
defparam debug_num_3_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_a2_a_aI(
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
	.padio(debug_num_3[2]));
// synopsys translate_off
defparam debug_num_3_a2_a_aI.input_async_reset = "none";
defparam debug_num_3_a2_a_aI.input_power_up = "low";
defparam debug_num_3_a2_a_aI.input_register_mode = "none";
defparam debug_num_3_a2_a_aI.input_sync_reset = "none";
defparam debug_num_3_a2_a_aI.oe_async_reset = "none";
defparam debug_num_3_a2_a_aI.oe_power_up = "low";
defparam debug_num_3_a2_a_aI.oe_register_mode = "none";
defparam debug_num_3_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_3_a2_a_aI.operation_mode = "output";
defparam debug_num_3_a2_a_aI.output_async_reset = "none";
defparam debug_num_3_a2_a_aI.output_power_up = "low";
defparam debug_num_3_a2_a_aI.output_register_mode = "none";
defparam debug_num_3_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_a3_a_aI(
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
	.padio(debug_num_3[3]));
// synopsys translate_off
defparam debug_num_3_a3_a_aI.input_async_reset = "none";
defparam debug_num_3_a3_a_aI.input_power_up = "low";
defparam debug_num_3_a3_a_aI.input_register_mode = "none";
defparam debug_num_3_a3_a_aI.input_sync_reset = "none";
defparam debug_num_3_a3_a_aI.oe_async_reset = "none";
defparam debug_num_3_a3_a_aI.oe_power_up = "low";
defparam debug_num_3_a3_a_aI.oe_register_mode = "none";
defparam debug_num_3_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_3_a3_a_aI.operation_mode = "output";
defparam debug_num_3_a3_a_aI.output_async_reset = "none";
defparam debug_num_3_a3_a_aI.output_power_up = "low";
defparam debug_num_3_a3_a_aI.output_register_mode = "none";
defparam debug_num_3_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_a0_a_aI(
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
	.padio(debug_num_4[0]));
// synopsys translate_off
defparam debug_num_4_a0_a_aI.input_async_reset = "none";
defparam debug_num_4_a0_a_aI.input_power_up = "low";
defparam debug_num_4_a0_a_aI.input_register_mode = "none";
defparam debug_num_4_a0_a_aI.input_sync_reset = "none";
defparam debug_num_4_a0_a_aI.oe_async_reset = "none";
defparam debug_num_4_a0_a_aI.oe_power_up = "low";
defparam debug_num_4_a0_a_aI.oe_register_mode = "none";
defparam debug_num_4_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_4_a0_a_aI.operation_mode = "output";
defparam debug_num_4_a0_a_aI.output_async_reset = "none";
defparam debug_num_4_a0_a_aI.output_power_up = "low";
defparam debug_num_4_a0_a_aI.output_register_mode = "none";
defparam debug_num_4_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_a1_a_aI(
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
	.padio(debug_num_4[1]));
// synopsys translate_off
defparam debug_num_4_a1_a_aI.input_async_reset = "none";
defparam debug_num_4_a1_a_aI.input_power_up = "low";
defparam debug_num_4_a1_a_aI.input_register_mode = "none";
defparam debug_num_4_a1_a_aI.input_sync_reset = "none";
defparam debug_num_4_a1_a_aI.oe_async_reset = "none";
defparam debug_num_4_a1_a_aI.oe_power_up = "low";
defparam debug_num_4_a1_a_aI.oe_register_mode = "none";
defparam debug_num_4_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_4_a1_a_aI.operation_mode = "output";
defparam debug_num_4_a1_a_aI.output_async_reset = "none";
defparam debug_num_4_a1_a_aI.output_power_up = "low";
defparam debug_num_4_a1_a_aI.output_register_mode = "none";
defparam debug_num_4_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_a2_a_aI(
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
	.padio(debug_num_4[2]));
// synopsys translate_off
defparam debug_num_4_a2_a_aI.input_async_reset = "none";
defparam debug_num_4_a2_a_aI.input_power_up = "low";
defparam debug_num_4_a2_a_aI.input_register_mode = "none";
defparam debug_num_4_a2_a_aI.input_sync_reset = "none";
defparam debug_num_4_a2_a_aI.oe_async_reset = "none";
defparam debug_num_4_a2_a_aI.oe_power_up = "low";
defparam debug_num_4_a2_a_aI.oe_register_mode = "none";
defparam debug_num_4_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_4_a2_a_aI.operation_mode = "output";
defparam debug_num_4_a2_a_aI.output_async_reset = "none";
defparam debug_num_4_a2_a_aI.output_power_up = "low";
defparam debug_num_4_a2_a_aI.output_register_mode = "none";
defparam debug_num_4_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_a3_a_aI(
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
	.padio(debug_num_4[3]));
// synopsys translate_off
defparam debug_num_4_a3_a_aI.input_async_reset = "none";
defparam debug_num_4_a3_a_aI.input_power_up = "low";
defparam debug_num_4_a3_a_aI.input_register_mode = "none";
defparam debug_num_4_a3_a_aI.input_sync_reset = "none";
defparam debug_num_4_a3_a_aI.oe_async_reset = "none";
defparam debug_num_4_a3_a_aI.oe_power_up = "low";
defparam debug_num_4_a3_a_aI.oe_register_mode = "none";
defparam debug_num_4_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_4_a3_a_aI.operation_mode = "output";
defparam debug_num_4_a3_a_aI.output_async_reset = "none";
defparam debug_num_4_a3_a_aI.output_power_up = "low";
defparam debug_num_4_a3_a_aI.output_register_mode = "none";
defparam debug_num_4_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_a0_a_aI(
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
	.padio(debug_num_5[0]));
// synopsys translate_off
defparam debug_num_5_a0_a_aI.input_async_reset = "none";
defparam debug_num_5_a0_a_aI.input_power_up = "low";
defparam debug_num_5_a0_a_aI.input_register_mode = "none";
defparam debug_num_5_a0_a_aI.input_sync_reset = "none";
defparam debug_num_5_a0_a_aI.oe_async_reset = "none";
defparam debug_num_5_a0_a_aI.oe_power_up = "low";
defparam debug_num_5_a0_a_aI.oe_register_mode = "none";
defparam debug_num_5_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_5_a0_a_aI.operation_mode = "output";
defparam debug_num_5_a0_a_aI.output_async_reset = "none";
defparam debug_num_5_a0_a_aI.output_power_up = "low";
defparam debug_num_5_a0_a_aI.output_register_mode = "none";
defparam debug_num_5_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_a1_a_aI(
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
	.padio(debug_num_5[1]));
// synopsys translate_off
defparam debug_num_5_a1_a_aI.input_async_reset = "none";
defparam debug_num_5_a1_a_aI.input_power_up = "low";
defparam debug_num_5_a1_a_aI.input_register_mode = "none";
defparam debug_num_5_a1_a_aI.input_sync_reset = "none";
defparam debug_num_5_a1_a_aI.oe_async_reset = "none";
defparam debug_num_5_a1_a_aI.oe_power_up = "low";
defparam debug_num_5_a1_a_aI.oe_register_mode = "none";
defparam debug_num_5_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_5_a1_a_aI.operation_mode = "output";
defparam debug_num_5_a1_a_aI.output_async_reset = "none";
defparam debug_num_5_a1_a_aI.output_power_up = "low";
defparam debug_num_5_a1_a_aI.output_register_mode = "none";
defparam debug_num_5_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_a2_a_aI(
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
	.padio(debug_num_5[2]));
// synopsys translate_off
defparam debug_num_5_a2_a_aI.input_async_reset = "none";
defparam debug_num_5_a2_a_aI.input_power_up = "low";
defparam debug_num_5_a2_a_aI.input_register_mode = "none";
defparam debug_num_5_a2_a_aI.input_sync_reset = "none";
defparam debug_num_5_a2_a_aI.oe_async_reset = "none";
defparam debug_num_5_a2_a_aI.oe_power_up = "low";
defparam debug_num_5_a2_a_aI.oe_register_mode = "none";
defparam debug_num_5_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_5_a2_a_aI.operation_mode = "output";
defparam debug_num_5_a2_a_aI.output_async_reset = "none";
defparam debug_num_5_a2_a_aI.output_power_up = "low";
defparam debug_num_5_a2_a_aI.output_register_mode = "none";
defparam debug_num_5_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_a3_a_aI(
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
	.padio(debug_num_5[3]));
// synopsys translate_off
defparam debug_num_5_a3_a_aI.input_async_reset = "none";
defparam debug_num_5_a3_a_aI.input_power_up = "low";
defparam debug_num_5_a3_a_aI.input_register_mode = "none";
defparam debug_num_5_a3_a_aI.input_sync_reset = "none";
defparam debug_num_5_a3_a_aI.oe_async_reset = "none";
defparam debug_num_5_a3_a_aI.oe_power_up = "low";
defparam debug_num_5_a3_a_aI.oe_register_mode = "none";
defparam debug_num_5_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_5_a3_a_aI.operation_mode = "output";
defparam debug_num_5_a3_a_aI.output_async_reset = "none";
defparam debug_num_5_a3_a_aI.output_power_up = "low";
defparam debug_num_5_a3_a_aI.output_register_mode = "none";
defparam debug_num_5_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

endmodule
