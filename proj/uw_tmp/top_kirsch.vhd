
-- 
-- Definition of  top_kirsch
-- 
--      Wed Mar 23 15:43:51 2016
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity UARTS is 
   port (
      CLK : IN std_logic ;
      RST : IN std_logic ;
      Din : IN std_logic_vector (7 DOWNTO 0) ;
      LD : IN std_logic ;
      Rx : IN std_logic ;
      Baud : IN std_logic ;
      Dout : OUT std_logic_vector (7 DOWNTO 0) ;
      Tx : OUT std_logic ;
      TxBusy : OUT std_logic ;
      RxErr : OUT std_logic ;
      RxRDY : OUT std_logic) ;
end UARTS ;

architecture RTL_unfold_1358 of UARTS is 
   signal RxErr_EXMPLR23, RxRDY_EXMPLR24, RxDivisor_4: std_logic ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxFSM: std_logic_vector (5 DOWNTO 0) ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal nx4608z2, nx4608z5, inc_d_0, nx52268z1, inc_d_1, nx60244z8, 
      inc_d_2, nx60244z7, inc_d_3, nx60244z6, inc_d_4, nx60244z5, inc_d_5, 
      nx60244z4, inc_d_6, nx60244z3, inc_d_7, nx60244z2, inc_d_8, nx60244z1, 
      inc_d_9, nx17096z1, inc_d_10, inc_d_0_dup_94, nx18093z11, 
      inc_d_1_dup_96, nx18093z10, inc_d_2_dup_98, nx18093z9, inc_d_3_dup_100, 
      nx18093z8, inc_d_4_dup_102, nx18093z7, inc_d_5_dup_104, nx18093z6, 
      inc_d_6_dup_106, nx18093z5, inc_d_7_dup_108, nx18093z4, 
      inc_d_8_dup_110, nx18093z3, inc_d_9_dup_112, nx18093z2, 
      inc_d_10_dup_113, nx18093z1, inc_d_11, TxBusy_EXMPLR25, PWR, nx51271z1, 
      nx4608z3, nx35603z1, nx50920z2, nx13547z3, nx13547z1, nx14544z1, 
      nx12550z1, nx34394z1, nx43465z1, nx32400z1, nx13547z2, nx11553z1, 
      nx15376z1, nx4608z1, nx5605z1, nx13547z4, nx51271z3, nx4608z4, 
      nx48926z2, nx48926z1, nx49923z1, nx50920z1, nx51917z1, nx51917z2, 
      nx11364z2, nx11364z1, nx10367z1, nx9370z1, nx8373z1, nx8373z2, 
      nx51271z4, nx32400z2, nx51271z5, nx51271z6, nx51271z7, nx51271z8, 
      nx32400z4, nx32400z3, nx32400z5, nx32400z6, nx27627z2, nx27627z3, 
      nx27627z4, NOT_Tx_Reg_7, NOT_Din_7, NOT_Tx_Reg_6, NOT_Din_5, 
      NOT_Tx_Reg_5, NOT_Tx_Reg_4, NOT_Din_3, NOT_Tx_Reg_3, NOT_Tx_Reg_2, 
      nx27627z5, nx18332z1, nx27627z1, nx16538z2, NOT_Rx, NOT_Tx_Reg_8, 
      NOT_Tx_Reg_14n6ss1_8, nx51271z2, nx16538z1: std_logic ;

