
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
entity ALU is
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0);
           A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           F : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU;
architecture Behavioral of ALU is
begin
	process(S,A,B)
	begin
		case S is
			when "0000" => F <= B;
			when "0001" => F <= B - A;
			when "0010" => F <= A - B;
			when "0011" => F <= A + B;
			when "0100" => F <= A xor B;
			when "0101" => F <= A or B;
			when "0110" => F <= A and B;
			when others => F <= "1111";
		end case;
	end process;
end Behavioral;

