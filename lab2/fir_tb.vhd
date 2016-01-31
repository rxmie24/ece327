------------------------------------------------------------------------
-- fir test bench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.fir_synth_pkg.all;

entity fir_tb is
end entity;

------------------------------------------------------------------------

architecture main of fir_tb is
	signal i_data	: word;
	signal clock	: std_logic;
	signal o_data	: word;
begin

	uut : entity work.fir(avg)
	port map (
		i_data => i_data,
		clk => clock,
		o_data => o_data
	);

	--The clock process
	AvgTBClock : process
		begin
			wait for 2 ns;
			clock <= '0';
			
			wait for 2 ns;
			clock <= '1';
	end process;
	
	AvgTB : process
		begin
			i_data <= x"0000";
			
			--Wait for steady state output
			wait until rising_edge(clock);
			wait until rising_edge(clock);
			wait until rising_edge(clock);
			wait until rising_edge(clock);
			
			--Hold for a clock cycle
			i_data <= x"1000";
			wait;
	end process;
  
end architecture;
------------------------------------------------------------------------