begin
   Dout(7) <= TxBusy_EXMPLR25 ;
   Dout(6) <= TxBusy_EXMPLR25 ;
   Dout(5) <= TxBusy_EXMPLR25 ;
   Dout(4) <= TxBusy_EXMPLR25 ;
   Dout(3) <= TxBusy_EXMPLR25 ;
   Dout(2) <= TxBusy_EXMPLR25 ;
   Dout(1) <= TxBusy_EXMPLR25 ;
   Dout(0) <= TxBusy_EXMPLR25 ;
   TxBusy <= TxBusy_EXMPLR25 ;
   RxErr <= RxErr_EXMPLR23 ;
   RxRDY <= RxRDY_EXMPLR24 ;
   TxBusy_EXMPLR25 <= '0';
   PWR <= '1';
   NOT_Din_7 <= NOT Din(7);
   NOT_Din_5 <= NOT Din(5);
   NOT_Din_3 <= NOT Din(3);
   Tx <= NOT nx18332z1;
   NOT_Rx <= NOT Rx;
   RxFSM(0) <= NOT nx51271z2;
   reg_q_9_dup_1 : cycloneii_lcell_ff port map ( regout=>TxDiv(9), datain=>
      inc_d_9_dup_112, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>RxDiv(9), datain=>inc_d_9, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx51271z1);
   reg_q_8_dup_2 : cycloneii_lcell_ff port map ( regout=>TxDiv(8), datain=>
      inc_d_8_dup_110, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>RxDiv(8), datain=>inc_d_8, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx51271z1);
   reg_q_7_dup_3 : cycloneii_lcell_ff port map ( regout=>TxDiv(7), datain=>
      inc_d_7_dup_108, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>RxDiv(7), datain=>inc_d_7, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx51271z1);
   reg_q_6_dup_4 : cycloneii_lcell_ff port map ( regout=>TxDiv(6), datain=>
      inc_d_6_dup_106, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>RxDiv(6), datain=>inc_d_6, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx51271z1);
   reg_q_5_dup_5 : cycloneii_lcell_ff port map ( regout=>TxDiv(5), datain=>
      inc_d_5_dup_104, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>RxDiv(5), datain=>inc_d_5, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx51271z1);
   reg_q_4_dup_6 : cycloneii_lcell_ff port map ( regout=>TxDiv(4), datain=>
      inc_d_4_dup_102, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>RxDiv(4), datain=>inc_d_4, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx51271z1);
   reg_q_3_dup_7 : cycloneii_lcell_ff port map ( regout=>TxDiv(3), datain=>
      inc_d_3_dup_100, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>RxDiv(3), datain=>inc_d_3, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx51271z1);
   reg_q_2_dup_8 : cycloneii_lcell_ff port map ( regout=>TxDiv(2), datain=>
      inc_d_2_dup_98, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>RxDiv(2), datain=>inc_d_2, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx51271z1);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>TxDiv(11), datain=>
      inc_d_11, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_10_dup_0 : cycloneii_lcell_ff port map ( regout=>TxDiv(10), datain
      =>inc_d_10_dup_113, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>RxDiv(10), datain=>
      inc_d_10, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx51271z1);
   reg_q_1_dup_9 : cycloneii_lcell_ff port map ( regout=>TxDiv(1), datain=>
      inc_d_1_dup_96, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>RxDiv(1), datain=>inc_d_1, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx51271z1);
   reg_q_0_dup_10 : cycloneii_lcell_ff port map ( regout=>TxDiv(0), datain=>
      inc_d_0_dup_94, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>RxDiv(0), datain=>inc_d_0, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx51271z1);
   reg_Tx_Reg_8 : cycloneii_lcell_ff port map ( regout=>NOT_Tx_Reg_8, datain
      =>NOT_Tx_Reg_14n6ss1_8, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_7 : cycloneii_lcell_ff port map ( regout=>NOT_Tx_Reg_7, datain
      =>NOT_Din_7, sdata=>NOT_Tx_Reg_8, clk=>CLK, ena=>nx35603z1, aclr=>RST, 
      sload=>TxFSM(1));
   reg_Tx_Reg_6 : cycloneii_lcell_ff port map ( regout=>NOT_Tx_Reg_6, datain
      =>NOT_Din_5, sdata=>NOT_Tx_Reg_7, clk=>CLK, ena=>nx35603z1, aclr=>RST, 
      sload=>TxFSM(1));
   reg_Tx_Reg_5 : cycloneii_lcell_ff port map ( regout=>NOT_Tx_Reg_5, datain
      =>NOT_Din_5, sdata=>NOT_Tx_Reg_6, clk=>CLK, ena=>nx35603z1, aclr=>RST, 
      sload=>TxFSM(1));
   reg_Tx_Reg_4 : cycloneii_lcell_ff port map ( regout=>NOT_Tx_Reg_4, datain
      =>NOT_Din_3, sdata=>NOT_Tx_Reg_5, clk=>CLK, ena=>nx35603z1, aclr=>RST, 
      sload=>TxFSM(1));
   reg_Tx_Reg_3 : cycloneii_lcell_ff port map ( regout=>NOT_Tx_Reg_3, datain
      =>NOT_Din_3, sdata=>NOT_Tx_Reg_4, clk=>CLK, ena=>nx35603z1, aclr=>RST, 
      sload=>TxFSM(1));
   reg_Tx_Reg_2 : cycloneii_lcell_ff port map ( regout=>NOT_Tx_Reg_2, datain
      =>NOT_Din_3, sdata=>NOT_Tx_Reg_3, clk=>CLK, ena=>nx35603z1, aclr=>RST, 
      sload=>TxFSM(1));
   reg_Tx_Reg_1 : cycloneii_lcell_ff port map ( regout=>nx27627z5, datain=>
      NOT_Din_3, sdata=>NOT_Tx_Reg_2, clk=>CLK, ena=>nx35603z1, aclr=>RST, 
      sload=>TxFSM(1));
   reg_Tx_Reg_0 : cycloneii_lcell_ff port map ( regout=>nx18332z1, datain=>
      nx27627z1, clk=>CLK, aclr=>RST);
   reg_TxFSM_1 : cycloneii_lcell_ff port map ( regout=>TxFSM(1), datain=>
      nx5605z1, clk=>CLK, aclr=>RST);
   reg_TxFSM_0 : cycloneii_lcell_ff port map ( regout=>TxFSM(0), datain=>
      nx4608z1, clk=>CLK, aclr=>RST);
   reg_TopTx : cycloneii_lcell_ff port map ( regout=>TopTx, datain=>
      nx32400z1, clk=>CLK, aclr=>RST);
   reg_TopRx : cycloneii_lcell_ff port map ( regout=>TopRx, datain=>
      nx34394z1, clk=>CLK, aclr=>RST);
   reg_Rx_r : cycloneii_lcell_ff port map ( regout=>nx16538z2, datain=>
      NOT_Rx, clk=>CLK, aclr=>RST);
   reg_RxRDYi : cycloneii_lcell_ff port map ( regout=>RxRDY_EXMPLR24, datain
      =>nx43465z1, clk=>CLK, aclr=>RST);
   reg_RxFSM_5 : cycloneii_lcell_ff port map ( regout=>RxFSM(5), datain=>
      nx11553z1, clk=>CLK, ena=>nx13547z3, aclr=>RST);
   reg_RxFSM_4 : cycloneii_lcell_ff port map ( regout=>RxFSM(4), datain=>
      nx12550z1, clk=>CLK, ena=>nx13547z3, aclr=>RST);
   reg_RxFSM_3 : cycloneii_lcell_ff port map ( regout=>RxFSM(3), datain=>
      nx13547z1, clk=>CLK, ena=>nx13547z3, aclr=>RST);
   reg_RxFSM_2 : cycloneii_lcell_ff port map ( regout=>RxFSM(2), datain=>
      nx14544z1, clk=>CLK, ena=>nx13547z3, aclr=>RST);
   reg_RxFSM_1 : cycloneii_lcell_ff port map ( regout=>RxFSM(1), datain=>
      RxFSM(0), clk=>CLK, ena=>nx13547z3, aclr=>RST);
   reg_RxFSM_0 : cycloneii_lcell_ff port map ( regout=>nx51271z2, datain=>
      nx16538z1, clk=>CLK, ena=>nx13547z3, aclr=>RST);
   reg_RxErr : cycloneii_lcell_ff port map ( regout=>RxErr_EXMPLR23, datain
      =>nx15376z1, clk=>CLK, aclr=>RST);
   reg_RxDivisor_4 : cycloneii_lcell_ff port map ( regout=>RxDivisor_4, 
      datain=>PWR, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(3), datain=>nx51917z1, clk=>CLK, ena=>nx48926z2, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(2), datain=>nx50920z1, clk=>CLK, ena=>nx48926z2, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(1), datain=>nx49923z1, clk=>CLK, ena=>nx48926z2, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(0), datain=>nx48926z1, clk=>CLK, ena=>nx48926z2, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(3), datain=>nx8373z1, clk=>CLK, ena=>nx11364z2, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(2), datain=>nx9370z1, clk=>CLK, ena=>nx11364z2, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(1), datain=>nx10367z1, clk=>CLK, ena=>nx11364z2, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(0), datain=>nx11364z1, clk=>CLK, ena=>nx11364z2, aclr=>RST);
   ix18093z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_11, dataa=>TxDiv(11), datad=>PWR, cin=>
      nx18093z1);
   ix18093z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9_dup_112, cout=>nx18093z2, dataa=>TxDiv(9), 
      datad=>PWR, cin=>nx18093z3);
   ix18093z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8_dup_110, cout=>nx18093z3, dataa=>TxDiv(8), 
      datad=>PWR, cin=>nx18093z4);
   ix18093z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_108, cout=>nx18093z4, dataa=>TxDiv(7), 
      datad=>PWR, cin=>nx18093z5);
   ix60244z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2, cout=>nx60244z7, dataa=>RxDiv(2), datad
      =>PWR, cin=>nx60244z8);
   ix18093z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_106, cout=>nx18093z5, dataa=>TxDiv(6), 
      datad=>PWR, cin=>nx18093z6);
   ix18093z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_104, cout=>nx18093z6, dataa=>TxDiv(5), 
      datad=>PWR, cin=>nx18093z7);
   ix18093z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_102, cout=>nx18093z7, dataa=>TxDiv(4), 
      datad=>PWR, cin=>nx18093z8);
   ix18093z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_100, cout=>nx18093z8, dataa=>TxDiv(3), 
      datad=>PWR, cin=>nx18093z9);
   ix18093z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_98, cout=>nx18093z9, dataa=>TxDiv(2), 
      datad=>PWR, cin=>nx18093z10);
   ix18093z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_96, cout=>nx18093z10, dataa=>TxDiv(1), 
      datad=>PWR, cin=>nx18093z11);
   ix18093z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx18093z11, dataa=>TxDiv(0), datad=>PWR);
   ix17415z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ff") 
       port map ( combout=>inc_d_0_dup_94, datad=>TxDiv(0));
   ix17096z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10, dataa=>RxDiv(10), datad=>PWR, cin=>
      nx17096z1);
   ix60244z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9, cout=>nx17096z1, dataa=>RxDiv(9), datad
      =>PWR, cin=>nx60244z1);
   ix60244z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8, cout=>nx60244z1, dataa=>RxDiv(8), datad
      =>PWR, cin=>nx60244z2);
   ix60244z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6, cout=>nx60244z3, dataa=>RxDiv(6), datad
      =>PWR, cin=>nx60244z4);
   ix60244z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5, cout=>nx60244z4, dataa=>RxDiv(5), datad
      =>PWR, cin=>nx60244z5);
   ix18093z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10_dup_113, cout=>nx18093z1, dataa=>
      TxDiv(10), datad=>PWR, cin=>nx18093z2);
   ix52268z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1, cout=>nx60244z8, dataa=>RxDiv(1), datad
      =>PWR, cin=>nx52268z1);
   ix60244z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7, cout=>nx60244z2, dataa=>RxDiv(7), datad
      =>PWR, cin=>nx60244z3);
   ix52268z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx52268z1, dataa=>RxDiv(0), datad=>PWR);
   ix60244z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4, cout=>nx60244z5, dataa=>RxDiv(4), datad
      =>PWR, cin=>nx60244z6);
   ix60244z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3, cout=>nx60244z6, dataa=>RxDiv(3), datad
      =>PWR, cin=>nx60244z7);
   ix51271z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ff") 
       port map ( combout=>inc_d_0, datad=>RxDiv(0));
   ix4608z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5fc0") 
       port map ( combout=>nx4608z2, dataa=>TopTx, datab=>nx4608z3, datac=>
      TxFSM(1), datad=>nx4608z5);
   ix4608z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d3") 
       port map ( combout=>nx4608z5, dataa=>TopTx, datab=>TxFSM(1), datac=>
      TxFSM(0), datad=>LD);
   ix27627z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"004f") 
       port map ( combout=>nx27627z4, dataa=>nx27627z5, datab=>TopTx, datac
      =>TxFSM(1), datad=>TxFSM(0));
   ix27627z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"c4c4") 
       port map ( combout=>nx27627z3, dataa=>TopTx, datab=>TxFSM(1), datac=>
      TxFSM(0));
   ix27627z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0305") 
       port map ( combout=>nx27627z2, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix32400z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"dede") 
       port map ( combout=>nx32400z6, dataa=>RxDivisor_4, datab=>TxDiv(1), 
      datac=>TxDiv(0));
   ix32400z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"f6f6") 
       port map ( combout=>nx32400z5, dataa=>RxDivisor_4, datab=>TxDiv(4), 
      datac=>TxDiv(3));
   ix32400z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff7e") 
       port map ( combout=>nx32400z3, dataa=>RxDivisor_4, datab=>TxDiv(7), 
      datac=>TxDiv(5), datad=>nx32400z4);
   ix32400z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"dede") 
       port map ( combout=>nx32400z4, dataa=>RxDivisor_4, datab=>TxDiv(9), 
      datac=>TxDiv(8));
   ix51271z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx51271z8, dataa=>RxDiv(2), datab=>RxDiv(0));
   ix51271z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"7e7e") 
       port map ( combout=>nx51271z7, dataa=>RxDivisor_4, datab=>RxDiv(4), 
      datac=>RxDiv(3));
   ix51271z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"7e7e") 
       port map ( combout=>nx51271z6, dataa=>RxDivisor_4, datab=>RxDiv(7), 
      datac=>RxDiv(6));
   ix51271z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx51271z5, dataa=>RxDiv(10), datab=>RxDiv(8));
   ix32400z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx32400z2, dataa=>TxDiv(11), datab=>TxDiv(10), 
      datac=>TxDiv(6), datad=>TxDiv(2));
   ix51271z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx51271z4, dataa=>nx51271z5, datab=>nx51271z6, 
      datac=>nx51271z7, datad=>nx51271z8);
   ix8373z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx8373z2, dataa=>RxBitCnt(1), datab=>RxBitCnt(0)
   );
   ix8373z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"60a0") 
       port map ( combout=>nx8373z1, dataa=>RxBitCnt(3), datab=>RxBitCnt(2), 
      datac=>nx51271z2, datad=>nx8373z2);
   ix9370z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6a00") 
       port map ( combout=>nx9370z1, dataa=>RxBitCnt(2), datab=>RxBitCnt(1), 
      datac=>RxBitCnt(0), datad=>nx51271z2);
   ix10367z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6060") 
       port map ( combout=>nx10367z1, dataa=>RxBitCnt(1), datab=>RxBitCnt(0), 
      datac=>nx51271z2);
   ix11364z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx11364z1, dataa=>RxBitCnt(0), datab=>nx51271z2);
   ix11364z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8b8b") 
       port map ( combout=>nx11364z2, dataa=>TopRx, datab=>RxFSM(3), datac=>
      nx51271z2);
   ix51917z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx51917z2, dataa=>TxBitCnt(1), datab=>TxBitCnt(0)
   );
   ix51917z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"faf9") 
       port map ( combout=>nx51917z1, dataa=>TxBitCnt(3), datab=>TxBitCnt(2), 
      datac=>nx50920z2, datad=>nx51917z2);
   ix50920z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"00a9") 
       port map ( combout=>nx50920z1, dataa=>TxBitCnt(2), datab=>TxBitCnt(1), 
      datac=>TxBitCnt(0), datad=>nx50920z2);
   ix49923z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c341") 
       port map ( combout=>nx49923z1, dataa=>TopTx, datab=>TxBitCnt(1), 
      datac=>TxBitCnt(0), datad=>TxFSM(1));
   ix48926z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"3b3b") 
       port map ( combout=>nx48926z1, dataa=>TopTx, datab=>TxBitCnt(0), 
      datac=>TxFSM(1));
   ix48926z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2828") 
       port map ( combout=>nx48926z2, dataa=>TopTx, datab=>TxFSM(1), datac=>
      TxFSM(0));
   ix4608z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx4608z4, dataa=>TxBitCnt(3), datab=>TxBitCnt(2)
   );
   ix51271z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx51271z3, dataa=>RxDiv(9), datab=>RxDiv(5));
   ix13547z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5350") 
       port map ( combout=>nx13547z4, dataa=>Rx, datab=>TopRx, datac=>
      RxFSM(5), datad=>nx51271z2);
   ix5605z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a6a6") 
       port map ( combout=>nx5605z1, dataa=>TxFSM(1), datab=>TxFSM(0), datac
      =>nx4608z2);
   ix4608z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx4608z1, dataa=>TxFSM(0), datab=>nx4608z2);
   ix27627z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"88ab") 
       port map ( combout=>nx27627z1, dataa=>nx18332z1, datab=>nx27627z2, 
      datac=>nx27627z3, datad=>nx27627z4);
   ix15376z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2f2") 
       port map ( combout=>nx15376z1, dataa=>RxErr_EXMPLR23, datab=>
      RxRDY_EXMPLR24, datac=>RxFSM(5));
   ix11553z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx11553z1, dataa=>nx16538z2, datab=>RxFSM(4), 
      datac=>RxFSM(1));
   ix13547z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx13547z2, dataa=>RxBitCnt(3), datab=>RxBitCnt(2), 
      datac=>RxBitCnt(1), datad=>RxBitCnt(0));
   ix32400z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx32400z1, dataa=>nx32400z2, datab=>nx32400z3, 
      datac=>nx32400z5, datad=>nx32400z6);
   ix43465z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx43465z1, dataa=>TopRx, datab=>nx16538z2, datac
      =>RxFSM(4));
   ix34394z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0040") 
       port map ( combout=>nx34394z1, dataa=>RxDiv(1), datab=>nx51271z2, 
      datac=>nx51271z3, datad=>nx51271z4);
   ix12550z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx12550z1, dataa=>RxFSM(2), datab=>nx13547z2);
   ix16538z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2323") 
       port map ( combout=>nx16538z1, dataa=>nx16538z2, datab=>RxFSM(5), 
      datac=>RxFSM(4));
   ix14544z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ecec") 
       port map ( combout=>nx14544z1, dataa=>nx16538z2, datab=>RxFSM(3), 
      datac=>RxFSM(1));
   ix13547z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx13547z1, dataa=>RxFSM(2), datab=>nx13547z2);
   ix13547z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e0e") 
       port map ( combout=>nx13547z3, dataa=>nx16538z2, datab=>nx51271z2, 
      datac=>nx13547z4);
   ix50920z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx50920z2, dataa=>TopTx, datab=>TxFSM(1));
   ix35603z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ca") 
       port map ( combout=>nx35603z1, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix4608z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"dfff") 
       port map ( combout=>nx4608z3, dataa=>TopTx, datab=>TxBitCnt(1), datac
      =>TxBitCnt(0), datad=>nx4608z4);
   ix35603z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_8, dataa=>Din(7), datab=>
      TxFSM(1));
   ix51271z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3373") 
       port map ( combout=>nx51271z1, dataa=>RxDiv(1), datab=>nx51271z2, 
      datac=>nx51271z3, datad=>nx51271z4);
