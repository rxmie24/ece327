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
  logic : entity work.kirsch_logic
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

