library ieee;
use ieee.std_logic_1164.all;

ENTITY add2 IS
	PORT (
		i_cin : IN std_logic;
		i_a, i_b : IN std_logic_vector(1 DOWNTO 0);
		o_cout : OUT std_logic;
		o_sum : OUT std_logic_vector(1 DOWNTO 0)
	);
END add2;

-- insert architecture here
ARCHITECTURE main OF add2 IS
	SIGNAL fa0_cout : std_logic;
BEGIN
	-- 1st fullAdder instantiation
	u_fullAdd0 : ENTITY work.fulladder(main)
		PORT MAP(
			i_a => i_a(0), 
			i_b => i_b(0), 
			i_cin => i_cin, 
			o_cout => fa0_cout, 
			o_sum => o_sum(0)
		);

	-- 2nd fullAdder instantiation
	u_fullAdd1 : ENTITY work.fulladder(main)
		PORT MAP(
			i_a => i_a(1), 
			i_b => i_b(1), 
			i_cin => fa0_cout, 
			o_cout => o_cout, 
			o_sum => o_sum(1)
		);
END ARCHITECTURE;
