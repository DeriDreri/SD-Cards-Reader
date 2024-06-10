--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:47:38 05/14/2024
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/UCISW2/WorkingOne/SD-Reader/test_vga_adapter.vhd
-- Project Name:  SD-Reader
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: spi_vga_adapter
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_vga_adapter IS
END test_vga_adapter;
 
ARCHITECTURE behavior OF test_vga_adapter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT spi_vga_adapter
    PORT(
         data_ready : IN  std_logic;
         clk : IN  std_logic;
         data_in : IN  std_logic_vector(7 downto 0);
         char : OUT  std_logic_vector(7 downto 0);
         char_ready : OUT  std_logic := '0'
        );
    END COMPONENT;
    

   --Inputs
   signal data_ready : std_logic := '0';
   signal clk : std_logic := '0';
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal char : std_logic_vector(7 downto 0);
   signal char_ready : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: spi_vga_adapter PORT MAP (
          data_ready => data_ready,
          clk => clk,
          data_in => data_in,
          char => char,
          char_ready => char_ready
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
  data_ready <= '0', '1' after 50 ns, '0' after 300 ns, '1' after 500 ns, '0' after 1000 ns, '1' after 1300 ns, '0' after 2000 ns;
  data_in <= "00001111", "00000000" after 1200 ns;

END;
