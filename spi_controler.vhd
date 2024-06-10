library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity spi_controler is
    Port ( -- Control Interface
			  TX_BGN : in  STD_LOGIC;
           CMD_IN : in  STD_LOGIC_VECTOR (47 downto 0);
           DATA_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
			  RESPONSE_READY : out STD_LOGIC := '0';
           DATA_READY : out  STD_LOGIC := '0';
			  DATA_OVER : out STD_LOGIC := '1';
			  
			  -- CLK
           CLK : in  STD_LOGIC;
			  
			  -- SPI Interface
			  MOSI : out STD_LOGIC;
			  MISO : in STD_LOGIC;
			  SCK : out STD_LOGIC;
			  CS : out STD_LOGIC := '1');
end spi_controler;

architecture Behavioral of spi_controler is

-- State machine
type state_type is (INIT, AWAIT, TRANSMIT, AWAIT_RESPONSE, READ_RESPONSE, AWAIT_DATA, READ_DATA);
signal state : state_type := INIT;

-- Internal signal dummies
signal counter : STD_LOGIC_VECTOR(7 downto 0) := x"00";
signal signal_sck : std_logic := '0';

-- Counter for transmission 
signal counter_init : UNSIGNED(6 downto 0) := "1111111";
signal counter_tx : UNSIGNED(5 downto 0) := "000000";
signal counter_rx : UNSIGNED(2 downto 0) := "111";
signal counter_data : UNSIGNED(9 downto 0) := "1000000000";

-- Data buffors
signal data_buffor : std_logic_vector(7 downto 0) := x"ff";

begin

-- State machine
process(signal_sck)
begin
	if (falling_edge(signal_sck)) then
		case state is	
			when INIT => 
				RESPONSE_READY <= '0';
				if (counter_init = "0000000") then
					state <= AWAIT;
				else 
					counter_init <= counter_init - 1;
				end if;
			when AWAIT =>
				DATA_OVER <= '1';
				if (TX_BGN = '1') then 
					counter_tx <= "101111";
					state <= TRANSMIT;
					DATA_READY <= '0';
					RESPONSE_READY <= '0';
					DATA_OVER <= '0';
					CS <= '0';
				end if;
			when TRANSMIT =>
				DATA_OVER <= '0';
				if (counter_tx = "00000") then
					state <= AWAIT_RESPONSE;
				else 
					counter_tx <= counter_tx-1;
				end if;
			when AWAIT_RESPONSE => 
				if (MISO = '0') then 
					data_buffor <= data_buffor(6 downto 0) & MISO;
					state <= READ_RESPONSE;
					counter_rx <= counter_rx-1;
				end if;
			when READ_RESPONSE => 
				data_buffor <= data_buffor(6 downto 0) & MISO;
				if (counter_rx = "000") then
					counter_rx <= "111";
					RESPONSE_READY <= '1';
					if (CMD_IN(45 downto 40) = "010001") then
						state <= AWAIT_DATA;
					else
						state <= AWAIT;
						CS <= '1';
					end if;
				else 
					counter_rx <= counter_rx-1;
				end if;
			when AWAIT_DATA =>
				if (MISO = '0') then
					state <= READ_DATA;
				end if;
			when READ_DATA =>
				DATA_READY <= '0';
				data_buffor <= data_buffor(6 downto 0) & MISO;
				if (counter_rx = "000") then
					counter_rx <= "111";
					DATA_READY <= '1';
					if (counter_data = "0000000001") then
						counter_data <= "1000000000";
						state <= AWAIT;
						CS <= '1';
					else
						counter_data <= counter_data - 1;
					end if;
				else 
					counter_rx <= counter_rx-1;
				end if;
				
			end case;
	end if;
end process;

-- SCK generation
process (clk) 
begin 
	if (rising_edge(clk)) then
		counter <= counter + x"01";
		if (counter = X"00") then 
			signal_sck <= '1';
		elsif (counter = X"80") then
			signal_sck <= '0';
		end if;
	end if;
end process;


DATA_OUT <= data_buffor;
SCK <= signal_sck;
MOSI <= CMD_IN(to_integer(counter_tx));

end Behavioral;

