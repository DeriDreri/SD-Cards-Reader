----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:47:00 04/16/2024 
-- Design Name: 
-- Module Name:    controler - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controler is
    Port ( clk_in : in  STD_LOGIC;
           sclk : out  STD_LOGIC
			  );
end controler;

architecture Behavioral of controler is

signal counter : STD_LOGIC_VECTOR(7 downto 0) := x"00";

begin

process(clk_in) 
begin 
	if (rising_edge(clk_in)) then
		counter <= counter + x"01";
		if (counter = "00000000") then 
			sclk <= '0';
		elsif (counter = "10000000") then 
			sclk <= '1';
		end if;
	end if;

end process;

end Behavioral;

