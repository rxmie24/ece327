//
// Verilog description for cell top_kirsch, 
// Wed Mar 23 15:43:48 2016
//
// Precision RTL Synthesis, 64-bit 2015.2.16//

//
// Please compile Mgc_home/pkgs/psr/modgen/modgen_sim.vhd file into
// "modgen_sim" library, during the simulation run for this netlist
//

module top_kirsch_logic ( nrst, clk, rxflex, txflex, o_sevenseg, o_mode, o_nrst,                     debug_key, debug_switch, debug_led_red, debug_led_grn, 
                    debug_sevenseg_0, debug_sevenseg_1, debug_sevenseg_2, 
                    debug_sevenseg_3, debug_sevenseg_4, debug_sevenseg_5 ) ;

    input nrst ;
    input clk ;
    input rxflex ;
    output txflex ;
    output [15:0]o_sevenseg ;
    output [1:0]o_mode ;
    output o_nrst ;
    input [3:1]debug_key ;
    input [17:0]debug_switch ;
    output [16:0]debug_led_red ;
    output [5:0]debug_led_grn ;
    output [7:0]debug_sevenseg_0 ;
    output [7:0]debug_sevenseg_1 ;
    output [7:0]debug_sevenseg_2 ;
    output [7:0]debug_sevenseg_3 ;
    output [7:0]debug_sevenseg_4 ;
    output [7:0]debug_sevenseg_5 ;

    wire [91:0] xmplr_dummy ;




    assign o_sevenseg[15] = o_sevenseg[7] ;
    assign o_sevenseg[14] = debug_led_red[16] ;
    assign o_sevenseg[13] = debug_led_red[16] ;
    assign o_sevenseg[12] = debug_led_red[16] ;
    assign o_sevenseg[11] = debug_led_red[16] ;
    assign o_sevenseg[10] = debug_led_red[16] ;
    assign o_sevenseg[9] = debug_led_red[16] ;
    assign o_sevenseg[8] = o_sevenseg[7] ;
    assign o_sevenseg[6] = debug_led_red[16] ;
    assign o_sevenseg[5] = debug_led_red[16] ;
    assign o_sevenseg[4] = debug_led_red[16] ;
    assign o_sevenseg[3] = debug_led_red[16] ;
    assign o_sevenseg[2] = debug_led_red[16] ;
    assign o_sevenseg[1] = debug_led_red[16] ;
    assign o_sevenseg[0] = o_sevenseg[7] ;
    assign o_mode[0] = o_sevenseg[7] ;
    assign debug_led_red[15] = debug_led_red[16] ;
    assign debug_led_red[14] = debug_led_red[16] ;
    assign debug_led_red[13] = debug_led_red[16] ;
    assign debug_led_red[12] = debug_led_red[16] ;
    assign debug_led_red[11] = debug_led_red[16] ;
    assign debug_led_red[10] = debug_led_red[16] ;
    assign debug_led_red[9] = debug_led_red[16] ;
    assign debug_led_red[8] = debug_led_red[16] ;
    assign debug_led_red[7] = debug_led_red[16] ;
    assign debug_led_red[6] = debug_led_red[16] ;
    assign debug_led_red[5] = debug_led_red[16] ;
    assign debug_led_red[4] = debug_led_red[16] ;
    assign debug_led_red[3] = debug_led_red[16] ;
    assign debug_led_red[2] = debug_led_red[16] ;
    assign debug_led_red[1] = debug_led_red[16] ;
    assign debug_led_red[0] = debug_led_red[16] ;
    assign debug_led_grn[5] = debug_led_red[16] ;
    assign debug_led_grn[4] = debug_led_red[16] ;
    assign debug_led_grn[3] = debug_led_red[16] ;
    assign debug_led_grn[2] = debug_led_red[16] ;
    assign debug_led_grn[1] = debug_led_red[16] ;
    assign debug_led_grn[0] = debug_led_red[16] ;
    assign debug_sevenseg_0[7] = o_sevenseg[7] ;
    assign debug_sevenseg_0[6] = debug_led_red[16] ;
    assign debug_sevenseg_0[5] = debug_led_red[16] ;
    assign debug_sevenseg_0[4] = debug_led_red[16] ;
    assign debug_sevenseg_0[3] = o_sevenseg[7] ;
    assign debug_sevenseg_0[2] = o_sevenseg[7] ;
    assign debug_sevenseg_0[1] = o_sevenseg[7] ;
    assign debug_sevenseg_0[0] = o_sevenseg[7] ;
    assign debug_sevenseg_1[7] = o_sevenseg[7] ;
    assign debug_sevenseg_1[6] = debug_led_red[16] ;
    assign debug_sevenseg_1[5] = debug_led_red[16] ;
    assign debug_sevenseg_1[4] = o_sevenseg[7] ;
    assign debug_sevenseg_1[3] = debug_led_red[16] ;
    assign debug_sevenseg_1[2] = debug_led_red[16] ;
    assign debug_sevenseg_1[1] = o_sevenseg[7] ;
    assign debug_sevenseg_1[0] = debug_led_red[16] ;
    assign debug_sevenseg_2[7] = o_sevenseg[7] ;
    assign debug_sevenseg_2[6] = debug_led_red[16] ;
    assign debug_sevenseg_2[5] = debug_led_red[16] ;
    assign debug_sevenseg_2[4] = debug_led_red[16] ;
    assign debug_sevenseg_2[3] = debug_led_red[16] ;
    assign debug_sevenseg_2[2] = o_sevenseg[7] ;
    assign debug_sevenseg_2[1] = o_sevenseg[7] ;
    assign debug_sevenseg_2[0] = debug_led_red[16] ;
    assign debug_sevenseg_3[7] = o_sevenseg[7] ;
    assign debug_sevenseg_3[6] = debug_led_red[16] ;
    assign debug_sevenseg_3[5] = o_sevenseg[7] ;
    assign debug_sevenseg_3[4] = o_sevenseg[7] ;
    assign debug_sevenseg_3[3] = debug_led_red[16] ;
    assign debug_sevenseg_3[2] = debug_led_red[16] ;
    assign debug_sevenseg_3[1] = debug_led_red[16] ;
    assign debug_sevenseg_3[0] = debug_led_red[16] ;
    assign debug_sevenseg_4[7] = o_sevenseg[7] ;
    assign debug_sevenseg_4[6] = debug_led_red[16] ;
    assign debug_sevenseg_4[5] = o_sevenseg[7] ;
    assign debug_sevenseg_4[4] = o_sevenseg[7] ;
    assign debug_sevenseg_4[3] = debug_led_red[16] ;
    assign debug_sevenseg_4[2] = debug_led_red[16] ;
    assign debug_sevenseg_4[1] = debug_led_red[16] ;
    assign debug_sevenseg_4[0] = o_sevenseg[7] ;
    assign debug_sevenseg_5[7] = o_sevenseg[7] ;
    assign debug_sevenseg_5[6] = debug_led_red[16] ;
    assign debug_sevenseg_5[5] = o_sevenseg[7] ;
    assign debug_sevenseg_5[4] = o_sevenseg[7] ;
    assign debug_sevenseg_5[3] = debug_led_red[16] ;
    assign debug_sevenseg_5[2] = debug_led_red[16] ;
    assign debug_sevenseg_5[1] = debug_led_red[16] ;
    assign debug_sevenseg_5[0] = debug_led_red[16] ;
    assign o_sevenseg[7] = 1'b1 ;
    uw_uart u_uw_uart (.clk (clk), .rst (o_nrst), .kirschout (o_sevenseg[7]), .kirschdir (
            {debug_led_red[16],debug_led_red[16],debug_led_red[16]}), .o_valid (
            debug_led_red[16]), .i_mode ({o_mode[1],o_sevenseg[7]}), .rxflex (
            rxflex), .txflex (txflex)) ;
    kirsch u_kirsch (.i_clock (debug_led_red[16]), .i_reset (o_nrst), .i_valid (
           debug_led_red[16]), .i_pixel ({debug_led_red[16],debug_led_red[16],
           debug_led_red[16],debug_led_red[16],debug_led_red[16],
           debug_led_red[16],debug_led_red[16],debug_led_red[16]}), .o_mode ({
           o_mode[1],xmplr_dummy [0]})) ;
    assign o_nrst = ~nrst ;
    assign debug_led_red[16] = 1'b0 ;
