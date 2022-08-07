
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity Registrod is
    Port ( CLK : in  STD_LOGIC;
           INPUT : in  STD_LOGIC_VECTOR (3 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (3 downto 0));
end Registrod;

architecture Behavioral of Registrod is
begin
	process (CLK,INPUT)
		begin
			if CLK'event and CLK = '0' then
				OUTPUT <= INPUT;
			end if;
	end process;

end Behavioral;

