library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package state_pkg is

  subtype state_ty is std_logic_vector(2 downto 0);
  constant S0 : state_ty := "001";
  constant S1 : state_ty := "010";
  constant S2 : state_ty := "100";
  
  subtype system_mode is std_logic_vector(1 downto 0);
  constant idle : system_mode := "10";
  constant busy : system_mode := "11";
  constant reset : system_mode := "01";
  subtype output_data is unsigned(7 downto 0);
     type type_q_vector is array(natural range <>) of output_data;

  subtype direction_type is std_logic_vector(2 downto 0);
  constant NORTHWEST : direction_type := "100";
  constant NORTH     : direction_type := "010";
  constant NORTHEAST : direction_type := "110";
  constant EAST      : direction_type := "000";
  constant SOUTHEAST : direction_type := "101";
  constant SOUTH     : direction_type := "011";
  constant SOUTHWEST : direction_type := "111";
  constant WEST      : direction_type := "001";

	type dir_vector is array(natural range <>) of direction_type;
end state_pkg;



library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.state_pkg.all;


entity kirsch is
  port(
    ------------------------------------------
    -- main inputs and outputs
    i_clock    : in  std_logic;                      
    i_reset    : in  std_logic; 
    i_valid    : in  std_logic;                 
    i_pixel    : in  std_logic_vector(7 downto 0);
    o_valid    : out std_logic;                 
    o_edge     : out std_logic;	                     
    o_dir      : out std_logic_vector(2 downto 0);                      
    o_mode     : out std_logic_vector(1 downto 0);
    o_row      : out std_logic_vector(7 downto 0);
    ------------------------------------------
    -- debugging inputs and outputs
    debug_key      : in  std_logic_vector( 3 downto 1) ; 
    debug_switch   : in  std_logic_vector(17 downto 0) ; 
    debug_led_red  : out std_logic_vector(17 downto 0) ; 
    debug_led_grn  : out std_logic_vector(5  downto 0) ; 
    debug_num_0    : out std_logic_vector(3 downto 0) ; 
    debug_num_1    : out std_logic_vector(3 downto 0) ; 
    debug_num_2    : out std_logic_vector(3 downto 0) ; 
    debug_num_3    : out std_logic_vector(3 downto 0) ; 
    debug_num_4    : out std_logic_vector(3 downto 0) ;
    debug_num_5    : out std_logic_vector(3 downto 0) 
    ------------------------------------------
  );  
end entity;

architecture main of kirsch is

signal col_index                  : unsigned(7 downto 0);
signal q_vector                   : type_q_vector(2 downto 0);
signal local_wren                 : std_logic_vector(2 downto 0);
signal row_index                  : state_ty := S0;
signal absolute_row_counter       : unsigned(7 downto 0);

signal r1 : unsigned(9 downto 0); 
signal r2 : unsigned(8 downto 0); 
signal r3 : unsigned(9 downto 0); 
signal r4 : unsigned(9 downto 0); 
signal r5 : unsigned(13 downto 0); 

signal pre_c : std_logic_vector(7 downto 0);
signal pre_d : std_logic_vector(7 downto 0);

signal add1  : unsigned(8 downto 0);
signal term_a1, term_a2 : unsigned(8 downto 0);

signal add2  : unsigned(9 downto 0); 
signal add3  : unsigned(13 downto 0);

signal max1  : unsigned(7 downto 0);
signal m1x, m1y : unsigned(7 downto 0);
signal dir1 : dir_vector(3 downto 0);

signal max2  : unsigned(9 downto 0);
signal m2x, m2y : unsigned(9 downto 0);

signal sub  : unsigned(14 downto 0);
signal i_ce  : std_logic;

signal A, B, C, D, E, F, G, H, I  : std_logic_vector(7 downto 0);

signal v : std_logic_vector(9 downto 0);
signal convolution_calc : std_logic;

signal pr_st1 : std_logic;
signal pr_st2 : std_logic;
signal pr_out : std_logic;

signal edgeval   : unsigned(9 downto 0); 
signal comparatorval : unsigned(8 downto 0); 

function "rol" ( a : std_logic_vector; n : natural )
    return std_logic_vector
  is
  begin
    return std_logic_vector( unsigned(a) rol n );
end function;
  
begin  

mem_Slot : for i in 0 to 2 generate 
    mem : entity work.mem(main)
    port map (	
      address => std_logic_vector(col_index), 
      clock => i_clock,
      data => std_logic_vector(i_pixel),
      wren => local_wren(i),
      unsigned(q) => q_vector(i)
    );
end generate mem_Slot ;

debug_num_5 <= X"E";
debug_num_4 <= X"C";
debug_num_3 <= X"E";
debug_num_2 <= X"3";
debug_num_1 <= X"2";
debug_num_0 <= X"7";

debug_led_red <= (others => '0');
debug_led_grn <= (others => '0');

comparatorval <= to_unsigned(383, 9); 
 