endmodule


module kirsch ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir, 
                o_mode, o_row, debug_key, debug_switch, debug_led_red, 
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




    assign o_edge = debug_num_5[1] ;
    assign o_dir[2] = o_valid ;
    assign o_dir[1] = o_valid ;
    assign o_dir[0] = o_valid ;
    assign o_mode[0] = debug_num_5[1] ;
    assign o_row[7] = o_valid ;
    assign o_row[6] = o_valid ;
    assign o_row[5] = o_valid ;
    assign o_row[4] = o_valid ;
    assign o_row[3] = o_valid ;
    assign o_row[2] = o_valid ;
    assign o_row[1] = o_valid ;
    assign o_row[0] = o_valid ;
    assign debug_led_red[17] = o_valid ;
    assign debug_led_red[16] = o_valid ;
    assign debug_led_red[15] = o_valid ;
    assign debug_led_red[14] = o_valid ;
    assign debug_led_red[13] = o_valid ;
    assign debug_led_red[12] = o_valid ;
    assign debug_led_red[11] = o_valid ;
    assign debug_led_red[10] = o_valid ;
    assign debug_led_red[9] = o_valid ;
    assign debug_led_red[8] = o_valid ;
    assign debug_led_red[7] = o_valid ;
    assign debug_led_red[6] = o_valid ;
    assign debug_led_red[5] = o_valid ;
    assign debug_led_red[4] = o_valid ;
    assign debug_led_red[3] = o_valid ;
    assign debug_led_red[2] = o_valid ;
    assign debug_led_red[1] = o_valid ;
    assign debug_led_red[0] = o_valid ;
    assign debug_led_grn[5] = o_valid ;
    assign debug_led_grn[4] = o_valid ;
    assign debug_led_grn[3] = o_valid ;
    assign debug_led_grn[2] = o_valid ;
    assign debug_led_grn[1] = o_valid ;
    assign debug_led_grn[0] = o_valid ;
    assign debug_num_0[3] = o_valid ;
    assign debug_num_0[2] = debug_num_5[1] ;
    assign debug_num_0[1] = debug_num_5[1] ;
    assign debug_num_0[0] = debug_num_5[1] ;
    assign debug_num_1[3] = o_valid ;
    assign debug_num_1[2] = o_valid ;
    assign debug_num_1[1] = debug_num_5[1] ;
    assign debug_num_1[0] = o_valid ;
    assign debug_num_2[3] = o_valid ;
    assign debug_num_2[2] = o_valid ;
    assign debug_num_2[1] = debug_num_5[1] ;
    assign debug_num_2[0] = debug_num_5[1] ;
    assign debug_num_3[3] = debug_num_5[1] ;
    assign debug_num_3[2] = debug_num_5[1] ;
    assign debug_num_3[1] = debug_num_5[1] ;
    assign debug_num_3[0] = o_valid ;
    assign debug_num_4[3] = debug_num_5[1] ;
    assign debug_num_4[2] = debug_num_5[1] ;
    assign debug_num_4[1] = o_valid ;
    assign debug_num_4[0] = o_valid ;
    assign debug_num_5[3] = debug_num_5[1] ;
    assign debug_num_5[2] = debug_num_5[1] ;
    assign debug_num_5[0] = o_valid ;
    assign debug_num_5[1] = 1'b1 ;
    assign o_valid = 1'b0 ;
    assign o_mode[1] = ~i_reset ;
endmodule


