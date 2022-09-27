--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:44:17 09/01/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/HALFADDER_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: HALFADDER
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
 
ENTITY HALFADDER_TB IS
END HALFADDER_TB;
 
ARCHITECTURE behavior OF HALFADDER_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT HALFADDER
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : OUT  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal C : std_logic;
   signal S : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: HALFADDER PORT MAP (
          A => A,
          B => B,
          C => C,
          S => S
        );

   -- Stimulus process
   stim_proc: process
   begin		
      A<='0';
		B<='0';
		wait for 100 ns;
		A<='0';
		B<='1';
		wait for 100 ns;
		A<='1';
		B<='0';
		wait for 100 ns;
		A<='1';
		B<='1';
		wait for 100 ns;
      wait;
   end process;

END;