------------------------------Incrementing---------------------------------------
process begin
   wait until rising_edge(i_clock);
	  if (i_reset = '1') then
		local_wren <= "001";
		col_index  <= to_unsigned(0, 8);
		o_mode(0) <= i_reset;
		absolute_row_counter <= to_unsigned(0, 8); 

	  elsif(i_valid = '1') then		 			 
		 col_index <= col_index + 1;
		 pr_st1 <= '1';			 

			if(col_index = "111111111") then
				--PLACEHOLDER: XYZ
				absolute_row_counter <= absolute_row_counter + 1;
				if(absolute_row_counter = "111111111") then 
					local_wren <= "001";
					pr_st1 <= '0';
				else 
					--If this doesn't work move back up to XYZ
					local_wren <= local_wren rol 1;
				end if;
			end if;		

	 end if;
end process;
------------------------------Incrementing---------------------------------------

---------------------------Convolution Table Move--------------------------------	
process begin
	wait until rising_edge(i_clock);
		if(i_valid = '1') then
			A <= B;
			H <= I;
			G <= F;
			B <= C;
			I <= D;
			F <= E;
			C <= pre_c;
			D <= pre_d;
			E <= i_pixel;
		end if;
end process;
	
pre_c <= std_logic_vector(q_vector(0)) when local_wren(2) = '1' else
		 std_logic_vector(q_vector(1)) when local_wren(0) = '1' else
		 std_logic_vector(q_vector(2));
		  
pre_d <= std_logic_vector(q_vector(1))  when local_wren(2) = '1' else
		 std_logic_vector(q_vector(2))  when local_wren(0) = '1' else
		 std_logic_vector(q_vector(0));

convolution_calc <= '1' when (absolute_row_counter >= to_unsigned(2, 8) AND col_index >= to_unsigned(2, 8)) else '0';
v(0) <=  (convolution_calc and i_valid) when i_reset = '0' else '0'; 	
---------------------------Convolution Table Move--------------------------------	


----------------------------DFD -------------------------------------------------
o_mode(1) <= NOT i_reset;
o_mode(0) <= i_reset OR pr_st1 OR pr_st2 OR pr_out;
 
add1 <= term_a1 + term_a2;

term_a1 <= resize(unsigned(B),9) when v(0) = '1' else
		   resize(unsigned(D),9) when v(1) = '1' else
		   resize(unsigned(F),9) when v(2) = '1' else
		   resize(unsigned(A),9) when v(3) = '1'; 
		   
term_a2 <= resize(unsigned(C),9) when v(0) = '1' else
		   resize(unsigned(E),9) when v(1) = '1' else
		   resize(unsigned(G),9) when v(2) = '1' else
		   resize(unsigned(H),9) when v(3) = '1';
		   
max1 <= m1x when m1x >= m1y else m1y;
m1x <=    unsigned(A) when v(0) = '1' else
		  unsigned(C) when v(1) = '1' else
		  unsigned(H) when v(2) = '1' else
		  unsigned(B) when v(3) = '1'; 

m1y <=    unsigned(D) when v(0) = '1' else 
		  unsigned(F) when v(1) = '1' else
		  unsigned(E) when v(2) = '1' else
		  unsigned(G) when v(3) = '1';

process (max1) begin
	if v(0) = '1' then
		if max1 = unsigned(A) then
			dir1(0) <= NORTHWEST;
		else --D
			dir1(0) <= EAST;
		end if; 
	elsif v(1) = '1' then
		if max1 = unsigned(C) then
			dir1(1) <= NORTHEAST;
		else --F
			dir1(1) <= SOUTH;
		end if;
	elsif v(2) = '1' then
		if max1 = unsigned(H) then
			dir1(2) <= WEST;
		else --E
			dir1(2) <= SOUTHEAST;
		end if;
	elsif v(3) = '1' then
		if max1 = unsigned(B) then
			dir1(2) <= NORTH;
		else --G
			dir1(2) <= SOUTHWEST;
		end if;
	end if;

end process;
	
process begin
     wait until rising_edge(i_clock);
		r1 <= add2;
end process;

add2 <= resize(add1,10) + resize(max1,10);

------------------- Stage 2 ----------------------
max2 <= r1 when r1 >= r3 else r3;			
process begin   
    wait until rising_edge(i_clock);	
		  --v1 special case r3
		  if v(1) = '1' then
			r3 <= r1;
			pr_st2 <= pr_st1;
			
		  --v4 special case r3
		  elsif v(4) = '1' then
			r3 <= max2 rol 8; 
		  else
			r3 <= max2;			
	      end if; 
end process;

process begin
    wait until rising_edge(i_clock);
	  sub <= resize(r5 - r3, 15);
end process;

------------------- Stage 3 ----------------------
process begin
   wait until rising_edge(i_clock);	 
	 pr_out <= pr_st2;
	 r5 <= add3; 
end process;

process begin
   wait until rising_edge(i_clock);	  
    if i_ce = '1' then
	  r2 <= add1;	
   end if;
end process;

add3 <=	 resize(r2 + add1, 14) when v(1) = '1' else 
         resize((1 + (r5 rol 2)), 14) when v(4) = '1' else
		 resize(add1 + r5, 14);
		 
----------------  other -----------------\
o_dir <= dir1(0);
o_edge <= '1' when sub > comparatorval else '0';
edgeval <=  to_unsigned(1, 10) when sub > comparatorval else
		    to_unsigned(0, 10);
			
process begin
  wait until rising_edge(i_clock);
    r4 <= unsigned(edgeval);
end process;

end architecture;
