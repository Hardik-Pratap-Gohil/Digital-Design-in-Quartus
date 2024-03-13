library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux is
	port(I1,I0: in std_logic_vector, S => in std_logic; Y => out std_logic_vector);
end entity mux;

architecture struct of mux is
	`I1: INVERTER port map(A => S, Y => S_BAR);
	 A1: AND_2 port map(A => S, B => I1, Y => S1);
	 A2: AND_2 port map(A => S_BAR, B => I0, Y => S0);
	 O1: OR_2 port map(A => S1, B => S0, Y => Y);
end architecture struct;