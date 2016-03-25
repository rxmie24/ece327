library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package state_pkg is
  subtype output_data is std_logic_vector(7 downto 0); --KG (maybe unsigned?)
    type type_q_vector is array(natural range <>) of output_data;

  subtype direction_type is std_logic_vector(2 downto 0);
	type dir_vector is array(natural range <>) of direction_type;

  type pixpair1 is RECORD
	p_data : std_logic_vector(7 downto 0);
	p_dir : std_logic_vector(2 downto 0);
  end RECORD;
  
  type pixpair2 is RECORD
	p_data : unsigned(12 downto 0);
	p_dir : std_logic_vector(2 downto 0);
  end RECORD;
  
  constant NORTHWEST : direction_type := "100";
  constant NORTH     : direction_type := "010";
  constant NORTHEAST : direction_type := "110";
  constant EAST      : direction_type := "000";
  constant SOUTHEAST : direction_type := "101";
  constant SOUTH     : direction_type := "011";
  constant SOUTHWEST : direction_type := "111";
  constant WEST      : direction_type := "001";
  
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
    o_row      : out std_logic_vector(7 downto 0); -- row number of the input image
    o_col      : out std_logic_vector(7 downto 0); -- row number of the input image
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
	

	function comp_max1(
		pixel1 : std_logic_vector;
		pixel1_dir : std_logic_vector;
		pixel2 : std_logic_vector;
		pixel2_dir : std_logic_vector
		) return pixpair1 is variable maxPix : pixpair1;
	begin
		if pixel1 >= pixel2 then
			maxPix.p_data := pixel1;
			maxPix.p_dir := pixel1_dir;
		else
			maxPix.p_data := pixel2;
			maxPix.p_dir := pixel2_dir;
		end if;
		
		return maxPix;
	end function;	

	function comp_max2(
		pixel1 : unsigned;
		pixel1_dir : std_logic_vector;
		pixel2 : unsigned;
		pixel2_dir : std_logic_vector
		) return pixpair2 is variable maxPix : pixpair2;
	begin
		if pixel1 >= pixel2 then
			maxPix.p_data := pixel1;
			maxPix.p_dir := pixel1_dir;
		else
			maxPix.p_data := pixel2;
			maxPix.p_dir := pixel2_dir;
		end if;
		
		return maxPix;
	end function;	
	
	function "rol" ( a : std_logic_vector; n : natural )
		return std_logic_vector
	  is begin
		return std_logic_vector( unsigned(a) rol n );
	end function;

	signal A, B, C, D, E, F, G, H, I  : std_logic_vector(7 downto 0);
	signal pre_c : std_logic_vector(7 downto 0);
	signal pre_d : std_logic_vector(7 downto 0);
  
	signal col_idx                  : unsigned(7 downto 0);
	signal row_idx       			  : unsigned(7 downto 0);	
	signal q_vector                   : type_q_vector(2 downto 0);
	signal local_wren                 : std_logic_vector(2 downto 0);
	
	signal v : std_logic_vector(7 downto 0);
				
	signal COMP_VAL : signed(14 downto 0);
    signal MAX_COUNT : unsigned(7 downto 0);
	
	signal computation_ready : std_logic;
	signal processing_stage1 : std_logic;
	signal processing_stage2 : std_logic;
	signal processing_stage3 : std_logic;
	
	signal local_output_edge : std_logic;
	signal local_output_dir  : std_logic;
	
	------------STAGE 1 STUFF------------
	signal stage1_max : pixpair1;
	signal stage1_add1  : unsigned(8 downto 0);
	signal stage1_add2  : unsigned(9 downto 0);
	signal stage1_addterm1, stage1_addterm2 : unsigned(8 downto 0);
	signal r1 : pixpair2; --Output to be fed into Stage 2
	
	------------STAGE 2 STUFF------------
	signal stage2_max : pixpair2;
	signal stage2_sub  : signed(14 downto 0);
	signal r3 : pixpair2; --Output to be fed into Stage 3
	signal r4 : std_logic;
	signal r6 : signed(14 downto 0); --- optimize later
	signal edge_detected : std_logic;
	signal final_dir_st2 : std_logic_vector(2 downto 0);

	------------STAGE 3 STUFF------------
	signal stage3_add : unsigned(13 downto 0);
	signal r2 : unsigned(8 downto 0); 
	signal r5 : unsigned(13 downto 0);
	signal final_dir : std_logic_vector(2 downto 0);
	
begin  

--Changed this to 15 to make it easy for the comparator later - Ramie
COMP_VAL <= to_signed(383, 15);
MAX_COUNT <= to_unsigned(255, 8);

