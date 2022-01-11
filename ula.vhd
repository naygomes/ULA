library ieee;
use IEEE.STD_LOGIC_1164.ALL;

-- Definindo entidade da ULA
ENTITY ula IS
PORT (
-- Seletores
selecao1		  : in std_logic;
selecao2		  : in std_logic;
selecao3		  : in std_logic;

-- Entradas em binário
num1	  		  : in std_logic_vector(3 downto 0);
num2	  		  : in std_logic_vector(3 downto 0);

-- Saída em binário
saida_bin  	  : out std_logic_vector(3 downto 0);

-- Saída dos valores de num1, num2, saída_bin e seus respectivos sinais em 7 segmentos
seg7_num1     : out std_logic_vector(6 downto 0);
seg7_num1_s	  : out std_logic_vector(6 downto 0);
seg7_num2	  : out std_logic_vector(6 downto 0);
seg7_num2_s	  : out std_logic_vector(6 downto 0);
seg7_saida	  : out std_logic_vector(6 downto 0);
seg7_s    	  : out std_logic_vector(6 downto 0);

-- Flags
flag_carry	  : out std_logic;
flag_zero	  : out std_logic;
flag_overflow : out std_logic;
flag_negativo : out std_logic
);
END ula;


ARCHITECTURE functionUla OF ula IS

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
	
	-- Criando Componente do Complemento de 2 de 4 Bits
	COMPONENT complementoDe2
	PORT(
	a					 : in std_logic_vector(3 downto 0);
	carryIn 			 : in std_logic;
	saidaComplemento: out std_logic_vector(3 downto 0);
	carryOut		 	 : out std_logic
	);
	END COMPONENT;
	
	-- Criando Componente do Comparador
	COMPONENT comparador
	PORT(
	a					: in std_logic_vector(3 downto 0);
	b					: in std_logic_vector(3 downto 0);
	saidaComparador: out std_logic
	);
	END COMPONENT;

-- Carry Ins
signal c0: std_logic_vector(3 downto 1);
signal c1: std_logic_vector(3 downto 1); 
signal c2: std_logic_vector(3 downto 1); 

-- Carry Outs
signal carry_out: std_logic;
signal carry_out0: std_logic;
signal carry_out1: std_logic;
signal carry_out2: std_logic;
signal carry_out3: std_logic;

-- Signals para operação de subtração com complemento de 2
signal carry_intermed: std_logic;
signal complemento2: std_logic_vector(3 downto 0);

-- Seletor
signal selector: std_logic_vector(2 downto 0);

-- Saídas
signal s: std_logic_vector(3 downto 0);
signal s_soma: std_logic_vector(3 downto 0);
signal s_subtracao: std_logic_vector(3 downto 0);
signal s_incremento: std_logic_vector(3 downto 0);
signal s_troca: std_logic_vector(3 downto 0);
signal s_complemento: std_logic_vector(3 downto 0);
signal s_comparacao: std_logic_vector(3 downto 0) := "0000";
signal s_shift: std_logic_vector(3 downto 0);
signal s_rotacao: std_logic_vector(3 downto 0);


