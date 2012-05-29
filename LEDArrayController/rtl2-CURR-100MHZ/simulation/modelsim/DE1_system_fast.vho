-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 11.1 Build 173 11/01/2011 SJ Web Edition"

-- DATE "05/28/2012 17:10:40"

-- 
-- Device: Altera EP2C20F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE1_system IS
    PORT (
	\LEDR~394567\ : OUT std_logic_vector(9 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	UART_TXD : OUT std_logic;
	GPIO_0 : OUT std_logic_vector(35 DOWNTO 0);
	TXB : OUT std_logic;
	UART_RXD : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	CLOCK_24 : IN std_logic_vector(1 DOWNTO 0);
	RXB : IN std_logic
	);
END DE1_system;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UART_TXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UART_RXD	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[3]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[4]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[5]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[6]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[7]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[8]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[9]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[10]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[11]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[12]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[13]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[14]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[15]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[16]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[17]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[18]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[19]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[20]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[21]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[22]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[23]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[24]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[25]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[26]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[27]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[28]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[29]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[30]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[31]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[32]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[33]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[34]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[35]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_24[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_24[1]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TXB	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RXB	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DE1_system IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_LEDR~394567\ : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_UART_TXD : std_logic;
SIGNAL ww_GPIO_0 : std_logic_vector(35 DOWNTO 0);
SIGNAL ww_TXB : std_logic;
SIGNAL ww_UART_RXD : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_CLOCK_24 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RXB : std_logic;
SIGNAL \upll|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \upll|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \upll|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \upll|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \upll|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \ul0|cycle[0]~12_combout\ : std_logic;
SIGNAL \ul0|cycle[3]~18_combout\ : std_logic;
SIGNAL \ul0|cycle[9]~30_combout\ : std_logic;
SIGNAL \ul0|index[4]~17\ : std_logic;
SIGNAL \ul0|index[5]~19\ : std_logic;
SIGNAL \ul0|index[5]~18_combout\ : std_logic;
SIGNAL \ul0|index[6]~20_combout\ : std_logic;
SIGNAL \ul0|num[3]~19_combout\ : std_logic;
SIGNAL \ul0|num[8]~29_combout\ : std_logic;
SIGNAL \ul0|num[12]~37_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~15_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|counter[9]~10_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~6_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~12_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~18_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|counter[13]~18_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|counter[14]~21\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~26_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~29\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|counter[15]~22_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~30_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[1]~11_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[6]~22\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[7]~23_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|bit_count[1]~6_combout\ : std_logic;
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \ul0|LessThan5~0_combout\ : std_logic;
SIGNAL \ul0|o~1_combout\ : std_logic;
SIGNAL \ul0|o~2_combout\ : std_logic;
SIGNAL \ul0|LessThan3~0_combout\ : std_logic;
SIGNAL \ul0|Mux0~2_combout\ : std_logic;
SIGNAL \ul0|Mux0~3_combout\ : std_logic;
SIGNAL \ul0|Mux0~5_combout\ : std_logic;
SIGNAL \ul0|state.S4~regout\ : std_logic;
SIGNAL \ul0|Selector8~0_combout\ : std_logic;
SIGNAL \ul0|LessThan4~1_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \comb~15_combout\ : std_logic;
SIGNAL \comb~19_combout\ : std_logic;
SIGNAL \comb~20_combout\ : std_logic;
SIGNAL \ul0|Selector8~1_combout\ : std_logic;
SIGNAL \ul0|Selector8~2_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|count16~3_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|bit_count~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|Add1~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always15~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|new_tx_data~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|write_req~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always1~2_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|data_buf~4_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|tx_data[0]~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|tx_nibble[0]~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector20~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always0~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr11~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr11~1_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|data_buf~5_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr16~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector17~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|ce_1_mid~combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|count16~4_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector0~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector0~3_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|data_buf~6_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr15~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector16~0_combout\ : std_logic;
SIGNAL \u10|Mux24~0_regout\ : std_logic;
SIGNAL \u10|Mux24~9_combout\ : std_logic;
SIGNAL \u10|Mux24~8_regout\ : std_logic;
SIGNAL \u10|Mux24~4_regout\ : std_logic;
SIGNAL \u10|b_dout~4_combout\ : std_logic;
SIGNAL \u10|b_dout~5_combout\ : std_logic;
SIGNAL \u10|Mux24~7_regout\ : std_logic;
SIGNAL \u10|b_dout~6_combout\ : std_logic;
SIGNAL \u10|b_dout~7_combout\ : std_logic;
SIGNAL \u10|Mux24~3_regout\ : std_logic;
SIGNAL \u10|Mux24~6_regout\ : std_logic;
SIGNAL \u10|b_dout~10_combout\ : std_logic;
SIGNAL \u10|b_dout~11_combout\ : std_logic;
SIGNAL \u10|Mux24~2_regout\ : std_logic;
SIGNAL \u10|b_dout~12_combout\ : std_logic;
SIGNAL \u10|Mux24~5_regout\ : std_logic;
SIGNAL \u10|Mux24~1_regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|read_req~regout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|data_buf~7_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector15~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector15~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector15~2_combout\ : std_logic;
SIGNAL \u10|Mux24~16_combout\ : std_logic;
SIGNAL \u10|Mux24~17_combout\ : std_logic;
SIGNAL \u10|Mux24~18_combout\ : std_logic;
SIGNAL \u10|Mux24~19_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_read~4_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|data_buf~8_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr14~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector14~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector14~1_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|data_buf~9_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector13~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|data_buf~10_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector12~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector12~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector11~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector11~3_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector11~4_combout\ : std_logic;
SIGNAL \u10|Mux24~2feeder_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|read_data_s[1]~feeder_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|tx_data[2]~feeder_combout\ : std_logic;
SIGNAL \u10|Mux24~0feeder_combout\ : std_logic;
SIGNAL \ul0|cycle[0]~13\ : std_logic;
SIGNAL \ul0|cycle[1]~14_combout\ : std_logic;
SIGNAL \ul0|cycle[10]~33\ : std_logic;
SIGNAL \ul0|cycle[11]~34_combout\ : std_logic;
SIGNAL \reset~regout\ : std_logic;
SIGNAL \ul0|cycle[7]~26_combout\ : std_logic;
SIGNAL \ul0|o~0_combout\ : std_logic;
SIGNAL \ul0|state.S0~feeder_combout\ : std_logic;
SIGNAL \ul0|state.S0~regout\ : std_logic;
SIGNAL \ul0|num[1]~16\ : std_logic;
SIGNAL \ul0|num[2]~17_combout\ : std_logic;
SIGNAL \ul0|Selector7~0_combout\ : std_logic;
SIGNAL \ul0|cycle[5]~22_combout\ : std_logic;
SIGNAL \ul0|cycle[2]~16_combout\ : std_logic;
SIGNAL \ul0|LessThan2~0_combout\ : std_logic;
SIGNAL \ul0|LessThan2~1_combout\ : std_logic;
SIGNAL \ul0|Selector7~1_combout\ : std_logic;
SIGNAL \ul0|state.S2~regout\ : std_logic;
SIGNAL \ul0|Selector2~4_combout\ : std_logic;
SIGNAL \ul0|state.S3P~regout\ : std_logic;
SIGNAL \ul0|state.S3~regout\ : std_logic;
SIGNAL \ul0|Selector6~1_combout\ : std_logic;
SIGNAL \ul0|num[2]~18\ : std_logic;
SIGNAL \ul0|num[3]~20\ : std_logic;
SIGNAL \ul0|num[4]~21_combout\ : std_logic;
SIGNAL \ul0|num[4]~22\ : std_logic;
SIGNAL \ul0|num[5]~24\ : std_logic;
SIGNAL \ul0|num[6]~26\ : std_logic;
SIGNAL \ul0|num[7]~27_combout\ : std_logic;
SIGNAL \ul0|num[7]~28\ : std_logic;
SIGNAL \ul0|num[8]~30\ : std_logic;
SIGNAL \ul0|num[9]~31_combout\ : std_logic;
SIGNAL \ul0|num[9]~32\ : std_logic;
SIGNAL \ul0|num[10]~34\ : std_logic;
SIGNAL \ul0|num[11]~35_combout\ : std_logic;
SIGNAL \ul0|num[11]~36\ : std_logic;
SIGNAL \ul0|num[12]~38\ : std_logic;
SIGNAL \ul0|num[13]~39_combout\ : std_logic;
SIGNAL \ul0|num[13]~40\ : std_logic;
SIGNAL \ul0|num[14]~41_combout\ : std_logic;
SIGNAL \ul0|num[14]~42\ : std_logic;
SIGNAL \ul0|num[15]~44_combout\ : std_logic;
SIGNAL \ul0|num[0]~43_combout\ : std_logic;
SIGNAL \ul0|num[1]~15_combout\ : std_logic;
SIGNAL \ul0|LessThan4~2_combout\ : std_logic;
SIGNAL \ul0|num[6]~25_combout\ : std_logic;
SIGNAL \ul0|num[5]~23_combout\ : std_logic;
SIGNAL \ul0|LessThan4~3_combout\ : std_logic;
SIGNAL \ul0|num[10]~33_combout\ : std_logic;
SIGNAL \ul0|LessThan4~0_combout\ : std_logic;
SIGNAL \ul0|LessThan4~4_combout\ : std_logic;
SIGNAL \ul0|Selector6~0_combout\ : std_logic;
SIGNAL \ul0|state.S1~regout\ : std_logic;
SIGNAL \ul0|Selector2~2_combout\ : std_logic;
SIGNAL \ul0|Selector2~3_combout\ : std_logic;
SIGNAL \ul0|cycle[1]~15\ : std_logic;
SIGNAL \ul0|cycle[2]~17\ : std_logic;
SIGNAL \ul0|cycle[3]~19\ : std_logic;
SIGNAL \ul0|cycle[4]~20_combout\ : std_logic;
SIGNAL \ul0|cycle[4]~21\ : std_logic;
SIGNAL \ul0|cycle[5]~23\ : std_logic;
SIGNAL \ul0|cycle[6]~24_combout\ : std_logic;
SIGNAL \ul0|cycle[6]~25\ : std_logic;
SIGNAL \ul0|cycle[7]~27\ : std_logic;
SIGNAL \ul0|cycle[8]~28_combout\ : std_logic;
SIGNAL \ul0|cycle[8]~29\ : std_logic;
SIGNAL \ul0|cycle[9]~31\ : std_logic;
SIGNAL \ul0|cycle[10]~32_combout\ : std_logic;
SIGNAL \ul0|LessThan5~1_combout\ : std_logic;
SIGNAL \ul0|LessThan5~2_combout\ : std_logic;
SIGNAL \ul0|state.S5~0_combout\ : std_logic;
SIGNAL \ul0|state.S5~regout\ : std_logic;
SIGNAL \ul0|WideOr2~0_combout\ : std_logic;
SIGNAL \ul0|done~combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \ledr~0_combout\ : std_logic;
SIGNAL \ledr~regout\ : std_logic;
SIGNAL \upll|altpll_component|_clk0\ : std_logic;
SIGNAL \upll|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \upll|altpll_component|_locked\ : std_logic;
SIGNAL \ul0|index[0]~7_combout\ : std_logic;
SIGNAL \ul0|index[1]~15_combout\ : std_logic;
SIGNAL \ul0|index[0]~8\ : std_logic;
SIGNAL \ul0|index[1]~9_combout\ : std_logic;
SIGNAL \ul0|index[1]~10\ : std_logic;
SIGNAL \ul0|index[2]~11_combout\ : std_logic;
SIGNAL \comb~17_combout\ : std_logic;
SIGNAL \ul0|color[23]~0_combout\ : std_logic;
SIGNAL \comb~18_combout\ : std_logic;
SIGNAL \ul0|Mux0~9_combout\ : std_logic;
SIGNAL \RXB~combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|in_sync[0]~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|data_buf[7]~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|counter[8]~9\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|counter[9]~11\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|counter[10]~12_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~1\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~2_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~3\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~4_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~5\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~7\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~8_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~9\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~11\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~13\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~14_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~15\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~17\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~19\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~20_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|counter[10]~13\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|counter[11]~15\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|counter[12]~16_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|counter[11]~14_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~21\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~22_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~23\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~24_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|counter[12]~17\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|counter[13]~19\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|counter[14]~20_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~25\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~27\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~28_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|LessThan0~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~10_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|LessThan0~1_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|counter[8]~8_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|Add0~16_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|LessThan0~2_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|LessThan0~3_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|LessThan0~4_combout\ : std_logic;
SIGNAL \comb_54|uart1|baud_gen_1|ce_16~regout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|bit_count[0]~4_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|bit_count[0]~5\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|bit_count[1]~7\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|bit_count[2]~8_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|always5~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|bit_count[2]~9\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|bit_count[3]~10_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|rx_busy~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|rx_busy~regout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|always1~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|count16~3_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|count16~2_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|ce_1_mid~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|always3~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|data_buf[6]~feeder_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|data_buf[5]~feeder_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|data_buf[3]~feeder_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|data_buf[2]~feeder_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|data_buf[1]~feeder_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|Add0~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|count16~5_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|always5~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Equal3~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|data_buf[0]~feeder_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Equal3~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always0~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always0~3_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always0~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always1~3_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always1~5_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always1~4_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Equal1~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector1~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector1~1_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|new_rx_data~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|main_sm.0001~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector2~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|main_sm.0010~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector3~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector3~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|main_sm.0011~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector0~4_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Equal0~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector0~5_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Equal0~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Equal0~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector5~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|main_sm.0101~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector5~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[0]~8_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector6~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|main_sm.1000~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector7~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|main_sm.1001~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|main_sm.1010~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|main_sm.1011~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always13~3_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[3]~15_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Equal11~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Equal11~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_write_op~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_write_op~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_write_op~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector10~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|main_sm.1100~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always11~1_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|count16~5_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|count16~2_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|count16~4_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|always2~3_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|count16~6_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|always2~2_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|bit_count~3_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|data_buf~11_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|always2~4_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|bit_count~1_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|bit_count~2_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|always1~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|always1~1_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|tx_busy~feeder_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|tx_sm.101~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|tx_sm.110~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector20~3_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|tx_sm.000~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always4~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_read_op~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_read_op~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_read~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|read_op~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector4~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|main_sm.0100~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_read~5_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_read~3_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_read~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|read_done~feeder_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|read_done~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|read_done_s~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector21~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector21~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|tx_sm.001~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|tx_sm.100~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector19~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|new_tx_data~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always15~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|send_stat_flag~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|new_tx_data~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector19~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|new_tx_data~regout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|tx_busy~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|s_tx_busy~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|tx_end_p~combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[7]~10_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[0]~9\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[1]~12\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[2]~13_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[2]~14\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[3]~16\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[4]~17_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[4]~18\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[5]~19_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[5]~20\ : std_logic;
SIGNAL \comb_54|uart_parser1|bin_byte_count[6]~21_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Equal11~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector0~7_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector0~6_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|main_sm.0000~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always2~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|write_op~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always11~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_write~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_write~regout\ : std_logic;
SIGNAL \u10|Add0~0_combout\ : std_logic;
SIGNAL \u10|Add0~1\ : std_logic;
SIGNAL \u10|Add0~2_combout\ : std_logic;
SIGNAL \u10|Add0~3\ : std_logic;
SIGNAL \u10|Add0~4_combout\ : std_logic;
SIGNAL \u10|Add0~5\ : std_logic;
SIGNAL \u10|Add0~6_combout\ : std_logic;
SIGNAL \u10|Add0~7\ : std_logic;
SIGNAL \u10|Add0~8_combout\ : std_logic;
SIGNAL \u10|Add0~9\ : std_logic;
SIGNAL \u10|Add0~10_combout\ : std_logic;
SIGNAL \u10|Add0~11\ : std_logic;
SIGNAL \u10|Add0~12_combout\ : std_logic;
SIGNAL \u10|Add0~13\ : std_logic;
SIGNAL \u10|Add0~14_combout\ : std_logic;
SIGNAL \u10|Add0~15\ : std_logic;
SIGNAL \u10|Add0~16_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr11~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr11~3_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|data_param[4]~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|data_param~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_wr_data[6]~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always11~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_write~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr13~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr13~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr13~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|addr_param[8]~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|addr_param~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always8~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|addr_param[0]~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_address~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr12~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr12~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr12~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr12~3_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|addr_param~3_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|addr_auto_inc~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|addr_auto_inc~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always13~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always13~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always13~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~1\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~3_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~5_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|addr_param~4_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~4\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~6_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~8_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~7\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~9_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~11_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~10\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~12_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~14_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always9~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|always9~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|addr_param~7_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~17_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~13\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~16\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~18_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|addr_param~8_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~20_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~19\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~21_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|addr_param~5_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|addr_param~9_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~23_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~22\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~24_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|addr_param~6_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|addr_param~10_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|addr_param[8]~11_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~26_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~25\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~27_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|addr_param~12_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Add1~29_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|data_param~3_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_wr_data[4]~3_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_wr_data[2]~5_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_wr_data[0]~7_combout\ : std_logic;
SIGNAL \comb~16_combout\ : std_logic;
SIGNAL \ul0|Mux0~10_combout\ : std_logic;
SIGNAL \ul0|index[2]~12\ : std_logic;
SIGNAL \ul0|index[3]~13_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr10~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|data_param~4_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_wr_data[7]~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|data_param~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_wr_data[5]~2_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_wr_data[3]~4_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|int_wr_data[1]~6_combout\ : std_logic;
SIGNAL \comb~14_combout\ : std_logic;
SIGNAL \comb~13_combout\ : std_logic;
SIGNAL \ul0|Mux0~7_combout\ : std_logic;
SIGNAL \comb~12_combout\ : std_logic;
SIGNAL \ul0|Mux0~8_combout\ : std_logic;
SIGNAL \ul0|Mux0~11_combout\ : std_logic;
SIGNAL \comb~23_combout\ : std_logic;
SIGNAL \ul0|num[0]~_wirecell_combout\ : std_logic;
SIGNAL \u10|Add1~1_cout\ : std_logic;
SIGNAL \u10|Add1~2_combout\ : std_logic;
SIGNAL \u10|Add1~3\ : std_logic;
SIGNAL \u10|Add1~4_combout\ : std_logic;
SIGNAL \u10|Add1~5\ : std_logic;
SIGNAL \u10|Add1~6_combout\ : std_logic;
SIGNAL \u10|Add1~7\ : std_logic;
SIGNAL \u10|Add1~8_combout\ : std_logic;
SIGNAL \u10|Add1~9\ : std_logic;
SIGNAL \u10|Add1~10_combout\ : std_logic;
SIGNAL \u10|Add1~11\ : std_logic;
SIGNAL \u10|Add1~12_combout\ : std_logic;
SIGNAL \u10|Add1~13\ : std_logic;
SIGNAL \u10|Add1~14_combout\ : std_logic;
SIGNAL \u10|Add1~15\ : std_logic;
SIGNAL \u10|Add1~16_combout\ : std_logic;
SIGNAL \comb~22_combout\ : std_logic;
SIGNAL \comb~21_combout\ : std_logic;
SIGNAL \ul0|Mux0~12_combout\ : std_logic;
SIGNAL \ul0|Mux0~13_combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \ul0|Mux0~6_combout\ : std_logic;
SIGNAL \ul0|Mux0~14_combout\ : std_logic;
SIGNAL \ul0|index[3]~14\ : std_logic;
SIGNAL \ul0|index[4]~16_combout\ : std_logic;
SIGNAL \u10|Add2~0_combout\ : std_logic;
SIGNAL \u10|Add2~1\ : std_logic;
SIGNAL \u10|Add2~2_combout\ : std_logic;
SIGNAL \u10|Add2~3\ : std_logic;
SIGNAL \u10|Add2~4_combout\ : std_logic;
SIGNAL \u10|Add2~5\ : std_logic;
SIGNAL \u10|Add2~6_combout\ : std_logic;
SIGNAL \u10|Add2~7\ : std_logic;
SIGNAL \u10|Add2~8_combout\ : std_logic;
SIGNAL \u10|Add2~9\ : std_logic;
SIGNAL \u10|Add2~10_combout\ : std_logic;
SIGNAL \u10|Add2~11\ : std_logic;
SIGNAL \u10|Add2~12_combout\ : std_logic;
SIGNAL \u10|Add2~13\ : std_logic;
SIGNAL \u10|Add2~14_combout\ : std_logic;
SIGNAL \u10|Add2~15\ : std_logic;
SIGNAL \u10|Add2~16_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \ul0|Mux0~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \ul0|Mux0~1_combout\ : std_logic;
SIGNAL \ul0|Mux0~4_combout\ : std_logic;
SIGNAL \ul0|Mux0~15_combout\ : std_logic;
SIGNAL \ul0|colorBit~regout\ : std_logic;
SIGNAL \ul0|o~3_combout\ : std_logic;
SIGNAL \ul0|o~4_combout\ : std_logic;
SIGNAL \u10|Mux24~10_combout\ : std_logic;
SIGNAL \u10|mem_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \u10|Mux24~12_combout\ : std_logic;
SIGNAL \u10|Mux24~11_combout\ : std_logic;
SIGNAL \u10|Mux24~13_combout\ : std_logic;
SIGNAL \u10|Mux24~14_combout\ : std_logic;
SIGNAL \u10|Mux24~15_combout\ : std_logic;
SIGNAL \u10|b_dout[7]~0_combout\ : std_logic;
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \u10|b_dout~13_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|tx_nibble[2]~2_combout\ : std_logic;
SIGNAL \u10|b_dout[7]~1_combout\ : std_logic;
SIGNAL \u10|b_dout~14_combout\ : std_logic;
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \u10|b_dout~15_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|read_data_s[3]~feeder_combout\ : std_logic;
SIGNAL \u10|b_dout~16_combout\ : std_logic;
SIGNAL \u10|b_dout~17_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|tx_nibble[3]~3_combout\ : std_logic;
SIGNAL \u10|b_dout~8_combout\ : std_logic;
SIGNAL \u10|mem_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \u10|b_dout~9_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|tx_nibble[1]~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|WideOr17~0_combout\ : std_logic;
SIGNAL \u10|b_dout~2_combout\ : std_logic;
SIGNAL \u10|b_dout~3_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|tx_data[0]~1_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|Selector18~0_combout\ : std_logic;
SIGNAL \comb_54|uart_parser1|tx_data[0]~feeder_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|data_buf~3_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|data_buf~2_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|ser_out~0_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|ser_out~regout\ : std_logic;
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u10|b_dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_54|uart_parser1|addr_param\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \comb_54|uart_parser1|bin_byte_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_54|uart_parser1|data_param\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_54|uart_parser1|int_address\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \comb_54|uart_parser1|int_wr_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_54|uart_parser1|read_data_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_54|uart_parser1|tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_54|uart1|uart_tx_1|bit_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_54|uart1|uart_tx_1|count16\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_54|uart1|uart_tx_1|data_buf\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \comb_54|uart1|uart_rx_1|bit_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_54|uart1|uart_rx_1|count16\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_54|uart1|uart_rx_1|data_buf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_54|uart1|uart_rx_1|in_sync\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_54|uart1|uart_rx_1|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_54|uart1|baud_gen_1|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ul0|color\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ul0|cycle\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ul0|index\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ul0|num\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u10|mem_rtl_0_bypass\ : std_logic_vector(0 TO 28);
SIGNAL \comb_54|uart1|uart_tx_1|ALT_INV_tx_busy~regout\ : std_logic;
SIGNAL \comb_54|uart1|uart_tx_1|ALT_INV_ser_out~regout\ : std_logic;
SIGNAL \ALT_INV_reset~regout\ : std_logic;
SIGNAL \ul0|ALT_INV_state.S3P~regout\ : std_logic;
SIGNAL \comb_54|uart_parser1|ALT_INV_int_write~1_combout\ : std_logic;
SIGNAL \comb_54|uart1|uart_rx_1|ALT_INV_rx_busy~regout\ : std_logic;
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

\LEDR~394567\ <= \ww_LEDR~394567\;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
UART_TXD <= ww_UART_TXD;
GPIO_0 <= ww_GPIO_0;
TXB <= ww_TXB;
ww_UART_RXD <= UART_RXD;
ww_KEY <= KEY;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
ww_CLOCK_24 <= CLOCK_24;
ww_RXB <= RXB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\upll|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50~combout\);

\upll|altpll_component|_clk0\ <= \upll|altpll_component|pll_CLK_bus\(0);
\upll|altpll_component|pll~CLK1\ <= \upll|altpll_component|pll_CLK_bus\(1);
\upll|altpll_component|pll~CLK2\ <= \upll|altpll_component|pll_CLK_bus\(2);

\u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc);

\u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ <= (\comb_54|uart_parser1|int_wr_data\(4) & \comb_54|uart_parser1|int_wr_data\(5) & \comb_54|uart_parser1|int_wr_data\(6) & \comb_54|uart_parser1|int_wr_data\(7));

\u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\u10|Add2~16_combout\ & \u10|Add2~14_combout\ & \u10|Add2~12_combout\ & \u10|Add2~10_combout\ & \u10|Add2~8_combout\ & \u10|Add2~6_combout\ & \u10|Add2~4_combout\ & 
\u10|Add2~2_combout\ & \u10|Add2~0_combout\ & \ul0|num\(0));

\u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\comb_54|uart_parser1|int_address\(9) & \comb_54|uart_parser1|int_address\(8) & \comb_54|uart_parser1|int_address\(7) & \comb_54|uart_parser1|int_address\(6) & 
\comb_54|uart_parser1|int_address\(5) & \comb_54|uart_parser1|int_address\(4) & \comb_54|uart_parser1|int_address\(3) & \comb_54|uart_parser1|int_address\(2) & \comb_54|uart_parser1|int_address\(1) & \comb_54|uart_parser1|int_address\(0));

\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(0) <= \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(0);
\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(1) <= \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(1);
\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(2) <= \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(2);
\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(3) <= \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(3);

\u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc);

\u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTBDATAIN_bus\ <= (\comb_54|uart_parser1|int_wr_data\(0) & \comb_54|uart_parser1|int_wr_data\(1) & \comb_54|uart_parser1|int_wr_data\(2) & \comb_54|uart_parser1|int_wr_data\(3));

\u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTAADDR_bus\ <= (\u10|Add2~16_combout\ & \u10|Add2~14_combout\ & \u10|Add2~12_combout\ & \u10|Add2~10_combout\ & \u10|Add2~8_combout\ & \u10|Add2~6_combout\ & \u10|Add2~4_combout\ & 
\u10|Add2~2_combout\ & \u10|Add2~0_combout\ & \ul0|num\(0));

\u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTBADDR_bus\ <= (\comb_54|uart_parser1|int_address\(9) & \comb_54|uart_parser1|int_address\(8) & \comb_54|uart_parser1|int_address\(7) & \comb_54|uart_parser1|int_address\(6) & 
\comb_54|uart_parser1|int_address\(5) & \comb_54|uart_parser1|int_address\(4) & \comb_54|uart_parser1|int_address\(3) & \comb_54|uart_parser1|int_address\(2) & \comb_54|uart_parser1|int_address\(1) & \comb_54|uart_parser1|int_address\(0));

\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(4) <= \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\(0);
\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(5) <= \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\(1);
\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(6) <= \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\(2);
\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(7) <= \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\(3);

\u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc);

\u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\ <= (\comb_54|uart_parser1|int_wr_data\(0) & \comb_54|uart_parser1|int_wr_data\(2) & \comb_54|uart_parser1|int_wr_data\(4) & \comb_54|uart_parser1|int_wr_data\(6));

\u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\ <= (\u10|Add1~16_combout\ & \u10|Add1~14_combout\ & \u10|Add1~12_combout\ & \u10|Add1~10_combout\ & \u10|Add1~8_combout\ & \u10|Add1~6_combout\ & \u10|Add1~4_combout\ & 
\u10|Add1~2_combout\ & \ul0|num\(1) & \ul0|num[0]~_wirecell_combout\);

\u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\ <= (\comb_54|uart_parser1|int_address\(9) & \comb_54|uart_parser1|int_address\(8) & \comb_54|uart_parser1|int_address\(7) & \comb_54|uart_parser1|int_address\(6) & 
\comb_54|uart_parser1|int_address\(5) & \comb_54|uart_parser1|int_address\(4) & \comb_54|uart_parser1|int_address\(3) & \comb_54|uart_parser1|int_address\(2) & \comb_54|uart_parser1|int_address\(1) & \comb_54|uart_parser1|int_address\(0));

\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(1) <= \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\(0);
\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(3) <= \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\(1);
\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(5) <= \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\(2);
\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(7) <= \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\(3);

\u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc);

\u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ <= (\comb_54|uart_parser1|int_wr_data\(1) & \comb_54|uart_parser1|int_wr_data\(3) & \comb_54|uart_parser1|int_wr_data\(5) & \comb_54|uart_parser1|int_wr_data\(7));

\u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\u10|Add0~16_combout\ & \u10|Add0~14_combout\ & \u10|Add0~12_combout\ & \u10|Add0~10_combout\ & \u10|Add0~8_combout\ & \u10|Add0~6_combout\ & \u10|Add0~4_combout\ & 
\u10|Add0~2_combout\ & \u10|Add0~0_combout\ & \ul0|num\(0));

\u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\comb_54|uart_parser1|int_address\(9) & \comb_54|uart_parser1|int_address\(8) & \comb_54|uart_parser1|int_address\(7) & \comb_54|uart_parser1|int_address\(6) & 
\comb_54|uart_parser1|int_address\(5) & \comb_54|uart_parser1|int_address\(4) & \comb_54|uart_parser1|int_address\(3) & \comb_54|uart_parser1|int_address\(2) & \comb_54|uart_parser1|int_address\(1) & \comb_54|uart_parser1|int_address\(0));

\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(0) <= \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(0);
\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(2) <= \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(1);
\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(4) <= \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(2);
\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(6) <= \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(3);

\u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc);

\u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\ <= (\comb_54|uart_parser1|int_wr_data\(0) & \comb_54|uart_parser1|int_wr_data\(2) & \comb_54|uart_parser1|int_wr_data\(4) & \comb_54|uart_parser1|int_wr_data\(6));

\u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\ <= (\u10|Add0~16_combout\ & \u10|Add0~14_combout\ & \u10|Add0~12_combout\ & \u10|Add0~10_combout\ & \u10|Add0~8_combout\ & \u10|Add0~6_combout\ & \u10|Add0~4_combout\ & 
\u10|Add0~2_combout\ & \u10|Add0~0_combout\ & \ul0|num\(0));

\u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\ <= (\comb_54|uart_parser1|int_address\(9) & \comb_54|uart_parser1|int_address\(8) & \comb_54|uart_parser1|int_address\(7) & \comb_54|uart_parser1|int_address\(6) & 
\comb_54|uart_parser1|int_address\(5) & \comb_54|uart_parser1|int_address\(4) & \comb_54|uart_parser1|int_address\(3) & \comb_54|uart_parser1|int_address\(2) & \comb_54|uart_parser1|int_address\(1) & \comb_54|uart_parser1|int_address\(0));

\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(1) <= \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\(0);
\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(3) <= \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\(1);
\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(5) <= \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\(2);
\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(7) <= \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\(3);

\u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc);

\u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ <= (\comb_54|uart_parser1|int_wr_data\(1) & \comb_54|uart_parser1|int_wr_data\(3) & \comb_54|uart_parser1|int_wr_data\(5) & \comb_54|uart_parser1|int_wr_data\(7));

\u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\u10|Add1~16_combout\ & \u10|Add1~14_combout\ & \u10|Add1~12_combout\ & \u10|Add1~10_combout\ & \u10|Add1~8_combout\ & \u10|Add1~6_combout\ & \u10|Add1~4_combout\ & 
\u10|Add1~2_combout\ & \ul0|num\(1) & \ul0|num[0]~_wirecell_combout\);

\u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\comb_54|uart_parser1|int_address\(9) & \comb_54|uart_parser1|int_address\(8) & \comb_54|uart_parser1|int_address\(7) & \comb_54|uart_parser1|int_address\(6) & 
\comb_54|uart_parser1|int_address\(5) & \comb_54|uart_parser1|int_address\(4) & \comb_54|uart_parser1|int_address\(3) & \comb_54|uart_parser1|int_address\(2) & \comb_54|uart_parser1|int_address\(1) & \comb_54|uart_parser1|int_address\(0));

\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(0) <= \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(0);
\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(2) <= \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(1);
\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(4) <= \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(2);
\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(6) <= \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(3);

\u10|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\comb_54|uart_parser1|int_wr_data\(0) & \comb_54|uart_parser1|int_wr_data\(1) & \comb_54|uart_parser1|int_wr_data\(4) & \comb_54|uart_parser1|int_wr_data\(5));

\u10|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\comb_54|uart_parser1|int_address\(9) & \comb_54|uart_parser1|int_address\(8) & \comb_54|uart_parser1|int_address\(7) & \comb_54|uart_parser1|int_address\(6) & 
\comb_54|uart_parser1|int_address\(5) & \comb_54|uart_parser1|int_address\(4) & \comb_54|uart_parser1|int_address\(3) & \comb_54|uart_parser1|int_address\(2) & \comb_54|uart_parser1|int_address\(1) & \comb_54|uart_parser1|int_address\(0));

\u10|mem_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\comb_54|uart_parser1|Add1~29_combout\ & \comb_54|uart_parser1|Add1~26_combout\ & \comb_54|uart_parser1|Add1~23_combout\ & \comb_54|uart_parser1|Add1~20_combout\ & 
\comb_54|uart_parser1|Add1~17_combout\ & \comb_54|uart_parser1|Add1~14_combout\ & \comb_54|uart_parser1|Add1~11_combout\ & \comb_54|uart_parser1|Add1~8_combout\ & \comb_54|uart_parser1|Add1~5_combout\ & \comb_54|uart_parser1|Add1~2_combout\);

\u10|mem_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \u10|mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);
\u10|mem_rtl_0|auto_generated|ram_block1a3\ <= \u10|mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(1);
\u10|mem_rtl_0|auto_generated|ram_block1a6\ <= \u10|mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(2);
\u10|mem_rtl_0|auto_generated|ram_block1a7\ <= \u10|mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(3);

\u10|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\comb_54|uart_parser1|int_wr_data\(2) & \comb_54|uart_parser1|int_wr_data\(3) & \comb_54|uart_parser1|int_wr_data\(6) & \comb_54|uart_parser1|int_wr_data\(7));

\u10|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\comb_54|uart_parser1|int_address\(9) & \comb_54|uart_parser1|int_address\(8) & \comb_54|uart_parser1|int_address\(7) & \comb_54|uart_parser1|int_address\(6) & 
\comb_54|uart_parser1|int_address\(5) & \comb_54|uart_parser1|int_address\(4) & \comb_54|uart_parser1|int_address\(3) & \comb_54|uart_parser1|int_address\(2) & \comb_54|uart_parser1|int_address\(1) & \comb_54|uart_parser1|int_address\(0));

\u10|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\comb_54|uart_parser1|Add1~29_combout\ & \comb_54|uart_parser1|Add1~26_combout\ & \comb_54|uart_parser1|Add1~23_combout\ & \comb_54|uart_parser1|Add1~20_combout\ & 
\comb_54|uart_parser1|Add1~17_combout\ & \comb_54|uart_parser1|Add1~14_combout\ & \comb_54|uart_parser1|Add1~11_combout\ & \comb_54|uart_parser1|Add1~8_combout\ & \comb_54|uart_parser1|Add1~5_combout\ & \comb_54|uart_parser1|Add1~2_combout\);

\u10|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \u10|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\u10|mem_rtl_0|auto_generated|ram_block1a1\ <= \u10|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\u10|mem_rtl_0|auto_generated|ram_block1a4\ <= \u10|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\u10|mem_rtl_0|auto_generated|ram_block1a5\ <= \u10|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\upll|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \upll|altpll_component|_clk0\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\comb_54|uart1|uart_tx_1|ALT_INV_tx_busy~regout\ <= NOT \comb_54|uart1|uart_tx_1|tx_busy~regout\;
\comb_54|uart1|uart_tx_1|ALT_INV_ser_out~regout\ <= NOT \comb_54|uart1|uart_tx_1|ser_out~regout\;
\ALT_INV_reset~regout\ <= NOT \reset~regout\;
\ul0|ALT_INV_state.S3P~regout\ <= NOT \ul0|state.S3P~regout\;
\comb_54|uart_parser1|ALT_INV_int_write~1_combout\ <= NOT \comb_54|uart_parser1|int_write~1_combout\;
\comb_54|uart1|uart_rx_1|ALT_INV_rx_busy~regout\ <= NOT \comb_54|uart1|uart_rx_1|rx_busy~regout\;
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);

-- Location: LCFF_X37_Y14_N25
\ul0|cycle[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|cycle[9]~30_combout\,
	sclr => \ul0|Selector2~3_combout\,
	ena => \ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|cycle\(9));

-- Location: LCFF_X37_Y14_N7
\ul0|cycle[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|cycle[0]~12_combout\,
	sclr => \ul0|Selector2~3_combout\,
	ena => \ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|cycle\(0));

-- Location: LCFF_X37_Y14_N13
\ul0|cycle[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|cycle[3]~18_combout\,
	sclr => \ul0|Selector2~3_combout\,
	ena => \ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|cycle\(3));

-- Location: LCFF_X34_Y14_N13
\ul0|index[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|index[5]~18_combout\,
	aclr => \reset~regout\,
	sclr => \ul0|ALT_INV_state.S3P~regout\,
	ena => \ul0|index[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|index\(5));

-- Location: LCFF_X34_Y14_N15
\ul0|index[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|index[6]~20_combout\,
	aclr => \reset~regout\,
	sclr => \ul0|ALT_INV_state.S3P~regout\,
	ena => \ul0|index[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|index\(6));

-- Location: LCCOMB_X37_Y14_N6
\ul0|cycle[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|cycle[0]~12_combout\ = \ul0|cycle\(0) $ (VCC)
-- \ul0|cycle[0]~13\ = CARRY(\ul0|cycle\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|cycle\(0),
	datad => VCC,
	combout => \ul0|cycle[0]~12_combout\,
	cout => \ul0|cycle[0]~13\);

-- Location: LCCOMB_X37_Y14_N12
\ul0|cycle[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|cycle[3]~18_combout\ = (\ul0|cycle\(3) & (!\ul0|cycle[2]~17\)) # (!\ul0|cycle\(3) & ((\ul0|cycle[2]~17\) # (GND)))
-- \ul0|cycle[3]~19\ = CARRY((!\ul0|cycle[2]~17\) # (!\ul0|cycle\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|cycle\(3),
	datad => VCC,
	cin => \ul0|cycle[2]~17\,
	combout => \ul0|cycle[3]~18_combout\,
	cout => \ul0|cycle[3]~19\);

-- Location: LCCOMB_X37_Y14_N24
\ul0|cycle[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|cycle[9]~30_combout\ = (\ul0|cycle\(9) & (!\ul0|cycle[8]~29\)) # (!\ul0|cycle\(9) & ((\ul0|cycle[8]~29\) # (GND)))
-- \ul0|cycle[9]~31\ = CARRY((!\ul0|cycle[8]~29\) # (!\ul0|cycle\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|cycle\(9),
	datad => VCC,
	cin => \ul0|cycle[8]~29\,
	combout => \ul0|cycle[9]~30_combout\,
	cout => \ul0|cycle[9]~31\);

-- Location: LCFF_X36_Y14_N17
\ul0|num[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[8]~29_combout\,
	aclr => \reset~regout\,
	ena => \ul0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(8));

-- Location: LCFF_X36_Y14_N25
\ul0|num[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[12]~37_combout\,
	aclr => \reset~regout\,
	ena => \ul0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(12));

-- Location: LCFF_X36_Y14_N7
\ul0|num[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[3]~19_combout\,
	aclr => \reset~regout\,
	ena => \ul0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(3));

-- Location: LCCOMB_X34_Y14_N10
\ul0|index[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|index[4]~16_combout\ = (\ul0|index\(4) & (\ul0|index[3]~14\ $ (GND))) # (!\ul0|index\(4) & (!\ul0|index[3]~14\ & VCC))
-- \ul0|index[4]~17\ = CARRY((\ul0|index\(4) & !\ul0|index[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|index\(4),
	datad => VCC,
	cin => \ul0|index[3]~14\,
	combout => \ul0|index[4]~16_combout\,
	cout => \ul0|index[4]~17\);

-- Location: LCCOMB_X34_Y14_N12
\ul0|index[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|index[5]~18_combout\ = (\ul0|index\(5) & (!\ul0|index[4]~17\)) # (!\ul0|index\(5) & ((\ul0|index[4]~17\) # (GND)))
-- \ul0|index[5]~19\ = CARRY((!\ul0|index[4]~17\) # (!\ul0|index\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|index\(5),
	datad => VCC,
	cin => \ul0|index[4]~17\,
	combout => \ul0|index[5]~18_combout\,
	cout => \ul0|index[5]~19\);

-- Location: LCCOMB_X34_Y14_N14
\ul0|index[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|index[6]~20_combout\ = \ul0|index\(6) $ (!\ul0|index[5]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ul0|index\(6),
	cin => \ul0|index[5]~19\,
	combout => \ul0|index[6]~20_combout\);

-- Location: M4K_X41_Y16
\u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bram_tdp:u10|altsyncram:mem[0][7]__3|altsyncram_41d1:auto_generated|altsyncram_7kg1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_54|uart_parser1|int_write~regout\,
	clk0 => \CLOCK_50~clkctrl_outclk\,
	clk1 => \upll|altpll_component|_clk0~clkctrl_outclk\,
	ena1 => \comb_54|uart_parser1|int_write~regout\,
	portadatain => \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portbdatain => \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\,
	portaaddr => \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y13
\u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bram_tdp:u10|altsyncram:mem[0][7]__3|altsyncram_41d1:auto_generated|altsyncram_7kg1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_54|uart_parser1|int_write~regout\,
	clk0 => \CLOCK_50~clkctrl_outclk\,
	clk1 => \upll|altpll_component|_clk0~clkctrl_outclk\,
	ena1 => \comb_54|uart_parser1|int_write~regout\,
	portadatain => \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTADATAIN_bus\,
	portbdatain => \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTBDATAIN_bus\,
	portaaddr => \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTAADDR_bus\,
	portbaddr => \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u10|mem[0][7]__3|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y16
\u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bram_tdp:u10|altsyncram:mem[0][7]__2|altsyncram_41d1:auto_generated|altsyncram_7kg1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_54|uart_parser1|int_write~regout\,
	clk0 => \CLOCK_50~clkctrl_outclk\,
	clk1 => \upll|altpll_component|_clk0~clkctrl_outclk\,
	ena1 => \comb_54|uart_parser1|int_write~regout\,
	portadatain => \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\,
	portbdatain => \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\,
	portaaddr => \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\,
	portbaddr => \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y14
\u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bram_tdp:u10|altsyncram:mem[0][7]__1|altsyncram_41d1:auto_generated|altsyncram_7kg1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_54|uart_parser1|int_write~regout\,
	clk0 => \CLOCK_50~clkctrl_outclk\,
	clk1 => \upll|altpll_component|_clk0~clkctrl_outclk\,
	ena1 => \comb_54|uart_parser1|int_write~regout\,
	portadatain => \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portbdatain => \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\,
	portaaddr => \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y15
\u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bram_tdp:u10|altsyncram:mem[0][7]__1|altsyncram_41d1:auto_generated|altsyncram_7kg1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_54|uart_parser1|int_write~regout\,
	clk0 => \CLOCK_50~clkctrl_outclk\,
	clk1 => \upll|altpll_component|_clk0~clkctrl_outclk\,
	ena1 => \comb_54|uart_parser1|int_write~regout\,
	portadatain => \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\,
	portbdatain => \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\,
	portaaddr => \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\,
	portbaddr => \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u10|mem[0][7]__1|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y15
\u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bram_tdp:u10|altsyncram:mem[0][7]__2|altsyncram_41d1:auto_generated|altsyncram_7kg1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_54|uart_parser1|int_write~regout\,
	clk0 => \CLOCK_50~clkctrl_outclk\,
	clk1 => \upll|altpll_component|_clk0~clkctrl_outclk\,
	ena1 => \comb_54|uart_parser1|int_write~regout\,
	portadatain => \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portbdatain => \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\,
	portaaddr => \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u10|mem[0][7]__2|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X36_Y14_N6
\ul0|num[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[3]~19_combout\ = (\ul0|num\(3) & (\ul0|num[2]~18\ $ (GND))) # (!\ul0|num\(3) & (!\ul0|num[2]~18\ & VCC))
-- \ul0|num[3]~20\ = CARRY((\ul0|num\(3) & !\ul0|num[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(3),
	datad => VCC,
	cin => \ul0|num[2]~18\,
	combout => \ul0|num[3]~19_combout\,
	cout => \ul0|num[3]~20\);

-- Location: LCCOMB_X36_Y14_N16
\ul0|num[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[8]~29_combout\ = (\ul0|num\(8) & (!\ul0|num[7]~28\)) # (!\ul0|num\(8) & ((\ul0|num[7]~28\) # (GND)))
-- \ul0|num[8]~30\ = CARRY((!\ul0|num[7]~28\) # (!\ul0|num\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(8),
	datad => VCC,
	cin => \ul0|num[7]~28\,
	combout => \ul0|num[8]~29_combout\,
	cout => \ul0|num[8]~30\);

-- Location: LCCOMB_X36_Y14_N24
\ul0|num[12]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[12]~37_combout\ = (\ul0|num\(12) & (!\ul0|num[11]~36\)) # (!\ul0|num\(12) & ((\ul0|num[11]~36\) # (GND)))
-- \ul0|num[12]~38\ = CARRY((!\ul0|num[11]~36\) # (!\ul0|num\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(12),
	datad => VCC,
	cin => \ul0|num[11]~36\,
	combout => \ul0|num[12]~37_combout\,
	cout => \ul0|num[12]~38\);

-- Location: LCFF_X29_Y18_N25
\comb_54|uart1|baud_gen_1|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|counter[15]~22_combout\,
	sdata => \comb_54|uart1|baud_gen_1|Add0~30_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(15));

-- Location: LCFF_X29_Y18_N13
\comb_54|uart1|baud_gen_1|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|counter[9]~10_combout\,
	sdata => \comb_54|uart1|baud_gen_1|Add0~18_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(9));

-- Location: LCFF_X29_Y18_N21
\comb_54|uart1|baud_gen_1|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|counter[13]~18_combout\,
	sdata => \comb_54|uart1|baud_gen_1|Add0~26_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(13));

-- Location: LCFF_X24_Y13_N17
\comb_54|uart_parser1|bin_byte_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|bin_byte_count[1]~11_combout\,
	sdata => \comb_54|uart1|uart_rx_1|rx_data\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|always13~3_combout\,
	ena => \comb_54|uart_parser1|bin_byte_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|bin_byte_count\(1));

-- Location: LCFF_X24_Y13_N29
\comb_54|uart_parser1|bin_byte_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|bin_byte_count[7]~23_combout\,
	sdata => \comb_54|uart1|uart_rx_1|rx_data\(7),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|always13~3_combout\,
	ena => \comb_54|uart_parser1|bin_byte_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|bin_byte_count\(7));

-- Location: LCCOMB_X23_Y13_N4
\comb_54|uart_parser1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~0_combout\ = (\comb_54|uart_parser1|int_address\(0) & (\comb_54|uart_parser1|always13~2_combout\ $ (VCC))) # (!\comb_54|uart_parser1|int_address\(0) & (\comb_54|uart_parser1|always13~2_combout\ & VCC))
-- \comb_54|uart_parser1|Add1~1\ = CARRY((\comb_54|uart_parser1|int_address\(0) & \comb_54|uart_parser1|always13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_address\(0),
	datab => \comb_54|uart_parser1|always13~2_combout\,
	datad => VCC,
	combout => \comb_54|uart_parser1|Add1~0_combout\,
	cout => \comb_54|uart_parser1|Add1~1\);

-- Location: LCCOMB_X23_Y13_N14
\comb_54|uart_parser1|Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~15_combout\ = (\comb_54|uart_parser1|int_address\(5) & (!\comb_54|uart_parser1|Add1~13\)) # (!\comb_54|uart_parser1|int_address\(5) & ((\comb_54|uart_parser1|Add1~13\) # (GND)))
-- \comb_54|uart_parser1|Add1~16\ = CARRY((!\comb_54|uart_parser1|Add1~13\) # (!\comb_54|uart_parser1|int_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_address\(5),
	datad => VCC,
	cin => \comb_54|uart_parser1|Add1~13\,
	combout => \comb_54|uart_parser1|Add1~15_combout\,
	cout => \comb_54|uart_parser1|Add1~16\);

-- Location: LCFF_X22_Y15_N9
\comb_54|uart_parser1|tx_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector17~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \comb_54|uart_parser1|tx_sm.100~regout\,
	ena => \comb_54|uart_parser1|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|tx_data\(1));

-- Location: LCCOMB_X29_Y18_N12
\comb_54|uart1|baud_gen_1|counter[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|counter[9]~10_combout\ = (\comb_54|uart1|baud_gen_1|counter\(9) & (!\comb_54|uart1|baud_gen_1|counter[8]~9\)) # (!\comb_54|uart1|baud_gen_1|counter\(9) & ((\comb_54|uart1|baud_gen_1|counter[8]~9\) # (GND)))
-- \comb_54|uart1|baud_gen_1|counter[9]~11\ = CARRY((!\comb_54|uart1|baud_gen_1|counter[8]~9\) # (!\comb_54|uart1|baud_gen_1|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(9),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|counter[8]~9\,
	combout => \comb_54|uart1|baud_gen_1|counter[9]~10_combout\,
	cout => \comb_54|uart1|baud_gen_1|counter[9]~11\);

-- Location: LCCOMB_X30_Y18_N6
\comb_54|uart1|baud_gen_1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~6_combout\ = (\comb_54|uart1|baud_gen_1|counter\(3) & (!\comb_54|uart1|baud_gen_1|Add0~5\)) # (!\comb_54|uart1|baud_gen_1|counter\(3) & ((\comb_54|uart1|baud_gen_1|Add0~5\) # (GND)))
-- \comb_54|uart1|baud_gen_1|Add0~7\ = CARRY((!\comb_54|uart1|baud_gen_1|Add0~5\) # (!\comb_54|uart1|baud_gen_1|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(3),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|Add0~5\,
	combout => \comb_54|uart1|baud_gen_1|Add0~6_combout\,
	cout => \comb_54|uart1|baud_gen_1|Add0~7\);

-- Location: LCCOMB_X30_Y18_N12
\comb_54|uart1|baud_gen_1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~12_combout\ = (\comb_54|uart1|baud_gen_1|counter\(6) & ((GND) # (!\comb_54|uart1|baud_gen_1|Add0~11\))) # (!\comb_54|uart1|baud_gen_1|counter\(6) & (\comb_54|uart1|baud_gen_1|Add0~11\ $ (GND)))
-- \comb_54|uart1|baud_gen_1|Add0~13\ = CARRY((\comb_54|uart1|baud_gen_1|counter\(6)) # (!\comb_54|uart1|baud_gen_1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(6),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|Add0~11\,
	combout => \comb_54|uart1|baud_gen_1|Add0~12_combout\,
	cout => \comb_54|uart1|baud_gen_1|Add0~13\);

-- Location: LCCOMB_X30_Y18_N18
\comb_54|uart1|baud_gen_1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~18_combout\ = (\comb_54|uart1|baud_gen_1|counter\(9) & (\comb_54|uart1|baud_gen_1|Add0~17\ & VCC)) # (!\comb_54|uart1|baud_gen_1|counter\(9) & (!\comb_54|uart1|baud_gen_1|Add0~17\))
-- \comb_54|uart1|baud_gen_1|Add0~19\ = CARRY((!\comb_54|uart1|baud_gen_1|counter\(9) & !\comb_54|uart1|baud_gen_1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(9),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|Add0~17\,
	combout => \comb_54|uart1|baud_gen_1|Add0~18_combout\,
	cout => \comb_54|uart1|baud_gen_1|Add0~19\);

-- Location: LCCOMB_X29_Y18_N20
\comb_54|uart1|baud_gen_1|counter[13]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|counter[13]~18_combout\ = (\comb_54|uart1|baud_gen_1|counter\(13) & (!\comb_54|uart1|baud_gen_1|counter[12]~17\)) # (!\comb_54|uart1|baud_gen_1|counter\(13) & ((\comb_54|uart1|baud_gen_1|counter[12]~17\) # (GND)))
-- \comb_54|uart1|baud_gen_1|counter[13]~19\ = CARRY((!\comb_54|uart1|baud_gen_1|counter[12]~17\) # (!\comb_54|uart1|baud_gen_1|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(13),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|counter[12]~17\,
	combout => \comb_54|uart1|baud_gen_1|counter[13]~18_combout\,
	cout => \comb_54|uart1|baud_gen_1|counter[13]~19\);

-- Location: LCCOMB_X29_Y18_N22
\comb_54|uart1|baud_gen_1|counter[14]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|counter[14]~20_combout\ = (\comb_54|uart1|baud_gen_1|counter\(14) & (\comb_54|uart1|baud_gen_1|counter[13]~19\ $ (GND))) # (!\comb_54|uart1|baud_gen_1|counter\(14) & (!\comb_54|uart1|baud_gen_1|counter[13]~19\ & VCC))
-- \comb_54|uart1|baud_gen_1|counter[14]~21\ = CARRY((\comb_54|uart1|baud_gen_1|counter\(14) & !\comb_54|uart1|baud_gen_1|counter[13]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|baud_gen_1|counter\(14),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|counter[13]~19\,
	combout => \comb_54|uart1|baud_gen_1|counter[14]~20_combout\,
	cout => \comb_54|uart1|baud_gen_1|counter[14]~21\);

-- Location: LCCOMB_X30_Y18_N26
\comb_54|uart1|baud_gen_1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~26_combout\ = (\comb_54|uart1|baud_gen_1|counter\(13) & (!\comb_54|uart1|baud_gen_1|Add0~25\)) # (!\comb_54|uart1|baud_gen_1|counter\(13) & ((\comb_54|uart1|baud_gen_1|Add0~25\) # (GND)))
-- \comb_54|uart1|baud_gen_1|Add0~27\ = CARRY((!\comb_54|uart1|baud_gen_1|Add0~25\) # (!\comb_54|uart1|baud_gen_1|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(13),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|Add0~25\,
	combout => \comb_54|uart1|baud_gen_1|Add0~26_combout\,
	cout => \comb_54|uart1|baud_gen_1|Add0~27\);

-- Location: LCCOMB_X30_Y18_N28
\comb_54|uart1|baud_gen_1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~28_combout\ = (\comb_54|uart1|baud_gen_1|counter\(14) & ((GND) # (!\comb_54|uart1|baud_gen_1|Add0~27\))) # (!\comb_54|uart1|baud_gen_1|counter\(14) & (\comb_54|uart1|baud_gen_1|Add0~27\ $ (GND)))
-- \comb_54|uart1|baud_gen_1|Add0~29\ = CARRY((\comb_54|uart1|baud_gen_1|counter\(14)) # (!\comb_54|uart1|baud_gen_1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|baud_gen_1|counter\(14),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|Add0~27\,
	combout => \comb_54|uart1|baud_gen_1|Add0~28_combout\,
	cout => \comb_54|uart1|baud_gen_1|Add0~29\);

-- Location: LCCOMB_X29_Y18_N24
\comb_54|uart1|baud_gen_1|counter[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|counter[15]~22_combout\ = \comb_54|uart1|baud_gen_1|counter\(15) $ (\comb_54|uart1|baud_gen_1|counter[14]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(15),
	cin => \comb_54|uart1|baud_gen_1|counter[14]~21\,
	combout => \comb_54|uart1|baud_gen_1|counter[15]~22_combout\);

-- Location: LCCOMB_X30_Y18_N30
\comb_54|uart1|baud_gen_1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~30_combout\ = \comb_54|uart1|baud_gen_1|Add0~29\ $ (!\comb_54|uart1|baud_gen_1|counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart1|baud_gen_1|counter\(15),
	cin => \comb_54|uart1|baud_gen_1|Add0~29\,
	combout => \comb_54|uart1|baud_gen_1|Add0~30_combout\);

-- Location: LCFF_X25_Y13_N7
\comb_54|uart1|uart_rx_1|bit_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|bit_count[1]~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \comb_54|uart1|uart_rx_1|ALT_INV_rx_busy~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|bit_count\(1));

-- Location: LCCOMB_X24_Y13_N16
\comb_54|uart_parser1|bin_byte_count[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|bin_byte_count[1]~11_combout\ = (\comb_54|uart_parser1|bin_byte_count\(1) & (\comb_54|uart_parser1|bin_byte_count[0]~9\ & VCC)) # (!\comb_54|uart_parser1|bin_byte_count\(1) & (!\comb_54|uart_parser1|bin_byte_count[0]~9\))
-- \comb_54|uart_parser1|bin_byte_count[1]~12\ = CARRY((!\comb_54|uart_parser1|bin_byte_count\(1) & !\comb_54|uart_parser1|bin_byte_count[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|bin_byte_count\(1),
	datad => VCC,
	cin => \comb_54|uart_parser1|bin_byte_count[0]~9\,
	combout => \comb_54|uart_parser1|bin_byte_count[1]~11_combout\,
	cout => \comb_54|uart_parser1|bin_byte_count[1]~12\);

-- Location: LCCOMB_X24_Y13_N26
\comb_54|uart_parser1|bin_byte_count[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|bin_byte_count[6]~21_combout\ = (\comb_54|uart_parser1|bin_byte_count\(6) & ((GND) # (!\comb_54|uart_parser1|bin_byte_count[5]~20\))) # (!\comb_54|uart_parser1|bin_byte_count\(6) & (\comb_54|uart_parser1|bin_byte_count[5]~20\ $ 
-- (GND)))
-- \comb_54|uart_parser1|bin_byte_count[6]~22\ = CARRY((\comb_54|uart_parser1|bin_byte_count\(6)) # (!\comb_54|uart_parser1|bin_byte_count[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|bin_byte_count\(6),
	datad => VCC,
	cin => \comb_54|uart_parser1|bin_byte_count[5]~20\,
	combout => \comb_54|uart_parser1|bin_byte_count[6]~21_combout\,
	cout => \comb_54|uart_parser1|bin_byte_count[6]~22\);

-- Location: LCCOMB_X24_Y13_N28
\comb_54|uart_parser1|bin_byte_count[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|bin_byte_count[7]~23_combout\ = \comb_54|uart_parser1|bin_byte_count[6]~22\ $ (!\comb_54|uart_parser1|bin_byte_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart_parser1|bin_byte_count\(7),
	cin => \comb_54|uart_parser1|bin_byte_count[6]~22\,
	combout => \comb_54|uart_parser1|bin_byte_count[7]~23_combout\);

-- Location: LCFF_X24_Y15_N3
\comb_54|uart_parser1|tx_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|tx_data[2]~feeder_combout\,
	sdata => VCC,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|tx_sm.100~regout\,
	ena => \comb_54|uart_parser1|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|tx_data\(2));

-- Location: LCCOMB_X25_Y13_N6
\comb_54|uart1|uart_rx_1|bit_count[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|bit_count[1]~6_combout\ = (\comb_54|uart1|uart_rx_1|bit_count\(1) & (!\comb_54|uart1|uart_rx_1|bit_count[0]~5\)) # (!\comb_54|uart1|uart_rx_1|bit_count\(1) & ((\comb_54|uart1|uart_rx_1|bit_count[0]~5\) # (GND)))
-- \comb_54|uart1|uart_rx_1|bit_count[1]~7\ = CARRY((!\comb_54|uart1|uart_rx_1|bit_count[0]~5\) # (!\comb_54|uart1|uart_rx_1|bit_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|bit_count\(1),
	datad => VCC,
	cin => \comb_54|uart1|uart_rx_1|bit_count[0]~5\,
	combout => \comb_54|uart1|uart_rx_1|bit_count[1]~6_combout\,
	cout => \comb_54|uart1|uart_rx_1|bit_count[1]~7\);

-- Location: M4K_X17_Y14
\u10|mem_rtl_0|auto_generated|ram_block1a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bram_tdp:u10|altsyncram:mem_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \comb_54|uart_parser1|int_write~regout\,
	portbrewe => VCC,
	clk0 => \upll|altpll_component|_clk0~clkctrl_outclk\,
	portadatain => \u10|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \u10|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \u10|mem_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u10|mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M4K_X17_Y13
\u10|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bram_tdp:u10|altsyncram:mem_rtl_0|altsyncram_utg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \comb_54|uart_parser1|int_write~regout\,
	portbrewe => VCC,
	clk0 => \upll|altpll_component|_clk0~clkctrl_outclk\,
	portadatain => \u10|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u10|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u10|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u10|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X38_Y14_N12
\ul0|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|LessThan5~0_combout\ = (!\ul0|cycle\(9) & !\ul0|cycle\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ul0|cycle\(9),
	datad => \ul0|cycle\(8),
	combout => \ul0|LessThan5~0_combout\);

-- Location: LCCOMB_X38_Y14_N10
\ul0|o~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|o~1_combout\ = (\ul0|cycle\(3)) # ((\ul0|cycle\(2)) # (\ul0|cycle\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|cycle\(3),
	datac => \ul0|cycle\(2),
	datad => \ul0|cycle\(4),
	combout => \ul0|o~1_combout\);

-- Location: LCCOMB_X38_Y14_N16
\ul0|o~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|o~2_combout\ = (\ul0|o~1_combout\) # ((\ul0|cycle\(1) & ((\ul0|cycle\(0)) # (\ul0|colorBit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|cycle\(1),
	datab => \ul0|cycle\(0),
	datac => \ul0|colorBit~regout\,
	datad => \ul0|o~1_combout\,
	combout => \ul0|o~2_combout\);

-- Location: LCCOMB_X34_Y14_N0
\ul0|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|LessThan3~0_combout\ = (!\ul0|index\(5) & (!\ul0|index\(6) & ((!\ul0|index\(4)) # (!\ul0|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|index\(5),
	datab => \ul0|index\(6),
	datac => \ul0|index\(3),
	datad => \ul0|index\(4),
	combout => \ul0|LessThan3~0_combout\);

-- Location: LCFF_X40_Y14_N13
\ul0|color[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~2_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(20));

-- Location: LCFF_X40_Y14_N25
\ul0|color[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~3_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(23));

-- Location: LCFF_X34_Y14_N17
\ul0|color[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~4_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(17));

-- Location: LCFF_X34_Y14_N27
\ul0|color[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~5_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(18));

-- Location: LCFF_X34_Y14_N29
\ul0|color[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~6_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(16));

-- Location: LCCOMB_X34_Y14_N22
\ul0|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~2_combout\ = (\ul0|index\(1) & (((\ul0|color\(18)) # (\ul0|index\(0))))) # (!\ul0|index\(1) & (\ul0|color\(16) & ((!\ul0|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|color\(16),
	datab => \ul0|color\(18),
	datac => \ul0|index\(1),
	datad => \ul0|index\(0),
	combout => \ul0|Mux0~2_combout\);

-- Location: LCFF_X34_Y14_N25
\ul0|color[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~7_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(19));

-- Location: LCCOMB_X34_Y14_N18
\ul0|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~3_combout\ = (\ul0|Mux0~2_combout\ & (((\ul0|color\(19)) # (!\ul0|index\(0))))) # (!\ul0|Mux0~2_combout\ & (\ul0|color\(17) & ((\ul0|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|Mux0~2_combout\,
	datab => \ul0|color\(17),
	datac => \ul0|color\(19),
	datad => \ul0|index\(0),
	combout => \ul0|Mux0~3_combout\);

-- Location: LCFF_X33_Y14_N15
\ul0|color[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~9_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(10));

-- Location: LCFF_X33_Y14_N25
\ul0|color[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~10_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(8));

-- Location: LCCOMB_X33_Y14_N10
\ul0|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~5_combout\ = (\ul0|index\(2) & (((\ul0|index\(1))))) # (!\ul0|index\(2) & ((\ul0|index\(1) & ((\ul0|color\(10)))) # (!\ul0|index\(1) & (\ul0|color\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|color\(8),
	datab => \ul0|color\(10),
	datac => \ul0|index\(2),
	datad => \ul0|index\(1),
	combout => \ul0|Mux0~5_combout\);

-- Location: LCFF_X40_Y14_N5
\ul0|color[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~15_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(7));

-- Location: LCFF_X40_Y14_N15
\ul0|color[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~19_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(6));

-- Location: LCFF_X33_Y14_N7
\ul0|color[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~20_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(11));

-- Location: LCFF_X35_Y14_N13
\ul0|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|Selector8~2_combout\,
	aclr => \reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|state.S4~regout\);

-- Location: LCCOMB_X35_Y14_N10
\ul0|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Selector8~0_combout\ = (!\ul0|LessThan3~0_combout\ & \ul0|state.S3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|LessThan3~0_combout\,
	datac => \ul0|state.S3~regout\,
	combout => \ul0|Selector8~0_combout\);

-- Location: LCCOMB_X35_Y14_N6
\ul0|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|LessThan4~1_combout\ = (!\ul0|num\(11) & (!\ul0|num\(14) & (!\ul0|num\(13) & !\ul0|num\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(11),
	datab => \ul0|num\(14),
	datac => \ul0|num\(13),
	datad => \ul0|num\(12),
	combout => \ul0|LessThan4~1_combout\);

-- Location: LCCOMB_X40_Y14_N12
\comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(3)) # (!\SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datac => \u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(3),
	combout => \comb~2_combout\);

-- Location: LCCOMB_X40_Y14_N24
\comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(0)) # (!\SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(0),
	datac => \SW~combout\(2),
	combout => \comb~3_combout\);

-- Location: LCCOMB_X34_Y14_N16
\comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(6)) # (!\SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(6),
	datad => \SW~combout\(2),
	combout => \comb~4_combout\);

-- Location: LCCOMB_X34_Y14_N26
\comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(5)) # (!\SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(5),
	datad => \SW~combout\(2),
	combout => \comb~5_combout\);

-- Location: LCCOMB_X34_Y14_N28
\comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(7)) # (!\SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(7),
	datad => \SW~combout\(2),
	combout => \comb~6_combout\);

-- Location: LCCOMB_X34_Y14_N24
\comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(4)) # (!\SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(4),
	datad => \SW~combout\(2),
	combout => \comb~7_combout\);

-- Location: LCCOMB_X33_Y14_N14
\comb~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = (\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(5)) # (!\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(5),
	datad => \SW~combout\(1),
	combout => \comb~9_combout\);

-- Location: LCCOMB_X33_Y14_N24
\comb~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = (\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(7)) # (!\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(7),
	datad => \SW~combout\(1),
	combout => \comb~10_combout\);

-- Location: LCCOMB_X40_Y14_N4
\comb~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~15_combout\ = (\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(0)) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(0),
	datad => \SW~combout\(0),
	combout => \comb~15_combout\);

-- Location: LCCOMB_X40_Y14_N14
\comb~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~19_combout\ = (\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(1)) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(1),
	datad => \SW~combout\(0),
	combout => \comb~19_combout\);

-- Location: LCCOMB_X33_Y14_N6
\comb~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~20_combout\ = (\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(4)) # (!\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(4),
	datad => \SW~combout\(1),
	combout => \comb~20_combout\);

-- Location: LCFF_X23_Y15_N11
\comb_54|uart1|uart_tx_1|count16[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|count16~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_tx_1|count16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|count16\(2));

-- Location: LCFF_X26_Y15_N17
\comb_54|uart1|uart_tx_1|bit_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|bit_count~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_tx_1|data_buf~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|bit_count\(2));

-- Location: LCCOMB_X35_Y14_N26
\ul0|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Selector8~1_combout\ = (!\ul0|LessThan3~0_combout\ & (\ul0|state.S3~regout\ & ((\ul0|num\(15)) # (!\ul0|LessThan4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|LessThan3~0_combout\,
	datab => \ul0|LessThan4~4_combout\,
	datac => \ul0|state.S3~regout\,
	datad => \ul0|num\(15),
	combout => \ul0|Selector8~1_combout\);

-- Location: LCCOMB_X35_Y14_N12
\ul0|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Selector8~2_combout\ = (\ul0|Selector8~1_combout\) # ((\ul0|state.S4~regout\ & \ul0|LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ul0|Selector8~1_combout\,
	datac => \ul0|state.S4~regout\,
	datad => \ul0|LessThan5~2_combout\,
	combout => \ul0|Selector8~2_combout\);

-- Location: LCFF_X26_Y15_N13
\comb_54|uart1|uart_tx_1|data_buf[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|data_buf~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_tx_1|data_buf~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|data_buf\(2));

-- Location: LCFF_X30_Y18_N7
\comb_54|uart1|baud_gen_1|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|Add0~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(3));

-- Location: LCFF_X30_Y18_N13
\comb_54|uart1|baud_gen_1|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|Add0~12_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(6));

-- Location: LCCOMB_X23_Y15_N10
\comb_54|uart1|uart_tx_1|count16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|count16~3_combout\ = (\comb_54|uart1|uart_tx_1|always2~2_combout\ & (\comb_54|uart1|uart_tx_1|count16\(2) $ (((\comb_54|uart1|uart_tx_1|count16\(1) & \comb_54|uart1|uart_tx_1|count16\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|count16\(1),
	datab => \comb_54|uart1|uart_tx_1|always2~2_combout\,
	datac => \comb_54|uart1|uart_tx_1|count16\(2),
	datad => \comb_54|uart1|uart_tx_1|count16\(0),
	combout => \comb_54|uart1|uart_tx_1|count16~3_combout\);

-- Location: LCCOMB_X26_Y15_N16
\comb_54|uart1|uart_tx_1|bit_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|bit_count~0_combout\ = (\comb_54|uart1|uart_tx_1|always2~4_combout\ & (\comb_54|uart1|uart_tx_1|bit_count\(2) $ (((\comb_54|uart1|uart_tx_1|bit_count\(0) & \comb_54|uart1|uart_tx_1|bit_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|bit_count\(0),
	datab => \comb_54|uart1|uart_tx_1|bit_count\(1),
	datac => \comb_54|uart1|uart_tx_1|bit_count\(2),
	datad => \comb_54|uart1|uart_tx_1|always2~4_combout\,
	combout => \comb_54|uart1|uart_tx_1|bit_count~0_combout\);

-- Location: LCCOMB_X26_Y15_N6
\comb_54|uart1|uart_tx_1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|Add1~0_combout\ = \comb_54|uart1|uart_tx_1|bit_count\(3) $ (((\comb_54|uart1|uart_tx_1|bit_count\(0) & (\comb_54|uart1|uart_tx_1|bit_count\(2) & \comb_54|uart1|uart_tx_1|bit_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|bit_count\(3),
	datab => \comb_54|uart1|uart_tx_1|bit_count\(0),
	datac => \comb_54|uart1|uart_tx_1|bit_count\(2),
	datad => \comb_54|uart1|uart_tx_1|bit_count\(1),
	combout => \comb_54|uart1|uart_tx_1|Add1~0_combout\);

-- Location: LCCOMB_X27_Y13_N2
\comb_54|uart_parser1|always15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always15~0_combout\ = (!\comb_54|uart1|uart_rx_1|rx_data\(5) & !\comb_54|uart1|uart_rx_1|rx_data\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_rx_1|rx_data\(5),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(4),
	combout => \comb_54|uart_parser1|always15~0_combout\);

-- Location: LCCOMB_X26_Y13_N8
\comb_54|uart_parser1|new_tx_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|new_tx_data~0_combout\ = (\comb_54|uart_parser1|read_done_s~regout\) # ((\comb_54|uart_parser1|always15~0_combout\ & (\comb_54|uart_parser1|main_sm.1000~regout\ & \comb_54|uart1|uart_rx_1|new_rx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|always15~0_combout\,
	datab => \comb_54|uart_parser1|main_sm.1000~regout\,
	datac => \comb_54|uart_parser1|read_done_s~regout\,
	datad => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	combout => \comb_54|uart_parser1|new_tx_data~0_combout\);

-- Location: LCFF_X25_Y14_N29
\comb_54|uart_parser1|write_req\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|int_write~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|write_req~regout\);

-- Location: LCCOMB_X23_Y14_N12
\comb_54|uart_parser1|always1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always1~2_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(2) & (((\comb_54|uart1|uart_rx_1|rx_data\(3)) # (!\comb_54|uart1|uart_rx_1|rx_data\(1))) # (!\comb_54|uart1|uart_rx_1|rx_data\(0)))) # (!\comb_54|uart1|uart_rx_1|rx_data\(2) & 
-- ((\comb_54|uart1|uart_rx_1|rx_data\(1)) # ((\comb_54|uart1|uart_rx_1|rx_data\(0) & !\comb_54|uart1|uart_rx_1|rx_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(0),
	datab => \comb_54|uart1|uart_rx_1|rx_data\(3),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(2),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(1),
	combout => \comb_54|uart_parser1|always1~2_combout\);

-- Location: LCFF_X24_Y15_N23
\comb_54|uart1|uart_tx_1|data_buf[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|data_buf~5_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_tx_1|data_buf~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|data_buf\(3));

-- Location: LCCOMB_X26_Y15_N12
\comb_54|uart1|uart_tx_1|data_buf~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|data_buf~4_combout\ = (\comb_54|uart1|uart_tx_1|tx_busy~regout\ & ((\comb_54|uart1|uart_tx_1|data_buf\(3)))) # (!\comb_54|uart1|uart_tx_1|tx_busy~regout\ & (\comb_54|uart_parser1|tx_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|tx_data\(1),
	datac => \comb_54|uart1|uart_tx_1|data_buf\(3),
	datad => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	combout => \comb_54|uart1|uart_tx_1|data_buf~4_combout\);

-- Location: LCCOMB_X25_Y15_N30
\comb_54|uart_parser1|tx_data[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|tx_data[0]~0_combout\ = (\comb_54|uart_parser1|bin_read_op~regout\ & (!\comb_54|uart_parser1|tx_sm.000~regout\ & \comb_54|uart_parser1|read_done_s~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|bin_read_op~regout\,
	datac => \comb_54|uart_parser1|tx_sm.000~regout\,
	datad => \comb_54|uart_parser1|read_done_s~regout\,
	combout => \comb_54|uart_parser1|tx_data[0]~0_combout\);

-- Location: LCFF_X23_Y15_N21
\comb_54|uart_parser1|read_data_s[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \u10|b_dout\(4),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart_parser1|read_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|read_data_s\(4));

-- Location: LCCOMB_X23_Y15_N20
\comb_54|uart_parser1|tx_nibble[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|tx_nibble[0]~0_combout\ = (\comb_54|uart_parser1|tx_sm.001~regout\ & (\comb_54|uart_parser1|read_data_s\(0))) # (!\comb_54|uart_parser1|tx_sm.001~regout\ & ((\comb_54|uart_parser1|read_data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|read_data_s\(0),
	datac => \comb_54|uart_parser1|read_data_s\(4),
	datad => \comb_54|uart_parser1|tx_sm.001~regout\,
	combout => \comb_54|uart_parser1|tx_nibble[0]~0_combout\);

-- Location: LCFF_X22_Y15_N3
\comb_54|uart_parser1|read_data_s[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|read_data_s[1]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|read_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|read_data_s\(1));

-- Location: LCFF_X23_Y15_N25
\comb_54|uart_parser1|read_data_s[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \u10|b_dout\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart_parser1|read_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|read_data_s\(2));

-- Location: LCFF_X24_Y13_N7
\comb_54|uart1|uart_rx_1|count16[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|count16~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|baud_gen_1|ce_16~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|count16\(0));

-- Location: LCCOMB_X25_Y15_N14
\comb_54|uart_parser1|Selector20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector20~2_combout\ = (!\comb_54|uart_parser1|tx_sm.000~regout\ & ((\comb_54|uart_parser1|bin_read_op~regout\) # (!\comb_54|uart_parser1|read_done_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|bin_read_op~regout\,
	datac => \comb_54|uart_parser1|tx_sm.000~regout\,
	datad => \comb_54|uart_parser1|read_done_s~regout\,
	combout => \comb_54|uart_parser1|Selector20~2_combout\);

-- Location: LCCOMB_X27_Y14_N16
\comb_54|uart_parser1|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always0~1_combout\ = (!\comb_54|uart1|uart_rx_1|rx_data\(4) & (\comb_54|uart_parser1|always0~0_combout\ & \comb_54|uart_parser1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(4),
	datab => \comb_54|uart_parser1|always0~0_combout\,
	datad => \comb_54|uart_parser1|Equal0~0_combout\,
	combout => \comb_54|uart_parser1|always0~1_combout\);

-- Location: LCCOMB_X27_Y13_N24
\comb_54|uart_parser1|WideOr11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr11~0_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(7)) # ((\comb_54|uart1|uart_rx_1|rx_data\(2)) # ((\comb_54|uart1|uart_rx_1|rx_data\(4) & !\comb_54|uart1|uart_rx_1|rx_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(7),
	datab => \comb_54|uart1|uart_rx_1|rx_data\(4),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(5),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(2),
	combout => \comb_54|uart_parser1|WideOr11~0_combout\);

-- Location: LCCOMB_X27_Y13_N16
\comb_54|uart_parser1|WideOr11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr11~1_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(6) & ((\comb_54|uart1|uart_rx_1|rx_data\(4)) # (\comb_54|uart1|uart_rx_1|rx_data\(0) $ (!\comb_54|uart1|uart_rx_1|rx_data\(1))))) # (!\comb_54|uart1|uart_rx_1|rx_data\(6) & 
-- (((!\comb_54|uart1|uart_rx_1|rx_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(0),
	datab => \comb_54|uart1|uart_rx_1|rx_data\(6),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(1),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(4),
	combout => \comb_54|uart_parser1|WideOr11~1_combout\);

-- Location: LCFF_X24_Y15_N19
\comb_54|uart1|uart_tx_1|data_buf[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|data_buf~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_tx_1|data_buf~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|data_buf\(4));

-- Location: LCCOMB_X24_Y15_N22
\comb_54|uart1|uart_tx_1|data_buf~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|data_buf~5_combout\ = (\comb_54|uart1|uart_tx_1|tx_busy~regout\ & (\comb_54|uart1|uart_tx_1|data_buf\(4))) # (!\comb_54|uart1|uart_tx_1|tx_busy~regout\ & ((\comb_54|uart_parser1|tx_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_tx_1|data_buf\(4),
	datac => \comb_54|uart_parser1|tx_data\(2),
	datad => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	combout => \comb_54|uart1|uart_tx_1|data_buf~5_combout\);

-- Location: LCCOMB_X22_Y15_N6
\comb_54|uart_parser1|WideOr16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr16~0_combout\ = (\comb_54|uart_parser1|tx_nibble[1]~1_combout\ & (((\comb_54|uart_parser1|tx_nibble[0]~0_combout\) # (!\comb_54|uart_parser1|tx_nibble[3]~3_combout\)))) # (!\comb_54|uart_parser1|tx_nibble[1]~1_combout\ & 
-- (\comb_54|uart_parser1|tx_nibble[2]~2_combout\ & (\comb_54|uart_parser1|tx_nibble[3]~3_combout\ & !\comb_54|uart_parser1|tx_nibble[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|tx_nibble[1]~1_combout\,
	datab => \comb_54|uart_parser1|tx_nibble[2]~2_combout\,
	datac => \comb_54|uart_parser1|tx_nibble[3]~3_combout\,
	datad => \comb_54|uart_parser1|tx_nibble[0]~0_combout\,
	combout => \comb_54|uart_parser1|WideOr16~0_combout\);

-- Location: LCCOMB_X22_Y15_N8
\comb_54|uart_parser1|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector17~0_combout\ = (\comb_54|uart_parser1|tx_data[0]~0_combout\ & (((\comb_54|uart_parser1|read_data_s\(1))))) # (!\comb_54|uart_parser1|tx_data[0]~0_combout\ & ((\comb_54|uart_parser1|WideOr16~0_combout\) # 
-- ((\comb_54|uart_parser1|tx_data[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|WideOr16~0_combout\,
	datab => \comb_54|uart_parser1|read_data_s\(1),
	datac => \comb_54|uart_parser1|tx_data[0]~1_combout\,
	datad => \comb_54|uart_parser1|tx_data[0]~0_combout\,
	combout => \comb_54|uart_parser1|Selector17~0_combout\);

-- Location: LCFF_X20_Y14_N11
\u10|b_dout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \u10|b_dout~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|b_dout\(4));

-- Location: LCFF_X20_Y14_N13
\u10|b_dout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \u10|b_dout~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|b_dout\(1));

-- Location: LCFF_X20_Y14_N1
\u10|b_dout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \u10|b_dout~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|b_dout\(2));

-- Location: LCCOMB_X24_Y15_N6
\comb_54|uart1|uart_rx_1|ce_1_mid\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|ce_1_mid~combout\ = (\comb_54|uart1|uart_rx_1|ce_1_mid~0_combout\ & !\comb_54|uart1|uart_rx_1|count16\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_rx_1|ce_1_mid~0_combout\,
	datac => \comb_54|uart1|uart_rx_1|count16\(3),
	combout => \comb_54|uart1|uart_rx_1|ce_1_mid~combout\);

-- Location: LCCOMB_X24_Y13_N6
\comb_54|uart1|uart_rx_1|count16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|count16~4_combout\ = (!\comb_54|uart1|uart_rx_1|count16\(0) & ((\comb_54|uart1|uart_rx_1|rx_busy~regout\) # (\comb_54|uart1|uart_rx_1|in_sync\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_rx_1|rx_busy~regout\,
	datac => \comb_54|uart1|uart_rx_1|count16\(0),
	datad => \comb_54|uart1|uart_rx_1|in_sync\(1),
	combout => \comb_54|uart1|uart_rx_1|count16~4_combout\);

-- Location: LCCOMB_X26_Y13_N16
\comb_54|uart_parser1|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector0~2_combout\ = (\comb_54|uart_parser1|always15~0_combout\ & ((\comb_54|uart_parser1|main_sm.1000~regout\) # ((!\comb_54|uart_parser1|bin_write_op~regout\ & \comb_54|uart_parser1|main_sm.1011~regout\)))) # 
-- (!\comb_54|uart_parser1|always15~0_combout\ & (((!\comb_54|uart_parser1|bin_write_op~regout\ & \comb_54|uart_parser1|main_sm.1011~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|always15~0_combout\,
	datab => \comb_54|uart_parser1|main_sm.1000~regout\,
	datac => \comb_54|uart_parser1|bin_write_op~regout\,
	datad => \comb_54|uart_parser1|main_sm.1011~regout\,
	combout => \comb_54|uart_parser1|Selector0~2_combout\);

-- Location: LCCOMB_X24_Y14_N20
\comb_54|uart_parser1|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector0~3_combout\ = (!\comb_54|uart_parser1|Equal3~1_combout\ & (!\comb_54|uart_parser1|Equal1~0_combout\ & !\comb_54|uart_parser1|main_sm.0000~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|Equal3~1_combout\,
	datab => \comb_54|uart_parser1|Equal1~0_combout\,
	datac => \comb_54|uart_parser1|main_sm.0000~regout\,
	combout => \comb_54|uart_parser1|Selector0~3_combout\);

-- Location: LCFF_X24_Y15_N11
\comb_54|uart1|uart_tx_1|data_buf[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|data_buf~7_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_tx_1|data_buf~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|data_buf\(5));

-- Location: LCFF_X24_Y15_N29
\comb_54|uart_parser1|tx_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector15~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|tx_data\(3));

-- Location: LCCOMB_X24_Y15_N18
\comb_54|uart1|uart_tx_1|data_buf~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|data_buf~6_combout\ = (\comb_54|uart1|uart_tx_1|tx_busy~regout\ & (\comb_54|uart1|uart_tx_1|data_buf\(5))) # (!\comb_54|uart1|uart_tx_1|tx_busy~regout\ & ((\comb_54|uart_parser1|tx_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|data_buf\(5),
	datab => \comb_54|uart_parser1|tx_data\(3),
	datad => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	combout => \comb_54|uart1|uart_tx_1|data_buf~6_combout\);

-- Location: LCCOMB_X22_Y15_N24
\comb_54|uart_parser1|WideOr15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr15~0_combout\ = (\comb_54|uart_parser1|tx_nibble[2]~2_combout\ & ((\comb_54|uart_parser1|tx_nibble[1]~1_combout\) # ((\comb_54|uart_parser1|tx_nibble[0]~0_combout\) # (!\comb_54|uart_parser1|tx_nibble[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|tx_nibble[1]~1_combout\,
	datab => \comb_54|uart_parser1|tx_nibble[2]~2_combout\,
	datac => \comb_54|uart_parser1|tx_nibble[3]~3_combout\,
	datad => \comb_54|uart_parser1|tx_nibble[0]~0_combout\,
	combout => \comb_54|uart_parser1|WideOr15~0_combout\);

-- Location: LCCOMB_X23_Y15_N24
\comb_54|uart_parser1|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector16~0_combout\ = (\comb_54|uart_parser1|tx_data[0]~0_combout\ & (((\comb_54|uart_parser1|read_data_s\(2))))) # (!\comb_54|uart_parser1|tx_data[0]~0_combout\ & (\comb_54|uart_parser1|WideOr15~0_combout\ & 
-- ((!\comb_54|uart_parser1|tx_data[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|tx_data[0]~0_combout\,
	datab => \comb_54|uart_parser1|WideOr15~0_combout\,
	datac => \comb_54|uart_parser1|read_data_s\(2),
	datad => \comb_54|uart_parser1|tx_data[0]~1_combout\,
	combout => \comb_54|uart_parser1|Selector16~0_combout\);

-- Location: LCFF_X21_Y14_N7
\u10|Mux24~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \u10|Mux24~0feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|Mux24~0_regout\);

-- Location: LCFF_X22_Y14_N17
\u10|mem_rtl_0_bypass[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_address\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(1));

-- Location: LCFF_X21_Y14_N25
\u10|mem_rtl_0_bypass[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_address\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(3));

-- Location: LCCOMB_X21_Y14_N24
\u10|Mux24~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Mux24~9_combout\ = (\u10|mem_rtl_0_bypass\(1) & ((\comb_54|uart_parser1|int_address\(1) $ (\u10|mem_rtl_0_bypass\(3))) # (!\comb_54|uart_parser1|int_address\(0)))) # (!\u10|mem_rtl_0_bypass\(1) & ((\comb_54|uart_parser1|int_address\(0)) # 
-- (\comb_54|uart_parser1|int_address\(1) $ (\u10|mem_rtl_0_bypass\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|mem_rtl_0_bypass\(1),
	datab => \comb_54|uart_parser1|int_address\(1),
	datac => \u10|mem_rtl_0_bypass\(3),
	datad => \comb_54|uart_parser1|int_address\(0),
	combout => \u10|Mux24~9_combout\);

-- Location: LCFF_X20_Y14_N3
\u10|Mux24~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_wr_data\(0),
	sload => VCC,
	ena => \u10|Mux24~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|Mux24~8_regout\);

-- Location: LCFF_X20_Y14_N31
\u10|Mux24~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_wr_data\(4),
	sload => VCC,
	ena => \u10|Mux24~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|Mux24~4_regout\);

-- Location: LCFF_X20_Y14_N25
\u10|mem_rtl_0_bypass[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_wr_data\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(24));

-- Location: LCCOMB_X20_Y14_N24
\u10|b_dout~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~4_combout\ = (\u10|b_dout[7]~0_combout\ & ((\comb_54|uart_parser1|int_wr_data\(4)) # ((\u10|b_dout[7]~1_combout\)))) # (!\u10|b_dout[7]~0_combout\ & (((\u10|mem_rtl_0_bypass\(24) & !\u10|b_dout[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_wr_data\(4),
	datab => \u10|b_dout[7]~0_combout\,
	datac => \u10|mem_rtl_0_bypass\(24),
	datad => \u10|b_dout[7]~1_combout\,
	combout => \u10|b_dout~4_combout\);

-- Location: LCCOMB_X20_Y14_N10
\u10|b_dout~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~5_combout\ = (\u10|b_dout~4_combout\ & (((\u10|mem_rtl_0|auto_generated|ram_block1a3\) # (!\u10|b_dout[7]~1_combout\)))) # (!\u10|b_dout~4_combout\ & (\u10|Mux24~4_regout\ & ((\u10|b_dout[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|b_dout~4_combout\,
	datab => \u10|Mux24~4_regout\,
	datac => \u10|mem_rtl_0|auto_generated|ram_block1a3\,
	datad => \u10|b_dout[7]~1_combout\,
	combout => \u10|b_dout~5_combout\);

-- Location: LCFF_X20_Y14_N19
\u10|Mux24~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_wr_data\(1),
	sload => VCC,
	ena => \u10|Mux24~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|Mux24~7_regout\);

-- Location: LCFF_X20_Y14_N5
\u10|mem_rtl_0_bypass[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_wr_data\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(27));

-- Location: LCCOMB_X20_Y14_N4
\u10|b_dout~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~6_combout\ = (\u10|b_dout[7]~0_combout\ & ((\comb_54|uart_parser1|int_wr_data\(1)) # ((\u10|b_dout[7]~1_combout\)))) # (!\u10|b_dout[7]~0_combout\ & (((\u10|mem_rtl_0_bypass\(27) & !\u10|b_dout[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_wr_data\(1),
	datab => \u10|b_dout[7]~0_combout\,
	datac => \u10|mem_rtl_0_bypass\(27),
	datad => \u10|b_dout[7]~1_combout\,
	combout => \u10|b_dout~6_combout\);

-- Location: LCCOMB_X20_Y14_N12
\u10|b_dout~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~7_combout\ = (\u10|b_dout~6_combout\ & ((\u10|mem_rtl_0|auto_generated|ram_block1a6\) # ((!\u10|b_dout[7]~1_combout\)))) # (!\u10|b_dout~6_combout\ & (((\u10|Mux24~7_regout\ & \u10|b_dout[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|mem_rtl_0|auto_generated|ram_block1a6\,
	datab => \u10|Mux24~7_regout\,
	datac => \u10|b_dout~6_combout\,
	datad => \u10|b_dout[7]~1_combout\,
	combout => \u10|b_dout~7_combout\);

-- Location: LCFF_X20_Y14_N7
\u10|Mux24~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_wr_data\(5),
	sload => VCC,
	ena => \u10|Mux24~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|Mux24~3_regout\);

-- Location: LCFF_X20_Y14_N27
\u10|Mux24~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_wr_data\(2),
	sload => VCC,
	ena => \u10|Mux24~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|Mux24~6_regout\);

-- Location: LCFF_X20_Y14_N21
\u10|mem_rtl_0_bypass[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_wr_data\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(26));

-- Location: LCCOMB_X20_Y14_N20
\u10|b_dout~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~10_combout\ = (\u10|b_dout[7]~0_combout\ & ((\comb_54|uart_parser1|int_wr_data\(2)) # ((\u10|b_dout[7]~1_combout\)))) # (!\u10|b_dout[7]~0_combout\ & (((\u10|mem_rtl_0_bypass\(26) & !\u10|b_dout[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_wr_data\(2),
	datab => \u10|b_dout[7]~0_combout\,
	datac => \u10|mem_rtl_0_bypass\(26),
	datad => \u10|b_dout[7]~1_combout\,
	combout => \u10|b_dout~10_combout\);

-- Location: LCCOMB_X20_Y14_N0
\u10|b_dout~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~11_combout\ = (\u10|b_dout~10_combout\ & (((\u10|mem_rtl_0|auto_generated|ram_block1a5\) # (!\u10|b_dout[7]~1_combout\)))) # (!\u10|b_dout~10_combout\ & (\u10|Mux24~6_regout\ & ((\u10|b_dout[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|b_dout~10_combout\,
	datab => \u10|Mux24~6_regout\,
	datac => \u10|mem_rtl_0|auto_generated|ram_block1a5\,
	datad => \u10|b_dout[7]~1_combout\,
	combout => \u10|b_dout~11_combout\);

-- Location: LCFF_X21_Y14_N31
\u10|Mux24~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \u10|Mux24~2feeder_combout\,
	ena => \u10|Mux24~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|Mux24~2_regout\);

-- Location: LCFF_X20_Y14_N15
\u10|mem_rtl_0_bypass[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_wr_data\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(22));

-- Location: LCCOMB_X20_Y14_N14
\u10|b_dout~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~12_combout\ = (\u10|b_dout[7]~1_combout\ & ((\u10|Mux24~2_regout\) # ((\u10|b_dout[7]~0_combout\)))) # (!\u10|b_dout[7]~1_combout\ & (((\u10|mem_rtl_0_bypass\(22) & !\u10|b_dout[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Mux24~2_regout\,
	datab => \u10|b_dout[7]~1_combout\,
	datac => \u10|mem_rtl_0_bypass\(22),
	datad => \u10|b_dout[7]~0_combout\,
	combout => \u10|b_dout~12_combout\);

-- Location: LCFF_X21_Y14_N9
\u10|Mux24~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_wr_data\(3),
	sload => VCC,
	ena => \u10|Mux24~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|Mux24~5_regout\);

-- Location: LCFF_X21_Y14_N21
\u10|Mux24~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_wr_data\(7),
	sload => VCC,
	ena => \u10|Mux24~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|Mux24~1_regout\);

-- Location: LCFF_X25_Y14_N11
\comb_54|uart_parser1|read_req\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|int_read~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|read_req~regout\);

-- Location: LCFF_X24_Y15_N31
\comb_54|uart1|uart_tx_1|data_buf[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|data_buf~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_tx_1|data_buf~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|data_buf\(6));

-- Location: LCFF_X24_Y15_N25
\comb_54|uart_parser1|tx_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector14~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|tx_data\(4));

-- Location: LCCOMB_X24_Y15_N10
\comb_54|uart1|uart_tx_1|data_buf~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|data_buf~7_combout\ = (\comb_54|uart1|uart_tx_1|tx_busy~regout\ & (\comb_54|uart1|uart_tx_1|data_buf\(6))) # (!\comb_54|uart1|uart_tx_1|tx_busy~regout\ & ((\comb_54|uart_parser1|tx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_tx_1|data_buf\(6),
	datac => \comb_54|uart_parser1|tx_data\(4),
	datad => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	combout => \comb_54|uart1|uart_tx_1|data_buf~7_combout\);

-- Location: LCCOMB_X25_Y15_N24
\comb_54|uart_parser1|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector15~0_combout\ = (\comb_54|uart_parser1|tx_nibble[3]~3_combout\ & (!\comb_54|uart_parser1|tx_nibble[2]~2_combout\ & (!\comb_54|uart_parser1|Selector20~2_combout\ & !\comb_54|uart_parser1|tx_nibble[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|tx_nibble[3]~3_combout\,
	datab => \comb_54|uart_parser1|tx_nibble[2]~2_combout\,
	datac => \comb_54|uart_parser1|Selector20~2_combout\,
	datad => \comb_54|uart_parser1|tx_nibble[1]~1_combout\,
	combout => \comb_54|uart_parser1|Selector15~0_combout\);

-- Location: LCCOMB_X25_Y15_N18
\comb_54|uart_parser1|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector15~1_combout\ = (\comb_54|uart_parser1|Selector20~2_combout\ & (((\comb_54|uart_parser1|read_done_s~regout\)))) # (!\comb_54|uart_parser1|Selector20~2_combout\ & (!\comb_54|uart_parser1|tx_sm.101~regout\ & 
-- (!\comb_54|uart_parser1|tx_sm.100~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|tx_sm.101~regout\,
	datab => \comb_54|uart_parser1|Selector20~2_combout\,
	datac => \comb_54|uart_parser1|tx_sm.100~regout\,
	datad => \comb_54|uart_parser1|read_done_s~regout\,
	combout => \comb_54|uart_parser1|Selector15~1_combout\);

-- Location: LCCOMB_X24_Y15_N28
\comb_54|uart_parser1|Selector15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector15~2_combout\ = ((\comb_54|uart_parser1|Selector15~0_combout\) # ((\comb_54|uart_parser1|read_data_s\(3) & \comb_54|uart_parser1|Selector20~2_combout\))) # (!\comb_54|uart_parser1|Selector15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|read_data_s\(3),
	datab => \comb_54|uart_parser1|Selector15~1_combout\,
	datac => \comb_54|uart_parser1|Selector20~2_combout\,
	datad => \comb_54|uart_parser1|Selector15~0_combout\,
	combout => \comb_54|uart_parser1|Selector15~2_combout\);

-- Location: LCCOMB_X22_Y14_N30
\u10|Mux24~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Mux24~16_combout\ = (!\comb_54|uart_parser1|int_address\(7) & (!\comb_54|uart_parser1|int_address\(9) & (!\comb_54|uart_parser1|int_address\(8) & \comb_54|uart_parser1|int_write~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_address\(7),
	datab => \comb_54|uart_parser1|int_address\(9),
	datac => \comb_54|uart_parser1|int_address\(8),
	datad => \comb_54|uart_parser1|int_write~regout\,
	combout => \u10|Mux24~16_combout\);

-- Location: LCCOMB_X22_Y14_N0
\u10|Mux24~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Mux24~17_combout\ = (!\comb_54|uart_parser1|int_address\(5) & (!\comb_54|uart_parser1|int_address\(3) & (!\comb_54|uart_parser1|int_address\(4) & !\comb_54|uart_parser1|int_address\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_address\(5),
	datab => \comb_54|uart_parser1|int_address\(3),
	datac => \comb_54|uart_parser1|int_address\(4),
	datad => \comb_54|uart_parser1|int_address\(6),
	combout => \u10|Mux24~17_combout\);

-- Location: LCCOMB_X22_Y14_N10
\u10|Mux24~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Mux24~18_combout\ = (!\comb_54|uart_parser1|int_address\(0) & (!\comb_54|uart_parser1|int_address\(1) & !\comb_54|uart_parser1|int_address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|int_address\(0),
	datac => \comb_54|uart_parser1|int_address\(1),
	datad => \comb_54|uart_parser1|int_address\(2),
	combout => \u10|Mux24~18_combout\);

-- Location: LCCOMB_X22_Y14_N4
\u10|Mux24~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Mux24~19_combout\ = (\u10|Mux24~18_combout\ & (\u10|Mux24~16_combout\ & \u10|Mux24~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Mux24~18_combout\,
	datab => \u10|Mux24~16_combout\,
	datad => \u10|Mux24~17_combout\,
	combout => \u10|Mux24~19_combout\);

-- Location: LCCOMB_X25_Y14_N10
\comb_54|uart_parser1|int_read~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|int_read~4_combout\ = (\comb_54|uart_parser1|int_read~2_combout\) # ((\comb_54|uart_parser1|read_op~regout\ & (\comb_54|uart_parser1|always11~2_combout\ & !\comb_54|uart_parser1|always1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|read_op~regout\,
	datab => \comb_54|uart_parser1|int_read~2_combout\,
	datac => \comb_54|uart_parser1|always11~2_combout\,
	datad => \comb_54|uart_parser1|always1~4_combout\,
	combout => \comb_54|uart_parser1|int_read~4_combout\);

-- Location: LCFF_X24_Y15_N27
\comb_54|uart1|uart_tx_1|data_buf[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|data_buf~9_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_tx_1|data_buf~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|data_buf\(7));

-- Location: LCFF_X24_Y15_N13
\comb_54|uart_parser1|tx_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector13~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|tx_data\(5));

-- Location: LCCOMB_X24_Y15_N30
\comb_54|uart1|uart_tx_1|data_buf~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|data_buf~8_combout\ = (\comb_54|uart1|uart_tx_1|tx_busy~regout\ & ((\comb_54|uart1|uart_tx_1|data_buf\(7)))) # (!\comb_54|uart1|uart_tx_1|tx_busy~regout\ & (\comb_54|uart_parser1|tx_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|tx_data\(5),
	datab => \comb_54|uart1|uart_tx_1|data_buf\(7),
	datad => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	combout => \comb_54|uart1|uart_tx_1|data_buf~8_combout\);

-- Location: LCCOMB_X25_Y15_N10
\comb_54|uart_parser1|WideOr14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr14~0_combout\ = ((!\comb_54|uart_parser1|tx_nibble[2]~2_combout\ & !\comb_54|uart_parser1|tx_nibble[1]~1_combout\)) # (!\comb_54|uart_parser1|tx_nibble[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|tx_nibble[2]~2_combout\,
	datac => \comb_54|uart_parser1|tx_nibble[3]~3_combout\,
	datad => \comb_54|uart_parser1|tx_nibble[1]~1_combout\,
	combout => \comb_54|uart_parser1|WideOr14~0_combout\);

-- Location: LCCOMB_X25_Y15_N16
\comb_54|uart_parser1|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector14~0_combout\ = (\comb_54|uart_parser1|WideOr14~0_combout\ & (!\comb_54|uart_parser1|Selector20~2_combout\ & (!\comb_54|uart_parser1|tx_sm.100~regout\ & !\comb_54|uart_parser1|tx_sm.101~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|WideOr14~0_combout\,
	datab => \comb_54|uart_parser1|Selector20~2_combout\,
	datac => \comb_54|uart_parser1|tx_sm.100~regout\,
	datad => \comb_54|uart_parser1|tx_sm.101~regout\,
	combout => \comb_54|uart_parser1|Selector14~0_combout\);

-- Location: LCCOMB_X24_Y15_N24
\comb_54|uart_parser1|Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector14~1_combout\ = (\comb_54|uart_parser1|Selector14~0_combout\) # ((\comb_54|uart_parser1|Selector20~2_combout\ & ((\comb_54|uart_parser1|read_data_s\(4)) # (!\comb_54|uart_parser1|read_done_s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|Selector14~0_combout\,
	datab => \comb_54|uart_parser1|read_done_s~regout\,
	datac => \comb_54|uart_parser1|Selector20~2_combout\,
	datad => \comb_54|uart_parser1|read_data_s\(4),
	combout => \comb_54|uart_parser1|Selector14~1_combout\);

-- Location: LCFF_X25_Y13_N3
\comb_54|uart1|uart_tx_1|data_buf[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|data_buf~10_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|data_buf\(8));

-- Location: LCFF_X24_Y15_N15
\comb_54|uart_parser1|tx_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector12~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|tx_data\(6));

-- Location: LCCOMB_X24_Y15_N26
\comb_54|uart1|uart_tx_1|data_buf~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|data_buf~9_combout\ = (\comb_54|uart1|uart_tx_1|tx_busy~regout\ & (\comb_54|uart1|uart_tx_1|data_buf\(8))) # (!\comb_54|uart1|uart_tx_1|tx_busy~regout\ & ((\comb_54|uart_parser1|tx_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|data_buf\(8),
	datac => \comb_54|uart_parser1|tx_data\(6),
	datad => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	combout => \comb_54|uart1|uart_tx_1|data_buf~9_combout\);

-- Location: LCCOMB_X24_Y15_N12
\comb_54|uart_parser1|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector13~0_combout\ = (\comb_54|uart_parser1|Selector15~1_combout\ & ((\comb_54|uart_parser1|Selector20~2_combout\ & (\comb_54|uart_parser1|read_data_s\(5))) # (!\comb_54|uart_parser1|Selector20~2_combout\ & 
-- ((\comb_54|uart_parser1|WideOr14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|read_data_s\(5),
	datab => \comb_54|uart_parser1|WideOr14~0_combout\,
	datac => \comb_54|uart_parser1|Selector20~2_combout\,
	datad => \comb_54|uart_parser1|Selector15~1_combout\,
	combout => \comb_54|uart_parser1|Selector13~0_combout\);

-- Location: LCFF_X25_Y15_N13
\comb_54|uart_parser1|tx_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector11~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|tx_data\(7));

-- Location: LCCOMB_X25_Y13_N2
\comb_54|uart1|uart_tx_1|data_buf~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|data_buf~10_combout\ = (\comb_54|uart1|uart_tx_1|tx_busy~regout\ & (((\comb_54|uart1|uart_tx_1|data_buf\(8)) # (\comb_54|uart1|uart_tx_1|data_buf~11_combout\)))) # (!\comb_54|uart1|uart_tx_1|tx_busy~regout\ & 
-- (\comb_54|uart_parser1|tx_data\(7) & ((\comb_54|uart1|uart_tx_1|data_buf\(8)) # (\comb_54|uart1|uart_tx_1|data_buf~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	datab => \comb_54|uart_parser1|tx_data\(7),
	datac => \comb_54|uart1|uart_tx_1|data_buf\(8),
	datad => \comb_54|uart1|uart_tx_1|data_buf~11_combout\,
	combout => \comb_54|uart1|uart_tx_1|data_buf~10_combout\);

-- Location: LCCOMB_X25_Y15_N4
\comb_54|uart_parser1|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector12~0_combout\ = (!\comb_54|uart_parser1|WideOr14~0_combout\ & (!\comb_54|uart_parser1|Selector20~2_combout\ & (!\comb_54|uart_parser1|tx_sm.100~regout\ & !\comb_54|uart_parser1|tx_sm.101~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|WideOr14~0_combout\,
	datab => \comb_54|uart_parser1|Selector20~2_combout\,
	datac => \comb_54|uart_parser1|tx_sm.100~regout\,
	datad => \comb_54|uart_parser1|tx_sm.101~regout\,
	combout => \comb_54|uart_parser1|Selector12~0_combout\);

-- Location: LCCOMB_X24_Y15_N14
\comb_54|uart_parser1|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector12~1_combout\ = (\comb_54|uart_parser1|Selector12~0_combout\) # ((\comb_54|uart_parser1|Selector20~2_combout\ & ((\comb_54|uart_parser1|read_data_s\(6)) # (!\comb_54|uart_parser1|read_done_s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|Selector12~0_combout\,
	datab => \comb_54|uart_parser1|Selector20~2_combout\,
	datac => \comb_54|uart_parser1|read_done_s~regout\,
	datad => \comb_54|uart_parser1|read_data_s\(6),
	combout => \comb_54|uart_parser1|Selector12~1_combout\);

-- Location: LCCOMB_X25_Y15_N28
\comb_54|uart_parser1|Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector11~2_combout\ = (!\comb_54|uart_parser1|Selector11~4_combout\ & ((\comb_54|uart_parser1|read_done_s~regout\) # ((\comb_54|uart_parser1|tx_sm.000~regout\) # (\comb_54|uart_parser1|new_tx_data~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|read_done_s~regout\,
	datab => \comb_54|uart_parser1|Selector11~4_combout\,
	datac => \comb_54|uart_parser1|tx_sm.000~regout\,
	datad => \comb_54|uart_parser1|new_tx_data~2_combout\,
	combout => \comb_54|uart_parser1|Selector11~2_combout\);

-- Location: LCCOMB_X25_Y15_N12
\comb_54|uart_parser1|Selector11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector11~3_combout\ = (\comb_54|uart_parser1|read_data_s\(7) & ((\comb_54|uart_parser1|tx_data[0]~0_combout\) # ((!\comb_54|uart_parser1|Selector11~2_combout\ & \comb_54|uart_parser1|tx_data\(7))))) # 
-- (!\comb_54|uart_parser1|read_data_s\(7) & (!\comb_54|uart_parser1|Selector11~2_combout\ & (\comb_54|uart_parser1|tx_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|read_data_s\(7),
	datab => \comb_54|uart_parser1|Selector11~2_combout\,
	datac => \comb_54|uart_parser1|tx_data\(7),
	datad => \comb_54|uart_parser1|tx_data[0]~0_combout\,
	combout => \comb_54|uart_parser1|Selector11~3_combout\);

-- Location: LCCOMB_X25_Y15_N22
\comb_54|uart_parser1|Selector11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector11~4_combout\ = (\comb_54|uart_parser1|tx_sm.110~regout\) # ((\comb_54|uart_parser1|Selector19~0_combout\ & ((\comb_54|uart1|uart_tx_1|tx_busy~regout\) # (!\comb_54|uart_parser1|s_tx_busy~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|s_tx_busy~regout\,
	datab => \comb_54|uart_parser1|Selector19~0_combout\,
	datac => \comb_54|uart_parser1|tx_sm.110~regout\,
	datad => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	combout => \comb_54|uart_parser1|Selector11~4_combout\);

-- Location: LCCOMB_X21_Y14_N30
\u10|Mux24~2feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Mux24~2feeder_combout\ = \comb_54|uart_parser1|int_wr_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart_parser1|int_wr_data\(6),
	combout => \u10|Mux24~2feeder_combout\);

-- Location: LCCOMB_X22_Y15_N2
\comb_54|uart_parser1|read_data_s[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|read_data_s[1]~feeder_combout\ = \u10|b_dout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u10|b_dout\(1),
	combout => \comb_54|uart_parser1|read_data_s[1]~feeder_combout\);

-- Location: LCCOMB_X24_Y15_N2
\comb_54|uart_parser1|tx_data[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|tx_data[2]~feeder_combout\ = \comb_54|uart_parser1|Selector16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart_parser1|Selector16~0_combout\,
	combout => \comb_54|uart_parser1|tx_data[2]~feeder_combout\);

-- Location: LCCOMB_X21_Y14_N6
\u10|Mux24~0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Mux24~0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u10|Mux24~0feeder_combout\);

-- Location: LCCOMB_X37_Y14_N8
\ul0|cycle[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|cycle[1]~14_combout\ = (\ul0|cycle\(1) & (!\ul0|cycle[0]~13\)) # (!\ul0|cycle\(1) & ((\ul0|cycle[0]~13\) # (GND)))
-- \ul0|cycle[1]~15\ = CARRY((!\ul0|cycle[0]~13\) # (!\ul0|cycle\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ul0|cycle\(1),
	datad => VCC,
	cin => \ul0|cycle[0]~13\,
	combout => \ul0|cycle[1]~14_combout\,
	cout => \ul0|cycle[1]~15\);

-- Location: LCCOMB_X37_Y14_N26
\ul0|cycle[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|cycle[10]~32_combout\ = (\ul0|cycle\(10) & (\ul0|cycle[9]~31\ $ (GND))) # (!\ul0|cycle\(10) & (!\ul0|cycle[9]~31\ & VCC))
-- \ul0|cycle[10]~33\ = CARRY((\ul0|cycle\(10) & !\ul0|cycle[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ul0|cycle\(10),
	datad => VCC,
	cin => \ul0|cycle[9]~31\,
	combout => \ul0|cycle[10]~32_combout\,
	cout => \ul0|cycle[10]~33\);

-- Location: LCCOMB_X37_Y14_N28
\ul0|cycle[11]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|cycle[11]~34_combout\ = \ul0|cycle[10]~33\ $ (\ul0|cycle\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ul0|cycle\(11),
	cin => \ul0|cycle[10]~33\,
	combout => \ul0|cycle[11]~34_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCFF_X38_Y14_N21
reset : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|done~combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset~regout\);

-- Location: LCFF_X37_Y14_N29
\ul0|cycle[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|cycle[11]~34_combout\,
	sclr => \ul0|Selector2~3_combout\,
	ena => \ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|cycle\(11));

-- Location: LCCOMB_X37_Y14_N20
\ul0|cycle[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|cycle[7]~26_combout\ = (\ul0|cycle\(7) & (!\ul0|cycle[6]~25\)) # (!\ul0|cycle\(7) & ((\ul0|cycle[6]~25\) # (GND)))
-- \ul0|cycle[7]~27\ = CARRY((!\ul0|cycle[6]~25\) # (!\ul0|cycle\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|cycle\(7),
	datad => VCC,
	cin => \ul0|cycle[6]~25\,
	combout => \ul0|cycle[7]~26_combout\,
	cout => \ul0|cycle[7]~27\);

-- Location: LCFF_X37_Y14_N21
\ul0|cycle[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|cycle[7]~26_combout\,
	sclr => \ul0|Selector2~3_combout\,
	ena => \ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|cycle\(7));

-- Location: LCCOMB_X38_Y14_N18
\ul0|o~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|o~0_combout\ = (\ul0|LessThan5~0_combout\ & (!\ul0|cycle\(11) & (!\ul0|cycle\(7) & !\ul0|cycle\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|LessThan5~0_combout\,
	datab => \ul0|cycle\(11),
	datac => \ul0|cycle\(7),
	datad => \ul0|cycle\(10),
	combout => \ul0|o~0_combout\);

-- Location: LCCOMB_X37_Y14_N2
\ul0|state.S0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|state.S0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \ul0|state.S0~feeder_combout\);

-- Location: LCFF_X37_Y14_N3
\ul0|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|state.S0~feeder_combout\,
	aclr => \reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|state.S0~regout\);

-- Location: LCCOMB_X36_Y14_N2
\ul0|num[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[1]~15_combout\ = (\ul0|num\(1) & (\ul0|num\(0) $ (VCC))) # (!\ul0|num\(1) & (\ul0|num\(0) & VCC))
-- \ul0|num[1]~16\ = CARRY((\ul0|num\(1) & \ul0|num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(1),
	datab => \ul0|num\(0),
	datad => VCC,
	combout => \ul0|num[1]~15_combout\,
	cout => \ul0|num[1]~16\);

-- Location: LCCOMB_X36_Y14_N4
\ul0|num[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[2]~17_combout\ = (\ul0|num\(2) & (!\ul0|num[1]~16\)) # (!\ul0|num\(2) & ((\ul0|num[1]~16\) # (GND)))
-- \ul0|num[2]~18\ = CARRY((!\ul0|num[1]~16\) # (!\ul0|num\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ul0|num\(2),
	datad => VCC,
	cin => \ul0|num[1]~16\,
	combout => \ul0|num[2]~17_combout\,
	cout => \ul0|num[2]~18\);

-- Location: LCCOMB_X35_Y14_N30
\ul0|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Selector7~0_combout\ = (\ul0|state.S1~regout\) # ((\ul0|LessThan3~0_combout\ & \ul0|state.S3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|LessThan3~0_combout\,
	datac => \ul0|state.S3~regout\,
	datad => \ul0|state.S1~regout\,
	combout => \ul0|Selector7~0_combout\);

-- Location: LCCOMB_X37_Y14_N16
\ul0|cycle[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|cycle[5]~22_combout\ = (\ul0|cycle\(5) & (!\ul0|cycle[4]~21\)) # (!\ul0|cycle\(5) & ((\ul0|cycle[4]~21\) # (GND)))
-- \ul0|cycle[5]~23\ = CARRY((!\ul0|cycle[4]~21\) # (!\ul0|cycle\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|cycle\(5),
	datad => VCC,
	cin => \ul0|cycle[4]~21\,
	combout => \ul0|cycle[5]~22_combout\,
	cout => \ul0|cycle[5]~23\);

-- Location: LCFF_X37_Y14_N17
\ul0|cycle[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|cycle[5]~22_combout\,
	sclr => \ul0|Selector2~3_combout\,
	ena => \ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|cycle\(5));

-- Location: LCCOMB_X37_Y14_N10
\ul0|cycle[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|cycle[2]~16_combout\ = (\ul0|cycle\(2) & (\ul0|cycle[1]~15\ $ (GND))) # (!\ul0|cycle\(2) & (!\ul0|cycle[1]~15\ & VCC))
-- \ul0|cycle[2]~17\ = CARRY((\ul0|cycle\(2) & !\ul0|cycle[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|cycle\(2),
	datad => VCC,
	cin => \ul0|cycle[1]~15\,
	combout => \ul0|cycle[2]~16_combout\,
	cout => \ul0|cycle[2]~17\);

-- Location: LCFF_X37_Y14_N11
\ul0|cycle[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|cycle[2]~16_combout\,
	sclr => \ul0|Selector2~3_combout\,
	ena => \ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|cycle\(2));

-- Location: LCCOMB_X38_Y14_N28
\ul0|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|LessThan2~0_combout\ = (\ul0|cycle\(3) & (\ul0|cycle\(5) & (\ul0|cycle\(2) & \ul0|cycle\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|cycle\(3),
	datab => \ul0|cycle\(5),
	datac => \ul0|cycle\(2),
	datad => \ul0|cycle\(4),
	combout => \ul0|LessThan2~0_combout\);

-- Location: LCCOMB_X38_Y14_N30
\ul0|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|LessThan2~1_combout\ = (\ul0|cycle\(6) & \ul0|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ul0|cycle\(6),
	datad => \ul0|LessThan2~0_combout\,
	combout => \ul0|LessThan2~1_combout\);

-- Location: LCCOMB_X35_Y14_N2
\ul0|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Selector7~1_combout\ = (\ul0|Selector7~0_combout\) # ((\ul0|o~0_combout\ & (\ul0|state.S2~regout\ & !\ul0|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|o~0_combout\,
	datab => \ul0|Selector7~0_combout\,
	datac => \ul0|state.S2~regout\,
	datad => \ul0|LessThan2~1_combout\,
	combout => \ul0|Selector7~1_combout\);

-- Location: LCFF_X35_Y14_N3
\ul0|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|Selector7~1_combout\,
	aclr => \reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|state.S2~regout\);

-- Location: LCCOMB_X35_Y14_N24
\ul0|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Selector2~4_combout\ = (\ul0|state.S2~regout\ & (((\ul0|LessThan2~0_combout\ & \ul0|cycle\(6))) # (!\ul0|o~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|LessThan2~0_combout\,
	datab => \ul0|state.S2~regout\,
	datac => \ul0|o~0_combout\,
	datad => \ul0|cycle\(6),
	combout => \ul0|Selector2~4_combout\);

-- Location: LCFF_X35_Y14_N25
\ul0|state.S3P\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|Selector2~4_combout\,
	aclr => \reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|state.S3P~regout\);

-- Location: LCFF_X35_Y14_N21
\ul0|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \ul0|state.S3P~regout\,
	aclr => \reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|state.S3~regout\);

-- Location: LCCOMB_X35_Y14_N20
\ul0|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Selector6~1_combout\ = (!\ul0|LessThan3~0_combout\ & (\ul0|LessThan4~4_combout\ & (\ul0|state.S3~regout\ & !\ul0|num\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|LessThan3~0_combout\,
	datab => \ul0|LessThan4~4_combout\,
	datac => \ul0|state.S3~regout\,
	datad => \ul0|num\(15),
	combout => \ul0|Selector6~1_combout\);

-- Location: LCFF_X36_Y14_N5
\ul0|num[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[2]~17_combout\,
	aclr => \reset~regout\,
	ena => \ul0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(2));

-- Location: LCCOMB_X36_Y14_N8
\ul0|num[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[4]~21_combout\ = (\ul0|num\(4) & (!\ul0|num[3]~20\)) # (!\ul0|num\(4) & ((\ul0|num[3]~20\) # (GND)))
-- \ul0|num[4]~22\ = CARRY((!\ul0|num[3]~20\) # (!\ul0|num\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ul0|num\(4),
	datad => VCC,
	cin => \ul0|num[3]~20\,
	combout => \ul0|num[4]~21_combout\,
	cout => \ul0|num[4]~22\);

-- Location: LCFF_X36_Y14_N9
\ul0|num[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[4]~21_combout\,
	aclr => \reset~regout\,
	ena => \ul0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(4));

-- Location: LCCOMB_X36_Y14_N10
\ul0|num[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[5]~23_combout\ = (\ul0|num\(5) & (\ul0|num[4]~22\ $ (GND))) # (!\ul0|num\(5) & (!\ul0|num[4]~22\ & VCC))
-- \ul0|num[5]~24\ = CARRY((\ul0|num\(5) & !\ul0|num[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(5),
	datad => VCC,
	cin => \ul0|num[4]~22\,
	combout => \ul0|num[5]~23_combout\,
	cout => \ul0|num[5]~24\);

-- Location: LCCOMB_X36_Y14_N12
\ul0|num[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[6]~25_combout\ = (\ul0|num\(6) & (!\ul0|num[5]~24\)) # (!\ul0|num\(6) & ((\ul0|num[5]~24\) # (GND)))
-- \ul0|num[6]~26\ = CARRY((!\ul0|num[5]~24\) # (!\ul0|num\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(6),
	datad => VCC,
	cin => \ul0|num[5]~24\,
	combout => \ul0|num[6]~25_combout\,
	cout => \ul0|num[6]~26\);

-- Location: LCCOMB_X36_Y14_N14
\ul0|num[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[7]~27_combout\ = (\ul0|num\(7) & (\ul0|num[6]~26\ $ (GND))) # (!\ul0|num\(7) & (!\ul0|num[6]~26\ & VCC))
-- \ul0|num[7]~28\ = CARRY((\ul0|num\(7) & !\ul0|num[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ul0|num\(7),
	datad => VCC,
	cin => \ul0|num[6]~26\,
	combout => \ul0|num[7]~27_combout\,
	cout => \ul0|num[7]~28\);

-- Location: LCFF_X36_Y14_N15
\ul0|num[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[7]~27_combout\,
	aclr => \reset~regout\,
	ena => \ul0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(7));

-- Location: LCCOMB_X36_Y14_N18
\ul0|num[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[9]~31_combout\ = (\ul0|num\(9) & (\ul0|num[8]~30\ $ (GND))) # (!\ul0|num\(9) & (!\ul0|num[8]~30\ & VCC))
-- \ul0|num[9]~32\ = CARRY((\ul0|num\(9) & !\ul0|num[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ul0|num\(9),
	datad => VCC,
	cin => \ul0|num[8]~30\,
	combout => \ul0|num[9]~31_combout\,
	cout => \ul0|num[9]~32\);

-- Location: LCFF_X36_Y14_N19
\ul0|num[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[9]~31_combout\,
	aclr => \reset~regout\,
	ena => \ul0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(9));

-- Location: LCCOMB_X36_Y14_N20
\ul0|num[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[10]~33_combout\ = (\ul0|num\(10) & (!\ul0|num[9]~32\)) # (!\ul0|num\(10) & ((\ul0|num[9]~32\) # (GND)))
-- \ul0|num[10]~34\ = CARRY((!\ul0|num[9]~32\) # (!\ul0|num\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(10),
	datad => VCC,
	cin => \ul0|num[9]~32\,
	combout => \ul0|num[10]~33_combout\,
	cout => \ul0|num[10]~34\);

-- Location: LCCOMB_X36_Y14_N22
\ul0|num[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[11]~35_combout\ = (\ul0|num\(11) & (\ul0|num[10]~34\ $ (GND))) # (!\ul0|num\(11) & (!\ul0|num[10]~34\ & VCC))
-- \ul0|num[11]~36\ = CARRY((\ul0|num\(11) & !\ul0|num[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ul0|num\(11),
	datad => VCC,
	cin => \ul0|num[10]~34\,
	combout => \ul0|num[11]~35_combout\,
	cout => \ul0|num[11]~36\);

-- Location: LCFF_X36_Y14_N23
\ul0|num[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[11]~35_combout\,
	aclr => \reset~regout\,
	ena => \ul0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(11));

-- Location: LCCOMB_X36_Y14_N26
\ul0|num[13]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[13]~39_combout\ = (\ul0|num\(13) & (\ul0|num[12]~38\ $ (GND))) # (!\ul0|num\(13) & (!\ul0|num[12]~38\ & VCC))
-- \ul0|num[13]~40\ = CARRY((\ul0|num\(13) & !\ul0|num[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ul0|num\(13),
	datad => VCC,
	cin => \ul0|num[12]~38\,
	combout => \ul0|num[13]~39_combout\,
	cout => \ul0|num[13]~40\);

-- Location: LCFF_X36_Y14_N27
\ul0|num[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[13]~39_combout\,
	aclr => \reset~regout\,
	ena => \ul0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(13));

-- Location: LCCOMB_X36_Y14_N28
\ul0|num[14]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[14]~41_combout\ = (\ul0|num\(14) & (!\ul0|num[13]~40\)) # (!\ul0|num\(14) & ((\ul0|num[13]~40\) # (GND)))
-- \ul0|num[14]~42\ = CARRY((!\ul0|num[13]~40\) # (!\ul0|num\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ul0|num\(14),
	datad => VCC,
	cin => \ul0|num[13]~40\,
	combout => \ul0|num[14]~41_combout\,
	cout => \ul0|num[14]~42\);

-- Location: LCFF_X36_Y14_N29
\ul0|num[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[14]~41_combout\,
	aclr => \reset~regout\,
	ena => \ul0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(14));

-- Location: LCCOMB_X36_Y14_N30
\ul0|num[15]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[15]~44_combout\ = \ul0|num[14]~42\ $ (!\ul0|num\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ul0|num\(15),
	cin => \ul0|num[14]~42\,
	combout => \ul0|num[15]~44_combout\);

-- Location: LCFF_X36_Y14_N31
\ul0|num[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[15]~44_combout\,
	aclr => \reset~regout\,
	ena => \ul0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(15));

-- Location: LCCOMB_X35_Y14_N18
\ul0|num[0]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[0]~43_combout\ = \ul0|num\(0) $ (((\ul0|Selector8~0_combout\ & (\ul0|LessThan4~4_combout\ & !\ul0|num\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|Selector8~0_combout\,
	datab => \ul0|LessThan4~4_combout\,
	datac => \ul0|num\(0),
	datad => \ul0|num\(15),
	combout => \ul0|num[0]~43_combout\);

-- Location: LCFF_X35_Y14_N19
\ul0|num[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[0]~43_combout\,
	aclr => \reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(0));

-- Location: LCFF_X36_Y14_N3
\ul0|num[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[1]~15_combout\,
	aclr => \reset~regout\,
	ena => \ul0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(1));

-- Location: LCCOMB_X35_Y14_N8
\ul0|LessThan4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|LessThan4~2_combout\ = (!\ul0|num\(3) & (((!\ul0|num\(2)) # (!\ul0|num\(1))) # (!\ul0|num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(3),
	datab => \ul0|num\(0),
	datac => \ul0|num\(1),
	datad => \ul0|num\(2),
	combout => \ul0|LessThan4~2_combout\);

-- Location: LCFF_X36_Y14_N13
\ul0|num[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[6]~25_combout\,
	aclr => \reset~regout\,
	ena => \ul0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(6));

-- Location: LCFF_X36_Y14_N11
\ul0|num[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[5]~23_combout\,
	aclr => \reset~regout\,
	ena => \ul0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(5));

-- Location: LCCOMB_X35_Y14_N4
\ul0|LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|LessThan4~3_combout\ = ((!\ul0|num\(5)) # (!\ul0|num\(4))) # (!\ul0|num\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ul0|num\(6),
	datac => \ul0|num\(4),
	datad => \ul0|num\(5),
	combout => \ul0|LessThan4~3_combout\);

-- Location: LCFF_X36_Y14_N21
\ul0|num[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|num[10]~33_combout\,
	aclr => \reset~regout\,
	ena => \ul0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|num\(10));

-- Location: LCCOMB_X35_Y14_N0
\ul0|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|LessThan4~0_combout\ = (!\ul0|num\(8) & (!\ul0|num\(10) & (!\ul0|num\(7) & !\ul0|num\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(8),
	datab => \ul0|num\(10),
	datac => \ul0|num\(7),
	datad => \ul0|num\(9),
	combout => \ul0|LessThan4~0_combout\);

-- Location: LCCOMB_X35_Y14_N22
\ul0|LessThan4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|LessThan4~4_combout\ = (\ul0|LessThan4~1_combout\ & (\ul0|LessThan4~0_combout\ & ((\ul0|LessThan4~2_combout\) # (\ul0|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|LessThan4~1_combout\,
	datab => \ul0|LessThan4~2_combout\,
	datac => \ul0|LessThan4~3_combout\,
	datad => \ul0|LessThan4~0_combout\,
	combout => \ul0|LessThan4~4_combout\);

-- Location: LCCOMB_X35_Y14_N28
\ul0|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Selector6~0_combout\ = ((\ul0|Selector8~0_combout\ & (\ul0|LessThan4~4_combout\ & !\ul0|num\(15)))) # (!\ul0|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|Selector8~0_combout\,
	datab => \ul0|LessThan4~4_combout\,
	datac => \ul0|state.S0~regout\,
	datad => \ul0|num\(15),
	combout => \ul0|Selector6~0_combout\);

-- Location: LCFF_X35_Y14_N29
\ul0|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|Selector6~0_combout\,
	aclr => \reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|state.S1~regout\);

-- Location: LCCOMB_X37_Y14_N0
\ul0|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Selector2~2_combout\ = ((\ul0|state.S1~regout\) # (\ul0|state.S3~regout\)) # (!\ul0|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ul0|state.S0~regout\,
	datac => \ul0|state.S1~regout\,
	datad => \ul0|state.S3~regout\,
	combout => \ul0|Selector2~2_combout\);

-- Location: LCCOMB_X37_Y14_N4
\ul0|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Selector2~3_combout\ = (\ul0|Selector2~2_combout\) # ((\ul0|state.S2~regout\ & ((\ul0|LessThan2~1_combout\) # (!\ul0|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|state.S2~regout\,
	datab => \ul0|o~0_combout\,
	datac => \ul0|Selector2~2_combout\,
	datad => \ul0|LessThan2~1_combout\,
	combout => \ul0|Selector2~3_combout\);

-- Location: LCFF_X37_Y14_N9
\ul0|cycle[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|cycle[1]~14_combout\,
	sclr => \ul0|Selector2~3_combout\,
	ena => \ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|cycle\(1));

-- Location: LCCOMB_X37_Y14_N14
\ul0|cycle[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|cycle[4]~20_combout\ = (\ul0|cycle\(4) & (\ul0|cycle[3]~19\ $ (GND))) # (!\ul0|cycle\(4) & (!\ul0|cycle[3]~19\ & VCC))
-- \ul0|cycle[4]~21\ = CARRY((\ul0|cycle\(4) & !\ul0|cycle[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ul0|cycle\(4),
	datad => VCC,
	cin => \ul0|cycle[3]~19\,
	combout => \ul0|cycle[4]~20_combout\,
	cout => \ul0|cycle[4]~21\);

-- Location: LCFF_X37_Y14_N15
\ul0|cycle[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|cycle[4]~20_combout\,
	sclr => \ul0|Selector2~3_combout\,
	ena => \ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|cycle\(4));

-- Location: LCCOMB_X37_Y14_N18
\ul0|cycle[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|cycle[6]~24_combout\ = (\ul0|cycle\(6) & (\ul0|cycle[5]~23\ $ (GND))) # (!\ul0|cycle\(6) & (!\ul0|cycle[5]~23\ & VCC))
-- \ul0|cycle[6]~25\ = CARRY((\ul0|cycle\(6) & !\ul0|cycle[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ul0|cycle\(6),
	datad => VCC,
	cin => \ul0|cycle[5]~23\,
	combout => \ul0|cycle[6]~24_combout\,
	cout => \ul0|cycle[6]~25\);

-- Location: LCFF_X37_Y14_N19
\ul0|cycle[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|cycle[6]~24_combout\,
	sclr => \ul0|Selector2~3_combout\,
	ena => \ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|cycle\(6));

-- Location: LCCOMB_X37_Y14_N22
\ul0|cycle[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|cycle[8]~28_combout\ = (\ul0|cycle\(8) & (\ul0|cycle[7]~27\ $ (GND))) # (!\ul0|cycle\(8) & (!\ul0|cycle[7]~27\ & VCC))
-- \ul0|cycle[8]~29\ = CARRY((\ul0|cycle\(8) & !\ul0|cycle[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ul0|cycle\(8),
	datad => VCC,
	cin => \ul0|cycle[7]~27\,
	combout => \ul0|cycle[8]~28_combout\,
	cout => \ul0|cycle[8]~29\);

-- Location: LCFF_X37_Y14_N23
\ul0|cycle[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|cycle[8]~28_combout\,
	sclr => \ul0|Selector2~3_combout\,
	ena => \ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|cycle\(8));

-- Location: LCFF_X37_Y14_N27
\ul0|cycle[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|cycle[10]~32_combout\,
	sclr => \ul0|Selector2~3_combout\,
	ena => \ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|cycle\(10));

-- Location: LCCOMB_X38_Y14_N24
\ul0|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|LessThan5~1_combout\ = ((!\ul0|cycle\(6) & ((!\ul0|cycle\(5)) # (!\ul0|cycle\(4))))) # (!\ul0|cycle\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|cycle\(4),
	datab => \ul0|cycle\(6),
	datac => \ul0|cycle\(7),
	datad => \ul0|cycle\(5),
	combout => \ul0|LessThan5~1_combout\);

-- Location: LCCOMB_X38_Y14_N8
\ul0|LessThan5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|LessThan5~2_combout\ = (!\ul0|cycle\(11) & (((\ul0|LessThan5~0_combout\ & \ul0|LessThan5~1_combout\)) # (!\ul0|cycle\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|LessThan5~0_combout\,
	datab => \ul0|cycle\(10),
	datac => \ul0|LessThan5~1_combout\,
	datad => \ul0|cycle\(11),
	combout => \ul0|LessThan5~2_combout\);

-- Location: LCCOMB_X38_Y14_N26
\ul0|state.S5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|state.S5~0_combout\ = (\ul0|state.S5~regout\) # ((\ul0|state.S4~regout\ & !\ul0|LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|state.S4~regout\,
	datab => \ul0|LessThan5~2_combout\,
	datac => \ul0|state.S5~regout\,
	combout => \ul0|state.S5~0_combout\);

-- Location: LCFF_X38_Y14_N27
\ul0|state.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \ul0|state.S5~0_combout\,
	aclr => \reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|state.S5~regout\);

-- Location: LCCOMB_X38_Y14_N14
\ul0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|WideOr2~0_combout\ = (\ul0|state.S5~regout\) # (!\ul0|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|state.S0~regout\,
	datad => \ul0|state.S5~regout\,
	combout => \ul0|WideOr2~0_combout\);

-- Location: LCCOMB_X38_Y14_N20
\ul0|done\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|done~combout\ = (\ul0|WideOr2~0_combout\ & ((\ul0|state.S5~regout\))) # (!\ul0|WideOr2~0_combout\ & (\ul0|done~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|done~combout\,
	datac => \ul0|WideOr2~0_combout\,
	datad => \ul0|state.S5~regout\,
	combout => \ul0|done~combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y14_N16
\ledr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledr~0_combout\ = (\ledr~regout\) # (\ul0|done~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ledr~regout\,
	datad => \ul0|done~combout\,
	combout => \ledr~0_combout\);

-- Location: LCFF_X42_Y14_N17
ledr : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ledr~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledr~regout\);

-- Location: PLL_1
\upll|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 4,
	c0_initial => 1,
	c0_low => 4,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 2,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 16,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 4185,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_KEY~combout\(0),
	inclk => \upll|altpll_component|pll_INCLK_bus\,
	locked => \upll|altpll_component|_locked\,
	clk => \upll|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\upll|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \upll|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \upll|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y14_N2
\ul0|index[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|index[0]~7_combout\ = \ul0|index\(0) $ (VCC)
-- \ul0|index[0]~8\ = CARRY(\ul0|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ul0|index\(0),
	datad => VCC,
	combout => \ul0|index[0]~7_combout\,
	cout => \ul0|index[0]~8\);

-- Location: LCCOMB_X35_Y14_N14
\ul0|index[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|index[1]~15_combout\ = (\ul0|state.S3P~regout\) # ((\ul0|Selector6~1_combout\) # (\ul0|state.S1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|state.S3P~regout\,
	datac => \ul0|Selector6~1_combout\,
	datad => \ul0|state.S1~regout\,
	combout => \ul0|index[1]~15_combout\);

-- Location: LCFF_X34_Y14_N3
\ul0|index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|index[0]~7_combout\,
	aclr => \reset~regout\,
	sclr => \ul0|ALT_INV_state.S3P~regout\,
	ena => \ul0|index[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|index\(0));

-- Location: LCCOMB_X34_Y14_N4
\ul0|index[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|index[1]~9_combout\ = (\ul0|index\(1) & (!\ul0|index[0]~8\)) # (!\ul0|index\(1) & ((\ul0|index[0]~8\) # (GND)))
-- \ul0|index[1]~10\ = CARRY((!\ul0|index[0]~8\) # (!\ul0|index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ul0|index\(1),
	datad => VCC,
	cin => \ul0|index[0]~8\,
	combout => \ul0|index[1]~9_combout\,
	cout => \ul0|index[1]~10\);

-- Location: LCFF_X34_Y14_N5
\ul0|index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|index[1]~9_combout\,
	aclr => \reset~regout\,
	sclr => \ul0|ALT_INV_state.S3P~regout\,
	ena => \ul0|index[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|index\(1));

-- Location: LCCOMB_X34_Y14_N6
\ul0|index[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|index[2]~11_combout\ = (\ul0|index\(2) & (\ul0|index[1]~10\ $ (GND))) # (!\ul0|index\(2) & (!\ul0|index[1]~10\ & VCC))
-- \ul0|index[2]~12\ = CARRY((\ul0|index\(2) & !\ul0|index[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|index\(2),
	datad => VCC,
	cin => \ul0|index[1]~10\,
	combout => \ul0|index[2]~11_combout\,
	cout => \ul0|index[2]~12\);

-- Location: LCFF_X34_Y14_N7
\ul0|index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|index[2]~11_combout\,
	aclr => \reset~regout\,
	sclr => \ul0|ALT_INV_state.S3P~regout\,
	ena => \ul0|index[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|index\(2));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X40_Y14_N16
\comb~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~17_combout\ = (\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(5)) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(5),
	datad => \SW~combout\(0),
	combout => \comb~17_combout\);

-- Location: LCCOMB_X37_Y14_N30
\ul0|color[23]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|color[23]~0_combout\ = (!\reset~regout\ & ((\ul0|Selector6~1_combout\) # (!\ul0|state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ul0|state.S0~regout\,
	datac => \ul0|Selector6~1_combout\,
	datad => \reset~regout\,
	combout => \ul0|color[23]~0_combout\);

-- Location: LCFF_X40_Y14_N17
\ul0|color[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~17_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(2));

-- Location: LCCOMB_X40_Y14_N26
\comb~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~18_combout\ = (\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(7)) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(7),
	datad => \SW~combout\(0),
	combout => \comb~18_combout\);

-- Location: LCFF_X40_Y14_N27
\ul0|color[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~18_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(0));

-- Location: LCCOMB_X40_Y14_N20
\ul0|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~9_combout\ = (\ul0|index\(1) & ((\ul0|index\(2)) # ((\ul0|color\(2))))) # (!\ul0|index\(1) & (!\ul0|index\(2) & ((\ul0|color\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|index\(1),
	datab => \ul0|index\(2),
	datac => \ul0|color\(2),
	datad => \ul0|color\(0),
	combout => \ul0|Mux0~9_combout\);

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RXB~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RXB,
	combout => \RXB~combout\);

-- Location: LCCOMB_X25_Y13_N24
\comb_54|uart1|uart_rx_1|in_sync[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|in_sync[0]~0_combout\ = !\RXB~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RXB~combout\,
	combout => \comb_54|uart1|uart_rx_1|in_sync[0]~0_combout\);

-- Location: LCFF_X25_Y13_N25
\comb_54|uart1|uart_rx_1|in_sync[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|in_sync[0]~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|in_sync\(0));

-- Location: LCFF_X29_Y13_N17
\comb_54|uart1|uart_rx_1|in_sync[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart1|uart_rx_1|in_sync\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|in_sync\(1));

-- Location: LCCOMB_X29_Y13_N28
\comb_54|uart1|uart_rx_1|data_buf[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|data_buf[7]~0_combout\ = !\comb_54|uart1|uart_rx_1|in_sync\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_54|uart1|uart_rx_1|in_sync\(1),
	combout => \comb_54|uart1|uart_rx_1|data_buf[7]~0_combout\);

-- Location: LCCOMB_X29_Y18_N10
\comb_54|uart1|baud_gen_1|counter[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|counter[8]~8_combout\ = \comb_54|uart1|baud_gen_1|counter\(8) $ (VCC)
-- \comb_54|uart1|baud_gen_1|counter[8]~9\ = CARRY(\comb_54|uart1|baud_gen_1|counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(8),
	datad => VCC,
	combout => \comb_54|uart1|baud_gen_1|counter[8]~8_combout\,
	cout => \comb_54|uart1|baud_gen_1|counter[8]~9\);

-- Location: LCCOMB_X29_Y18_N14
\comb_54|uart1|baud_gen_1|counter[10]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|counter[10]~12_combout\ = (\comb_54|uart1|baud_gen_1|counter\(10) & (\comb_54|uart1|baud_gen_1|counter[9]~11\ $ (GND))) # (!\comb_54|uart1|baud_gen_1|counter\(10) & (!\comb_54|uart1|baud_gen_1|counter[9]~11\ & VCC))
-- \comb_54|uart1|baud_gen_1|counter[10]~13\ = CARRY((\comb_54|uart1|baud_gen_1|counter\(10) & !\comb_54|uart1|baud_gen_1|counter[9]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|baud_gen_1|counter\(10),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|counter[9]~11\,
	combout => \comb_54|uart1|baud_gen_1|counter[10]~12_combout\,
	cout => \comb_54|uart1|baud_gen_1|counter[10]~13\);

-- Location: LCCOMB_X30_Y18_N0
\comb_54|uart1|baud_gen_1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~0_combout\ = \comb_54|uart1|baud_gen_1|counter\(0) $ (VCC)
-- \comb_54|uart1|baud_gen_1|Add0~1\ = CARRY(\comb_54|uart1|baud_gen_1|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|baud_gen_1|counter\(0),
	datad => VCC,
	combout => \comb_54|uart1|baud_gen_1|Add0~0_combout\,
	cout => \comb_54|uart1|baud_gen_1|Add0~1\);

-- Location: LCFF_X30_Y18_N1
\comb_54|uart1|baud_gen_1|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|Add0~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(0));

-- Location: LCCOMB_X30_Y18_N2
\comb_54|uart1|baud_gen_1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~2_combout\ = (\comb_54|uart1|baud_gen_1|counter\(1) & (\comb_54|uart1|baud_gen_1|Add0~1\ & VCC)) # (!\comb_54|uart1|baud_gen_1|counter\(1) & (!\comb_54|uart1|baud_gen_1|Add0~1\))
-- \comb_54|uart1|baud_gen_1|Add0~3\ = CARRY((!\comb_54|uart1|baud_gen_1|counter\(1) & !\comb_54|uart1|baud_gen_1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|baud_gen_1|counter\(1),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|Add0~1\,
	combout => \comb_54|uart1|baud_gen_1|Add0~2_combout\,
	cout => \comb_54|uart1|baud_gen_1|Add0~3\);

-- Location: LCFF_X30_Y18_N3
\comb_54|uart1|baud_gen_1|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|Add0~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(1));

-- Location: LCCOMB_X30_Y18_N4
\comb_54|uart1|baud_gen_1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~4_combout\ = (\comb_54|uart1|baud_gen_1|counter\(2) & ((GND) # (!\comb_54|uart1|baud_gen_1|Add0~3\))) # (!\comb_54|uart1|baud_gen_1|counter\(2) & (\comb_54|uart1|baud_gen_1|Add0~3\ $ (GND)))
-- \comb_54|uart1|baud_gen_1|Add0~5\ = CARRY((\comb_54|uart1|baud_gen_1|counter\(2)) # (!\comb_54|uart1|baud_gen_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|baud_gen_1|counter\(2),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|Add0~3\,
	combout => \comb_54|uart1|baud_gen_1|Add0~4_combout\,
	cout => \comb_54|uart1|baud_gen_1|Add0~5\);

-- Location: LCFF_X30_Y18_N5
\comb_54|uart1|baud_gen_1|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|Add0~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(2));

-- Location: LCCOMB_X30_Y18_N8
\comb_54|uart1|baud_gen_1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~8_combout\ = (\comb_54|uart1|baud_gen_1|counter\(4) & ((GND) # (!\comb_54|uart1|baud_gen_1|Add0~7\))) # (!\comb_54|uart1|baud_gen_1|counter\(4) & (\comb_54|uart1|baud_gen_1|Add0~7\ $ (GND)))
-- \comb_54|uart1|baud_gen_1|Add0~9\ = CARRY((\comb_54|uart1|baud_gen_1|counter\(4)) # (!\comb_54|uart1|baud_gen_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|baud_gen_1|counter\(4),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|Add0~7\,
	combout => \comb_54|uart1|baud_gen_1|Add0~8_combout\,
	cout => \comb_54|uart1|baud_gen_1|Add0~9\);

-- Location: LCFF_X30_Y18_N9
\comb_54|uart1|baud_gen_1|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|Add0~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(4));

-- Location: LCCOMB_X30_Y18_N10
\comb_54|uart1|baud_gen_1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~10_combout\ = (\comb_54|uart1|baud_gen_1|counter\(5) & (\comb_54|uart1|baud_gen_1|Add0~9\ & VCC)) # (!\comb_54|uart1|baud_gen_1|counter\(5) & (!\comb_54|uart1|baud_gen_1|Add0~9\))
-- \comb_54|uart1|baud_gen_1|Add0~11\ = CARRY((!\comb_54|uart1|baud_gen_1|counter\(5) & !\comb_54|uart1|baud_gen_1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(5),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|Add0~9\,
	combout => \comb_54|uart1|baud_gen_1|Add0~10_combout\,
	cout => \comb_54|uart1|baud_gen_1|Add0~11\);

-- Location: LCCOMB_X30_Y18_N14
\comb_54|uart1|baud_gen_1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~14_combout\ = (\comb_54|uart1|baud_gen_1|counter\(7) & (\comb_54|uart1|baud_gen_1|Add0~13\ & VCC)) # (!\comb_54|uart1|baud_gen_1|counter\(7) & (!\comb_54|uart1|baud_gen_1|Add0~13\))
-- \comb_54|uart1|baud_gen_1|Add0~15\ = CARRY((!\comb_54|uart1|baud_gen_1|counter\(7) & !\comb_54|uart1|baud_gen_1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|baud_gen_1|counter\(7),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|Add0~13\,
	combout => \comb_54|uart1|baud_gen_1|Add0~14_combout\,
	cout => \comb_54|uart1|baud_gen_1|Add0~15\);

-- Location: LCFF_X30_Y18_N15
\comb_54|uart1|baud_gen_1|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|Add0~14_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(7));

-- Location: LCCOMB_X30_Y18_N16
\comb_54|uart1|baud_gen_1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~16_combout\ = (\comb_54|uart1|baud_gen_1|counter\(8) & ((GND) # (!\comb_54|uart1|baud_gen_1|Add0~15\))) # (!\comb_54|uart1|baud_gen_1|counter\(8) & (\comb_54|uart1|baud_gen_1|Add0~15\ $ (GND)))
-- \comb_54|uart1|baud_gen_1|Add0~17\ = CARRY((\comb_54|uart1|baud_gen_1|counter\(8)) # (!\comb_54|uart1|baud_gen_1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(8),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|Add0~15\,
	combout => \comb_54|uart1|baud_gen_1|Add0~16_combout\,
	cout => \comb_54|uart1|baud_gen_1|Add0~17\);

-- Location: LCCOMB_X30_Y18_N20
\comb_54|uart1|baud_gen_1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~20_combout\ = (\comb_54|uart1|baud_gen_1|counter\(10) & (\comb_54|uart1|baud_gen_1|Add0~19\ $ (GND))) # (!\comb_54|uart1|baud_gen_1|counter\(10) & (!\comb_54|uart1|baud_gen_1|Add0~19\ & VCC))
-- \comb_54|uart1|baud_gen_1|Add0~21\ = CARRY((\comb_54|uart1|baud_gen_1|counter\(10) & !\comb_54|uart1|baud_gen_1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(10),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|Add0~19\,
	combout => \comb_54|uart1|baud_gen_1|Add0~20_combout\,
	cout => \comb_54|uart1|baud_gen_1|Add0~21\);

-- Location: LCFF_X29_Y18_N15
\comb_54|uart1|baud_gen_1|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|counter[10]~12_combout\,
	sdata => \comb_54|uart1|baud_gen_1|Add0~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(10));

-- Location: LCCOMB_X29_Y18_N16
\comb_54|uart1|baud_gen_1|counter[11]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|counter[11]~14_combout\ = (\comb_54|uart1|baud_gen_1|counter\(11) & (\comb_54|uart1|baud_gen_1|counter[10]~13\ & VCC)) # (!\comb_54|uart1|baud_gen_1|counter\(11) & (!\comb_54|uart1|baud_gen_1|counter[10]~13\))
-- \comb_54|uart1|baud_gen_1|counter[11]~15\ = CARRY((!\comb_54|uart1|baud_gen_1|counter\(11) & !\comb_54|uart1|baud_gen_1|counter[10]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(11),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|counter[10]~13\,
	combout => \comb_54|uart1|baud_gen_1|counter[11]~14_combout\,
	cout => \comb_54|uart1|baud_gen_1|counter[11]~15\);

-- Location: LCCOMB_X29_Y18_N18
\comb_54|uart1|baud_gen_1|counter[12]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|counter[12]~16_combout\ = (\comb_54|uart1|baud_gen_1|counter\(12) & (\comb_54|uart1|baud_gen_1|counter[11]~15\ $ (GND))) # (!\comb_54|uart1|baud_gen_1|counter\(12) & (!\comb_54|uart1|baud_gen_1|counter[11]~15\ & VCC))
-- \comb_54|uart1|baud_gen_1|counter[12]~17\ = CARRY((\comb_54|uart1|baud_gen_1|counter\(12) & !\comb_54|uart1|baud_gen_1|counter[11]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|baud_gen_1|counter\(12),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|counter[11]~15\,
	combout => \comb_54|uart1|baud_gen_1|counter[12]~16_combout\,
	cout => \comb_54|uart1|baud_gen_1|counter[12]~17\);

-- Location: LCCOMB_X30_Y18_N22
\comb_54|uart1|baud_gen_1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~22_combout\ = (\comb_54|uart1|baud_gen_1|counter\(11) & (\comb_54|uart1|baud_gen_1|Add0~21\ & VCC)) # (!\comb_54|uart1|baud_gen_1|counter\(11) & (!\comb_54|uart1|baud_gen_1|Add0~21\))
-- \comb_54|uart1|baud_gen_1|Add0~23\ = CARRY((!\comb_54|uart1|baud_gen_1|counter\(11) & !\comb_54|uart1|baud_gen_1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|baud_gen_1|counter\(11),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|Add0~21\,
	combout => \comb_54|uart1|baud_gen_1|Add0~22_combout\,
	cout => \comb_54|uart1|baud_gen_1|Add0~23\);

-- Location: LCFF_X29_Y18_N17
\comb_54|uart1|baud_gen_1|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|counter[11]~14_combout\,
	sdata => \comb_54|uart1|baud_gen_1|Add0~22_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(11));

-- Location: LCCOMB_X30_Y18_N24
\comb_54|uart1|baud_gen_1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|Add0~24_combout\ = (\comb_54|uart1|baud_gen_1|counter\(12) & (\comb_54|uart1|baud_gen_1|Add0~23\ $ (GND))) # (!\comb_54|uart1|baud_gen_1|counter\(12) & (!\comb_54|uart1|baud_gen_1|Add0~23\ & VCC))
-- \comb_54|uart1|baud_gen_1|Add0~25\ = CARRY((\comb_54|uart1|baud_gen_1|counter\(12) & !\comb_54|uart1|baud_gen_1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|baud_gen_1|counter\(12),
	datad => VCC,
	cin => \comb_54|uart1|baud_gen_1|Add0~23\,
	combout => \comb_54|uart1|baud_gen_1|Add0~24_combout\,
	cout => \comb_54|uart1|baud_gen_1|Add0~25\);

-- Location: LCFF_X29_Y18_N19
\comb_54|uart1|baud_gen_1|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|counter[12]~16_combout\,
	sdata => \comb_54|uart1|baud_gen_1|Add0~24_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(12));

-- Location: LCFF_X29_Y18_N23
\comb_54|uart1|baud_gen_1|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|counter[14]~20_combout\,
	sdata => \comb_54|uart1|baud_gen_1|Add0~28_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(14));

-- Location: LCCOMB_X29_Y18_N2
\comb_54|uart1|baud_gen_1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|LessThan0~0_combout\ = ((!\comb_54|uart1|baud_gen_1|counter\(1) & (!\comb_54|uart1|baud_gen_1|counter\(0) & !\comb_54|uart1|baud_gen_1|counter\(2)))) # (!\comb_54|uart1|baud_gen_1|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(3),
	datab => \comb_54|uart1|baud_gen_1|counter\(1),
	datac => \comb_54|uart1|baud_gen_1|counter\(0),
	datad => \comb_54|uart1|baud_gen_1|counter\(2),
	combout => \comb_54|uart1|baud_gen_1|LessThan0~0_combout\);

-- Location: LCFF_X30_Y18_N11
\comb_54|uart1|baud_gen_1|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|Add0~10_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(5));

-- Location: LCCOMB_X29_Y18_N4
\comb_54|uart1|baud_gen_1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|LessThan0~1_combout\ = (!\comb_54|uart1|baud_gen_1|counter\(6) & (!\comb_54|uart1|baud_gen_1|counter\(5) & (!\comb_54|uart1|baud_gen_1|counter\(7) & !\comb_54|uart1|baud_gen_1|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(6),
	datab => \comb_54|uart1|baud_gen_1|counter\(5),
	datac => \comb_54|uart1|baud_gen_1|counter\(7),
	datad => \comb_54|uart1|baud_gen_1|counter\(4),
	combout => \comb_54|uart1|baud_gen_1|LessThan0~1_combout\);

-- Location: LCFF_X29_Y18_N11
\comb_54|uart1|baud_gen_1|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|counter[8]~8_combout\,
	sdata => \comb_54|uart1|baud_gen_1|Add0~16_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|counter\(8));

-- Location: LCCOMB_X29_Y18_N6
\comb_54|uart1|baud_gen_1|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|LessThan0~2_combout\ = (!\comb_54|uart1|baud_gen_1|counter\(9) & (\comb_54|uart1|baud_gen_1|LessThan0~0_combout\ & (\comb_54|uart1|baud_gen_1|LessThan0~1_combout\ & !\comb_54|uart1|baud_gen_1|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(9),
	datab => \comb_54|uart1|baud_gen_1|LessThan0~0_combout\,
	datac => \comb_54|uart1|baud_gen_1|LessThan0~1_combout\,
	datad => \comb_54|uart1|baud_gen_1|counter\(8),
	combout => \comb_54|uart1|baud_gen_1|LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y18_N8
\comb_54|uart1|baud_gen_1|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|LessThan0~3_combout\ = (\comb_54|uart1|baud_gen_1|counter\(13) & ((\comb_54|uart1|baud_gen_1|counter\(11)) # ((\comb_54|uart1|baud_gen_1|counter\(10) & !\comb_54|uart1|baud_gen_1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(13),
	datab => \comb_54|uart1|baud_gen_1|counter\(10),
	datac => \comb_54|uart1|baud_gen_1|counter\(11),
	datad => \comb_54|uart1|baud_gen_1|LessThan0~2_combout\,
	combout => \comb_54|uart1|baud_gen_1|LessThan0~3_combout\);

-- Location: LCCOMB_X29_Y18_N0
\comb_54|uart1|baud_gen_1|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|baud_gen_1|LessThan0~4_combout\ = (\comb_54|uart1|baud_gen_1|counter\(15)) # ((\comb_54|uart1|baud_gen_1|counter\(14)) # ((\comb_54|uart1|baud_gen_1|LessThan0~3_combout\ & \comb_54|uart1|baud_gen_1|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|counter\(15),
	datab => \comb_54|uart1|baud_gen_1|counter\(14),
	datac => \comb_54|uart1|baud_gen_1|LessThan0~3_combout\,
	datad => \comb_54|uart1|baud_gen_1|counter\(12),
	combout => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\);

-- Location: LCFF_X29_Y18_N1
\comb_54|uart1|baud_gen_1|ce_16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|baud_gen_1|LessThan0~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|baud_gen_1|ce_16~regout\);

-- Location: LCCOMB_X25_Y13_N4
\comb_54|uart1|uart_rx_1|bit_count[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|bit_count[0]~4_combout\ = (\comb_54|uart1|uart_rx_1|always3~0_combout\ & (\comb_54|uart1|uart_rx_1|bit_count\(0) $ (VCC))) # (!\comb_54|uart1|uart_rx_1|always3~0_combout\ & (\comb_54|uart1|uart_rx_1|bit_count\(0) & VCC))
-- \comb_54|uart1|uart_rx_1|bit_count[0]~5\ = CARRY((\comb_54|uart1|uart_rx_1|always3~0_combout\ & \comb_54|uart1|uart_rx_1|bit_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|always3~0_combout\,
	datab => \comb_54|uart1|uart_rx_1|bit_count\(0),
	datad => VCC,
	combout => \comb_54|uart1|uart_rx_1|bit_count[0]~4_combout\,
	cout => \comb_54|uart1|uart_rx_1|bit_count[0]~5\);

-- Location: LCFF_X25_Y13_N5
\comb_54|uart1|uart_rx_1|bit_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|bit_count[0]~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \comb_54|uart1|uart_rx_1|ALT_INV_rx_busy~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|bit_count\(0));

-- Location: LCCOMB_X25_Y13_N8
\comb_54|uart1|uart_rx_1|bit_count[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|bit_count[2]~8_combout\ = (\comb_54|uart1|uart_rx_1|bit_count\(2) & (\comb_54|uart1|uart_rx_1|bit_count[1]~7\ $ (GND))) # (!\comb_54|uart1|uart_rx_1|bit_count\(2) & (!\comb_54|uart1|uart_rx_1|bit_count[1]~7\ & VCC))
-- \comb_54|uart1|uart_rx_1|bit_count[2]~9\ = CARRY((\comb_54|uart1|uart_rx_1|bit_count\(2) & !\comb_54|uart1|uart_rx_1|bit_count[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_rx_1|bit_count\(2),
	datad => VCC,
	cin => \comb_54|uart1|uart_rx_1|bit_count[1]~7\,
	combout => \comb_54|uart1|uart_rx_1|bit_count[2]~8_combout\,
	cout => \comb_54|uart1|uart_rx_1|bit_count[2]~9\);

-- Location: LCFF_X25_Y13_N9
\comb_54|uart1|uart_rx_1|bit_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|bit_count[2]~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \comb_54|uart1|uart_rx_1|ALT_INV_rx_busy~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|bit_count\(2));

-- Location: LCCOMB_X25_Y13_N0
\comb_54|uart1|uart_rx_1|always5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|always5~0_combout\ = (!\comb_54|uart1|uart_rx_1|bit_count\(1) & (!\comb_54|uart1|uart_rx_1|bit_count\(2) & (!\comb_54|uart1|uart_rx_1|bit_count\(0) & \comb_54|uart1|uart_rx_1|rx_busy~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|bit_count\(1),
	datab => \comb_54|uart1|uart_rx_1|bit_count\(2),
	datac => \comb_54|uart1|uart_rx_1|bit_count\(0),
	datad => \comb_54|uart1|uart_rx_1|rx_busy~regout\,
	combout => \comb_54|uart1|uart_rx_1|always5~0_combout\);

-- Location: LCCOMB_X25_Y13_N10
\comb_54|uart1|uart_rx_1|bit_count[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|bit_count[3]~10_combout\ = \comb_54|uart1|uart_rx_1|bit_count[2]~9\ $ (\comb_54|uart1|uart_rx_1|bit_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart1|uart_rx_1|bit_count\(3),
	cin => \comb_54|uart1|uart_rx_1|bit_count[2]~9\,
	combout => \comb_54|uart1|uart_rx_1|bit_count[3]~10_combout\);

-- Location: LCFF_X25_Y13_N11
\comb_54|uart1|uart_rx_1|bit_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|bit_count[3]~10_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \comb_54|uart1|uart_rx_1|ALT_INV_rx_busy~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|bit_count\(3));

-- Location: LCCOMB_X25_Y13_N30
\comb_54|uart1|uart_rx_1|rx_busy~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|rx_busy~0_combout\ = (\comb_54|uart1|uart_rx_1|ce_1_mid~combout\ & (((!\comb_54|uart1|uart_rx_1|bit_count\(3)) # (!\comb_54|uart1|uart_rx_1|rx_busy~regout\)) # (!\comb_54|uart1|uart_rx_1|always5~0_combout\))) # 
-- (!\comb_54|uart1|uart_rx_1|ce_1_mid~combout\ & (((\comb_54|uart1|uart_rx_1|rx_busy~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|ce_1_mid~combout\,
	datab => \comb_54|uart1|uart_rx_1|always5~0_combout\,
	datac => \comb_54|uart1|uart_rx_1|rx_busy~regout\,
	datad => \comb_54|uart1|uart_rx_1|bit_count\(3),
	combout => \comb_54|uart1|uart_rx_1|rx_busy~0_combout\);

-- Location: LCFF_X25_Y13_N31
\comb_54|uart1|uart_rx_1|rx_busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|rx_busy~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|rx_busy~regout\);

-- Location: LCCOMB_X29_Y13_N16
\comb_54|uart1|uart_rx_1|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|always1~0_combout\ = (!\comb_54|uart1|uart_rx_1|in_sync\(1) & !\comb_54|uart1|uart_rx_1|rx_busy~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_54|uart1|uart_rx_1|in_sync\(1),
	datad => \comb_54|uart1|uart_rx_1|rx_busy~regout\,
	combout => \comb_54|uart1|uart_rx_1|always1~0_combout\);

-- Location: LCCOMB_X24_Y13_N12
\comb_54|uart1|uart_rx_1|count16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|count16~3_combout\ = (\comb_54|uart1|uart_rx_1|rx_busy~regout\ & (\comb_54|uart1|uart_rx_1|count16\(0) $ ((\comb_54|uart1|uart_rx_1|count16\(1))))) # (!\comb_54|uart1|uart_rx_1|rx_busy~regout\ & 
-- (\comb_54|uart1|uart_rx_1|in_sync\(1) & (\comb_54|uart1|uart_rx_1|count16\(0) $ (\comb_54|uart1|uart_rx_1|count16\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|count16\(0),
	datab => \comb_54|uart1|uart_rx_1|rx_busy~regout\,
	datac => \comb_54|uart1|uart_rx_1|count16\(1),
	datad => \comb_54|uart1|uart_rx_1|in_sync\(1),
	combout => \comb_54|uart1|uart_rx_1|count16~3_combout\);

-- Location: LCFF_X24_Y13_N13
\comb_54|uart1|uart_rx_1|count16[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|count16~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|baud_gen_1|ce_16~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|count16\(1));

-- Location: LCCOMB_X24_Y13_N10
\comb_54|uart1|uart_rx_1|count16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|count16~2_combout\ = (!\comb_54|uart1|uart_rx_1|always1~0_combout\ & (\comb_54|uart1|uart_rx_1|count16\(2) $ (((\comb_54|uart1|uart_rx_1|count16\(0) & \comb_54|uart1|uart_rx_1|count16\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|count16\(0),
	datab => \comb_54|uart1|uart_rx_1|always1~0_combout\,
	datac => \comb_54|uart1|uart_rx_1|count16\(2),
	datad => \comb_54|uart1|uart_rx_1|count16\(1),
	combout => \comb_54|uart1|uart_rx_1|count16~2_combout\);

-- Location: LCFF_X24_Y13_N11
\comb_54|uart1|uart_rx_1|count16[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|count16~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|baud_gen_1|ce_16~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|count16\(2));

-- Location: LCCOMB_X24_Y15_N8
\comb_54|uart1|uart_rx_1|ce_1_mid~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|ce_1_mid~0_combout\ = (\comb_54|uart1|uart_rx_1|count16\(0) & (\comb_54|uart1|baud_gen_1|ce_16~regout\ & (\comb_54|uart1|uart_rx_1|count16\(2) & \comb_54|uart1|uart_rx_1|count16\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|count16\(0),
	datab => \comb_54|uart1|baud_gen_1|ce_16~regout\,
	datac => \comb_54|uart1|uart_rx_1|count16\(2),
	datad => \comb_54|uart1|uart_rx_1|count16\(1),
	combout => \comb_54|uart1|uart_rx_1|ce_1_mid~0_combout\);

-- Location: LCCOMB_X24_Y15_N20
\comb_54|uart1|uart_rx_1|always3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|always3~0_combout\ = (!\comb_54|uart1|uart_rx_1|count16\(3) & (\comb_54|uart1|uart_rx_1|ce_1_mid~0_combout\ & \comb_54|uart1|uart_rx_1|rx_busy~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|count16\(3),
	datab => \comb_54|uart1|uart_rx_1|ce_1_mid~0_combout\,
	datac => \comb_54|uart1|uart_rx_1|rx_busy~regout\,
	combout => \comb_54|uart1|uart_rx_1|always3~0_combout\);

-- Location: LCFF_X29_Y13_N29
\comb_54|uart1|uart_rx_1|data_buf[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|data_buf[7]~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|data_buf\(7));

-- Location: LCCOMB_X29_Y13_N22
\comb_54|uart1|uart_rx_1|data_buf[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|data_buf[6]~feeder_combout\ = \comb_54|uart1|uart_rx_1|data_buf\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart1|uart_rx_1|data_buf\(7),
	combout => \comb_54|uart1|uart_rx_1|data_buf[6]~feeder_combout\);

-- Location: LCFF_X29_Y13_N23
\comb_54|uart1|uart_rx_1|data_buf[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|data_buf[6]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|data_buf\(6));

-- Location: LCCOMB_X29_Y13_N8
\comb_54|uart1|uart_rx_1|data_buf[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|data_buf[5]~feeder_combout\ = \comb_54|uart1|uart_rx_1|data_buf\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart1|uart_rx_1|data_buf\(6),
	combout => \comb_54|uart1|uart_rx_1|data_buf[5]~feeder_combout\);

-- Location: LCFF_X29_Y13_N9
\comb_54|uart1|uart_rx_1|data_buf[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|data_buf[5]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|data_buf\(5));

-- Location: LCFF_X29_Y13_N27
\comb_54|uart1|uart_rx_1|data_buf[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart1|uart_rx_1|data_buf\(5),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart1|uart_rx_1|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|data_buf\(4));

-- Location: LCCOMB_X29_Y13_N12
\comb_54|uart1|uart_rx_1|data_buf[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|data_buf[3]~feeder_combout\ = \comb_54|uart1|uart_rx_1|data_buf\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart1|uart_rx_1|data_buf\(4),
	combout => \comb_54|uart1|uart_rx_1|data_buf[3]~feeder_combout\);

-- Location: LCFF_X29_Y13_N13
\comb_54|uart1|uart_rx_1|data_buf[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|data_buf[3]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|data_buf\(3));

-- Location: LCCOMB_X29_Y13_N30
\comb_54|uart1|uart_rx_1|data_buf[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|data_buf[2]~feeder_combout\ = \comb_54|uart1|uart_rx_1|data_buf\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart1|uart_rx_1|data_buf\(3),
	combout => \comb_54|uart1|uart_rx_1|data_buf[2]~feeder_combout\);

-- Location: LCFF_X29_Y13_N31
\comb_54|uart1|uart_rx_1|data_buf[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|data_buf[2]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|data_buf\(2));

-- Location: LCCOMB_X29_Y13_N0
\comb_54|uart1|uart_rx_1|data_buf[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|data_buf[1]~feeder_combout\ = \comb_54|uart1|uart_rx_1|data_buf\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart1|uart_rx_1|data_buf\(2),
	combout => \comb_54|uart1|uart_rx_1|data_buf[1]~feeder_combout\);

-- Location: LCFF_X29_Y13_N1
\comb_54|uart1|uart_rx_1|data_buf[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|data_buf[1]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|data_buf\(1));

-- Location: LCCOMB_X24_Y15_N0
\comb_54|uart1|uart_rx_1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|Add0~0_combout\ = \comb_54|uart1|uart_rx_1|count16\(3) $ (((\comb_54|uart1|uart_rx_1|count16\(0) & (\comb_54|uart1|uart_rx_1|count16\(2) & \comb_54|uart1|uart_rx_1|count16\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|count16\(0),
	datab => \comb_54|uart1|uart_rx_1|count16\(2),
	datac => \comb_54|uart1|uart_rx_1|count16\(3),
	datad => \comb_54|uart1|uart_rx_1|count16\(1),
	combout => \comb_54|uart1|uart_rx_1|Add0~0_combout\);

-- Location: LCCOMB_X24_Y13_N8
\comb_54|uart1|uart_rx_1|count16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|count16~5_combout\ = (\comb_54|uart1|uart_rx_1|Add0~0_combout\ & ((\comb_54|uart1|uart_rx_1|rx_busy~regout\) # (\comb_54|uart1|uart_rx_1|in_sync\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_rx_1|rx_busy~regout\,
	datac => \comb_54|uart1|uart_rx_1|Add0~0_combout\,
	datad => \comb_54|uart1|uart_rx_1|in_sync\(1),
	combout => \comb_54|uart1|uart_rx_1|count16~5_combout\);

-- Location: LCFF_X24_Y13_N9
\comb_54|uart1|uart_rx_1|count16[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|count16~5_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|baud_gen_1|ce_16~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|count16\(3));

-- Location: LCCOMB_X25_Y13_N16
\comb_54|uart1|uart_rx_1|always5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|always5~1_combout\ = (\comb_54|uart1|uart_rx_1|bit_count\(3) & (\comb_54|uart1|uart_rx_1|always5~0_combout\ & (\comb_54|uart1|uart_rx_1|ce_1_mid~0_combout\ & \comb_54|uart1|uart_rx_1|count16\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|bit_count\(3),
	datab => \comb_54|uart1|uart_rx_1|always5~0_combout\,
	datac => \comb_54|uart1|uart_rx_1|ce_1_mid~0_combout\,
	datad => \comb_54|uart1|uart_rx_1|count16\(3),
	combout => \comb_54|uart1|uart_rx_1|always5~1_combout\);

-- Location: LCFF_X27_Y13_N17
\comb_54|uart1|uart_rx_1|rx_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart1|uart_rx_1|data_buf\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart1|uart_rx_1|always5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|rx_data\(1));

-- Location: LCFF_X27_Y13_N5
\comb_54|uart1|uart_rx_1|rx_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart1|uart_rx_1|data_buf\(6),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart1|uart_rx_1|always5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|rx_data\(6));

-- Location: LCFF_X27_Y13_N13
\comb_54|uart1|uart_rx_1|rx_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart1|uart_rx_1|data_buf\(7),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart1|uart_rx_1|always5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|rx_data\(7));

-- Location: LCFF_X27_Y13_N3
\comb_54|uart1|uart_rx_1|rx_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart1|uart_rx_1|data_buf\(4),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart1|uart_rx_1|always5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|rx_data\(4));

-- Location: LCCOMB_X27_Y13_N12
\comb_54|uart_parser1|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Equal3~0_combout\ = (!\comb_54|uart1|uart_rx_1|rx_data\(3) & (\comb_54|uart1|uart_rx_1|rx_data\(6) & (!\comb_54|uart1|uart_rx_1|rx_data\(7) & \comb_54|uart1|uart_rx_1|rx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(3),
	datab => \comb_54|uart1|uart_rx_1|rx_data\(6),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(7),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(4),
	combout => \comb_54|uart_parser1|Equal3~0_combout\);

-- Location: LCCOMB_X29_Y13_N10
\comb_54|uart1|uart_rx_1|data_buf[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_rx_1|data_buf[0]~feeder_combout\ = \comb_54|uart1|uart_rx_1|data_buf\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart1|uart_rx_1|data_buf\(1),
	combout => \comb_54|uart1|uart_rx_1|data_buf[0]~feeder_combout\);

-- Location: LCFF_X29_Y13_N11
\comb_54|uart1|uart_rx_1|data_buf[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|data_buf[0]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|data_buf\(0));

-- Location: LCFF_X27_Y13_N11
\comb_54|uart1|uart_rx_1|rx_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart1|uart_rx_1|data_buf\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart1|uart_rx_1|always5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|rx_data\(0));

-- Location: LCCOMB_X24_Y14_N24
\comb_54|uart_parser1|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Equal3~1_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(2) & (\comb_54|uart1|uart_rx_1|rx_data\(1) & (\comb_54|uart_parser1|Equal3~0_combout\ & \comb_54|uart1|uart_rx_1|rx_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(2),
	datab => \comb_54|uart1|uart_rx_1|rx_data\(1),
	datac => \comb_54|uart_parser1|Equal3~0_combout\,
	datad => \comb_54|uart1|uart_rx_1|rx_data\(0),
	combout => \comb_54|uart_parser1|Equal3~1_combout\);

-- Location: LCFF_X23_Y14_N19
\comb_54|uart1|uart_rx_1|rx_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart1|uart_rx_1|data_buf\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart1|uart_rx_1|always5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|rx_data\(3));

-- Location: LCFF_X27_Y13_N7
\comb_54|uart1|uart_rx_1|rx_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart1|uart_rx_1|data_buf\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart1|uart_rx_1|always5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|rx_data\(2));

-- Location: LCCOMB_X27_Y13_N28
\comb_54|uart_parser1|always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always0~2_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(3) & ((\comb_54|uart1|uart_rx_1|rx_data\(0) & (!\comb_54|uart1|uart_rx_1|rx_data\(1) & \comb_54|uart1|uart_rx_1|rx_data\(2))) # (!\comb_54|uart1|uart_rx_1|rx_data\(0) & 
-- (\comb_54|uart1|uart_rx_1|rx_data\(1) & !\comb_54|uart1|uart_rx_1|rx_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(0),
	datab => \comb_54|uart1|uart_rx_1|rx_data\(1),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(3),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(2),
	combout => \comb_54|uart_parser1|always0~2_combout\);

-- Location: LCCOMB_X26_Y13_N10
\comb_54|uart_parser1|always0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always0~3_combout\ = (\comb_54|uart_parser1|always15~0_combout\ & (!\comb_54|uart1|uart_rx_1|rx_data\(7) & (!\comb_54|uart1|uart_rx_1|rx_data\(6) & \comb_54|uart_parser1|always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|always15~0_combout\,
	datab => \comb_54|uart1|uart_rx_1|rx_data\(7),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(6),
	datad => \comb_54|uart_parser1|always0~2_combout\,
	combout => \comb_54|uart_parser1|always0~3_combout\);

-- Location: LCFF_X27_Y13_N9
\comb_54|uart1|uart_rx_1|rx_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart1|uart_rx_1|data_buf\(5),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart1|uart_rx_1|always5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|rx_data\(5));

-- Location: LCCOMB_X27_Y13_N0
\comb_54|uart_parser1|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always0~0_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(5) & (!\comb_54|uart1|uart_rx_1|rx_data\(3) & !\comb_54|uart1|uart_rx_1|rx_data\(0))) # (!\comb_54|uart1|uart_rx_1|rx_data\(5) & (\comb_54|uart1|uart_rx_1|rx_data\(3) & 
-- \comb_54|uart1|uart_rx_1|rx_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_rx_1|rx_data\(5),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(3),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(0),
	combout => \comb_54|uart_parser1|always0~0_combout\);

-- Location: LCCOMB_X27_Y13_N30
\comb_54|uart_parser1|always1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always1~3_combout\ = (!\comb_54|uart1|uart_rx_1|rx_data\(6) & (\comb_54|uart1|uart_rx_1|rx_data\(5) & \comb_54|uart1|uart_rx_1|rx_data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_rx_1|rx_data\(6),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(5),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(4),
	combout => \comb_54|uart_parser1|always1~3_combout\);

-- Location: LCCOMB_X27_Y13_N14
\comb_54|uart_parser1|always1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always1~5_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(3) & (\comb_54|uart1|uart_rx_1|rx_data\(4) & (!\comb_54|uart1|uart_rx_1|rx_data\(6) & \comb_54|uart1|uart_rx_1|rx_data\(5)))) # (!\comb_54|uart1|uart_rx_1|rx_data\(3) & 
-- (!\comb_54|uart1|uart_rx_1|rx_data\(4) & (\comb_54|uart1|uart_rx_1|rx_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(3),
	datab => \comb_54|uart1|uart_rx_1|rx_data\(4),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(6),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(5),
	combout => \comb_54|uart_parser1|always1~5_combout\);

-- Location: LCCOMB_X23_Y14_N6
\comb_54|uart_parser1|always1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always1~4_combout\ = (!\comb_54|uart1|uart_rx_1|rx_data\(7) & (\comb_54|uart_parser1|always1~3_combout\ $ (((\comb_54|uart_parser1|always1~2_combout\ & \comb_54|uart_parser1|always1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|always1~2_combout\,
	datab => \comb_54|uart_parser1|always1~3_combout\,
	datac => \comb_54|uart1|uart_rx_1|rx_data\(7),
	datad => \comb_54|uart_parser1|always1~5_combout\,
	combout => \comb_54|uart_parser1|always1~4_combout\);

-- Location: LCCOMB_X24_Y14_N18
\comb_54|uart_parser1|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Equal1~0_combout\ = (!\comb_54|uart1|uart_rx_1|rx_data\(2) & (\comb_54|uart1|uart_rx_1|rx_data\(1) & (\comb_54|uart_parser1|Equal3~0_combout\ & !\comb_54|uart1|uart_rx_1|rx_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(2),
	datab => \comb_54|uart1|uart_rx_1|rx_data\(1),
	datac => \comb_54|uart_parser1|Equal3~0_combout\,
	datad => \comb_54|uart1|uart_rx_1|rx_data\(0),
	combout => \comb_54|uart_parser1|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y14_N12
\comb_54|uart_parser1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector1~0_combout\ = (\comb_54|uart_parser1|Equal0~0_combout\ & (\comb_54|uart_parser1|always0~0_combout\ & (\comb_54|uart_parser1|main_sm.0001~regout\ & !\comb_54|uart1|uart_rx_1|rx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|Equal0~0_combout\,
	datab => \comb_54|uart_parser1|always0~0_combout\,
	datac => \comb_54|uart_parser1|main_sm.0001~regout\,
	datad => \comb_54|uart1|uart_rx_1|rx_data\(4),
	combout => \comb_54|uart_parser1|Selector1~0_combout\);

-- Location: LCCOMB_X25_Y13_N20
\comb_54|uart_parser1|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector1~1_combout\ = (\comb_54|uart_parser1|Selector1~0_combout\) # ((\comb_54|uart_parser1|Equal3~1_combout\ & (!\comb_54|uart_parser1|main_sm.0000~regout\ & !\comb_54|uart_parser1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|Equal3~1_combout\,
	datab => \comb_54|uart_parser1|main_sm.0000~regout\,
	datac => \comb_54|uart_parser1|Equal1~0_combout\,
	datad => \comb_54|uart_parser1|Selector1~0_combout\,
	combout => \comb_54|uart_parser1|Selector1~1_combout\);

-- Location: LCFF_X25_Y13_N17
\comb_54|uart1|uart_rx_1|new_rx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_rx_1|always5~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_rx_1|new_rx_data~regout\);

-- Location: LCFF_X25_Y13_N21
\comb_54|uart_parser1|main_sm.0001\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector1~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|main_sm.0001~regout\);

-- Location: LCCOMB_X26_Y14_N16
\comb_54|uart_parser1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector2~0_combout\ = (\comb_54|uart_parser1|always1~4_combout\ & ((\comb_54|uart_parser1|main_sm.0010~regout\) # ((!\comb_54|uart_parser1|always0~1_combout\ & \comb_54|uart_parser1|main_sm.0001~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|always0~1_combout\,
	datab => \comb_54|uart_parser1|always1~4_combout\,
	datac => \comb_54|uart_parser1|main_sm.0010~regout\,
	datad => \comb_54|uart_parser1|main_sm.0001~regout\,
	combout => \comb_54|uart_parser1|Selector2~0_combout\);

-- Location: LCFF_X26_Y14_N17
\comb_54|uart_parser1|main_sm.0010\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector2~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|main_sm.0010~regout\);

-- Location: LCCOMB_X26_Y14_N10
\comb_54|uart_parser1|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector3~0_combout\ = (\comb_54|uart_parser1|always0~1_combout\ & ((\comb_54|uart_parser1|main_sm.0011~regout\) # ((!\comb_54|uart_parser1|main_sm.0000~regout\ & \comb_54|uart_parser1|Equal1~0_combout\)))) # 
-- (!\comb_54|uart_parser1|always0~1_combout\ & (!\comb_54|uart_parser1|main_sm.0000~regout\ & (\comb_54|uart_parser1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|always0~1_combout\,
	datab => \comb_54|uart_parser1|main_sm.0000~regout\,
	datac => \comb_54|uart_parser1|Equal1~0_combout\,
	datad => \comb_54|uart_parser1|main_sm.0011~regout\,
	combout => \comb_54|uart_parser1|Selector3~0_combout\);

-- Location: LCCOMB_X26_Y14_N6
\comb_54|uart_parser1|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector3~1_combout\ = (\comb_54|uart_parser1|Selector3~0_combout\) # ((\comb_54|uart_parser1|always0~1_combout\ & (!\comb_54|uart_parser1|always1~4_combout\ & \comb_54|uart_parser1|main_sm.0010~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|always0~1_combout\,
	datab => \comb_54|uart_parser1|always1~4_combout\,
	datac => \comb_54|uart_parser1|main_sm.0010~regout\,
	datad => \comb_54|uart_parser1|Selector3~0_combout\,
	combout => \comb_54|uart_parser1|Selector3~1_combout\);

-- Location: LCFF_X26_Y14_N7
\comb_54|uart_parser1|main_sm.0011\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector3~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|main_sm.0011~regout\);

-- Location: LCCOMB_X26_Y14_N0
\comb_54|uart_parser1|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector0~4_combout\ = (\comb_54|uart_parser1|main_sm.0001~regout\) # ((\comb_54|uart_parser1|main_sm.0010~regout\) # (\comb_54|uart_parser1|main_sm.0011~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|main_sm.0001~regout\,
	datac => \comb_54|uart_parser1|main_sm.0010~regout\,
	datad => \comb_54|uart_parser1|main_sm.0011~regout\,
	combout => \comb_54|uart_parser1|Selector0~4_combout\);

-- Location: LCCOMB_X27_Y13_N4
\comb_54|uart_parser1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Equal0~0_combout\ = (!\comb_54|uart1|uart_rx_1|rx_data\(7) & (!\comb_54|uart1|uart_rx_1|rx_data\(1) & (!\comb_54|uart1|uart_rx_1|rx_data\(6) & !\comb_54|uart1|uart_rx_1|rx_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(7),
	datab => \comb_54|uart1|uart_rx_1|rx_data\(1),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(6),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(2),
	combout => \comb_54|uart_parser1|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y14_N18
\comb_54|uart_parser1|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector0~5_combout\ = (\comb_54|uart_parser1|Selector0~4_combout\ & ((\comb_54|uart1|uart_rx_1|rx_data\(4)) # ((!\comb_54|uart_parser1|Equal0~0_combout\) # (!\comb_54|uart_parser1|always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(4),
	datab => \comb_54|uart_parser1|always0~0_combout\,
	datac => \comb_54|uart_parser1|Selector0~4_combout\,
	datad => \comb_54|uart_parser1|Equal0~0_combout\,
	combout => \comb_54|uart_parser1|Selector0~5_combout\);

-- Location: LCCOMB_X27_Y13_N8
\comb_54|uart_parser1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Equal0~1_combout\ = (!\comb_54|uart1|uart_rx_1|rx_data\(3) & (!\comb_54|uart1|uart_rx_1|rx_data\(5) & !\comb_54|uart1|uart_rx_1|rx_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(3),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(5),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(0),
	combout => \comb_54|uart_parser1|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y14_N6
\comb_54|uart_parser1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Equal0~2_combout\ = (\comb_54|uart_parser1|Equal0~0_combout\ & (\comb_54|uart_parser1|Equal0~1_combout\ & !\comb_54|uart1|uart_rx_1|rx_data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|Equal0~0_combout\,
	datac => \comb_54|uart_parser1|Equal0~1_combout\,
	datad => \comb_54|uart1|uart_rx_1|rx_data\(4),
	combout => \comb_54|uart_parser1|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y13_N22
\comb_54|uart_parser1|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector5~1_combout\ = (!\comb_54|uart_parser1|always0~3_combout\ & (((\comb_54|uart_parser1|Selector0~3_combout\ & !\comb_54|uart_parser1|Equal0~2_combout\)) # (!\comb_54|uart_parser1|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|Selector0~3_combout\,
	datab => \comb_54|uart_parser1|always0~3_combout\,
	datac => \comb_54|uart_parser1|Selector5~0_combout\,
	datad => \comb_54|uart_parser1|Equal0~2_combout\,
	combout => \comb_54|uart_parser1|Selector5~1_combout\);

-- Location: LCFF_X25_Y13_N23
\comb_54|uart_parser1|main_sm.0101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector5~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|main_sm.0101~regout\);

-- Location: LCCOMB_X24_Y14_N6
\comb_54|uart_parser1|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector5~0_combout\ = (!\comb_54|uart_parser1|main_sm.0101~regout\ & ((\comb_54|uart_parser1|always1~4_combout\) # ((!\comb_54|uart_parser1|main_sm.0100~regout\ & !\comb_54|uart_parser1|Selector0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|main_sm.0100~regout\,
	datab => \comb_54|uart_parser1|Selector0~5_combout\,
	datac => \comb_54|uart_parser1|main_sm.0101~regout\,
	datad => \comb_54|uart_parser1|always1~4_combout\,
	combout => \comb_54|uart_parser1|Selector5~0_combout\);

-- Location: LCCOMB_X24_Y13_N14
\comb_54|uart_parser1|bin_byte_count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|bin_byte_count[0]~8_combout\ = \comb_54|uart_parser1|bin_byte_count\(0) $ (VCC)
-- \comb_54|uart_parser1|bin_byte_count[0]~9\ = CARRY(\comb_54|uart_parser1|bin_byte_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|bin_byte_count\(0),
	datad => VCC,
	combout => \comb_54|uart_parser1|bin_byte_count[0]~8_combout\,
	cout => \comb_54|uart_parser1|bin_byte_count[0]~9\);

-- Location: LCCOMB_X25_Y13_N26
\comb_54|uart_parser1|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector6~0_combout\ = (!\comb_54|uart1|uart_rx_1|rx_data\(4) & (!\comb_54|uart_parser1|main_sm.0000~regout\ & (\comb_54|uart_parser1|Equal0~0_combout\ & \comb_54|uart_parser1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(4),
	datab => \comb_54|uart_parser1|main_sm.0000~regout\,
	datac => \comb_54|uart_parser1|Equal0~0_combout\,
	datad => \comb_54|uart_parser1|Equal0~1_combout\,
	combout => \comb_54|uart_parser1|Selector6~0_combout\);

-- Location: LCFF_X25_Y13_N27
\comb_54|uart_parser1|main_sm.1000\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector6~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|main_sm.1000~regout\);

-- Location: LCCOMB_X26_Y14_N18
\comb_54|uart_parser1|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector7~0_combout\ = (\comb_54|uart_parser1|main_sm.1000~regout\ & ((\comb_54|uart1|uart_rx_1|rx_data\(4)) # (\comb_54|uart1|uart_rx_1|rx_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(4),
	datac => \comb_54|uart_parser1|main_sm.1000~regout\,
	datad => \comb_54|uart1|uart_rx_1|rx_data\(5),
	combout => \comb_54|uart_parser1|Selector7~0_combout\);

-- Location: LCFF_X26_Y14_N19
\comb_54|uart_parser1|main_sm.1001\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector7~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|main_sm.1001~regout\);

-- Location: LCFF_X26_Y14_N21
\comb_54|uart_parser1|main_sm.1010\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|main_sm.1001~regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|main_sm.1010~regout\);

-- Location: LCFF_X26_Y14_N3
\comb_54|uart_parser1|main_sm.1011\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|main_sm.1010~regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|main_sm.1011~regout\);

-- Location: LCCOMB_X26_Y14_N2
\comb_54|uart_parser1|always13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always13~3_combout\ = (\comb_54|uart_parser1|main_sm.1011~regout\ & \comb_54|uart1|uart_rx_1|new_rx_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_54|uart_parser1|main_sm.1011~regout\,
	datad => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	combout => \comb_54|uart_parser1|always13~3_combout\);

-- Location: LCCOMB_X24_Y13_N20
\comb_54|uart_parser1|bin_byte_count[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|bin_byte_count[3]~15_combout\ = (\comb_54|uart_parser1|bin_byte_count\(3) & (\comb_54|uart_parser1|bin_byte_count[2]~14\ & VCC)) # (!\comb_54|uart_parser1|bin_byte_count\(3) & (!\comb_54|uart_parser1|bin_byte_count[2]~14\))
-- \comb_54|uart_parser1|bin_byte_count[3]~16\ = CARRY((!\comb_54|uart_parser1|bin_byte_count\(3) & !\comb_54|uart_parser1|bin_byte_count[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|bin_byte_count\(3),
	datad => VCC,
	cin => \comb_54|uart_parser1|bin_byte_count[2]~14\,
	combout => \comb_54|uart_parser1|bin_byte_count[3]~15_combout\,
	cout => \comb_54|uart_parser1|bin_byte_count[3]~16\);

-- Location: LCFF_X24_Y13_N21
\comb_54|uart_parser1|bin_byte_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|bin_byte_count[3]~15_combout\,
	sdata => \comb_54|uart1|uart_rx_1|rx_data\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|always13~3_combout\,
	ena => \comb_54|uart_parser1|bin_byte_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|bin_byte_count\(3));

-- Location: LCCOMB_X23_Y13_N24
\comb_54|uart_parser1|Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Equal11~0_combout\ = (!\comb_54|uart_parser1|bin_byte_count\(1) & (!\comb_54|uart_parser1|bin_byte_count\(3) & (\comb_54|uart_parser1|bin_byte_count\(0) & !\comb_54|uart_parser1|bin_byte_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|bin_byte_count\(1),
	datab => \comb_54|uart_parser1|bin_byte_count\(3),
	datac => \comb_54|uart_parser1|bin_byte_count\(0),
	datad => \comb_54|uart_parser1|bin_byte_count\(2),
	combout => \comb_54|uart_parser1|Equal11~0_combout\);

-- Location: LCCOMB_X26_Y13_N2
\comb_54|uart_parser1|Equal11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Equal11~2_combout\ = (\comb_54|uart_parser1|Equal11~0_combout\ & \comb_54|uart_parser1|Equal11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_54|uart_parser1|Equal11~0_combout\,
	datad => \comb_54|uart_parser1|Equal11~1_combout\,
	combout => \comb_54|uart_parser1|Equal11~2_combout\);

-- Location: LCCOMB_X26_Y13_N18
\comb_54|uart_parser1|bin_write_op~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|bin_write_op~0_combout\ = (\comb_54|uart_parser1|bin_write_op~regout\ & (((!\comb_54|uart_parser1|Equal11~2_combout\) # (!\comb_54|uart1|uart_rx_1|new_rx_data~regout\)) # (!\comb_54|uart_parser1|main_sm.1100~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|main_sm.1100~regout\,
	datab => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	datac => \comb_54|uart_parser1|bin_write_op~regout\,
	datad => \comb_54|uart_parser1|Equal11~2_combout\,
	combout => \comb_54|uart_parser1|bin_write_op~0_combout\);

-- Location: LCCOMB_X26_Y13_N4
\comb_54|uart_parser1|bin_write_op~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|bin_write_op~1_combout\ = (\comb_54|uart_parser1|bin_write_op~0_combout\) # ((\comb_54|uart_parser1|always15~1_combout\ & (\comb_54|uart1|uart_rx_1|rx_data\(5) & !\comb_54|uart1|uart_rx_1|rx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|always15~1_combout\,
	datab => \comb_54|uart_parser1|bin_write_op~0_combout\,
	datac => \comb_54|uart1|uart_rx_1|rx_data\(5),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(4),
	combout => \comb_54|uart_parser1|bin_write_op~1_combout\);

-- Location: LCFF_X26_Y13_N5
\comb_54|uart_parser1|bin_write_op\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|bin_write_op~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|bin_write_op~regout\);

-- Location: LCCOMB_X25_Y13_N28
\comb_54|uart_parser1|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector10~0_combout\ = (\comb_54|uart_parser1|Equal11~2_combout\ & (\comb_54|uart_parser1|bin_write_op~regout\ & ((\comb_54|uart_parser1|main_sm.1011~regout\)))) # (!\comb_54|uart_parser1|Equal11~2_combout\ & 
-- ((\comb_54|uart_parser1|main_sm.1100~regout\) # ((\comb_54|uart_parser1|bin_write_op~regout\ & \comb_54|uart_parser1|main_sm.1011~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|Equal11~2_combout\,
	datab => \comb_54|uart_parser1|bin_write_op~regout\,
	datac => \comb_54|uart_parser1|main_sm.1100~regout\,
	datad => \comb_54|uart_parser1|main_sm.1011~regout\,
	combout => \comb_54|uart_parser1|Selector10~0_combout\);

-- Location: LCFF_X25_Y13_N29
\comb_54|uart_parser1|main_sm.1100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector10~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|main_sm.1100~regout\);

-- Location: LCCOMB_X26_Y13_N28
\comb_54|uart_parser1|always11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always11~1_combout\ = (\comb_54|uart_parser1|main_sm.1100~regout\ & (\comb_54|uart_parser1|bin_write_op~regout\ & \comb_54|uart1|uart_rx_1|new_rx_data~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|main_sm.1100~regout\,
	datac => \comb_54|uart_parser1|bin_write_op~regout\,
	datad => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	combout => \comb_54|uart_parser1|always11~1_combout\);

-- Location: LCCOMB_X23_Y15_N30
\comb_54|uart1|uart_tx_1|count16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|count16~5_combout\ = (\comb_54|uart1|uart_tx_1|tx_busy~regout\ & (!\comb_54|uart1|uart_tx_1|count16\(0) & \comb_54|uart1|baud_gen_1|ce_16~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	datac => \comb_54|uart1|uart_tx_1|count16\(0),
	datad => \comb_54|uart1|baud_gen_1|ce_16~regout\,
	combout => \comb_54|uart1|uart_tx_1|count16~5_combout\);

-- Location: LCCOMB_X24_Y15_N4
\comb_54|uart1|uart_tx_1|count16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|count16~2_combout\ = (\comb_54|uart1|baud_gen_1|ce_16~regout\) # (!\comb_54|uart1|uart_tx_1|tx_busy~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	datac => \comb_54|uart1|baud_gen_1|ce_16~regout\,
	combout => \comb_54|uart1|uart_tx_1|count16~2_combout\);

-- Location: LCFF_X23_Y15_N31
\comb_54|uart1|uart_tx_1|count16[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|count16~5_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_tx_1|count16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|count16\(0));

-- Location: LCCOMB_X23_Y15_N4
\comb_54|uart1|uart_tx_1|count16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|count16~4_combout\ = (\comb_54|uart1|uart_tx_1|tx_busy~regout\ & (\comb_54|uart1|baud_gen_1|ce_16~regout\ & (\comb_54|uart1|uart_tx_1|count16\(1) $ (\comb_54|uart1|uart_tx_1|count16\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	datab => \comb_54|uart1|baud_gen_1|ce_16~regout\,
	datac => \comb_54|uart1|uart_tx_1|count16\(1),
	datad => \comb_54|uart1|uart_tx_1|count16\(0),
	combout => \comb_54|uart1|uart_tx_1|count16~4_combout\);

-- Location: LCFF_X23_Y15_N5
\comb_54|uart1|uart_tx_1|count16[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|count16~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_tx_1|count16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|count16\(1));

-- Location: LCCOMB_X23_Y15_N8
\comb_54|uart1|uart_tx_1|always2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|always2~3_combout\ = (\comb_54|uart1|uart_tx_1|count16\(2) & (\comb_54|uart1|uart_tx_1|count16\(1) & \comb_54|uart1|uart_tx_1|count16\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|count16\(2),
	datac => \comb_54|uart1|uart_tx_1|count16\(1),
	datad => \comb_54|uart1|uart_tx_1|count16\(0),
	combout => \comb_54|uart1|uart_tx_1|always2~3_combout\);

-- Location: LCCOMB_X23_Y15_N0
\comb_54|uart1|uart_tx_1|count16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|count16~6_combout\ = (\comb_54|uart1|uart_tx_1|tx_busy~regout\ & (\comb_54|uart1|baud_gen_1|ce_16~regout\ & (\comb_54|uart1|uart_tx_1|count16\(3) $ (\comb_54|uart1|uart_tx_1|always2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	datab => \comb_54|uart1|baud_gen_1|ce_16~regout\,
	datac => \comb_54|uart1|uart_tx_1|count16\(3),
	datad => \comb_54|uart1|uart_tx_1|always2~3_combout\,
	combout => \comb_54|uart1|uart_tx_1|count16~6_combout\);

-- Location: LCFF_X23_Y15_N1
\comb_54|uart1|uart_tx_1|count16[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|count16~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_tx_1|count16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|count16\(3));

-- Location: LCCOMB_X26_Y15_N22
\comb_54|uart1|uart_tx_1|always2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|always2~2_combout\ = (\comb_54|uart1|uart_tx_1|tx_busy~regout\ & \comb_54|uart1|baud_gen_1|ce_16~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	datad => \comb_54|uart1|baud_gen_1|ce_16~regout\,
	combout => \comb_54|uart1|uart_tx_1|always2~2_combout\);

-- Location: LCCOMB_X26_Y15_N8
\comb_54|uart1|uart_tx_1|bit_count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|bit_count~3_combout\ = (\comb_54|uart1|uart_tx_1|always2~3_combout\ & (\comb_54|uart1|uart_tx_1|count16\(3) & (!\comb_54|uart1|uart_tx_1|bit_count\(0) & \comb_54|uart1|uart_tx_1|always2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|always2~3_combout\,
	datab => \comb_54|uart1|uart_tx_1|count16\(3),
	datac => \comb_54|uart1|uart_tx_1|bit_count\(0),
	datad => \comb_54|uart1|uart_tx_1|always2~2_combout\,
	combout => \comb_54|uart1|uart_tx_1|bit_count~3_combout\);

-- Location: LCCOMB_X26_Y15_N14
\comb_54|uart1|uart_tx_1|data_buf~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|data_buf~11_combout\ = ((\comb_54|uart1|baud_gen_1|ce_16~regout\ & (\comb_54|uart1|uart_tx_1|always2~3_combout\ & \comb_54|uart1|uart_tx_1|count16\(3)))) # (!\comb_54|uart1|uart_tx_1|tx_busy~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|ce_16~regout\,
	datab => \comb_54|uart1|uart_tx_1|always2~3_combout\,
	datac => \comb_54|uart1|uart_tx_1|count16\(3),
	datad => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	combout => \comb_54|uart1|uart_tx_1|data_buf~11_combout\);

-- Location: LCFF_X26_Y15_N9
\comb_54|uart1|uart_tx_1|bit_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|bit_count~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_tx_1|data_buf~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|bit_count\(0));

-- Location: LCCOMB_X26_Y15_N28
\comb_54|uart1|uart_tx_1|always2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|always2~4_combout\ = (\comb_54|uart1|baud_gen_1|ce_16~regout\ & (\comb_54|uart1|uart_tx_1|always2~3_combout\ & (\comb_54|uart1|uart_tx_1|count16\(3) & \comb_54|uart1|uart_tx_1|tx_busy~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|baud_gen_1|ce_16~regout\,
	datab => \comb_54|uart1|uart_tx_1|always2~3_combout\,
	datac => \comb_54|uart1|uart_tx_1|count16\(3),
	datad => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	combout => \comb_54|uart1|uart_tx_1|always2~4_combout\);

-- Location: LCCOMB_X26_Y15_N26
\comb_54|uart1|uart_tx_1|bit_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|bit_count~1_combout\ = (\comb_54|uart1|uart_tx_1|always2~4_combout\ & (\comb_54|uart1|uart_tx_1|bit_count\(0) $ (\comb_54|uart1|uart_tx_1|bit_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_tx_1|bit_count\(0),
	datac => \comb_54|uart1|uart_tx_1|bit_count\(1),
	datad => \comb_54|uart1|uart_tx_1|always2~4_combout\,
	combout => \comb_54|uart1|uart_tx_1|bit_count~1_combout\);

-- Location: LCFF_X26_Y15_N27
\comb_54|uart1|uart_tx_1|bit_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|bit_count~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_tx_1|data_buf~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|bit_count\(1));

-- Location: LCCOMB_X26_Y15_N20
\comb_54|uart1|uart_tx_1|bit_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|bit_count~2_combout\ = (\comb_54|uart1|uart_tx_1|Add1~0_combout\ & (\comb_54|uart1|uart_tx_1|always2~3_combout\ & (\comb_54|uart1|uart_tx_1|count16\(3) & \comb_54|uart1|uart_tx_1|always2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|Add1~0_combout\,
	datab => \comb_54|uart1|uart_tx_1|always2~3_combout\,
	datac => \comb_54|uart1|uart_tx_1|count16\(3),
	datad => \comb_54|uart1|uart_tx_1|always2~2_combout\,
	combout => \comb_54|uart1|uart_tx_1|bit_count~2_combout\);

-- Location: LCFF_X26_Y15_N21
\comb_54|uart1|uart_tx_1|bit_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|bit_count~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_tx_1|data_buf~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|bit_count\(3));

-- Location: LCCOMB_X26_Y15_N30
\comb_54|uart1|uart_tx_1|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|always1~0_combout\ = (\comb_54|uart1|uart_tx_1|bit_count\(2)) # ((\comb_54|uart1|uart_tx_1|bit_count\(1)) # ((!\comb_54|uart1|baud_gen_1|ce_16~regout\) # (!\comb_54|uart1|uart_tx_1|bit_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|bit_count\(2),
	datab => \comb_54|uart1|uart_tx_1|bit_count\(1),
	datac => \comb_54|uart1|uart_tx_1|bit_count\(3),
	datad => \comb_54|uart1|baud_gen_1|ce_16~regout\,
	combout => \comb_54|uart1|uart_tx_1|always1~0_combout\);

-- Location: LCCOMB_X26_Y15_N2
\comb_54|uart1|uart_tx_1|always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|always1~1_combout\ = (((\comb_54|uart1|uart_tx_1|always1~0_combout\) # (!\comb_54|uart1|uart_tx_1|bit_count\(0))) # (!\comb_54|uart1|uart_tx_1|count16\(3))) # (!\comb_54|uart1|uart_tx_1|always2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|always2~3_combout\,
	datab => \comb_54|uart1|uart_tx_1|count16\(3),
	datac => \comb_54|uart1|uart_tx_1|bit_count\(0),
	datad => \comb_54|uart1|uart_tx_1|always1~0_combout\,
	combout => \comb_54|uart1|uart_tx_1|always1~1_combout\);

-- Location: LCCOMB_X26_Y15_N24
\comb_54|uart1|uart_tx_1|tx_busy~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|tx_busy~feeder_combout\ = \comb_54|uart1|uart_tx_1|always1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart1|uart_tx_1|always1~1_combout\,
	combout => \comb_54|uart1|uart_tx_1|tx_busy~feeder_combout\);

-- Location: LCFF_X25_Y15_N7
\comb_54|uart_parser1|tx_sm.101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|tx_sm.100~regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart_parser1|tx_end_p~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|tx_sm.101~regout\);

-- Location: LCFF_X25_Y15_N23
\comb_54|uart_parser1|tx_sm.110\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|tx_sm.101~regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart_parser1|tx_end_p~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|tx_sm.110~regout\);

-- Location: LCCOMB_X26_Y15_N10
\comb_54|uart_parser1|Selector20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector20~3_combout\ = (!\comb_54|uart_parser1|Selector20~2_combout\ & (((\comb_54|uart1|uart_tx_1|tx_busy~regout\) # (!\comb_54|uart_parser1|s_tx_busy~regout\)) # (!\comb_54|uart_parser1|tx_sm.110~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|Selector20~2_combout\,
	datab => \comb_54|uart_parser1|tx_sm.110~regout\,
	datac => \comb_54|uart_parser1|s_tx_busy~regout\,
	datad => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	combout => \comb_54|uart_parser1|Selector20~3_combout\);

-- Location: LCFF_X26_Y15_N11
\comb_54|uart_parser1|tx_sm.000\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector20~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|tx_sm.000~regout\);

-- Location: LCCOMB_X26_Y13_N20
\comb_54|uart_parser1|always4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always4~0_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(4) & (\comb_54|uart1|uart_rx_1|new_rx_data~regout\ & (!\comb_54|uart1|uart_rx_1|rx_data\(5) & \comb_54|uart_parser1|main_sm.1000~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(4),
	datab => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	datac => \comb_54|uart1|uart_rx_1|rx_data\(5),
	datad => \comb_54|uart_parser1|main_sm.1000~regout\,
	combout => \comb_54|uart_parser1|always4~0_combout\);

-- Location: LCCOMB_X26_Y13_N14
\comb_54|uart_parser1|bin_read_op~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|bin_read_op~0_combout\ = (\comb_54|uart_parser1|always4~0_combout\) # ((\comb_54|uart_parser1|bin_read_op~regout\ & ((!\comb_54|uart_parser1|Equal11~2_combout\) # (!\comb_54|uart_parser1|tx_end_p~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|tx_end_p~combout\,
	datab => \comb_54|uart_parser1|Equal11~2_combout\,
	datac => \comb_54|uart_parser1|bin_read_op~regout\,
	datad => \comb_54|uart_parser1|always4~0_combout\,
	combout => \comb_54|uart_parser1|bin_read_op~0_combout\);

-- Location: LCFF_X26_Y13_N15
\comb_54|uart_parser1|bin_read_op\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|bin_read_op~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|bin_read_op~regout\);

-- Location: LCCOMB_X26_Y13_N12
\comb_54|uart_parser1|int_read~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|int_read~2_combout\ = (\comb_54|uart_parser1|bin_read_op~regout\ & ((\comb_54|uart_parser1|always13~3_combout\) # ((!\comb_54|uart_parser1|Equal11~2_combout\ & \comb_54|uart_parser1|tx_end_p~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|always13~3_combout\,
	datab => \comb_54|uart_parser1|Equal11~2_combout\,
	datac => \comb_54|uart_parser1|tx_end_p~combout\,
	datad => \comb_54|uart_parser1|bin_read_op~regout\,
	combout => \comb_54|uart_parser1|int_read~2_combout\);

-- Location: LCFF_X24_Y14_N19
\comb_54|uart_parser1|read_op\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Equal1~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|read_op~regout\);

-- Location: LCCOMB_X26_Y14_N28
\comb_54|uart_parser1|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector4~0_combout\ = (\comb_54|uart_parser1|always1~4_combout\ & ((\comb_54|uart_parser1|main_sm.0100~regout\) # ((!\comb_54|uart_parser1|always0~1_combout\ & \comb_54|uart_parser1|main_sm.0011~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|always0~1_combout\,
	datab => \comb_54|uart_parser1|always1~4_combout\,
	datac => \comb_54|uart_parser1|main_sm.0100~regout\,
	datad => \comb_54|uart_parser1|main_sm.0011~regout\,
	combout => \comb_54|uart_parser1|Selector4~0_combout\);

-- Location: LCFF_X26_Y14_N29
\comb_54|uart_parser1|main_sm.0100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector4~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|main_sm.0100~regout\);

-- Location: LCCOMB_X24_Y14_N16
\comb_54|uart_parser1|int_read~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|int_read~5_combout\ = (!\comb_54|uart_parser1|always1~4_combout\ & (\comb_54|uart_parser1|read_op~regout\ & (\comb_54|uart_parser1|main_sm.0100~regout\ & \comb_54|uart1|uart_rx_1|new_rx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|always1~4_combout\,
	datab => \comb_54|uart_parser1|read_op~regout\,
	datac => \comb_54|uart_parser1|main_sm.0100~regout\,
	datad => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	combout => \comb_54|uart_parser1|int_read~5_combout\);

-- Location: LCCOMB_X25_Y14_N0
\comb_54|uart_parser1|int_read~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|int_read~3_combout\ = (\comb_54|uart_parser1|int_read~2_combout\ & (((\comb_54|uart_parser1|int_read~regout\)))) # (!\comb_54|uart_parser1|int_read~2_combout\ & ((\comb_54|uart_parser1|int_read~5_combout\ & 
-- ((\comb_54|uart_parser1|int_read~regout\))) # (!\comb_54|uart_parser1|int_read~5_combout\ & (\comb_54|uart_parser1|read_req~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|read_req~regout\,
	datab => \comb_54|uart_parser1|int_read~2_combout\,
	datac => \comb_54|uart_parser1|int_read~regout\,
	datad => \comb_54|uart_parser1|int_read~5_combout\,
	combout => \comb_54|uart_parser1|int_read~3_combout\);

-- Location: LCFF_X25_Y14_N1
\comb_54|uart_parser1|int_read\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|int_read~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_read~regout\);

-- Location: LCCOMB_X25_Y14_N30
\comb_54|uart_parser1|read_done~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|read_done~feeder_combout\ = \comb_54|uart_parser1|int_read~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart_parser1|int_read~regout\,
	combout => \comb_54|uart_parser1|read_done~feeder_combout\);

-- Location: LCFF_X25_Y14_N31
\comb_54|uart_parser1|read_done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|read_done~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|read_done~regout\);

-- Location: LCFF_X26_Y13_N9
\comb_54|uart_parser1|read_done_s\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|read_done~regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|read_done_s~regout\);

-- Location: LCCOMB_X25_Y15_N0
\comb_54|uart_parser1|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector21~0_combout\ = (!\comb_54|uart_parser1|bin_read_op~regout\ & (!\comb_54|uart_parser1|tx_sm.000~regout\ & \comb_54|uart_parser1|read_done_s~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|bin_read_op~regout\,
	datac => \comb_54|uart_parser1|tx_sm.000~regout\,
	datad => \comb_54|uart_parser1|read_done_s~regout\,
	combout => \comb_54|uart_parser1|Selector21~0_combout\);

-- Location: LCCOMB_X25_Y15_N26
\comb_54|uart_parser1|Selector21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector21~1_combout\ = (\comb_54|uart_parser1|Selector21~0_combout\) # ((!\comb_54|uart_parser1|tx_end_p~combout\ & (\comb_54|uart_parser1|tx_sm.000~regout\ & \comb_54|uart_parser1|tx_sm.001~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|tx_end_p~combout\,
	datab => \comb_54|uart_parser1|tx_sm.000~regout\,
	datac => \comb_54|uart_parser1|tx_sm.001~regout\,
	datad => \comb_54|uart_parser1|Selector21~0_combout\,
	combout => \comb_54|uart_parser1|Selector21~1_combout\);

-- Location: LCFF_X25_Y15_N27
\comb_54|uart_parser1|tx_sm.001\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector21~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|tx_sm.001~regout\);

-- Location: LCFF_X25_Y15_N9
\comb_54|uart_parser1|tx_sm.100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|tx_sm.001~regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart_parser1|tx_end_p~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|tx_sm.100~regout\);

-- Location: LCCOMB_X25_Y15_N8
\comb_54|uart_parser1|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector19~0_combout\ = (\comb_54|uart_parser1|tx_sm.001~regout\) # ((\comb_54|uart_parser1|tx_sm.100~regout\) # (\comb_54|uart_parser1|tx_sm.101~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|tx_sm.001~regout\,
	datac => \comb_54|uart_parser1|tx_sm.100~regout\,
	datad => \comb_54|uart_parser1|tx_sm.101~regout\,
	combout => \comb_54|uart_parser1|Selector19~0_combout\);

-- Location: LCCOMB_X26_Y13_N0
\comb_54|uart_parser1|new_tx_data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|new_tx_data~1_combout\ = (\comb_54|uart_parser1|tx_end_p~combout\ & ((\comb_54|uart_parser1|bin_read_op~regout\) # ((\comb_54|uart1|uart_rx_1|new_rx_data~regout\ & \comb_54|uart_parser1|bin_write_op~regout\)))) # 
-- (!\comb_54|uart_parser1|tx_end_p~combout\ & (\comb_54|uart1|uart_rx_1|new_rx_data~regout\ & (\comb_54|uart_parser1|bin_write_op~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|tx_end_p~combout\,
	datab => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	datac => \comb_54|uart_parser1|bin_write_op~regout\,
	datad => \comb_54|uart_parser1|bin_read_op~regout\,
	combout => \comb_54|uart_parser1|new_tx_data~1_combout\);

-- Location: LCCOMB_X26_Y13_N24
\comb_54|uart_parser1|always15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always15~1_combout\ = (\comb_54|uart_parser1|main_sm.1000~regout\ & \comb_54|uart1|uart_rx_1|new_rx_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|main_sm.1000~regout\,
	datad => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	combout => \comb_54|uart_parser1|always15~1_combout\);

-- Location: LCFF_X26_Y13_N27
\comb_54|uart_parser1|send_stat_flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart1|uart_rx_1|rx_data\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart_parser1|always15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|send_stat_flag~regout\);

-- Location: LCCOMB_X26_Y13_N26
\comb_54|uart_parser1|new_tx_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|new_tx_data~2_combout\ = (\comb_54|uart_parser1|new_tx_data~0_combout\) # ((\comb_54|uart_parser1|new_tx_data~1_combout\ & (\comb_54|uart_parser1|send_stat_flag~regout\ & \comb_54|uart_parser1|Equal11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|new_tx_data~0_combout\,
	datab => \comb_54|uart_parser1|new_tx_data~1_combout\,
	datac => \comb_54|uart_parser1|send_stat_flag~regout\,
	datad => \comb_54|uart_parser1|Equal11~2_combout\,
	combout => \comb_54|uart_parser1|new_tx_data~2_combout\);

-- Location: LCCOMB_X25_Y15_N2
\comb_54|uart_parser1|Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector19~1_combout\ = (\comb_54|uart_parser1|tx_end_p~combout\ & ((\comb_54|uart_parser1|Selector19~0_combout\) # ((!\comb_54|uart_parser1|tx_sm.000~regout\ & \comb_54|uart_parser1|new_tx_data~2_combout\)))) # 
-- (!\comb_54|uart_parser1|tx_end_p~combout\ & (((!\comb_54|uart_parser1|tx_sm.000~regout\ & \comb_54|uart_parser1|new_tx_data~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|tx_end_p~combout\,
	datab => \comb_54|uart_parser1|Selector19~0_combout\,
	datac => \comb_54|uart_parser1|tx_sm.000~regout\,
	datad => \comb_54|uart_parser1|new_tx_data~2_combout\,
	combout => \comb_54|uart_parser1|Selector19~1_combout\);

-- Location: LCFF_X25_Y15_N3
\comb_54|uart_parser1|new_tx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector19~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|new_tx_data~regout\);

-- Location: LCFF_X26_Y15_N25
\comb_54|uart1|uart_tx_1|tx_busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|tx_busy~feeder_combout\,
	sdata => \comb_54|uart_parser1|new_tx_data~regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart1|uart_tx_1|ALT_INV_tx_busy~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|tx_busy~regout\);

-- Location: LCFF_X23_Y13_N3
\comb_54|uart_parser1|s_tx_busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|s_tx_busy~regout\);

-- Location: LCCOMB_X26_Y15_N0
\comb_54|uart_parser1|tx_end_p\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|tx_end_p~combout\ = (\comb_54|uart_parser1|s_tx_busy~regout\ & !\comb_54|uart1|uart_tx_1|tx_busy~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_54|uart_parser1|s_tx_busy~regout\,
	datad => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	combout => \comb_54|uart_parser1|tx_end_p~combout\);

-- Location: LCCOMB_X26_Y13_N6
\comb_54|uart_parser1|bin_byte_count[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|bin_byte_count[7]~10_combout\ = (\comb_54|uart_parser1|always13~3_combout\) # ((\comb_54|uart_parser1|always11~1_combout\) # ((\comb_54|uart_parser1|tx_end_p~combout\ & \comb_54|uart_parser1|bin_read_op~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|always13~3_combout\,
	datab => \comb_54|uart_parser1|always11~1_combout\,
	datac => \comb_54|uart_parser1|tx_end_p~combout\,
	datad => \comb_54|uart_parser1|bin_read_op~regout\,
	combout => \comb_54|uart_parser1|bin_byte_count[7]~10_combout\);

-- Location: LCFF_X24_Y13_N15
\comb_54|uart_parser1|bin_byte_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|bin_byte_count[0]~8_combout\,
	sdata => \comb_54|uart1|uart_rx_1|rx_data\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|always13~3_combout\,
	ena => \comb_54|uart_parser1|bin_byte_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|bin_byte_count\(0));

-- Location: LCCOMB_X24_Y13_N18
\comb_54|uart_parser1|bin_byte_count[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|bin_byte_count[2]~13_combout\ = (\comb_54|uart_parser1|bin_byte_count\(2) & ((GND) # (!\comb_54|uart_parser1|bin_byte_count[1]~12\))) # (!\comb_54|uart_parser1|bin_byte_count\(2) & (\comb_54|uart_parser1|bin_byte_count[1]~12\ $ 
-- (GND)))
-- \comb_54|uart_parser1|bin_byte_count[2]~14\ = CARRY((\comb_54|uart_parser1|bin_byte_count\(2)) # (!\comb_54|uart_parser1|bin_byte_count[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|bin_byte_count\(2),
	datad => VCC,
	cin => \comb_54|uart_parser1|bin_byte_count[1]~12\,
	combout => \comb_54|uart_parser1|bin_byte_count[2]~13_combout\,
	cout => \comb_54|uart_parser1|bin_byte_count[2]~14\);

-- Location: LCFF_X24_Y13_N19
\comb_54|uart_parser1|bin_byte_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|bin_byte_count[2]~13_combout\,
	sdata => \comb_54|uart1|uart_rx_1|rx_data\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|always13~3_combout\,
	ena => \comb_54|uart_parser1|bin_byte_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|bin_byte_count\(2));

-- Location: LCCOMB_X24_Y13_N22
\comb_54|uart_parser1|bin_byte_count[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|bin_byte_count[4]~17_combout\ = (\comb_54|uart_parser1|bin_byte_count\(4) & ((GND) # (!\comb_54|uart_parser1|bin_byte_count[3]~16\))) # (!\comb_54|uart_parser1|bin_byte_count\(4) & (\comb_54|uart_parser1|bin_byte_count[3]~16\ $ 
-- (GND)))
-- \comb_54|uart_parser1|bin_byte_count[4]~18\ = CARRY((\comb_54|uart_parser1|bin_byte_count\(4)) # (!\comb_54|uart_parser1|bin_byte_count[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|bin_byte_count\(4),
	datad => VCC,
	cin => \comb_54|uart_parser1|bin_byte_count[3]~16\,
	combout => \comb_54|uart_parser1|bin_byte_count[4]~17_combout\,
	cout => \comb_54|uart_parser1|bin_byte_count[4]~18\);

-- Location: LCFF_X24_Y13_N23
\comb_54|uart_parser1|bin_byte_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|bin_byte_count[4]~17_combout\,
	sdata => \comb_54|uart1|uart_rx_1|rx_data\(4),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|always13~3_combout\,
	ena => \comb_54|uart_parser1|bin_byte_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|bin_byte_count\(4));

-- Location: LCCOMB_X24_Y13_N24
\comb_54|uart_parser1|bin_byte_count[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|bin_byte_count[5]~19_combout\ = (\comb_54|uart_parser1|bin_byte_count\(5) & (\comb_54|uart_parser1|bin_byte_count[4]~18\ & VCC)) # (!\comb_54|uart_parser1|bin_byte_count\(5) & (!\comb_54|uart_parser1|bin_byte_count[4]~18\))
-- \comb_54|uart_parser1|bin_byte_count[5]~20\ = CARRY((!\comb_54|uart_parser1|bin_byte_count\(5) & !\comb_54|uart_parser1|bin_byte_count[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|bin_byte_count\(5),
	datad => VCC,
	cin => \comb_54|uart_parser1|bin_byte_count[4]~18\,
	combout => \comb_54|uart_parser1|bin_byte_count[5]~19_combout\,
	cout => \comb_54|uart_parser1|bin_byte_count[5]~20\);

-- Location: LCFF_X24_Y13_N25
\comb_54|uart_parser1|bin_byte_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|bin_byte_count[5]~19_combout\,
	sdata => \comb_54|uart1|uart_rx_1|rx_data\(5),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|always13~3_combout\,
	ena => \comb_54|uart_parser1|bin_byte_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|bin_byte_count\(5));

-- Location: LCFF_X24_Y13_N27
\comb_54|uart_parser1|bin_byte_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|bin_byte_count[6]~21_combout\,
	sdata => \comb_54|uart1|uart_rx_1|rx_data\(6),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|always13~3_combout\,
	ena => \comb_54|uart_parser1|bin_byte_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|bin_byte_count\(6));

-- Location: LCCOMB_X23_Y13_N26
\comb_54|uart_parser1|Equal11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Equal11~1_combout\ = (!\comb_54|uart_parser1|bin_byte_count\(7) & (!\comb_54|uart_parser1|bin_byte_count\(5) & (!\comb_54|uart_parser1|bin_byte_count\(6) & !\comb_54|uart_parser1|bin_byte_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|bin_byte_count\(7),
	datab => \comb_54|uart_parser1|bin_byte_count\(5),
	datac => \comb_54|uart_parser1|bin_byte_count\(6),
	datad => \comb_54|uart_parser1|bin_byte_count\(4),
	combout => \comb_54|uart_parser1|Equal11~1_combout\);

-- Location: LCCOMB_X26_Y13_N30
\comb_54|uart_parser1|Selector0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector0~7_combout\ = (\comb_54|uart_parser1|Selector0~2_combout\) # ((\comb_54|uart_parser1|Equal11~1_combout\ & (\comb_54|uart_parser1|Equal11~0_combout\ & \comb_54|uart_parser1|main_sm.1100~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|Selector0~2_combout\,
	datab => \comb_54|uart_parser1|Equal11~1_combout\,
	datac => \comb_54|uart_parser1|Equal11~0_combout\,
	datad => \comb_54|uart_parser1|main_sm.1100~regout\,
	combout => \comb_54|uart_parser1|Selector0~7_combout\);

-- Location: LCCOMB_X25_Y13_N18
\comb_54|uart_parser1|Selector0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector0~6_combout\ = (!\comb_54|uart_parser1|Selector0~7_combout\ & (((!\comb_54|uart_parser1|Selector0~3_combout\ & \comb_54|uart_parser1|Selector5~0_combout\)) # (!\comb_54|uart_parser1|always0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|Selector0~3_combout\,
	datab => \comb_54|uart_parser1|always0~3_combout\,
	datac => \comb_54|uart_parser1|Selector5~0_combout\,
	datad => \comb_54|uart_parser1|Selector0~7_combout\,
	combout => \comb_54|uart_parser1|Selector0~6_combout\);

-- Location: LCFF_X25_Y13_N19
\comb_54|uart_parser1|main_sm.0000\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Selector0~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|main_sm.0000~regout\);

-- Location: LCCOMB_X24_Y14_N8
\comb_54|uart_parser1|always2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always2~0_combout\ = (!\comb_54|uart_parser1|main_sm.0000~regout\ & \comb_54|uart1|uart_rx_1|new_rx_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_54|uart_parser1|main_sm.0000~regout\,
	datad => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	combout => \comb_54|uart_parser1|always2~0_combout\);

-- Location: LCFF_X24_Y14_N25
\comb_54|uart_parser1|write_op\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Equal3~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|write_op~regout\);

-- Location: LCCOMB_X24_Y14_N26
\comb_54|uart_parser1|always11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always11~0_combout\ = (\comb_54|uart1|uart_rx_1|new_rx_data~regout\ & (\comb_54|uart_parser1|write_op~regout\ & (\comb_54|uart_parser1|main_sm.0100~regout\ & !\comb_54|uart_parser1|always1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	datab => \comb_54|uart_parser1|write_op~regout\,
	datac => \comb_54|uart_parser1|main_sm.0100~regout\,
	datad => \comb_54|uart_parser1|always1~4_combout\,
	combout => \comb_54|uart_parser1|always11~0_combout\);

-- Location: LCCOMB_X25_Y14_N2
\comb_54|uart_parser1|int_write~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|int_write~0_combout\ = (\comb_54|uart_parser1|always11~0_combout\ & (((\comb_54|uart_parser1|int_write~regout\)))) # (!\comb_54|uart_parser1|always11~0_combout\ & ((\comb_54|uart_parser1|always11~1_combout\ & 
-- ((\comb_54|uart_parser1|int_write~regout\))) # (!\comb_54|uart_parser1|always11~1_combout\ & (\comb_54|uart_parser1|write_req~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|write_req~regout\,
	datab => \comb_54|uart_parser1|always11~0_combout\,
	datac => \comb_54|uart_parser1|int_write~regout\,
	datad => \comb_54|uart_parser1|always11~1_combout\,
	combout => \comb_54|uart_parser1|int_write~0_combout\);

-- Location: LCFF_X25_Y14_N3
\comb_54|uart_parser1|int_write\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|int_write~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_write~regout\);

-- Location: LCCOMB_X39_Y14_N2
\u10|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add0~0_combout\ = (\ul0|num\(0) & (\ul0|num\(1) $ (VCC))) # (!\ul0|num\(0) & (\ul0|num\(1) & VCC))
-- \u10|Add0~1\ = CARRY((\ul0|num\(0) & \ul0|num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(0),
	datab => \ul0|num\(1),
	datad => VCC,
	combout => \u10|Add0~0_combout\,
	cout => \u10|Add0~1\);

-- Location: LCCOMB_X39_Y14_N4
\u10|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add0~2_combout\ = (\ul0|num\(2) & ((\ul0|num\(1) & (\u10|Add0~1\ & VCC)) # (!\ul0|num\(1) & (!\u10|Add0~1\)))) # (!\ul0|num\(2) & ((\ul0|num\(1) & (!\u10|Add0~1\)) # (!\ul0|num\(1) & ((\u10|Add0~1\) # (GND)))))
-- \u10|Add0~3\ = CARRY((\ul0|num\(2) & (!\ul0|num\(1) & !\u10|Add0~1\)) # (!\ul0|num\(2) & ((!\u10|Add0~1\) # (!\ul0|num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(2),
	datab => \ul0|num\(1),
	datad => VCC,
	cin => \u10|Add0~1\,
	combout => \u10|Add0~2_combout\,
	cout => \u10|Add0~3\);

-- Location: LCCOMB_X39_Y14_N6
\u10|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add0~4_combout\ = ((\ul0|num\(3) $ (\ul0|num\(2) $ (!\u10|Add0~3\)))) # (GND)
-- \u10|Add0~5\ = CARRY((\ul0|num\(3) & ((\ul0|num\(2)) # (!\u10|Add0~3\))) # (!\ul0|num\(3) & (\ul0|num\(2) & !\u10|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(3),
	datab => \ul0|num\(2),
	datad => VCC,
	cin => \u10|Add0~3\,
	combout => \u10|Add0~4_combout\,
	cout => \u10|Add0~5\);

-- Location: LCCOMB_X39_Y14_N8
\u10|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add0~6_combout\ = (\ul0|num\(3) & ((\ul0|num\(4) & (\u10|Add0~5\ & VCC)) # (!\ul0|num\(4) & (!\u10|Add0~5\)))) # (!\ul0|num\(3) & ((\ul0|num\(4) & (!\u10|Add0~5\)) # (!\ul0|num\(4) & ((\u10|Add0~5\) # (GND)))))
-- \u10|Add0~7\ = CARRY((\ul0|num\(3) & (!\ul0|num\(4) & !\u10|Add0~5\)) # (!\ul0|num\(3) & ((!\u10|Add0~5\) # (!\ul0|num\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(3),
	datab => \ul0|num\(4),
	datad => VCC,
	cin => \u10|Add0~5\,
	combout => \u10|Add0~6_combout\,
	cout => \u10|Add0~7\);

-- Location: LCCOMB_X39_Y14_N10
\u10|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add0~8_combout\ = ((\ul0|num\(5) $ (\ul0|num\(4) $ (!\u10|Add0~7\)))) # (GND)
-- \u10|Add0~9\ = CARRY((\ul0|num\(5) & ((\ul0|num\(4)) # (!\u10|Add0~7\))) # (!\ul0|num\(5) & (\ul0|num\(4) & !\u10|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(5),
	datab => \ul0|num\(4),
	datad => VCC,
	cin => \u10|Add0~7\,
	combout => \u10|Add0~8_combout\,
	cout => \u10|Add0~9\);

-- Location: LCCOMB_X39_Y14_N12
\u10|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add0~10_combout\ = (\ul0|num\(5) & ((\ul0|num\(6) & (\u10|Add0~9\ & VCC)) # (!\ul0|num\(6) & (!\u10|Add0~9\)))) # (!\ul0|num\(5) & ((\ul0|num\(6) & (!\u10|Add0~9\)) # (!\ul0|num\(6) & ((\u10|Add0~9\) # (GND)))))
-- \u10|Add0~11\ = CARRY((\ul0|num\(5) & (!\ul0|num\(6) & !\u10|Add0~9\)) # (!\ul0|num\(5) & ((!\u10|Add0~9\) # (!\ul0|num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(5),
	datab => \ul0|num\(6),
	datad => VCC,
	cin => \u10|Add0~9\,
	combout => \u10|Add0~10_combout\,
	cout => \u10|Add0~11\);

-- Location: LCCOMB_X39_Y14_N14
\u10|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add0~12_combout\ = ((\ul0|num\(6) $ (\ul0|num\(7) $ (!\u10|Add0~11\)))) # (GND)
-- \u10|Add0~13\ = CARRY((\ul0|num\(6) & ((\ul0|num\(7)) # (!\u10|Add0~11\))) # (!\ul0|num\(6) & (\ul0|num\(7) & !\u10|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(6),
	datab => \ul0|num\(7),
	datad => VCC,
	cin => \u10|Add0~11\,
	combout => \u10|Add0~12_combout\,
	cout => \u10|Add0~13\);

-- Location: LCCOMB_X39_Y14_N16
\u10|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add0~14_combout\ = (\ul0|num\(7) & (!\u10|Add0~13\)) # (!\ul0|num\(7) & ((\u10|Add0~13\) # (GND)))
-- \u10|Add0~15\ = CARRY((!\u10|Add0~13\) # (!\ul0|num\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(7),
	datad => VCC,
	cin => \u10|Add0~13\,
	combout => \u10|Add0~14_combout\,
	cout => \u10|Add0~15\);

-- Location: LCCOMB_X39_Y14_N18
\u10|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add0~16_combout\ = !\u10|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u10|Add0~15\,
	combout => \u10|Add0~16_combout\);

-- Location: LCCOMB_X27_Y13_N18
\comb_54|uart_parser1|WideOr11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr11~2_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(3) & ((\comb_54|uart1|uart_rx_1|rx_data\(1)) # ((\comb_54|uart_parser1|WideOr11~1_combout\ & !\comb_54|uart1|uart_rx_1|rx_data\(5))))) # (!\comb_54|uart1|uart_rx_1|rx_data\(3) 
-- & (\comb_54|uart_parser1|WideOr11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|WideOr11~1_combout\,
	datab => \comb_54|uart1|uart_rx_1|rx_data\(1),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(5),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(3),
	combout => \comb_54|uart_parser1|WideOr11~2_combout\);

-- Location: LCCOMB_X27_Y14_N2
\comb_54|uart_parser1|WideOr11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr11~3_combout\ = (\comb_54|uart_parser1|WideOr11~0_combout\) # ((\comb_54|uart_parser1|WideOr11~2_combout\) # ((\comb_54|uart1|uart_rx_1|rx_data\(3) & !\comb_54|uart_parser1|always1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|WideOr11~0_combout\,
	datab => \comb_54|uart1|uart_rx_1|rx_data\(3),
	datac => \comb_54|uart_parser1|WideOr11~2_combout\,
	datad => \comb_54|uart_parser1|always1~3_combout\,
	combout => \comb_54|uart_parser1|WideOr11~3_combout\);

-- Location: LCCOMB_X26_Y14_N12
\comb_54|uart_parser1|data_param[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|data_param[4]~1_combout\ = (\comb_54|uart_parser1|always1~4_combout\ & (\comb_54|uart1|uart_rx_1|new_rx_data~regout\ & ((\comb_54|uart_parser1|main_sm.0010~regout\) # (\comb_54|uart_parser1|main_sm.0001~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|main_sm.0010~regout\,
	datab => \comb_54|uart_parser1|always1~4_combout\,
	datac => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	datad => \comb_54|uart_parser1|main_sm.0001~regout\,
	combout => \comb_54|uart_parser1|data_param[4]~1_combout\);

-- Location: LCFF_X27_Y14_N3
\comb_54|uart_parser1|data_param[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|WideOr11~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|data_param[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|data_param\(2));

-- Location: LCCOMB_X26_Y14_N14
\comb_54|uart_parser1|data_param~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|data_param~2_combout\ = (\comb_54|uart_parser1|data_param\(2) & (((!\comb_54|uart_parser1|always1~4_combout\) # (!\comb_54|uart_parser1|main_sm.0001~regout\)) # (!\comb_54|uart1|uart_rx_1|new_rx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	datab => \comb_54|uart_parser1|main_sm.0001~regout\,
	datac => \comb_54|uart_parser1|always1~4_combout\,
	datad => \comb_54|uart_parser1|data_param\(2),
	combout => \comb_54|uart_parser1|data_param~2_combout\);

-- Location: LCFF_X26_Y14_N15
\comb_54|uart_parser1|data_param[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|data_param~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|data_param[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|data_param\(6));

-- Location: LCCOMB_X25_Y14_N18
\comb_54|uart_parser1|int_wr_data[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|int_wr_data[6]~1_combout\ = (\comb_54|uart_parser1|always11~0_combout\ & ((\comb_54|uart_parser1|data_param\(6)))) # (!\comb_54|uart_parser1|always11~0_combout\ & (\comb_54|uart1|uart_rx_1|rx_data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(6),
	datab => \comb_54|uart_parser1|data_param\(6),
	datad => \comb_54|uart_parser1|always11~0_combout\,
	combout => \comb_54|uart_parser1|int_wr_data[6]~1_combout\);

-- Location: LCCOMB_X23_Y14_N18
\comb_54|uart_parser1|always11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always11~2_combout\ = (\comb_54|uart1|uart_rx_1|new_rx_data~regout\ & \comb_54|uart_parser1|main_sm.0100~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	datad => \comb_54|uart_parser1|main_sm.0100~regout\,
	combout => \comb_54|uart_parser1|always11~2_combout\);

-- Location: LCCOMB_X25_Y14_N28
\comb_54|uart_parser1|int_write~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|int_write~1_combout\ = (\comb_54|uart_parser1|always11~1_combout\) # ((!\comb_54|uart_parser1|always1~4_combout\ & (\comb_54|uart_parser1|write_op~regout\ & \comb_54|uart_parser1|always11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|always1~4_combout\,
	datab => \comb_54|uart_parser1|write_op~regout\,
	datac => \comb_54|uart_parser1|always11~2_combout\,
	datad => \comb_54|uart_parser1|always11~1_combout\,
	combout => \comb_54|uart_parser1|int_write~1_combout\);

-- Location: LCFF_X25_Y14_N19
\comb_54|uart_parser1|int_wr_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|int_wr_data[6]~1_combout\,
	sdata => \comb_54|uart_parser1|int_wr_data\(6),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|ALT_INV_int_write~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_wr_data\(6));

-- Location: LCCOMB_X27_Y13_N10
\comb_54|uart_parser1|WideOr13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr13~1_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(4) & (\comb_54|uart1|uart_rx_1|rx_data\(5) & (!\comb_54|uart1|uart_rx_1|rx_data\(0) & !\comb_54|uart1|uart_rx_1|rx_data\(6)))) # (!\comb_54|uart1|uart_rx_1|rx_data\(4) & 
-- (((\comb_54|uart1|uart_rx_1|rx_data\(0) & \comb_54|uart1|uart_rx_1|rx_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(5),
	datab => \comb_54|uart1|uart_rx_1|rx_data\(4),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(0),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(6),
	combout => \comb_54|uart_parser1|WideOr13~1_combout\);

-- Location: LCCOMB_X27_Y13_N26
\comb_54|uart_parser1|WideOr13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr13~0_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(6) & ((\comb_54|uart1|uart_rx_1|rx_data\(3)) # ((\comb_54|uart1|uart_rx_1|rx_data\(1) & \comb_54|uart1|uart_rx_1|rx_data\(2))))) # (!\comb_54|uart1|uart_rx_1|rx_data\(6) & 
-- (\comb_54|uart1|uart_rx_1|rx_data\(3) & ((\comb_54|uart1|uart_rx_1|rx_data\(1)) # (\comb_54|uart1|uart_rx_1|rx_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(6),
	datab => \comb_54|uart1|uart_rx_1|rx_data\(1),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(3),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(2),
	combout => \comb_54|uart_parser1|WideOr13~0_combout\);

-- Location: LCCOMB_X27_Y14_N4
\comb_54|uart_parser1|WideOr13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr13~2_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(7)) # ((\comb_54|uart_parser1|WideOr13~0_combout\) # (!\comb_54|uart_parser1|WideOr13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_rx_1|rx_data\(7),
	datac => \comb_54|uart_parser1|WideOr13~1_combout\,
	datad => \comb_54|uart_parser1|WideOr13~0_combout\,
	combout => \comb_54|uart_parser1|WideOr13~2_combout\);

-- Location: LCCOMB_X26_Y14_N26
\comb_54|uart_parser1|addr_param[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|addr_param[8]~0_combout\ = (((!\comb_54|uart_parser1|main_sm.0011~regout\ & !\comb_54|uart_parser1|main_sm.0100~regout\)) # (!\comb_54|uart_parser1|always1~4_combout\)) # (!\comb_54|uart1|uart_rx_1|new_rx_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	datab => \comb_54|uart_parser1|main_sm.0011~regout\,
	datac => \comb_54|uart_parser1|always1~4_combout\,
	datad => \comb_54|uart_parser1|main_sm.0100~regout\,
	combout => \comb_54|uart_parser1|addr_param[8]~0_combout\);

-- Location: LCCOMB_X27_Y14_N0
\comb_54|uart_parser1|addr_param~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|addr_param~1_combout\ = (\comb_54|uart_parser1|addr_param[8]~0_combout\ & ((\comb_54|uart1|uart_rx_1|rx_data\(0)))) # (!\comb_54|uart_parser1|addr_param[8]~0_combout\ & (\comb_54|uart_parser1|WideOr13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|WideOr13~2_combout\,
	datac => \comb_54|uart_parser1|addr_param[8]~0_combout\,
	datad => \comb_54|uart1|uart_rx_1|rx_data\(0),
	combout => \comb_54|uart_parser1|addr_param~1_combout\);

-- Location: LCCOMB_X23_Y14_N2
\comb_54|uart_parser1|always8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always8~0_combout\ = (\comb_54|uart1|uart_rx_1|new_rx_data~regout\ & \comb_54|uart_parser1|always1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	datad => \comb_54|uart_parser1|always1~4_combout\,
	combout => \comb_54|uart_parser1|always8~0_combout\);

-- Location: LCCOMB_X26_Y14_N20
\comb_54|uart_parser1|addr_param[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|addr_param[0]~2_combout\ = (\comb_54|uart_parser1|main_sm.1010~regout\) # ((\comb_54|uart_parser1|always8~0_combout\ & ((\comb_54|uart_parser1|main_sm.0011~regout\) # (\comb_54|uart_parser1|main_sm.0100~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|main_sm.0011~regout\,
	datab => \comb_54|uart_parser1|always8~0_combout\,
	datac => \comb_54|uart_parser1|main_sm.1010~regout\,
	datad => \comb_54|uart_parser1|main_sm.0100~regout\,
	combout => \comb_54|uart_parser1|addr_param[0]~2_combout\);

-- Location: LCFF_X27_Y14_N1
\comb_54|uart_parser1|addr_param[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|addr_param~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|addr_param[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|addr_param\(0));

-- Location: LCCOMB_X23_Y14_N14
\comb_54|uart_parser1|int_address~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|int_address~2_combout\ = (\comb_54|uart1|uart_rx_1|new_rx_data~regout\ & ((\comb_54|uart_parser1|main_sm.1011~regout\) # ((\comb_54|uart_parser1|main_sm.0100~regout\ & !\comb_54|uart_parser1|always1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|main_sm.0100~regout\,
	datab => \comb_54|uart_parser1|main_sm.1011~regout\,
	datac => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	datad => \comb_54|uart_parser1|always1~4_combout\,
	combout => \comb_54|uart_parser1|int_address~2_combout\);

-- Location: LCCOMB_X23_Y14_N24
\comb_54|uart_parser1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~2_combout\ = (\comb_54|uart_parser1|int_address~2_combout\ & ((\comb_54|uart_parser1|addr_param\(0)))) # (!\comb_54|uart_parser1|int_address~2_combout\ & (\comb_54|uart_parser1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|Add1~0_combout\,
	datab => \comb_54|uart_parser1|addr_param\(0),
	datac => \comb_54|uart_parser1|int_address~2_combout\,
	combout => \comb_54|uart_parser1|Add1~2_combout\);

-- Location: LCFF_X23_Y14_N9
\comb_54|uart_parser1|int_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|Add1~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_address\(0));

-- Location: LCCOMB_X27_Y13_N20
\comb_54|uart_parser1|WideOr12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr12~0_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(3)) # ((\comb_54|uart1|uart_rx_1|rx_data\(0) & ((\comb_54|uart1|uart_rx_1|rx_data\(2)) # (!\comb_54|uart1|uart_rx_1|rx_data\(1)))) # (!\comb_54|uart1|uart_rx_1|rx_data\(0) & 
-- ((\comb_54|uart1|uart_rx_1|rx_data\(1)) # (!\comb_54|uart1|uart_rx_1|rx_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(0),
	datab => \comb_54|uart1|uart_rx_1|rx_data\(1),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(3),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(2),
	combout => \comb_54|uart_parser1|WideOr12~0_combout\);

-- Location: LCCOMB_X27_Y13_N6
\comb_54|uart_parser1|WideOr12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr12~1_combout\ = ((\comb_54|uart1|uart_rx_1|rx_data\(1)) # ((\comb_54|uart1|uart_rx_1|rx_data\(3) & \comb_54|uart1|uart_rx_1|rx_data\(2)))) # (!\comb_54|uart1|uart_rx_1|rx_data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(3),
	datab => \comb_54|uart1|uart_rx_1|rx_data\(5),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(2),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(1),
	combout => \comb_54|uart_parser1|WideOr12~1_combout\);

-- Location: LCCOMB_X27_Y13_N22
\comb_54|uart_parser1|WideOr12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr12~2_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(4) & ((\comb_54|uart1|uart_rx_1|rx_data\(6)) # (\comb_54|uart_parser1|WideOr12~1_combout\))) # (!\comb_54|uart1|uart_rx_1|rx_data\(4) & (!\comb_54|uart1|uart_rx_1|rx_data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_rx_1|rx_data\(4),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(6),
	datad => \comb_54|uart_parser1|WideOr12~1_combout\,
	combout => \comb_54|uart_parser1|WideOr12~2_combout\);

-- Location: LCCOMB_X27_Y14_N24
\comb_54|uart_parser1|WideOr12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr12~3_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(7)) # ((\comb_54|uart_parser1|WideOr12~2_combout\) # ((!\comb_54|uart1|uart_rx_1|rx_data\(4) & \comb_54|uart_parser1|WideOr12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(4),
	datab => \comb_54|uart1|uart_rx_1|rx_data\(7),
	datac => \comb_54|uart_parser1|WideOr12~0_combout\,
	datad => \comb_54|uart_parser1|WideOr12~2_combout\,
	combout => \comb_54|uart_parser1|WideOr12~3_combout\);

-- Location: LCCOMB_X27_Y14_N26
\comb_54|uart_parser1|addr_param~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|addr_param~3_combout\ = (\comb_54|uart_parser1|addr_param[8]~0_combout\ & ((\comb_54|uart1|uart_rx_1|rx_data\(1)))) # (!\comb_54|uart_parser1|addr_param[8]~0_combout\ & (\comb_54|uart_parser1|WideOr12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|addr_param[8]~0_combout\,
	datac => \comb_54|uart_parser1|WideOr12~3_combout\,
	datad => \comb_54|uart1|uart_rx_1|rx_data\(1),
	combout => \comb_54|uart_parser1|addr_param~3_combout\);

-- Location: LCFF_X27_Y14_N27
\comb_54|uart_parser1|addr_param[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|addr_param~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|addr_param[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|addr_param\(1));

-- Location: LCCOMB_X26_Y13_N22
\comb_54|uart_parser1|addr_auto_inc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|addr_auto_inc~0_combout\ = !\comb_54|uart1|uart_rx_1|rx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_54|uart1|uart_rx_1|rx_data\(1),
	combout => \comb_54|uart_parser1|addr_auto_inc~0_combout\);

-- Location: LCFF_X26_Y13_N23
\comb_54|uart_parser1|addr_auto_inc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|addr_auto_inc~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|always15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|addr_auto_inc~regout\);

-- Location: LCCOMB_X23_Y13_N28
\comb_54|uart_parser1|always13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always13~0_combout\ = (\comb_54|uart_parser1|bin_write_op~regout\ & (\comb_54|uart_parser1|int_write~regout\ & \comb_54|uart_parser1|addr_auto_inc~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|bin_write_op~regout\,
	datac => \comb_54|uart_parser1|int_write~regout\,
	datad => \comb_54|uart_parser1|addr_auto_inc~regout\,
	combout => \comb_54|uart_parser1|always13~0_combout\);

-- Location: LCCOMB_X23_Y13_N2
\comb_54|uart_parser1|always13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always13~1_combout\ = (!\comb_54|uart1|uart_tx_1|tx_busy~regout\ & (\comb_54|uart_parser1|bin_read_op~regout\ & (\comb_54|uart_parser1|s_tx_busy~regout\ & \comb_54|uart_parser1|addr_auto_inc~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	datab => \comb_54|uart_parser1|bin_read_op~regout\,
	datac => \comb_54|uart_parser1|s_tx_busy~regout\,
	datad => \comb_54|uart_parser1|addr_auto_inc~regout\,
	combout => \comb_54|uart_parser1|always13~1_combout\);

-- Location: LCCOMB_X23_Y13_N30
\comb_54|uart_parser1|always13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always13~2_combout\ = (\comb_54|uart_parser1|always13~0_combout\) # ((\comb_54|uart_parser1|always13~1_combout\ & ((!\comb_54|uart_parser1|Equal11~0_combout\) # (!\comb_54|uart_parser1|Equal11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|Equal11~1_combout\,
	datab => \comb_54|uart_parser1|always13~0_combout\,
	datac => \comb_54|uart_parser1|Equal11~0_combout\,
	datad => \comb_54|uart_parser1|always13~1_combout\,
	combout => \comb_54|uart_parser1|always13~2_combout\);

-- Location: LCCOMB_X23_Y13_N6
\comb_54|uart_parser1|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~3_combout\ = (\comb_54|uart_parser1|int_address\(1) & (!\comb_54|uart_parser1|Add1~1\)) # (!\comb_54|uart_parser1|int_address\(1) & ((\comb_54|uart_parser1|Add1~1\) # (GND)))
-- \comb_54|uart_parser1|Add1~4\ = CARRY((!\comb_54|uart_parser1|Add1~1\) # (!\comb_54|uart_parser1|int_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_address\(1),
	datad => VCC,
	cin => \comb_54|uart_parser1|Add1~1\,
	combout => \comb_54|uart_parser1|Add1~3_combout\,
	cout => \comb_54|uart_parser1|Add1~4\);

-- Location: LCCOMB_X23_Y14_N10
\comb_54|uart_parser1|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~5_combout\ = (\comb_54|uart_parser1|int_address~2_combout\ & (\comb_54|uart_parser1|addr_param\(1))) # (!\comb_54|uart_parser1|int_address~2_combout\ & ((\comb_54|uart_parser1|Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|int_address~2_combout\,
	datac => \comb_54|uart_parser1|addr_param\(1),
	datad => \comb_54|uart_parser1|Add1~3_combout\,
	combout => \comb_54|uart_parser1|Add1~5_combout\);

-- Location: LCFF_X23_Y14_N11
\comb_54|uart_parser1|int_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Add1~5_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_address\(1));

-- Location: LCCOMB_X27_Y14_N28
\comb_54|uart_parser1|addr_param~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|addr_param~4_combout\ = (\comb_54|uart_parser1|addr_param[8]~0_combout\ & (\comb_54|uart1|uart_rx_1|rx_data\(2))) # (!\comb_54|uart_parser1|addr_param[8]~0_combout\ & ((\comb_54|uart_parser1|WideOr11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_rx_1|rx_data\(2),
	datac => \comb_54|uart_parser1|addr_param[8]~0_combout\,
	datad => \comb_54|uart_parser1|WideOr11~3_combout\,
	combout => \comb_54|uart_parser1|addr_param~4_combout\);

-- Location: LCFF_X27_Y14_N29
\comb_54|uart_parser1|addr_param[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|addr_param~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|addr_param[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|addr_param\(2));

-- Location: LCCOMB_X23_Y13_N8
\comb_54|uart_parser1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~6_combout\ = (\comb_54|uart_parser1|int_address\(2) & (\comb_54|uart_parser1|Add1~4\ $ (GND))) # (!\comb_54|uart_parser1|int_address\(2) & (!\comb_54|uart_parser1|Add1~4\ & VCC))
-- \comb_54|uart_parser1|Add1~7\ = CARRY((\comb_54|uart_parser1|int_address\(2) & !\comb_54|uart_parser1|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|int_address\(2),
	datad => VCC,
	cin => \comb_54|uart_parser1|Add1~4\,
	combout => \comb_54|uart_parser1|Add1~6_combout\,
	cout => \comb_54|uart_parser1|Add1~7\);

-- Location: LCCOMB_X23_Y14_N20
\comb_54|uart_parser1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~8_combout\ = (\comb_54|uart_parser1|int_address~2_combout\ & (\comb_54|uart_parser1|addr_param\(2))) # (!\comb_54|uart_parser1|int_address~2_combout\ & ((\comb_54|uart_parser1|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|addr_param\(2),
	datac => \comb_54|uart_parser1|int_address~2_combout\,
	datad => \comb_54|uart_parser1|Add1~6_combout\,
	combout => \comb_54|uart_parser1|Add1~8_combout\);

-- Location: LCFF_X23_Y14_N21
\comb_54|uart_parser1|int_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Add1~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_address\(2));

-- Location: LCCOMB_X23_Y13_N10
\comb_54|uart_parser1|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~9_combout\ = (\comb_54|uart_parser1|int_address\(3) & (!\comb_54|uart_parser1|Add1~7\)) # (!\comb_54|uart_parser1|int_address\(3) & ((\comb_54|uart_parser1|Add1~7\) # (GND)))
-- \comb_54|uart_parser1|Add1~10\ = CARRY((!\comb_54|uart_parser1|Add1~7\) # (!\comb_54|uart_parser1|int_address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|int_address\(3),
	datad => VCC,
	cin => \comb_54|uart_parser1|Add1~7\,
	combout => \comb_54|uart_parser1|Add1~9_combout\,
	cout => \comb_54|uart_parser1|Add1~10\);

-- Location: LCCOMB_X23_Y14_N30
\comb_54|uart_parser1|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~11_combout\ = (\comb_54|uart_parser1|int_address~2_combout\ & (\comb_54|uart_parser1|addr_param\(3))) # (!\comb_54|uart_parser1|int_address~2_combout\ & ((\comb_54|uart_parser1|Add1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|addr_param\(3),
	datab => \comb_54|uart_parser1|int_address~2_combout\,
	datac => \comb_54|uart_parser1|Add1~9_combout\,
	combout => \comb_54|uart_parser1|Add1~11_combout\);

-- Location: LCFF_X23_Y14_N31
\comb_54|uart_parser1|int_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Add1~11_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_address\(3));

-- Location: LCCOMB_X23_Y13_N12
\comb_54|uart_parser1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~12_combout\ = (\comb_54|uart_parser1|int_address\(4) & (\comb_54|uart_parser1|Add1~10\ $ (GND))) # (!\comb_54|uart_parser1|int_address\(4) & (!\comb_54|uart_parser1|Add1~10\ & VCC))
-- \comb_54|uart_parser1|Add1~13\ = CARRY((\comb_54|uart_parser1|int_address\(4) & !\comb_54|uart_parser1|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_address\(4),
	datad => VCC,
	cin => \comb_54|uart_parser1|Add1~10\,
	combout => \comb_54|uart_parser1|Add1~12_combout\,
	cout => \comb_54|uart_parser1|Add1~13\);

-- Location: LCCOMB_X23_Y14_N0
\comb_54|uart_parser1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~14_combout\ = (\comb_54|uart_parser1|int_address~2_combout\ & (\comb_54|uart_parser1|addr_param\(4))) # (!\comb_54|uart_parser1|int_address~2_combout\ & ((\comb_54|uart_parser1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|addr_param\(4),
	datab => \comb_54|uart_parser1|int_address~2_combout\,
	datad => \comb_54|uart_parser1|Add1~12_combout\,
	combout => \comb_54|uart_parser1|Add1~14_combout\);

-- Location: LCFF_X23_Y14_N1
\comb_54|uart_parser1|int_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Add1~14_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_address\(4));

-- Location: LCCOMB_X26_Y14_N22
\comb_54|uart_parser1|always9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always9~1_combout\ = (\comb_54|uart1|uart_rx_1|new_rx_data~regout\ & (\comb_54|uart_parser1|always1~4_combout\ & \comb_54|uart_parser1|main_sm.0011~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	datac => \comb_54|uart_parser1|always1~4_combout\,
	datad => \comb_54|uart_parser1|main_sm.0011~regout\,
	combout => \comb_54|uart_parser1|always9~1_combout\);

-- Location: LCCOMB_X23_Y14_N28
\comb_54|uart_parser1|always9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|always9~0_combout\ = (\comb_54|uart_parser1|main_sm.0100~regout\ & (\comb_54|uart1|uart_rx_1|new_rx_data~regout\ & \comb_54|uart_parser1|always1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|main_sm.0100~regout\,
	datac => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	datad => \comb_54|uart_parser1|always1~4_combout\,
	combout => \comb_54|uart_parser1|always9~0_combout\);

-- Location: LCCOMB_X27_Y14_N10
\comb_54|uart_parser1|addr_param~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|addr_param~7_combout\ = (!\comb_54|uart_parser1|always9~1_combout\ & ((\comb_54|uart_parser1|always9~0_combout\ & ((\comb_54|uart_parser1|addr_param\(1)))) # (!\comb_54|uart_parser1|always9~0_combout\ & 
-- (\comb_54|uart1|uart_rx_1|rx_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(5),
	datab => \comb_54|uart_parser1|always9~1_combout\,
	datac => \comb_54|uart_parser1|always9~0_combout\,
	datad => \comb_54|uart_parser1|addr_param\(1),
	combout => \comb_54|uart_parser1|addr_param~7_combout\);

-- Location: LCFF_X27_Y14_N11
\comb_54|uart_parser1|addr_param[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|addr_param~7_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|addr_param[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|addr_param\(5));

-- Location: LCCOMB_X23_Y14_N26
\comb_54|uart_parser1|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~17_combout\ = (\comb_54|uart_parser1|int_address~2_combout\ & ((\comb_54|uart_parser1|addr_param\(5)))) # (!\comb_54|uart_parser1|int_address~2_combout\ & (\comb_54|uart_parser1|Add1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|Add1~15_combout\,
	datac => \comb_54|uart_parser1|int_address~2_combout\,
	datad => \comb_54|uart_parser1|addr_param\(5),
	combout => \comb_54|uart_parser1|Add1~17_combout\);

-- Location: LCFF_X23_Y14_N27
\comb_54|uart_parser1|int_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Add1~17_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_address\(5));

-- Location: LCCOMB_X23_Y13_N16
\comb_54|uart_parser1|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~18_combout\ = (\comb_54|uart_parser1|int_address\(6) & (\comb_54|uart_parser1|Add1~16\ $ (GND))) # (!\comb_54|uart_parser1|int_address\(6) & (!\comb_54|uart_parser1|Add1~16\ & VCC))
-- \comb_54|uart_parser1|Add1~19\ = CARRY((\comb_54|uart_parser1|int_address\(6) & !\comb_54|uart_parser1|Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_address\(6),
	datad => VCC,
	cin => \comb_54|uart_parser1|Add1~16\,
	combout => \comb_54|uart_parser1|Add1~18_combout\,
	cout => \comb_54|uart_parser1|Add1~19\);

-- Location: LCCOMB_X27_Y14_N20
\comb_54|uart_parser1|addr_param~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|addr_param~8_combout\ = (!\comb_54|uart_parser1|always9~1_combout\ & ((\comb_54|uart_parser1|always9~0_combout\ & ((\comb_54|uart_parser1|addr_param\(2)))) # (!\comb_54|uart_parser1|always9~0_combout\ & 
-- (\comb_54|uart1|uart_rx_1|rx_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(6),
	datab => \comb_54|uart_parser1|always9~1_combout\,
	datac => \comb_54|uart_parser1|always9~0_combout\,
	datad => \comb_54|uart_parser1|addr_param\(2),
	combout => \comb_54|uart_parser1|addr_param~8_combout\);

-- Location: LCFF_X27_Y14_N21
\comb_54|uart_parser1|addr_param[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|addr_param~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|addr_param[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|addr_param\(6));

-- Location: LCCOMB_X23_Y14_N4
\comb_54|uart_parser1|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~20_combout\ = (\comb_54|uart_parser1|int_address~2_combout\ & ((\comb_54|uart_parser1|addr_param\(6)))) # (!\comb_54|uart_parser1|int_address~2_combout\ & (\comb_54|uart_parser1|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|int_address~2_combout\,
	datac => \comb_54|uart_parser1|Add1~18_combout\,
	datad => \comb_54|uart_parser1|addr_param\(6),
	combout => \comb_54|uart_parser1|Add1~20_combout\);

-- Location: LCFF_X23_Y14_N5
\comb_54|uart_parser1|int_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Add1~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_address\(6));

-- Location: LCCOMB_X23_Y13_N18
\comb_54|uart_parser1|Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~21_combout\ = (\comb_54|uart_parser1|int_address\(7) & (!\comb_54|uart_parser1|Add1~19\)) # (!\comb_54|uart_parser1|int_address\(7) & ((\comb_54|uart_parser1|Add1~19\) # (GND)))
-- \comb_54|uart_parser1|Add1~22\ = CARRY((!\comb_54|uart_parser1|Add1~19\) # (!\comb_54|uart_parser1|int_address\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|int_address\(7),
	datad => VCC,
	cin => \comb_54|uart_parser1|Add1~19\,
	combout => \comb_54|uart_parser1|Add1~21_combout\,
	cout => \comb_54|uart_parser1|Add1~22\);

-- Location: LCCOMB_X27_Y14_N22
\comb_54|uart_parser1|addr_param~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|addr_param~5_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(3)) # ((!\comb_54|uart_parser1|addr_param[8]~0_combout\ & ((\comb_54|uart1|uart_rx_1|rx_data\(7)) # (!\comb_54|uart_parser1|always1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|addr_param[8]~0_combout\,
	datab => \comb_54|uart1|uart_rx_1|rx_data\(3),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(7),
	datad => \comb_54|uart_parser1|always1~3_combout\,
	combout => \comb_54|uart_parser1|addr_param~5_combout\);

-- Location: LCFF_X27_Y14_N23
\comb_54|uart_parser1|addr_param[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|addr_param~5_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|addr_param[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|addr_param\(3));

-- Location: LCCOMB_X27_Y14_N14
\comb_54|uart_parser1|addr_param~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|addr_param~9_combout\ = (!\comb_54|uart_parser1|always9~1_combout\ & ((\comb_54|uart1|uart_rx_1|rx_data\(7)) # ((\comb_54|uart_parser1|always9~0_combout\ & \comb_54|uart_parser1|addr_param\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|always9~0_combout\,
	datab => \comb_54|uart_parser1|always9~1_combout\,
	datac => \comb_54|uart1|uart_rx_1|rx_data\(7),
	datad => \comb_54|uart_parser1|addr_param\(3),
	combout => \comb_54|uart_parser1|addr_param~9_combout\);

-- Location: LCFF_X27_Y14_N15
\comb_54|uart_parser1|addr_param[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|addr_param~9_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|addr_param[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|addr_param\(7));

-- Location: LCCOMB_X23_Y14_N22
\comb_54|uart_parser1|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~23_combout\ = (\comb_54|uart_parser1|int_address~2_combout\ & ((\comb_54|uart_parser1|addr_param\(7)))) # (!\comb_54|uart_parser1|int_address~2_combout\ & (\comb_54|uart_parser1|Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|int_address~2_combout\,
	datac => \comb_54|uart_parser1|Add1~21_combout\,
	datad => \comb_54|uart_parser1|addr_param\(7),
	combout => \comb_54|uart_parser1|Add1~23_combout\);

-- Location: LCFF_X23_Y14_N23
\comb_54|uart_parser1|int_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Add1~23_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_address\(7));

-- Location: LCCOMB_X23_Y13_N20
\comb_54|uart_parser1|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~24_combout\ = (\comb_54|uart_parser1|int_address\(8) & (\comb_54|uart_parser1|Add1~22\ $ (GND))) # (!\comb_54|uart_parser1|int_address\(8) & (!\comb_54|uart_parser1|Add1~22\ & VCC))
-- \comb_54|uart_parser1|Add1~25\ = CARRY((\comb_54|uart_parser1|int_address\(8) & !\comb_54|uart_parser1|Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|int_address\(8),
	datad => VCC,
	cin => \comb_54|uart_parser1|Add1~22\,
	combout => \comb_54|uart_parser1|Add1~24_combout\,
	cout => \comb_54|uart_parser1|Add1~25\);

-- Location: LCCOMB_X27_Y14_N8
\comb_54|uart_parser1|addr_param~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|addr_param~6_combout\ = (!\comb_54|uart_parser1|always9~1_combout\ & ((\comb_54|uart_parser1|always9~0_combout\ & (\comb_54|uart_parser1|addr_param\(0))) # (!\comb_54|uart_parser1|always9~0_combout\ & 
-- ((\comb_54|uart1|uart_rx_1|rx_data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|always9~0_combout\,
	datab => \comb_54|uart_parser1|always9~1_combout\,
	datac => \comb_54|uart_parser1|addr_param\(0),
	datad => \comb_54|uart1|uart_rx_1|rx_data\(4),
	combout => \comb_54|uart_parser1|addr_param~6_combout\);

-- Location: LCFF_X27_Y14_N9
\comb_54|uart_parser1|addr_param[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|addr_param~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|addr_param[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|addr_param\(4));

-- Location: LCCOMB_X24_Y14_N4
\comb_54|uart_parser1|addr_param~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|addr_param~10_combout\ = (!\comb_54|uart_parser1|always9~1_combout\ & ((\comb_54|uart_parser1|always9~0_combout\ & ((\comb_54|uart_parser1|addr_param\(4)))) # (!\comb_54|uart_parser1|always9~0_combout\ & 
-- (\comb_54|uart1|uart_rx_1|rx_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(0),
	datab => \comb_54|uart_parser1|always9~0_combout\,
	datac => \comb_54|uart_parser1|addr_param\(4),
	datad => \comb_54|uart_parser1|always9~1_combout\,
	combout => \comb_54|uart_parser1|addr_param~10_combout\);

-- Location: LCCOMB_X26_Y14_N4
\comb_54|uart_parser1|addr_param[8]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|addr_param[8]~11_combout\ = (\comb_54|uart_parser1|main_sm.1001~regout\) # ((\comb_54|uart_parser1|always8~0_combout\ & ((\comb_54|uart_parser1|main_sm.0011~regout\) # (\comb_54|uart_parser1|main_sm.0100~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|main_sm.0011~regout\,
	datab => \comb_54|uart_parser1|main_sm.1001~regout\,
	datac => \comb_54|uart_parser1|always8~0_combout\,
	datad => \comb_54|uart_parser1|main_sm.0100~regout\,
	combout => \comb_54|uart_parser1|addr_param[8]~11_combout\);

-- Location: LCFF_X24_Y14_N5
\comb_54|uart_parser1|addr_param[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|addr_param~10_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|addr_param[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|addr_param\(8));

-- Location: LCCOMB_X23_Y14_N16
\comb_54|uart_parser1|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~26_combout\ = (\comb_54|uart_parser1|int_address~2_combout\ & ((\comb_54|uart_parser1|addr_param\(8)))) # (!\comb_54|uart_parser1|int_address~2_combout\ & (\comb_54|uart_parser1|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|int_address~2_combout\,
	datac => \comb_54|uart_parser1|Add1~24_combout\,
	datad => \comb_54|uart_parser1|addr_param\(8),
	combout => \comb_54|uart_parser1|Add1~26_combout\);

-- Location: LCFF_X23_Y14_N17
\comb_54|uart_parser1|int_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Add1~26_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_address\(8));

-- Location: LCCOMB_X23_Y13_N22
\comb_54|uart_parser1|Add1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~27_combout\ = \comb_54|uart_parser1|Add1~25\ $ (\comb_54|uart_parser1|int_address\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart_parser1|int_address\(9),
	cin => \comb_54|uart_parser1|Add1~25\,
	combout => \comb_54|uart_parser1|Add1~27_combout\);

-- Location: LCCOMB_X24_Y14_N22
\comb_54|uart_parser1|addr_param~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|addr_param~12_combout\ = (!\comb_54|uart_parser1|always9~1_combout\ & ((\comb_54|uart_parser1|always9~0_combout\ & (\comb_54|uart_parser1|addr_param\(5))) # (!\comb_54|uart_parser1|always9~0_combout\ & 
-- ((\comb_54|uart1|uart_rx_1|rx_data\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|addr_param\(5),
	datab => \comb_54|uart_parser1|always9~0_combout\,
	datac => \comb_54|uart1|uart_rx_1|rx_data\(1),
	datad => \comb_54|uart_parser1|always9~1_combout\,
	combout => \comb_54|uart_parser1|addr_param~12_combout\);

-- Location: LCFF_X24_Y14_N23
\comb_54|uart_parser1|addr_param[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|addr_param~12_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|addr_param[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|addr_param\(9));

-- Location: LCCOMB_X23_Y13_N0
\comb_54|uart_parser1|Add1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Add1~29_combout\ = (\comb_54|uart_parser1|int_address~2_combout\ & ((\comb_54|uart_parser1|addr_param\(9)))) # (!\comb_54|uart_parser1|int_address~2_combout\ & (\comb_54|uart_parser1|Add1~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|Add1~27_combout\,
	datac => \comb_54|uart_parser1|int_address~2_combout\,
	datad => \comb_54|uart_parser1|addr_param\(9),
	combout => \comb_54|uart_parser1|Add1~29_combout\);

-- Location: LCFF_X23_Y13_N1
\comb_54|uart_parser1|int_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|Add1~29_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_address\(9));

-- Location: LCFF_X27_Y14_N5
\comb_54|uart_parser1|data_param[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|WideOr13~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|data_param[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|data_param\(0));

-- Location: LCCOMB_X26_Y14_N30
\comb_54|uart_parser1|data_param~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|data_param~3_combout\ = (\comb_54|uart_parser1|data_param\(0) & (((!\comb_54|uart_parser1|main_sm.0001~regout\) # (!\comb_54|uart_parser1|always1~4_combout\)) # (!\comb_54|uart1|uart_rx_1|new_rx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	datab => \comb_54|uart_parser1|data_param\(0),
	datac => \comb_54|uart_parser1|always1~4_combout\,
	datad => \comb_54|uart_parser1|main_sm.0001~regout\,
	combout => \comb_54|uart_parser1|data_param~3_combout\);

-- Location: LCFF_X26_Y14_N31
\comb_54|uart_parser1|data_param[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|data_param~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|data_param[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|data_param\(4));

-- Location: LCCOMB_X25_Y14_N20
\comb_54|uart_parser1|int_wr_data[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|int_wr_data[4]~3_combout\ = (\comb_54|uart_parser1|always11~0_combout\ & ((\comb_54|uart_parser1|data_param\(4)))) # (!\comb_54|uart_parser1|always11~0_combout\ & (\comb_54|uart1|uart_rx_1|rx_data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(4),
	datab => \comb_54|uart_parser1|data_param\(4),
	datad => \comb_54|uart_parser1|always11~0_combout\,
	combout => \comb_54|uart_parser1|int_wr_data[4]~3_combout\);

-- Location: LCFF_X25_Y14_N21
\comb_54|uart_parser1|int_wr_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|int_wr_data[4]~3_combout\,
	sdata => \comb_54|uart_parser1|int_wr_data\(4),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|ALT_INV_int_write~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_wr_data\(4));

-- Location: LCCOMB_X25_Y14_N26
\comb_54|uart_parser1|int_wr_data[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|int_wr_data[2]~5_combout\ = (\comb_54|uart_parser1|always11~0_combout\ & (\comb_54|uart_parser1|data_param\(2))) # (!\comb_54|uart_parser1|always11~0_combout\ & ((\comb_54|uart1|uart_rx_1|rx_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|data_param\(2),
	datab => \comb_54|uart1|uart_rx_1|rx_data\(2),
	datad => \comb_54|uart_parser1|always11~0_combout\,
	combout => \comb_54|uart_parser1|int_wr_data[2]~5_combout\);

-- Location: LCFF_X25_Y14_N27
\comb_54|uart_parser1|int_wr_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|int_wr_data[2]~5_combout\,
	sdata => \comb_54|uart_parser1|int_wr_data\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|ALT_INV_int_write~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_wr_data\(2));

-- Location: LCCOMB_X25_Y14_N12
\comb_54|uart_parser1|int_wr_data[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|int_wr_data[0]~7_combout\ = (\comb_54|uart_parser1|always11~0_combout\ & ((\comb_54|uart_parser1|data_param\(0)))) # (!\comb_54|uart_parser1|always11~0_combout\ & (\comb_54|uart1|uart_rx_1|rx_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(0),
	datab => \comb_54|uart_parser1|data_param\(0),
	datad => \comb_54|uart_parser1|always11~0_combout\,
	combout => \comb_54|uart_parser1|int_wr_data[0]~7_combout\);

-- Location: LCFF_X25_Y14_N13
\comb_54|uart_parser1|int_wr_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|int_wr_data[0]~7_combout\,
	sdata => \comb_54|uart_parser1|int_wr_data\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|ALT_INV_int_write~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_wr_data\(0));

-- Location: LCCOMB_X40_Y14_N30
\comb~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~16_combout\ = (\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(3)) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(3),
	datad => \SW~combout\(0),
	combout => \comb~16_combout\);

-- Location: LCFF_X40_Y14_N31
\ul0|color[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~16_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(4));

-- Location: LCCOMB_X33_Y14_N26
\ul0|Mux0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~10_combout\ = (\ul0|Mux0~9_combout\ & ((\ul0|color\(6)) # ((!\ul0|index\(2))))) # (!\ul0|Mux0~9_combout\ & (((\ul0|index\(2) & \ul0|color\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|color\(6),
	datab => \ul0|Mux0~9_combout\,
	datac => \ul0|index\(2),
	datad => \ul0|color\(4),
	combout => \ul0|Mux0~10_combout\);

-- Location: LCCOMB_X34_Y14_N8
\ul0|index[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|index[3]~13_combout\ = (\ul0|index\(3) & (!\ul0|index[2]~12\)) # (!\ul0|index\(3) & ((\ul0|index[2]~12\) # (GND)))
-- \ul0|index[3]~14\ = CARRY((!\ul0|index[2]~12\) # (!\ul0|index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ul0|index\(3),
	datad => VCC,
	cin => \ul0|index[2]~12\,
	combout => \ul0|index[3]~13_combout\,
	cout => \ul0|index[3]~14\);

-- Location: LCFF_X34_Y14_N9
\ul0|index[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|index[3]~13_combout\,
	aclr => \reset~regout\,
	sclr => \ul0|ALT_INV_state.S3P~regout\,
	ena => \ul0|index[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|index\(3));

-- Location: LCCOMB_X27_Y14_N30
\comb_54|uart_parser1|WideOr10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr10~0_combout\ = (\comb_54|uart1|uart_rx_1|rx_data\(3)) # ((\comb_54|uart1|uart_rx_1|rx_data\(7)) # (!\comb_54|uart_parser1|always1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart1|uart_rx_1|rx_data\(3),
	datac => \comb_54|uart1|uart_rx_1|rx_data\(7),
	datad => \comb_54|uart_parser1|always1~3_combout\,
	combout => \comb_54|uart_parser1|WideOr10~0_combout\);

-- Location: LCFF_X27_Y14_N31
\comb_54|uart_parser1|data_param[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|WideOr10~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|data_param[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|data_param\(3));

-- Location: LCCOMB_X26_Y14_N24
\comb_54|uart_parser1|data_param~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|data_param~4_combout\ = (\comb_54|uart_parser1|data_param\(3) & (((!\comb_54|uart1|uart_rx_1|new_rx_data~regout\) # (!\comb_54|uart_parser1|always1~4_combout\)) # (!\comb_54|uart_parser1|main_sm.0001~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|main_sm.0001~regout\,
	datab => \comb_54|uart_parser1|data_param\(3),
	datac => \comb_54|uart_parser1|always1~4_combout\,
	datad => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	combout => \comb_54|uart_parser1|data_param~4_combout\);

-- Location: LCFF_X26_Y14_N25
\comb_54|uart_parser1|data_param[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|data_param~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|data_param[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|data_param\(7));

-- Location: LCCOMB_X25_Y14_N22
\comb_54|uart_parser1|int_wr_data[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|int_wr_data[7]~0_combout\ = (\comb_54|uart_parser1|always11~0_combout\ & ((\comb_54|uart_parser1|data_param\(7)))) # (!\comb_54|uart_parser1|always11~0_combout\ & (\comb_54|uart1|uart_rx_1|rx_data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(7),
	datab => \comb_54|uart_parser1|always11~0_combout\,
	datad => \comb_54|uart_parser1|data_param\(7),
	combout => \comb_54|uart_parser1|int_wr_data[7]~0_combout\);

-- Location: LCFF_X25_Y14_N23
\comb_54|uart_parser1|int_wr_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|int_wr_data[7]~0_combout\,
	sdata => \comb_54|uart_parser1|int_wr_data\(7),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|ALT_INV_int_write~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_wr_data\(7));

-- Location: LCFF_X27_Y14_N25
\comb_54|uart_parser1|data_param[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|WideOr12~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|data_param[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|data_param\(1));

-- Location: LCCOMB_X26_Y14_N8
\comb_54|uart_parser1|data_param~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|data_param~0_combout\ = (\comb_54|uart_parser1|data_param\(1) & (((!\comb_54|uart1|uart_rx_1|new_rx_data~regout\) # (!\comb_54|uart_parser1|always1~4_combout\)) # (!\comb_54|uart_parser1|main_sm.0001~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|main_sm.0001~regout\,
	datab => \comb_54|uart_parser1|data_param\(1),
	datac => \comb_54|uart_parser1|always1~4_combout\,
	datad => \comb_54|uart1|uart_rx_1|new_rx_data~regout\,
	combout => \comb_54|uart_parser1|data_param~0_combout\);

-- Location: LCFF_X26_Y14_N9
\comb_54|uart_parser1|data_param[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|data_param~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|data_param[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|data_param\(5));

-- Location: LCCOMB_X25_Y14_N24
\comb_54|uart_parser1|int_wr_data[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|int_wr_data[5]~2_combout\ = (\comb_54|uart_parser1|always11~0_combout\ & ((\comb_54|uart_parser1|data_param\(5)))) # (!\comb_54|uart_parser1|always11~0_combout\ & (\comb_54|uart1|uart_rx_1|rx_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(5),
	datab => \comb_54|uart_parser1|data_param\(5),
	datad => \comb_54|uart_parser1|always11~0_combout\,
	combout => \comb_54|uart_parser1|int_wr_data[5]~2_combout\);

-- Location: LCFF_X25_Y14_N25
\comb_54|uart_parser1|int_wr_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|int_wr_data[5]~2_combout\,
	sdata => \comb_54|uart_parser1|int_wr_data\(5),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|ALT_INV_int_write~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_wr_data\(5));

-- Location: LCCOMB_X25_Y14_N14
\comb_54|uart_parser1|int_wr_data[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|int_wr_data[3]~4_combout\ = (\comb_54|uart_parser1|always11~0_combout\ & ((\comb_54|uart_parser1|data_param\(3)))) # (!\comb_54|uart_parser1|always11~0_combout\ & (\comb_54|uart1|uart_rx_1|rx_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(3),
	datab => \comb_54|uart_parser1|always11~0_combout\,
	datad => \comb_54|uart_parser1|data_param\(3),
	combout => \comb_54|uart_parser1|int_wr_data[3]~4_combout\);

-- Location: LCFF_X25_Y14_N15
\comb_54|uart_parser1|int_wr_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|int_wr_data[3]~4_combout\,
	sdata => \comb_54|uart_parser1|int_wr_data\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|ALT_INV_int_write~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_wr_data\(3));

-- Location: LCCOMB_X25_Y14_N16
\comb_54|uart_parser1|int_wr_data[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|int_wr_data[1]~6_combout\ = (\comb_54|uart_parser1|always11~0_combout\ & ((\comb_54|uart_parser1|data_param\(1)))) # (!\comb_54|uart_parser1|always11~0_combout\ & (\comb_54|uart1|uart_rx_1|rx_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_rx_1|rx_data\(1),
	datab => \comb_54|uart_parser1|data_param\(1),
	datad => \comb_54|uart_parser1|always11~0_combout\,
	combout => \comb_54|uart_parser1|int_wr_data[1]~6_combout\);

-- Location: LCFF_X25_Y14_N17
\comb_54|uart_parser1|int_wr_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|int_wr_data[1]~6_combout\,
	sdata => \comb_54|uart_parser1|int_wr_data\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|ALT_INV_int_write~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|int_wr_data\(1));

-- Location: LCCOMB_X40_Y14_N8
\comb~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~14_combout\ = (\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(6)) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(6),
	datad => \SW~combout\(0),
	combout => \comb~14_combout\);

-- Location: LCFF_X40_Y14_N9
\ul0|color[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~14_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(1));

-- Location: LCCOMB_X40_Y14_N6
\comb~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~13_combout\ = (\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(4)) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(4),
	datad => \SW~combout\(0),
	combout => \comb~13_combout\);

-- Location: LCFF_X40_Y14_N7
\ul0|color[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~13_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(3));

-- Location: LCCOMB_X40_Y14_N18
\ul0|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~7_combout\ = (\ul0|index\(1) & (((\ul0|index\(2)) # (\ul0|color\(3))))) # (!\ul0|index\(1) & (\ul0|color\(1) & (!\ul0|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|index\(1),
	datab => \ul0|color\(1),
	datac => \ul0|index\(2),
	datad => \ul0|color\(3),
	combout => \ul0|Mux0~7_combout\);

-- Location: LCCOMB_X40_Y14_N28
\comb~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~12_combout\ = (\u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(2)) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|mem[0][7]__1|auto_generated|altsyncram1|q_a\(2),
	datad => \SW~combout\(0),
	combout => \comb~12_combout\);

-- Location: LCFF_X40_Y14_N29
\ul0|color[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~12_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(5));

-- Location: LCCOMB_X33_Y14_N0
\ul0|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~8_combout\ = (\ul0|Mux0~7_combout\ & ((\ul0|color\(7)) # ((!\ul0|index\(2))))) # (!\ul0|Mux0~7_combout\ & (((\ul0|index\(2) & \ul0|color\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|color\(7),
	datab => \ul0|Mux0~7_combout\,
	datac => \ul0|index\(2),
	datad => \ul0|color\(5),
	combout => \ul0|Mux0~8_combout\);

-- Location: LCCOMB_X33_Y14_N28
\ul0|Mux0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~11_combout\ = (\ul0|index\(0) & (((\ul0|index\(3)) # (\ul0|Mux0~8_combout\)))) # (!\ul0|index\(0) & (\ul0|Mux0~10_combout\ & (!\ul0|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|index\(0),
	datab => \ul0|Mux0~10_combout\,
	datac => \ul0|index\(3),
	datad => \ul0|Mux0~8_combout\,
	combout => \ul0|Mux0~11_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X33_Y14_N2
\comb~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~23_combout\ = (\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(0)) # (!\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(0),
	datad => \SW~combout\(1),
	combout => \comb~23_combout\);

-- Location: LCFF_X33_Y14_N3
\ul0|color[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~23_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(15));

-- Location: LCCOMB_X35_Y14_N16
\ul0|num[0]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|num[0]~_wirecell_combout\ = !\ul0|num\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ul0|num\(0),
	combout => \ul0|num[0]~_wirecell_combout\);

-- Location: LCCOMB_X39_Y15_N10
\u10|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add1~1_cout\ = CARRY((\ul0|num\(0) & \u10|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|num\(0),
	datab => \u10|Add0~0_combout\,
	datad => VCC,
	cout => \u10|Add1~1_cout\);

-- Location: LCCOMB_X39_Y15_N12
\u10|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add1~2_combout\ = (\u10|Add0~2_combout\ & (!\u10|Add1~1_cout\)) # (!\u10|Add0~2_combout\ & ((\u10|Add1~1_cout\) # (GND)))
-- \u10|Add1~3\ = CARRY((!\u10|Add1~1_cout\) # (!\u10|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Add0~2_combout\,
	datad => VCC,
	cin => \u10|Add1~1_cout\,
	combout => \u10|Add1~2_combout\,
	cout => \u10|Add1~3\);

-- Location: LCCOMB_X39_Y15_N14
\u10|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add1~4_combout\ = (\u10|Add0~4_combout\ & (\u10|Add1~3\ $ (GND))) # (!\u10|Add0~4_combout\ & (!\u10|Add1~3\ & VCC))
-- \u10|Add1~5\ = CARRY((\u10|Add0~4_combout\ & !\u10|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u10|Add0~4_combout\,
	datad => VCC,
	cin => \u10|Add1~3\,
	combout => \u10|Add1~4_combout\,
	cout => \u10|Add1~5\);

-- Location: LCCOMB_X39_Y15_N16
\u10|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add1~6_combout\ = (\u10|Add0~6_combout\ & (!\u10|Add1~5\)) # (!\u10|Add0~6_combout\ & ((\u10|Add1~5\) # (GND)))
-- \u10|Add1~7\ = CARRY((!\u10|Add1~5\) # (!\u10|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Add0~6_combout\,
	datad => VCC,
	cin => \u10|Add1~5\,
	combout => \u10|Add1~6_combout\,
	cout => \u10|Add1~7\);

-- Location: LCCOMB_X39_Y15_N18
\u10|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add1~8_combout\ = (\u10|Add0~8_combout\ & (\u10|Add1~7\ $ (GND))) # (!\u10|Add0~8_combout\ & (!\u10|Add1~7\ & VCC))
-- \u10|Add1~9\ = CARRY((\u10|Add0~8_combout\ & !\u10|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Add0~8_combout\,
	datad => VCC,
	cin => \u10|Add1~7\,
	combout => \u10|Add1~8_combout\,
	cout => \u10|Add1~9\);

-- Location: LCCOMB_X39_Y15_N20
\u10|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add1~10_combout\ = (\u10|Add0~10_combout\ & (!\u10|Add1~9\)) # (!\u10|Add0~10_combout\ & ((\u10|Add1~9\) # (GND)))
-- \u10|Add1~11\ = CARRY((!\u10|Add1~9\) # (!\u10|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u10|Add0~10_combout\,
	datad => VCC,
	cin => \u10|Add1~9\,
	combout => \u10|Add1~10_combout\,
	cout => \u10|Add1~11\);

-- Location: LCCOMB_X39_Y15_N22
\u10|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add1~12_combout\ = (\u10|Add0~12_combout\ & (\u10|Add1~11\ $ (GND))) # (!\u10|Add0~12_combout\ & (!\u10|Add1~11\ & VCC))
-- \u10|Add1~13\ = CARRY((\u10|Add0~12_combout\ & !\u10|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u10|Add0~12_combout\,
	datad => VCC,
	cin => \u10|Add1~11\,
	combout => \u10|Add1~12_combout\,
	cout => \u10|Add1~13\);

-- Location: LCCOMB_X39_Y15_N24
\u10|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add1~14_combout\ = (\u10|Add0~14_combout\ & (!\u10|Add1~13\)) # (!\u10|Add0~14_combout\ & ((\u10|Add1~13\) # (GND)))
-- \u10|Add1~15\ = CARRY((!\u10|Add1~13\) # (!\u10|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u10|Add0~14_combout\,
	datad => VCC,
	cin => \u10|Add1~13\,
	combout => \u10|Add1~14_combout\,
	cout => \u10|Add1~15\);

-- Location: LCCOMB_X39_Y15_N26
\u10|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add1~16_combout\ = \u10|Add1~15\ $ (!\u10|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u10|Add0~16_combout\,
	cin => \u10|Add1~15\,
	combout => \u10|Add1~16_combout\);

-- Location: LCCOMB_X34_Y14_N30
\comb~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~22_combout\ = (\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(6)) # (!\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(6),
	datad => \SW~combout\(1),
	combout => \comb~22_combout\);

-- Location: LCFF_X34_Y14_N31
\ul0|color[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~22_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(9));

-- Location: LCCOMB_X34_Y14_N20
\comb~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~21_combout\ = (\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(2)) # (!\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(2),
	datad => \SW~combout\(1),
	combout => \comb~21_combout\);

-- Location: LCFF_X34_Y14_N21
\ul0|color[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~21_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(13));

-- Location: LCCOMB_X33_Y14_N16
\ul0|Mux0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~12_combout\ = (\ul0|index\(1) & (((\ul0|index\(2))))) # (!\ul0|index\(1) & ((\ul0|index\(2) & ((\ul0|color\(13)))) # (!\ul0|index\(2) & (\ul0|color\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|index\(1),
	datab => \ul0|color\(9),
	datac => \ul0|index\(2),
	datad => \ul0|color\(13),
	combout => \ul0|Mux0~12_combout\);

-- Location: LCCOMB_X33_Y14_N4
\ul0|Mux0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~13_combout\ = (\ul0|Mux0~12_combout\ & (((\ul0|color\(15)) # (!\ul0|index\(1))))) # (!\ul0|Mux0~12_combout\ & (\ul0|color\(11) & ((\ul0|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|color\(11),
	datab => \ul0|color\(15),
	datac => \ul0|Mux0~12_combout\,
	datad => \ul0|index\(1),
	combout => \ul0|Mux0~13_combout\);

-- Location: LCCOMB_X33_Y14_N20
\comb~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = (\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(1)) # (!\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(1),
	datad => \SW~combout\(1),
	combout => \comb~11_combout\);

-- Location: LCFF_X33_Y14_N21
\ul0|color[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~11_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(14));

-- Location: LCCOMB_X33_Y14_N12
\comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (\u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(3)) # (!\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|mem[0][7]__2|auto_generated|altsyncram1|q_a\(3),
	datad => \SW~combout\(1),
	combout => \comb~8_combout\);

-- Location: LCFF_X33_Y14_N13
\ul0|color[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~8_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(12));

-- Location: LCCOMB_X33_Y14_N22
\ul0|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~6_combout\ = (\ul0|Mux0~5_combout\ & (((\ul0|color\(14))) # (!\ul0|index\(2)))) # (!\ul0|Mux0~5_combout\ & (\ul0|index\(2) & ((\ul0|color\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|Mux0~5_combout\,
	datab => \ul0|index\(2),
	datac => \ul0|color\(14),
	datad => \ul0|color\(12),
	combout => \ul0|Mux0~6_combout\);

-- Location: LCCOMB_X33_Y14_N30
\ul0|Mux0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~14_combout\ = (\ul0|index\(3) & ((\ul0|Mux0~11_combout\ & (\ul0|Mux0~13_combout\)) # (!\ul0|Mux0~11_combout\ & ((\ul0|Mux0~6_combout\))))) # (!\ul0|index\(3) & (\ul0|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|index\(3),
	datab => \ul0|Mux0~11_combout\,
	datac => \ul0|Mux0~13_combout\,
	datad => \ul0|Mux0~6_combout\,
	combout => \ul0|Mux0~14_combout\);

-- Location: LCFF_X34_Y14_N11
\ul0|index[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|index[4]~16_combout\,
	aclr => \reset~regout\,
	sclr => \ul0|ALT_INV_state.S3P~regout\,
	ena => \ul0|index[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|index\(4));

-- Location: LCCOMB_X40_Y15_N14
\u10|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add2~0_combout\ = \u10|Add0~0_combout\ $ (VCC)
-- \u10|Add2~1\ = CARRY(\u10|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Add0~0_combout\,
	datad => VCC,
	combout => \u10|Add2~0_combout\,
	cout => \u10|Add2~1\);

-- Location: LCCOMB_X40_Y15_N16
\u10|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add2~2_combout\ = (\u10|Add0~2_combout\ & (!\u10|Add2~1\)) # (!\u10|Add0~2_combout\ & ((\u10|Add2~1\) # (GND)))
-- \u10|Add2~3\ = CARRY((!\u10|Add2~1\) # (!\u10|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Add0~2_combout\,
	datad => VCC,
	cin => \u10|Add2~1\,
	combout => \u10|Add2~2_combout\,
	cout => \u10|Add2~3\);

-- Location: LCCOMB_X40_Y15_N18
\u10|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add2~4_combout\ = (\u10|Add0~4_combout\ & (\u10|Add2~3\ $ (GND))) # (!\u10|Add0~4_combout\ & (!\u10|Add2~3\ & VCC))
-- \u10|Add2~5\ = CARRY((\u10|Add0~4_combout\ & !\u10|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Add0~4_combout\,
	datad => VCC,
	cin => \u10|Add2~3\,
	combout => \u10|Add2~4_combout\,
	cout => \u10|Add2~5\);

-- Location: LCCOMB_X40_Y15_N20
\u10|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add2~6_combout\ = (\u10|Add0~6_combout\ & (!\u10|Add2~5\)) # (!\u10|Add0~6_combout\ & ((\u10|Add2~5\) # (GND)))
-- \u10|Add2~7\ = CARRY((!\u10|Add2~5\) # (!\u10|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Add0~6_combout\,
	datad => VCC,
	cin => \u10|Add2~5\,
	combout => \u10|Add2~6_combout\,
	cout => \u10|Add2~7\);

-- Location: LCCOMB_X40_Y15_N22
\u10|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add2~8_combout\ = (\u10|Add0~8_combout\ & (\u10|Add2~7\ $ (GND))) # (!\u10|Add0~8_combout\ & (!\u10|Add2~7\ & VCC))
-- \u10|Add2~9\ = CARRY((\u10|Add0~8_combout\ & !\u10|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Add0~8_combout\,
	datad => VCC,
	cin => \u10|Add2~7\,
	combout => \u10|Add2~8_combout\,
	cout => \u10|Add2~9\);

-- Location: LCCOMB_X40_Y15_N24
\u10|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add2~10_combout\ = (\u10|Add0~10_combout\ & (!\u10|Add2~9\)) # (!\u10|Add0~10_combout\ & ((\u10|Add2~9\) # (GND)))
-- \u10|Add2~11\ = CARRY((!\u10|Add2~9\) # (!\u10|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u10|Add0~10_combout\,
	datad => VCC,
	cin => \u10|Add2~9\,
	combout => \u10|Add2~10_combout\,
	cout => \u10|Add2~11\);

-- Location: LCCOMB_X40_Y15_N26
\u10|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add2~12_combout\ = (\u10|Add0~12_combout\ & (\u10|Add2~11\ $ (GND))) # (!\u10|Add0~12_combout\ & (!\u10|Add2~11\ & VCC))
-- \u10|Add2~13\ = CARRY((\u10|Add0~12_combout\ & !\u10|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u10|Add0~12_combout\,
	datad => VCC,
	cin => \u10|Add2~11\,
	combout => \u10|Add2~12_combout\,
	cout => \u10|Add2~13\);

-- Location: LCCOMB_X40_Y15_N28
\u10|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add2~14_combout\ = (\u10|Add0~14_combout\ & (!\u10|Add2~13\)) # (!\u10|Add0~14_combout\ & ((\u10|Add2~13\) # (GND)))
-- \u10|Add2~15\ = CARRY((!\u10|Add2~13\) # (!\u10|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Add0~14_combout\,
	datad => VCC,
	cin => \u10|Add2~13\,
	combout => \u10|Add2~14_combout\,
	cout => \u10|Add2~15\);

-- Location: LCCOMB_X40_Y15_N30
\u10|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Add2~16_combout\ = \u10|Add0~16_combout\ $ (!\u10|Add2~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Add0~16_combout\,
	cin => \u10|Add2~15\,
	combout => \u10|Add2~16_combout\);

-- Location: LCCOMB_X40_Y14_N2
\comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(1)) # (!\SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datac => \u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(1),
	combout => \comb~1_combout\);

-- Location: LCFF_X40_Y14_N3
\ul0|color[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~1_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(22));

-- Location: LCCOMB_X40_Y14_N22
\ul0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~0_combout\ = (\ul0|index\(0) & (((\ul0|index\(1))))) # (!\ul0|index\(0) & ((\ul0|index\(1) & ((\ul0|color\(22)))) # (!\ul0|index\(1) & (\ul0|color\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|color\(20),
	datab => \ul0|index\(0),
	datac => \ul0|index\(1),
	datad => \ul0|color\(22),
	combout => \ul0|Mux0~0_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCCOMB_X40_Y14_N0
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(2)) # (!\SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|mem[0][7]__3|auto_generated|altsyncram1|q_a\(2),
	datac => \SW~combout\(2),
	combout => \comb~0_combout\);

-- Location: LCFF_X40_Y14_N1
\ul0|color[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb~0_combout\,
	ena => \ul0|color[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|color\(21));

-- Location: LCCOMB_X40_Y14_N10
\ul0|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~1_combout\ = (\ul0|Mux0~0_combout\ & ((\ul0|color\(23)) # ((!\ul0|index\(0))))) # (!\ul0|Mux0~0_combout\ & (((\ul0|index\(0) & \ul0|color\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|color\(23),
	datab => \ul0|Mux0~0_combout\,
	datac => \ul0|index\(0),
	datad => \ul0|color\(21),
	combout => \ul0|Mux0~1_combout\);

-- Location: LCCOMB_X33_Y14_N18
\ul0|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~4_combout\ = (!\ul0|index\(3) & ((\ul0|index\(2) & ((\ul0|Mux0~1_combout\))) # (!\ul0|index\(2) & (\ul0|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|Mux0~3_combout\,
	datab => \ul0|index\(2),
	datac => \ul0|index\(3),
	datad => \ul0|Mux0~1_combout\,
	combout => \ul0|Mux0~4_combout\);

-- Location: LCCOMB_X33_Y14_N8
\ul0|Mux0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|Mux0~15_combout\ = (\ul0|index\(4) & ((\ul0|Mux0~4_combout\))) # (!\ul0|index\(4) & (\ul0|Mux0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ul0|Mux0~14_combout\,
	datac => \ul0|index\(4),
	datad => \ul0|Mux0~4_combout\,
	combout => \ul0|Mux0~15_combout\);

-- Location: LCFF_X33_Y14_N9
\ul0|colorBit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ul0|Mux0~15_combout\,
	ena => \ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ul0|colorBit~regout\);

-- Location: LCCOMB_X38_Y14_N22
\ul0|o~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|o~3_combout\ = (\ul0|o~2_combout\ & ((\ul0|cycle\(6)) # ((!\ul0|colorBit~regout\ & \ul0|cycle\(5))))) # (!\ul0|o~2_combout\ & (\ul0|cycle\(6) & ((\ul0|cycle\(5)) # (!\ul0|colorBit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ul0|o~2_combout\,
	datab => \ul0|cycle\(6),
	datac => \ul0|colorBit~regout\,
	datad => \ul0|cycle\(5),
	combout => \ul0|o~3_combout\);

-- Location: LCCOMB_X38_Y14_N0
\ul0|o~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ul0|o~4_combout\ = (!\ul0|o~3_combout\ & (\ul0|state.S2~regout\ & \ul0|o~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ul0|o~3_combout\,
	datac => \ul0|state.S2~regout\,
	datad => \ul0|o~0_combout\,
	combout => \ul0|o~4_combout\);

-- Location: LCFF_X22_Y14_N29
\u10|mem_rtl_0_bypass[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_address\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(7));

-- Location: LCFF_X22_Y14_N27
\u10|mem_rtl_0_bypass[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_address\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(5));

-- Location: LCCOMB_X22_Y14_N28
\u10|Mux24~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Mux24~10_combout\ = (\comb_54|uart_parser1|int_address\(3) & ((\comb_54|uart_parser1|int_address\(2) $ (\u10|mem_rtl_0_bypass\(5))) # (!\u10|mem_rtl_0_bypass\(7)))) # (!\comb_54|uart_parser1|int_address\(3) & ((\u10|mem_rtl_0_bypass\(7)) # 
-- (\comb_54|uart_parser1|int_address\(2) $ (\u10|mem_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_address\(3),
	datab => \comb_54|uart_parser1|int_address\(2),
	datac => \u10|mem_rtl_0_bypass\(7),
	datad => \u10|mem_rtl_0_bypass\(5),
	combout => \u10|Mux24~10_combout\);

-- Location: LCCOMB_X22_Y14_N2
\u10|mem_rtl_0_bypass[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|mem_rtl_0_bypass[13]~feeder_combout\ = \comb_54|uart_parser1|int_address\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart_parser1|int_address\(6),
	combout => \u10|mem_rtl_0_bypass[13]~feeder_combout\);

-- Location: LCFF_X22_Y14_N3
\u10|mem_rtl_0_bypass[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \u10|mem_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(13));

-- Location: LCFF_X22_Y14_N13
\u10|mem_rtl_0_bypass[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_address\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(15));

-- Location: LCCOMB_X22_Y14_N12
\u10|Mux24~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Mux24~12_combout\ = (\comb_54|uart_parser1|int_address\(7) & ((\u10|mem_rtl_0_bypass\(13) $ (\comb_54|uart_parser1|int_address\(6))) # (!\u10|mem_rtl_0_bypass\(15)))) # (!\comb_54|uart_parser1|int_address\(7) & ((\u10|mem_rtl_0_bypass\(15)) # 
-- (\u10|mem_rtl_0_bypass\(13) $ (\comb_54|uart_parser1|int_address\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_address\(7),
	datab => \u10|mem_rtl_0_bypass\(13),
	datac => \u10|mem_rtl_0_bypass\(15),
	datad => \comb_54|uart_parser1|int_address\(6),
	combout => \u10|Mux24~12_combout\);

-- Location: LCFF_X22_Y14_N25
\u10|mem_rtl_0_bypass[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_address\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(11));

-- Location: LCFF_X22_Y14_N23
\u10|mem_rtl_0_bypass[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_address\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(9));

-- Location: LCCOMB_X22_Y14_N24
\u10|Mux24~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Mux24~11_combout\ = (\comb_54|uart_parser1|int_address\(5) & ((\comb_54|uart_parser1|int_address\(4) $ (\u10|mem_rtl_0_bypass\(9))) # (!\u10|mem_rtl_0_bypass\(11)))) # (!\comb_54|uart_parser1|int_address\(5) & ((\u10|mem_rtl_0_bypass\(11)) # 
-- (\comb_54|uart_parser1|int_address\(4) $ (\u10|mem_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_address\(5),
	datab => \comb_54|uart_parser1|int_address\(4),
	datac => \u10|mem_rtl_0_bypass\(11),
	datad => \u10|mem_rtl_0_bypass\(9),
	combout => \u10|Mux24~11_combout\);

-- Location: LCCOMB_X21_Y14_N26
\u10|Mux24~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Mux24~13_combout\ = (\u10|Mux24~9_combout\) # ((\u10|Mux24~10_combout\) # ((\u10|Mux24~12_combout\) # (\u10|Mux24~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Mux24~9_combout\,
	datab => \u10|Mux24~10_combout\,
	datac => \u10|Mux24~12_combout\,
	datad => \u10|Mux24~11_combout\,
	combout => \u10|Mux24~13_combout\);

-- Location: LCFF_X21_Y14_N17
\u10|mem_rtl_0_bypass[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_write~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(0));

-- Location: LCFF_X21_Y14_N23
\u10|mem_rtl_0_bypass[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_address\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(19));

-- Location: LCFF_X21_Y14_N13
\u10|mem_rtl_0_bypass[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_address\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(17));

-- Location: LCCOMB_X21_Y14_N22
\u10|Mux24~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Mux24~14_combout\ = (\comb_54|uart_parser1|int_address\(9) & ((\comb_54|uart_parser1|int_address\(8) $ (\u10|mem_rtl_0_bypass\(17))) # (!\u10|mem_rtl_0_bypass\(19)))) # (!\comb_54|uart_parser1|int_address\(9) & ((\u10|mem_rtl_0_bypass\(19)) # 
-- (\comb_54|uart_parser1|int_address\(8) $ (\u10|mem_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_address\(9),
	datab => \comb_54|uart_parser1|int_address\(8),
	datac => \u10|mem_rtl_0_bypass\(19),
	datad => \u10|mem_rtl_0_bypass\(17),
	combout => \u10|Mux24~14_combout\);

-- Location: LCCOMB_X21_Y14_N16
\u10|Mux24~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|Mux24~15_combout\ = (\u10|Mux24~14_combout\) # (!\u10|mem_rtl_0_bypass\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|mem_rtl_0_bypass\(0),
	datad => \u10|Mux24~14_combout\,
	combout => \u10|Mux24~15_combout\);

-- Location: LCCOMB_X21_Y14_N18
\u10|b_dout[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout[7]~0_combout\ = (\comb_54|uart_parser1|int_write~regout\) # ((\u10|Mux24~0_regout\ & ((\u10|Mux24~13_combout\) # (\u10|Mux24~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Mux24~0_regout\,
	datab => \u10|Mux24~13_combout\,
	datac => \comb_54|uart_parser1|int_write~regout\,
	datad => \u10|Mux24~15_combout\,
	combout => \u10|b_dout[7]~0_combout\);

-- Location: LCCOMB_X21_Y14_N0
\u10|b_dout~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~13_combout\ = (\u10|b_dout~12_combout\ & (((\u10|mem_rtl_0|auto_generated|ram_block1a1\)) # (!\u10|b_dout[7]~0_combout\))) # (!\u10|b_dout~12_combout\ & (\u10|b_dout[7]~0_combout\ & ((\comb_54|uart_parser1|int_wr_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|b_dout~12_combout\,
	datab => \u10|b_dout[7]~0_combout\,
	datac => \u10|mem_rtl_0|auto_generated|ram_block1a1\,
	datad => \comb_54|uart_parser1|int_wr_data\(6),
	combout => \u10|b_dout~13_combout\);

-- Location: LCFF_X21_Y14_N1
\u10|b_dout[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \u10|b_dout~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|b_dout\(6));

-- Location: LCFF_X23_Y15_N19
\comb_54|uart_parser1|read_data_s[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \u10|b_dout\(6),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart_parser1|read_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|read_data_s\(6));

-- Location: LCCOMB_X23_Y15_N18
\comb_54|uart_parser1|tx_nibble[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|tx_nibble[2]~2_combout\ = (\comb_54|uart_parser1|tx_sm.001~regout\ & (\comb_54|uart_parser1|read_data_s\(2))) # (!\comb_54|uart_parser1|tx_sm.001~regout\ & ((\comb_54|uart_parser1|read_data_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|read_data_s\(2),
	datac => \comb_54|uart_parser1|read_data_s\(6),
	datad => \comb_54|uart_parser1|tx_sm.001~regout\,
	combout => \comb_54|uart_parser1|tx_nibble[2]~2_combout\);

-- Location: LCFF_X21_Y14_N3
\u10|mem_rtl_0_bypass[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_wr_data\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(25));

-- Location: LCCOMB_X21_Y14_N28
\u10|b_dout[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout[7]~1_combout\ = (!\comb_54|uart_parser1|int_write~regout\ & ((\u10|Mux24~13_combout\) # ((\u10|Mux24~14_combout\) # (!\u10|mem_rtl_0_bypass\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_write~regout\,
	datab => \u10|Mux24~13_combout\,
	datac => \u10|mem_rtl_0_bypass\(0),
	datad => \u10|Mux24~14_combout\,
	combout => \u10|b_dout[7]~1_combout\);

-- Location: LCCOMB_X21_Y14_N2
\u10|b_dout~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~14_combout\ = (\u10|b_dout[7]~0_combout\ & ((\comb_54|uart_parser1|int_wr_data\(3)) # ((\u10|b_dout[7]~1_combout\)))) # (!\u10|b_dout[7]~0_combout\ & (((\u10|mem_rtl_0_bypass\(25) & !\u10|b_dout[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_wr_data\(3),
	datab => \u10|b_dout[7]~0_combout\,
	datac => \u10|mem_rtl_0_bypass\(25),
	datad => \u10|b_dout[7]~1_combout\,
	combout => \u10|b_dout~14_combout\);

-- Location: LCCOMB_X21_Y14_N10
\u10|b_dout~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~15_combout\ = (\u10|b_dout~14_combout\ & (((\u10|mem_rtl_0|auto_generated|ram_block1a4\) # (!\u10|b_dout[7]~1_combout\)))) # (!\u10|b_dout~14_combout\ & (\u10|Mux24~5_regout\ & ((\u10|b_dout[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Mux24~5_regout\,
	datab => \u10|b_dout~14_combout\,
	datac => \u10|mem_rtl_0|auto_generated|ram_block1a4\,
	datad => \u10|b_dout[7]~1_combout\,
	combout => \u10|b_dout~15_combout\);

-- Location: LCFF_X21_Y14_N11
\u10|b_dout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \u10|b_dout~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|b_dout\(3));

-- Location: LCCOMB_X22_Y15_N28
\comb_54|uart_parser1|read_data_s[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|read_data_s[3]~feeder_combout\ = \u10|b_dout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|b_dout\(3),
	combout => \comb_54|uart_parser1|read_data_s[3]~feeder_combout\);

-- Location: LCFF_X22_Y15_N29
\comb_54|uart_parser1|read_data_s[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|read_data_s[3]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart_parser1|read_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|read_data_s\(3));

-- Location: LCFF_X21_Y14_N15
\u10|mem_rtl_0_bypass[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_wr_data\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(21));

-- Location: LCCOMB_X21_Y14_N14
\u10|b_dout~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~16_combout\ = (\u10|b_dout[7]~0_combout\ & (((\u10|b_dout[7]~1_combout\)))) # (!\u10|b_dout[7]~0_combout\ & ((\u10|b_dout[7]~1_combout\ & (\u10|Mux24~1_regout\)) # (!\u10|b_dout[7]~1_combout\ & ((\u10|mem_rtl_0_bypass\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Mux24~1_regout\,
	datab => \u10|b_dout[7]~0_combout\,
	datac => \u10|mem_rtl_0_bypass\(21),
	datad => \u10|b_dout[7]~1_combout\,
	combout => \u10|b_dout~16_combout\);

-- Location: LCCOMB_X21_Y14_N4
\u10|b_dout~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~17_combout\ = (\u10|b_dout~16_combout\ & ((\u10|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\) # ((!\u10|b_dout[7]~0_combout\)))) # (!\u10|b_dout~16_combout\ & (((\comb_54|uart_parser1|int_wr_data\(7) & \u10|b_dout[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \u10|b_dout~16_combout\,
	datac => \comb_54|uart_parser1|int_wr_data\(7),
	datad => \u10|b_dout[7]~0_combout\,
	combout => \u10|b_dout~17_combout\);

-- Location: LCFF_X21_Y14_N5
\u10|b_dout[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \u10|b_dout~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|b_dout\(7));

-- Location: LCFF_X23_Y15_N13
\comb_54|uart_parser1|read_data_s[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \u10|b_dout\(7),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart_parser1|read_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|read_data_s\(7));

-- Location: LCCOMB_X23_Y15_N12
\comb_54|uart_parser1|tx_nibble[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|tx_nibble[3]~3_combout\ = (\comb_54|uart_parser1|tx_sm.001~regout\ & (\comb_54|uart_parser1|read_data_s\(3))) # (!\comb_54|uart_parser1|tx_sm.001~regout\ & ((\comb_54|uart_parser1|read_data_s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|read_data_s\(3),
	datac => \comb_54|uart_parser1|read_data_s\(7),
	datad => \comb_54|uart_parser1|tx_sm.001~regout\,
	combout => \comb_54|uart_parser1|tx_nibble[3]~3_combout\);

-- Location: LCFF_X20_Y14_N9
\u10|mem_rtl_0_bypass[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_wr_data\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(23));

-- Location: LCCOMB_X20_Y14_N8
\u10|b_dout~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~8_combout\ = (\u10|b_dout[7]~0_combout\ & (((\u10|b_dout[7]~1_combout\)))) # (!\u10|b_dout[7]~0_combout\ & ((\u10|b_dout[7]~1_combout\ & (\u10|Mux24~3_regout\)) # (!\u10|b_dout[7]~1_combout\ & ((\u10|mem_rtl_0_bypass\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Mux24~3_regout\,
	datab => \u10|b_dout[7]~0_combout\,
	datac => \u10|mem_rtl_0_bypass\(23),
	datad => \u10|b_dout[7]~1_combout\,
	combout => \u10|b_dout~8_combout\);

-- Location: LCCOMB_X20_Y14_N22
\u10|b_dout~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~9_combout\ = (\u10|b_dout~8_combout\ & (((\u10|mem_rtl_0|auto_generated|ram_block1a2~portbdataout\) # (!\u10|b_dout[7]~0_combout\)))) # (!\u10|b_dout~8_combout\ & (\comb_54|uart_parser1|int_wr_data\(5) & ((\u10|b_dout[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|int_wr_data\(5),
	datab => \u10|b_dout~8_combout\,
	datac => \u10|mem_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datad => \u10|b_dout[7]~0_combout\,
	combout => \u10|b_dout~9_combout\);

-- Location: LCFF_X20_Y14_N23
\u10|b_dout[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \u10|b_dout~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|b_dout\(5));

-- Location: LCFF_X23_Y15_N23
\comb_54|uart_parser1|read_data_s[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \u10|b_dout\(5),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart_parser1|read_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|read_data_s\(5));

-- Location: LCCOMB_X23_Y15_N22
\comb_54|uart_parser1|tx_nibble[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|tx_nibble[1]~1_combout\ = (\comb_54|uart_parser1|tx_sm.001~regout\ & (\comb_54|uart_parser1|read_data_s\(1))) # (!\comb_54|uart_parser1|tx_sm.001~regout\ & ((\comb_54|uart_parser1|read_data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|read_data_s\(1),
	datac => \comb_54|uart_parser1|read_data_s\(5),
	datad => \comb_54|uart_parser1|tx_sm.001~regout\,
	combout => \comb_54|uart_parser1|tx_nibble[1]~1_combout\);

-- Location: LCCOMB_X25_Y15_N20
\comb_54|uart_parser1|WideOr17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|WideOr17~0_combout\ = \comb_54|uart_parser1|tx_nibble[0]~0_combout\ $ (((\comb_54|uart_parser1|tx_nibble[3]~3_combout\ & ((\comb_54|uart_parser1|tx_nibble[2]~2_combout\) # (\comb_54|uart_parser1|tx_nibble[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|tx_nibble[0]~0_combout\,
	datab => \comb_54|uart_parser1|tx_nibble[2]~2_combout\,
	datac => \comb_54|uart_parser1|tx_nibble[3]~3_combout\,
	datad => \comb_54|uart_parser1|tx_nibble[1]~1_combout\,
	combout => \comb_54|uart_parser1|WideOr17~0_combout\);

-- Location: LCFF_X20_Y14_N29
\u10|mem_rtl_0_bypass[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \comb_54|uart_parser1|int_wr_data\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|mem_rtl_0_bypass\(28));

-- Location: LCCOMB_X20_Y14_N28
\u10|b_dout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~2_combout\ = (\u10|b_dout[7]~0_combout\ & (((\u10|b_dout[7]~1_combout\)))) # (!\u10|b_dout[7]~0_combout\ & ((\u10|b_dout[7]~1_combout\ & (\u10|Mux24~8_regout\)) # (!\u10|b_dout[7]~1_combout\ & ((\u10|mem_rtl_0_bypass\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Mux24~8_regout\,
	datab => \u10|b_dout[7]~0_combout\,
	datac => \u10|mem_rtl_0_bypass\(28),
	datad => \u10|b_dout[7]~1_combout\,
	combout => \u10|b_dout~2_combout\);

-- Location: LCCOMB_X20_Y14_N16
\u10|b_dout~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|b_dout~3_combout\ = (\u10|b_dout~2_combout\ & ((\u10|mem_rtl_0|auto_generated|ram_block1a7\) # ((!\u10|b_dout[7]~0_combout\)))) # (!\u10|b_dout~2_combout\ & (((\comb_54|uart_parser1|int_wr_data\(0) & \u10|b_dout[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|mem_rtl_0|auto_generated|ram_block1a7\,
	datab => \u10|b_dout~2_combout\,
	datac => \comb_54|uart_parser1|int_wr_data\(0),
	datad => \u10|b_dout[7]~0_combout\,
	combout => \u10|b_dout~3_combout\);

-- Location: LCFF_X20_Y14_N17
\u10|b_dout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \u10|b_dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u10|b_dout\(0));

-- Location: LCFF_X23_Y15_N3
\comb_54|uart_parser1|read_data_s[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \u10|b_dout\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \comb_54|uart_parser1|read_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|read_data_s\(0));

-- Location: LCCOMB_X25_Y15_N6
\comb_54|uart_parser1|tx_data[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|tx_data[0]~1_combout\ = (\comb_54|uart_parser1|tx_sm.101~regout\) # ((!\comb_54|uart_parser1|tx_sm.000~regout\ & !\comb_54|uart_parser1|read_done_s~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_54|uart_parser1|tx_sm.000~regout\,
	datac => \comb_54|uart_parser1|tx_sm.101~regout\,
	datad => \comb_54|uart_parser1|read_done_s~regout\,
	combout => \comb_54|uart_parser1|tx_data[0]~1_combout\);

-- Location: LCCOMB_X23_Y15_N2
\comb_54|uart_parser1|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|Selector18~0_combout\ = (\comb_54|uart_parser1|tx_data[0]~0_combout\ & (((\comb_54|uart_parser1|read_data_s\(0))))) # (!\comb_54|uart_parser1|tx_data[0]~0_combout\ & (\comb_54|uart_parser1|WideOr17~0_combout\ & 
-- ((!\comb_54|uart_parser1|tx_data[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart_parser1|tx_data[0]~0_combout\,
	datab => \comb_54|uart_parser1|WideOr17~0_combout\,
	datac => \comb_54|uart_parser1|read_data_s\(0),
	datad => \comb_54|uart_parser1|tx_data[0]~1_combout\,
	combout => \comb_54|uart_parser1|Selector18~0_combout\);

-- Location: LCCOMB_X24_Y15_N16
\comb_54|uart_parser1|tx_data[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart_parser1|tx_data[0]~feeder_combout\ = \comb_54|uart_parser1|Selector18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_54|uart_parser1|Selector18~0_combout\,
	combout => \comb_54|uart_parser1|tx_data[0]~feeder_combout\);

-- Location: LCFF_X24_Y15_N17
\comb_54|uart_parser1|tx_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart_parser1|tx_data[0]~feeder_combout\,
	sdata => VCC,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_54|uart_parser1|tx_sm.100~regout\,
	ena => \comb_54|uart_parser1|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart_parser1|tx_data\(0));

-- Location: LCCOMB_X26_Y15_N4
\comb_54|uart1|uart_tx_1|data_buf~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|data_buf~3_combout\ = (\comb_54|uart1|uart_tx_1|tx_busy~regout\ & (\comb_54|uart1|uart_tx_1|data_buf\(2))) # (!\comb_54|uart1|uart_tx_1|tx_busy~regout\ & ((\comb_54|uart_parser1|tx_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|data_buf\(2),
	datab => \comb_54|uart_parser1|tx_data\(0),
	datad => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	combout => \comb_54|uart1|uart_tx_1|data_buf~3_combout\);

-- Location: LCFF_X26_Y15_N5
\comb_54|uart1|uart_tx_1|data_buf[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|data_buf~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_54|uart1|uart_tx_1|data_buf~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|data_buf\(1));

-- Location: LCCOMB_X26_Y15_N18
\comb_54|uart1|uart_tx_1|data_buf~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|data_buf~2_combout\ = (\comb_54|uart1|uart_tx_1|data_buf~11_combout\ & (\comb_54|uart1|uart_tx_1|data_buf\(1) & ((\comb_54|uart1|uart_tx_1|always2~4_combout\)))) # (!\comb_54|uart1|uart_tx_1|data_buf~11_combout\ & 
-- ((\comb_54|uart1|uart_tx_1|data_buf\(0)) # ((\comb_54|uart1|uart_tx_1|data_buf\(1) & \comb_54|uart1|uart_tx_1|always2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_54|uart1|uart_tx_1|data_buf~11_combout\,
	datab => \comb_54|uart1|uart_tx_1|data_buf\(1),
	datac => \comb_54|uart1|uart_tx_1|data_buf\(0),
	datad => \comb_54|uart1|uart_tx_1|always2~4_combout\,
	combout => \comb_54|uart1|uart_tx_1|data_buf~2_combout\);

-- Location: LCFF_X26_Y15_N19
\comb_54|uart1|uart_tx_1|data_buf[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|data_buf~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|data_buf\(0));

-- Location: LCCOMB_X25_Y14_N8
\comb_54|uart1|uart_tx_1|ser_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_54|uart1|uart_tx_1|ser_out~0_combout\ = (\comb_54|uart1|uart_tx_1|tx_busy~regout\ & !\comb_54|uart1|uart_tx_1|data_buf\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_54|uart1|uart_tx_1|tx_busy~regout\,
	datad => \comb_54|uart1|uart_tx_1|data_buf\(0),
	combout => \comb_54|uart1|uart_tx_1|ser_out~0_combout\);

-- Location: LCFF_X25_Y14_N9
\comb_54|uart1|uart_tx_1|ser_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \upll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \comb_54|uart1|uart_tx_1|ser_out~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_54|uart1|uart_tx_1|ser_out~regout\);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ul0|done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR~394567\(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR~394567\(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR~394567\(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ledr~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR~394567\(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR~394567\(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR~394567\(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR~394567\(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR~394567\(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \upll|altpll_component|_clk0~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR~394567\(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \upll|altpll_component|_locked\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR~394567\(9));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CLOCK_50~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\UART_TXD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_UART_TXD);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UART_RXD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_UART_RXD);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(8));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(0));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(1));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(2));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(3));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(4));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(5));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(6));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(7));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(8));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(9));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(10));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(11));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(12));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(13));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(14));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(15));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(16));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(17));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(18));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(19));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(20));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(21));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(22));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(23));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(24));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(25));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(26));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(27));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(28));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(29));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(30));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(31));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(32));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(33));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(34));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ul0|o~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(35));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_24[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_24(0));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_24[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_24(1));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TXB~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_54|uart1|uart_tx_1|ALT_INV_ser_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TXB);
END structure;


