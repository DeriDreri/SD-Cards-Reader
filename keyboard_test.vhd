-- Vhdl test bench created from schematic C:\Users\lab\Desktop\UCISW2\EvenMoreWorkingOne\SD-Reader\main_full.sch - Tue May 28 11:05:05 2024
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
   PORT( Clk_50MHz	:	IN	STD_LOGIC; 
          VGA_B	:	OUT	STD_LOGIC; 
          VGA_G	:	OUT	STD_LOGIC; 
          VGA_R	:	OUT	STD_LOGIC; 
          VGA_VS	:	OUT	STD_LOGIC; 
          VGA_HS	:	OUT	STD_LOGIC; 
          SDC_MISO	:	IN	STD_LOGIC; 
          SDC_SS	:	OUT	STD_LOGIC; 
          SDC_SCK	:	OUT	STD_LOGIC; 
          SDC_MOSI	:	OUT	STD_LOGIC; 
          SW0	:	IN	STD_LOGIC; 
          PS2_Clk	:	IN	STD_LOGIC; 
          PS2_Data	:	IN	STD_LOGIC; 
          LCD_E	:	OUT	STD_LOGIC; 
          LCD_RS	:	OUT	STD_LOGIC; 
          LCD_RW	:	OUT	STD_LOGIC; 
          LCD_D	:	INOUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          SF_CE	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL Clk_50MHz	:	STD_LOGIC;
   SIGNAL VGA_B	:	STD_LOGIC;
   SIGNAL VGA_G	:	STD_LOGIC;
   SIGNAL VGA_R	:	STD_LOGIC;
   SIGNAL VGA_VS	:	STD_LOGIC;
   SIGNAL VGA_HS	:	STD_LOGIC;
   SIGNAL SDC_MISO	:	STD_LOGIC;
   SIGNAL SDC_SS	:	STD_LOGIC;
   SIGNAL SDC_SCK	:	STD_LOGIC;
   SIGNAL SDC_MOSI	:	STD_LOGIC;
   SIGNAL SW0	:	STD_LOGIC;
   SIGNAL PS2_Clk	:	STD_LOGIC;
   SIGNAL PS2_Data	:	STD_LOGIC;
   SIGNAL LCD_E	:	STD_LOGIC;
   SIGNAL LCD_RS	:	STD_LOGIC;
   SIGNAL LCD_RW	:	STD_LOGIC;
   SIGNAL LCD_D	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL SF_CE	:	STD_LOGIC;

BEGIN

   UUT: main_full PORT MAP(
		Clk_50MHz => Clk_50MHz, 
		VGA_B => VGA_B, 
		VGA_G => VGA_G, 
		VGA_R => VGA_R, 
		VGA_VS => VGA_VS, 
		VGA_HS => VGA_HS, 
		SDC_MISO => SDC_MISO, 
		SDC_SS => SDC_SS, 
		SDC_SCK => SDC_SCK, 
		SDC_MOSI => SDC_MOSI, 
		SW0 => SW0, 
		PS2_Clk => PS2_Clk, 
		PS2_Data => PS2_Data, 
		LCD_E => LCD_E, 
		LCD_RS => LCD_RS, 
		LCD_RW => LCD_RW, 
		LCD_D => LCD_D, 
		SF_CE => SF_CE
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
