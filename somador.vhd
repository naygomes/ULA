library ieee;
use IEEE.STD_LOGIC_1164.ALL;

-- Soma as entradas a e b de 1 bit
ENTITY somador IS
PORT ( 
	a					: in std_logic;
	b					: in std_logic;
	cin				: in std_logic;
	saidaComponente: out std_logic;
	cout				: out std_logic
);
END somador;


ARCHITECTURE functionSomador OF somador IS

BEGIN
	-- Definindo qual é a saída da soma
	saidaComponente <= a XNOR b XNOR cin;
	
	-- Definindo o carry out da soma;
	cout <= (a AND b) OR (cin AND a) OR (cin AND b);
		
END functionSomador;