end RTL_unfold_1358 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity uw_uart is 
   port (
      clk : IN std_logic ;
      rst : IN std_logic ;
      kirschout : IN std_logic ;
      kirschdir : IN std_logic_vector (2 DOWNTO 0) ;
      o_valid : IN std_logic ;
      i_mode : IN std_logic_vector (1 DOWNTO 0) ;
      datain : OUT std_logic_vector (7 DOWNTO 0) ;
      o_pixavail : OUT std_logic ;
      rxflex : IN std_logic ;
      txflex : OUT std_logic) ;
end uw_uart ;

architecture main_unfold_1876 of uw_uart is 
   component UARTS
      port (
         CLK : IN std_logic ;
         RST : IN std_logic ;
         Din : IN std_logic_vector (7 DOWNTO 0) ;
         LD : IN std_logic ;
         Rx : IN std_logic ;
         Baud : IN std_logic ;
         Dout : OUT std_logic_vector (7 DOWNTO 0) ;
         Tx : OUT std_logic ;
         TxBusy : OUT std_logic ;
         RxErr : OUT std_logic ;
         RxRDY : OUT std_logic) ;
   end component ;
   signal o_pixavail_dup_0, rxerr, rxrdy, sdout_6, sdout_4, sdout_0, state, 
      dsend, mdata_7, mdata_0, ack: std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal ld_sdout, inc_d_0, nx22081z15, inc_d_1, nx22081z14, inc_d_2, 
      nx22081z13, inc_d_3, nx22081z12, inc_d_4, nx22081z11, inc_d_5, 
      nx22081z10, inc_d_6, nx22081z9, inc_d_7, nx22081z8, inc_d_8, nx22081z7, 
      inc_d_9, nx22081z6, inc_d_10, nx22081z5, inc_d_11, nx22081z4, inc_d_12, 
      nx22081z3, inc_d_13, nx22081z2, inc_d_14, nx22081z1, inc_d_15, rawrx, 
      o_pixavail_EXMPLR33, PWR, nx46385z3, nx39480z2, nx21084z2, nx46385z1, 
      nx38650z1, nx21084z1, nx58116z1, nx39480z1, nx18433z1, nx33757z1, 
      nx39739z1, nx45847z1, nx41859z1, nx39865z1, nx39480z3, nx39480z4, 
      nx39480z5, nx39480z6, nx46385z2, nx33757z2, nx33757z3: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   datain(7) <= o_pixavail_EXMPLR33 ;
   datain(6) <= o_pixavail_EXMPLR33 ;
   datain(5) <= o_pixavail_EXMPLR33 ;
   datain(4) <= o_pixavail_EXMPLR33 ;
   datain(3) <= o_pixavail_EXMPLR33 ;
   datain(2) <= o_pixavail_EXMPLR33 ;
   datain(1) <= o_pixavail_EXMPLR33 ;
   datain(0) <= o_pixavail_EXMPLR33 ;
   o_pixavail <= o_pixavail_EXMPLR33 ;
   i_uarts : UARTS port map ( CLK=>clk, RST=>rst, Din(7)=>sdout_6, Din(6)=>
      o_pixavail_EXMPLR33, Din(5)=>sdout_4, Din(4)=>o_pixavail_EXMPLR33, 
      Din(3)=>sdout_0, Din(2)=>o_pixavail_EXMPLR33, Din(1)=>
      o_pixavail_EXMPLR33, Din(0)=>o_pixavail_EXMPLR33, LD=>ld_sdout, Rx=>
      rawrx, Baud=>PWR, Dout(7)=>DANGLING(0,0), Dout(6)=>DANGLING(0,1), 
      Dout(5)=>DANGLING(0,2), Dout(4)=>DANGLING(0,3), Dout(3)=>DANGLING(0,4), 
      Dout(2)=>DANGLING(0,5), Dout(1)=>DANGLING(0,6), Dout(0)=>DANGLING(0,7), 
      Tx=>txflex, TxBusy=>DANGLING(0,8), RxErr=>rxerr, RxRDY=>rxrdy);
   o_pixavail_EXMPLR33 <= '0';
   PWR <= '1';
   reg_state : cycloneii_lcell_ff port map ( regout=>state, datain=>
      nx38650z1, clk=>clk, aclr=>rst);
   reg_sdout_6 : cycloneii_lcell_ff port map ( regout=>sdout_6, datain=>
      nx39865z1, clk=>clk, aclr=>rst);
   reg_sdout_4 : cycloneii_lcell_ff port map ( regout=>sdout_4, datain=>
      nx41859z1, clk=>clk, aclr=>rst);
   reg_sdout_0 : cycloneii_lcell_ff port map ( regout=>sdout_0, datain=>
      nx45847z1, clk=>clk, aclr=>rst);
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>waitcount(9), datain=>
      inc_d_9, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>waitcount(8), datain=>
      inc_d_8, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>waitcount(7), datain=>
      inc_d_7, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>waitcount(6), datain=>
      inc_d_6, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>waitcount(5), datain=>
      inc_d_5, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>waitcount(4), datain=>
      inc_d_4, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>waitcount(3), datain=>
      inc_d_3, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>waitcount(2), datain=>
      inc_d_2, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_q_15 : cycloneii_lcell_ff port map ( regout=>waitcount(15), datain=>
      inc_d_15, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_q_14 : cycloneii_lcell_ff port map ( regout=>waitcount(14), datain=>
      inc_d_14, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_q_13 : cycloneii_lcell_ff port map ( regout=>waitcount(13), datain=>
      inc_d_13, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>waitcount(12), datain=>
      inc_d_12, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>waitcount(11), datain=>
      inc_d_11, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>waitcount(10), datain=>
      inc_d_10, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>waitcount(1), datain=>
      inc_d_1, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>waitcount(0), datain=>
      inc_d_0, clk=>clk, ena=>nx21084z1, sclr=>nx21084z2);
   reg_mdata_6 : cycloneii_lcell_ff port map ( regout=>mdata_7, datain=>
      nx39739z1, clk=>clk);
   reg_mdata_0 : cycloneii_lcell_ff port map ( regout=>mdata_0, datain=>
      nx33757z1, clk=>clk);
   reg_ld_sdout : cycloneii_lcell_ff port map ( regout=>ld_sdout, datain=>
      nx18433z1, clk=>clk, aclr=>rst);
   reg_dsend : cycloneii_lcell_ff port map ( regout=>dsend, datain=>
      nx46385z1, clk=>clk);
   reg_charavail : cycloneii_lcell_ff port map ( regout=>o_pixavail_dup_0, 
      datain=>nx58116z1, clk=>clk, aclr=>rst);
   reg_ack : cycloneii_lcell_ff port map ( regout=>ack, datain=>nx39480z1, 
      clk=>clk);
   ix22081z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_15, dataa=>waitcount(15), datad=>PWR, cin=>
      nx22081z1);
   ix22081z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_14, cout=>nx22081z1, dataa=>waitcount(14), 
      datad=>PWR, cin=>nx22081z2);
   ix22081z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_13, cout=>nx22081z2, dataa=>waitcount(13), 
      datad=>PWR, cin=>nx22081z3);
   ix22081z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_12, cout=>nx22081z3, dataa=>waitcount(12), 
      datad=>PWR, cin=>nx22081z4);
   ix22081z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_11, cout=>nx22081z4, dataa=>waitcount(11), 
      datad=>PWR, cin=>nx22081z5);
   ix22081z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10, cout=>nx22081z5, dataa=>waitcount(10), 
      datad=>PWR, cin=>nx22081z6);
   ix22081z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8, cout=>nx22081z7, dataa=>waitcount(8), 
      datad=>PWR, cin=>nx22081z8);
   ix22081z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7, cout=>nx22081z8, dataa=>waitcount(7), 
      datad=>PWR, cin=>nx22081z9);
   ix22081z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6, cout=>nx22081z9, dataa=>waitcount(6), 
      datad=>PWR, cin=>nx22081z10);
   ix22081z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5, cout=>nx22081z10, dataa=>waitcount(5), 
      datad=>PWR, cin=>nx22081z11);
   ix22081z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4, cout=>nx22081z11, dataa=>waitcount(4), 
      datad=>PWR, cin=>nx22081z12);
   ix22081z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3, cout=>nx22081z12, dataa=>waitcount(3), 
      datad=>PWR, cin=>nx22081z13);
   ix22081z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2, cout=>nx22081z13, dataa=>waitcount(2), 
      datad=>PWR, cin=>nx22081z14);
   ix22081z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1, cout=>nx22081z14, dataa=>waitcount(1), 
      datad=>PWR, cin=>nx22081z15);
   ix22081z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx22081z15, dataa=>waitcount(0), datad=>PWR);
   ix22081z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9, cout=>nx22081z6, dataa=>waitcount(9), 
      datad=>PWR, cin=>nx22081z7);
   ix51271z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ff") 
       port map ( combout=>inc_d_0, datad=>waitcount(0));
   ix39480z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx39480z4, dataa=>waitcount(11), datab=>
      waitcount(10), datac=>waitcount(9), datad=>waitcount(8));
   ix39480z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx39480z3, dataa=>waitcount(15), datab=>
      waitcount(14), datac=>waitcount(13), datad=>waitcount(12));
   ix39865z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ba8a") 
       port map ( combout=>nx39865z1, dataa=>sdout_6, datab=>state, datac=>
      dsend, datad=>mdata_7);
   ix41859z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"baba") 
       port map ( combout=>nx41859z1, dataa=>sdout_4, datab=>state, datac=>
      dsend);
   ix45847z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ba8a") 
       port map ( combout=>nx45847z1, dataa=>sdout_0, datab=>state, datac=>
      dsend, datad=>mdata_0);
   ix39739z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"cce0") 
       port map ( combout=>nx39739z1, dataa=>rst, datab=>i_mode(1), datac=>
      mdata_7, datad=>nx46385z2);
   ix33757z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0e2") 
       port map ( combout=>nx33757z1, dataa=>mdata_0, datab=>nx46385z2, 
      datac=>nx33757z2, datad=>nx33757z3);
   ix18433z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5454") 
       port map ( combout=>nx18433z1, dataa=>state, datab=>dsend, datac=>
      ld_sdout);
   ix39480z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0054") 
       port map ( combout=>nx39480z1, dataa=>rst, datab=>o_pixavail_dup_0, 
      datac=>ack, datad=>nx39480z2);
   ix58116z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx58116z1, dataa=>o_pixavail_dup_0, datab=>rxrdy
   );
   ix21084z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx21084z1, dataa=>rst, datab=>o_pixavail_dup_0, 
      datac=>ack);
   ix38650z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx38650z1, dataa=>state, datab=>dsend);
   ix46385z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f1f1") 
       port map ( combout=>nx46385z1, dataa=>rst, datab=>i_mode(1), datac=>
      nx46385z2);
   ix21084z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx21084z2, dataa=>rst, datab=>nx39480z2);
   ix39480z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx39480z2, dataa=>nx39480z3, datab=>nx39480z4, 
      datac=>nx39480z5, datad=>nx39480z6);
   ix46385z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx46385z3, dataa=>o_pixavail_dup_0, datab=>ack);
   ix15671z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>rawrx, dataa=>rst, datab=>rxflex);
   ix33757z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx33757z3, dataa=>rst, datab=>i_mode(1));
   ix33757z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"a8a8") 
       port map ( combout=>nx33757z2, dataa=>i_mode(1), datab=>
      o_pixavail_dup_0, datac=>ack);
   ix46385z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5404") 
       port map ( combout=>nx46385z2, dataa=>rst, datab=>rxerr, datac=>
      nx46385z3, datad=>nx39480z2);
   ix39480z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx39480z6, dataa=>waitcount(3), datab=>
      waitcount(2), datac=>waitcount(1), datad=>waitcount(0));
   ix39480z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0040") 
       port map ( combout=>nx39480z5, dataa=>waitcount(7), datab=>
      waitcount(6), datac=>waitcount(5), datad=>waitcount(4));
