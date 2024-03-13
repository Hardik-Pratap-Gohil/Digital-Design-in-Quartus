-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	Component mux4x1 is
		port(In3,In2,In1,In0,S2,S1: in std_logic; Y: out std_logic);	
	end component mux4x1;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: mux4x1 port map (In3 => input_vector(5),
											 In2 => input_vector(4),
											 In1 => input_vector(3),
											 In0 => input_vector(2),
											 S2 => input_vector(1),
											 S1 => input_vector(0),
											 Y => OUTput_vector(0)
											);

end DutWrap;

