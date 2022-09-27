--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:39:18 09/24/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/ADD_SHIFT_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADD_SHIFT
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
 
ENTITY ADD_SHIFT_TB IS
END ADD_SHIFT_TB;
 
ARCHITECTURE behavior OF ADD_SHIFT_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADD_SHIFT
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         M : OUT  std_logic_vector(7 downto 0);
         Q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Q : std_logic_vector(7 downto 0); 
   signal M : std_logic_vector(7 downto 0); 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADD_SHIFT PORT MAP (
          A => A,
          B => B,
          Q => Q,
          M => M
        );

   -- Stimulus process
   stim_proc: process
   begin		
		A<="0111";
		B<="1000";
      wait for 100 ns;
		A<="1111";
		B<="1111";
      wait;
   end process;

END;
