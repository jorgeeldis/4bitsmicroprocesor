library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity Final is
	Port (CLK : in STD_LOGIC;
	O : out STD_LOGIC_VECTOR (3 downto 0));
end Final;

architecture Behavioral of Final is
SIGNAL XA, XB, XC, XD, XE: STD_LOGIC;
SIGNAL Qcp, Smp, Sri, Srd, Sap, Falu, Sat: STD_LOGIC_VECTOR (3 downto 0);

component GCM is
	Port (CLK : in STD_LOGIC;
	A : out STD_LOGIC;
	B : out STD_LOGIC;
	C : out STD_LOGIC;
	D : out STD_LOGIC;
	E : out STD_LOGIC);
end component;


component contador is
    Port ( CLK : in  STD_LOGIC;
			  clr : in std_logic;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component memoria is
    Port ( dic : in  STD_LOGIC_VECTOR (3 downto 0);
           sal : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component registro_in is
    Port ( CLK : in  STD_LOGIC;
           INPUT : in  STD_LOGIC_VECTOR (3 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component Registrod is
    Port ( CLK : in  STD_LOGIC;
           INPUT : in  STD_LOGIC_VECTOR (3 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component ALU is
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0);
           A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           F : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component AcumuladorT is
    Port ( CLK : in  STD_LOGIC;
           INPUT : in  STD_LOGIC_VECTOR (3 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component Acumulador is
    Port ( CLK : in  STD_LOGIC;
           INPUT : in  STD_LOGIC_VECTOR (3 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

begin
STEP1: GCM PORT MAP (CLK, XA, XB, XC, XD, XE);
STEP2: contador PORT MAP (XE, Qcp);
STEP3: memoria PORT MAP (Qcp, Smp);
STEP4: registro_in PORT MAP (XA, Smp, Srd);
STEP5: Registrod PORT MAP (XB, Smp, Srd);
STEP6: ALU PORT MAP (Sri, Sap, Srd, Falu);
STEP7: AcumuladorT PORT MAP (XC, Falu, Sat);
STEP8: Acumulador PORT MAP (XD, Sat, Sap);

O <= Sap;
