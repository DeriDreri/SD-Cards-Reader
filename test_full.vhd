-- Vhdl test bench created from schematic C:\Users\lab\Desktop\UCISW2\SPI-SD\main_full.sch - Tue Apr 30 11:49:48 2024
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY main_full_main_full_sch_tb IS
END main_full_main_full_sch_tb;
ARCHITECTURE behavioral OF main_full_main_full_sch_tb IS 

   COMPONENT main_full
   PORT( LCD_E	:	OUT	STD_LOGIC; 
          LCD_RS	:	OUT	STD_LOGIC; 
          LCD_RW	:	OUT	STD_LOGIC; 
          LCD_D	:	INOUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          SF_CE	:	OUT	STD_LOGIC; 
          Clk_50MHz	:	IN	STD_LOGIC; 
          SDC_MOSI	:	OUT	STD_LOGIC; 
          SDC_SCK	:	OUT	STD_LOGIC; 
          SDC_SS	:	OUT	STD_LOGIC; 
          SDC_MISO	:	IN	STD_LOGIC; 
          SW0	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL LCD_E	:	STD_LOGIC;
   SIGNAL LCD_RS	:	STD_LOGIC;
   SIGNAL LCD_RW	:	STD_LOGIC;
   SIGNAL LCD_D	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL SF_CE	:	STD_LOGIC;
   SIGNAL Clk_50MHz	:	STD_LOGIC := '0';
   SIGNAL SDC_MOSI	:	STD_LOGIC;
   SIGNAL SDC_SCK	:	STD_LOGIC;
   SIGNAL SDC_SS	:	STD_LOGIC;
   SIGNAL SDC_MISO	:	STD_LOGIC;
   SIGNAL SW0	:	STD_LOGIC;

BEGIN

   UUT: main_full PORT MAP(
		LCD_E => LCD_E, 
		LCD_RS => LCD_RS, 
		LCD_RW => LCD_RW, 
		LCD_D => LCD_D, 
		SF_CE => SF_CE, 
		Clk_50MHz => Clk_50MHz, 
		SDC_MOSI => SDC_MOSI, 
		SDC_SCK => SDC_SCK, 
		SDC_SS => SDC_SS, 
		SDC_MISO => SDC_MISO, 
		SW0 => SW0
   );

	SW0 <= '0', '1' after 5100 ns, '0' after 5500 ns;
	Clk_50MHz <= not Clk_50MHz after 10 ns;
	SDC_MISO <= '0';

END;
