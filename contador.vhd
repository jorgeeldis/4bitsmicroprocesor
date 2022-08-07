
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
entity contador is
    Port ( CLK : in  STD_LOGIC;
			  clr : in std_logic;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end contador;

architecture Behavioral of contador is
signal count: std_logic_vector (3 downto 0):="0000";
begin
	process (CLK)
		begin
			if (clr='1') then
				count <= (others => '0');
			elsif CLK = '0' and CLK'event then
				count <= count + 1;
			end if;
	end process;
	Q <= count;
end Behavioral;

