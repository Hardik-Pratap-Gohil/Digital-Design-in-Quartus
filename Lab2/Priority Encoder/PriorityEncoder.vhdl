library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity encoder is
	port(A,B,C,D: in std_logic; Y0,Y1,V: out std_logic);
end entity encoder;

architecture struct of encoder is
	signal S1,S2,S3,S4: std_logic;
begin
	I1: INVERTER port map(A => B, Y => S1);
	A1: AND_2 port map(A => S1, B => C, Y => S2);
	O1: OR_2 port map(A => C, B => D, Y => S3);
	O2: OR_2 port map(A => A, B => B, Y => S4);
	O3: OR_2 port map(A => S2, B => A, Y => Y0);
	Y1 <= S4;
	O4: OR_2 port map(A => S3, B => S4, Y => V);
end architecture struct;