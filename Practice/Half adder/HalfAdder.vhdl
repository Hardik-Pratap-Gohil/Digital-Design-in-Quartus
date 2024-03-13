library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity h_adder is
	port(A,B: in std_logic; S,C: out std_logic);
end entity h_adder;

architecture struct of h_adder is
	component and_gate is
		port(A,B: in std_logic; Y: out std_logic);
	end component and_gate;
	component xor_gate is
		port(A,B: in std_logic; Y: out std_logic);
	end component xor_gate;
begin
	A1: and_gate port map(A => A, B => B, Y => C);
	X1: xor_gate port map(A => A, B => B, Y => S);
end architecture struct;