module uw_uart ( clk, rst, kirschout, kirschdir, o_valid, i_mode, datain, 
                 o_pixavail, rxflex, txflex ) ;

    input clk ;
    input rst ;
    input kirschout ;
    input [2:0]kirschdir ;
    input o_valid ;
    input [1:0]i_mode ;
    output [7:0]datain ;
    output o_pixavail ;
    input rxflex ;
    output txflex ;

    wire o_pixavail_rename126, rxerr, rxrdy, rawrx, sdout_6_, sdout_4_, sdout_0_, 
         state, dsend, mdata_7_, mdata_0_, ack;
    wire [15:0]waitcount;
    wire ld_sdout, PWR, not_o_pixavail, rtlc7n92, rtlc7n115, not_rxerr, 
         not_rtlcn58, rtlc7n145, rtlc7_X_0_n181, rtlc7n221, not_dsend, rtlc10n48, 
         not_rtlc10n48, rtlc10n75, rtlcn4, rtlcn5, rtlcn13, not_rtlcn60, rtlcn60, 
         rtlcn61, not_state, rtlcn65, not_rtlcn73, rtlcn73, rtlcn74, 
         not_rtlc7n145, not_rst, not_i_mode_1, rtlcn79, not_waitcount_15, 
         not_waitcount_14, not_waitcount_13, not_waitcount_12, not_waitcount_11, 
         not_waitcount_10, not_waitcount_9, not_waitcount_8, not_waitcount_7, 
         not_waitcount_4, not_waitcount_3, not_waitcount_1, not_waitcount_0, 
         rtlcn122;
    wire [24:0] xmplr_dummy ;




    assign datain[6] = datain[7] ;
    assign datain[5] = datain[7] ;
    assign datain[4] = datain[7] ;
    assign datain[3] = datain[7] ;
    assign datain[2] = datain[7] ;
    assign datain[1] = datain[7] ;
    assign datain[0] = datain[7] ;
    assign o_pixavail = datain[7] ;
    assign datain[7] = 1'b0 ;
    assign PWR = 1'b1 ;
    UARTS i_uarts (.CLK (clk), .RST (rst), .Din ({sdout_6_,datain[7],sdout_4_,
          datain[7],sdout_0_,datain[7],datain[7],datain[7]}), .LD (ld_sdout), .Rx (
          rawrx), .Baud (PWR), .Tx (txflex), .RxErr (rxerr), .RxRDY (rxrdy)) ;
    assign not_rxerr = ~rxerr ;
    or (rtlc7n92, o_pixavail_rename126, ack) ;
    assign not_rtlcn58 = ~rtlc7n115 ;
    assign not_o_pixavail = ~o_pixavail_rename126 ;
    and (rtlcn5, i_mode[1], rtlc7n92) ;
    assign not_state = ~state ;
    and (rtlcn13, not_state, dsend) ;
    and (rtlcn65, rtlc7n92, not_rtlcn58) ;
    or (rtlcn61, rtlcn65, not_rtlcn73) ;
    and (rtlcn60, i_mode[1], rtlcn61) ;
    assign not_rtlcn60 = ~rtlcn60 ;
    assign not_rtlcn73 = ~rtlcn73 ;
    assign rtlc7n145 = rtlc7n92 ? not_rtlcn58 : not_rxerr ;
    or (rtlcn4, rxrdy, o_pixavail_rename126) ;
    assign not_rtlc7n145 = ~rtlc7n145 ;
    or (rtlcn74, not_rtlc7n145, not_i_mode_1) ;
    assign not_rst = ~rst ;
    and (rtlc7n221, not_rst, rtlcn74) ;
    or (rtlc10n75, dsend, state) ;
    assign not_dsend = ~dsend ;
    assign not_rtlc10n48 = ~rtlc10n48 ;
    assign not_i_mode_1 = ~i_mode[1] ;
    or (rtlcn73, rtlc7n92, rxerr) ;
    or (rtlc10n48, not_dsend, state) ;
    and (rawrx, rxflex, not_rst) ;
    or (rtlcn79, rst, rtlc7n92) ;
    counter_up_sclear_clock_clk_en_0_16_cx4_uw_uart modgen_counter_waitcount (.clock (
                                                    clk), .q ({waitcount[15],
                                                    waitcount[14],waitcount[13],
                                                    waitcount[12],waitcount[11],
                                                    waitcount[10],waitcount[9],
                                                    waitcount[8],waitcount[7],
                                                    waitcount[6],waitcount[5],
                                                    waitcount[4],waitcount[3],
                                                    waitcount[2],waitcount[1],
                                                    waitcount[0]}), .clk_en (
                                                    rtlcn79), .aclear (datain[7]
                                                    ), .sload (datain[7]), .aset (
                                                    datain[7]), .sclear (
                                                    rtlc7_X_0_n181), .updn (PWR)
                                                    , .cnt_en (PWR)) ;
    assign not_waitcount_15 = ~waitcount[15] ;
    assign not_waitcount_14 = ~waitcount[14] ;
    assign not_waitcount_13 = ~waitcount[13] ;
    assign not_waitcount_12 = ~waitcount[12] ;
    assign not_waitcount_11 = ~waitcount[11] ;
    assign not_waitcount_10 = ~waitcount[10] ;
    assign not_waitcount_9 = ~waitcount[9] ;
    assign not_waitcount_8 = ~waitcount[8] ;
    assign not_waitcount_7 = ~waitcount[7] ;
    assign not_waitcount_4 = ~waitcount[4] ;
    assign not_waitcount_3 = ~waitcount[3] ;
    assign not_waitcount_1 = ~waitcount[1] ;
    assign not_waitcount_0 = ~waitcount[0] ;
    and_16u_16u rtlc_318_and_14 (.a ({not_waitcount_15,not_waitcount_14,
                not_waitcount_13,not_waitcount_12,not_waitcount_11,
                not_waitcount_10,not_waitcount_9,not_waitcount_8,not_waitcount_7
                ,waitcount[6],waitcount[5],not_waitcount_4,not_waitcount_3,
                waitcount[2],not_waitcount_1,not_waitcount_0}), .d (rtlc7n115)
                ) ;
    and (rtlcn122, not_o_pixavail, rtlcn4) ;
    DFFE reg_mdata_6_ (.set (datain[7]), .reset (datain[7]), .in (i_mode[1]), .clk (
         clk), .ce (rtlc7n221), .out (mdata_7_)) ;
    DFFE reg_mdata_0_ (.set (datain[7]), .reset (datain[7]), .in (rtlcn5), .clk (
         clk), .ce (rtlc7n221), .out (mdata_0_)) ;
    DFFRSE reg_dsend (.set (datain[7]), .reset (rst), .in (not_rtlcn60), .clk (
           clk), .ce (PWR), .out (dsend)) ;
    DFFE reg_ld_sdout (.set (datain[7]), .reset (rst), .in (not_state), .clk (
         clk), .ce (rtlc10n75), .out (ld_sdout)) ;
    DFFE reg_sdout_6_ (.set (datain[7]), .reset (rst), .in (mdata_7_), .clk (clk
         ), .ce (not_rtlc10n48), .out (sdout_6_)) ;
    DFFE reg_sdout_4_ (.set (datain[7]), .reset (rst), .in (PWR), .clk (clk), .ce (
         not_rtlc10n48), .out (sdout_4_)) ;
    DFFE reg_sdout_0_ (.set (datain[7]), .reset (rst), .in (mdata_0_), .clk (clk
         ), .ce (not_rtlc10n48), .out (sdout_0_)) ;
    DFF reg_state (.set (datain[7]), .reset (rst), .in (rtlcn13), .clk (clk), .out (
        state)) ;
    DFFRSE reg_ack (.set (datain[7]), .reset (rst), .in (rtlcn65), .clk (clk), .ce (
           PWR), .out (ack)) ;
    DFF reg_charavail (.set (datain[7]), .reset (rst), .in (rtlcn122), .clk (clk
        ), .out (o_pixavail_rename126)) ;
    or (rtlc7_X_0_n181, rst, rtlc7n115) ;
endmodule


module DFFRSE ( set, reset, in, clk, ce, out ) ;

    input set ;
    input reset ;
    input in ;
    input clk ;
    input ce ;
    output out ;
reg out; 
always @ (posedge clk)
begin
    if (reset) out = 0;
    else if (set) out = 1;
    else begin
      if (ce)     out = in;
    end
end

endmodule


module and_16u_16u ( a, d ) ;

    input [15:0]a ;
    output d ;







    sim_and #(16) ix21 (.a (a), .d (d)) ;
endmodule


