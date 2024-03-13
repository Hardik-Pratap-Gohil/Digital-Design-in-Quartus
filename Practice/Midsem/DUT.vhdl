-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(4 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	Component midsem is
		port(X3,X2,X1,X0,Y3,Y2,Y1,Y0: in std_logic; Z,N,V,L,G: out std_logic);
	end component midsem;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: midsem port map (X3 => input_vector(7),
												X2 => input_vector(6),
												X1 => input_vector(5),
												X0 => input_vector(4),
												Y3 => input_vector(3),
												Y2 => input_vector(2),
												Y1 => input_vector(1),
												Y0 => input_vector(0),
												Z => output_vector(4),
												N => output_vector(3),
												V => output_vector(2),
												L => output_vector(1),
												G => output_vector(0));

end DutWrap;

