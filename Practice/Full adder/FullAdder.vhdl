library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity f_adder is
	port(A,B,Cin: in std_logic; S,Cout: out std_logic);
end entity f_adder;

architecture struct of f_Adder is
	component xor_gate is
		port(A,B: in std_logic; Y: out std_logic);
	end component xor_gate;
	component and_gate is
		port(A,B: in std_logic; Y: out std_logic);
	end component and_gate;
	component or_gate is
		port(A,B: in std_logic; Y: out std_logic);
	end component or_gate;
	signal AB, BC, AC, s1, s2: std_logic;
begin
	A1: and_gate port map(A => A, B => B, Y => AB);
	A2: and_gate port map(A => A, B => Cin, Y => AC);
	A3: and_gate port map(A => Cin, B => B, Y => BC);
	O1: or_gate port map(A => AB, B => AC, Y => s1);
	O2: or_gate port map(A => s1, B => BC, Y => Cout);
	X1: xor_gate port map(A => A, B => B, Y => s2);
	X2: xor_gate port map(A => Cin, B => s2, Y => S);
end architecture struct;