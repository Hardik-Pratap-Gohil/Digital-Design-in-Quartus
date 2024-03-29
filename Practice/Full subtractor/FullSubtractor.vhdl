library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity f_sub is
	port(X,Y,B: in std_logic; O,Bo: out std_logic);
end entity f_sub;

architecture struct of f_sub is
	component xor_gate is
		port(A,B: in std_logic; Y: out std_logic);
	end component xor_gate;
	component and_gate is
		port(A,B: in std_logic; Y: out std_logic);
	end component and_gate;
	component or_gate is
		port(A,B: in std_logic; Y: out std_logic);
	end component or_gate;
	signal Y_BAR,S1,S2,S3,S4,B_BAR,S5,S6,X_BAR,S7: std_logic;
begin
	I1: INVERTER port map(A => Y, Y => Y_BAR);
	X1: xor_gate port map(A => X, B => Y_BAR, Y => S1);
	X2: xor_gate port map(A => X, B => Y, Y => S2);
	I2: INVERTER port map(A => B, Y => B_BAR);
	A1: and_gate port map(A => B, B => S1, Y => S3);
	A2: and_gate port map(A => B_BAR, B => S2, Y => S4);
	O1: or_gate port map(A => S3, B => S4, Y => O);
	
	O2: or_gate port map(A => B, B => Y, Y => S5);
	I3: INVERTER port map(A => X, Y => X_BAR);
	A3: and_gate port map(A => S5, B => X_BAR, Y => S6);
	A4: and_gate port map(A => B, B => Y, Y => S7);
	O3: or_gate port map(A => S6, B => S7, Y => Bo);
end architecture struct;