end main_unfold_1876 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity kirsch is 
   port (
      i_clock : IN std_logic ;
      i_reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_edge : OUT std_logic ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_key : IN std_logic_vector (3 DOWNTO 1) ;
      debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_num_0 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (3 DOWNTO 0)) ;
end kirsch ;

architecture main_unfold_1777 of kirsch is 
   signal debug_num_5_1_EXMPLR38, debug_num_5_0_EXMPLR39: std_logic ;

begin
   o_valid <= debug_num_5_0_EXMPLR39 ;
   o_edge <= debug_num_5_1_EXMPLR38 ;
   o_dir(2) <= debug_num_5_0_EXMPLR39 ;
   o_dir(1) <= debug_num_5_0_EXMPLR39 ;
   o_dir(0) <= debug_num_5_0_EXMPLR39 ;
   o_mode(0) <= debug_num_5_1_EXMPLR38 ;
   o_row(7) <= debug_num_5_0_EXMPLR39 ;
   o_row(6) <= debug_num_5_0_EXMPLR39 ;
   o_row(5) <= debug_num_5_0_EXMPLR39 ;
   o_row(4) <= debug_num_5_0_EXMPLR39 ;
   o_row(3) <= debug_num_5_0_EXMPLR39 ;
   o_row(2) <= debug_num_5_0_EXMPLR39 ;
   o_row(1) <= debug_num_5_0_EXMPLR39 ;
   o_row(0) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(17) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(16) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(15) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(14) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(13) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(12) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(11) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(10) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(9) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(8) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(7) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(6) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(5) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(4) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(3) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(2) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(1) <= debug_num_5_0_EXMPLR39 ;
   debug_led_red(0) <= debug_num_5_0_EXMPLR39 ;
   debug_led_grn(5) <= debug_num_5_0_EXMPLR39 ;
   debug_led_grn(4) <= debug_num_5_0_EXMPLR39 ;
   debug_led_grn(3) <= debug_num_5_0_EXMPLR39 ;
   debug_led_grn(2) <= debug_num_5_0_EXMPLR39 ;
   debug_led_grn(1) <= debug_num_5_0_EXMPLR39 ;
   debug_led_grn(0) <= debug_num_5_0_EXMPLR39 ;
   debug_num_0(3) <= debug_num_5_0_EXMPLR39 ;
   debug_num_0(2) <= debug_num_5_1_EXMPLR38 ;
   debug_num_0(1) <= debug_num_5_1_EXMPLR38 ;
   debug_num_0(0) <= debug_num_5_1_EXMPLR38 ;
   debug_num_1(3) <= debug_num_5_0_EXMPLR39 ;
   debug_num_1(2) <= debug_num_5_0_EXMPLR39 ;
   debug_num_1(1) <= debug_num_5_1_EXMPLR38 ;
   debug_num_1(0) <= debug_num_5_0_EXMPLR39 ;
   debug_num_2(3) <= debug_num_5_0_EXMPLR39 ;
   debug_num_2(2) <= debug_num_5_0_EXMPLR39 ;
   debug_num_2(1) <= debug_num_5_1_EXMPLR38 ;
   debug_num_2(0) <= debug_num_5_1_EXMPLR38 ;
   debug_num_3(3) <= debug_num_5_1_EXMPLR38 ;
   debug_num_3(2) <= debug_num_5_1_EXMPLR38 ;
   debug_num_3(1) <= debug_num_5_1_EXMPLR38 ;
   debug_num_3(0) <= debug_num_5_0_EXMPLR39 ;
   debug_num_4(3) <= debug_num_5_1_EXMPLR38 ;
   debug_num_4(2) <= debug_num_5_1_EXMPLR38 ;
   debug_num_4(1) <= debug_num_5_0_EXMPLR39 ;
   debug_num_4(0) <= debug_num_5_0_EXMPLR39 ;
   debug_num_5(3) <= debug_num_5_1_EXMPLR38 ;
   debug_num_5(2) <= debug_num_5_1_EXMPLR38 ;
   debug_num_5(1) <= debug_num_5_1_EXMPLR38 ;
   debug_num_5(0) <= debug_num_5_0_EXMPLR39 ;
   o_mode(1) <= NOT i_reset;
   debug_num_5_1_EXMPLR38 <= '1';
   debug_num_5_0_EXMPLR39 <= '0';
