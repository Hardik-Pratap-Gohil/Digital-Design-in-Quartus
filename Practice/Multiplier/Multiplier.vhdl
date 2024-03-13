library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity multiplier is
	port(A3,A2,A1,A0,B2,B1,B0: in std_logic; M6,M5,M4,M3,M2,M1,M0: out std_logic);
end entity multiplier;

architecture struct of multiplier is
	component adder6bit is
		port(A,B: in std_logic_vector(5 downto 0); S: out std_logic_vector(5 downto 0); C: out std_logic);
	end component adder6bit;
	signal A0B0,A1B0,A0B1,A2B0,A1B1,A0B2,A3B0,A2B1,A1B2,A3B1,A2B2,A3B2,C1,S1,S2,S3,S4,C2,C3,C4,T1: std_logic;
	signal S: std_logic_vector(5 downto 0);
begin
	An1: AND_2 port map(A => A0, B => B0, Y => A0B0);
	An2: AND_2 port map(A => A1, B => B0, Y => A1B0);
	An3: AND_2 port map(A => A0, B => B1, Y => A0B1);
	An4: AND_2 port map(A => A2, B => B0, Y => A2B0);
	An5: AND_2 port map(A => A1, B => B1, Y => A1B1);
	An6: AND_2 port map(A => A0, B => B2, Y => A0B2);
	An7: AND_2 port map(A => A3, B => B0, Y => A3B0);
	An8: AND_2 port map(A => A2, B => B1, Y => A2B1);
	An9: AND_2 port map(A => A1, B => B2, Y => A1B2);
	An10: AND_2 port map(A => A3, B => B1, Y => A3B1);
	An11: AND_2 port map(A => A2, B => B2, Y => A2B2);
	An12: AND_2 port map(A => A3, B => B2, Y => A3B2);
	
	adder1: adder6bit port map(A(0) => A0B0, A(1) => A1B0, A(2) => A2B0, A(3) => A3B0, A(4) => '0', A(5) => '0',
							B(0) => '0', B(1) => A0B1, B(2) => A1B1, B(3) => A2B1, B(4) => A3B1, B(5) => '0',
							S(0) => S(0), S(1) => S(1), S(2) => S(2), S(3) => S(3), S(4) => S(4), S(5) => S(5), C => T1
							);
	adder2: adder6bit port map(A(0) => S(0), A(1) => S(1), A(2) => S(2), A(3) => S(3), A(4) => S(4), A(5) => S(5),
							B(0) => '0', B(1) => '0', B(2) => A0B2, B(3) => A1B2, B(4) => A2B2, B(5) => A3B2,
							S(0) => M0, S(1) => M1, S(2) => M2, S(3) => M3, S(4) => M4, S(5) => M5, C => M6);

end architecture struct;