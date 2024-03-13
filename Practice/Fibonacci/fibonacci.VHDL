library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity fibonacci is 
	port(X4,X3,X2,X1,X0: in std_logic; Y: out std_logic);
end entity fibonacci;

architecture struct of fibonacci is
	signal S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13: std_logic;
begin
	I1: INVERTER port map(A => X4, Y => S1);
	I2: INVERTER port map(A => X3, Y => S2);
	I3: INVERTER port map(A => X2, Y => S3);
	I4: INVERTER port map(A => X1, Y => S4);
	A1: AND_2 port map(A => S2, B => S3, Y => S5);
	XOR1: XOR_2 port map(A => S3, B => X0, Y => S6);
	A2: AND_2 port map(A => S4, B => S6, Y => S7);
	O1: OR_2 port map(A => S5, B => S7, Y => S8);
	A3: AND_2 port map(A => S1, B => S8, Y => S9);
	A4: AND_2 port map(A => S4, B => X0, Y => S10);
	A5: AND_2 port map(A => S10, B => X2, Y => S11);
	A6: AND_2 port map(A => S11, B => S2, Y => S12);
	A7: AND_2 port map(A => S12, B => X4, Y => S13);
	O2: OR_2 port map(A => S9, B => S13, Y => Y);
end architecture struct;