mem_Slot : for i in 0 to 2 generate 
    mem : entity work.mem(main)
    port map (	
      address => std_logic_vector(col_idx), 
      clock => i_clock,
      data => i_pixel,
      wren => local_wren(i),
      q => q_vector(i)
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

o_row <= std_logic_vector(row_idx); 
o_col <= std_logic_vector(col_idx);

o_mode(1) <= NOT i_reset;
o_mode(0) <= i_reset OR processing_stage1 OR processing_stage2 OR processing_stage3;

-- Incrementing and setting up stuff --
process begin 
   wait until rising_edge(i_clock);
	  if (i_reset = '1') then
		local_wren <= "001";
		col_idx <= to_unsigned(0, 8);
		row_idx <= to_unsigned(0, 8); 
	  else
		if(i_valid = '1') then		
			 processing_stage1 <= '1';			 
			if(col_idx = MAX_COUNT) then
				row_idx <= row_idx + 1;
				if(row_idx = MAX_COUNT) then 
					local_wren <= "001";
					processing_stage1 <= '0';
				else 
					local_wren <= local_wren rol 1;
				end if;
			end if;
			col_idx <= col_idx + 1;
		end if;		
	 end if;
end process;

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

-------------Valid Bit States ------
computation_ready <= '1' when (row_idx >= to_unsigned(2, 8) AND col_idx >= to_unsigned(2, 8)) else '0';
--v(0) <= (computation_ready AND i_valid) when i_reset = '0' else '0';
process begin 
  wait until rising_edge(i_clock);
    
    if(i_reset = '1') then
	  v(7 downto 1) <= "0000000";
	  v(0) <= '0';
	else
		v(0) <= (computation_ready AND i_valid);
		v(7 downto 1) <= v(6 downto 0); 
	end if;
end process;
		  
		  
------------ STAGE 1 --------
stage1_add1 <= stage1_addterm1 + stage1_addterm2;

stage1_addterm1 <= resize(unsigned(B),9) when v(0) = '1' else
				   resize(unsigned(D),9) when v(1) = '1' else
				   resize(unsigned(F),9) when v(2) = '1' else
				   resize(unsigned(A),9) when v(3) = '1' else
				   "000000000"; 
		   
stage1_addterm2 <= resize(unsigned(C),9) when v(0) = '1' else
				   resize(unsigned(E),9) when v(1) = '1' else
				   resize(unsigned(G),9) when v(2) = '1' else
				   resize(unsigned(H),9) when v(3) = '1' else
				   "000000000"; 
		   
stage1_max <= comp_max1(A, NORTHWEST, D, EAST) when v(0) = '1' else
			  comp_max1(C, NORTHEAST, F, SOUTH) when v(1) = '1' else
			  comp_max1(H, WEST, E, SOUTHEAST) when v(2) = '1' else
			  comp_max1(B, NORTH, G, SOUTHWEST) when v(3) = '1' else
			  comp_max1("00000000", "000", "00000000", "000"); 


stage1_add2 <= resize(stage1_add1, 10) + resize(unsigned(stage1_max.p_data), 10);
process begin
     wait until rising_edge(i_clock);
		r1.p_data <= resize(stage1_add2, 13);
		r1.p_dir <= stage1_max.p_dir; ---SKETCHY
end process;

------------ STAGE 2 --------
stage2_max <= comp_max2(r1.p_data, r1.p_dir, r3.p_data, r3.p_dir);

process begin   
    wait until rising_edge(i_clock);	
		  --v1 special case r3
		  -- changed v1 to v2
		  if v(1) = '1' then
			r3.p_data <= resize(r1.p_data, 13);
			r3.p_dir <= r1.p_dir;			
		  --v4 special case r3
		  elsif v(4) = '1' then
			r3.p_data <= SHIFT_LEFT(stage2_max.p_data, 3); --SKETCHY
			r3.p_dir <= stage2_max.p_dir;
			final_dir_st2 <= stage2_max.p_dir;
		  else
			r3.p_data <= stage2_max.p_data; 
			r3.p_dir <= stage2_max.p_dir;
	      end if; 
		  
		  processing_stage2 <= processing_stage1;
end process;

stage2_sub <= signed(resize(r5, 15)) - signed(resize(r3.p_data, 15)); --MAD SKETCH

process begin
   wait until rising_edge(i_clock);	 
     if v(5) = '1' then
		 r6 <= stage2_sub; 
	end if;
end process;

--Seems like theres a hang after stage2
------------ STAGE 3 --------
process begin
   wait until rising_edge(i_clock);	 
	 processing_stage3 <= processing_stage2;
	 r5 <= stage3_add; 
end process;

process begin
   wait until rising_edge(i_clock);	   
    if  v(0)= '1' then
	  r2 <= stage1_add1;	
   end if;
end process;

stage3_add <= resize(r2, 14) + resize(stage1_add1, 14) when v(1) = '1' else 
			  resize(r5, 14) + resize(SHIFT_LEFT(r5, 1), 14) when v(4) = '1' else
			  resize(stage1_add1, 14) + resize(r5, 14);

--------------------------------------------------
--Potential optimization by putting it into clocked process
edge_detected <= '1' when r6 > 383  else '0';	 

process begin
  wait until rising_edge(i_clock);
  if v(6) = '1' then
	final_dir <= final_dir_st2;
	r4 <= edge_detected;
  else
	r4 <= '0';
  end if;
end process;

o_row <= std_logic_vector(row_idx);
o_edge <= r4;
o_dir <= final_dir when r4 = '1' else "000";
o_valid <= v(7);

end architecture;