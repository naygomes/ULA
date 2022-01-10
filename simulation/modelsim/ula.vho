-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "01/10/2022 12:58:14"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ula IS
    PORT (
	selecao1 : IN std_logic;
	selecao2 : IN std_logic;
	selecao3 : IN std_logic;
	num1 : IN std_logic_vector(3 DOWNTO 0);
	num2 : IN std_logic_vector(3 DOWNTO 0);
	carry0 : IN std_logic;
	saida : OUT std_logic_vector(3 DOWNTO 0);
	flag_carry : OUT std_logic;
	flag_zero : OUT std_logic;
	flag_overflow : OUT std_logic;
	flag_negativo : OUT std_logic
	);
END ula;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag_carry	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag_zero	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag_overflow	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag_negativo	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao1	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num1[0]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry0	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao2	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num2[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao3	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num1[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num2[3]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num1[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num2[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num1[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num2[1]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ula IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_selecao1 : std_logic;
SIGNAL ww_selecao2 : std_logic;
SIGNAL ww_selecao3 : std_logic;
SIGNAL ww_num1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_num2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_carry0 : std_logic;
SIGNAL ww_saida : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_flag_carry : std_logic;
SIGNAL ww_flag_zero : std_logic;
SIGNAL ww_flag_overflow : std_logic;
SIGNAL ww_flag_negativo : std_logic;
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \flag_carry~output_o\ : std_logic;
SIGNAL \flag_zero~output_o\ : std_logic;
SIGNAL \flag_overflow~output_o\ : std_logic;
SIGNAL \flag_negativo~output_o\ : std_logic;
SIGNAL \selecao3~input_o\ : std_logic;
SIGNAL \selecao2~input_o\ : std_logic;
SIGNAL \carry0~input_o\ : std_logic;
SIGNAL \selecao1~input_o\ : std_logic;
SIGNAL \num1[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \num2[0]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \num2[1]~input_o\ : std_logic;
SIGNAL \num1[1]~input_o\ : std_logic;
SIGNAL \compara1|saidaComparador~1_combout\ : std_logic;
SIGNAL \num2[3]~input_o\ : std_logic;
SIGNAL \num2[2]~input_o\ : std_logic;
SIGNAL \num1[3]~input_o\ : std_logic;
SIGNAL \num1[2]~input_o\ : std_logic;
SIGNAL \compara1|saidaComparador~0_combout\ : std_logic;
SIGNAL \compara1|saidaComparador~combout\ : std_logic;
SIGNAL \comp0|s0|saidaComponente~combout\ : std_logic;
SIGNAL \comp0|s2|cout~0_combout\ : std_logic;
SIGNAL \sub0|saidaComponente~combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \comp1|s1|saidaComponente~combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \sub0|cout~0_combout\ : std_logic;
SIGNAL \comp0|s0|cout~combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \soma0|cout~0_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \comp0|s1|cout~0_combout\ : std_logic;
SIGNAL \sub1|cout~0_combout\ : std_logic;
SIGNAL \sub2|saidaComponente~0_combout\ : std_logic;
SIGNAL \i1|cout~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \comp1|s2|saidaComponente~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \comp1|s2|cout~0_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \soma1|cout~0_combout\ : std_logic;
SIGNAL \soma2|cout~0_combout\ : std_logic;
SIGNAL \sub2|cout~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \carry_out~combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \flag_overflow~0_combout\ : std_logic;
SIGNAL \ALT_INV_flag_overflow~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_selecao1 <= selecao1;
ww_selecao2 <= selecao2;
ww_selecao3 <= selecao3;
ww_num1 <= num1;
ww_num2 <= num2;
ww_carry0 <= carry0;
saida <= ww_saida;
flag_carry <= ww_flag_carry;
flag_zero <= ww_flag_zero;
flag_overflow <= ww_flag_overflow;
flag_negativo <= ww_flag_negativo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_flag_overflow~0_combout\ <= NOT \flag_overflow~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y9_N9
\saida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~5_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\saida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~8_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\saida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~4_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\saida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~6_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\flag_carry~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \carry_out~combout\,
	devoe => ww_devoe,
	o => \flag_carry~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\flag_zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \flag_zero~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\flag_overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_flag_overflow~0_combout\,
	devoe => ww_devoe,
	o => \flag_overflow~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\flag_negativo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~6_combout\,
	devoe => ww_devoe,
	o => \flag_negativo~output_o\);

-- Location: IOIBUF_X34_Y9_N1
\selecao3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao3,
	o => \selecao3~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\selecao2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao2,
	o => \selecao2~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\carry0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carry0,
	o => \carry0~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\selecao1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao1,
	o => \selecao1~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\num1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num1(0),
	o => \num1[0]~input_o\);

-- Location: LCCOMB_X32_Y16_N12
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\selecao2~input_o\ & (\selecao1~input_o\ & (\carry0~input_o\ $ (\num1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datab => \carry0~input_o\,
	datac => \selecao1~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X34_Y10_N8
\num2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num2(0),
	o => \num2[0]~input_o\);

-- Location: LCCOMB_X32_Y16_N10
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = \carry0~input_o\ $ (\num1[0]~input_o\ $ (((\num2[0]~input_o\) # (\selecao2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[0]~input_o\,
	datab => \carry0~input_o\,
	datac => \selecao2~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X32_Y16_N20
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (!\selecao3~input_o\ & ((\Mux3~0_combout\) # ((!\selecao1~input_o\ & \Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \selecao1~input_o\,
	datac => \selecao3~input_o\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X34_Y12_N15
\num2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num2(1),
	o => \num2[1]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\num1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num1(1),
	o => \num1[1]~input_o\);

-- Location: LCCOMB_X32_Y17_N8
\compara1|saidaComparador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compara1|saidaComparador~1_combout\ = \num2[1]~input_o\ $ (\num1[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \num2[1]~input_o\,
	datac => \num1[1]~input_o\,
	combout => \compara1|saidaComparador~1_combout\);

-- Location: IOIBUF_X30_Y24_N22
\num2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num2(3),
	o => \num2[3]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\num2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num2(2),
	o => \num2[2]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\num1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num1(3),
	o => \num1[3]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\num1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num1(2),
	o => \num1[2]~input_o\);

-- Location: LCCOMB_X31_Y17_N24
\compara1|saidaComparador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compara1|saidaComparador~0_combout\ = (\num2[3]~input_o\ & ((\num2[2]~input_o\ $ (\num1[2]~input_o\)) # (!\num1[3]~input_o\))) # (!\num2[3]~input_o\ & ((\num1[3]~input_o\) # (\num2[2]~input_o\ $ (\num1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[3]~input_o\,
	datab => \num2[2]~input_o\,
	datac => \num1[3]~input_o\,
	datad => \num1[2]~input_o\,
	combout => \compara1|saidaComparador~0_combout\);

-- Location: LCCOMB_X32_Y17_N22
\compara1|saidaComparador\ : cycloneive_lcell_comb
-- Equation(s):
-- \compara1|saidaComparador~combout\ = (\compara1|saidaComparador~1_combout\) # ((\compara1|saidaComparador~0_combout\) # (\num1[0]~input_o\ $ (\num2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[0]~input_o\,
	datab => \compara1|saidaComparador~1_combout\,
	datac => \num2[0]~input_o\,
	datad => \compara1|saidaComparador~0_combout\,
	combout => \compara1|saidaComparador~combout\);

-- Location: LCCOMB_X32_Y17_N14
\comp0|s0|saidaComponente\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp0|s0|saidaComponente~combout\ = \num2[0]~input_o\ $ (\carry0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \num2[0]~input_o\,
	datad => \carry0~input_o\,
	combout => \comp0|s0|saidaComponente~combout\);

-- Location: LCCOMB_X32_Y17_N20
\comp0|s2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp0|s2|cout~0_combout\ = (!\num2[2]~input_o\ & (!\num2[1]~input_o\ & ((\carry0~input_o\) # (!\num2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[2]~input_o\,
	datab => \num2[0]~input_o\,
	datac => \carry0~input_o\,
	datad => \num2[1]~input_o\,
	combout => \comp0|s2|cout~0_combout\);

-- Location: LCCOMB_X33_Y17_N28
\sub0|saidaComponente\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|saidaComponente~combout\ = \comp0|s0|saidaComponente~combout\ $ (\num1[0]~input_o\ $ (((\comp0|s2|cout~0_combout\ & !\num2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp0|s0|saidaComponente~combout\,
	datab => \comp0|s2|cout~0_combout\,
	datac => \num2[3]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \sub0|saidaComponente~combout\);

-- Location: LCCOMB_X32_Y17_N24
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\selecao1~input_o\ & (((\selecao2~input_o\)))) # (!\selecao1~input_o\ & ((\selecao2~input_o\ & ((\num1[0]~input_o\))) # (!\selecao2~input_o\ & (\sub0|saidaComponente~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao1~input_o\,
	datab => \sub0|saidaComponente~combout\,
	datac => \selecao2~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X31_Y17_N30
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\selecao1~input_o\ & ((\Mux3~3_combout\ & ((\num1[3]~input_o\))) # (!\Mux3~3_combout\ & (!\compara1|saidaComparador~combout\)))) # (!\selecao1~input_o\ & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao1~input_o\,
	datab => \compara1|saidaComparador~combout\,
	datac => \num1[3]~input_o\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X32_Y16_N26
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~2_combout\) # ((\selecao3~input_o\ & \Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao3~input_o\,
	datab => \Mux3~2_combout\,
	datac => \Mux3~4_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X32_Y16_N4
\comp1|s1|saidaComponente\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp1|s1|saidaComponente~combout\ = \num1[1]~input_o\ $ (((\carry0~input_o\) # (!\num1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[1]~input_o\,
	datac => \carry0~input_o\,
	datad => \num1[0]~input_o\,
	combout => \comp1|s1|saidaComponente~combout\);

-- Location: LCCOMB_X32_Y16_N6
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\selecao2~input_o\ & (((\num1[0]~input_o\)))) # (!\selecao2~input_o\ & (!\selecao3~input_o\ & (!\comp1|s1|saidaComponente~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao3~input_o\,
	datab => \comp1|s1|saidaComponente~combout\,
	datac => \selecao2~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X32_Y16_N22
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\selecao3~input_o\ & (((!\selecao2~input_o\)))) # (!\selecao3~input_o\ & (\selecao2~input_o\ & ((\carry0~input_o\) # (\num1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao3~input_o\,
	datab => \carry0~input_o\,
	datac => \selecao2~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X33_Y17_N2
\sub0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|cout~0_combout\ = (\comp0|s0|saidaComponente~combout\ & ((\num1[0]~input_o\) # ((\comp0|s2|cout~0_combout\ & !\num2[3]~input_o\)))) # (!\comp0|s0|saidaComponente~combout\ & (\comp0|s2|cout~0_combout\ & (!\num2[3]~input_o\ & \num1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp0|s0|saidaComponente~combout\,
	datab => \comp0|s2|cout~0_combout\,
	datac => \num2[3]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \sub0|cout~0_combout\);

-- Location: LCCOMB_X32_Y16_N8
\comp0|s0|cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp0|s0|cout~combout\ = (\carry0~input_o\) # (!\num2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \carry0~input_o\,
	datad => \num2[0]~input_o\,
	combout => \comp0|s0|cout~combout\);

-- Location: LCCOMB_X32_Y16_N18
\Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = \sub0|cout~0_combout\ $ (\num2[1]~input_o\ $ (\comp0|s0|cout~combout\ $ (\num1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|cout~0_combout\,
	datab => \num2[1]~input_o\,
	datac => \comp0|s0|cout~combout\,
	datad => \num1[1]~input_o\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X32_Y16_N28
\soma0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \soma0|cout~0_combout\ = (\num2[0]~input_o\ & ((\carry0~input_o\) # (\num1[0]~input_o\))) # (!\num2[0]~input_o\ & (\carry0~input_o\ & \num1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[0]~input_o\,
	datac => \carry0~input_o\,
	datad => \num1[0]~input_o\,
	combout => \soma0|cout~0_combout\);

-- Location: LCCOMB_X32_Y16_N30
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\selecao2~input_o\ & (((\Mux2~5_combout\)))) # (!\selecao2~input_o\ & (!\Mux2~5_combout\ & (\soma0|cout~0_combout\ $ (\num2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datab => \soma0|cout~0_combout\,
	datac => \Mux2~5_combout\,
	datad => \num2[1]~input_o\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X32_Y16_N16
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux2~6_combout\ & (((!\num1[1]~input_o\)))) # (!\Mux2~6_combout\ & ((\Mux2~5_combout\ & (!\Mux2~9_combout\)) # (!\Mux2~5_combout\ & ((\num1[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \Mux2~9_combout\,
	datac => \Mux2~6_combout\,
	datad => \num1[1]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X32_Y16_N2
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\selecao1~input_o\ & (\Mux2~4_combout\)) # (!\selecao1~input_o\ & ((\Mux2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datac => \selecao1~input_o\,
	datad => \Mux2~7_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X32_Y16_N0
\comp0|s1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp0|s1|cout~0_combout\ = (!\num2[1]~input_o\ & ((\carry0~input_o\) # (!\num2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[0]~input_o\,
	datac => \carry0~input_o\,
	datad => \num2[1]~input_o\,
	combout => \comp0|s1|cout~0_combout\);

-- Location: LCCOMB_X32_Y16_N14
\sub1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub1|cout~0_combout\ = (\sub0|cout~0_combout\ & ((\num1[1]~input_o\) # (\num2[1]~input_o\ $ (!\comp0|s0|cout~combout\)))) # (!\sub0|cout~0_combout\ & (\num1[1]~input_o\ & (\num2[1]~input_o\ $ (!\comp0|s0|cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|cout~0_combout\,
	datab => \num2[1]~input_o\,
	datac => \comp0|s0|cout~combout\,
	datad => \num1[1]~input_o\,
	combout => \sub1|cout~0_combout\);

-- Location: LCCOMB_X31_Y17_N12
\sub2|saidaComponente~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub2|saidaComponente~0_combout\ = \comp0|s1|cout~0_combout\ $ (\num2[2]~input_o\ $ (\sub1|cout~0_combout\ $ (\num1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp0|s1|cout~0_combout\,
	datab => \num2[2]~input_o\,
	datac => \sub1|cout~0_combout\,
	datad => \num1[2]~input_o\,
	combout => \sub2|saidaComponente~0_combout\);

-- Location: LCCOMB_X32_Y17_N18
\i1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|cout~0_combout\ = (\num1[1]~input_o\ & ((\carry0~input_o\) # (\num1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry0~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \i1|cout~0_combout\);

-- Location: LCCOMB_X32_Y17_N0
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = \num2[2]~input_o\ $ (((\soma0|cout~0_combout\ & ((\num2[1]~input_o\) # (\num1[1]~input_o\))) # (!\soma0|cout~0_combout\ & (\num2[1]~input_o\ & \num1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma0|cout~0_combout\,
	datab => \num2[1]~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num2[2]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X31_Y17_N18
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\selecao3~input_o\ & (((\selecao2~input_o\)))) # (!\selecao3~input_o\ & ((\selecao2~input_o\ & (\i1|cout~0_combout\)) # (!\selecao2~input_o\ & ((\Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao3~input_o\,
	datab => \i1|cout~0_combout\,
	datac => \Mux1~1_combout\,
	datad => \selecao2~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X31_Y17_N16
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & ((\selecao3~input_o\ $ (!\num1[2]~input_o\)))) # (!\Mux1~2_combout\ & ((\selecao3~input_o\ & (!\sub2|saidaComponente~0_combout\)) # (!\selecao3~input_o\ & ((\num1[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub2|saidaComponente~0_combout\,
	datab => \Mux1~2_combout\,
	datac => \selecao3~input_o\,
	datad => \num1[2]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X32_Y17_N2
\comp1|s2|saidaComponente\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp1|s2|saidaComponente~combout\ = \num1[2]~input_o\ $ (((!\num1[1]~input_o\ & ((\carry0~input_o\) # (!\num1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[2]~input_o\,
	datab => \carry0~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \comp1|s2|saidaComponente~combout\);

-- Location: LCCOMB_X32_Y17_N28
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\selecao2~input_o\ & (((\num1[1]~input_o\)))) # (!\selecao2~input_o\ & (!\selecao3~input_o\ & ((!\comp1|s2|saidaComponente~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao3~input_o\,
	datab => \num1[1]~input_o\,
	datac => \selecao2~input_o\,
	datad => \comp1|s2|saidaComponente~combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X32_Y17_N10
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\selecao1~input_o\ & ((\Mux1~0_combout\))) # (!\selecao1~input_o\ & (\Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datac => \selecao1~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X32_Y17_N16
\comp1|s2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp1|s2|cout~0_combout\ = (!\num1[2]~input_o\ & (!\num1[1]~input_o\ & ((\carry0~input_o\) # (!\num1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[2]~input_o\,
	datab => \carry0~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \comp1|s2|cout~0_combout\);

-- Location: LCCOMB_X33_Y17_N6
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (!\selecao3~input_o\ & (!\selecao2~input_o\ & (\comp1|s2|cout~0_combout\ $ (!\num1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp1|s2|cout~0_combout\,
	datab => \selecao3~input_o\,
	datac => \num1[3]~input_o\,
	datad => \selecao2~input_o\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X33_Y17_N22
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\num1[2]~input_o\ & \selecao2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \num1[2]~input_o\,
	datad => \selecao2~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X32_Y17_N26
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\selecao3~input_o\ & (((\comp0|s2|cout~0_combout\)))) # (!\selecao3~input_o\ & (\num1[2]~input_o\ & (\i1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[2]~input_o\,
	datab => \i1|cout~0_combout\,
	datac => \selecao3~input_o\,
	datad => \comp0|s2|cout~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X32_Y17_N30
\soma1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \soma1|cout~0_combout\ = (\soma0|cout~0_combout\ & ((\num2[1]~input_o\) # (\num1[1]~input_o\))) # (!\soma0|cout~0_combout\ & (\num2[1]~input_o\ & \num1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma0|cout~0_combout\,
	datab => \num2[1]~input_o\,
	datac => \num1[1]~input_o\,
	combout => \soma1|cout~0_combout\);

-- Location: LCCOMB_X32_Y17_N12
\soma2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \soma2|cout~0_combout\ = (\num2[2]~input_o\ & ((\soma1|cout~0_combout\) # (\num1[2]~input_o\))) # (!\num2[2]~input_o\ & (\soma1|cout~0_combout\ & \num1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[2]~input_o\,
	datac => \soma1|cout~0_combout\,
	datad => \num1[2]~input_o\,
	combout => \soma2|cout~0_combout\);

-- Location: LCCOMB_X32_Y17_N4
\sub2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub2|cout~0_combout\ = (\num1[2]~input_o\ & ((\sub1|cout~0_combout\) # (\comp0|s1|cout~0_combout\ $ (!\num2[2]~input_o\)))) # (!\num1[2]~input_o\ & (\sub1|cout~0_combout\ & (\comp0|s1|cout~0_combout\ $ (!\num2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[2]~input_o\,
	datab => \comp0|s1|cout~0_combout\,
	datac => \sub1|cout~0_combout\,
	datad => \num2[2]~input_o\,
	combout => \sub2|cout~0_combout\);

-- Location: LCCOMB_X33_Y17_N16
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = \num2[3]~input_o\ $ (((\selecao3~input_o\ & ((\sub2|cout~0_combout\))) # (!\selecao3~input_o\ & (\soma2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma2|cout~0_combout\,
	datab => \selecao3~input_o\,
	datac => \sub2|cout~0_combout\,
	datad => \num2[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X33_Y17_N14
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = \num1[3]~input_o\ $ (((!\Mux0~1_combout\ & \selecao3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \selecao3~input_o\,
	datac => \num1[3]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X33_Y17_N18
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = \Mux0~2_combout\ $ (((\selecao2~input_o\ & (\Mux0~1_combout\)) # (!\selecao2~input_o\ & ((\Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux0~2_combout\,
	datad => \selecao2~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X33_Y17_N20
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\selecao1~input_o\ & ((\Mux0~5_combout\) # ((\Mux0~4_combout\)))) # (!\selecao1~input_o\ & (((\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datab => \selecao1~input_o\,
	datac => \Mux0~4_combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X33_Y17_N30
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\num1[3]~input_o\ & ((\sub2|cout~0_combout\) # (\num2[3]~input_o\ $ (!\comp0|s2|cout~0_combout\)))) # (!\num1[3]~input_o\ & (\sub2|cout~0_combout\ & (\num2[3]~input_o\ $ (!\comp0|s2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[3]~input_o\,
	datab => \num2[3]~input_o\,
	datac => \sub2|cout~0_combout\,
	datad => \comp0|s2|cout~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X33_Y17_N4
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\num1[3]~input_o\ & (((!\selecao1~input_o\)))) # (!\num1[3]~input_o\ & (!\selecao2~input_o\ & ((\comp1|s2|cout~0_combout\) # (!\selecao1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp1|s2|cout~0_combout\,
	datab => \num1[3]~input_o\,
	datac => \selecao1~input_o\,
	datad => \selecao2~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X33_Y17_N10
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\num2[3]~input_o\ & ((\num1[3]~input_o\) # (\soma2|cout~0_combout\))) # (!\num2[3]~input_o\ & (\num1[3]~input_o\ & \soma2|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \num2[3]~input_o\,
	datac => \num1[3]~input_o\,
	datad => \soma2|cout~0_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X32_Y17_N6
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\num1[2]~input_o\ & (\num1[1]~input_o\ & ((\carry0~input_o\) # (\num1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[2]~input_o\,
	datab => \carry0~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X33_Y17_N26
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\selecao2~input_o\ & (((\Mux4~2_combout\)))) # (!\selecao2~input_o\ & ((\Mux4~3_combout\) # ((\selecao1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \Mux4~2_combout\,
	datac => \selecao1~input_o\,
	datad => \selecao2~input_o\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X33_Y17_N8
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\selecao3~input_o\ & (\Mux4~0_combout\)) # (!\selecao3~input_o\ & (((\Mux4~1_combout\ & \Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \selecao3~input_o\,
	datac => \Mux4~1_combout\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X33_Y17_N12
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\selecao2~input_o\ & ((\selecao3~input_o\) # (\selecao1~input_o\))) # (!\selecao2~input_o\ & (\selecao3~input_o\ & \selecao1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datac => \selecao3~input_o\,
	datad => \selecao1~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X33_Y17_N24
carry_out : cycloneive_lcell_comb
-- Equation(s):
-- \carry_out~combout\ = (\Mux5~0_combout\ & (\carry_out~combout\)) # (!\Mux5~0_combout\ & ((\Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry_out~combout\,
	datac => \Mux4~5_combout\,
	datad => \Mux5~0_combout\,
	combout => \carry_out~combout\);

-- Location: LCCOMB_X32_Y16_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Mux3~5_combout\ & (!\Mux2~8_combout\ & (!\Mux1~4_combout\ & !\Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => \Mux2~8_combout\,
	datac => \Mux1~4_combout\,
	datad => \Mux0~6_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X33_Y17_N0
\flag_overflow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_overflow~0_combout\ = (\Mux0~6_combout\ & ((\num2[3]~input_o\) # (\num1[3]~input_o\))) # (!\Mux0~6_combout\ & ((!\num1[3]~input_o\) # (!\num2[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \num2[3]~input_o\,
	datac => \num1[3]~input_o\,
	combout => \flag_overflow~0_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_flag_carry <= \flag_carry~output_o\;

ww_flag_zero <= \flag_zero~output_o\;

ww_flag_overflow <= \flag_overflow~output_o\;

ww_flag_negativo <= \flag_negativo~output_o\;
END structure;


