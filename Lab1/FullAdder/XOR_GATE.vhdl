library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity F_ADDER is
	port(A,B, Cin: in std_logic; S, Cout: out std_logic);
end entity F_ADDER;

architecture Struct of XOR_GATE is
	Signal S1, S2, S3, S4, S5, S6: std_logic;
begin
	NAND1: NAND_2 port map(A => A, B => B, Y => S1);
	NAND2: NAND_2 port map(A => A, B => S1, Y => S2);
	NAND3: NAND_2 port map(A => S1, B => B, Y => S3);
	NAND4: NAND_2 port map(A => S2, B => S3, Y => S4);
	NAND5: NAND_2 port map(A => S4, B => Cin, Y => S5);
	NAND6: NAND_2 port map(A => S4, B => S5, Y => S6);
	NAND7: NAND_2 port map(A => S5, B => Cin, Y => S7);
	NAND8: NAND_2 port map(A => S6, B => S7, Y => S);
	NAND9: NAND_2 port map(A => S5, B => Cin, Y => Cout);
end architecture Struct;
