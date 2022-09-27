--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:14:58 09/03/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/JKFF_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: JKFF
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
 
ENTITY JKFF_TB IS
END JKFF_TB;
 
ARCHITECTURE behavior OF JKFF_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JKFF
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         Q : OUT  std_logic;
         CLK : IN  std_logic;
         CLR : IN  std_logic;
         PR : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';
   signal PR : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 70 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JKFF PORT MAP (
          J => J,
          K => K,
          Q => Q,
          CLK => CLK,
          CLR => CLR,
          PR => PR
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
      PR<='1';
		CLR<='1';
		J<='0';
		K<='1';
		wait for 80 ns;
		PR<='0';
		wait for 50 ns;
		PR<='1';
		J<='0';
		K<='0';
		wait for 110 ns;
		J<='1';
		K<='0';
		wait for 100 ns;
		J<='0';
		K<='1';
		CLR<='0';
		wait for 150 ns;
		CLR<='1';
		J<='0';
		K<='1';
		wait for 150 ns;
		J<='1';
		K<='1';

      wait;
   end process;

END;
