library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity xor_gate is
	port(A,B: in std_logic; Y: out std_logic);
end entity xor_gate;

architecture struct of xor_gate is
	signal s1,s,s2: std_logic;
begin
	N1: NAND_2 port map(A => A, B => B, Y => s);
	N2: NAND_2 port map(A => A, B => s, Y => s1);
	N3: NAND_2 port map(A => s, B => B, Y => s2);
	N4: NAND_2 port map(A => s1, B => s2, Y => Y);
end architecture struct;
