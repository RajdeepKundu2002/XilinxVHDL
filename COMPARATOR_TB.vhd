--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:00:38 09/25/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/COMPARATOR_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: COMPARATOR
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
 
ENTITY COMPARATOR_TB IS
END COMPARATOR_TB;
 
ARCHITECTURE behavior OF COMPARATOR_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT COMPARATOR
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Q : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: COMPARATOR PORT MAP (
          A => A,
          B => B,
          Q => Q
        );

   -- Stimulus process
   stim_proc: process
   begin		
      A<="1100";
		B<="1011";
		wait for 50 ns;
		A<="1000";
		B<="1011";
		wait for 50 ns;
		A<="0000";
		B<="1111";
		wait for 50 ns;
		A<="1111";
		B<="0000";
		wait for 50 ns;
		A<="1001";
		B<="0101";
		wait for 50 ns;
      wait;
   end process;

END;
