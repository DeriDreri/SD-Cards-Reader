library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spi_vga_adapter is
    Port ( data_ready : in  STD_LOGIC;
			  vga_busy : in STD_LOGIC;
			  clk : in STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           char : out  STD_LOGIC_VECTOR (7 downto 0);
			  init_out : out STD_LOGIC;
           char_ready : out  STD_LOGIC);
end spi_vga_adapter;

architecture Behavioral of spi_vga_adapter is

type state_type is (INIT, AWAIT, DECODE_LS, TRANSMIT_1, DECODE_MS, TRANSMIT_2, PUT_SPACE, TRANSMIT_SPACE, WAIT_FOR_READY_LOW);
signal state : state_type := INIT;

begin

process(clk)
begin 
	if (rising_edge(clk)) then 
		case state is
			when INIT => 
				char <= x"00";
				char_ready <= '0';
				init_out <= '1';
				state <= AWAIT;
			when AWAIT => 
				init_out <= '0';
				if (data_ready = '1' and vga_busy = '0') then
					state <= DECODE_MS;
				end if;
				
			when DECODE_MS =>
				if (unsigned(data_in(7 downto 4)) < 10) then
					char <= "0011" & std_logic_vector(unsigned(data_in(7 downto 4)));
				else 
					char <= "0100" & std_logic_vector(unsigned(data_in(7 downto 4)) - 9);
				end if;
				
				state <= TRANSMIT_1; 
			when TRANSMIT_1 =>
				char_ready <= '1';
				state <= DECODE_LS;
				
			when DECODE_LS =>
				char_ready <= '0'; 	
				
				if (unsigned(data_in(3 downto 0)) < 10) then
					char <= "0011" & std_logic_vector(unsigned(data_in(3 downto 0)));
				else 
					char <= "0100" & std_logic_vector(unsigned(data_in(3 downto 0)) - 9);
				end if;
				
				state <= TRANSMIT_2;
				
			when TRANSMIT_2 =>
				char_ready <= '1';
				state <= PUT_SPACE;
				
			when PUT_SPACE =>
				char_ready <= '0';
				char <= x"20";
				state <= TRANSMIT_SPACE;
				
			when TRANSMIT_SPACE =>
				char_ready <= '1';
				state <= WAIT_FOR_READY_LOW;
				
			when WAIT_FOR_READY_LOW =>
				char_ready <= '0';
				if (data_ready = '0') then
					state <= AWAIT;
				end if;
				
		end case;
		
	end if;

end process;


end Behavioral;

--
--
--
--  [ AWAIT ] -- data_ready = '1' -- > [ DECODE MS 4bit] -- > [ TRANSMIT 1]  -- > [ DECODE LS 4bit] -- > [ TRANSMIT 2]   
--		^                                                                                                        |
--		|                                                                                                        |
--		|                                                                                                       \/
-- [ WAIT_FOR_READY_0]     <------------------ [ TRANSMIT SPACE ] <------------------------------------ [ PUT SPACE ]
--
--

