library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity spi_controler is
    Port ( -- Control Interface
			  TX_BGN : in  STD_LOGIC;
           CMD_IN : in  STD_LOGIC_VECTOR (47 downto 0);
           R_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
           R_READY : out  STD_LOGIC := '0';
			  
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
type state_type is (AWAIT, TRANSMIT, AWAIT_RESPONSE, READ_RESPONSE);
signal state : state_type := AWAIT;

-- Internal signal dummies
signal counter : STD_LOGIC_VECTOR(7 downto 0) := x"00";
signal signal_sck : std_logic := '0';

-- Counter for transmission 
signal counter_tx : UNSIGNED(5 downto 0) := "000000";
signal counter_rx : UNSIGNED(2 downto 0) := "111";

-- Data buffors
signal response_buffor : std_logic_vector(7 downto 0) := x"dd";

begin

-- State machine (TODO)
process(signal_sck)
begin
	if (falling_edge(signal_sck)) then
		case state is	
			when AWAIT =>
				if (TX_BGN = '1') then 
					counter_tx <= "101111";
					state <= TRANSMIT;
					R_READY <= '0';
					CS <= '0';
				end if;
			when TRANSMIT =>
				if (counter_tx = "00000") then
					state <= AWAIT_RESPONSE;
				else 
					counter_tx <= counter_tx-1;
				end if;
			when AWAIT_RESPONSE => 
				if (MISO = '0') then 
					response_buffor <= response_buffor(6 downto 0) & MISO;
					state <= READ_RESPONSE;
					counter_rx <= counter_rx-1;
				end if;
			when READ_RESPONSE => 
				response_buffor <= response_buffor(6 downto 0) & MISO;
				if (counter_rx = "000") then
					counter_rx <= "111";
					R_READY <= '1';
					state <= AWAIT;
					CS <= '1';
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


SCK <= signal_sck;
R_OUT <= response_buffor;
MOSI <= CMD_IN(to_integer(counter_tx));

end Behavioral;

