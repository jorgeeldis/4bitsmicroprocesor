----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:39:31 07/07/2022 
-- Design Name: 
-- Module Name:    GCM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity GCM is
	Port (CLK : in STD_LOGIC;
	Q: out STD_LOGIC_VECTOR (3 downto 0);
	A : out STD_LOGIC;
	B : out STD_LOGIC;
	C : out STD_LOGIC;
	D : out STD_LOGIC;
	E : out STD_LOGIC);
end GCM;

architecture Behavioral of GCM is

signal count:STD_LOGIC_VECTOR(3 downto 0):=(others=> '0');

begin
PROCESS(CLK)

begin
if(CLK'event and CLK = '0')then
count <= count + 1;
end if;
end PROCESS;

Q <= count;
A <= '1' when (count="0000") else
'1' when (count="1000") else '0';
B <= '1' when (count="0010") else
'1' when (count="1010") else '0';
C <= '1' when (count="0100") else
'1' when (count="1100") else '0';
D <= '1' when (count="0110") else
'1' when (count="1110") else '0';
E <= '1' when (count="0001") else
'1' when (count="1001") else
'1' when (count="1011") else
'1' when (count="0011") else '0';

end Behavioral;

