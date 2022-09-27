--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:07:22 09/07/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/MOD16SYNC_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MOD16SYNC
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
 
ENTITY MOD16SYNC_TB IS
END MOD16SYNC_TB;
 
ARCHITECTURE behavior OF MOD16SYNC_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MOD16SYNC
    PORT(
         CLK : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0);
         CLR : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MOD16SYNC PORT MAP (
          CLK => CLK,
          Q => Q,
          CLR => CLR
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
      CLR<='0';
      wait for 170 ns;
		CLR<='1';
		wait for 20 ns;
		CLR<='0';
		wait for 200 ns;
      --CLR<='1';
		wait for 20 ns;
		CLR<='0';
		wait for 200 ns;
      wait;
   end process;

END;