module counter_up_sclear_clock_clk_en_0_16_cx4_uw_uart ( clock, q, clk_en, 
                                                         aclear, sload, data, 
                                                         aset, sclear, updn, 
                                                         cnt_en ) ;

    input clock ;
    output [15:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [15:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire GND, PWR, sclear_and_0_dup_191, sclear_and_1_dup_192, 
         sclear_and_2_dup_193, sclear_and_3_dup_194, sclear_and_4_dup_195, 
         sclear_and_5_dup_196, sclear_and_6_dup_197, sclear_and_7_dup_198, 
         sclear_and_8_dup_199, sclear_and_9_dup_200, sclear_and_10_dup_201, 
         sclear_and_11_dup_202, sclear_and_12_dup_203, sclear_and_13_dup_204, 
         sclear_and_14_dup_205, sclear_and_15_dup_206, inc_d_0_, inc_d_1_, 
         inc_d_2_, inc_d_3_, inc_d_4_, inc_d_5_, inc_d_6_, inc_d_7_, inc_d_8_, 
         inc_d_9_, inc_d_10_, inc_d_11_, inc_d_12_, inc_d_13_, inc_d_14_, 
         inc_d_15_, NOT_sclear;
    wire [0:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    DFFE reg_q_15_ (.set (GND), .reset (GND), .in (sclear_and_15_dup_206), .clk (
         clock), .ce (clk_en), .out (q[15])) ;
    DFFE reg_q_14_ (.set (GND), .reset (GND), .in (sclear_and_14_dup_205), .clk (
         clock), .ce (clk_en), .out (q[14])) ;
    DFFE reg_q_13_ (.set (GND), .reset (GND), .in (sclear_and_13_dup_204), .clk (
         clock), .ce (clk_en), .out (q[13])) ;
    DFFE reg_q_12_ (.set (GND), .reset (GND), .in (sclear_and_12_dup_203), .clk (
         clock), .ce (clk_en), .out (q[12])) ;
    DFFE reg_q_11_ (.set (GND), .reset (GND), .in (sclear_and_11_dup_202), .clk (
         clock), .ce (clk_en), .out (q[11])) ;
    DFFE reg_q_10_ (.set (GND), .reset (GND), .in (sclear_and_10_dup_201), .clk (
         clock), .ce (clk_en), .out (q[10])) ;
    DFFE reg_q_9_ (.set (GND), .reset (GND), .in (sclear_and_9_dup_200), .clk (
         clock), .ce (clk_en), .out (q[9])) ;
    DFFE reg_q_8_ (.set (GND), .reset (GND), .in (sclear_and_8_dup_199), .clk (
         clock), .ce (clk_en), .out (q[8])) ;
    DFFE reg_q_7_ (.set (GND), .reset (GND), .in (sclear_and_7_dup_198), .clk (
         clock), .ce (clk_en), .out (q[7])) ;
    DFFE reg_q_6_ (.set (GND), .reset (GND), .in (sclear_and_6_dup_197), .clk (
         clock), .ce (clk_en), .out (q[6])) ;
    DFFE reg_q_5_ (.set (GND), .reset (GND), .in (sclear_and_5_dup_196), .clk (
         clock), .ce (clk_en), .out (q[5])) ;
    DFFE reg_q_4_ (.set (GND), .reset (GND), .in (sclear_and_4_dup_195), .clk (
         clock), .ce (clk_en), .out (q[4])) ;
    DFFE reg_q_3_ (.set (GND), .reset (GND), .in (sclear_and_3_dup_194), .clk (
         clock), .ce (clk_en), .out (q[3])) ;
    DFFE reg_q_2_ (.set (GND), .reset (GND), .in (sclear_and_2_dup_193), .clk (
         clock), .ce (clk_en), .out (q[2])) ;
    DFFE reg_q_1_ (.set (GND), .reset (GND), .in (sclear_and_1_dup_192), .clk (
         clock), .ce (clk_en), .out (q[1])) ;
    DFFE reg_q_0_ (.set (GND), .reset (GND), .in (sclear_and_0_dup_191), .clk (
         clock), .ce (clk_en), .out (q[0])) ;
    inc_16u_16u_0_0 inc (.cin (PWR), .a (q), .d ({inc_d_15_,inc_d_14_,inc_d_13_,
                    inc_d_12_,inc_d_11_,inc_d_10_,inc_d_9_,inc_d_8_,inc_d_7_,
                    inc_d_6_,inc_d_5_,inc_d_4_,inc_d_3_,inc_d_2_,inc_d_1_,
                    inc_d_0_})) ;
    assign NOT_sclear = ~sclear ;
    and (sclear_and_0_dup_191, inc_d_0_, NOT_sclear) ;
    and (sclear_and_1_dup_192, inc_d_1_, NOT_sclear) ;
    and (sclear_and_2_dup_193, inc_d_2_, NOT_sclear) ;
    and (sclear_and_3_dup_194, inc_d_3_, NOT_sclear) ;
    and (sclear_and_4_dup_195, inc_d_4_, NOT_sclear) ;
    and (sclear_and_5_dup_196, inc_d_5_, NOT_sclear) ;
    and (sclear_and_6_dup_197, inc_d_6_, NOT_sclear) ;
    and (sclear_and_7_dup_198, inc_d_7_, NOT_sclear) ;
    and (sclear_and_8_dup_199, inc_d_8_, NOT_sclear) ;
    and (sclear_and_9_dup_200, inc_d_9_, NOT_sclear) ;
    and (sclear_and_10_dup_201, inc_d_10_, NOT_sclear) ;
    and (sclear_and_11_dup_202, inc_d_11_, NOT_sclear) ;
    and (sclear_and_12_dup_203, inc_d_12_, NOT_sclear) ;
    and (sclear_and_13_dup_204, inc_d_13_, NOT_sclear) ;
    and (sclear_and_14_dup_205, inc_d_14_, NOT_sclear) ;
    and (sclear_and_15_dup_206, inc_d_15_, NOT_sclear) ;
endmodule


module inc_16u_16u_0_0 ( cin, a, d, cout ) ;

    input cin ;
    input [15:0]a ;
    output [15:0]d ;
    output cout ;







    sim_inc #(16) ix37 (.cin (cin), .a (a), .d (d), .cout (cout)) ;
endmodule


module UARTS ( CLK, RST, Din, LD, Rx, Baud, Dout, Tx, TxBusy, RxErr, RxRDY ) ;

    input CLK ;
    input RST ;
    input [7:0]Din ;
    input LD ;
    input Rx ;
    input Baud ;
    output [7:0]Dout ;
    output Tx ;
    output TxBusy ;
    output RxErr ;
    output RxRDY ;

    wire [8:1]Tx_Reg;
    wire RxDivisor_4_;
    wire [10:0]RxDiv;
    wire [11:0]TxDiv;
    wire TopTx, TopRx;
    wire [3:0]TxBitCnt;
    wire [3:0]RxBitCnt;
    wire Rx_r;
    wire [5:0]RxFSM;
    wire [1:0]TxFSM;
    wire PWR, rtlc8n72;
    wire [8:0]Tx_Reg_14n6ss1;
    wire not_LD, not_rtlcs3, rtlc14n163, rtlc14n167, rtlc14n218, not_TxFSM_1, 
         not_rtlcn20, not_TopTx, rtlc14n223, rtlc14_X_0_n224, rtlc14n234, 
         not_rtlc14_X_0_n224, rtlc14n289, not_rtlcn22, not_rtlc14n167, 
         not_rtlcn24, not_Rx_r, not_Rx, not_TopRx, rtlc17n335, rtlc17n432, 
         not_rtlcn26, rtlcn20, rtlcn22, rtlcn24, rtlcn26, not_TxFSM_0, rtlcn52, 
         rtlcn58, rtlcn63, rtlcn68, rtlcn72, rtlcn78, rtlcn92, not_rtlcn132, 
         not_RxFSM_0, not_rtlcs5, rtlcn113, rtlcn114, rtlcn115, rtlcn116, 
         not_rtlc14n289, rtlcn132, rtlcs0, rtlcs1, rtlcs3, rtlcs4, rtlcs5, 
         not_RxBitCnt_2, not_RxBitCnt_1, not_RxBitCnt_0, not_RxDiv_9, 
         not_RxDiv_5, not_RxDiv_1, not_TxDiv_10, not_TxDiv_6, not_TxDiv_2, 
         not_TxBitCnt_3, not_TxBitCnt_2, not_TxBitCnt_1, not_rtlc17n335, rtlcs6, 
         rtlcs7, rtlc14_109_or_0_nx0;
    wire [26:0] xmplr_dummy ;




    assign Dout[7] = TxBusy ;
    assign Dout[6] = TxBusy ;
    assign Dout[5] = TxBusy ;
    assign Dout[4] = TxBusy ;
    assign Dout[3] = TxBusy ;
    assign Dout[2] = TxBusy ;
    assign Dout[1] = TxBusy ;
    assign Dout[0] = TxBusy ;
    assign TxBusy = 1'b0 ;
    assign PWR = 1'b1 ;
    or (rtlc8n72, RxFSM[0], rtlcs0) ;
    or (rtlc14n289, rtlcs4, rtlc14n218) ;
    or (rtlc14n163, not_TopTx, not_rtlcs3) ;
    assign not_TopTx = ~TopTx ;
    and (rtlc14n223, not_TopTx, TxFSM[1]) ;
    and (rtlc14n218, TxFSM[1], TxFSM[0]) ;
    assign not_rtlc14_X_0_n224 = ~rtlc14_X_0_n224 ;
    assign not_TxFSM_1 = ~TxFSM[1] ;
    and (rtlc14n234, TopTx, not_TxFSM_1) ;
    assign not_rtlcs3 = ~rtlcs3 ;
    assign not_TopRx = ~TopRx ;
    and (rtlc17n335, not_TopRx, RxFSM[3]) ;
    assign not_Rx = ~Rx ;
    assign not_rtlcn20 = ~rtlcn20 ;
    or (rtlcn20, TxFSM[1], TxFSM[0]) ;
    select_3_3 rtlc_82_select_1 (.a ({RxFSM[0],not_rtlcn132,RxFSM[5]}), .b ({
               Rx_r,not_TopRx,not_Rx}), .d (rtlcn26)) ;
    mux_3u_3u Tx_Reg_mux_14i1 (.a ({Tx_Reg[1],TxBusy,PWR}), .b ({TxBusy,TxFSM[1]
              ,TxFSM[0]}), .d (Tx_Reg_14n6ss1[0])) ;
    mux_4u_4u rtlc_127_mux_3 (.a ({PWR,not_TopTx,PWR,not_LD}), .b ({TxBusy,
              TxBusy,TxFSM[1],TxFSM[0]}), .d (rtlc14n167)) ;
    mux_4u_4u rtlc_128_mux_4 (.a ({PWR,not_TopTx,not_TopTx,not_LD}), .b ({TxBusy
              ,TxBusy,TxFSM[1],TxFSM[0]}), .d (rtlcn22)) ;
    mux_4u_4u rtlc_129_mux_5 (.a ({not_TopTx,rtlc14n163,not_TopTx,not_LD}), .b (
              {TxBusy,TxBusy,TxFSM[1],TxFSM[0]}), .d (rtlcn24)) ;
    assign not_Rx_r = ~Rx_r ;
    assign not_LD = ~LD ;
    assign not_RxFSM_0 = ~RxFSM[0] ;
    assign not_TxFSM_0 = ~TxFSM[0] ;
    assign not_rtlcs5 = ~rtlcs5 ;
    and (rtlcn52, not_rtlcs5, RxFSM[2]) ;
    and (rtlcn113, not_Rx_r, RxFSM[1]) ;
    or (rtlcn58, RxFSM[3], rtlcn113) ;
    and (rtlcn114, RxFSM[4], Rx_r) ;
    or (rtlcn63, RxFSM[5], rtlcn114) ;
    and (rtlcn68, rtlcs5, RxFSM[2]) ;
    and (rtlcn72, not_RxFSM_0, rtlcs0) ;
    and (rtlcn115, RxFSM[4], not_Rx_r) ;
    and (rtlcn116, Rx_r, RxFSM[1]) ;
    or (rtlcn78, rtlcn115, rtlcn116) ;
    assign not_rtlc14n289 = ~rtlc14n289 ;
    assign not_rtlcn132 = ~rtlcn132 ;
    assign Tx_Reg_14n6ss1[1] = TxFSM[1] ? Tx_Reg[2] : Din[3] ;
    assign Tx_Reg_14n6ss1[2] = TxFSM[1] ? Tx_Reg[3] : Din[3] ;
    assign Tx_Reg_14n6ss1[3] = TxFSM[1] ? Tx_Reg[4] : Din[3] ;
    assign Tx_Reg_14n6ss1[4] = TxFSM[1] ? Tx_Reg[5] : Din[3] ;
    assign Tx_Reg_14n6ss1[5] = TxFSM[1] ? Tx_Reg[6] : Din[5] ;
    assign Tx_Reg_14n6ss1[6] = TxFSM[1] ? Tx_Reg[7] : Din[5] ;
    assign Tx_Reg_14n6ss1[7] = TxFSM[1] ? Tx_Reg[8] : Din[7] ;
    assign not_rtlcn24 = ~rtlcn24 ;
    assign not_rtlc14n167 = ~rtlc14n167 ;
    assign not_rtlcn22 = ~rtlcn22 ;
    assign not_rtlcn26 = ~rtlcn26 ;
    or (rtlc17n432, RxRDY, RxFSM[5]) ;
    or (rtlcn132, RxFSM[0], RxFSM[5]) ;
    assign not_RxBitCnt_2 = ~RxBitCnt[2] ;
    assign not_RxBitCnt_1 = ~RxBitCnt[1] ;
    assign not_RxBitCnt_0 = ~RxBitCnt[0] ;
    and_4u_4u rtlc_356_and_7 (.a ({RxBitCnt[3],not_RxBitCnt_2,not_RxBitCnt_1,
              not_RxBitCnt_0}), .d (rtlcs5)) ;
    assign not_RxDiv_9 = ~RxDiv[9] ;
    assign not_RxDiv_5 = ~RxDiv[5] ;
    assign not_RxDiv_1 = ~RxDiv[1] ;
    and_4u_4u rtlc_366_and_8 (.a ({not_RxDiv_9,not_RxDiv_5,not_RxDiv_1,rtlcs6})
              , .d (rtlcs0)) ;
    assign not_TxDiv_10 = ~TxDiv[10] ;
    assign not_TxDiv_6 = ~TxDiv[6] ;
    assign not_TxDiv_2 = ~TxDiv[2] ;
    and_4u_4u rtlc_377_and_9 (.a ({not_TxDiv_10,not_TxDiv_6,not_TxDiv_2,rtlcs7})
              , .d (rtlcs1)) ;
    assign not_TxBitCnt_3 = ~TxBitCnt[3] ;
    assign not_TxBitCnt_2 = ~TxBitCnt[2] ;
    assign not_TxBitCnt_1 = ~TxBitCnt[1] ;
    and_4u_4u rtlc_382_and_10 (.a ({not_TxBitCnt_3,not_TxBitCnt_2,not_TxBitCnt_1
              ,TxBitCnt[0]}), .d (rtlcs3)) ;
    and (rtlcs4, not_TxFSM_1, not_TxFSM_0) ;
    or (Tx_Reg_14n6ss1[8], Din[7], TxFSM[1]) ;
    counter_up_sclear_aclear_clock_0_11_cx0_UARTS modgen_counter_RxDiv (.clock (
                                                  CLK), .q ({RxDiv[10],RxDiv[9],
                                                  RxDiv[8],RxDiv[7],RxDiv[6],
                                                  RxDiv[5],RxDiv[4],RxDiv[3],
                                                  RxDiv[2],RxDiv[1],RxDiv[0]}), 
                                                  .clk_en (PWR), .aclear (RST), 
                                                  .sload (TxBusy), .aset (TxBusy
                                                  ), .sclear (rtlc8n72), .updn (
                                                  PWR), .cnt_en (PWR)) ;
    counter_up_sclear_aclear_clock_0_12_cx1_UARTS modgen_counter_TxDiv (.clock (
                                                  CLK), .q ({TxDiv[11],TxDiv[10]
                                                  ,TxDiv[9],TxDiv[8],TxDiv[7],
                                                  TxDiv[6],TxDiv[5],TxDiv[4],
                                                  TxDiv[3],TxDiv[2],TxDiv[1],
                                                  TxDiv[0]}), .clk_en (PWR), .aclear (
                                                  RST), .sload (TxBusy), .aset (
                                                  TxBusy), .sclear (rtlcs1), .updn (
                                                  PWR), .cnt_en (PWR)) ;
    counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx2_UARTS 
                                                              modgen_counter_TxBitCnt
                                                               (.clock (CLK), .q (
                                                              {TxBitCnt[3],
                                                              TxBitCnt[2],
                                                              TxBitCnt[1],
                                                              TxBitCnt[0]}), .clk_en (
                                                              not_rtlc14_X_0_n224
                                                              ), .aclear (RST), 
                                                              .sload (rtlc14n234
                                                              ), .data ({PWR,
                                                              TxBusy,TxBusy,PWR}
                                                              ), .aset (TxBusy)
                                                              , .sclear (TxBusy)
                                                              , .updn (TxBusy), 
                                                              .cnt_en (TxFSM[1])
                                                              ) ;
    assign not_rtlc17n335 = ~rtlc17n335 ;
    counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx3_UARTS 
                                                               modgen_counter_RxBitCnt
                                                                (.clock (CLK), .q (
                                                               {RxBitCnt[3],
                                                               RxBitCnt[2],
                                                               RxBitCnt[1],
                                                               RxBitCnt[0]}), .clk_en (
                                                               not_rtlc17n335), 
                                                               .aclear (RST), .sload (
                                                               TxBusy), .aset (
                                                               TxBusy), .sclear (
                                                               RxFSM[0]), .updn (
                                                               PWR), .cnt_en (
                                                               RxFSM[3])) ;
    eq_8u_8u rtlceq_s14_eq_11 (.a ({RxDiv[10],RxDiv[8],RxDiv[7],RxDiv[6],
             RxDiv[4],RxDiv[3],RxDiv[2],RxDiv[0]}), .b ({TxBusy,TxBusy,
             RxDivisor_4_,RxDivisor_4_,RxDivisor_4_,RxDivisor_4_,TxBusy,TxBusy})
             , .d (rtlcs6)) ;
    eq_9u_9u rtlceq_s16_eq_12 (.a ({TxDiv[11],TxDiv[9],TxDiv[8],TxDiv[7],
             TxDiv[5],TxDiv[4],TxDiv[3],TxDiv[1],TxDiv[0]}), .b ({TxBusy,TxBusy,
             RxDivisor_4_,RxDivisor_4_,RxDivisor_4_,RxDivisor_4_,TxBusy,TxBusy,
             RxDivisor_4_}), .d (rtlcs7)) ;
    DFF reg_Rx_r (.set (RST), .reset (TxBusy), .in (Rx), .clk (CLK), .out (Rx_r)
        ) ;
    DFF reg_RxDivisor_4_ (.set (TxBusy), .reset (RST), .in (PWR), .clk (CLK), .out (
        RxDivisor_4_)) ;
    DFF reg_TopRx (.set (TxBusy), .reset (RST), .in (rtlcn72), .clk (CLK), .out (
        TopRx)) ;
    DFF reg_TopTx (.set (TxBusy), .reset (RST), .in (rtlcs1), .clk (CLK), .out (
        TopTx)) ;
    DFFE reg_TxFSM_1_ (.set (TxBusy), .reset (RST), .in (not_rtlc14n289), .clk (
         CLK), .ce (not_rtlcn24), .out (TxFSM[1])) ;
    DFFE reg_TxFSM_0_ (.set (TxBusy), .reset (RST), .in (not_TxFSM_0), .clk (CLK
         ), .ce (not_rtlcn24), .out (TxFSM[0])) ;
    DFFE reg_Tx_Reg_8_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[8]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[8])) ;
    DFFE reg_Tx_Reg_7_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[7]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[7])) ;
    DFFE reg_Tx_Reg_6_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[6]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[6])) ;
    DFFE reg_Tx_Reg_5_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[5]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[5])) ;
    DFFE reg_Tx_Reg_4_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[4]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[4])) ;
    DFFE reg_Tx_Reg_3_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[3]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[3])) ;
    DFFE reg_Tx_Reg_2_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[2]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[2])) ;
    DFFE reg_Tx_Reg_1_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[1]), .clk (
         CLK), .ce (not_rtlc14n167), .out (Tx_Reg[1])) ;
    DFFE reg_Tx_Reg_0_ (.set (RST), .reset (TxBusy), .in (Tx_Reg_14n6ss1[0]), .clk (
         CLK), .ce (not_rtlcn22), .out (Tx)) ;
    DFFE reg_RxFSM_5_ (.set (TxBusy), .reset (RST), .in (rtlcn78), .clk (CLK), .ce (
         not_rtlcn26), .out (RxFSM[5])) ;
    DFFE reg_RxFSM_4_ (.set (TxBusy), .reset (RST), .in (rtlcn68), .clk (CLK), .ce (
         not_rtlcn26), .out (RxFSM[4])) ;
    DFFE reg_RxFSM_3_ (.set (TxBusy), .reset (RST), .in (rtlcn52), .clk (CLK), .ce (
         not_rtlcn26), .out (RxFSM[3])) ;
    DFFE reg_RxFSM_2_ (.set (TxBusy), .reset (RST), .in (rtlcn58), .clk (CLK), .ce (
         not_rtlcn26), .out (RxFSM[2])) ;
    DFFE reg_RxFSM_1_ (.set (TxBusy), .reset (RST), .in (RxFSM[0]), .clk (CLK), 
         .ce (not_rtlcn26), .out (RxFSM[1])) ;
    DFFE reg_RxFSM_0_ (.set (RST), .reset (TxBusy), .in (rtlcn63), .clk (CLK), .ce (
         not_rtlcn26), .out (RxFSM[0])) ;
    DFFE reg_RxErr (.set (TxBusy), .reset (RST), .in (RxFSM[5]), .clk (CLK), .ce (
         rtlc17n432), .out (RxErr)) ;
    DFF reg_RxRDYi (.set (TxBusy), .reset (RST), .in (rtlcn92), .clk (CLK), .out (
        RxRDY)) ;
    or (rtlc14_109_or_0_nx0, rtlc14n218, not_rtlcn20) ;
    or (rtlc14_X_0_n224, rtlc14_109_or_0_nx0, rtlc14n223) ;
    and (rtlcn92, rtlcn114, TopRx) ;
