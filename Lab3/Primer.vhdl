library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Primer is
	port (A,B,C,D,E: in std_logic; Y: out std_logic);
end entity Primer;

architecture Struct of Primer is
	signal NA,NB,NC,ND,S1,S2,S3,S4,S5,S6,S7 : std_logic;
	component AND_4 is
		port (X3,X2,X1,X0: in std_logic; O: out std_logic);
	end component AND_4;
	component OR7 is
		port (A,B,C,D,E,F,G: in std_logic; O: out std_logic);
	end component OR7;
begin
	NAND1: NAND_2 port map (A=>A,B=>A,Y=>NA);
	NAND2: NAND_2 port map (A=>B,B=>B,Y=>NB);
	NAND3: NAND_2 port map (A=>C,B=>C,Y=>NC);
	NAND4: NAND_2 port map (A=>D,B=>D,Y=>ND);
	
	AND1: AND_4 port map (X3=>NA,X2=>NC,X1=>D,X0=>E,O=>S1);
	AND2: AND_4 port map (X3=>NA,X2=>NC,X1=>NB,X0=>D,O=>S2);
	AND3: AND_4 port map (X3=>NA,X2=>NB,X1=>C,X0=>E,O=>S3);
	AND8: AND_4 port map (X3=>NA,X2=>C,X1=>ND,X0=>E,O=>S4);
	AND5: AND_4 port map (X3=>A,X2=>NC,X1=>NB,X0=>E,O=>S5);
	AND6: AND_4 port map (X3=>A,X2=>C,X1=>B,X0=>E,O=>S6);
	AND7: AND_4 port map (X3=>A,X2=>C,X1=>D,X0=>E,O=>S7);
	
	OR1: OR7 port map (A=>S1,B=>S2,C=>S3,D=>S4,E=>S5,F=>S6,G=>S7,O=>Y);
end Struct;