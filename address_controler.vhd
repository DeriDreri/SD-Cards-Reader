library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity address_controler is
    Port ( data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           f0 : in  STD_LOGIC;
           data_ready : in  STD_LOGIC;
			  clk_in : in STD_LOGIC;
           address : out  STD_LOGIC_VECTOR (23 downto 0);
			  address_ready : out STD_LOGIC);
			  
end address_controler;

architecture Behavioral of address_controler is

signal data : STD_LOGIC_VECTOR(23 downto 0) := x"000000";

begin
	process(clk_in)
	begin
	if (rising_edge(clk_in)) then
		if (data_ready = '1' and f0 = '0') then 
			case data_in is 
				when x"45" => data <= data(19 downto 0) & x"0";
				when x"16" => data <= data(19 downto 0) & x"1";
				when x"1e" => data <= data(19 downto 0) & x"2";
				when x"26" => data <= data(19 downto 0) & x"3";
				when x"25" => data <= data(19 downto 0) & x"4";
				when x"2e" => data <= data(19 downto 0) & x"5";
				when x"36" => data <= data(19 downto 0) & x"6";
				when x"3d" => data <= data(19 downto 0) & x"7";
				when x"3e" => data <= data(19 downto 0) & x"8";
				when x"46" => data <= data(19 downto 0) & x"9";
				when x"1c" => data <= data(19 downto 0) & x"a";
				when x"32" => data <= data(19 downto 0) & x"b";
				when x"21" => data <= data(19 downto 0) & x"c";
				when x"23" => data <= data(19 downto 0) & x"d";
				when x"24" => data <= data(19 downto 0) & x"e";
				when x"2b" => data <= data(19 downto 0) & x"f";
				when x"3b" => data <= std_logic_vector(unsigned(data)-1);
				when x"42" => data <= std_logic_vector(unsigned(data)+1);
				when x"66" => data <= x"0" & data(23 downto 4);
				when others => data <= data;
			end case;
		end if;
	end if;
	
	end process;
	
	process(clk_in)
	begin
	if (rising_edge(clk_in)) then
		if (data_ready = '1' and f0 = '0') then
			if (data_in = x"5a") then
				address_ready <= '1';
			end if;
		else 
			address_ready <= '0';
		end if;
	end if;
	end process;

	
	address <= data;

end Behavioral;