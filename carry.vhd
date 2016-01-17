library ieee;
use ieee.std_logic_1164.all;

ENTITY carry IS
	PORT (
		i_x, i_y, i_cin : IN std_logic;
		o_cout : OUT std_logic
	);
END carry;

ARCHITECTURE main OF carry IS
BEGIN
	o_cout <= (i_x AND i_y) OR (i_x AND i_cin) OR (i_y AND i_cin);
END ARCHITECTURE;


