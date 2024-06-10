----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:13 04/30/2024 
-- Design Name: 
-- Module Name:    spi_lcd_adapter - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity address_lcd_adapter is
    Port ( address_in : in  STD_LOGIC_VECTOR (23 downto 0);
           lcd_out : out  STD_LOGIC_VECTOR (63 downto 0);
           blank : out  STD_LOGIC_VECTOR (15 downto 0));
end address_lcd_adapter;

architecture Behavioral of address_lcd_adapter is

begin

process(address_in) 
begin
	
	lcd_out <= x"ffffffffff" & address_in;

end process;

blank <= x"ffc0";

end Behavioral;

