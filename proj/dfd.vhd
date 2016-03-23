  subtype direction_type is std_logic_vector(2 downto 0);
  constant NORTHWEST : direction_type := "100";
  constant NORTH     : direction_type := "010";
  constant NORTHEAST : direction_type := "110";
  constant EAST      : direction_type := "000";
  constant SOUTHEAST : direction_type := "101";
  constant SOUTH     : direction_type := "011";
  constant SOUTHWEST : direction_type := "111";
  constant WEST      : direction_type := "001";



comparatorval : unsigned(++ 7 downto 0);
edgeval       :  std_logic;

comparatorval <= to_unsigned(383, 9); 


------------------- Stage 1 ----------------------


add1 <= B + C when v(0) = '1' elsif 
		D + E when v(1) = '1' elsif
		F + G when v(2) = '1' elsif
		A + H when v(3) = '1'; 

max1val <= max1(A,D) when v(0) = '1' elsif 
		   max1(C,F) when v(1) = '1' elsif
		   max1(E,H) when v(2) = '1' elsif
		   max1(G,B) when v(3) = '1'; 
		   

process begin
     wait until rising_edge(i_clock);
		r1 <= add2;
end process;

add2 <= add1 + max1val;  -- add2

------------------- Stage 2 ----------------------

process begin   
    wait until rising_edge(i_clock);
	
		  --v1 special case r3
		  if v(1) = '1' then
			r3 <= r1;
		  --v4 special case r3
		  else if v(4) = '1' then
			r3 <= max2val sla 8; 
		  else
			r3 <= max2(r1,r3);
			
	      end if; 
end process;

process begin
    wait until rising_edge(i_clock);
	  subval <= r5 - r3;
end process;

------------------- Stage 3 ----------------------

process begin
   wait until rising_edge(i_clock);	  
	 r5 <= add3; 
end process;

process begin
   wait until rising_edge(i_clock);	  
    if ce = '1' then
	  r2 <= add1;	
   end if;
end process;



add3 <=	 r2 + add1 when v(1) = '1' else 
         1 + (r5 sla 2) when v(4) = '1' else
		 add1 + r5;
			  
----------------  other -----------------

edgeval <= '1'  when subval > comparatorval else
		   '0';

process
  wait until rising_edge(i_clock);
    r4 <= edgeval;
end process;