BEGIN
	
	-- Somador de 4 bits
	soma0: somador PORT MAP (num1(0), num2(0), '0', s_soma(0), c0(1));
	soma1: somador PORT MAP (num1(1), num2(1), c0(1), s_soma(1), c0(2));
	soma2: somador PORT MAP (num1(2), num2(2), c0(2), s_soma(2), c0(3));
	soma3: somador PORT MAP (num1(3), num2(3), c0(3), s_soma(3), carry_out0);
	
	-- Subtração com complemento de 2
	comp0: complementoDe2 PORT MAP (num2, '0', complemento2, carry_intermed);
	sub0: somador PORT MAP (num1(0), complemento2(0), carry_intermed, s_subtracao(0), c1(1));
	sub1: somador PORT MAP (num1(1), complemento2(1), c1(1), s_subtracao(1), c1(2));
	sub2: somador PORT MAP (num1(2), complemento2(2), c1(2), s_subtracao(2), c1(3));
	sub3: somador PORT MAP (num1(3), complemento2(3), c1(3), s_subtracao(3), carry_out1);
	
	-- Incremento de 1 da entrada num1
	i0: somador PORT MAP (num1(0), '1', '0', s_incremento(0), c2(1));
	i1: somador PORT MAP (num1(1), '0', c2(1), s_incremento(1), c2(2));
	i2: somador PORT MAP (num1(2), '0', c2(2), s_incremento(2), c2(3));
	i3: somador PORT MAP (num1(3), '0', c2(3), s_incremento(3), carry_out2);
	
	-- Troca de Sinal da entrada num1
	s_troca <= NOT num1(3) & num1(2 downto 0);
	
	-- Complemento de 2 da entrada num1
	comp1: complementoDe2 PORT MAP (num1, '0', s_complemento, carry_out3);
		
	-- Comparador
	compara1: comparador PORT MAP ( num1, num2, s_comparacao(0));
	
	-- Shift para esquerda da entrada num1
	s_shift <= num1(2 downto 0) & '0';
	
	-- Rotação para esquerda da entrada num1
	s_rotacao <= num1(2 downto 0) & num1(3);
	
	-- Seletor
	PROCESS (selecao1, selecao2, selecao3)
	
	BEGIN
	
		selector <= selecao1 & selecao2 & selecao3;
	
		CASE selector IS
			WHEN "000" =>	s <= s_soma;				-- Somador de 4 bits
								carry_out <= carry_out0;
			
			WHEN "001" =>	s <= s_subtracao;			-- Subtração com complemento de 2
								carry_out <= carry_out1;
				
			WHEN "010" =>	s <= s_incremento;		-- Incremento de 1 da entrada num1
								carry_out <= carry_out2;
				
			WHEN "011" =>	s <= s_troca;				-- Troca de sinal da entrada num1
			
			
			WHEN "100" =>	s <= s_complemento;		-- Complemento de 2 da entrada num1
								carry_out <= carry_out3;
		
			WHEN "101" =>	s <= s_comparacao;	-- Comparador ( Retorna 0001 caso a = b e 0000 caso a != b)
				
			
			WHEN "110" =>	s <= s_shift;			-- Shift para esquerda da entrada num1

			
			WHEN "111" =>	s <= s_rotacao;		-- Rotação para esquerda da entrada num1	
			
			
			WHEN OTHERS => s <= "XXXX";
			
		END CASE;
	END PROCESS;
	
	-- Definindo flag Zero --> (Se a saída for zero, retorna 1. Se não, 0)
	flag_zero <= '1' WHEN s = "0000" ELSE '0';
	
	-- Definindo flag Carry Out --> (Retorna o valor do carry out do MSB)
	flag_carry <= '1' WHEN carry_out = '1' ELSE '0';
	
	-- Definindo flag Overflow --> (Se tiver overflow, retorna 1. Se não, 0)
	flag_overflow <= '1' WHEN (num1(3) = '0' AND num2(3) = '0' AND s(3) = '1') OR (num1(3) = '1' AND num2(3) = '1' AND s(3) = '0') ELSE '0';

	-- Definindo flag Negativo --> (Se a saída for um número negativo, retorna 1. Se não, 0)
	flag_negativo <= '1' WHEN s(3) = '1' ELSE '0';
	
	-- Definindo saída
	saida_bin <= s;
	
	PROCESS (s, num1, num2)
	BEGIN
	
		-- Display de 7 segmentos para a entrada num1
		case num1(2 downto 0) is
			  when "000"=> seg7_num1 <="1111110";  -- '0'
			  when "001"=> seg7_num1 <="0110000";  -- '1'
			  when "010"=> seg7_num1 <="1101101";  -- '2'
			  when "011"=> seg7_num1 <="1111001";  -- '3'
			  when "100"=> seg7_num1 <="0110011";  -- '4' 
			  when "101"=> seg7_num1 <="1011011";  -- '5'
			  when "110"=> seg7_num1 <="1011111";  -- '6'
			  when "111"=> seg7_num1 <="1110000";  -- '7'  
			  when others =>  NULL;
		end case;

		case num1(3) is
			  when '0'=> seg7_num1_s <="0000000";  -- '+'
			  when '1'=> seg7_num1_s <="0000001";  -- '-'
			  when others =>  NULL;
		end case;
		
		-- Display de 7 segmentos para a entrada num2
		case num2(2 downto 0) is
			  when "000"=> seg7_num2 <="1111110";  -- '0'
			  when "001"=> seg7_num2 <="0110000";  -- '1'
			  when "010"=> seg7_num2 <="1101101";  -- '2'
			  when "011"=> seg7_num2 <="1111001";  -- '3'
			  when "100"=> seg7_num2 <="0110011";  -- '4' 
			  when "101"=> seg7_num2 <="1011011";  -- '5'
			  when "110"=> seg7_num2 <="1011111";  -- '6'
			  when "111"=> seg7_num2 <="1110000";  -- '7'  
			  when others =>  NULL;
		end case;

		case num2(3) is
			  when '0'=> seg7_num2_s <="0000000";  -- '+'
			  when '1'=> seg7_num2_s <="0000001";  -- '-'
			  when others =>  NULL;
		end case;
		
		-- Display de 7 segmentos para a saída
		case s(2 downto 0) is
			  when "000"=> seg7_saida <="1111110";  -- '0'
			  when "001"=> seg7_saida <="0110000";  -- '1'
			  when "010"=> seg7_saida <="1101101";  -- '2'
			  when "011"=> seg7_saida <="1111001";  -- '3'
			  when "100"=> seg7_saida <="0110011";  -- '4' 
			  when "101"=> seg7_saida <="1011011";  -- '5'
			  when "110"=> seg7_saida <="1011111";  -- '6'
			  when "111"=> seg7_saida <="1110000";  -- '7'  
			  when others =>  NULL;
		end case;

		case s(3) is
			  when '0'=> seg7_s <="0000000";  -- '+'
			  when '1'=> seg7_s <="0000001";  -- '-'
			  when others =>  NULL;
		end case;
		 
	END PROCESS;
		
END functionUla;