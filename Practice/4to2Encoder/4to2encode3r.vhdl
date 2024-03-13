library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity encoder is
	port(A,B,C,D,E: in std_logic; Y1,Y0: out std_logic);
end entity encoder;

architecture struct of encoder is
	signal s1,s2: std_logic;
begin
	O1: OR_2 port map(A => A, B => B, Y => S1);
	O2: OR_2 port map(A => A, B => C, Y => S2);
	A1: AND_2 port map(A => E, B => S1, Y => Y1);
	A2: AND_2 port map(A => E, B => S2, Y => Y0);
end architecture struct;