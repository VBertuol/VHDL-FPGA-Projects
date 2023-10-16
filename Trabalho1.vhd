-- Nome Projeto: Trabalho 1
-- Data: 06/09/2023
-- Nome: Gabriel Santos Martinelli / 2264951
-- 		Vinicius Bertuol / 2205513

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Trabalho1 IS
	PORT (SW: IN std_logic_vector(5 downto 0);
			LEDR: OUT std_logic_vector(3 downto 0);
			HEX0: OUT std_logic_vector(0 to 6));
END ENTITY;

ARCHITECTURE logica OF Trabalho1 IS
SIGNAL A, B, C: std_logic_vector(3 downto 0);
SIGNAL D: std_logic_vector(6 downto 0);
BEGIN
	-- SIGNAL A CONVERTE BINARIO EM GRAY
	WITH SW(3 downto 0) SELECT
		A <= "0000" WHEN "0000",
			  "0001" WHEN "0001",
			  "0011" WHEN "0010",
			  "0010" WHEN "0011",
			  "0110" WHEN "0100",
			  "0111" WHEN "0101",
			  "0101" WHEN "0110",
			  "0100" WHEN "0111",
			  "1100" WHEN "1000",
			  "1101" WHEN "1001",
			  "ZZZZ" WHEN OTHERS;
	-- SIGNAL B RECEBE A ENTRADA EM BINARIO
		B <= SW(3 downto 0) WHEN SW(3 downto 0) <= "1001" ELSE "ZZZZ";
	-- SIGNAL C RECEBE ENTRADA EM GRAY QUANDO SW(4) ESTA EM 1 E EM BINARIO QUANDO SW(4) ESTA EM 0
	WITH SW(4) SELECT
		C <= A WHEN '1',
			  B WHEN '0';
	-- LEDS RECEBEM O SIGNAL C QUANDO ENABLE ESTA EM 1, SENAO FICAM EM ALTA IMPEDANCIA
	WITH SW(5) SELECT
		LEDR <= C WHEN '1',
				  "ZZZZ" WHEN OTHERS;
	-- SIGNAL D RECEBE OS VALORES DO DECODIFICADOR DE ACORDO COM O VALOR DA ENTRADA
	WITH SW(3 downto 0) SELECT
		D <= "0000001" WHEN "0000",
			  "1001111" WHEN "0001",
			  "0010010" WHEN "0010",
			  "0000110" WHEN "0011",
			  "1001100" WHEN "0100",
			  "0100100" WHEN "0101",
			  "0100000" WHEN "0110",
			  "0001111" WHEN "0111",
			  "0000000" WHEN "1000",
			  "0000100" WHEN "1001",
			  "0110000" WHEN OTHERS;
	-- O DECODIFICADOR 7 SEGMENTOS RECEBE O SIGNAL D QUANDO ENABLE ESTA EM 1, SENAO FICA APAGADO
	WITH SW(5) SELECT
		HEX0 <= D WHEN '1',
					  "1111111" WHEN '0';
END logica;
		
	
	
