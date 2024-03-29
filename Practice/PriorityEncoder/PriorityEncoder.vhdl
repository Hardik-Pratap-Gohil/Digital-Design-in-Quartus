library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity pencoder is
	port(A,B,C,D: in std_logic; Y1,Y0,V: out std_logic);
end entity pencoder;

architecture struct of pencoder is
	signal s1,s2,s3,s4: std_logic;
begin
	O1: OR_2 port map(A => A, B => B, Y => Y1);
	I1: INVERTER port map(A => B, Y => S1);
	A1: AND_2 port map(A => S1, B => C, Y => S2);
	O2: OR_2 port map(A => A, B => S2, Y => Y0);
	O3: OR_2 port map(A => A, B => B, Y => S3);
	O4: OR_2 port map(A => S3, B => C, Y => S4);
	O5: OR_2 port map(A => S4, B => D, Y => V);
end architecture struct;