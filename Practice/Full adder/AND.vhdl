library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity and_gate is
	port(A,B: in std_logic; Y: out std_logic);
end entity and_gate;

architecture struct of and_gate is
	signal s: std_logic;
begin
	N1: NAND_2 port map(A => A, B => B, Y => S);
	N2: NAND_2 port map(A => S, B => S, Y => Y);
end architecture struct;