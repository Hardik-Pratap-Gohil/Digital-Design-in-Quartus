library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux4x1 is
	port(A,B,C,D,S1,S0: in std_logic, Y: out std_logic);
end entity mux4x1;

architecture struct of mux4x1 is
	component mux is
		port(I1,I0,S: in std_logic; Y: out std_logic);
	end component mux;
	signal T1,T2: std_logic;
begin
	M1: mux port map(I1 => A, I0 => B, S => S0, Y => T1);
	M2: mux port map(I1 => C, I0 => D, S => S0, Y => T2);
	M3: mux port map(I1 => T1, I0 => T2, S => S1, Y => Y);
end architecture struct;