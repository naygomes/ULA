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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/11/2022 00:42:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ula
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ula_vhd_vec_tst IS
END ula_vhd_vec_tst;
ARCHITECTURE ula_arch OF ula_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL flag_carry : STD_LOGIC;
SIGNAL flag_negativo : STD_LOGIC;
SIGNAL flag_overflow : STD_LOGIC;
SIGNAL flag_zero : STD_LOGIC;
SIGNAL num1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL num2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL saida_bin : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seg7_num1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg7_num1_s : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg7_num2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg7_num2_s : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg7_s : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg7_saida : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL selecao1 : STD_LOGIC;
SIGNAL selecao2 : STD_LOGIC;
SIGNAL selecao3 : STD_LOGIC;
COMPONENT ula
	PORT (
	flag_carry : OUT STD_LOGIC;
	flag_negativo : OUT STD_LOGIC;
	flag_overflow : OUT STD_LOGIC;
	flag_zero : OUT STD_LOGIC;
	num1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	num2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	saida_bin : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	seg7_num1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg7_num1_s : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg7_num2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg7_num2_s : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg7_s : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg7_saida : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	selecao1 : IN STD_LOGIC;
	selecao2 : IN STD_LOGIC;
	selecao3 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ula
	PORT MAP (
-- list connections between master ports and signals
	flag_carry => flag_carry,
	flag_negativo => flag_negativo,
	flag_overflow => flag_overflow,
	flag_zero => flag_zero,
	num1 => num1,
	num2 => num2,
	saida_bin => saida_bin,
	seg7_num1 => seg7_num1,
	seg7_num1_s => seg7_num1_s,
	seg7_num2 => seg7_num2,
	seg7_num2_s => seg7_num2_s,
	seg7_s => seg7_s,
	seg7_saida => seg7_saida,
	selecao1 => selecao1,
	selecao2 => selecao2,
	selecao3 => selecao3
	);

-- selecao1
t_prcs_selecao1: PROCESS
BEGIN
	selecao1 <= '1';
WAIT;
END PROCESS t_prcs_selecao1;

-- selecao2
t_prcs_selecao2: PROCESS
BEGIN
	selecao2 <= '1';
WAIT;
END PROCESS t_prcs_selecao2;

-- selecao3
t_prcs_selecao3: PROCESS
BEGIN
	selecao3 <= '1';
WAIT;
END PROCESS t_prcs_selecao3;
-- num1[3]
t_prcs_num1_3: PROCESS
BEGIN
	num1(3) <= '1';
	WAIT FOR 108927 ps;
	num1(3) <= '0';
	WAIT FOR 121073 ps;
	num1(3) <= '1';
WAIT;
END PROCESS t_prcs_num1_3;
-- num1[2]
t_prcs_num1_2: PROCESS
BEGIN
	num1(2) <= '1';
	WAIT FOR 386722 ps;
	num1(2) <= '0';
WAIT;
END PROCESS t_prcs_num1_2;
-- num1[1]
t_prcs_num1_1: PROCESS
BEGIN
	num1(1) <= '1';
	WAIT FOR 2205 ps;
	num1(1) <= '0';
	WAIT FOR 107795 ps;
	num1(1) <= '1';
	WAIT FOR 120000 ps;
	num1(1) <= '0';
WAIT;
END PROCESS t_prcs_num1_1;
-- num1[0]
t_prcs_num1_0: PROCESS
BEGIN
	num1(0) <= '1';
	WAIT FOR 110000 ps;
	num1(0) <= '0';
	WAIT FOR 276722 ps;
	num1(0) <= '1';
WAIT;
END PROCESS t_prcs_num1_0;
-- num2[3]
t_prcs_num2_3: PROCESS
BEGIN
	num2(3) <= '0';
	WAIT FOR 177282 ps;
	num2(3) <= '1';
	WAIT FOR 175518 ps;
	num2(3) <= '0';
WAIT;
END PROCESS t_prcs_num2_3;
-- num2[2]
t_prcs_num2_2: PROCESS
BEGIN
	num2(2) <= '1';
	WAIT FOR 177282 ps;
	num2(2) <= '0';
	WAIT FOR 262395 ps;
	num2(2) <= '1';
WAIT;
END PROCESS t_prcs_num2_2;
-- num2[1]
t_prcs_num2_1: PROCESS
BEGIN
	num2(1) <= '1';
	WAIT FOR 280000 ps;
	num2(1) <= '0';
	WAIT FOR 72800 ps;
	num2(1) <= '1';
	WAIT FOR 86877 ps;
	num2(1) <= '0';
WAIT;
END PROCESS t_prcs_num2_1;
-- num2[0]
t_prcs_num2_0: PROCESS
BEGIN
	num2(0) <= '1';
	WAIT FOR 60417 ps;
	num2(0) <= '0';
	WAIT FOR 292383 ps;
	num2(0) <= '1';
	WAIT FOR 86877 ps;
	num2(0) <= '0';
WAIT;
END PROCESS t_prcs_num2_0;
END ula_arch;
