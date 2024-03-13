library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux4bit4x1 is
	port(D3,D2,D1,D0,C3,C2,C1,C0,B3,B2,B1,B0,A3,A2,A1,A0,SEL1,SEL0: in std_logic; Y3,Y2,Y1,Y0: out std_logic);
end entity mux4bit4x1;

architecture struct of mux4bit4x1 is
	component mux4x1 is
		port(In3,In2,In1,In0,S2,S1: in std_logic; Y: out std_logic);
	end component mux4x1;
begin
	M1: mux4x1 port map(In3 => D3, In2 => C3, In1 => B3, In0 => A3, S2 => SEL1, S1 => SEL0, Y => Y3); 
	M2: mux4x1 port map(In3 => D2, In2 => C2, In1 => B2, In0 => A2, S2 => SEL1, S1 => SEL0, Y => Y2); 
	M3: mux4x1 port map(In3 => D1, In2 => C1, In1 => B1, In0 => A1, S2 => SEL1, S1 => SEL0, Y => Y1); 
	M4: mux4x1 port map(In3 => D0, In2 => C0, In1 => B0, In0 => A0, S2 => SEL1, S1 => SEL0, Y => Y0); 
end architecture struct;
