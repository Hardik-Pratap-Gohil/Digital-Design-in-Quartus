-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	Component bcdtoX is
		port(A: in std_logic_vector(3 downto 0); X: out std_logic_vector(3 downto 0));
	end component bcdtoX;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: bcdtoX port map (	A(3) => input_vector(3),
												A(2) => input_vector(2),
												A(1) => input_vector(1),
												A(0) => input_vector(0),
												X(3) => output_vector(3),
												X(2) => output_vector(2),
												X(1) => output_vector(1),
												X(0) => output_vector(0));

end DutWrap;

