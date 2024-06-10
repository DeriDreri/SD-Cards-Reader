
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity command_controler is
    Port ( tx_bgn : out  STD_LOGIC;
			  response : in STD_LOGIC;
           cmd_out : out  STD_LOGIC_VECTOR (47 downto 0);
			  response_in : in STD_LOGIC_VECTOR (7 downto 0);
			  address_in : in STD_LOGIC_VECTOR(23 downto 0);
			  adress_ready : in STD_LOGIC;
			  data_over : in STD_LOGIC;
			  clk : in STD_LOGIC);
end command_controler;

architecture Behavioral of command_controler is

type state_type is (CMD0, CMD1_START, CMD1_END, DATA_CMD_AWAIT, DATA_READ);
signal state : state_type := CMD0;

begin 

process(clk) 
begin 
	if (rising_edge(clk)) then 
		case state is 
			when CMD0 =>
				cmd_out <= "010000000000000000000000000000000000000010010101";
				if (response = '1') then
					tx_bgn <= '0';
					state <= CMD1_START;
				else 
					tx_bgn <= '1';
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
						state <= DATA_CMD_AWAIT;
					else 
						state <= CMD1_START;
					end if;
				end if;
			when DATA_CMD_AWAIT => 
				tx_bgn <= '0';
				if (adress_ready = '1' and data_over = '1') then 
					state <= DATA_READ;
				end if;
			when DATA_READ =>
				if (response = '1') then
					cmd_out <= "01010001" & address_in & "00000000" & "00000001";
					tx_bgn <= '1';
				else 
					state <= DATA_CMD_AWAIT;
					
				end if;
				
		end case;
	end if;
end process;



end Behavioral;

