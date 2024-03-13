library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity encoder is
	port(A,B,C,D,En: in std_logic; Y1,Y0: out std_logic);
end entity encoder;

architecture struct of encoder is
	signal S1,S2,S3: std_logic;
begin
	A1: AND_2 port map(A => A, B => En, Y => S1);
	A2: AND_2 port map(A => B, B => En, Y => S2);
	A3: AND_2 port map(A => C, B => En, Y => S3);
	O1: OR_2 port map(A => S1, B => S3, Y => Y0);
	O2: OR_2 port map(A => S1, B => S2, Y => Y1);
end architecture struct;