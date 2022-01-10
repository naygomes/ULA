library ieee;
use IEEE.STD_LOGIC_1164.ALL;

-- Define o complemento de 2 da entrada a
ENTITY complementoDe2 IS
PORT ( 
	a					 : in std_logic_vector(3 downto 0);
	carryIn 			 : in std_logic;
	saidaComplemento: out std_logic_vector(3 downto 0);
	carryOut		 	 : out std_logic
);
END complementoDe2;


ARCHITECTURE functionComplementoDe2 OF complementoDe2 IS
	
	-- Criando Componente do Somador de 1 Bit
	COMPONENT somador
	PORT(
	a					: in std_logic;
	b					: in std_logic;
	cin				: in std_logic;
	saidaComponente: out std_logic;
	cout				: out std_logic
	);
	END COMPONENT;

-- Signals necessários para a realização da operação
signal complementoDe1: std_logic_vector(3 downto 0);
signal c: std_logic_vector(3 downto 1); 

BEGIN
	-- Definindo o complemento de 1 da entrada a
	complementoDe1 <= NOT a(3) & NOT a(2) & NOT a(1) & NOT a(0);
	
	-- Somando 1 ao complemento de 1 da entrada a para achar o complemento de 2 da mesma entrada
	s0: somador PORT MAP (complementoDe1(0), '1', carryIn, saidaComplemento(0), c(1));
	s1: somador PORT MAP (complementoDe1(1), '0', c(1), saidaComplemento(1), c(2));
	s2: somador PORT MAP (complementoDe1(2), '0', c(2), saidaComplemento(2), c(3));
	s3: somador PORT MAP (complementoDe1(3), '0', c(3), saidaComplemento(3), carryOut);
		
END functionComplementoDe2;