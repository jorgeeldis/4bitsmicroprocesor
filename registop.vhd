--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:44:03 07/04/2022
-- Design Name:   
-- Module Name:   /home/manuel/Documentos/microprocesadores/proyecto/proyecto/registop.vhd
-- Project Name:  proyecto
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registo_in
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY registrop IS
END registrop;
 
ARCHITECTURE behavior OF registrop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registro_in
    PORT(
         CLK : IN  std_logic;
         INPUT : IN  std_logic_vector(3 downto 0);
         OUTPUT : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal INPUT : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal OUTPUT : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registro_in PORT MAP (
          CLK => CLK,
          INPUT => INPUT,
          OUTPUT => OUTPUT
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

      wait;
   end process;

END;
