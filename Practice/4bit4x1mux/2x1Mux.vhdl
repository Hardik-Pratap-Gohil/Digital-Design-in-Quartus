library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux2x1 is
	port(I0,I1,S: in std_logic; Y: out std_logic);
end entity mux2x1;

architecture struct of mux2x1 is
	signal S_BAR,S1,S2: std_logic;
begin
	In1: INVERTER port map(A => S, Y => S_BAR);
	A1: AND_2 port map(A => I0, B => S_BAR, Y => S1);
	A2: AND_2 port map(A => I1, B => S, Y => S2);
	O1: OR_2 port map(A => S1, B => S2, Y => Y);
end architecture struct;