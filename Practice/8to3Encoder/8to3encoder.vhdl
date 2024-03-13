library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity encoder8to3 is 
	port(Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0,E: in std_logic; A2,A1,A0: out std_logic);
end entity encoder8to3;

architecture struct of encoder8to3 is
	component encoder is
		port(A,B,C,D,E: in std_logic; Y1,Y0: out std_logic);
	end component encoder;
	signal S0,S1,S2,S3,S4,S5: std_logic;
begin
	E1: encoder port map(A => Y7, B => Y6, C => Y3, D => Y2, E => E, Y1 => S3, Y0 => S2);
	E2: encoder port map(A => Y5, B => Y4, C => Y1, D => Y0, E => E, Y1 => S1, Y0 => S0);
	O1: OR_2 port map(A => S3, B => S1, Y => A2);
	O2: OR_2 port map(A => S2, B => S0, Y => A0);
	O3: OR_2 port map(A => Y3, B => Y2, Y => S4);
	An1: AND_2 port map(A => S4, B => E, Y => S5);
	O4: OR_2 port map(A => S5, B => S3, Y => A1);
end architecture struct;

