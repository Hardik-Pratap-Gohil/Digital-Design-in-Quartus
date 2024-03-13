library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity alu is
	port(S1,S0,A3,A2,A1,A0,B3,B2,B1,B0: in std_logic; Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0: out std_logic);
end entity alu;

architecture struct of alu is
	component mux4x1 is
		port(A,B,C,D,S1,S0: in std_logic, Y: out std_logic);
	end component mux4x1;
begin
	M: mux4x1 port map(A => ConcatAB, B => SubAB, C => AxorE, D => TwoA, S1 => S1, S0 => S0, Y => );
	