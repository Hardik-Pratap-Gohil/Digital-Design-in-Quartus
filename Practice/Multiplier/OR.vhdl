library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity or_gate is 
	port(A,B: in std_logic; Y: out std_logic);
end entity or_gate;

architecture struct of or_gate is
	signal s1,s2: std_logic;
begin
	N1: NAND_2 port map(A => A, B => A, Y => s1);
	N2: NAND_2 port map(A => B, B => B, Y => s2);
	N3: NAND_2 port map(A => s1, B => s2, Y => Y);
end architecture struct;