library ieee;
use ieee.std_logic_1164.all;

-- Nome Projeto: Trabalho 2
-- Data: 21/09/23
-- Nome: Vinicius Bertuol/2205513
-- Nome2: Gabriel Martinelli/2264951


entity trab2 is
	GENERIC (N: INTEGER := 8);
	port (
		SW : in std_logic_vector(9 downto (8-N)); --entradas da carga, clear e entradas do usuario
		KEY : in std_logic_vector(0 downto 0); --clock
		LEDR : out std_logic_vector(7 downto 8-N) --saidas respectivas as entradas (mesmo indice)
	);
end trab2;

architecture logic of trab2 is
begin
	
	GEN : for i in 0 to N-1 generate --generate para percorrer todas as entradas e leds parametrizados

		process(key(0), SW(8)) --clear e clock de parametros
		
		begin
		
		if(SW(8) = '1') then -- se clear = 1 apaga todos os leds
				LEDR(7-i) <= '0';
		
		elsif( key(0)='1' and key(0)'event) then 
		--senao se clock as saidas recebem as entradas, caso contrario elas permanecem como estao
		
			if(SW(9) = '1') then
				LEDR(7-i) <= SW(7-i);
			end if;
		end if;
		
		end process;
	end generate GEN;
end logic;