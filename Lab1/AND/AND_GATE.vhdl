library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity AND_GATE is
	port(A,B: in std_logic; OUTPUT: out std_logic);
end entity AND_GATE;

architecture Struct of AND_GATE is
	Signal AB_BAR: std_logic;
begin
	NAND1: NAND_2 port map(A => A, B => B, Y => AB_BAR);
	NAND2: NAND_2 port map(A => AB_BAR, B => AB_BAR, Y => OUTPUT);
end architecture Struct;
