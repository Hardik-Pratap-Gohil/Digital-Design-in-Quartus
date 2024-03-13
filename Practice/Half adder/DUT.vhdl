-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	Component h_adder is
		port(A,B: in std_logic; S,C: out std_logic);	
	end component h_adder;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: h_adder port map (A => input_vector(1), B => input_vector(0),S => output_vector(0), C => output_vector(1));

end DutWrap;

