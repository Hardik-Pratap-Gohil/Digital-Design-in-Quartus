library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity midsem is 
	port(X3,X2,X1,X0,Y3,Y2,Y1,Y0: in std_logic; Z,N,V,L,G: out std_logic);
end entity midsem;

architecture struct of midsem is
	component AdderSubtractor is
		port(A0,A1,A2,A3,B0,B1,B2,B3,M: in std_logic;Cout, S0,S1,S2,S3: out std_logic); 
	end component AdderSubtractor;
	signal S0,S1,S2,S3,S0_BAR,S1_BAR,S2_BAR,S3_BAR,S4,S5,S6,S7,X3_BAR,S8,S9,Y3_BAR,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,T1,T2,T3,T4: std_logic;
begin
	S: AdderSubtractor port map(A0 => X0, A1 => X1, A2 => X2, A3 => X3, B0 => Y0, B1 => Y1, B2 => Y2, B3 => Y3, M => '1', S0 => S0, S1 => S1, S2 => S2, S3 => S3);
	I3: INVERTER port map(A => S3, Y => S3_BAR);
	I2: INVERTER port map(A => S2, Y => S2_BAR);
	I1: INVERTER port map(A => S1, Y => S1_BAR);
	I0: INVERTER port map(A => S0, Y => S0_BAR);
	A1: AND_2 port map(A => S3, B => S3, Y => N);
	
	A2: AND_2 port map(A => S3_BAR, B => S2_BAR, Y => S4);
	A3: AND_2 port map(A => S4, B => S1_BAR, Y => S5);
	A4: AND_2 port map(A => S5, B => S0_BAR, Y => T3);
	AN5: AND_2 port map(A => T3, B => T3, Y => Z);
	
	I4: INVERTER port map(A => X3, Y => X3_BAR);
	I5: INVERTER port map(A => Y3, Y => Y3_BAR);
	A5: AND_2 port map(A => X3_BAR, B => Y3, Y => S6);
	A6: AND_2 port map(A => X3_BAR, B => Y3_BAR, Y => S7);
	A7: AND_2 port map(A => S3_BAR, B => S7, Y => S8);
	A8: AND_2 port map(A => X3, B => Y3, Y => S9);
	A9: AND_2 port map(A => S3_BAR, B => S9, Y => S10);
	O1: OR_2 port map(A => S6, B => S8, Y => S11);
	O2: OR_2 port map(A => S11, B => S10, Y => T1);
	O3: OR_2 port map(A => T1, B => T3, Y => G);
	
	A10: AND_2 port map(A => X3, B => Y3_BAR, Y => S12);
	A11: AND_2 port map(A => X3, B => Y3, Y => S13);
	A12: AND_2 port map(A => S3, B => S13, Y => S14);
	A13: AND_2 port map(A => X3_BAR, B => Y3_BAR, Y => S15);
	A14: AND_2 port map(A => S15, B => S3, Y => S16);
	O4: OR_2 port map(A => S12, B => S14, Y => S17);
	O5: OR_2 port map(A => S17, B => S16, Y => T2);
	O6: OR_2 port map(A => T2, B => T3, Y => L);
	
	A15: AND_2 port map(A => S12, B => S3_BAR, Y => S18);
	A16: AND_2 port map(A => S6, B => S3, Y => S19);
	O7: OR_2 port map(A => S18, B => S19, Y => V);

	
	
end architecture struct;