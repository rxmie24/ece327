
-- 
-- Definition of  top_kirsch
-- 
--      Wed Mar 23 15:43:47 2016
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
library modgen_sim; 
use  modgen_sim.all; 

entity select_3_3 is 
   port (
      a : IN std_logic_vector (2 DOWNTO 0) ;
      b : IN std_logic_vector (2 DOWNTO 0) ;
      d : OUT std_logic) ;
end select_3_3 ;

architecture BEHAVIORAL of select_3_3 is 
   component sim_select
      generic (size : integer := 3) ;
      
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix11 : sim_select
      generic map (size => 3) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity mux_3u_3u is 
   port (
      a : IN std_logic_vector (2 DOWNTO 0) ;
      b : IN std_logic_vector (2 DOWNTO 0) ;
      d : OUT std_logic) ;
end mux_3u_3u ;

architecture BEHAVIORAL of mux_3u_3u is 
   component sim_mux
      generic (size : integer := 3;
         sizead : integer := 2) ;
      
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix8 : sim_mux
      generic map (size => 3,
         sizead => 2) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity mux_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      b : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end mux_4u_4u ;

architecture BEHAVIORAL of mux_4u_4u is 
   component sim_mux
      generic (size : integer := 4;
         sizead : integer := 2) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix9 : sim_mux
      generic map (size => 4,
         sizead => 2) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_4u_4u ;

architecture BEHAVIORAL of and_4u_4u is 
   component sim_and
      generic (size : integer := 4) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix9 : sim_and
      generic map (size => 4) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_11u_11u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_11u_11u_0_0 ;

architecture BEHAVIORAL of inc_11u_11u_0_0 is 
   component sim_inc
      generic (size : integer := 11) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix27 : sim_inc
      generic map (size => 11) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_12u_12u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_12u_12u_0_0 ;

architecture BEHAVIORAL of inc_12u_12u_0_0 is 
   component sim_inc
      generic (size : integer := 12) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix29 : sim_inc
      generic map (size => 12) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity dec_4u_4u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic_vector (3 DOWNTO 0) ;
      cout : OUT std_logic) ;
end dec_4u_4u_0_0 ;

