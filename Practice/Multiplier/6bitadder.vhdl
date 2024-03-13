library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity adder6bit is
	port(A,B: in std_logic_vector(5 downto 0); S: out std_logic_vector(5 downto 0); C: out std_logic);
end entity adder6bit;

architecture struct of adder6bit is
	component f_adder is
		port(A,B,Cin: in std_logic; S,Cout: out std_logic);
	end component f_adder;
	signal C0,C1,C2,C3,C4: std_logic;
begin
	f1: f_adder port map(A => A(0), B => B(0), Cin => '0', S => S(0), Cout => C0);
	f2: f_adder port map(A => A(1), B => B(1), Cin => C0, S => S(1), Cout => C1);
	f3: f_adder port map(A => A(2), B => B(2), Cin => C1, S => S(2), Cout => C2);
	f4: f_adder port map(A => A(3), B => B(3), Cin => C2, S => S(3), Cout => C3);
	f5: f_adder port map(A => A(4), B => B(4), Cin => C3, S => S(4), Cout => C4);
	f6: f_adder port map(A => A(5), B => B(5), Cin => C4, S => S(5), Cout => C);
end architecture struct;
