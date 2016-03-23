//
// Verilog description for cell kirsch, 
// Wed Mar 23 14:38:10 2016
//
// Precision RTL Synthesis, 64-bit 2015.2.16//

//
// Please compile Mgc_home/pkgs/psr/modgen/modgen_sim.vhd file into
// "modgen_sim" library, during the simulation run for this netlist
//

module kirsch_logic ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir,                 o_mode, o_row, debug_key, debug_switch, debug_led_red, 
                debug_led_grn, debug_num_0, debug_num_1, debug_num_2, 
                debug_num_3, debug_num_4, debug_num_5 ) ;

    input i_clock ;
    input i_reset ;
    input i_valid ;
    input [7:0]i_pixel ;
    output o_valid ;
    output o_edge ;
    output [2:0]o_dir ;
    output [1:0]o_mode ;
    output [7:0]o_row ;
    input [3:1]debug_key ;
    input [17:0]debug_switch ;
    output [17:0]debug_led_red ;
    output [5:0]debug_led_grn ;
    output [3:0]debug_num_0 ;
    output [3:0]debug_num_1 ;
    output [3:0]debug_num_2 ;
    output [3:0]debug_num_3 ;
    output [3:0]debug_num_4 ;
    output [3:0]debug_num_5 ;




    assign o_edge = debug_num_5[0] ;
    assign o_mode[0] = debug_num_5[1] ;
    assign debug_led_red[17] = debug_num_5[0] ;
    assign debug_led_red[16] = debug_num_5[0] ;
    assign debug_led_red[15] = debug_num_5[0] ;
    assign debug_led_red[14] = debug_num_5[0] ;
    assign debug_led_red[13] = debug_num_5[0] ;
    assign debug_led_red[12] = debug_num_5[0] ;
    assign debug_led_red[11] = debug_num_5[0] ;
    assign debug_led_red[10] = debug_num_5[0] ;
    assign debug_led_red[9] = debug_num_5[0] ;
    assign debug_led_red[8] = debug_num_5[0] ;
    assign debug_led_red[7] = debug_num_5[0] ;
    assign debug_led_red[6] = debug_num_5[0] ;
    assign debug_led_red[5] = debug_num_5[0] ;
    assign debug_led_red[4] = debug_num_5[0] ;
    assign debug_led_red[3] = debug_num_5[0] ;
    assign debug_led_red[2] = debug_num_5[0] ;
    assign debug_led_red[1] = debug_num_5[0] ;
    assign debug_led_red[0] = debug_num_5[0] ;
    assign debug_led_grn[5] = debug_num_5[0] ;
    assign debug_led_grn[4] = debug_num_5[0] ;
    assign debug_led_grn[3] = debug_num_5[0] ;
    assign debug_led_grn[2] = debug_num_5[0] ;
    assign debug_led_grn[1] = debug_num_5[0] ;
    assign debug_led_grn[0] = debug_num_5[0] ;
    assign debug_num_0[3] = debug_num_5[0] ;
    assign debug_num_0[2] = debug_num_5[1] ;
    assign debug_num_0[1] = debug_num_5[1] ;
    assign debug_num_0[0] = debug_num_5[1] ;
    assign debug_num_1[3] = debug_num_5[0] ;
    assign debug_num_1[2] = debug_num_5[0] ;
    assign debug_num_1[1] = debug_num_5[1] ;
    assign debug_num_1[0] = debug_num_5[0] ;
    assign debug_num_2[3] = debug_num_5[0] ;
    assign debug_num_2[2] = debug_num_5[0] ;
    assign debug_num_2[1] = debug_num_5[1] ;
    assign debug_num_2[0] = debug_num_5[1] ;
    assign debug_num_3[3] = debug_num_5[1] ;
    assign debug_num_3[2] = debug_num_5[1] ;
    assign debug_num_3[1] = debug_num_5[1] ;
    assign debug_num_3[0] = debug_num_5[0] ;
    assign debug_num_4[3] = debug_num_5[1] ;
    assign debug_num_4[2] = debug_num_5[1] ;
    assign debug_num_4[1] = debug_num_5[0] ;
    assign debug_num_4[0] = debug_num_5[0] ;
    assign debug_num_5[3] = debug_num_5[1] ;
    assign debug_num_5[2] = debug_num_5[1] ;
    assign debug_num_5[1] = 1'b1 ;
    assign debug_num_5[0] = 1'b0 ;
    assign o_mode[1] = ~i_reset ;
    assign o_valid = debug_num_5[0] ? debug_num_5[0] : 1'bz ;
    assign o_dir[0] = debug_num_5[0] ? debug_num_5[0] : 1'bz ;
    assign o_dir[1] = debug_num_5[0] ? debug_num_5[0] : 1'bz ;
    assign o_dir[2] = debug_num_5[0] ? debug_num_5[0] : 1'bz ;
    assign o_row[0] = debug_num_5[0] ? debug_num_5[0] : 1'bz ;
    assign o_row[1] = debug_num_5[0] ? debug_num_5[0] : 1'bz ;
    assign o_row[2] = debug_num_5[0] ? debug_num_5[0] : 1'bz ;
    assign o_row[3] = debug_num_5[0] ? debug_num_5[0] : 1'bz ;
    assign o_row[4] = debug_num_5[0] ? debug_num_5[0] : 1'bz ;
    assign o_row[5] = debug_num_5[0] ? debug_num_5[0] : 1'bz ;
    assign o_row[6] = debug_num_5[0] ? debug_num_5[0] : 1'bz ;
    assign o_row[7] = debug_num_5[0] ? debug_num_5[0] : 1'bz ;
endmodule

