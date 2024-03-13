library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity OR7 is
	port (A,B,C,D,E,F,G: in std_logic; O: out std_logic);
end entity OR7;

architecture Struct of OR7 is
	signal AB,CD,EF,S1,S2 : std_logic;
begin
	OR1: OR_2 port map (A=>A,B=>B,Y=>AB);
	OR2: OR_2 port map (A=>C,B=>D,Y=>CD);
	OR3: OR_2 port map (A=>E,B=>F,Y=>EF);
	
	OR4: OR_2 port map (A=>AB,B=>CD,Y=>S1);
	OR5: OR_2 port map (A=>EF,B=>G,Y=>S2);
	
	OR6: OR_2 port map (A=>S2,B=>S1,Y=>O);
end Struct;