endmodule


module eq_9u_9u ( a, b, d ) ;

    input [8:0]a ;
    input [8:0]b ;
    output d ;







    sim_eq #(9) ix15 (.a (a), .b (b), .d (d)) ;
endmodule


module eq_8u_8u ( a, b, d ) ;

    input [7:0]a ;
    input [7:0]b ;
    output d ;







    sim_eq #(8) ix14 (.a (a), .b (b), .d (d)) ;
endmodule


module counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx3_UARTS ( clock, q, 
                                                                    clk_en, 
                                                                    aclear, 
                                                                    sload, data, 
                                                                    aset, sclear, 
                                                                    updn, cnt_en
                                                                     ) ;

    input clock ;
    output [3:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [3:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire GND, PWR, nx24, nx26, sclear_and_0_dup_59, sclear_and_1_dup_60, 
         sclear_and_2_dup_61, sclear_and_3_dup_62, inc_d_0_, inc_d_1_, inc_d_2_, 
         inc_d_3_, NOT_sclear;
    wire [0:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    or (nx24, cnt_en, sclear) ;
    and (nx26, nx24, clk_en) ;
    DFFE reg_q_3_ (.set (GND), .reset (aclear), .in (sclear_and_3_dup_62), .clk (
         clock), .ce (nx26), .out (q[3])) ;
    DFFE reg_q_2_ (.set (GND), .reset (aclear), .in (sclear_and_2_dup_61), .clk (
         clock), .ce (nx26), .out (q[2])) ;
    DFFE reg_q_1_ (.set (GND), .reset (aclear), .in (sclear_and_1_dup_60), .clk (
         clock), .ce (nx26), .out (q[1])) ;
    DFFE reg_q_0_ (.set (GND), .reset (aclear), .in (sclear_and_0_dup_59), .clk (
         clock), .ce (nx26), .out (q[0])) ;
    inc_4u_4u_0_0 inc (.cin (PWR), .a (q), .d ({inc_d_3_,inc_d_2_,inc_d_1_,
                  inc_d_0_})) ;
    assign NOT_sclear = ~sclear ;
    and (sclear_and_0_dup_59, inc_d_0_, NOT_sclear) ;
    and (sclear_and_1_dup_60, inc_d_1_, NOT_sclear) ;
    and (sclear_and_2_dup_61, inc_d_2_, NOT_sclear) ;
    and (sclear_and_3_dup_62, inc_d_3_, NOT_sclear) ;
endmodule


module inc_4u_4u_0_0 ( cin, a, d, cout ) ;

    input cin ;
    input [3:0]a ;
    output [3:0]d ;
    output cout ;







    sim_inc #(4) ix13 (.cin (cin), .a (a), .d (d), .cout (cout)) ;
endmodule


module counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx2_UARTS ( clock, q, 
                                                                   clk_en, 
                                                                   aclear, sload, 
                                                                   data, aset, 
                                                                   sclear, updn, 
                                                                   cnt_en ) ;

    input clock ;
    output [3:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [3:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire GND, nx20, nx22, sload_mux_0_dup_53, sload_mux_1_dup_54, 
         sload_mux_2_dup_55, sload_mux_3_dup_56, dec_d_0_, dec_d_1_, dec_d_2_, 
         dec_d_3_;
    wire [0:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    or (nx20, cnt_en, sload) ;
    and (nx22, clk_en, nx20) ;
    DFFE reg_q_3_ (.set (GND), .reset (aclear), .in (sload_mux_3_dup_56), .clk (
         clock), .ce (nx22), .out (q[3])) ;
    DFFE reg_q_2_ (.set (GND), .reset (aclear), .in (sload_mux_2_dup_55), .clk (
         clock), .ce (nx22), .out (q[2])) ;
    DFFE reg_q_1_ (.set (GND), .reset (aclear), .in (sload_mux_1_dup_54), .clk (
         clock), .ce (nx22), .out (q[1])) ;
    DFFE reg_q_0_ (.set (GND), .reset (aclear), .in (sload_mux_0_dup_53), .clk (
         clock), .ce (nx22), .out (q[0])) ;
    dec_4u_4u_0_0 dec (.cin (GND), .a (q), .d ({dec_d_3_,dec_d_2_,dec_d_1_,
                  dec_d_0_})) ;
    assign sload_mux_0_dup_53 = sload ? data[0] : dec_d_0_ ;
    assign sload_mux_1_dup_54 = sload ? data[1] : dec_d_1_ ;
    assign sload_mux_2_dup_55 = sload ? data[2] : dec_d_2_ ;
    assign sload_mux_3_dup_56 = sload ? data[3] : dec_d_3_ ;
endmodule


module dec_4u_4u_0_0 ( cin, a, d, cout ) ;

    input cin ;
    input [3:0]a ;
    output [3:0]d ;
    output cout ;







    sim_dec #(4) ix13 (.cin (cin), .a (a), .d (d), .cout (cout)) ;
endmodule


module DFFE ( set, reset, in, clk, ce, out ) ;

    input set ;
    input reset ;
    input in ;
    input clk ;
    input ce ;
    output out ;
reg out; 
always @ (posedge set or posedge reset or posedge clk)
begin
    if (set) out = 1;
    else if (reset) out = 0;
    else begin
      if (ce)     out = in;
    end
end

endmodule


module counter_up_sclear_aclear_clock_0_12_cx1_UARTS ( clock, q, clk_en, aclear, 
                                                       sload, data, aset, sclear, 
                                                       updn, cnt_en ) ;

    input clock ;
    output [11:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [11:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire GND, PWR, sclear_and_0_dup_147, sclear_and_1_dup_148, 
         sclear_and_2_dup_149, sclear_and_3_dup_150, sclear_and_4_dup_151, 
         sclear_and_5_dup_152, sclear_and_6_dup_153, sclear_and_7_dup_154, 
         sclear_and_8_dup_155, sclear_and_9_dup_156, sclear_and_10_dup_157, 
         sclear_and_11_dup_158, inc_d_0_, inc_d_1_, inc_d_2_, inc_d_3_, inc_d_4_, 
         inc_d_5_, inc_d_6_, inc_d_7_, inc_d_8_, inc_d_9_, inc_d_10_, inc_d_11_, 
         NOT_sclear;
    wire [0:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    DFF reg_q_11_ (.set (GND), .reset (aclear), .in (sclear_and_11_dup_158), .clk (
        clock), .out (q[11])) ;
    DFF reg_q_10_ (.set (GND), .reset (aclear), .in (sclear_and_10_dup_157), .clk (
        clock), .out (q[10])) ;
    DFF reg_q_9_ (.set (GND), .reset (aclear), .in (sclear_and_9_dup_156), .clk (
        clock), .out (q[9])) ;
    DFF reg_q_8_ (.set (GND), .reset (aclear), .in (sclear_and_8_dup_155), .clk (
        clock), .out (q[8])) ;
    DFF reg_q_7_ (.set (GND), .reset (aclear), .in (sclear_and_7_dup_154), .clk (
        clock), .out (q[7])) ;
    DFF reg_q_6_ (.set (GND), .reset (aclear), .in (sclear_and_6_dup_153), .clk (
        clock), .out (q[6])) ;
    DFF reg_q_5_ (.set (GND), .reset (aclear), .in (sclear_and_5_dup_152), .clk (
        clock), .out (q[5])) ;
    DFF reg_q_4_ (.set (GND), .reset (aclear), .in (sclear_and_4_dup_151), .clk (
        clock), .out (q[4])) ;
    DFF reg_q_3_ (.set (GND), .reset (aclear), .in (sclear_and_3_dup_150), .clk (
        clock), .out (q[3])) ;
    DFF reg_q_2_ (.set (GND), .reset (aclear), .in (sclear_and_2_dup_149), .clk (
        clock), .out (q[2])) ;
    DFF reg_q_1_ (.set (GND), .reset (aclear), .in (sclear_and_1_dup_148), .clk (
        clock), .out (q[1])) ;
    DFF reg_q_0_ (.set (GND), .reset (aclear), .in (sclear_and_0_dup_147), .clk (
        clock), .out (q[0])) ;
    inc_12u_12u_0_0 inc (.cin (PWR), .a (q), .d ({inc_d_11_,inc_d_10_,inc_d_9_,
                    inc_d_8_,inc_d_7_,inc_d_6_,inc_d_5_,inc_d_4_,inc_d_3_,
                    inc_d_2_,inc_d_1_,inc_d_0_})) ;
    assign NOT_sclear = ~sclear ;
    and (sclear_and_0_dup_147, inc_d_0_, NOT_sclear) ;
    and (sclear_and_1_dup_148, inc_d_1_, NOT_sclear) ;
    and (sclear_and_2_dup_149, inc_d_2_, NOT_sclear) ;
    and (sclear_and_3_dup_150, inc_d_3_, NOT_sclear) ;
    and (sclear_and_4_dup_151, inc_d_4_, NOT_sclear) ;
    and (sclear_and_5_dup_152, inc_d_5_, NOT_sclear) ;
    and (sclear_and_6_dup_153, inc_d_6_, NOT_sclear) ;
    and (sclear_and_7_dup_154, inc_d_7_, NOT_sclear) ;
    and (sclear_and_8_dup_155, inc_d_8_, NOT_sclear) ;
    and (sclear_and_9_dup_156, inc_d_9_, NOT_sclear) ;
    and (sclear_and_10_dup_157, inc_d_10_, NOT_sclear) ;
    and (sclear_and_11_dup_158, inc_d_11_, NOT_sclear) ;
endmodule


module inc_12u_12u_0_0 ( cin, a, d, cout ) ;

    input cin ;
    input [11:0]a ;
    output [11:0]d ;
    output cout ;







    sim_inc #(12) ix29 (.cin (cin), .a (a), .d (d), .cout (cout)) ;
endmodule


module counter_up_sclear_aclear_clock_0_11_cx0_UARTS ( clock, q, clk_en, aclear, 
                                                       sload, data, aset, sclear, 
                                                       updn, cnt_en ) ;

    input clock ;
    output [10:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [10:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire GND, PWR, sclear_and_0_dup_136, sclear_and_1_dup_137, 
         sclear_and_2_dup_138, sclear_and_3_dup_139, sclear_and_4_dup_140, 
         sclear_and_5_dup_141, sclear_and_6_dup_142, sclear_and_7_dup_143, 
         sclear_and_8_dup_144, sclear_and_9_dup_145, sclear_and_10_dup_146, 
         inc_d_0_, inc_d_1_, inc_d_2_, inc_d_3_, inc_d_4_, inc_d_5_, inc_d_6_, 
         inc_d_7_, inc_d_8_, inc_d_9_, inc_d_10_, NOT_sclear;
    wire [0:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    DFF reg_q_10_ (.set (GND), .reset (aclear), .in (sclear_and_10_dup_146), .clk (
        clock), .out (q[10])) ;
    DFF reg_q_9_ (.set (GND), .reset (aclear), .in (sclear_and_9_dup_145), .clk (
        clock), .out (q[9])) ;
    DFF reg_q_8_ (.set (GND), .reset (aclear), .in (sclear_and_8_dup_144), .clk (
        clock), .out (q[8])) ;
    DFF reg_q_7_ (.set (GND), .reset (aclear), .in (sclear_and_7_dup_143), .clk (
        clock), .out (q[7])) ;
    DFF reg_q_6_ (.set (GND), .reset (aclear), .in (sclear_and_6_dup_142), .clk (
        clock), .out (q[6])) ;
    DFF reg_q_5_ (.set (GND), .reset (aclear), .in (sclear_and_5_dup_141), .clk (
        clock), .out (q[5])) ;
    DFF reg_q_4_ (.set (GND), .reset (aclear), .in (sclear_and_4_dup_140), .clk (
        clock), .out (q[4])) ;
    DFF reg_q_3_ (.set (GND), .reset (aclear), .in (sclear_and_3_dup_139), .clk (
        clock), .out (q[3])) ;
    DFF reg_q_2_ (.set (GND), .reset (aclear), .in (sclear_and_2_dup_138), .clk (
        clock), .out (q[2])) ;
    DFF reg_q_1_ (.set (GND), .reset (aclear), .in (sclear_and_1_dup_137), .clk (
        clock), .out (q[1])) ;
    DFF reg_q_0_ (.set (GND), .reset (aclear), .in (sclear_and_0_dup_136), .clk (
        clock), .out (q[0])) ;
    inc_11u_11u_0_0 inc (.cin (PWR), .a (q), .d ({inc_d_10_,inc_d_9_,inc_d_8_,
                    inc_d_7_,inc_d_6_,inc_d_5_,inc_d_4_,inc_d_3_,inc_d_2_,
                    inc_d_1_,inc_d_0_})) ;
    assign NOT_sclear = ~sclear ;
    and (sclear_and_0_dup_136, inc_d_0_, NOT_sclear) ;
    and (sclear_and_1_dup_137, inc_d_1_, NOT_sclear) ;
    and (sclear_and_2_dup_138, inc_d_2_, NOT_sclear) ;
    and (sclear_and_3_dup_139, inc_d_3_, NOT_sclear) ;
    and (sclear_and_4_dup_140, inc_d_4_, NOT_sclear) ;
    and (sclear_and_5_dup_141, inc_d_5_, NOT_sclear) ;
    and (sclear_and_6_dup_142, inc_d_6_, NOT_sclear) ;
    and (sclear_and_7_dup_143, inc_d_7_, NOT_sclear) ;
    and (sclear_and_8_dup_144, inc_d_8_, NOT_sclear) ;
    and (sclear_and_9_dup_145, inc_d_9_, NOT_sclear) ;
    and (sclear_and_10_dup_146, inc_d_10_, NOT_sclear) ;
endmodule


module inc_11u_11u_0_0 ( cin, a, d, cout ) ;

    input cin ;
    input [10:0]a ;
    output [10:0]d ;
    output cout ;







    sim_inc #(11) ix27 (.cin (cin), .a (a), .d (d), .cout (cout)) ;
endmodule


module DFF ( set, reset, in, clk, out ) ;

    input set ;
    input reset ;
    input in ;
    input clk ;
    output out ;
reg out; 
always @ (posedge set or posedge reset or posedge clk)
begin
    if (set) out = 1;
    else if (reset) out = 0;
    else begin
     out = in;
    end
end

endmodule


module and_4u_4u ( a, d ) ;

    input [3:0]a ;
    output d ;







    sim_and #(4) ix9 (.a (a), .d (d)) ;
endmodule


module mux_4u_4u ( a, b, d ) ;

    input [3:0]a ;
    input [3:0]b ;
    output d ;







    sim_mux #(4,2) ix9 (.a (a), .b (b), .d (d)) ;
endmodule


module mux_3u_3u ( a, b, d ) ;

    input [2:0]a ;
    input [2:0]b ;
    output d ;







    sim_mux #(3,2) ix8 (.a (a), .b (b), .d (d)) ;
endmodule


module select_3_3 ( a, b, d ) ;

    input [2:0]a ;
    input [2:0]b ;
    output d ;







    sim_select #(3) ix11 (.a (a), .b (b), .d (d)) ;
endmodule

