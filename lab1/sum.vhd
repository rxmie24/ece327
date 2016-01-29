library ieee;
use ieee.std_logic_1164.all;

entity sum is
       port ( i_a, i_b, i_cin : in std_logic;
              o_sum :       out std_logic
       );
end sum;

architecture main of sum is
	begin
	o_sum <= i_a xor i_b xor i_cin;

end architecture;

-- question 1
  -- The hardware synthesized by the precision RTL are a series 
  -- of XOR gates as described in the code for o_sum. Inputs i_b,
  -- i_a, and i_cin are used for the XOR gates. The first XOR gate 
  -- uses inputs i_cin, and i_a, the output of that then goes into 
  -- the second XOR gate along with i_b, yielding the output o_sum (which is the output pin).