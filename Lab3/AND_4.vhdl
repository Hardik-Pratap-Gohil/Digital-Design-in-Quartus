library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity AND_4 is
	port (X3,X2,X1,X0: in std_logic; O: out std_logic);
end entity AND_4;

architecture Struct of AND_4 is
	signal AB,CD : std_logic;
begin
	AND1: AND_2 port map (A=>X3,B=>X2,Y=>AB);
	AND2: AND_2 port map (A=>X1,B=>X0,Y=>CD);
	AND3: AND_2 port map (A=>AB,B=>CD,Y=>O);
end Struct;