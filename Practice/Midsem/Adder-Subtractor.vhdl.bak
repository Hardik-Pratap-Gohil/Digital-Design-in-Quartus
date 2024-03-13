library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity AdderSubtractor is
	port(A0,A1,A2,A3,B0,B1,B2,B3,M: in std_logic;Cout, S0,S1,S2,S3: out std_logic); 
end entity AdderSubtractor;


architecture struct of AdderSubtractor is
component F_ADDER is 
	port(A,B, Cin: in std_logic; S, Cout: out std_logic);
end component F_ADDER;

component XOR_GATE is 
	port(A,B: in std_logic; OUTPUT: out std_logic);
end component XOR_GATE;

	signal t1,t2,t3,t4,C1,C2,C3: std_logic;

begin
	X1: XOR_GATE port map(A => M, B => B0, OUTPUT => t1);
	X2: XOR_GATE port map(A => M, B => B1, OUTPUT => t2);
	X3: XOR_GATE port map(A => M, B => B2, OUTPUT => t3);
	X4: XOR_GATE port map(A => M, B => B3, OUTPUT => t4);
	F1: F_ADDER port map(A => A0, B => t1, Cin => M, S => S0, Cout => C1);
	F2: F_ADDER port map(A => A1, B => t2, Cin => C1, S => S1, Cout => C2);
	F3: F_ADDER port map(A => A2, B => t3, Cin => C2, S => S2, Cout => C3);
	F4: F_ADDER port map(A => A3, B => t4, Cin => C3, S => S3, Cout => Cout);
end architecture struct;

	