LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY comtadorp IS
END comtadorp;
 
ARCHITECTURE behavior OF comtadorp IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT contador
    PORT(
         CLK : IN  std_logic;
         clr : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal clr : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: contador PORT MAP (
          CLK => CLK,
          clr => clr,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for CLK_period*10;
--
--      -- insert stimulus here 
		clr <= '1','0' after 10 ns;
      wait;
   end process;

END;