architecture BEHAVIORAL of dec_4u_4u_0_0 is 
   component sim_dec
      generic (size : integer := 4) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_dec
      generic map (size => 4) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_4u_4u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic_vector (3 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_4u_4u_0_0 ;

architecture BEHAVIORAL of inc_4u_4u_0_0 is 
   component sim_inc
      generic (size : integer := 4) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_inc
      generic map (size => 4) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity eq_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end eq_8u_8u ;

architecture BEHAVIORAL of eq_8u_8u is 
   component sim_eq
      generic (size : integer := 8) ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix14 : sim_eq
      generic map (size => 8) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity eq_9u_9u is 
   port (
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic) ;
end eq_9u_9u ;

architecture BEHAVIORAL of eq_9u_9u is 
   component sim_eq
      generic (size : integer := 9) ;
      
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix15 : sim_eq
      generic map (size => 9) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_16u_16u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_16u_16u_0_0 ;

architecture BEHAVIORAL of inc_16u_16u_0_0 is 
   component sim_inc
      generic (size : integer := 16) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix37 : sim_inc
      generic map (size => 16) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_16u_16u is 
   port (
      a : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_16u_16u ;

architecture BEHAVIORAL of and_16u_16u is 
   component sim_and
      generic (size : integer := 16) ;
      
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix21 : sim_and
      generic map (size => 16) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_11_cx0_UARTS is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_0_11_cx0_UARTS ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_11_cx0_UARTS is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, sclear_and_0_dup_136, sclear_and_1_dup_137, 
      sclear_and_2_dup_138, sclear_and_3_dup_139, sclear_and_4_dup_140, 
      sclear_and_5_dup_141, sclear_and_6_dup_142, sclear_and_7_dup_143, 
      sclear_and_8_dup_144, sclear_and_9_dup_145, sclear_and_10_dup_146, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, inc_d_9, inc_d_10, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(10) <= nx47 ;
   q(9) <= nx46 ;
   q(8) <= nx45 ;
   q(7) <= nx44 ;
   q(6) <= nx43 ;
   q(5) <= nx42 ;
   q(4) <= nx41 ;
   q(3) <= nx40 ;
   q(2) <= nx39 ;
   q(1) <= nx38 ;
   q(0) <= nx37 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPC (sclear_and_10_dup_146,GND,aclear,clock,nx47) ;
   DFFPC (sclear_and_9_dup_145,GND,aclear,clock,nx46) ;
   DFFPC (sclear_and_8_dup_144,GND,aclear,clock,nx45) ;
   DFFPC (sclear_and_7_dup_143,GND,aclear,clock,nx44) ;
   DFFPC (sclear_and_6_dup_142,GND,aclear,clock,nx43) ;
   DFFPC (sclear_and_5_dup_141,GND,aclear,clock,nx42) ;
   DFFPC (sclear_and_4_dup_140,GND,aclear,clock,nx41) ;
   DFFPC (sclear_and_3_dup_139,GND,aclear,clock,nx40) ;
   DFFPC (sclear_and_2_dup_138,GND,aclear,clock,nx39) ;
   DFFPC (sclear_and_1_dup_137,GND,aclear,clock,nx38) ;
   DFFPC (sclear_and_0_dup_136,GND,aclear,clock,nx37) ;
   inc : inc_11u_11u_0_0 port map ( cin=>PWR, a(10)=>nx47, a(9)=>nx46, a(8)
      =>nx45, a(7)=>nx44, a(6)=>nx43, a(5)=>nx42, a(4)=>nx41, a(3)=>nx40, 
      a(2)=>nx39, a(1)=>nx38, a(0)=>nx37, d(10)=>inc_d_10, d(9)=>inc_d_9, 
      d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>
      inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, 
      cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_136 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_137 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_138 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_139 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_140 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_141 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_142 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_143 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_144 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_145 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_146 <= inc_d_10 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_12_cx1_UARTS is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (11 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (11 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_0_12_cx1_UARTS ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_12_cx1_UARTS is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx40, nx41, nx42, nx43, nx44, nx45, nx46, nx47, nx48, 
      nx49, nx50, nx51, sclear_and_0_dup_147, sclear_and_1_dup_148, 
      sclear_and_2_dup_149, sclear_and_3_dup_150, sclear_and_4_dup_151, 
      sclear_and_5_dup_152, sclear_and_6_dup_153, sclear_and_7_dup_154, 
      sclear_and_8_dup_155, sclear_and_9_dup_156, sclear_and_10_dup_157, 
      sclear_and_11_dup_158, inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, 
      inc_d_5, inc_d_6, inc_d_7, inc_d_8, inc_d_9, inc_d_10, inc_d_11, 
      NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(11) <= nx51 ;
   q(10) <= nx50 ;
   q(9) <= nx49 ;
   q(8) <= nx48 ;
   q(7) <= nx47 ;
   q(6) <= nx46 ;
   q(5) <= nx45 ;
   q(4) <= nx44 ;
   q(3) <= nx43 ;
   q(2) <= nx42 ;
   q(1) <= nx41 ;
   q(0) <= nx40 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPC (sclear_and_11_dup_158,GND,aclear,clock,nx51) ;
   DFFPC (sclear_and_10_dup_157,GND,aclear,clock,nx50) ;
   DFFPC (sclear_and_9_dup_156,GND,aclear,clock,nx49) ;
   DFFPC (sclear_and_8_dup_155,GND,aclear,clock,nx48) ;
   DFFPC (sclear_and_7_dup_154,GND,aclear,clock,nx47) ;
   DFFPC (sclear_and_6_dup_153,GND,aclear,clock,nx46) ;
   DFFPC (sclear_and_5_dup_152,GND,aclear,clock,nx45) ;
   DFFPC (sclear_and_4_dup_151,GND,aclear,clock,nx44) ;
   DFFPC (sclear_and_3_dup_150,GND,aclear,clock,nx43) ;
   DFFPC (sclear_and_2_dup_149,GND,aclear,clock,nx42) ;
   DFFPC (sclear_and_1_dup_148,GND,aclear,clock,nx41) ;
   DFFPC (sclear_and_0_dup_147,GND,aclear,clock,nx40) ;
   inc : inc_12u_12u_0_0 port map ( cin=>PWR, a(11)=>nx51, a(10)=>nx50, a(9)
      =>nx49, a(8)=>nx48, a(7)=>nx47, a(6)=>nx46, a(5)=>nx45, a(4)=>nx44, 
      a(3)=>nx43, a(2)=>nx42, a(1)=>nx41, a(0)=>nx40, d(11)=>inc_d_11, d(10)
      =>inc_d_10, d(9)=>inc_d_9, d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, 
      d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>
      inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_147 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_148 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_149 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_150 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_151 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_152 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_153 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_154 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_155 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_156 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_157 <= inc_d_10 AND NOT_sclear ;
   sclear_and_11_dup_158 <= inc_d_11 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx2_UARTS is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx2_UARTS ;

architecture INTERFACE of 
   counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx2_UARTS is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component dec_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx16, nx17, nx18, nx19, nx20, nx22, sload_mux_0_dup_53, 
      sload_mux_1_dup_54, sload_mux_2_dup_55, sload_mux_3_dup_56, dec_d_0, 
      dec_d_1, dec_d_2, dec_d_3: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(3) <= nx19 ;
   q(2) <= nx18 ;
   q(1) <= nx17 ;
   q(0) <= nx16 ;
   GND <= '0' ;
   nx20 <= cnt_en OR sload ;
   nx22 <= clk_en AND nx20 ;
   DFFPCE (sload_mux_3_dup_56,GND,aclear,nx22,clock,nx19) ;
   DFFPCE (sload_mux_2_dup_55,GND,aclear,nx22,clock,nx18) ;
   DFFPCE (sload_mux_1_dup_54,GND,aclear,nx22,clock,nx17) ;
   DFFPCE (sload_mux_0_dup_53,GND,aclear,nx22,clock,nx16) ;
   dec : dec_4u_4u_0_0 port map ( cin=>GND, a(3)=>nx19, a(2)=>nx18, a(1)=>
      nx17, a(0)=>nx16, d(3)=>dec_d_3, d(2)=>dec_d_2, d(1)=>dec_d_1, d(0)=>
      dec_d_0, cout=>DANGLING(0,0));
   sload_mux_0_dup_53 <= data(0) when sload = '1' else dec_d_0 ;
   sload_mux_1_dup_54 <= data(1) when sload = '1' else dec_d_1 ;
   sload_mux_2_dup_55 <= data(2) when sload = '1' else dec_d_2 ;
   sload_mux_3_dup_56 <= data(3) when sload = '1' else dec_d_3 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx3_UARTS is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx3_UARTS ;

architecture INTERFACE of 
   counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx3_UARTS is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx16, nx17, nx18, nx19, nx24, nx26, sclear_and_0_dup_59, 
      sclear_and_1_dup_60, sclear_and_2_dup_61, sclear_and_3_dup_62, inc_d_0, 
      inc_d_1, inc_d_2, inc_d_3, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(3) <= nx19 ;
   q(2) <= nx18 ;
   q(1) <= nx17 ;
   q(0) <= nx16 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx24 <= cnt_en OR sclear ;
   nx26 <= nx24 AND clk_en ;
   DFFPCE (sclear_and_3_dup_62,GND,aclear,nx26,clock,nx19) ;
   DFFPCE (sclear_and_2_dup_61,GND,aclear,nx26,clock,nx18) ;
   DFFPCE (sclear_and_1_dup_60,GND,aclear,nx26,clock,nx17) ;
   DFFPCE (sclear_and_0_dup_59,GND,aclear,nx26,clock,nx16) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx19, a(2)=>nx18, a(1)=>
      nx17, a(0)=>nx16, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>
      inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_59 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_60 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_61 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_62 <= inc_d_3 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_11_cx0_UARTS
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_12_cx1_UARTS
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (11 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (11 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx2_UARTS
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx3_UARTS
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component eq_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component eq_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   signal RxRDY_EXMPLR87: std_logic ;
   
   signal Tx_Reg: std_logic_vector (8 DOWNTO 1) ;
   
   signal GND, RxDivisor_4: std_logic ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal Rx_r: std_logic ;
   
   signal RxFSM: std_logic_vector (5 DOWNTO 0) ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal PWR, rtlc8n72: std_logic ;
   
   signal Tx_Reg_14n6ss1: std_logic_vector (8 DOWNTO 0) ;
   
   signal not_LD, not_rtlcs3, rtlc14n163, rtlc14n167, rtlc14n218, 
      not_TxFSM_1, not_rtlcn20, not_TopTx, rtlc14n223, rtlc14_X_0_n224, 
      rtlc14n234, not_rtlc14_X_0_n224, rtlc14n289, not_rtlcn22, 
      not_rtlc14n167, not_rtlcn24, not_Rx_r, not_Rx, not_TopRx, rtlc17n335, 
      rtlc17n432, not_rtlcn26, rtlcn20, rtlcn22, rtlcn24, rtlcn26, 
      not_TxFSM_0, rtlcn52, rtlcn58, rtlcn63, rtlcn68, rtlcn72, rtlcn78, 
      rtlcn92, not_rtlcn132, not_RxFSM_0, not_rtlcs5, rtlcn113, rtlcn114, 
      rtlcn115, rtlcn116, not_rtlc14n289, rtlcn132, rtlcs0, rtlcs1, rtlcs3, 
      rtlcs4, rtlcs5, not_RxBitCnt_2, not_RxBitCnt_1, not_RxBitCnt_0, 
      not_RxDiv_9, not_RxDiv_5, not_RxDiv_1, not_TxDiv_10, not_TxDiv_6, 
      not_TxDiv_2, not_TxBitCnt_3, not_TxBitCnt_2, not_TxBitCnt_1, 
      not_rtlc17n335, rtlcs6, rtlcs7, rtlc14_109_or_0_nx0: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   Dout(7) <= GND ;
   Dout(6) <= GND ;
   Dout(5) <= GND ;
   Dout(4) <= GND ;
   Dout(3) <= GND ;
   Dout(2) <= GND ;
   Dout(1) <= GND ;
   Dout(0) <= GND ;
   TxBusy <= GND ;
   RxRDY <= RxRDY_EXMPLR87 ;
   GND <= '0' ;
   PWR <= '1' ;
   rtlc8n72 <= RxFSM(0) OR rtlcs0 ;
   rtlc14n289 <= rtlcs4 OR rtlc14n218 ;
   rtlc14n163 <= not_TopTx OR not_rtlcs3 ;
   not_TopTx <= NOT TopTx ;
   rtlc14n223 <= not_TopTx AND TxFSM(1) ;
   rtlc14n218 <= TxFSM(1) AND TxFSM(0) ;
   not_rtlc14_X_0_n224 <= NOT rtlc14_X_0_n224 ;
   not_TxFSM_1 <= NOT TxFSM(1) ;
   rtlc14n234 <= TopTx AND not_TxFSM_1 ;
   not_rtlcs3 <= NOT rtlcs3 ;
   not_TopRx <= NOT TopRx ;
   rtlc17n335 <= not_TopRx AND RxFSM(3) ;
   not_Rx <= NOT Rx ;
   not_rtlcn20 <= NOT rtlcn20 ;
   rtlcn20 <= TxFSM(1) OR TxFSM(0) ;
   rtlc_82_select_1 : select_3_3 port map ( a(2)=>RxFSM(0), a(1)=>
      not_rtlcn132, a(0)=>RxFSM(5), b(2)=>Rx_r, b(1)=>not_TopRx, b(0)=>
      not_Rx, d=>rtlcn26);
   Tx_Reg_mux_14i1 : mux_3u_3u port map ( a(2)=>Tx_Reg(1), a(1)=>GND, a(0)=>
      PWR, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>TxFSM(0), d=>Tx_Reg_14n6ss1(0));
   rtlc_127_mux_3 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      PWR, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlc14n167);
   rtlc_128_mux_4 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlcn22);
   rtlc_129_mux_5 : mux_4u_4u port map ( a(3)=>not_TopTx, a(2)=>rtlc14n163, 
      a(1)=>not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), 
      b(0)=>TxFSM(0), d=>rtlcn24);
   not_Rx_r <= NOT Rx_r ;
   not_LD <= NOT LD ;
   not_RxFSM_0 <= NOT RxFSM(0) ;
   not_TxFSM_0 <= NOT TxFSM(0) ;
   not_rtlcs5 <= NOT rtlcs5 ;
   rtlcn52 <= not_rtlcs5 AND RxFSM(2) ;
   rtlcn113 <= not_Rx_r AND RxFSM(1) ;
   rtlcn58 <= RxFSM(3) OR rtlcn113 ;
   rtlcn114 <= RxFSM(4) AND Rx_r ;
   rtlcn63 <= RxFSM(5) OR rtlcn114 ;
   rtlcn68 <= rtlcs5 AND RxFSM(2) ;
   rtlcn72 <= not_RxFSM_0 AND rtlcs0 ;
   rtlcn115 <= RxFSM(4) AND not_Rx_r ;
   rtlcn116 <= Rx_r AND RxFSM(1) ;
   rtlcn78 <= rtlcn115 OR rtlcn116 ;
   not_rtlc14n289 <= NOT rtlc14n289 ;
   not_rtlcn132 <= NOT rtlcn132 ;
   Tx_Reg_14n6ss1(1) <= Tx_Reg(2) when TxFSM(1) = '1' else Din(3) ;
   Tx_Reg_14n6ss1(2) <= Tx_Reg(3) when TxFSM(1) = '1' else Din(3) ;
   Tx_Reg_14n6ss1(3) <= Tx_Reg(4) when TxFSM(1) = '1' else Din(3) ;
   Tx_Reg_14n6ss1(4) <= Tx_Reg(5) when TxFSM(1) = '1' else Din(3) ;
   Tx_Reg_14n6ss1(5) <= Tx_Reg(6) when TxFSM(1) = '1' else Din(5) ;
   Tx_Reg_14n6ss1(6) <= Tx_Reg(7) when TxFSM(1) = '1' else Din(5) ;
   Tx_Reg_14n6ss1(7) <= Tx_Reg(8) when TxFSM(1) = '1' else Din(7) ;
   not_rtlcn24 <= NOT rtlcn24 ;
   not_rtlc14n167 <= NOT rtlc14n167 ;
   not_rtlcn22 <= NOT rtlcn22 ;
   not_rtlcn26 <= NOT rtlcn26 ;
   rtlc17n432 <= RxRDY_EXMPLR87 OR RxFSM(5) ;
   rtlcn132 <= RxFSM(0) OR RxFSM(5) ;
   not_RxBitCnt_2 <= NOT RxBitCnt(2) ;
   not_RxBitCnt_1 <= NOT RxBitCnt(1) ;
   not_RxBitCnt_0 <= NOT RxBitCnt(0) ;
   rtlc_356_and_7 : and_4u_4u port map ( a(3)=>RxBitCnt(3), a(2)=>
      not_RxBitCnt_2, a(1)=>not_RxBitCnt_1, a(0)=>not_RxBitCnt_0, d=>rtlcs5
   );
   not_RxDiv_9 <= NOT RxDiv(9) ;
   not_RxDiv_5 <= NOT RxDiv(5) ;
   not_RxDiv_1 <= NOT RxDiv(1) ;
   rtlc_366_and_8 : and_4u_4u port map ( a(3)=>not_RxDiv_9, a(2)=>
      not_RxDiv_5, a(1)=>not_RxDiv_1, a(0)=>rtlcs6, d=>rtlcs0);
   not_TxDiv_10 <= NOT TxDiv(10) ;
   not_TxDiv_6 <= NOT TxDiv(6) ;
   not_TxDiv_2 <= NOT TxDiv(2) ;
   rtlc_377_and_9 : and_4u_4u port map ( a(3)=>not_TxDiv_10, a(2)=>
      not_TxDiv_6, a(1)=>not_TxDiv_2, a(0)=>rtlcs7, d=>rtlcs1);
   not_TxBitCnt_3 <= NOT TxBitCnt(3) ;
   not_TxBitCnt_2 <= NOT TxBitCnt(2) ;
   not_TxBitCnt_1 <= NOT TxBitCnt(1) ;
   rtlc_382_and_10 : and_4u_4u port map ( a(3)=>not_TxBitCnt_3, a(2)=>
      not_TxBitCnt_2, a(1)=>not_TxBitCnt_1, a(0)=>TxBitCnt(0), d=>rtlcs3);
   rtlcs4 <= not_TxFSM_1 AND not_TxFSM_0 ;
   Tx_Reg_14n6ss1(8) <= Din(7) OR TxFSM(1) ;
   modgen_counter_RxDiv : counter_up_sclear_aclear_clock_0_11_cx0_UARTS
       port map ( clock=>CLK, q(10)=>RxDiv(10), q(9)=>RxDiv(9), q(8)=>
      RxDiv(8), q(7)=>RxDiv(7), q(6)=>RxDiv(6), q(5)=>RxDiv(5), q(4)=>
      RxDiv(4), q(3)=>RxDiv(3), q(2)=>RxDiv(2), q(1)=>RxDiv(1), q(0)=>
      RxDiv(0), clk_en=>PWR, aclear=>RST, sload=>GND, data(10)=>
      DANGLING(0,0), data(9)=>DANGLING(0,1), data(8)=>DANGLING(0,2), data(7)
      =>DANGLING(0,3), data(6)=>DANGLING(0,4), data(5)=>DANGLING(0,5), 
      data(4)=>DANGLING(0,6), data(3)=>DANGLING(0,7), data(2)=>DANGLING(0,8), 
      data(1)=>DANGLING(0,9), data(0)=>DANGLING(0,10), aset=>GND, sclear=>
      rtlc8n72, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxDiv : counter_up_sclear_aclear_clock_0_12_cx1_UARTS
       port map ( clock=>CLK, q(11)=>TxDiv(11), q(10)=>TxDiv(10), q(9)=>
      TxDiv(9), q(8)=>TxDiv(8), q(7)=>TxDiv(7), q(6)=>TxDiv(6), q(5)=>
      TxDiv(5), q(4)=>TxDiv(4), q(3)=>TxDiv(3), q(2)=>TxDiv(2), q(1)=>
      TxDiv(1), q(0)=>TxDiv(0), clk_en=>PWR, aclear=>RST, sload=>GND, 
      data(11)=>DANGLING(0,11), data(10)=>DANGLING(0,12), data(9)=>
      DANGLING(0,13), data(8)=>DANGLING(0,14), data(7)=>DANGLING(0,15), 
      data(6)=>DANGLING(0,16), data(5)=>DANGLING(0,17), data(4)=>
      DANGLING(0,18), data(3)=>DANGLING(0,19), data(2)=>DANGLING(0,20), 
      data(1)=>DANGLING(0,21), data(0)=>DANGLING(0,22), aset=>GND, sclear=>
      rtlcs1, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxBitCnt : 
      counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx2_UARTS port map ( 
      clock=>CLK, q(3)=>TxBitCnt(3), q(2)=>TxBitCnt(2), q(1)=>TxBitCnt(1), 
      q(0)=>TxBitCnt(0), clk_en=>not_rtlc14_X_0_n224, aclear=>RST, sload=>
      rtlc14n234, data(3)=>PWR, data(2)=>GND, data(1)=>GND, data(0)=>PWR, 
      aset=>GND, sclear=>GND, updn=>GND, cnt_en=>TxFSM(1));
   not_rtlc17n335 <= NOT rtlc17n335 ;
   modgen_counter_RxBitCnt : 
      counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx3_UARTS port map ( 
      clock=>CLK, q(3)=>RxBitCnt(3), q(2)=>RxBitCnt(2), q(1)=>RxBitCnt(1), 
      q(0)=>RxBitCnt(0), clk_en=>not_rtlc17n335, aclear=>RST, sload=>GND, 
      data(3)=>DANGLING(0,23), data(2)=>DANGLING(0,24), data(1)=>
      DANGLING(0,25), data(0)=>DANGLING(0,26), aset=>GND, sclear=>RxFSM(0), 
      updn=>PWR, cnt_en=>RxFSM(3));
   rtlceq_s14_eq_11 : eq_8u_8u port map ( a(7)=>RxDiv(10), a(6)=>RxDiv(8), 
      a(5)=>RxDiv(7), a(4)=>RxDiv(6), a(3)=>RxDiv(4), a(2)=>RxDiv(3), a(1)=>
      RxDiv(2), a(0)=>RxDiv(0), b(7)=>GND, b(6)=>GND, b(5)=>RxDivisor_4, 
      b(4)=>RxDivisor_4, b(3)=>RxDivisor_4, b(2)=>RxDivisor_4, b(1)=>GND, 
      b(0)=>GND, d=>rtlcs6);
   rtlceq_s16_eq_12 : eq_9u_9u port map ( a(8)=>TxDiv(11), a(7)=>TxDiv(9), 
      a(6)=>TxDiv(8), a(5)=>TxDiv(7), a(4)=>TxDiv(5), a(3)=>TxDiv(4), a(2)=>
      TxDiv(3), a(1)=>TxDiv(1), a(0)=>TxDiv(0), b(8)=>GND, b(7)=>GND, b(6)=>
      RxDivisor_4, b(5)=>RxDivisor_4, b(4)=>RxDivisor_4, b(3)=>RxDivisor_4, 
      b(2)=>GND, b(1)=>GND, b(0)=>RxDivisor_4, d=>rtlcs7);
   DFFPC (Rx,RST,GND,CLK,Rx_r) ;
   DFFPC (PWR,GND,RST,CLK,RxDivisor_4) ;
   DFFPC (rtlcn72,GND,RST,CLK,TopRx) ;
   DFFPC (rtlcs1,GND,RST,CLK,TopTx) ;
   DFFPCE (not_rtlc14n289,GND,RST,not_rtlcn24,CLK,TxFSM(1)) ;
   DFFPCE (not_TxFSM_0,GND,RST,not_rtlcn24,CLK,TxFSM(0)) ;
   DFFPCE (Tx_Reg_14n6ss1(8),RST,GND,not_rtlc14n167,CLK,Tx_Reg(8)) ;
   DFFPCE (Tx_Reg_14n6ss1(7),RST,GND,not_rtlc14n167,CLK,Tx_Reg(7)) ;
   DFFPCE (Tx_Reg_14n6ss1(6),RST,GND,not_rtlc14n167,CLK,Tx_Reg(6)) ;
   DFFPCE (Tx_Reg_14n6ss1(5),RST,GND,not_rtlc14n167,CLK,Tx_Reg(5)) ;
   DFFPCE (Tx_Reg_14n6ss1(4),RST,GND,not_rtlc14n167,CLK,Tx_Reg(4)) ;
   DFFPCE (Tx_Reg_14n6ss1(3),RST,GND,not_rtlc14n167,CLK,Tx_Reg(3)) ;
   DFFPCE (Tx_Reg_14n6ss1(2),RST,GND,not_rtlc14n167,CLK,Tx_Reg(2)) ;
   DFFPCE (Tx_Reg_14n6ss1(1),RST,GND,not_rtlc14n167,CLK,Tx_Reg(1)) ;
   DFFPCE (Tx_Reg_14n6ss1(0),RST,GND,not_rtlcn22,CLK,Tx) ;
   DFFPCE (rtlcn78,GND,RST,not_rtlcn26,CLK,RxFSM(5)) ;
   DFFPCE (rtlcn68,GND,RST,not_rtlcn26,CLK,RxFSM(4)) ;
   DFFPCE (rtlcn52,GND,RST,not_rtlcn26,CLK,RxFSM(3)) ;
   DFFPCE (rtlcn58,GND,RST,not_rtlcn26,CLK,RxFSM(2)) ;
   DFFPCE (RxFSM(0),GND,RST,not_rtlcn26,CLK,RxFSM(1)) ;
   DFFPCE (rtlcn63,RST,GND,not_rtlcn26,CLK,RxFSM(0)) ;
   DFFPCE (RxFSM(5),GND,RST,rtlc17n432,CLK,RxErr) ;
   DFFPC (rtlcn92,GND,RST,CLK,RxRDY_EXMPLR87) ;
   rtlc14_109_or_0_nx0 <= rtlc14n218 OR not_rtlcn20 ;
   rtlc14_X_0_n224 <= rtlc14_109_or_0_nx0 OR rtlc14n223 ;
   rtlcn92 <= rtlcn114 AND TopRx ;
end RTL_unfold_1358 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_16_cx4_uw_uart is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (15 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (15 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_clk_en_0_16_cx4_uw_uart ;

architecture INTERFACE of counter_up_sclear_clock_clk_en_0_16_cx4_uw_uart
    is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx52, nx53, nx54, nx55, nx56, nx57, nx58, nx59, nx60, 
      nx61, nx62, nx63, nx64, nx65, nx66, nx67, sclear_and_0_dup_191, 
      sclear_and_1_dup_192, sclear_and_2_dup_193, sclear_and_3_dup_194, 
      sclear_and_4_dup_195, sclear_and_5_dup_196, sclear_and_6_dup_197, 
      sclear_and_7_dup_198, sclear_and_8_dup_199, sclear_and_9_dup_200, 
      sclear_and_10_dup_201, sclear_and_11_dup_202, sclear_and_12_dup_203, 
      sclear_and_13_dup_204, sclear_and_14_dup_205, sclear_and_15_dup_206, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, inc_d_9, inc_d_10, inc_d_11, inc_d_12, inc_d_13, inc_d_14, 
      inc_d_15, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(15) <= nx67 ;
   q(14) <= nx66 ;
   q(13) <= nx65 ;
   q(12) <= nx64 ;
   q(11) <= nx63 ;
   q(10) <= nx62 ;
   q(9) <= nx61 ;
   q(8) <= nx60 ;
   q(7) <= nx59 ;
   q(6) <= nx58 ;
   q(5) <= nx57 ;
   q(4) <= nx56 ;
   q(3) <= nx55 ;
   q(2) <= nx54 ;
   q(1) <= nx53 ;
   q(0) <= nx52 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPCE (sclear_and_15_dup_206,GND,GND,clk_en,clock,nx67) ;
   DFFPCE (sclear_and_14_dup_205,GND,GND,clk_en,clock,nx66) ;
   DFFPCE (sclear_and_13_dup_204,GND,GND,clk_en,clock,nx65) ;
   DFFPCE (sclear_and_12_dup_203,GND,GND,clk_en,clock,nx64) ;
   DFFPCE (sclear_and_11_dup_202,GND,GND,clk_en,clock,nx63) ;
   DFFPCE (sclear_and_10_dup_201,GND,GND,clk_en,clock,nx62) ;
   DFFPCE (sclear_and_9_dup_200,GND,GND,clk_en,clock,nx61) ;
   DFFPCE (sclear_and_8_dup_199,GND,GND,clk_en,clock,nx60) ;
   DFFPCE (sclear_and_7_dup_198,GND,GND,clk_en,clock,nx59) ;
   DFFPCE (sclear_and_6_dup_197,GND,GND,clk_en,clock,nx58) ;
   DFFPCE (sclear_and_5_dup_196,GND,GND,clk_en,clock,nx57) ;
   DFFPCE (sclear_and_4_dup_195,GND,GND,clk_en,clock,nx56) ;
   DFFPCE (sclear_and_3_dup_194,GND,GND,clk_en,clock,nx55) ;
   DFFPCE (sclear_and_2_dup_193,GND,GND,clk_en,clock,nx54) ;
   DFFPCE (sclear_and_1_dup_192,GND,GND,clk_en,clock,nx53) ;
   DFFPCE (sclear_and_0_dup_191,GND,GND,clk_en,clock,nx52) ;
   inc : inc_16u_16u_0_0 port map ( cin=>PWR, a(15)=>nx67, a(14)=>nx66, 
      a(13)=>nx65, a(12)=>nx64, a(11)=>nx63, a(10)=>nx62, a(9)=>nx61, a(8)=>
      nx60, a(7)=>nx59, a(6)=>nx58, a(5)=>nx57, a(4)=>nx56, a(3)=>nx55, a(2)
      =>nx54, a(1)=>nx53, a(0)=>nx52, d(15)=>inc_d_15, d(14)=>inc_d_14, 
      d(13)=>inc_d_13, d(12)=>inc_d_12, d(11)=>inc_d_11, d(10)=>inc_d_10, 
      d(9)=>inc_d_9, d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>
      inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, 
      d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_191 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_192 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_193 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_194 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_195 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_196 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_197 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_198 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_199 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_200 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_201 <= inc_d_10 AND NOT_sclear ;
   sclear_and_11_dup_202 <= inc_d_11 AND NOT_sclear ;
   sclear_and_12_dup_203 <= inc_d_12 AND NOT_sclear ;
   sclear_and_13_dup_204 <= inc_d_13 AND NOT_sclear ;
   sclear_and_14_dup_205 <= inc_d_14 AND NOT_sclear ;
   sclear_and_15_dup_206 <= inc_d_15 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
   component counter_up_sclear_clock_clk_en_0_16_cx4_uw_uart
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (15 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (15 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component and_16u_16u
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal o_pixavail_EXMPLR126, rxerr, rxrdy, rawrx, GND, sdout_6, sdout_4, 
      sdout_0, state, dsend, mdata_7, mdata_0, ack: std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal ld_sdout, PWR, not_o_pixavail, rtlc7n92, rtlc7n115, not_rxerr, 
      not_rtlcn58, rtlc7n145, rtlc7_X_0_n181, rtlc7n221, not_dsend, 
      rtlc10n48, not_rtlc10n48, rtlc10n75, rtlcn4, rtlcn5, rtlcn13, 
      not_rtlcn60, rtlcn60, rtlcn61, not_state, rtlcn65, not_rtlcn73, 
      rtlcn73, rtlcn74, not_rtlc7n145, not_rst, not_i_mode_1, rtlcn79, 
      not_waitcount_15, not_waitcount_14, not_waitcount_13, not_waitcount_12, 
      not_waitcount_11, not_waitcount_10, not_waitcount_9, not_waitcount_8, 
      not_waitcount_7, not_waitcount_4, not_waitcount_3, not_waitcount_1, 
      not_waitcount_0, rtlcn122: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   datain(7) <= GND ;
   datain(6) <= GND ;
   datain(5) <= GND ;
   datain(4) <= GND ;
   datain(3) <= GND ;
   datain(2) <= GND ;
   datain(1) <= GND ;
   datain(0) <= GND ;
   o_pixavail <= GND ;
   GND <= '0' ;
   PWR <= '1' ;
   i_uarts : UARTS port map ( CLK=>clk, RST=>rst, Din(7)=>sdout_6, Din(6)=>
      GND, Din(5)=>sdout_4, Din(4)=>GND, Din(3)=>sdout_0, Din(2)=>GND, 
      Din(1)=>GND, Din(0)=>GND, LD=>ld_sdout, Rx=>rawrx, Baud=>PWR, Dout(7)
      =>DANGLING(0,0), Dout(6)=>DANGLING(0,1), Dout(5)=>DANGLING(0,2), 
      Dout(4)=>DANGLING(0,3), Dout(3)=>DANGLING(0,4), Dout(2)=>DANGLING(0,5), 
      Dout(1)=>DANGLING(0,6), Dout(0)=>DANGLING(0,7), Tx=>txflex, TxBusy=>
      DANGLING(0,8), RxErr=>rxerr, RxRDY=>rxrdy);
   not_rxerr <= NOT rxerr ;
   rtlc7n92 <= o_pixavail_EXMPLR126 OR ack ;
   not_rtlcn58 <= NOT rtlc7n115 ;
   not_o_pixavail <= NOT o_pixavail_EXMPLR126 ;
   rtlcn5 <= i_mode(1) AND rtlc7n92 ;
   not_state <= NOT state ;
   rtlcn13 <= not_state AND dsend ;
   rtlcn65 <= rtlc7n92 AND not_rtlcn58 ;
   rtlcn61 <= rtlcn65 OR not_rtlcn73 ;
   rtlcn60 <= i_mode(1) AND rtlcn61 ;
   not_rtlcn60 <= NOT rtlcn60 ;
   not_rtlcn73 <= NOT rtlcn73 ;
   rtlc7n145 <= not_rtlcn58 when rtlc7n92 = '1' else not_rxerr ;
   rtlcn4 <= rxrdy OR o_pixavail_EXMPLR126 ;
   not_rtlc7n145 <= NOT rtlc7n145 ;
   rtlcn74 <= not_rtlc7n145 OR not_i_mode_1 ;
   not_rst <= NOT rst ;
   rtlc7n221 <= not_rst AND rtlcn74 ;
   rtlc10n75 <= dsend OR state ;
   not_dsend <= NOT dsend ;
   not_rtlc10n48 <= NOT rtlc10n48 ;
   not_i_mode_1 <= NOT i_mode(1) ;
   rtlcn73 <= rtlc7n92 OR rxerr ;
   rtlc10n48 <= not_dsend OR state ;
   rawrx <= rxflex AND not_rst ;
   rtlcn79 <= rst OR rtlc7n92 ;
   modgen_counter_waitcount : 
      counter_up_sclear_clock_clk_en_0_16_cx4_uw_uart port map ( clock=>clk, 
      q(15)=>waitcount(15), q(14)=>waitcount(14), q(13)=>waitcount(13), 
      q(12)=>waitcount(12), q(11)=>waitcount(11), q(10)=>waitcount(10), q(9)
      =>waitcount(9), q(8)=>waitcount(8), q(7)=>waitcount(7), q(6)=>
      waitcount(6), q(5)=>waitcount(5), q(4)=>waitcount(4), q(3)=>
      waitcount(3), q(2)=>waitcount(2), q(1)=>waitcount(1), q(0)=>
      waitcount(0), clk_en=>rtlcn79, aclear=>GND, sload=>GND, data(15)=>
      DANGLING(0,9), data(14)=>DANGLING(0,10), data(13)=>DANGLING(0,11), 
      data(12)=>DANGLING(0,12), data(11)=>DANGLING(0,13), data(10)=>
      DANGLING(0,14), data(9)=>DANGLING(0,15), data(8)=>DANGLING(0,16), 
      data(7)=>DANGLING(0,17), data(6)=>DANGLING(0,18), data(5)=>
      DANGLING(0,19), data(4)=>DANGLING(0,20), data(3)=>DANGLING(0,21), 
      data(2)=>DANGLING(0,22), data(1)=>DANGLING(0,23), data(0)=>
      DANGLING(0,24), aset=>GND, sclear=>rtlc7_X_0_n181, updn=>PWR, cnt_en=>
      PWR);
   not_waitcount_15 <= NOT waitcount(15) ;
   not_waitcount_14 <= NOT waitcount(14) ;
   not_waitcount_13 <= NOT waitcount(13) ;
   not_waitcount_12 <= NOT waitcount(12) ;
   not_waitcount_11 <= NOT waitcount(11) ;
   not_waitcount_10 <= NOT waitcount(10) ;
   not_waitcount_9 <= NOT waitcount(9) ;
   not_waitcount_8 <= NOT waitcount(8) ;
   not_waitcount_7 <= NOT waitcount(7) ;
   not_waitcount_4 <= NOT waitcount(4) ;
   not_waitcount_3 <= NOT waitcount(3) ;
   not_waitcount_1 <= NOT waitcount(1) ;
   not_waitcount_0 <= NOT waitcount(0) ;
   rtlc_318_and_14 : and_16u_16u port map ( a(15)=>not_waitcount_15, a(14)=>
      not_waitcount_14, a(13)=>not_waitcount_13, a(12)=>not_waitcount_12, 
      a(11)=>not_waitcount_11, a(10)=>not_waitcount_10, a(9)=>
      not_waitcount_9, a(8)=>not_waitcount_8, a(7)=>not_waitcount_7, a(6)=>
      waitcount(6), a(5)=>waitcount(5), a(4)=>not_waitcount_4, a(3)=>
      not_waitcount_3, a(2)=>waitcount(2), a(1)=>not_waitcount_1, a(0)=>
      not_waitcount_0, d=>rtlc7n115);
   rtlcn122 <= not_o_pixavail AND rtlcn4 ;
   DFFPCE (i_mode(1),GND,GND,rtlc7n221,clk,mdata_7) ;
   DFFPCE (rtlcn5,GND,GND,rtlc7n221,clk,mdata_0) ;
   DFFRSE (not_rtlcn60,GND,rst,PWR,clk,dsend) ;
   DFFPCE (not_state,GND,rst,rtlc10n75,clk,ld_sdout) ;
   DFFPCE (mdata_7,GND,rst,not_rtlc10n48,clk,sdout_6) ;
   DFFPCE (PWR,GND,rst,not_rtlc10n48,clk,sdout_4) ;
   DFFPCE (mdata_0,GND,rst,not_rtlc10n48,clk,sdout_0) ;
   DFFPC (rtlcn13,GND,rst,clk,state) ;
   DFFRSE (rtlcn65,GND,rst,PWR,clk,ack) ;
   DFFPC (rtlcn122,GND,rst,clk,o_pixavail_EXMPLR126) ;
   rtlc7_X_0_n181 <= rst OR rtlc7n115 ;
end main_unfold_1876 ;

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

architecture main_unfold_1777 of kirsch is 
   signal debug_num_5_EXMPLR135: std_logic_vector (3 DOWNTO 3) ;
   
   signal o_valid_EXMPLR133: std_logic ;

begin
   o_valid <= o_valid_EXMPLR133 ;
   o_edge <= debug_num_5_EXMPLR135(3) ;
   o_dir(2) <= o_valid_EXMPLR133 ;
   o_dir(1) <= o_valid_EXMPLR133 ;
   o_dir(0) <= o_valid_EXMPLR133 ;
   o_mode(0) <= debug_num_5_EXMPLR135(3) ;
   o_row(7) <= o_valid_EXMPLR133 ;
   o_row(6) <= o_valid_EXMPLR133 ;
   o_row(5) <= o_valid_EXMPLR133 ;
   o_row(4) <= o_valid_EXMPLR133 ;
   o_row(3) <= o_valid_EXMPLR133 ;
   o_row(2) <= o_valid_EXMPLR133 ;
   o_row(1) <= o_valid_EXMPLR133 ;
   o_row(0) <= o_valid_EXMPLR133 ;
   debug_led_red(17) <= o_valid_EXMPLR133 ;
   debug_led_red(16) <= o_valid_EXMPLR133 ;
   debug_led_red(15) <= o_valid_EXMPLR133 ;
   debug_led_red(14) <= o_valid_EXMPLR133 ;
   debug_led_red(13) <= o_valid_EXMPLR133 ;
   debug_led_red(12) <= o_valid_EXMPLR133 ;
   debug_led_red(11) <= o_valid_EXMPLR133 ;
   debug_led_red(10) <= o_valid_EXMPLR133 ;
   debug_led_red(9) <= o_valid_EXMPLR133 ;
   debug_led_red(8) <= o_valid_EXMPLR133 ;
   debug_led_red(7) <= o_valid_EXMPLR133 ;
   debug_led_red(6) <= o_valid_EXMPLR133 ;
   debug_led_red(5) <= o_valid_EXMPLR133 ;
   debug_led_red(4) <= o_valid_EXMPLR133 ;
   debug_led_red(3) <= o_valid_EXMPLR133 ;
   debug_led_red(2) <= o_valid_EXMPLR133 ;
   debug_led_red(1) <= o_valid_EXMPLR133 ;
   debug_led_red(0) <= o_valid_EXMPLR133 ;
   debug_led_grn(5) <= o_valid_EXMPLR133 ;
   debug_led_grn(4) <= o_valid_EXMPLR133 ;
   debug_led_grn(3) <= o_valid_EXMPLR133 ;
   debug_led_grn(2) <= o_valid_EXMPLR133 ;
   debug_led_grn(1) <= o_valid_EXMPLR133 ;
   debug_led_grn(0) <= o_valid_EXMPLR133 ;
   debug_num_0(3) <= o_valid_EXMPLR133 ;
   debug_num_0(2) <= debug_num_5_EXMPLR135(3) ;
   debug_num_0(1) <= debug_num_5_EXMPLR135(3) ;
   debug_num_0(0) <= debug_num_5_EXMPLR135(3) ;
   debug_num_1(3) <= o_valid_EXMPLR133 ;
   debug_num_1(2) <= o_valid_EXMPLR133 ;
   debug_num_1(1) <= debug_num_5_EXMPLR135(3) ;
   debug_num_1(0) <= o_valid_EXMPLR133 ;
   debug_num_2(3) <= o_valid_EXMPLR133 ;
   debug_num_2(2) <= o_valid_EXMPLR133 ;
   debug_num_2(1) <= debug_num_5_EXMPLR135(3) ;
   debug_num_2(0) <= debug_num_5_EXMPLR135(3) ;
   debug_num_3(3) <= debug_num_5_EXMPLR135(3) ;
   debug_num_3(2) <= debug_num_5_EXMPLR135(3) ;
   debug_num_3(1) <= debug_num_5_EXMPLR135(3) ;
   debug_num_3(0) <= o_valid_EXMPLR133 ;
   debug_num_4(3) <= debug_num_5_EXMPLR135(3) ;
   debug_num_4(2) <= debug_num_5_EXMPLR135(3) ;
   debug_num_4(1) <= o_valid_EXMPLR133 ;
   debug_num_4(0) <= o_valid_EXMPLR133 ;
   debug_num_5(3) <= debug_num_5_EXMPLR135(3) ;
   debug_num_5(2) <= debug_num_5_EXMPLR135(3) ;
   debug_num_5(1) <= debug_num_5_EXMPLR135(3) ;
   debug_num_5(0) <= o_valid_EXMPLR133 ;
   debug_num_5_EXMPLR135(3) <= '1' ;
   o_valid_EXMPLR133 <= '0' ;
   o_mode(1) <= NOT i_reset ;
end main_unfold_1777 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
   signal o_mode_1_EXMPLR140, o_nrst_EXMPLR141, o_sevenseg_7_EXMPLR142, 
      debug_led_red_0_EXMPLR143: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_sevenseg(15) <= o_sevenseg_7_EXMPLR142 ;
   o_sevenseg(14) <= debug_led_red_0_EXMPLR143 ;
   o_sevenseg(13) <= debug_led_red_0_EXMPLR143 ;
   o_sevenseg(12) <= debug_led_red_0_EXMPLR143 ;
   o_sevenseg(11) <= debug_led_red_0_EXMPLR143 ;
   o_sevenseg(10) <= debug_led_red_0_EXMPLR143 ;
   o_sevenseg(9) <= debug_led_red_0_EXMPLR143 ;
   o_sevenseg(8) <= o_sevenseg_7_EXMPLR142 ;
   o_sevenseg(7) <= o_sevenseg_7_EXMPLR142 ;
   o_sevenseg(6) <= debug_led_red_0_EXMPLR143 ;
   o_sevenseg(5) <= debug_led_red_0_EXMPLR143 ;
   o_sevenseg(4) <= debug_led_red_0_EXMPLR143 ;
   o_sevenseg(3) <= debug_led_red_0_EXMPLR143 ;
   o_sevenseg(2) <= debug_led_red_0_EXMPLR143 ;
   o_sevenseg(1) <= debug_led_red_0_EXMPLR143 ;
   o_sevenseg(0) <= o_sevenseg_7_EXMPLR142 ;
   o_mode(1) <= o_mode_1_EXMPLR140 ;
   o_mode(0) <= o_sevenseg_7_EXMPLR142 ;
   o_nrst <= o_nrst_EXMPLR141 ;
   debug_led_red(16) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(15) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(14) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(13) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(12) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(11) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(10) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(9) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(8) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(7) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(6) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(5) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(4) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(3) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(2) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(1) <= debug_led_red_0_EXMPLR143 ;
   debug_led_red(0) <= debug_led_red_0_EXMPLR143 ;
   debug_led_grn(5) <= debug_led_red_0_EXMPLR143 ;
   debug_led_grn(4) <= debug_led_red_0_EXMPLR143 ;
   debug_led_grn(3) <= debug_led_red_0_EXMPLR143 ;
   debug_led_grn(2) <= debug_led_red_0_EXMPLR143 ;
   debug_led_grn(1) <= debug_led_red_0_EXMPLR143 ;
   debug_led_grn(0) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_0(7) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_0(6) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_0(5) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_0(4) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_0(3) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_0(2) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_0(1) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_0(0) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_1(7) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_1(6) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_1(5) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_1(4) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_1(3) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_1(2) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_1(1) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_1(0) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_2(7) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_2(6) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_2(5) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_2(4) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_2(3) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_2(2) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_2(1) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_2(0) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_3(7) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_3(6) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_3(5) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_3(4) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_3(3) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_3(2) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_3(1) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_3(0) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_4(7) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_4(6) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_4(5) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_4(4) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_4(3) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_4(2) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_4(1) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_4(0) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_5(7) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_5(6) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_5(5) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_5(4) <= o_sevenseg_7_EXMPLR142 ;
   debug_sevenseg_5(3) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_5(2) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_5(1) <= debug_led_red_0_EXMPLR143 ;
   debug_sevenseg_5(0) <= debug_led_red_0_EXMPLR143 ;
   o_sevenseg_7_EXMPLR142 <= '1' ;
   u_uw_uart : uw_uart port map ( clk=>clk, rst=>o_nrst_EXMPLR141, kirschout
      =>o_sevenseg_7_EXMPLR142, kirschdir(2)=>debug_led_red_0_EXMPLR143, 
      kirschdir(1)=>debug_led_red_0_EXMPLR143, kirschdir(0)=>
      debug_led_red_0_EXMPLR143, o_valid=>debug_led_red_0_EXMPLR143, 
      i_mode(1)=>o_mode_1_EXMPLR140, i_mode(0)=>o_sevenseg_7_EXMPLR142, 
      datain(7)=>DANGLING(0,0), datain(6)=>DANGLING(0,1), datain(5)=>
      DANGLING(0,2), datain(4)=>DANGLING(0,3), datain(3)=>DANGLING(0,4), 
      datain(2)=>DANGLING(0,5), datain(1)=>DANGLING(0,6), datain(0)=>
      DANGLING(0,7), o_pixavail=>DANGLING(0,8), rxflex=>rxflex, txflex=>
      txflex);
   u_kirsch : kirsch port map ( i_clock=>debug_led_red_0_EXMPLR143, i_reset
      =>o_nrst_EXMPLR141, i_valid=>debug_led_red_0_EXMPLR143, i_pixel(7)=>
      debug_led_red_0_EXMPLR143, i_pixel(6)=>debug_led_red_0_EXMPLR143, 
      i_pixel(5)=>debug_led_red_0_EXMPLR143, i_pixel(4)=>
      debug_led_red_0_EXMPLR143, i_pixel(3)=>debug_led_red_0_EXMPLR143, 
      i_pixel(2)=>debug_led_red_0_EXMPLR143, i_pixel(1)=>
      debug_led_red_0_EXMPLR143, i_pixel(0)=>debug_led_red_0_EXMPLR143, 
      o_valid=>DANGLING(0,9), o_edge=>DANGLING(0,10), o_dir(2)=>
      DANGLING(0,11), o_dir(1)=>DANGLING(0,12), o_dir(0)=>DANGLING(0,13), 
      o_mode(1)=>o_mode_1_EXMPLR140, o_mode(0)=>DANGLING(0,14), o_row(7)=>
      DANGLING(0,15), o_row(6)=>DANGLING(0,16), o_row(5)=>DANGLING(0,17), 
      o_row(4)=>DANGLING(0,18), o_row(3)=>DANGLING(0,19), o_row(2)=>
      DANGLING(0,20), o_row(1)=>DANGLING(0,21), o_row(0)=>DANGLING(0,22), 
      debug_key(3)=>DANGLING(0,23), debug_key(2)=>DANGLING(0,24), 
      debug_key(1)=>DANGLING(0,25), debug_switch(17)=>DANGLING(0,26), 
      debug_switch(16)=>DANGLING(0,27), debug_switch(15)=>DANGLING(0,28), 
      debug_switch(14)=>DANGLING(0,29), debug_switch(13)=>DANGLING(0,30), 
      debug_switch(12)=>DANGLING(0,31), debug_switch(11)=>DANGLING(0,32), 
      debug_switch(10)=>DANGLING(0,33), debug_switch(9)=>DANGLING(0,34), 
      debug_switch(8)=>DANGLING(0,35), debug_switch(7)=>DANGLING(0,36), 
      debug_switch(6)=>DANGLING(0,37), debug_switch(5)=>DANGLING(0,38), 
      debug_switch(4)=>DANGLING(0,39), debug_switch(3)=>DANGLING(0,40), 
      debug_switch(2)=>DANGLING(0,41), debug_switch(1)=>DANGLING(0,42), 
      debug_switch(0)=>DANGLING(0,43), debug_led_red(17)=>DANGLING(0,44), 
      debug_led_red(16)=>DANGLING(0,45), debug_led_red(15)=>DANGLING(0,46), 
      debug_led_red(14)=>DANGLING(0,47), debug_led_red(13)=>DANGLING(0,48), 
      debug_led_red(12)=>DANGLING(0,49), debug_led_red(11)=>DANGLING(0,50), 
      debug_led_red(10)=>DANGLING(0,51), debug_led_red(9)=>DANGLING(0,52), 
      debug_led_red(8)=>DANGLING(0,53), debug_led_red(7)=>DANGLING(0,54), 
      debug_led_red(6)=>DANGLING(0,55), debug_led_red(5)=>DANGLING(0,56), 
      debug_led_red(4)=>DANGLING(0,57), debug_led_red(3)=>DANGLING(0,58), 
      debug_led_red(2)=>DANGLING(0,59), debug_led_red(1)=>DANGLING(0,60), 
      debug_led_red(0)=>DANGLING(0,61), debug_led_grn(5)=>DANGLING(0,62), 
      debug_led_grn(4)=>DANGLING(0,63), debug_led_grn(3)=>DANGLING(0,64), 
      debug_led_grn(2)=>DANGLING(0,65), debug_led_grn(1)=>DANGLING(0,66), 
      debug_led_grn(0)=>DANGLING(0,67), debug_num_0(3)=>DANGLING(0,68), 
      debug_num_0(2)=>DANGLING(0,69), debug_num_0(1)=>DANGLING(0,70), 
      debug_num_0(0)=>DANGLING(0,71), debug_num_1(3)=>DANGLING(0,72), 
      debug_num_1(2)=>DANGLING(0,73), debug_num_1(1)=>DANGLING(0,74), 
      debug_num_1(0)=>DANGLING(0,75), debug_num_2(3)=>DANGLING(0,76), 
      debug_num_2(2)=>DANGLING(0,77), debug_num_2(1)=>DANGLING(0,78), 
      debug_num_2(0)=>DANGLING(0,79), debug_num_3(3)=>DANGLING(0,80), 
      debug_num_3(2)=>DANGLING(0,81), debug_num_3(1)=>DANGLING(0,82), 
      debug_num_3(0)=>DANGLING(0,83), debug_num_4(3)=>DANGLING(0,84), 
      debug_num_4(2)=>DANGLING(0,85), debug_num_4(1)=>DANGLING(0,86), 
      debug_num_4(0)=>DANGLING(0,87), debug_num_5(3)=>DANGLING(0,88), 
      debug_num_5(2)=>DANGLING(0,89), debug_num_5(1)=>DANGLING(0,90), 
      debug_num_5(0)=>DANGLING(0,91));
   o_nrst_EXMPLR141 <= NOT nrst ;
   debug_led_red_0_EXMPLR143 <= '0' ;
end main ;

