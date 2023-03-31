-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "03/31/2023 10:38:18"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LCD IS
    PORT (
	CLOCK_50 : IN std_logic;
	sw : IN std_logic_vector(16 DOWNTO 0);
	key : IN std_logic_vector(3 DOWNTO 0);
	lcd_on : OUT std_logic;
	lcd_blon : OUT std_logic;
	lcd_rw : OUT std_logic;
	lcd_rs : OUT std_logic;
	lcd_en : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END LCD;

-- Design Ports Information
-- sw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_on	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_blon	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_rw	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_rs	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_en	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[2]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[3]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[5]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[6]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[7]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- key[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_sw : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_lcd_on : std_logic;
SIGNAL ww_lcd_blon : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \obj2|slowClock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \sw[10]~input_o\ : std_logic;
SIGNAL \sw[11]~input_o\ : std_logic;
SIGNAL \sw[12]~input_o\ : std_logic;
SIGNAL \sw[13]~input_o\ : std_logic;
SIGNAL \sw[14]~input_o\ : std_logic;
SIGNAL \sw[15]~input_o\ : std_logic;
SIGNAL \sw[16]~input_o\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \lcd_on~output_o\ : std_logic;
SIGNAL \lcd_blon~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \lcd_en~output_o\ : std_logic;
SIGNAL \lcd_data[0]~output_o\ : std_logic;
SIGNAL \lcd_data[1]~output_o\ : std_logic;
SIGNAL \lcd_data[2]~output_o\ : std_logic;
SIGNAL \lcd_data[3]~output_o\ : std_logic;
SIGNAL \lcd_data[4]~output_o\ : std_logic;
SIGNAL \lcd_data[5]~output_o\ : std_logic;
SIGNAL \lcd_data[6]~output_o\ : std_logic;
SIGNAL \lcd_data[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \obj2|valueFor1Hz[0]~27_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[0]~28\ : std_logic;
SIGNAL \obj2|valueFor1Hz[1]~29_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[1]~30\ : std_logic;
SIGNAL \obj2|valueFor1Hz[2]~31_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[2]~32\ : std_logic;
SIGNAL \obj2|valueFor1Hz[3]~33_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[3]~34\ : std_logic;
SIGNAL \obj2|valueFor1Hz[4]~35_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[4]~36\ : std_logic;
SIGNAL \obj2|valueFor1Hz[5]~37_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[5]~38\ : std_logic;
SIGNAL \obj2|valueFor1Hz[6]~39_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[6]~40\ : std_logic;
SIGNAL \obj2|valueFor1Hz[7]~41_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[7]~42\ : std_logic;
SIGNAL \obj2|valueFor1Hz[8]~43_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[8]~44\ : std_logic;
SIGNAL \obj2|valueFor1Hz[9]~45_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[9]~46\ : std_logic;
SIGNAL \obj2|valueFor1Hz[10]~47_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[10]~48\ : std_logic;
SIGNAL \obj2|valueFor1Hz[11]~49_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[11]~50\ : std_logic;
SIGNAL \obj2|valueFor1Hz[12]~51_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[12]~52\ : std_logic;
SIGNAL \obj2|valueFor1Hz[13]~53_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[13]~54\ : std_logic;
SIGNAL \obj2|valueFor1Hz[14]~55_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[14]~56\ : std_logic;
SIGNAL \obj2|valueFor1Hz[15]~57_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[15]~58\ : std_logic;
SIGNAL \obj2|valueFor1Hz[16]~59_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[16]~60\ : std_logic;
SIGNAL \obj2|valueFor1Hz[17]~61_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[17]~62\ : std_logic;
SIGNAL \obj2|valueFor1Hz[18]~63_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[18]~64\ : std_logic;
SIGNAL \obj2|valueFor1Hz[19]~65_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[19]~66\ : std_logic;
SIGNAL \obj2|valueFor1Hz[20]~67_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[20]~68\ : std_logic;
SIGNAL \obj2|valueFor1Hz[21]~69_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[21]~70\ : std_logic;
SIGNAL \obj2|valueFor1Hz[22]~71_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[22]~72\ : std_logic;
SIGNAL \obj2|valueFor1Hz[23]~73_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[23]~74\ : std_logic;
SIGNAL \obj2|valueFor1Hz[24]~75_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[24]~76\ : std_logic;
SIGNAL \obj2|valueFor1Hz[25]~77_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz[25]~78\ : std_logic;
SIGNAL \obj2|valueFor1Hz[26]~79_combout\ : std_logic;
SIGNAL \obj2|LessThan0~5_combout\ : std_logic;
SIGNAL \obj2|LessThan0~4_combout\ : std_logic;
SIGNAL \obj2|LessThan0~6_combout\ : std_logic;
SIGNAL \obj2|LessThan0~1_combout\ : std_logic;
SIGNAL \obj2|LessThan0~2_combout\ : std_logic;
SIGNAL \obj2|LessThan0~0_combout\ : std_logic;
SIGNAL \obj2|LessThan0~3_combout\ : std_logic;
SIGNAL \obj2|LessThan0~7_combout\ : std_logic;
SIGNAL \obj2|slowClock~q\ : std_logic;
SIGNAL \obj2|slowClock~clkctrl_outclk\ : std_logic;
SIGNAL \obj1|currentState.ins1~feeder_combout\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \obj1|currentState.ins1~q\ : std_logic;
SIGNAL \obj1|currentState.ins2~0_combout\ : std_logic;
SIGNAL \obj1|currentState.ins2~q\ : std_logic;
SIGNAL \obj1|currentState.ins3~feeder_combout\ : std_logic;
SIGNAL \obj1|currentState.ins3~q\ : std_logic;
SIGNAL \obj1|currentState.ins4~feeder_combout\ : std_logic;
SIGNAL \obj1|currentState.ins4~q\ : std_logic;
SIGNAL \obj1|currentState.ins5~q\ : std_logic;
SIGNAL \obj1|currentState.ins6~feeder_combout\ : std_logic;
SIGNAL \obj1|currentState.ins6~q\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \obj1|Selector3~0_combout\ : std_logic;
SIGNAL \obj1|currentState.dt4~q\ : std_logic;
SIGNAL \obj1|Selector2~0_combout\ : std_logic;
SIGNAL \obj1|currentState.dt3~q\ : std_logic;
SIGNAL \obj1|Selector1~0_combout\ : std_logic;
SIGNAL \obj1|currentState.dt2~q\ : std_logic;
SIGNAL \obj1|Selector0~0_combout\ : std_logic;
SIGNAL \obj1|currentState.dt1~q\ : std_logic;
SIGNAL \obj1|Selector4~0_combout\ : std_logic;
SIGNAL \obj1|currentState.dt5~q\ : std_logic;
SIGNAL \obj1|WideOr0~0_combout\ : std_logic;
SIGNAL \obj1|WideOr0~combout\ : std_logic;
SIGNAL \obj1|mode~q\ : std_logic;
SIGNAL \obj1|WideOr6~0_combout\ : std_logic;
SIGNAL \obj1|WideOr5~0_combout\ : std_logic;
SIGNAL \obj1|WideOr4~combout\ : std_logic;
SIGNAL \obj1|WideOr3~combout\ : std_logic;
SIGNAL \obj1|WideOr2~0_combout\ : std_logic;
SIGNAL \obj1|WideOr1~0_combout\ : std_logic;
SIGNAL \obj1|WideOr1~combout\ : std_logic;
SIGNAL \obj1|data[7]~feeder_combout\ : std_logic;
SIGNAL \obj2|valueFor1Hz\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \obj1|data\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_sw <= sw;
ww_key <= key;
lcd_on <= ww_lcd_on;
lcd_blon <= ww_lcd_blon;
lcd_rw <= ww_lcd_rw;
lcd_rs <= ww_lcd_rs;
lcd_en <= ww_lcd_en;
lcd_data <= ww_lcd_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\obj2|slowClock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \obj2|slowClock~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y58_N16
\lcd_on~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lcd_on~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\lcd_blon~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lcd_blon~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\lcd_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj1|mode~q\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\lcd_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj2|slowClock~q\,
	devoe => ww_devoe,
	o => \lcd_en~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\lcd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj1|data\(0),
	devoe => ww_devoe,
	o => \lcd_data[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\lcd_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj1|data\(1),
	devoe => ww_devoe,
	o => \lcd_data[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\lcd_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj1|data\(2),
	devoe => ww_devoe,
	o => \lcd_data[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\lcd_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj1|data\(3),
	devoe => ww_devoe,
	o => \lcd_data[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\lcd_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj1|data\(4),
	devoe => ww_devoe,
	o => \lcd_data[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\lcd_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj1|data\(5),
	devoe => ww_devoe,
	o => \lcd_data[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\lcd_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj1|data\(6),
	devoe => ww_devoe,
	o => \lcd_data[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\lcd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj1|data\(7),
	devoe => ww_devoe,
	o => \lcd_data[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X41_Y68_N6
\obj2|valueFor1Hz[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[0]~27_combout\ = \obj2|valueFor1Hz\(0) $ (VCC)
-- \obj2|valueFor1Hz[0]~28\ = CARRY(\obj2|valueFor1Hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(0),
	datad => VCC,
	combout => \obj2|valueFor1Hz[0]~27_combout\,
	cout => \obj2|valueFor1Hz[0]~28\);

-- Location: FF_X41_Y68_N7
\obj2|valueFor1Hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[0]~27_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(0));

-- Location: LCCOMB_X41_Y68_N8
\obj2|valueFor1Hz[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[1]~29_combout\ = (\obj2|valueFor1Hz\(1) & (!\obj2|valueFor1Hz[0]~28\)) # (!\obj2|valueFor1Hz\(1) & ((\obj2|valueFor1Hz[0]~28\) # (GND)))
-- \obj2|valueFor1Hz[1]~30\ = CARRY((!\obj2|valueFor1Hz[0]~28\) # (!\obj2|valueFor1Hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(1),
	datad => VCC,
	cin => \obj2|valueFor1Hz[0]~28\,
	combout => \obj2|valueFor1Hz[1]~29_combout\,
	cout => \obj2|valueFor1Hz[1]~30\);

-- Location: FF_X41_Y68_N9
\obj2|valueFor1Hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[1]~29_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(1));

-- Location: LCCOMB_X41_Y68_N10
\obj2|valueFor1Hz[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[2]~31_combout\ = (\obj2|valueFor1Hz\(2) & (\obj2|valueFor1Hz[1]~30\ $ (GND))) # (!\obj2|valueFor1Hz\(2) & (!\obj2|valueFor1Hz[1]~30\ & VCC))
-- \obj2|valueFor1Hz[2]~32\ = CARRY((\obj2|valueFor1Hz\(2) & !\obj2|valueFor1Hz[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(2),
	datad => VCC,
	cin => \obj2|valueFor1Hz[1]~30\,
	combout => \obj2|valueFor1Hz[2]~31_combout\,
	cout => \obj2|valueFor1Hz[2]~32\);

-- Location: FF_X41_Y68_N11
\obj2|valueFor1Hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[2]~31_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(2));

-- Location: LCCOMB_X41_Y68_N12
\obj2|valueFor1Hz[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[3]~33_combout\ = (\obj2|valueFor1Hz\(3) & (!\obj2|valueFor1Hz[2]~32\)) # (!\obj2|valueFor1Hz\(3) & ((\obj2|valueFor1Hz[2]~32\) # (GND)))
-- \obj2|valueFor1Hz[3]~34\ = CARRY((!\obj2|valueFor1Hz[2]~32\) # (!\obj2|valueFor1Hz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(3),
	datad => VCC,
	cin => \obj2|valueFor1Hz[2]~32\,
	combout => \obj2|valueFor1Hz[3]~33_combout\,
	cout => \obj2|valueFor1Hz[3]~34\);

-- Location: FF_X41_Y68_N13
\obj2|valueFor1Hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[3]~33_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(3));

-- Location: LCCOMB_X41_Y68_N14
\obj2|valueFor1Hz[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[4]~35_combout\ = (\obj2|valueFor1Hz\(4) & (\obj2|valueFor1Hz[3]~34\ $ (GND))) # (!\obj2|valueFor1Hz\(4) & (!\obj2|valueFor1Hz[3]~34\ & VCC))
-- \obj2|valueFor1Hz[4]~36\ = CARRY((\obj2|valueFor1Hz\(4) & !\obj2|valueFor1Hz[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(4),
	datad => VCC,
	cin => \obj2|valueFor1Hz[3]~34\,
	combout => \obj2|valueFor1Hz[4]~35_combout\,
	cout => \obj2|valueFor1Hz[4]~36\);

-- Location: FF_X41_Y68_N15
\obj2|valueFor1Hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[4]~35_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(4));

-- Location: LCCOMB_X41_Y68_N16
\obj2|valueFor1Hz[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[5]~37_combout\ = (\obj2|valueFor1Hz\(5) & (!\obj2|valueFor1Hz[4]~36\)) # (!\obj2|valueFor1Hz\(5) & ((\obj2|valueFor1Hz[4]~36\) # (GND)))
-- \obj2|valueFor1Hz[5]~38\ = CARRY((!\obj2|valueFor1Hz[4]~36\) # (!\obj2|valueFor1Hz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(5),
	datad => VCC,
	cin => \obj2|valueFor1Hz[4]~36\,
	combout => \obj2|valueFor1Hz[5]~37_combout\,
	cout => \obj2|valueFor1Hz[5]~38\);

-- Location: FF_X41_Y68_N17
\obj2|valueFor1Hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[5]~37_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(5));

-- Location: LCCOMB_X41_Y68_N18
\obj2|valueFor1Hz[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[6]~39_combout\ = (\obj2|valueFor1Hz\(6) & (\obj2|valueFor1Hz[5]~38\ $ (GND))) # (!\obj2|valueFor1Hz\(6) & (!\obj2|valueFor1Hz[5]~38\ & VCC))
-- \obj2|valueFor1Hz[6]~40\ = CARRY((\obj2|valueFor1Hz\(6) & !\obj2|valueFor1Hz[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(6),
	datad => VCC,
	cin => \obj2|valueFor1Hz[5]~38\,
	combout => \obj2|valueFor1Hz[6]~39_combout\,
	cout => \obj2|valueFor1Hz[6]~40\);

-- Location: FF_X41_Y68_N19
\obj2|valueFor1Hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[6]~39_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(6));

-- Location: LCCOMB_X41_Y68_N20
\obj2|valueFor1Hz[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[7]~41_combout\ = (\obj2|valueFor1Hz\(7) & (!\obj2|valueFor1Hz[6]~40\)) # (!\obj2|valueFor1Hz\(7) & ((\obj2|valueFor1Hz[6]~40\) # (GND)))
-- \obj2|valueFor1Hz[7]~42\ = CARRY((!\obj2|valueFor1Hz[6]~40\) # (!\obj2|valueFor1Hz\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(7),
	datad => VCC,
	cin => \obj2|valueFor1Hz[6]~40\,
	combout => \obj2|valueFor1Hz[7]~41_combout\,
	cout => \obj2|valueFor1Hz[7]~42\);

-- Location: FF_X41_Y68_N21
\obj2|valueFor1Hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[7]~41_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(7));

-- Location: LCCOMB_X41_Y68_N22
\obj2|valueFor1Hz[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[8]~43_combout\ = (\obj2|valueFor1Hz\(8) & (\obj2|valueFor1Hz[7]~42\ $ (GND))) # (!\obj2|valueFor1Hz\(8) & (!\obj2|valueFor1Hz[7]~42\ & VCC))
-- \obj2|valueFor1Hz[8]~44\ = CARRY((\obj2|valueFor1Hz\(8) & !\obj2|valueFor1Hz[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(8),
	datad => VCC,
	cin => \obj2|valueFor1Hz[7]~42\,
	combout => \obj2|valueFor1Hz[8]~43_combout\,
	cout => \obj2|valueFor1Hz[8]~44\);

-- Location: FF_X41_Y68_N23
\obj2|valueFor1Hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[8]~43_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(8));

-- Location: LCCOMB_X41_Y68_N24
\obj2|valueFor1Hz[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[9]~45_combout\ = (\obj2|valueFor1Hz\(9) & (!\obj2|valueFor1Hz[8]~44\)) # (!\obj2|valueFor1Hz\(9) & ((\obj2|valueFor1Hz[8]~44\) # (GND)))
-- \obj2|valueFor1Hz[9]~46\ = CARRY((!\obj2|valueFor1Hz[8]~44\) # (!\obj2|valueFor1Hz\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(9),
	datad => VCC,
	cin => \obj2|valueFor1Hz[8]~44\,
	combout => \obj2|valueFor1Hz[9]~45_combout\,
	cout => \obj2|valueFor1Hz[9]~46\);

-- Location: FF_X41_Y68_N25
\obj2|valueFor1Hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[9]~45_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(9));

-- Location: LCCOMB_X41_Y68_N26
\obj2|valueFor1Hz[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[10]~47_combout\ = (\obj2|valueFor1Hz\(10) & (\obj2|valueFor1Hz[9]~46\ $ (GND))) # (!\obj2|valueFor1Hz\(10) & (!\obj2|valueFor1Hz[9]~46\ & VCC))
-- \obj2|valueFor1Hz[10]~48\ = CARRY((\obj2|valueFor1Hz\(10) & !\obj2|valueFor1Hz[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(10),
	datad => VCC,
	cin => \obj2|valueFor1Hz[9]~46\,
	combout => \obj2|valueFor1Hz[10]~47_combout\,
	cout => \obj2|valueFor1Hz[10]~48\);

-- Location: FF_X41_Y68_N27
\obj2|valueFor1Hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[10]~47_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(10));

-- Location: LCCOMB_X41_Y68_N28
\obj2|valueFor1Hz[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[11]~49_combout\ = (\obj2|valueFor1Hz\(11) & (!\obj2|valueFor1Hz[10]~48\)) # (!\obj2|valueFor1Hz\(11) & ((\obj2|valueFor1Hz[10]~48\) # (GND)))
-- \obj2|valueFor1Hz[11]~50\ = CARRY((!\obj2|valueFor1Hz[10]~48\) # (!\obj2|valueFor1Hz\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(11),
	datad => VCC,
	cin => \obj2|valueFor1Hz[10]~48\,
	combout => \obj2|valueFor1Hz[11]~49_combout\,
	cout => \obj2|valueFor1Hz[11]~50\);

-- Location: FF_X41_Y68_N29
\obj2|valueFor1Hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[11]~49_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(11));

-- Location: LCCOMB_X41_Y68_N30
\obj2|valueFor1Hz[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[12]~51_combout\ = (\obj2|valueFor1Hz\(12) & (\obj2|valueFor1Hz[11]~50\ $ (GND))) # (!\obj2|valueFor1Hz\(12) & (!\obj2|valueFor1Hz[11]~50\ & VCC))
-- \obj2|valueFor1Hz[12]~52\ = CARRY((\obj2|valueFor1Hz\(12) & !\obj2|valueFor1Hz[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(12),
	datad => VCC,
	cin => \obj2|valueFor1Hz[11]~50\,
	combout => \obj2|valueFor1Hz[12]~51_combout\,
	cout => \obj2|valueFor1Hz[12]~52\);

-- Location: FF_X41_Y68_N31
\obj2|valueFor1Hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[12]~51_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(12));

-- Location: LCCOMB_X41_Y67_N0
\obj2|valueFor1Hz[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[13]~53_combout\ = (\obj2|valueFor1Hz\(13) & (!\obj2|valueFor1Hz[12]~52\)) # (!\obj2|valueFor1Hz\(13) & ((\obj2|valueFor1Hz[12]~52\) # (GND)))
-- \obj2|valueFor1Hz[13]~54\ = CARRY((!\obj2|valueFor1Hz[12]~52\) # (!\obj2|valueFor1Hz\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(13),
	datad => VCC,
	cin => \obj2|valueFor1Hz[12]~52\,
	combout => \obj2|valueFor1Hz[13]~53_combout\,
	cout => \obj2|valueFor1Hz[13]~54\);

-- Location: FF_X42_Y68_N29
\obj2|valueFor1Hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \obj2|valueFor1Hz[13]~53_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(13));

-- Location: LCCOMB_X41_Y67_N2
\obj2|valueFor1Hz[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[14]~55_combout\ = (\obj2|valueFor1Hz\(14) & (\obj2|valueFor1Hz[13]~54\ $ (GND))) # (!\obj2|valueFor1Hz\(14) & (!\obj2|valueFor1Hz[13]~54\ & VCC))
-- \obj2|valueFor1Hz[14]~56\ = CARRY((\obj2|valueFor1Hz\(14) & !\obj2|valueFor1Hz[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(14),
	datad => VCC,
	cin => \obj2|valueFor1Hz[13]~54\,
	combout => \obj2|valueFor1Hz[14]~55_combout\,
	cout => \obj2|valueFor1Hz[14]~56\);

-- Location: FF_X42_Y68_N31
\obj2|valueFor1Hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \obj2|valueFor1Hz[14]~55_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(14));

-- Location: LCCOMB_X41_Y67_N4
\obj2|valueFor1Hz[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[15]~57_combout\ = (\obj2|valueFor1Hz\(15) & (!\obj2|valueFor1Hz[14]~56\)) # (!\obj2|valueFor1Hz\(15) & ((\obj2|valueFor1Hz[14]~56\) # (GND)))
-- \obj2|valueFor1Hz[15]~58\ = CARRY((!\obj2|valueFor1Hz[14]~56\) # (!\obj2|valueFor1Hz\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(15),
	datad => VCC,
	cin => \obj2|valueFor1Hz[14]~56\,
	combout => \obj2|valueFor1Hz[15]~57_combout\,
	cout => \obj2|valueFor1Hz[15]~58\);

-- Location: FF_X42_Y68_N21
\obj2|valueFor1Hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \obj2|valueFor1Hz[15]~57_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(15));

-- Location: LCCOMB_X41_Y67_N6
\obj2|valueFor1Hz[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[16]~59_combout\ = (\obj2|valueFor1Hz\(16) & (\obj2|valueFor1Hz[15]~58\ $ (GND))) # (!\obj2|valueFor1Hz\(16) & (!\obj2|valueFor1Hz[15]~58\ & VCC))
-- \obj2|valueFor1Hz[16]~60\ = CARRY((\obj2|valueFor1Hz\(16) & !\obj2|valueFor1Hz[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(16),
	datad => VCC,
	cin => \obj2|valueFor1Hz[15]~58\,
	combout => \obj2|valueFor1Hz[16]~59_combout\,
	cout => \obj2|valueFor1Hz[16]~60\);

-- Location: FF_X41_Y67_N7
\obj2|valueFor1Hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[16]~59_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(16));

-- Location: LCCOMB_X41_Y67_N8
\obj2|valueFor1Hz[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[17]~61_combout\ = (\obj2|valueFor1Hz\(17) & (!\obj2|valueFor1Hz[16]~60\)) # (!\obj2|valueFor1Hz\(17) & ((\obj2|valueFor1Hz[16]~60\) # (GND)))
-- \obj2|valueFor1Hz[17]~62\ = CARRY((!\obj2|valueFor1Hz[16]~60\) # (!\obj2|valueFor1Hz\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(17),
	datad => VCC,
	cin => \obj2|valueFor1Hz[16]~60\,
	combout => \obj2|valueFor1Hz[17]~61_combout\,
	cout => \obj2|valueFor1Hz[17]~62\);

-- Location: FF_X41_Y67_N9
\obj2|valueFor1Hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[17]~61_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(17));

-- Location: LCCOMB_X41_Y67_N10
\obj2|valueFor1Hz[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[18]~63_combout\ = (\obj2|valueFor1Hz\(18) & (\obj2|valueFor1Hz[17]~62\ $ (GND))) # (!\obj2|valueFor1Hz\(18) & (!\obj2|valueFor1Hz[17]~62\ & VCC))
-- \obj2|valueFor1Hz[18]~64\ = CARRY((\obj2|valueFor1Hz\(18) & !\obj2|valueFor1Hz[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(18),
	datad => VCC,
	cin => \obj2|valueFor1Hz[17]~62\,
	combout => \obj2|valueFor1Hz[18]~63_combout\,
	cout => \obj2|valueFor1Hz[18]~64\);

-- Location: FF_X41_Y67_N11
\obj2|valueFor1Hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[18]~63_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(18));

-- Location: LCCOMB_X41_Y67_N12
\obj2|valueFor1Hz[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[19]~65_combout\ = (\obj2|valueFor1Hz\(19) & (!\obj2|valueFor1Hz[18]~64\)) # (!\obj2|valueFor1Hz\(19) & ((\obj2|valueFor1Hz[18]~64\) # (GND)))
-- \obj2|valueFor1Hz[19]~66\ = CARRY((!\obj2|valueFor1Hz[18]~64\) # (!\obj2|valueFor1Hz\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(19),
	datad => VCC,
	cin => \obj2|valueFor1Hz[18]~64\,
	combout => \obj2|valueFor1Hz[19]~65_combout\,
	cout => \obj2|valueFor1Hz[19]~66\);

-- Location: FF_X41_Y67_N13
\obj2|valueFor1Hz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[19]~65_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(19));

-- Location: LCCOMB_X41_Y67_N14
\obj2|valueFor1Hz[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[20]~67_combout\ = (\obj2|valueFor1Hz\(20) & (\obj2|valueFor1Hz[19]~66\ $ (GND))) # (!\obj2|valueFor1Hz\(20) & (!\obj2|valueFor1Hz[19]~66\ & VCC))
-- \obj2|valueFor1Hz[20]~68\ = CARRY((\obj2|valueFor1Hz\(20) & !\obj2|valueFor1Hz[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(20),
	datad => VCC,
	cin => \obj2|valueFor1Hz[19]~66\,
	combout => \obj2|valueFor1Hz[20]~67_combout\,
	cout => \obj2|valueFor1Hz[20]~68\);

-- Location: FF_X41_Y67_N15
\obj2|valueFor1Hz[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[20]~67_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(20));

-- Location: LCCOMB_X41_Y67_N16
\obj2|valueFor1Hz[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[21]~69_combout\ = (\obj2|valueFor1Hz\(21) & (!\obj2|valueFor1Hz[20]~68\)) # (!\obj2|valueFor1Hz\(21) & ((\obj2|valueFor1Hz[20]~68\) # (GND)))
-- \obj2|valueFor1Hz[21]~70\ = CARRY((!\obj2|valueFor1Hz[20]~68\) # (!\obj2|valueFor1Hz\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(21),
	datad => VCC,
	cin => \obj2|valueFor1Hz[20]~68\,
	combout => \obj2|valueFor1Hz[21]~69_combout\,
	cout => \obj2|valueFor1Hz[21]~70\);

-- Location: FF_X41_Y67_N17
\obj2|valueFor1Hz[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[21]~69_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(21));

-- Location: LCCOMB_X41_Y67_N18
\obj2|valueFor1Hz[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[22]~71_combout\ = (\obj2|valueFor1Hz\(22) & (\obj2|valueFor1Hz[21]~70\ $ (GND))) # (!\obj2|valueFor1Hz\(22) & (!\obj2|valueFor1Hz[21]~70\ & VCC))
-- \obj2|valueFor1Hz[22]~72\ = CARRY((\obj2|valueFor1Hz\(22) & !\obj2|valueFor1Hz[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(22),
	datad => VCC,
	cin => \obj2|valueFor1Hz[21]~70\,
	combout => \obj2|valueFor1Hz[22]~71_combout\,
	cout => \obj2|valueFor1Hz[22]~72\);

-- Location: FF_X41_Y67_N19
\obj2|valueFor1Hz[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[22]~71_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(22));

-- Location: LCCOMB_X41_Y67_N20
\obj2|valueFor1Hz[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[23]~73_combout\ = (\obj2|valueFor1Hz\(23) & (!\obj2|valueFor1Hz[22]~72\)) # (!\obj2|valueFor1Hz\(23) & ((\obj2|valueFor1Hz[22]~72\) # (GND)))
-- \obj2|valueFor1Hz[23]~74\ = CARRY((!\obj2|valueFor1Hz[22]~72\) # (!\obj2|valueFor1Hz\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(23),
	datad => VCC,
	cin => \obj2|valueFor1Hz[22]~72\,
	combout => \obj2|valueFor1Hz[23]~73_combout\,
	cout => \obj2|valueFor1Hz[23]~74\);

-- Location: FF_X41_Y67_N21
\obj2|valueFor1Hz[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[23]~73_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(23));

-- Location: LCCOMB_X41_Y67_N22
\obj2|valueFor1Hz[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[24]~75_combout\ = (\obj2|valueFor1Hz\(24) & (\obj2|valueFor1Hz[23]~74\ $ (GND))) # (!\obj2|valueFor1Hz\(24) & (!\obj2|valueFor1Hz[23]~74\ & VCC))
-- \obj2|valueFor1Hz[24]~76\ = CARRY((\obj2|valueFor1Hz\(24) & !\obj2|valueFor1Hz[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(24),
	datad => VCC,
	cin => \obj2|valueFor1Hz[23]~74\,
	combout => \obj2|valueFor1Hz[24]~75_combout\,
	cout => \obj2|valueFor1Hz[24]~76\);

-- Location: FF_X41_Y67_N23
\obj2|valueFor1Hz[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[24]~75_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(24));

-- Location: LCCOMB_X41_Y67_N24
\obj2|valueFor1Hz[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[25]~77_combout\ = (\obj2|valueFor1Hz\(25) & (!\obj2|valueFor1Hz[24]~76\)) # (!\obj2|valueFor1Hz\(25) & ((\obj2|valueFor1Hz[24]~76\) # (GND)))
-- \obj2|valueFor1Hz[25]~78\ = CARRY((!\obj2|valueFor1Hz[24]~76\) # (!\obj2|valueFor1Hz\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(25),
	datad => VCC,
	cin => \obj2|valueFor1Hz[24]~76\,
	combout => \obj2|valueFor1Hz[25]~77_combout\,
	cout => \obj2|valueFor1Hz[25]~78\);

-- Location: FF_X41_Y67_N25
\obj2|valueFor1Hz[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[25]~77_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(25));

-- Location: LCCOMB_X41_Y67_N26
\obj2|valueFor1Hz[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|valueFor1Hz[26]~79_combout\ = \obj2|valueFor1Hz\(26) $ (!\obj2|valueFor1Hz[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(26),
	cin => \obj2|valueFor1Hz[25]~78\,
	combout => \obj2|valueFor1Hz[26]~79_combout\);

-- Location: FF_X41_Y67_N27
\obj2|valueFor1Hz[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|valueFor1Hz[26]~79_combout\,
	sclr => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|valueFor1Hz\(26));

-- Location: LCCOMB_X42_Y67_N0
\obj2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|LessThan0~5_combout\ = (!\obj2|valueFor1Hz\(23)) # (!\obj2|valueFor1Hz\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \obj2|valueFor1Hz\(22),
	datad => \obj2|valueFor1Hz\(23),
	combout => \obj2|LessThan0~5_combout\);

-- Location: LCCOMB_X41_Y67_N30
\obj2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|LessThan0~4_combout\ = (((!\obj2|valueFor1Hz\(18) & !\obj2|valueFor1Hz\(17))) # (!\obj2|valueFor1Hz\(19))) # (!\obj2|valueFor1Hz\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(18),
	datab => \obj2|valueFor1Hz\(20),
	datac => \obj2|valueFor1Hz\(17),
	datad => \obj2|valueFor1Hz\(19),
	combout => \obj2|LessThan0~4_combout\);

-- Location: LCCOMB_X41_Y68_N4
\obj2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|LessThan0~6_combout\ = (!\obj2|valueFor1Hz\(24) & (((\obj2|LessThan0~5_combout\) # (\obj2|LessThan0~4_combout\)) # (!\obj2|valueFor1Hz\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(21),
	datab => \obj2|valueFor1Hz\(24),
	datac => \obj2|LessThan0~5_combout\,
	datad => \obj2|LessThan0~4_combout\,
	combout => \obj2|LessThan0~6_combout\);

-- Location: LCCOMB_X42_Y68_N6
\obj2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|LessThan0~1_combout\ = (((!\obj2|valueFor1Hz\(13)) # (!\obj2|valueFor1Hz\(15))) # (!\obj2|valueFor1Hz\(12))) # (!\obj2|valueFor1Hz\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(14),
	datab => \obj2|valueFor1Hz\(12),
	datac => \obj2|valueFor1Hz\(15),
	datad => \obj2|valueFor1Hz\(13),
	combout => \obj2|LessThan0~1_combout\);

-- Location: LCCOMB_X42_Y68_N0
\obj2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|LessThan0~2_combout\ = (!\obj2|valueFor1Hz\(10) & (!\obj2|valueFor1Hz\(8) & (!\obj2|valueFor1Hz\(7) & !\obj2|valueFor1Hz\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(10),
	datab => \obj2|valueFor1Hz\(8),
	datac => \obj2|valueFor1Hz\(7),
	datad => \obj2|valueFor1Hz\(9),
	combout => \obj2|LessThan0~2_combout\);

-- Location: LCCOMB_X41_Y67_N28
\obj2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|LessThan0~0_combout\ = (!\obj2|valueFor1Hz\(18) & (!\obj2|valueFor1Hz\(24) & !\obj2|valueFor1Hz\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(18),
	datac => \obj2|valueFor1Hz\(24),
	datad => \obj2|valueFor1Hz\(16),
	combout => \obj2|LessThan0~0_combout\);

-- Location: LCCOMB_X41_Y68_N2
\obj2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|LessThan0~3_combout\ = (\obj2|LessThan0~0_combout\ & ((\obj2|LessThan0~1_combout\) # ((!\obj2|valueFor1Hz\(11) & \obj2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|LessThan0~1_combout\,
	datab => \obj2|valueFor1Hz\(11),
	datac => \obj2|LessThan0~2_combout\,
	datad => \obj2|LessThan0~0_combout\,
	combout => \obj2|LessThan0~3_combout\);

-- Location: LCCOMB_X41_Y68_N0
\obj2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|LessThan0~7_combout\ = (\obj2|valueFor1Hz\(26)) # ((\obj2|valueFor1Hz\(25) & (!\obj2|LessThan0~6_combout\ & !\obj2|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj2|valueFor1Hz\(26),
	datab => \obj2|valueFor1Hz\(25),
	datac => \obj2|LessThan0~6_combout\,
	datad => \obj2|LessThan0~3_combout\,
	combout => \obj2|LessThan0~7_combout\);

-- Location: FF_X41_Y68_N1
\obj2|slowClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \obj2|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj2|slowClock~q\);

-- Location: CLKCTRL_G11
\obj2|slowClock~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \obj2|slowClock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \obj2|slowClock~clkctrl_outclk\);

-- Location: LCCOMB_X4_Y48_N26
\obj1|currentState.ins1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|currentState.ins1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \obj1|currentState.ins1~feeder_combout\);

-- Location: IOIBUF_X115_Y35_N22
\key[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: FF_X4_Y48_N27
\obj1|currentState.ins1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|currentState.ins1~feeder_combout\,
	clrn => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|currentState.ins1~q\);

-- Location: LCCOMB_X4_Y48_N4
\obj1|currentState.ins2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|currentState.ins2~0_combout\ = !\obj1|currentState.ins1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \obj1|currentState.ins1~q\,
	combout => \obj1|currentState.ins2~0_combout\);

-- Location: FF_X4_Y48_N5
\obj1|currentState.ins2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|currentState.ins2~0_combout\,
	clrn => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|currentState.ins2~q\);

-- Location: LCCOMB_X3_Y48_N20
\obj1|currentState.ins3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|currentState.ins3~feeder_combout\ = \obj1|currentState.ins2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \obj1|currentState.ins2~q\,
	combout => \obj1|currentState.ins3~feeder_combout\);

-- Location: FF_X3_Y48_N21
\obj1|currentState.ins3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|currentState.ins3~feeder_combout\,
	clrn => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|currentState.ins3~q\);

-- Location: LCCOMB_X3_Y48_N22
\obj1|currentState.ins4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|currentState.ins4~feeder_combout\ = \obj1|currentState.ins3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \obj1|currentState.ins3~q\,
	combout => \obj1|currentState.ins4~feeder_combout\);

-- Location: FF_X3_Y48_N23
\obj1|currentState.ins4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|currentState.ins4~feeder_combout\,
	clrn => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|currentState.ins4~q\);

-- Location: FF_X3_Y48_N17
\obj1|currentState.ins5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	asdata => \obj1|currentState.ins4~q\,
	clrn => \key[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|currentState.ins5~q\);

-- Location: LCCOMB_X3_Y48_N24
\obj1|currentState.ins6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|currentState.ins6~feeder_combout\ = \obj1|currentState.ins5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \obj1|currentState.ins5~q\,
	combout => \obj1|currentState.ins6~feeder_combout\);

-- Location: FF_X3_Y48_N25
\obj1|currentState.ins6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|currentState.ins6~feeder_combout\,
	clrn => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|currentState.ins6~q\);

-- Location: IOIBUF_X115_Y17_N1
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X3_Y48_N10
\obj1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|Selector3~0_combout\ = (\sw[0]~input_o\ & (\obj1|currentState.dt5~q\)) # (!\sw[0]~input_o\ & ((\obj1|currentState.dt3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \obj1|currentState.dt5~q\,
	datad => \obj1|currentState.dt3~q\,
	combout => \obj1|Selector3~0_combout\);

-- Location: FF_X3_Y48_N11
\obj1|currentState.dt4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|Selector3~0_combout\,
	clrn => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|currentState.dt4~q\);

-- Location: LCCOMB_X3_Y48_N28
\obj1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|Selector2~0_combout\ = (\sw[0]~input_o\ & (\obj1|currentState.dt4~q\)) # (!\sw[0]~input_o\ & ((\obj1|currentState.dt2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \obj1|currentState.dt4~q\,
	datac => \obj1|currentState.dt2~q\,
	combout => \obj1|Selector2~0_combout\);

-- Location: FF_X3_Y48_N29
\obj1|currentState.dt3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|Selector2~0_combout\,
	clrn => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|currentState.dt3~q\);

-- Location: LCCOMB_X3_Y48_N4
\obj1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|Selector1~0_combout\ = (\sw[0]~input_o\ & ((\obj1|currentState.dt3~q\))) # (!\sw[0]~input_o\ & (\obj1|currentState.dt1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|currentState.dt1~q\,
	datac => \sw[0]~input_o\,
	datad => \obj1|currentState.dt3~q\,
	combout => \obj1|Selector1~0_combout\);

-- Location: FF_X3_Y48_N5
\obj1|currentState.dt2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|Selector1~0_combout\,
	clrn => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|currentState.dt2~q\);

-- Location: LCCOMB_X3_Y48_N26
\obj1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|Selector0~0_combout\ = (\obj1|currentState.ins6~q\) # ((\sw[0]~input_o\ & (\obj1|currentState.dt2~q\)) # (!\sw[0]~input_o\ & ((\obj1|currentState.dt5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|currentState.ins6~q\,
	datab => \obj1|currentState.dt2~q\,
	datac => \sw[0]~input_o\,
	datad => \obj1|currentState.dt5~q\,
	combout => \obj1|Selector0~0_combout\);

-- Location: FF_X3_Y48_N27
\obj1|currentState.dt1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|Selector0~0_combout\,
	clrn => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|currentState.dt1~q\);

-- Location: LCCOMB_X3_Y48_N18
\obj1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|Selector4~0_combout\ = (\sw[0]~input_o\ & (\obj1|currentState.dt1~q\)) # (!\sw[0]~input_o\ & ((\obj1|currentState.dt4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|currentState.dt1~q\,
	datab => \obj1|currentState.dt4~q\,
	datac => \sw[0]~input_o\,
	combout => \obj1|Selector4~0_combout\);

-- Location: FF_X3_Y48_N19
\obj1|currentState.dt5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|Selector4~0_combout\,
	clrn => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|currentState.dt5~q\);

-- Location: LCCOMB_X3_Y48_N0
\obj1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|WideOr0~0_combout\ = (!\obj1|currentState.dt4~q\ & (!\obj1|currentState.dt2~q\ & !\obj1|currentState.dt3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|currentState.dt4~q\,
	datab => \obj1|currentState.dt2~q\,
	datad => \obj1|currentState.dt3~q\,
	combout => \obj1|WideOr0~0_combout\);

-- Location: LCCOMB_X3_Y48_N8
\obj1|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|WideOr0~combout\ = (\obj1|currentState.dt5~q\) # ((\obj1|currentState.dt1~q\) # (!\obj1|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \obj1|currentState.dt5~q\,
	datac => \obj1|currentState.dt1~q\,
	datad => \obj1|WideOr0~0_combout\,
	combout => \obj1|WideOr0~combout\);

-- Location: FF_X3_Y48_N1
\obj1|mode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	asdata => \obj1|WideOr0~combout\,
	sload => VCC,
	ena => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|mode~q\);

-- Location: LCCOMB_X3_Y48_N6
\obj1|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|WideOr6~0_combout\ = (\obj1|currentState.ins4~q\) # ((\obj1|currentState.dt5~q\) # ((\obj1|currentState.dt2~q\) # (\obj1|currentState.dt4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|currentState.ins4~q\,
	datab => \obj1|currentState.dt5~q\,
	datac => \obj1|currentState.dt2~q\,
	datad => \obj1|currentState.dt4~q\,
	combout => \obj1|WideOr6~0_combout\);

-- Location: FF_X3_Y48_N7
\obj1|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|WideOr6~0_combout\,
	ena => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|data\(0));

-- Location: LCCOMB_X3_Y48_N30
\obj1|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|WideOr5~0_combout\ = (\obj1|currentState.ins5~q\) # ((\obj1|currentState.dt2~q\) # (\obj1|currentState.dt3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|currentState.ins5~q\,
	datac => \obj1|currentState.dt2~q\,
	datad => \obj1|currentState.dt3~q\,
	combout => \obj1|WideOr5~0_combout\);

-- Location: FF_X3_Y48_N31
\obj1|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|WideOr5~0_combout\,
	ena => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|data\(1));

-- Location: LCCOMB_X3_Y48_N14
\obj1|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|WideOr4~combout\ = (\obj1|currentState.ins5~q\) # ((\obj1|currentState.ins3~q\) # (!\obj1|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|currentState.ins5~q\,
	datab => \obj1|currentState.ins3~q\,
	datad => \obj1|WideOr0~0_combout\,
	combout => \obj1|WideOr4~combout\);

-- Location: FF_X3_Y48_N15
\obj1|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|WideOr4~combout\,
	ena => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|data\(2));

-- Location: LCCOMB_X3_Y48_N2
\obj1|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|WideOr3~combout\ = (!\obj1|currentState.ins4~q\ & (!\obj1|currentState.ins6~q\ & (!\obj1|currentState.ins5~q\ & !\obj1|currentState.dt4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|currentState.ins4~q\,
	datab => \obj1|currentState.ins6~q\,
	datac => \obj1|currentState.ins5~q\,
	datad => \obj1|currentState.dt4~q\,
	combout => \obj1|WideOr3~combout\);

-- Location: FF_X3_Y48_N3
\obj1|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|WideOr3~combout\,
	ena => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|data\(3));

-- Location: LCCOMB_X4_Y48_N28
\obj1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|WideOr2~0_combout\ = ((\obj1|currentState.ins2~q\) # (\obj1|currentState.dt5~q\)) # (!\obj1|currentState.ins1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|currentState.ins1~q\,
	datac => \obj1|currentState.ins2~q\,
	datad => \obj1|currentState.dt5~q\,
	combout => \obj1|WideOr2~0_combout\);

-- Location: FF_X4_Y48_N29
\obj1|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|WideOr2~0_combout\,
	ena => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|data\(4));

-- Location: LCCOMB_X3_Y48_N16
\obj1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|WideOr1~0_combout\ = (\obj1|currentState.ins4~q\) # ((\obj1|currentState.ins3~q\) # ((\obj1|currentState.ins5~q\) # (\obj1|currentState.ins6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|currentState.ins4~q\,
	datab => \obj1|currentState.ins3~q\,
	datac => \obj1|currentState.ins5~q\,
	datad => \obj1|currentState.ins6~q\,
	combout => \obj1|WideOr1~0_combout\);

-- Location: LCCOMB_X3_Y48_N12
\obj1|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|WideOr1~combout\ = (!\obj1|currentState.dt1~q\ & !\obj1|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \obj1|currentState.dt1~q\,
	datad => \obj1|WideOr1~0_combout\,
	combout => \obj1|WideOr1~combout\);

-- Location: FF_X3_Y48_N13
\obj1|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|WideOr1~combout\,
	ena => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|data\(5));

-- Location: FF_X3_Y48_N9
\obj1|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|WideOr0~combout\,
	ena => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|data\(6));

-- Location: LCCOMB_X4_Y48_N30
\obj1|data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|data[7]~feeder_combout\ = \obj1|currentState.ins6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \obj1|currentState.ins6~q\,
	combout => \obj1|data[7]~feeder_combout\);

-- Location: FF_X4_Y48_N31
\obj1|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obj2|slowClock~clkctrl_outclk\,
	d => \obj1|data[7]~feeder_combout\,
	ena => \key[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obj1|data\(7));

-- Location: IOIBUF_X115_Y14_N1
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\sw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\sw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\sw[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\sw[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\sw[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\sw[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\sw[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\sw[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\sw[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(10),
	o => \sw[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\sw[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(11),
	o => \sw[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\sw[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(12),
	o => \sw[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\sw[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(13),
	o => \sw[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\sw[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(14),
	o => \sw[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\sw[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(15),
	o => \sw[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\sw[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(16),
	o => \sw[16]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\key[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\key[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\key[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

ww_lcd_on <= \lcd_on~output_o\;

ww_lcd_blon <= \lcd_blon~output_o\;

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_lcd_en <= \lcd_en~output_o\;

ww_lcd_data(0) <= \lcd_data[0]~output_o\;

ww_lcd_data(1) <= \lcd_data[1]~output_o\;

ww_lcd_data(2) <= \lcd_data[2]~output_o\;

ww_lcd_data(3) <= \lcd_data[3]~output_o\;

ww_lcd_data(4) <= \lcd_data[4]~output_o\;

ww_lcd_data(5) <= \lcd_data[5]~output_o\;

ww_lcd_data(6) <= \lcd_data[6]~output_o\;

ww_lcd_data(7) <= \lcd_data[7]~output_o\;
END structure;


