library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity H_ADDER is
	port(A,B: in std_logic; S,C: out std_logic);
end entity H_ADDER;

architecture Struct of H_Adder is
	Signal AB_BAR, Y1, Y2, Y3, Y4: std_logic;
begin
	NAND1: NAND_2 port map(A => A, B => B, Y => Y1);
	NAND2: NAND_2 port map(A => A, B => Y1, Y => Y2);
	NAND3: NAND_2 port map(A => B, B => Y1, Y => Y3);
	NAND4: NAND_2 port map(A => A, B => B, Y => Y4);
	NAND5: NAND_2 port map(A => Y2, B => Y3, Y => C);
	NAND6: NAND_2 port map(A => Y4, B => Y4, Y => S);
	
	
end architecture Struct;
