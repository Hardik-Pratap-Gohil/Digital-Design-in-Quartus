-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(8 downto 0);
       	output_vector: out std_logic_vector(4 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	Component bcdtoX is
		port(A,B: in std_logic_vector(3 downto 0); M: in std_logic; Y: out std_logic_vector(4 downto 0));
	end component bcdtoX;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: bcdtoX port map (	A(3) => input_vector(8),
												A(2) => input_vector(7),
												A(1) => input_vector(6),
												A(0) => input_vector(5),
												B(3) => input_vector(4),
												B(2) => input_vector(3),
												B(1) => input_vector(2),
												B(0) => input_vector(1),
												M => input_vector(0),
												Y(4) => output_vector(4),
												Y(3) => output_vector(3),
												Y(2) => output_vector(2),
												Y(1) => output_vector(1),
												Y(0) => output_vector(0));

end DutWrap;

