----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:32:03 04/16/2024 
-- Design Name: 
-- Module Name:    transmitter - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity transmitter is
    Port ( CMD_IN : in  STD_LOGIC_VECTOR (47 downto 0);
			  CLK : in  STD_LOGIC;
           TX_BGN : in  STD_LOGIC;
           TX_END : out  STD_LOGIC;
			  MOSI : out STD_LOGIC);
end transmitter;

architecture Behavioral of transmitter is

signal counter : UNSIGNED(5 downto 0) := "101111";
type state_type is (AWAIT, TRANSMIT);
signal state : state_type := AWAIT;

begin

process (clk) 
begin 
	if (rising_edge(clk)) then 
		case state is 
			when AWAIT =>
				if (TX_BGN = '1') then
					state <= TRANSMIT;
					TX_END <= '0';
					counter <= "101111";
				end if;
			when TRANSMIT => 
				if (counter = "000000") then 
					state <= AWAIT;
					TX_END <= '1';
				else 
					counter <= counter - 1;
				end if;
		end case;
	end if;
end process;

MOSI <= CMD_IN(to_integer(counter));

end Behavioral;

