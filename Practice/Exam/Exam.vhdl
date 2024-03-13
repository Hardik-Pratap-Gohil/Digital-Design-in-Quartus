library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity bcdtoX is
	port(A,B: in std_logic_vector(3 downto 0); M: in std_logic; Y: out std_logic_vector(4 downto 0));
end entity bcdtox;

architecture struct of bcdtoX is
	COMPONENT AdderSubtractor is
		port(A0,A1,A2,A3,B0,B1,B2,B3,M: in std_logic;Cout, S0,S1,S2,S3: out std_logic); 
	end COMPONENT AdderSubtractor;


	signal XA,XB: std_logic_vector(3 downto 0);
	signal S: std_logic_vector(4 downto 0);
begin
	XA(3) <= ((A(3) and (not A(1))) or (A(2) and A(0)) or (A(1) and A(2)) or (A(1) and A(3)));
	XA(2) <= (A(1) and (not A(2))) or ((not A(1)) and (not A(0)) and A(2)) or ((not A(1) and A(0) and (not A(2))));
	XA(1) <= A(1) xor (not A(0));
	XA(0) <= ((not A(0)) and ((not A(2)) or (not A(3))));
	XB(3) <= ((B(3) and (not B(1))) or (B(2) and B(0)) or (B(1) and B(2)) or (B(1) and B(3)));
	XB(2) <= (B(1) and (not B(2))) or ((not B(1)) and (not B(0)) and B(2)) or ((not B(1) and B(0) and (not B(2))));
	XB(1) <= B(1) xor (not B(0));
	XB(0) <= ((not B(0)) and ((not B(2)) or (not B(3))));
	
	dsd: AdderSubtractor port map(A0 => XA(0), A1 => XA(1), A2 => XA(2), A3 => XA(3), B0 => XB(0), B1 => XB(1), B2 => XB(2), B3 => XB(3), M => M, S0 => S(0), S1 => S(1), S2 => S(2), S3 => S(3), Cout => S(4));
	dcd: AdderSubtractor port map(A0 => S(0), A1 => S(1), A2 => S(2), A3 => S(3), B0 => '0', B1 => '1', B2 => '1', B3 => '0', M => '1', S0 => Y(0), S1 => Y(1), S2 => Y(2), S3 => Y(3), Cout => S(4));
	AN: AND_2 port map(A => '0', B => '0', Y => Y(4));
	
	
end architecture struct;
	
