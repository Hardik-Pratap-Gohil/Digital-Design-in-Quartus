library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity half_sub is
	port(A,B: in std_logic; D,Bo: out std_logic);
end entity half_sub;

architecture struct of half_sub is
	component and_gate is
		port(A,B: in std_logic; Y: out std_logic);
	end component and_gate;
	component xor_gate is
		port(A,B: in std_logic; Y: out std_logic);
	end component xor_gate;
	signal A_bar: std_logic;
begin
	I1: INVERTER port map(A => A, Y => A_bar);
	X1: xor_gate port map(A => A, B => B, Y => D);
	A1: and_gate port map(A => A_bar, B => B, Y => Bo);
end architecture struct;