end main_unfold_1777 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity top_kirsch is 
   port (
      nrst : IN std_logic ;
      clk : IN std_logic ;
      rxflex : IN std_logic ;
      txflex : OUT std_logic ;
      o_sevenseg : OUT std_logic_vector (15 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_nrst : OUT std_logic ;
      debug_key : IN std_logic_vector (3 DOWNTO 1) ;
      debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (16 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_sevenseg_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_3 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_4 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_5 : OUT std_logic_vector (7 DOWNTO 0)) ;
end top_kirsch ;

architecture main of top_kirsch is 
   component uw_uart
      port (
         clk : IN std_logic ;
         rst : IN std_logic ;
         kirschout : IN std_logic ;
         kirschdir : IN std_logic_vector (2 DOWNTO 0) ;
         o_valid : IN std_logic ;
         i_mode : IN std_logic_vector (1 DOWNTO 0) ;
         datain : OUT std_logic_vector (7 DOWNTO 0) ;
         o_pixavail : OUT std_logic ;
         rxflex : IN std_logic ;
         txflex : OUT std_logic) ;
   end component ;
   component kirsch
      port (
         i_clock : IN std_logic ;
         i_reset : IN std_logic ;
         i_valid : IN std_logic ;
         i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
         o_valid : OUT std_logic ;
         o_edge : OUT std_logic ;
         o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
         o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
         o_row : OUT std_logic_vector (7 DOWNTO 0) ;
         debug_key : IN std_logic_vector (3 DOWNTO 1) ;
         debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
         debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
         debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
         debug_num_0 : OUT std_logic_vector (3 DOWNTO 0) ;
         debug_num_1 : OUT std_logic_vector (3 DOWNTO 0) ;
         debug_num_2 : OUT std_logic_vector (3 DOWNTO 0) ;
         debug_num_3 : OUT std_logic_vector (3 DOWNTO 0) ;
         debug_num_4 : OUT std_logic_vector (3 DOWNTO 0) ;
         debug_num_5 : OUT std_logic_vector (3 DOWNTO 0)) ;
   end component ;
   signal o_mode_1_EXMPLR46, o_nrst_EXMPLR47, debug_sevenseg_5_4_EXMPLR48, 
      debug_sevenseg_5_0_EXMPLR49: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_sevenseg(15) <= debug_sevenseg_5_4_EXMPLR48 ;
   o_sevenseg(14) <= debug_sevenseg_5_0_EXMPLR49 ;
   o_sevenseg(13) <= debug_sevenseg_5_0_EXMPLR49 ;
   o_sevenseg(12) <= debug_sevenseg_5_0_EXMPLR49 ;
   o_sevenseg(11) <= debug_sevenseg_5_0_EXMPLR49 ;
   o_sevenseg(10) <= debug_sevenseg_5_0_EXMPLR49 ;
   o_sevenseg(9) <= debug_sevenseg_5_0_EXMPLR49 ;
   o_sevenseg(8) <= debug_sevenseg_5_4_EXMPLR48 ;
   o_sevenseg(7) <= debug_sevenseg_5_4_EXMPLR48 ;
   o_sevenseg(6) <= debug_sevenseg_5_0_EXMPLR49 ;
   o_sevenseg(5) <= debug_sevenseg_5_0_EXMPLR49 ;
   o_sevenseg(4) <= debug_sevenseg_5_0_EXMPLR49 ;
   o_sevenseg(3) <= debug_sevenseg_5_0_EXMPLR49 ;
   o_sevenseg(2) <= debug_sevenseg_5_0_EXMPLR49 ;
   o_sevenseg(1) <= debug_sevenseg_5_0_EXMPLR49 ;
   o_sevenseg(0) <= debug_sevenseg_5_4_EXMPLR48 ;
   o_mode(1) <= o_mode_1_EXMPLR46 ;
   o_mode(0) <= debug_sevenseg_5_4_EXMPLR48 ;
   o_nrst <= o_nrst_EXMPLR47 ;
   debug_led_red(16) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(15) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(14) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(13) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(12) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(11) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(10) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(9) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(8) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(7) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(6) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(5) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(4) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(3) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(2) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(1) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_red(0) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_grn(5) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_grn(4) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_grn(3) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_grn(2) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_grn(1) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_led_grn(0) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_0(7) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_0(6) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_0(5) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_0(4) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_0(3) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_0(2) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_0(1) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_0(0) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_1(7) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_1(6) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_1(5) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_1(4) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_1(3) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_1(2) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_1(1) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_1(0) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_2(7) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_2(6) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_2(5) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_2(4) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_2(3) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_2(2) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_2(1) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_2(0) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_3(7) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_3(6) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_3(5) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_3(4) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_3(3) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_3(2) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_3(1) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_3(0) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_4(7) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_4(6) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_4(5) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_4(4) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_4(3) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_4(2) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_4(1) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_4(0) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_5(7) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_5(6) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_5(5) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_5(4) <= debug_sevenseg_5_4_EXMPLR48 ;
   debug_sevenseg_5(3) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_5(2) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_5(1) <= debug_sevenseg_5_0_EXMPLR49 ;
   debug_sevenseg_5(0) <= debug_sevenseg_5_0_EXMPLR49 ;
   u_uw_uart : uw_uart port map ( clk=>clk, rst=>o_nrst_EXMPLR47, kirschout
      =>debug_sevenseg_5_4_EXMPLR48, kirschdir(2)=>
      debug_sevenseg_5_0_EXMPLR49, kirschdir(1)=>debug_sevenseg_5_0_EXMPLR49, 
      kirschdir(0)=>debug_sevenseg_5_0_EXMPLR49, o_valid=>
      debug_sevenseg_5_0_EXMPLR49, i_mode(1)=>o_mode_1_EXMPLR46, i_mode(0)=>
      debug_sevenseg_5_4_EXMPLR48, datain(7)=>DANGLING(0,0), datain(6)=>
      DANGLING(0,1), datain(5)=>DANGLING(0,2), datain(4)=>DANGLING(0,3), 
      datain(3)=>DANGLING(0,4), datain(2)=>DANGLING(0,5), datain(1)=>
      DANGLING(0,6), datain(0)=>DANGLING(0,7), o_pixavail=>DANGLING(0,8), 
      rxflex=>rxflex, txflex=>txflex);
   u_kirsch : kirsch port map ( i_clock=>debug_sevenseg_5_0_EXMPLR49, 
      i_reset=>o_nrst_EXMPLR47, i_valid=>debug_sevenseg_5_0_EXMPLR49, 
      i_pixel(7)=>debug_sevenseg_5_0_EXMPLR49, i_pixel(6)=>
      debug_sevenseg_5_0_EXMPLR49, i_pixel(5)=>debug_sevenseg_5_0_EXMPLR49, 
      i_pixel(4)=>debug_sevenseg_5_0_EXMPLR49, i_pixel(3)=>
      debug_sevenseg_5_0_EXMPLR49, i_pixel(2)=>debug_sevenseg_5_0_EXMPLR49, 
      i_pixel(1)=>debug_sevenseg_5_0_EXMPLR49, i_pixel(0)=>
      debug_sevenseg_5_0_EXMPLR49, o_valid=>DANGLING(0,9), o_edge=>
      DANGLING(0,10), o_dir(2)=>DANGLING(0,11), o_dir(1)=>DANGLING(0,12), 
      o_dir(0)=>DANGLING(0,13), o_mode(1)=>o_mode_1_EXMPLR46, o_mode(0)=>
      DANGLING(0,14), o_row(7)=>DANGLING(0,15), o_row(6)=>DANGLING(0,16), 
      o_row(5)=>DANGLING(0,17), o_row(4)=>DANGLING(0,18), o_row(3)=>
      DANGLING(0,19), o_row(2)=>DANGLING(0,20), o_row(1)=>DANGLING(0,21), 
      o_row(0)=>DANGLING(0,22), debug_key(3)=>DANGLING(0,23), debug_key(2)=>
      DANGLING(0,24), debug_key(1)=>DANGLING(0,25), debug_switch(17)=>
      DANGLING(0,26), debug_switch(16)=>DANGLING(0,27), debug_switch(15)=>
      DANGLING(0,28), debug_switch(14)=>DANGLING(0,29), debug_switch(13)=>
      DANGLING(0,30), debug_switch(12)=>DANGLING(0,31), debug_switch(11)=>
      DANGLING(0,32), debug_switch(10)=>DANGLING(0,33), debug_switch(9)=>
      DANGLING(0,34), debug_switch(8)=>DANGLING(0,35), debug_switch(7)=>
      DANGLING(0,36), debug_switch(6)=>DANGLING(0,37), debug_switch(5)=>
      DANGLING(0,38), debug_switch(4)=>DANGLING(0,39), debug_switch(3)=>
      DANGLING(0,40), debug_switch(2)=>DANGLING(0,41), debug_switch(1)=>
      DANGLING(0,42), debug_switch(0)=>DANGLING(0,43), debug_led_red(17)=>
      DANGLING(0,44), debug_led_red(16)=>DANGLING(0,45), debug_led_red(15)=>
      DANGLING(0,46), debug_led_red(14)=>DANGLING(0,47), debug_led_red(13)=>
      DANGLING(0,48), debug_led_red(12)=>DANGLING(0,49), debug_led_red(11)=>
      DANGLING(0,50), debug_led_red(10)=>DANGLING(0,51), debug_led_red(9)=>
      DANGLING(0,52), debug_led_red(8)=>DANGLING(0,53), debug_led_red(7)=>
      DANGLING(0,54), debug_led_red(6)=>DANGLING(0,55), debug_led_red(5)=>
      DANGLING(0,56), debug_led_red(4)=>DANGLING(0,57), debug_led_red(3)=>
      DANGLING(0,58), debug_led_red(2)=>DANGLING(0,59), debug_led_red(1)=>
      DANGLING(0,60), debug_led_red(0)=>DANGLING(0,61), debug_led_grn(5)=>
      DANGLING(0,62), debug_led_grn(4)=>DANGLING(0,63), debug_led_grn(3)=>
      DANGLING(0,64), debug_led_grn(2)=>DANGLING(0,65), debug_led_grn(1)=>
      DANGLING(0,66), debug_led_grn(0)=>DANGLING(0,67), debug_num_0(3)=>
      DANGLING(0,68), debug_num_0(2)=>DANGLING(0,69), debug_num_0(1)=>
      DANGLING(0,70), debug_num_0(0)=>DANGLING(0,71), debug_num_1(3)=>
      DANGLING(0,72), debug_num_1(2)=>DANGLING(0,73), debug_num_1(1)=>
      DANGLING(0,74), debug_num_1(0)=>DANGLING(0,75), debug_num_2(3)=>
      DANGLING(0,76), debug_num_2(2)=>DANGLING(0,77), debug_num_2(1)=>
      DANGLING(0,78), debug_num_2(0)=>DANGLING(0,79), debug_num_3(3)=>
      DANGLING(0,80), debug_num_3(2)=>DANGLING(0,81), debug_num_3(1)=>
      DANGLING(0,82), debug_num_3(0)=>DANGLING(0,83), debug_num_4(3)=>
      DANGLING(0,84), debug_num_4(2)=>DANGLING(0,85), debug_num_4(1)=>
      DANGLING(0,86), debug_num_4(0)=>DANGLING(0,87), debug_num_5(3)=>
      DANGLING(0,88), debug_num_5(2)=>DANGLING(0,89), debug_num_5(1)=>
      DANGLING(0,90), debug_num_5(0)=>DANGLING(0,91));
   o_nrst_EXMPLR47 <= NOT nrst;
   debug_sevenseg_5_4_EXMPLR48 <= '1';
   debug_sevenseg_5_0_EXMPLR49 <= '0';
end main ;

