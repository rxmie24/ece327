------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity top_kirsch_logic is
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

architecture shim of top_kirsch_logic is
  signal VDD, VSS : std_logic; 
begin
  logic : entity work.top_kirsch_logic
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

------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity top_kirsch_logic is
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

architecture shim of top_kirsch_logic is
  signal VDD, VSS : std_logic; 
begin
  logic : entity work.top_kirsch_logic
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

------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity top_kirsch_logic is
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

architecture shim of top_kirsch_logic is
  signal VDD, VSS : std_logic; 
begin
  logic : entity work.top_kirsch_logic
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

------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity top_kirsch_logic is
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

architecture shim of top_kirsch_logic is
  signal VDD, VSS : std_logic; 
begin
  logic : entity work.top_kirsch_logic
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

------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity top_kirsch_logic is
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

architecture shim of top_kirsch_logic is
  signal VDD, VSS : std_logic; 
begin
  logic : entity work.top_kirsch_logic
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

------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity top_kirsch_logic is
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

architecture shim of top_kirsch_logic is
  signal VDD, VSS : std_logic; 
begin
  logic : entity work.top_kirsch_logic
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

------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity top_kirsch_logic is
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

architecture shim of top_kirsch_logic is
  signal VDD, VSS : std_logic; 
begin
  logic : entity work.top_kirsch_logic
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
  logic : entity work.top_kirsch_logic
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

