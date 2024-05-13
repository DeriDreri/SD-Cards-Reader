
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity command_controler is
    Port ( button : in  STD_LOGIC;
           tx_bgn : out  STD_LOGIC;
			  response : in STD_LOGIC;
           cmd_out : out  STD_LOGIC_VECTOR (47 downto 0);
			  response_in : in STD_LOGIC_VECTOR (7 downto 0);
			  clk : in STD_LOGIC);
end command_controler;

architecture Behavioral of command_controler is

type state_type is (AWAIT, CMD0, CMD1_START, CMD1_END);
signal state : state_type := AWAIT;

begin 

process(clk) 
begin 
	if (rising_edge(clk)) then 
		case state is 
			when AWAIT => 
				cmd_out <= "010000000000000000000000000000000000000010010101";
				if (button = '1') then 
					state <= CMD0;
					tx_bgn <= '1';
				end if;
			when CMD0 =>
				if (response = '1') then
					tx_bgn <= '0';
					state <= CMD1_START;
				end if;
			when CMD1_START => 
				if (response = '1') then
					cmd_out <= "010000010000000000000000000000000000000010010101";
					tx_bgn <= '1';
				else
					state <= CMD1_END;
				end if;
			when CMD1_END =>
				if (response = '1') then
					if (response_in(0) = '0') then
						tx_bgn <= '0';
					else 
						state <= CMD1_START;
					end if;
				end if;
		end case;
	end if;
end process;



end Behavioral;

