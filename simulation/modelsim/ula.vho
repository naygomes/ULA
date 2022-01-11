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

-- DATE "01/11/2022 00:01:53"

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
	saida_bin : OUT std_logic_vector(3 DOWNTO 0);
	seg7_num1 : OUT std_logic_vector(6 DOWNTO 0);
	seg7_num1_s : OUT std_logic_vector(6 DOWNTO 0);
	seg7_num2 : OUT std_logic_vector(6 DOWNTO 0);
	seg7_num2_s : OUT std_logic_vector(6 DOWNTO 0);
	seg7_saida : OUT std_logic_vector(6 DOWNTO 0);
	seg7_s : OUT std_logic_vector(6 DOWNTO 0);
	flag_carry : OUT std_logic;
	flag_zero : OUT std_logic;
	flag_overflow : OUT std_logic;
	flag_negativo : OUT std_logic
	);
END ula;

-- Design Ports Information
-- saida_bin[0]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_bin[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_bin[2]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_bin[3]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num1[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num1[1]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num1[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num1[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num1[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num1[5]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num1[6]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num1_s[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num1_s[1]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num1_s[2]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num1_s[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num1_s[4]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num1_s[5]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num1_s[6]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num2[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num2[1]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num2[2]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num2[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num2[4]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num2[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num2[6]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num2_s[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num2_s[1]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num2_s[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num2_s[3]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num2_s[4]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num2_s[5]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_num2_s[6]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_saida[0]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_saida[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_saida[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_saida[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_saida[4]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_saida[5]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_saida[6]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_s[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_s[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_s[2]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_s[3]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_s[4]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_s[5]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_s[6]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag_carry	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag_zero	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag_overflow	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag_negativo	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao3	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num1[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num2[3]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num2[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num1[2]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num1[0]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num2[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num1[1]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num2[0]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao2	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao1	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_saida_bin : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg7_num1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_num1_s : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_num2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_num2_s : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_saida : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_s : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_flag_carry : std_logic;
SIGNAL ww_flag_zero : std_logic;
SIGNAL ww_flag_overflow : std_logic;
SIGNAL ww_flag_negativo : std_logic;
SIGNAL \saida_bin[0]~output_o\ : std_logic;
SIGNAL \saida_bin[1]~output_o\ : std_logic;
SIGNAL \saida_bin[2]~output_o\ : std_logic;
SIGNAL \saida_bin[3]~output_o\ : std_logic;
SIGNAL \seg7_num1[0]~output_o\ : std_logic;
SIGNAL \seg7_num1[1]~output_o\ : std_logic;
SIGNAL \seg7_num1[2]~output_o\ : std_logic;
SIGNAL \seg7_num1[3]~output_o\ : std_logic;
SIGNAL \seg7_num1[4]~output_o\ : std_logic;
SIGNAL \seg7_num1[5]~output_o\ : std_logic;
SIGNAL \seg7_num1[6]~output_o\ : std_logic;
SIGNAL \seg7_num1_s[0]~output_o\ : std_logic;
SIGNAL \seg7_num1_s[1]~output_o\ : std_logic;
SIGNAL \seg7_num1_s[2]~output_o\ : std_logic;
SIGNAL \seg7_num1_s[3]~output_o\ : std_logic;
SIGNAL \seg7_num1_s[4]~output_o\ : std_logic;
SIGNAL \seg7_num1_s[5]~output_o\ : std_logic;
SIGNAL \seg7_num1_s[6]~output_o\ : std_logic;
SIGNAL \seg7_num2[0]~output_o\ : std_logic;
SIGNAL \seg7_num2[1]~output_o\ : std_logic;
SIGNAL \seg7_num2[2]~output_o\ : std_logic;
SIGNAL \seg7_num2[3]~output_o\ : std_logic;
SIGNAL \seg7_num2[4]~output_o\ : std_logic;
SIGNAL \seg7_num2[5]~output_o\ : std_logic;
SIGNAL \seg7_num2[6]~output_o\ : std_logic;
SIGNAL \seg7_num2_s[0]~output_o\ : std_logic;
SIGNAL \seg7_num2_s[1]~output_o\ : std_logic;
SIGNAL \seg7_num2_s[2]~output_o\ : std_logic;
SIGNAL \seg7_num2_s[3]~output_o\ : std_logic;
SIGNAL \seg7_num2_s[4]~output_o\ : std_logic;
SIGNAL \seg7_num2_s[5]~output_o\ : std_logic;
SIGNAL \seg7_num2_s[6]~output_o\ : std_logic;
SIGNAL \seg7_saida[0]~output_o\ : std_logic;
SIGNAL \seg7_saida[1]~output_o\ : std_logic;
SIGNAL \seg7_saida[2]~output_o\ : std_logic;
SIGNAL \seg7_saida[3]~output_o\ : std_logic;
SIGNAL \seg7_saida[4]~output_o\ : std_logic;
SIGNAL \seg7_saida[5]~output_o\ : std_logic;
SIGNAL \seg7_saida[6]~output_o\ : std_logic;
SIGNAL \seg7_s[0]~output_o\ : std_logic;
SIGNAL \seg7_s[1]~output_o\ : std_logic;
SIGNAL \seg7_s[2]~output_o\ : std_logic;
SIGNAL \seg7_s[3]~output_o\ : std_logic;
SIGNAL \seg7_s[4]~output_o\ : std_logic;
SIGNAL \seg7_s[5]~output_o\ : std_logic;
SIGNAL \seg7_s[6]~output_o\ : std_logic;
SIGNAL \flag_carry~output_o\ : std_logic;
SIGNAL \flag_zero~output_o\ : std_logic;
SIGNAL \flag_overflow~output_o\ : std_logic;
SIGNAL \flag_negativo~output_o\ : std_logic;
SIGNAL \selecao2~input_o\ : std_logic;
SIGNAL \num2[1]~input_o\ : std_logic;
SIGNAL \num2[0]~input_o\ : std_logic;
SIGNAL \num2[2]~input_o\ : std_logic;
SIGNAL \comp0|s2|cout~0_combout\ : std_logic;
SIGNAL \num1[0]~input_o\ : std_logic;
SIGNAL \num2[3]~input_o\ : std_logic;
SIGNAL \sub0|saidaComponente~combout\ : std_logic;
SIGNAL \selecao3~input_o\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \selecao1~input_o\ : std_logic;
SIGNAL \num1[2]~input_o\ : std_logic;
SIGNAL \num1[3]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \num1[1]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \soma1|saidaComponente~combout\ : std_logic;
SIGNAL \sub0|cout~0_combout\ : std_logic;
SIGNAL \sub1|saidaComponente~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \sub1|cout~0_combout\ : std_logic;
SIGNAL \i1|cout~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \soma1|cout~0_combout\ : std_logic;
SIGNAL \comp0|s1|cout~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \comp1|s2|saidaComponente~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \sub2|cout~0_combout\ : std_logic;
SIGNAL \sub3|saidaComponente~0_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \comp1|s3|saidaComponente~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~7_combout\ : std_logic;
SIGNAL \Mux25~10_combout\ : std_logic;
SIGNAL \Mux25~8_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \Mux25~9_combout\ : std_logic;
SIGNAL \carry_out~combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \flag_overflow~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_flag_overflow~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;

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
saida_bin <= ww_saida_bin;
seg7_num1 <= ww_seg7_num1;
seg7_num1_s <= ww_seg7_num1_s;
seg7_num2 <= ww_seg7_num2;
seg7_num2_s <= ww_seg7_num2_s;
seg7_saida <= ww_seg7_saida;
seg7_s <= ww_seg7_s;
flag_carry <= ww_flag_carry;
flag_zero <= ww_flag_zero;
flag_overflow <= ww_flag_overflow;
flag_negativo <= ww_flag_negativo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_flag_overflow~0_combout\ <= NOT \flag_overflow~0_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y24_N2
\saida_bin[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~6_combout\,
	devoe => ww_devoe,
	o => \saida_bin[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\saida_bin[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~3_combout\,
	devoe => ww_devoe,
	o => \saida_bin[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\saida_bin[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~4_combout\,
	devoe => ww_devoe,
	o => \saida_bin[2]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\saida_bin[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~5_combout\,
	devoe => ww_devoe,
	o => \saida_bin[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\seg7_num1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \seg7_num1[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\seg7_num1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux9~0_combout\,
	devoe => ww_devoe,
	o => \seg7_num1[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\seg7_num1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => \seg7_num1[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\seg7_num1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \seg7_num1[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\seg7_num1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg7_num1[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\seg7_num1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seg7_num1[5]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\seg7_num1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seg7_num1[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\seg7_num1_s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \num1[3]~input_o\,
	devoe => ww_devoe,
	o => \seg7_num1_s[0]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\seg7_num1_s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_num1_s[1]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\seg7_num1_s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_num1_s[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\seg7_num1_s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_num1_s[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\seg7_num1_s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_num1_s[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\seg7_num1_s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_num1_s[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\seg7_num1_s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_num1_s[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\seg7_num2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \seg7_num2[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\seg7_num2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux16~0_combout\,
	devoe => ww_devoe,
	o => \seg7_num2[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\seg7_num2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux15~0_combout\,
	devoe => ww_devoe,
	o => \seg7_num2[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\seg7_num2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \seg7_num2[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\seg7_num2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \seg7_num2[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\seg7_num2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \seg7_num2[5]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\seg7_num2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \seg7_num2[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\seg7_num2_s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \num2[3]~input_o\,
	devoe => ww_devoe,
	o => \seg7_num2_s[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\seg7_num2_s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_num2_s[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\seg7_num2_s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_num2_s[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\seg7_num2_s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_num2_s[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\seg7_num2_s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_num2_s[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\seg7_num2_s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_num2_s[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\seg7_num2_s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_num2_s[6]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\seg7_saida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \seg7_saida[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\seg7_saida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux23~0_combout\,
	devoe => ww_devoe,
	o => \seg7_saida[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\seg7_saida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux22~0_combout\,
	devoe => ww_devoe,
	o => \seg7_saida[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\seg7_saida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \seg7_saida[3]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\seg7_saida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux20~0_combout\,
	devoe => ww_devoe,
	o => \seg7_saida[4]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\seg7_saida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \seg7_saida[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\seg7_saida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \seg7_saida[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\seg7_s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~5_combout\,
	devoe => ww_devoe,
	o => \seg7_s[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\seg7_s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_s[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\seg7_s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_s[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\seg7_s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_s[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\seg7_s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_s[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\seg7_s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_s[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\seg7_s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_s[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
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

-- Location: IOOBUF_X16_Y24_N2
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

-- Location: IOOBUF_X0_Y21_N9
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

-- Location: IOOBUF_X34_Y9_N16
\flag_negativo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~5_combout\,
	devoe => ww_devoe,
	o => \flag_negativo~output_o\);

-- Location: IOIBUF_X28_Y24_N8
\selecao2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao2,
	o => \selecao2~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\num2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num2(1),
	o => \num2[1]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\num2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num2(0),
	o => \num2[0]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\num2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num2(2),
	o => \num2[2]~input_o\);

-- Location: LCCOMB_X25_Y20_N26
\comp0|s2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp0|s2|cout~0_combout\ = (\num2[1]~input_o\) # ((\num2[0]~input_o\) # (\num2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[1]~input_o\,
	datac => \num2[0]~input_o\,
	datad => \num2[2]~input_o\,
	combout => \comp0|s2|cout~0_combout\);

-- Location: IOIBUF_X34_Y18_N15
\num1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num1(0),
	o => \num1[0]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\num2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num2(3),
	o => \num2[3]~input_o\);

-- Location: LCCOMB_X25_Y20_N16
\sub0|saidaComponente\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|saidaComponente~combout\ = \num2[0]~input_o\ $ (\num1[0]~input_o\ $ (((\comp0|s2|cout~0_combout\) # (\num2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp0|s2|cout~0_combout\,
	datab => \num2[0]~input_o\,
	datac => \num1[0]~input_o\,
	datad => \num2[3]~input_o\,
	combout => \sub0|saidaComponente~combout\);

-- Location: IOIBUF_X34_Y20_N8
\selecao3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao3,
	o => \selecao3~input_o\);

-- Location: LCCOMB_X24_Y20_N10
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\selecao3~input_o\ & ((\selecao2~input_o\ & ((\num1[0]~input_o\))) # (!\selecao2~input_o\ & (!\sub0|saidaComponente~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datab => \sub0|saidaComponente~combout\,
	datac => \num1[0]~input_o\,
	datad => \selecao3~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X24_Y20_N8
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (!\selecao3~input_o\ & (\num1[0]~input_o\ $ (((\selecao2~input_o\) # (\num2[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datab => \selecao3~input_o\,
	datac => \num1[0]~input_o\,
	datad => \num2[0]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: IOIBUF_X23_Y24_N1
\selecao1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao1,
	o => \selecao1~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\num1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num1(2),
	o => \num1[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\num1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num1(3),
	o => \num1[3]~input_o\);

-- Location: LCCOMB_X23_Y22_N20
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\num2[2]~input_o\ & (\num1[2]~input_o\ & (\num1[3]~input_o\ $ (!\num2[3]~input_o\)))) # (!\num2[2]~input_o\ & (!\num1[2]~input_o\ & (\num1[3]~input_o\ $ (!\num2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[2]~input_o\,
	datab => \num1[2]~input_o\,
	datac => \num1[3]~input_o\,
	datad => \num2[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X34_Y19_N15
\num1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num1(1),
	o => \num1[1]~input_o\);

-- Location: LCCOMB_X25_Y20_N0
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\num1[1]~input_o\ & (\num2[1]~input_o\ & (\num2[0]~input_o\ $ (!\num1[0]~input_o\)))) # (!\num1[1]~input_o\ & (!\num2[1]~input_o\ & (\num2[0]~input_o\ $ (!\num1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[1]~input_o\,
	datab => \num2[0]~input_o\,
	datac => \num2[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X24_Y20_N24
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\selecao3~input_o\ & (\Mux3~0_combout\ & (\Mux3~1_combout\))) # (!\selecao3~input_o\ & (((\num1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux3~1_combout\,
	datac => \num1[0]~input_o\,
	datad => \selecao3~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X24_Y20_N18
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\selecao2~input_o\ & (((\num1[3]~input_o\ & \selecao3~input_o\)))) # (!\selecao2~input_o\ & (\Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datab => \Mux3~2_combout\,
	datac => \num1[3]~input_o\,
	datad => \selecao3~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X24_Y20_N0
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\selecao1~input_o\ & (((\Mux3~3_combout\)))) # (!\selecao1~input_o\ & ((\Mux3~5_combout\) # ((\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => \Mux3~4_combout\,
	datac => \selecao1~input_o\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X25_Y20_N18
\soma1|saidaComponente\ : cycloneive_lcell_comb
-- Equation(s):
-- \soma1|saidaComponente~combout\ = \num1[1]~input_o\ $ (\num2[1]~input_o\ $ (((\num2[0]~input_o\ & \num1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[1]~input_o\,
	datab => \num2[0]~input_o\,
	datac => \num2[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \soma1|saidaComponente~combout\);

-- Location: LCCOMB_X25_Y20_N2
\sub0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|cout~0_combout\ = (\num2[0]~input_o\ & ((\num1[0]~input_o\) # ((!\comp0|s2|cout~0_combout\ & !\num2[3]~input_o\)))) # (!\num2[0]~input_o\ & (!\comp0|s2|cout~0_combout\ & (\num1[0]~input_o\ & !\num2[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp0|s2|cout~0_combout\,
	datab => \num2[0]~input_o\,
	datac => \num1[0]~input_o\,
	datad => \num2[3]~input_o\,
	combout => \sub0|cout~0_combout\);

-- Location: LCCOMB_X25_Y20_N8
\sub1|saidaComponente~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub1|saidaComponente~0_combout\ = \num1[1]~input_o\ $ (\num2[0]~input_o\ $ (\num2[1]~input_o\ $ (\sub0|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[1]~input_o\,
	datab => \num2[0]~input_o\,
	datac => \num2[1]~input_o\,
	datad => \sub0|cout~0_combout\,
	combout => \sub1|saidaComponente~0_combout\);

-- Location: LCCOMB_X24_Y20_N20
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\selecao2~input_o\ & (((\selecao3~input_o\)))) # (!\selecao2~input_o\ & ((\selecao3~input_o\ & ((\sub1|saidaComponente~0_combout\))) # (!\selecao3~input_o\ & (\soma1|saidaComponente~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datab => \soma1|saidaComponente~combout\,
	datac => \sub1|saidaComponente~0_combout\,
	datad => \selecao3~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X24_Y20_N22
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\selecao2~input_o\ & (\num1[1]~input_o\ $ (((\num1[0]~input_o\ & !\Mux2~1_combout\))))) # (!\selecao2~input_o\ & (((\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datab => \num1[0]~input_o\,
	datac => \num1[1]~input_o\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X24_Y20_N14
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\selecao2~input_o\ & (\num1[0]~input_o\)) # (!\selecao2~input_o\ & (!\selecao3~input_o\ & (\num1[0]~input_o\ $ (\num1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datab => \num1[0]~input_o\,
	datac => \num1[1]~input_o\,
	datad => \selecao3~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X24_Y20_N4
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\selecao1~input_o\ & ((\Mux2~0_combout\))) # (!\selecao1~input_o\ & (\Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux2~0_combout\,
	datac => \selecao1~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X25_Y20_N28
\sub1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub1|cout~0_combout\ = (\num1[1]~input_o\ & ((\sub0|cout~0_combout\) # (\num2[0]~input_o\ $ (\num2[1]~input_o\)))) # (!\num1[1]~input_o\ & (\sub0|cout~0_combout\ & (\num2[0]~input_o\ $ (\num2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[1]~input_o\,
	datab => \num2[0]~input_o\,
	datac => \num2[1]~input_o\,
	datad => \sub0|cout~0_combout\,
	combout => \sub1|cout~0_combout\);

-- Location: LCCOMB_X22_Y20_N16
\i1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|cout~0_combout\ = (\num1[1]~input_o\ & \num1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \i1|cout~0_combout\);

-- Location: LCCOMB_X24_Y20_N12
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\selecao2~input_o\ & (((\i1|cout~0_combout\ & !\selecao3~input_o\)))) # (!\selecao2~input_o\ & (\sub1|cout~0_combout\ & ((\selecao3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datab => \sub1|cout~0_combout\,
	datac => \i1|cout~0_combout\,
	datad => \selecao3~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X25_Y20_N30
\soma1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \soma1|cout~0_combout\ = (\num1[1]~input_o\ & ((\num2[1]~input_o\) # ((\num2[0]~input_o\ & \num1[0]~input_o\)))) # (!\num1[1]~input_o\ & (\num2[0]~input_o\ & (\num2[1]~input_o\ & \num1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[1]~input_o\,
	datab => \num2[0]~input_o\,
	datac => \num2[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \soma1|cout~0_combout\);

-- Location: LCCOMB_X25_Y20_N12
\comp0|s1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp0|s1|cout~0_combout\ = (\num2[1]~input_o\) # (\num2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[1]~input_o\,
	datac => \num2[0]~input_o\,
	combout => \comp0|s1|cout~0_combout\);

-- Location: LCCOMB_X24_Y20_N2
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = \num2[2]~input_o\ $ (((\selecao3~input_o\ & ((\comp0|s1|cout~0_combout\))) # (!\selecao3~input_o\ & (\soma1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[2]~input_o\,
	datab => \soma1|cout~0_combout\,
	datac => \comp0|s1|cout~0_combout\,
	datad => \selecao3~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X24_Y20_N6
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = \Mux1~2_combout\ $ (\num1[2]~input_o\ $ (((\Mux1~1_combout\ & !\selecao2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux1~1_combout\,
	datac => \num1[2]~input_o\,
	datad => \selecao2~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X24_Y20_N30
\comp1|s2|saidaComponente\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp1|s2|saidaComponente~combout\ = \num1[2]~input_o\ $ (((\num1[1]~input_o\) # (\num1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[1]~input_o\,
	datab => \num1[2]~input_o\,
	datac => \num1[0]~input_o\,
	combout => \comp1|s2|saidaComponente~combout\);

-- Location: LCCOMB_X24_Y20_N28
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\selecao2~input_o\ & (((\num1[1]~input_o\)))) # (!\selecao2~input_o\ & (\comp1|s2|saidaComponente~combout\ & (!\selecao3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp1|s2|saidaComponente~combout\,
	datab => \selecao3~input_o\,
	datac => \num1[1]~input_o\,
	datad => \selecao2~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X24_Y20_N16
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

-- Location: LCCOMB_X22_Y20_N26
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\num1[2]~input_o\ & (((\num1[1]~input_o\ & \num1[0]~input_o\)) # (!\selecao2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[2]~input_o\,
	datab => \selecao2~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X23_Y20_N2
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\ & ((\soma1|cout~0_combout\) # ((\num2[2]~input_o\) # (\selecao2~input_o\)))) # (!\Mux0~1_combout\ & (\soma1|cout~0_combout\ & (\num2[2]~input_o\ & !\selecao2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \soma1|cout~0_combout\,
	datac => \num2[2]~input_o\,
	datad => \selecao2~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X23_Y20_N10
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\selecao3~input_o\ & (\selecao2~input_o\)) # (!\selecao3~input_o\ & (\Mux0~2_combout\ $ (((!\selecao2~input_o\ & \num2[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datab => \num2[3]~input_o\,
	datac => \Mux0~2_combout\,
	datad => \selecao3~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X24_Y20_N26
\sub2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub2|cout~0_combout\ = (\num1[2]~input_o\ & ((\sub1|cout~0_combout\) # (\num2[2]~input_o\ $ (\comp0|s1|cout~0_combout\)))) # (!\num1[2]~input_o\ & (\sub1|cout~0_combout\ & (\num2[2]~input_o\ $ (\comp0|s1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[2]~input_o\,
	datab => \num1[2]~input_o\,
	datac => \comp0|s1|cout~0_combout\,
	datad => \sub1|cout~0_combout\,
	combout => \sub2|cout~0_combout\);

-- Location: LCCOMB_X23_Y20_N16
\sub3|saidaComponente~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub3|saidaComponente~0_combout\ = \comp0|s2|cout~0_combout\ $ (\sub2|cout~0_combout\ $ (\num1[3]~input_o\ $ (\num2[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp0|s2|cout~0_combout\,
	datab => \sub2|cout~0_combout\,
	datac => \num1[3]~input_o\,
	datad => \num2[3]~input_o\,
	combout => \sub3|saidaComponente~0_combout\);

-- Location: LCCOMB_X23_Y20_N28
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux0~3_combout\ & (((!\num1[3]~input_o\)))) # (!\Mux0~3_combout\ & ((\selecao3~input_o\ & (\sub3|saidaComponente~0_combout\)) # (!\selecao3~input_o\ & ((\num1[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \sub3|saidaComponente~0_combout\,
	datac => \num1[3]~input_o\,
	datad => \selecao3~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X23_Y20_N24
\comp1|s3|saidaComponente\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp1|s3|saidaComponente~combout\ = \num1[3]~input_o\ $ (((\num1[2]~input_o\) # ((\num1[1]~input_o\) # (\num1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[3]~input_o\,
	datab => \num1[2]~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \comp1|s3|saidaComponente~combout\);

-- Location: LCCOMB_X23_Y20_N18
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\selecao2~input_o\ & (((\num1[2]~input_o\)))) # (!\selecao2~input_o\ & (\comp1|s3|saidaComponente~combout\ & ((!\selecao3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datab => \comp1|s3|saidaComponente~combout\,
	datac => \num1[2]~input_o\,
	datad => \selecao3~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X23_Y20_N22
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\selecao1~input_o\ & ((\Mux0~0_combout\))) # (!\selecao1~input_o\ & (\Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~4_combout\,
	datac => \selecao1~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X22_Y20_N8
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\num1[2]~input_o\ & ((!\num1[0]~input_o\) # (!\num1[1]~input_o\))) # (!\num1[2]~input_o\ & (\num1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[2]~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X22_Y20_N2
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\num1[2]~input_o\ & (\num1[1]~input_o\ & \num1[0]~input_o\)) # (!\num1[2]~input_o\ & ((\num1[1]~input_o\) # (\num1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[2]~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X22_Y20_N12
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\num1[0]~input_o\) # ((\num1[2]~input_o\ & !\num1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[2]~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X22_Y20_N10
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\num1[2]~input_o\ & (\num1[1]~input_o\ $ (\num1[0]~input_o\))) # (!\num1[2]~input_o\ & ((\num1[1]~input_o\) # (!\num1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[2]~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X22_Y20_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\num1[2]~input_o\ & (\num1[1]~input_o\ & !\num1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[2]~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X22_Y20_N22
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\num1[1]~input_o\ $ (!\num1[0]~input_o\)) # (!\num1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[2]~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X22_Y20_N28
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\num1[1]~input_o\) # (\num1[2]~input_o\ $ (!\num1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[2]~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X25_Y20_N6
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\num2[1]~input_o\ & ((!\num2[2]~input_o\) # (!\num2[0]~input_o\))) # (!\num2[1]~input_o\ & ((\num2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[1]~input_o\,
	datac => \num2[0]~input_o\,
	datad => \num2[2]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X25_Y20_N4
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\num2[1]~input_o\ & ((\num2[0]~input_o\) # (!\num2[2]~input_o\))) # (!\num2[1]~input_o\ & (\num2[0]~input_o\ & !\num2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[1]~input_o\,
	datac => \num2[0]~input_o\,
	datad => \num2[2]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X25_Y20_N14
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\num2[0]~input_o\) # ((!\num2[1]~input_o\ & \num2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[1]~input_o\,
	datac => \num2[0]~input_o\,
	datad => \num2[2]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X25_Y20_N24
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\num2[1]~input_o\ & ((!\num2[2]~input_o\) # (!\num2[0]~input_o\))) # (!\num2[1]~input_o\ & (\num2[0]~input_o\ $ (!\num2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[1]~input_o\,
	datac => \num2[0]~input_o\,
	datad => \num2[2]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X25_Y20_N10
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\num2[1]~input_o\ & (!\num2[0]~input_o\ & !\num2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[1]~input_o\,
	datac => \num2[0]~input_o\,
	datad => \num2[2]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X25_Y20_N20
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\num2[1]~input_o\ $ (!\num2[0]~input_o\)) # (!\num2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[1]~input_o\,
	datac => \num2[0]~input_o\,
	datad => \num2[2]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X25_Y20_N22
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\num2[1]~input_o\) # (\num2[0]~input_o\ $ (!\num2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num2[1]~input_o\,
	datac => \num2[0]~input_o\,
	datad => \num2[2]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X23_Y22_N6
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Mux2~3_combout\ & ((!\Mux3~6_combout\) # (!\Mux1~4_combout\))) # (!\Mux2~3_combout\ & (\Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datac => \Mux1~4_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X23_Y22_N4
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Mux2~3_combout\ & ((\Mux3~6_combout\) # (!\Mux1~4_combout\))) # (!\Mux2~3_combout\ & (!\Mux1~4_combout\ & \Mux3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datac => \Mux1~4_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X23_Y22_N26
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux3~6_combout\) # ((!\Mux2~3_combout\ & \Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datac => \Mux1~4_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X23_Y22_N28
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux2~3_combout\ & ((!\Mux3~6_combout\) # (!\Mux1~4_combout\))) # (!\Mux2~3_combout\ & (\Mux1~4_combout\ $ (!\Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datac => \Mux1~4_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X23_Y22_N18
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux2~3_combout\ & (!\Mux1~4_combout\ & !\Mux3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datac => \Mux1~4_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X23_Y22_N24
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux2~3_combout\ $ (!\Mux3~6_combout\)) # (!\Mux1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datac => \Mux1~4_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X23_Y22_N10
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux2~3_combout\) # (\Mux1~4_combout\ $ (!\Mux3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datac => \Mux1~4_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X23_Y20_N30
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\selecao2~input_o\ & ((\selecao3~input_o\) # (\selecao1~input_o\))) # (!\selecao2~input_o\ & (\selecao3~input_o\ & \selecao1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datab => \selecao3~input_o\,
	datad => \selecao1~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X23_Y20_N6
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\num1[3]~input_o\ & ((\num2[3]~input_o\) # ((\soma1|cout~0_combout\ & \num2[2]~input_o\)))) # (!\num1[3]~input_o\ & (\soma1|cout~0_combout\ & (\num2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[3]~input_o\,
	datab => \soma1|cout~0_combout\,
	datac => \num2[2]~input_o\,
	datad => \num2[3]~input_o\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X23_Y20_N12
\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\num1[2]~input_o\ & (((!\selecao1~input_o\)))) # (!\num1[2]~input_o\ & ((\selecao1~input_o\) # ((!\selecao2~input_o\ & \Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datab => \num1[2]~input_o\,
	datac => \Mux25~2_combout\,
	datad => \selecao1~input_o\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X23_Y20_N0
\Mux25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~7_combout\ = (\sub2|cout~0_combout\ & ((\num1[3]~input_o\) # (\comp0|s2|cout~0_combout\ $ (\num2[3]~input_o\)))) # (!\sub2|cout~0_combout\ & (\num1[3]~input_o\ & (\comp0|s2|cout~0_combout\ $ (\num2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp0|s2|cout~0_combout\,
	datab => \sub2|cout~0_combout\,
	datac => \num1[3]~input_o\,
	datad => \num2[3]~input_o\,
	combout => \Mux25~7_combout\);

-- Location: LCCOMB_X22_Y20_N4
\Mux25~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~10_combout\ = (\num1[3]~input_o\ & (\num1[1]~input_o\ & \num1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[3]~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux25~10_combout\);

-- Location: LCCOMB_X23_Y20_N14
\Mux25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~8_combout\ = (\selecao3~input_o\ & (((\Mux25~7_combout\)))) # (!\selecao3~input_o\ & (((\Mux25~10_combout\)) # (!\selecao2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datab => \Mux25~7_combout\,
	datac => \Mux25~10_combout\,
	datad => \selecao3~input_o\,
	combout => \Mux25~8_combout\);

-- Location: LCCOMB_X23_Y20_N20
\Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\num1[3]~input_o\ & ((\soma1|cout~0_combout\) # ((\num2[2]~input_o\) # (\num2[3]~input_o\)))) # (!\num1[3]~input_o\ & (\num2[3]~input_o\ & ((\soma1|cout~0_combout\) # (\num2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[3]~input_o\,
	datab => \soma1|cout~0_combout\,
	datac => \num2[2]~input_o\,
	datad => \num2[3]~input_o\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X22_Y20_N6
\Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (!\num1[3]~input_o\ & (!\selecao2~input_o\ & (!\num1[1]~input_o\ & !\num1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num1[3]~input_o\,
	datab => \selecao2~input_o\,
	datac => \num1[1]~input_o\,
	datad => \num1[0]~input_o\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X23_Y20_N4
\Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (\selecao1~input_o\ & (((\Mux25~5_combout\)))) # (!\selecao1~input_o\ & ((\selecao2~input_o\) # ((\Mux25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao2~input_o\,
	datab => \Mux25~4_combout\,
	datac => \Mux25~5_combout\,
	datad => \selecao1~input_o\,
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X23_Y20_N8
\Mux25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~9_combout\ = (\Mux25~8_combout\ & ((\selecao3~input_o\) # ((\Mux25~3_combout\ & \Mux25~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~3_combout\,
	datab => \selecao3~input_o\,
	datac => \Mux25~8_combout\,
	datad => \Mux25~6_combout\,
	combout => \Mux25~9_combout\);

-- Location: LCCOMB_X23_Y20_N26
carry_out : cycloneive_lcell_comb
-- Equation(s):
-- \carry_out~combout\ = (\Mux26~0_combout\ & (\carry_out~combout\)) # (!\Mux26~0_combout\ & ((\Mux25~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry_out~combout\,
	datac => \Mux26~0_combout\,
	datad => \Mux25~9_combout\,
	combout => \carry_out~combout\);

-- Location: LCCOMB_X23_Y22_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Mux0~5_combout\ & (!\Mux1~4_combout\ & (!\Mux2~3_combout\ & !\Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datab => \Mux1~4_combout\,
	datac => \Mux2~3_combout\,
	datad => \Mux3~6_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X23_Y22_N30
\flag_overflow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_overflow~0_combout\ = (\Mux0~5_combout\ & ((\num1[3]~input_o\) # (\num2[3]~input_o\))) # (!\Mux0~5_combout\ & ((!\num2[3]~input_o\) # (!\num1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datac => \num1[3]~input_o\,
	datad => \num2[3]~input_o\,
	combout => \flag_overflow~0_combout\);

ww_saida_bin(0) <= \saida_bin[0]~output_o\;

ww_saida_bin(1) <= \saida_bin[1]~output_o\;

ww_saida_bin(2) <= \saida_bin[2]~output_o\;

ww_saida_bin(3) <= \saida_bin[3]~output_o\;

ww_seg7_num1(0) <= \seg7_num1[0]~output_o\;

ww_seg7_num1(1) <= \seg7_num1[1]~output_o\;

ww_seg7_num1(2) <= \seg7_num1[2]~output_o\;

ww_seg7_num1(3) <= \seg7_num1[3]~output_o\;

ww_seg7_num1(4) <= \seg7_num1[4]~output_o\;

ww_seg7_num1(5) <= \seg7_num1[5]~output_o\;

ww_seg7_num1(6) <= \seg7_num1[6]~output_o\;

ww_seg7_num1_s(0) <= \seg7_num1_s[0]~output_o\;

ww_seg7_num1_s(1) <= \seg7_num1_s[1]~output_o\;

ww_seg7_num1_s(2) <= \seg7_num1_s[2]~output_o\;

ww_seg7_num1_s(3) <= \seg7_num1_s[3]~output_o\;

ww_seg7_num1_s(4) <= \seg7_num1_s[4]~output_o\;

ww_seg7_num1_s(5) <= \seg7_num1_s[5]~output_o\;

ww_seg7_num1_s(6) <= \seg7_num1_s[6]~output_o\;

ww_seg7_num2(0) <= \seg7_num2[0]~output_o\;

ww_seg7_num2(1) <= \seg7_num2[1]~output_o\;

ww_seg7_num2(2) <= \seg7_num2[2]~output_o\;

ww_seg7_num2(3) <= \seg7_num2[3]~output_o\;

ww_seg7_num2(4) <= \seg7_num2[4]~output_o\;

ww_seg7_num2(5) <= \seg7_num2[5]~output_o\;

ww_seg7_num2(6) <= \seg7_num2[6]~output_o\;

ww_seg7_num2_s(0) <= \seg7_num2_s[0]~output_o\;

ww_seg7_num2_s(1) <= \seg7_num2_s[1]~output_o\;

ww_seg7_num2_s(2) <= \seg7_num2_s[2]~output_o\;

ww_seg7_num2_s(3) <= \seg7_num2_s[3]~output_o\;

ww_seg7_num2_s(4) <= \seg7_num2_s[4]~output_o\;

ww_seg7_num2_s(5) <= \seg7_num2_s[5]~output_o\;

ww_seg7_num2_s(6) <= \seg7_num2_s[6]~output_o\;

ww_seg7_saida(0) <= \seg7_saida[0]~output_o\;

ww_seg7_saida(1) <= \seg7_saida[1]~output_o\;

ww_seg7_saida(2) <= \seg7_saida[2]~output_o\;

ww_seg7_saida(3) <= \seg7_saida[3]~output_o\;

ww_seg7_saida(4) <= \seg7_saida[4]~output_o\;

ww_seg7_saida(5) <= \seg7_saida[5]~output_o\;

ww_seg7_saida(6) <= \seg7_saida[6]~output_o\;

ww_seg7_s(0) <= \seg7_s[0]~output_o\;

ww_seg7_s(1) <= \seg7_s[1]~output_o\;

ww_seg7_s(2) <= \seg7_s[2]~output_o\;

ww_seg7_s(3) <= \seg7_s[3]~output_o\;

ww_seg7_s(4) <= \seg7_s[4]~output_o\;

ww_seg7_s(5) <= \seg7_s[5]~output_o\;

ww_seg7_s(6) <= \seg7_s[6]~output_o\;

ww_flag_carry <= \flag_carry~output_o\;

ww_flag_zero <= \flag_zero~output_o\;

ww_flag_overflow <= \flag_overflow~output_o\;

ww_flag_negativo <= \flag_negativo~output_o\;
END structure;


