
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity registro_in is
    Port ( CLK : in  STD_LOGIC;
           INPUT : in  STD_LOGIC_VECTOR (3 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (3 downto 0));
end registro_in;

architecture Behavioral of registro_in is
begin
	process (CLK,INPUT)
		begin
			if CLK'event and CLK = '0' then
				OUTPUT <= INPUT;
			end if;
	end process;

end Behavioral;

