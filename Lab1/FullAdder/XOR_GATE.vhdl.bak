library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity XOR_GATE is
	port(A,B: in std_logic; OUTPUT: out std_logic);
end entity XOR_GATE;

architecture Struct of XOR_GATE is
	Signal AB_BAR, Y1, Y2: std_logic;
begin
	NAND1: NAND_2 port map(A => A, B => B, Y => AB_BAR);
	NAND2: NAND_2 port map(A => A, B => AB_BAR, Y => Y1);
	NAND3: NAND_2 port map(A => B, B => AB_BAR, Y => Y2);
	NAND4: NAND_2 port map(A => Y1, B => Y2, Y => OUTPUT);
end architecture Struct;
