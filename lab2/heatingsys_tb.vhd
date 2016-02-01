------------------------------------------------------------------------
-- heating system testbench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys_tb is
end entity;

architecture main of heatingsys_tb is
  signal cur_temp   : signed(7 downto 0);
  signal des_temp   : signed(7 downto 0);
  signal reset      : std_logic;
  signal clock      : std_logic;
  signal heatmode   : heat_ty;
begin
  controller : entity work.heatingsys(main)
    port map (
      i_cur_temp    => cur_temp,
      i_des_temp    => des_temp,
      i_reset       => reset,
      i_clock       => clock,
      o_heatmode    => heatmode
    );

  -- Clock period: 20 ns
  clock_process : process
  begin
    wait for 10 ns;
    clock <= '0';
    wait for 10 ns;
    clock <= '1';
  end process;


  process
  begin
    -- Wait for output state to change from undefined to off state
    wait until rising_edge(clock);
    cur_temp <= to_signed(0,8); des_temp <= to_signed(0,8) ; 
	reset <= '0';

    -- Off
    wait until rising_edge(clock);
    cur_temp <= to_signed(-1,8); des_temp <= to_signed(1,8) ; 
	reset <= '0';

    -- Off -> Low
    wait until rising_edge(clock);
    cur_temp <= to_signed(-1,8); des_temp <= to_signed(2,8) ; 
	reset <= '0';

    -- Low -> Low
    wait until rising_edge(clock);
    cur_temp <= to_signed(1,8); des_temp <= to_signed(3,8) ; 
	reset <= '0';

    -- Low -> Off
    wait until rising_edge(clock);
    cur_temp <= to_signed(3,8); des_temp <= to_signed(4,8) ; 
	reset <= '0';

    -- Test Off -> High
    wait until rising_edge(clock);
    cur_temp <= to_signed(0,8); des_temp <= to_signed(6,8) ; 
	reset <= '0';

    -- High -> High
    wait until rising_edge(clock);
    cur_temp <= to_signed(2,8); des_temp <= to_signed(6,8) ; 
	reset <= '0';

    -- Test High -> Off (Actually High -> Low -> Off, needs two cycles)
    wait until rising_edge(clock);
    cur_temp <= to_signed(7,8); des_temp <= to_signed(7,8) ; 
	reset <= '0';
    wait until rising_edge(clock);

    -- Test Off -> Low
    wait until rising_edge(clock);
    cur_temp <= to_signed(2,8); des_temp <= to_signed(5,8) ; 
	reset <= '0';

    -- Test Low -> High
    wait until rising_edge(clock);
    cur_temp <= to_signed(0,8); des_temp <= to_signed(7,8) ; 
	reset <= '0';

    -- High Reset
    wait until rising_edge(clock);
    cur_temp <= to_signed(3,8); des_temp <= to_signed(7,8) ; 
	reset <= '1';

    -- Off Reset
    wait until rising_edge(clock);
    cur_temp <= to_signed(0,8); des_temp <= to_signed(1,8) ; 
	reset <= '1';

    -- Off -> Low
    wait until rising_edge(clock);
    cur_temp <= to_signed(0,8); des_temp <= to_signed(4,8) ; 
	reset <= '0';

    -- Low -> Reset
    wait until rising_edge(clock);
    cur_temp <= to_signed(0,8); des_temp <= to_signed(3,8) ; 
	reset <= '1';

    wait for 400 ns;

  end process;
end architecture;