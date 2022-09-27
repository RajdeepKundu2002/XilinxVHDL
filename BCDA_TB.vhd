--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:06:23 09/08/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/BCDA_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BCDA
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
 
ENTITY BCDA_TB IS
END BCDA_TB;
 
ARCHITECTURE behavior OF BCDA_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BCDA
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         S : OUT  std_logic;
         C1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal C1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCDA PORT MAP (
          A => A,
          B => B,
          C => C,
          S => S,
          C1 => C1
        );

   -- Stimulus process
   stim_proc: process
   begin		
      A<="0010";
		B<="0001";
		C<='0';
		wait for 50 ns;
		A<="0100";
		B<="0100";
		wait for 50 ns;
		A<="0101";
		B<="0101";
		wait for 50 ns;
		A<="0100";
		B<="1000";
		wait for 50 ns;
		A<="0111";
		B<="0110";
		wait for 50 ns;
      wait;
   end process;

END;
