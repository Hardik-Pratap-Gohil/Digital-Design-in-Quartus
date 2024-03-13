library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity encoder8to3 is
	port(Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0,E: in std_logic; A2,A1,A0: out std_logic);
end entity encoder8to3;

architecture struct of encoder8to3 is
	signal S1,S2,S3,Y01,Y11,Y02,Y12: std_logic;
	component encoder is
		port(A,B,C,D,En: in std_logic; Y1,Y0: out std_logic);
	end component encoder;
begin
	E1: encoder port map(A => Y7, B => Y6, C => Y5, D => Y4, En => E, Y1 => Y11, Y0 => Y01);
	E2: encoder port map(A => Y3, B => Y2, C => Y1, D => Y0, En => E, Y1 => Y12, Y0 => Y02);
	O1: OR_2 port map(A => Y7, B => Y6, Y => S1);
	O2: OR_2 port map(A => Y5, B => Y4, Y => S2);
	O3: OR_2 port map(A => S1, B => S2, Y => S3);
	O4: OR_2 port map(A => Y11, B => Y12, Y => A1);
	O5: OR_2 port map(A => Y01, B => Y02, Y => A0);
	A: AND_2 port map(A => S3, B => E, Y => A2);
end architecture struct;
	