------------------------------------------------------------------------
-- finite-impulse response filters
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.fir_synth_pkg.all;

entity fir is
  port(
    clk     : in  std_logic;
    i_data  : in  word;
    o_data  : out word
  );
end entity;

architecture avg of fir is

  signal tap0, tap1 , tap2 , tap3 , tap4
             , prod1, prod2, prod3, prod4
                    , sum2 , sum3 , sum4
       : word;

  constant coef1 : word := x"0400";
  constant coef2 : word := x"0400";
  constant coef3 : word := x"0400";
  constant coef4 : word := x"0400";
  
begin

  -- delay line of flops to hold samples of input data
  tap0 <= i_data;
  delay_line : process(clk)
  begin
    if (rising_edge(clk)) then
      tap1 <= tap0;
      tap2 <= tap1;
      tap3 <= tap2;
      tap4 <= tap3;
    end if;
  end process;
  
  -- simple averaging circuit
  --
  -- Note that mult is a quick 'n' dirty multiplier
  -- However, a multiplier is NOT built in hardware because one input is a particular
  --  constant allowing optimizations to be done.  If you had to multiply by 2 or 4 or 16
  --  in hardware could you do it WITHOUT any adders, shifters or multipliers?
  --
  prod1 <= mult( tap1, coef1);
  prod2 <= mult( tap2, coef2);
  prod3 <= mult( tap3, coef3);
  prod4 <= mult( tap4, coef4);

  sum2  <= prod1 + prod2;
  sum3  <= sum2  + prod3;
  sum4  <= sum3  + prod4;
  
  o_data <= sum4;

end architecture;

------------------------------------------------------------------------
-- low-pass filter
------------------------------------------------------------------------

architecture low_pass of fir is

  -- Use the signal names tap, prod, and sum, but change the type to
  -- match your needs.

  signal tap  : word_vector(num_taps downto 0);
  signal prod : word_vector(num_taps downto 1);
  signal sum  : word_vector(num_taps downto 2);
  
--These lines of code are not commented so as to generate errors so you'll notice them!

--You'll want to comment out this whole architecture while testing out the averaging one above!

--For the tap, prod and sum type you'll want to use word_vector to simplify the code - check for it's defination

--For building the design you'll need to add fir_synth_pkg.vhd to the fir.uwp file.  Now is the time to
 --  start figuring out what the project file is for.  It has to include all vhdl files used in a project.
 
  
  -- The attribute line below is usually needed to avoid a warning
  -- from PrecisionRTL that signals could be implemented using
  -- memory arrays.  

attribute logic_block of tap, prod, sum : signal is true;

begin

	tap(0) <= i_data;
	MULT_LOOP : FOR i IN 1 TO num_taps GENERATE
		delay_seg : PROCESS(clk)
		BEGIN
			IF (rising_edge(clk)) THEN
				tap(i) <= tap(i - 1);
			END IF;
		END PROCESS;
		prod(i) <= mult(tap(i), lpcoef(i));
	END GENERATE MULT_LOOP;
	 
	SUM_LOOP : FOR i IN 3 TO num_taps GENERATE
		sum(i) <= prod(i) + sum(i - 1);
	END GENERATE SUM_LOOP;
	 
	o_data <= sum(num_taps);

end architecture;

-- question 2
  -- 16 LUTs are required for the adder.

-- question 3
  -- The multiplier doesn't use any LUTS.
 
