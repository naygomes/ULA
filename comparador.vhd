library ieee;
use IEEE.STD_LOGIC_1164.ALL;

--Compara as entradas a e b; Retorna 1 caso a = b e 0 caso a != b
ENTITY comparador IS
PORT ( 
	a					: in std_logic_vector(3 downto 0);
	b					: in std_logic_vector(3 downto 0);
	saidaComparador: out std_logic
);
END comparador;

ARCHITECTURE functionComparador OF comparador IS

BEGIN
	-- Fazendo operação lógica para descobrir se a e b são iguais ou diferentes
	saidaComparador <= (a(3) XNOR b(3)) AND (a(2) XNOR b(2)) AND (a(1) XNOR b(1)) AND (a(0) XNOR b(0));
	
END functionComparador;
	
	