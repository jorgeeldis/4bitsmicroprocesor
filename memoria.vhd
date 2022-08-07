library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity memoria is
    Port ( dic : in  STD_LOGIC_VECTOR (3 downto 0);
           sal : out  STD_LOGIC_VECTOR (3 downto 0));
end memoria;

architecture Behavioral of memoria is

begin
process (dic)
	begin
		case dic is
			when "0000" => sal <= "0000";
			when "0001" => sal <= "1100";
			when "0010" => sal <= "0011";
			when "0011" => sal <= "0010";
			when "0100" => sal <= "0010";
			when "0101" => sal <= "0101";
			when "0110" => sal <= "0101";
			when "0111" => sal <= "0011";
			when "1000" => sal <= "0100";
			when "1001" => sal <= "0101";
			when "1010" => sal <= "0110";
			when "1011" => sal <= "1011";
			when "1100" => sal <= "0001";
			when "1101" => sal <= "1111";
			when "1110" => sal <= "0011";
			when others => sal <= "0011";
		end case;
	end process;
end Behavioral;

