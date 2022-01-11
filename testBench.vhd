library ieee;
use IEEE.STD_LOGIC_1164.ALL;

--Test Bench
ENTITY testBench IS
END testBench;

ARCHITECTURE test OF testBench IS

-- Seletores
signal tb_selecao1      : std_logic;
signal tb_selecao2      : std_logic;
signal tb_selecao3      : std_logic;

-- Entradas num1 e num2
signal tb_num1       	: std_logic_vector(3 downto 0);
signal tb_num2       	: std_logic_vector(3 downto 0);

-- Saídas e flags
signal tb_saida       	: std_logic_vector(3 downto 0);
signal tb_flag_carry    : std_logic;
signal tb_flag_zero     : std_logic;
signal tb_flag_overflow : std_logic;
signal tb_flag_negativo : std_logic;
	 
	-- Criando componente ULA
	COMPONENT ula
	PORT ( 
		selecao1		  : in std_logic;
		selecao2		  : in std_logic;
		selecao3		  : in std_logic;
		num1	  		  : in std_logic_vector(3 downto 0);
		num2	  		  : in std_logic_vector(3 downto 0);
		saida	  		  : out std_logic_vector(3 downto 0);
		flag_carry	  : out std_logic;
		flag_zero	  : out std_logic;
		flag_overflow : out std_logic;
		flag_negativo : out std_logic
	);
	END COMPONENT;
	
BEGIN
	-- Importando ULA
	DUT: ula PORT MAP(tb_selecao1, tb_selecao2, tb_selecao3, tb_num1, tb_num2, tb_saida,
							tb_flag_carry, tb_flag_zero, tb_flag_overflow, tb_flag_negativo);
	
END test;
	