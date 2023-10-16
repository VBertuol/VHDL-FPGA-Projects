# VHDL-FPGA-Projects
VHDL Projects for DE0-nano and DE1-SoC FPGA boards

Trabalho #01

Projete um decodificador 4 bits para display 7 segmentos. A entrada será em código binário.

▪ Quando o bit na entrada “Seleção de código” for ‘1’ , será apresentado nos LEDR[3..0] a codificação em código gray, se for ‘0’ será binária (ou seja, copiará a entrada dos switch).

▪ Quando o Enable estiver em ‘1’ o decodificador funcionará normalmente, quando estiver em ‘0’ o display e os LEDR ficarão desligados.

▪ Se o Enable estiver em ‘1’ e a entrada estiver em um valor acima de 9, deverá aparecer a letra E ("0110000“) no display, e os LEDR ficarão desligados

▪ Pinos:

• Enable: SW(5);

• Seleção de código: SW(4);

• Entrada de dados: SW(3 – 0);

• Saída: HEX0 - Os segmentos são ativados com nível baixo

• Saída: LEDR

▪ Utilize AMBOS comandos WHEN-ELSE e WITH-SELECT-WHEN.

Trabalho #02

Faça um registrador (memória) parametrizada (de 1 até 8 bits), com sinal de carga (síncrono) e clear (assíncrono), de acordo com a imagem abaixo:

![image](https://github.com/VBertuol/VHDL-FPGA-Projects/assets/99759901/e3b9e405-7bdd-4373-905c-f60b44b4f2b6)

▪ Utilize AMBOS comandos GENERATE e IF-THEN-ELSE.

▪ Faça o projeto utilizando o arquivo pin_assigments.qsf

![image](https://github.com/VBertuol/VHDL-FPGA-Projects/assets/99759901/117c6557-fa0e-4cef-bfab-b40b67e4f3bc)

Trabalho #03

• Faça um contador que conte o número total de 1’s, o número de 1’s
mais significativos e o número de 0’s menos significativos de uma
entrada binária de 8 bits.

• A entrada de 8 bits deve ser nas chaves SW[7-0].

• As saídas devem ser:

• 0’s menos significativos: HEX0;

• 1’s mais significativos: HEX1;

• Total de 1’s : HEX2;

• Requisitos:

• Utilize ao menos uma das estruturas CASE-WHEN ou FOR-LOOP /
WHILE-LOOP.

• Utilize COMPONENT para pelo menos uma parte do código (display, por
exemplo), pode ser com ou sem PACKAGE.
 
• Obs. COMPONENT não pode ser instanciado dentro do process.



