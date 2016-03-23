
-- 
-- Definition of  kirsch
-- 
--      Wed Mar 23 15:57:47 2016
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

--
-- Please compile Mgc_home/pkgs/psr/modgen/modgen_sim.vhd file into
-- "modgen_sim" library, during the simulation run for this netlist
--
library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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

architecture main of kirsch is 
   signal debug_num_5_1_EXMPLR11, debug_num_5_0_EXMPLR12: std_logic ;

begin
   o_edge <= debug_num_5_0_EXMPLR12 ;
   o_dir(2) <= debug_num_5_0_EXMPLR12 ;
   o_dir(1) <= debug_num_5_0_EXMPLR12 ;
   o_dir(0) <= debug_num_5_0_EXMPLR12 ;
   o_mode(0) <= debug_num_5_1_EXMPLR11 ;
   debug_led_red(17) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(16) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(15) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(14) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(13) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(12) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(11) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(10) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(9) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(8) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(7) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(6) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(5) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(4) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(3) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(2) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(1) <= debug_num_5_0_EXMPLR12 ;
   debug_led_red(0) <= debug_num_5_0_EXMPLR12 ;
   debug_led_grn(5) <= debug_num_5_0_EXMPLR12 ;
   debug_led_grn(4) <= debug_num_5_0_EXMPLR12 ;
   debug_led_grn(3) <= debug_num_5_0_EXMPLR12 ;
   debug_led_grn(2) <= debug_num_5_0_EXMPLR12 ;
   debug_led_grn(1) <= debug_num_5_0_EXMPLR12 ;
   debug_led_grn(0) <= debug_num_5_0_EXMPLR12 ;
   debug_num_0(3) <= debug_num_5_0_EXMPLR12 ;
   debug_num_0(2) <= debug_num_5_1_EXMPLR11 ;
   debug_num_0(1) <= debug_num_5_1_EXMPLR11 ;
   debug_num_0(0) <= debug_num_5_1_EXMPLR11 ;
   debug_num_1(3) <= debug_num_5_0_EXMPLR12 ;
   debug_num_1(2) <= debug_num_5_0_EXMPLR12 ;
   debug_num_1(1) <= debug_num_5_1_EXMPLR11 ;
   debug_num_1(0) <= debug_num_5_0_EXMPLR12 ;
   debug_num_2(3) <= debug_num_5_0_EXMPLR12 ;
   debug_num_2(2) <= debug_num_5_0_EXMPLR12 ;
   debug_num_2(1) <= debug_num_5_1_EXMPLR11 ;
   debug_num_2(0) <= debug_num_5_1_EXMPLR11 ;
   debug_num_3(3) <= debug_num_5_1_EXMPLR11 ;
   debug_num_3(2) <= debug_num_5_1_EXMPLR11 ;
   debug_num_3(1) <= debug_num_5_1_EXMPLR11 ;
   debug_num_3(0) <= debug_num_5_0_EXMPLR12 ;
   debug_num_4(3) <= debug_num_5_1_EXMPLR11 ;
   debug_num_4(2) <= debug_num_5_1_EXMPLR11 ;
   debug_num_4(1) <= debug_num_5_0_EXMPLR12 ;
   debug_num_4(0) <= debug_num_5_0_EXMPLR12 ;
   debug_num_5(3) <= debug_num_5_1_EXMPLR11 ;
   debug_num_5(2) <= debug_num_5_1_EXMPLR11 ;
   debug_num_5(1) <= debug_num_5_1_EXMPLR11 ;
   debug_num_5(0) <= debug_num_5_0_EXMPLR12 ;
   debug_num_5_1_EXMPLR11 <= '1' ;
   debug_num_5_0_EXMPLR12 <= '0' ;
   o_mode(1) <= NOT i_reset ;
   o_valid <= debug_num_5_0_EXMPLR12 when debug_num_5_0_EXMPLR12
    = '1' else 'Z' ;
   o_row(0) <= debug_num_5_0_EXMPLR12 when debug_num_5_0_EXMPLR12
    = '1' else 'Z' ;
   o_row(1) <= debug_num_5_0_EXMPLR12 when debug_num_5_0_EXMPLR12
    = '1' else 'Z' ;
   o_row(2) <= debug_num_5_0_EXMPLR12 when debug_num_5_0_EXMPLR12
    = '1' else 'Z' ;
   o_row(3) <= debug_num_5_0_EXMPLR12 when debug_num_5_0_EXMPLR12
    = '1' else 'Z' ;
   o_row(4) <= debug_num_5_0_EXMPLR12 when debug_num_5_0_EXMPLR12
    = '1' else 'Z' ;
   o_row(5) <= debug_num_5_0_EXMPLR12 when debug_num_5_0_EXMPLR12
    = '1' else 'Z' ;
   o_row(6) <= debug_num_5_0_EXMPLR12 when debug_num_5_0_EXMPLR12
    = '1' else 'Z' ;
   o_row(7) <= debug_num_5_0_EXMPLR12 when debug_num_5_0_EXMPLR12
    = '1' else 'Z' ;
end main ;

