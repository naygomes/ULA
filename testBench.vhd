library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


--Test Bench
ENTITY testBench IS
END testBench;

ARCHITECTURE teste OF testBench IS

	-- Contador
	signal contador			: unsigned(10 downto 0) := "00000000000";
	
	-- Seletores
	signal tb_selecao1      : std_logic;
	signal tb_selecao2      : std_logic;
	signal tb_selecao3      : std_logic;

	-- Entradas num1 e num2 em binário
	signal tb_num1       	: std_logic_vector(3 downto 0);
	signal tb_num2       	: std_logic_vector(3 downto 0);

	-- Saída em binário
	signal tb_saida_bin  	: std_logic_vector(3 downto 0);

	-- Saída dos valores de num1, num2, saída_bin e seus respectivos sinais em 7 segmentos
	signal tb_seg7_num1     : std_logic_vector(6 downto 0);
	signal tb_seg7_num1_s	: std_logic_vector(6 downto 0);
	signal tb_seg7_num2	  	: std_logic_vector(6 downto 0);
	signal tb_seg7_num2_s	: std_logic_vector(6 downto 0);
	signal tb_seg7_saida		: std_logic_vector(6 downto 0);
	signal tb_seg7_s    		: std_logic_vector(6 downto 0);

	-- Flags
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

		saida_bin  	  : out std_logic_vector(3 downto 0);

		seg7_num1     : out std_logic_vector(6 downto 0);
		seg7_num1_s	  : out std_logic_vector(6 downto 0);
		seg7_num2	  : out std_logic_vector(6 downto 0);
		seg7_num2_s	  : out std_logic_vector(6 downto 0);
		seg7_saida	  : out std_logic_vector(6 downto 0);
		seg7_s    	  : out std_logic_vector(6 downto 0);

		flag_carry	  : out std_logic;
		flag_zero	  : out std_logic;
		flag_overflow : out std_logic;
		flag_negativo : out std_logic
	);
	END COMPONENT;
	
BEGIN
	-- Importando ULA
	DUT: ula PORT MAP(tb_selecao1, tb_selecao2, tb_selecao3, tb_num1, tb_num2, tb_saida_bin,
							tb_seg7_num1, tb_seg7_num1_s, tb_seg7_num2, tb_seg7_num2_s, tb_seg7_saida, tb_seg7_s,
							tb_flag_carry, tb_flag_zero, tb_flag_overflow, tb_flag_negativo);
	
	PROCESS IS
	BEGIN
		-- Soma 1 ao contador a cada 500ns
		WAIT FOR 500ns;
		contador <= contador + 1;
		
	END PROCESS;
	
	-- A entrada num1 recebe os 4 bits menos significativos do contador
	tb_num1 <= std_logic_vector(contador(3 downto 0));
	
	-- A entrada num2 recebe os próximos 4 bits menos significativos do contador
	tb_num2 <= std_logic_vector(contador(7 downto 4));
	
	-- Cada seletor recebe um dos 3 bits mais significativos
	tb_selecao3 <= std_logic(contador(8));	
	tb_selecao2 <= std_logic(contador(9));	
	tb_selecao1 <= std_logic(contador(10));	
	
END teste;
	