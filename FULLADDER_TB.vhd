--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:13:41 09/01/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/FULLADDER_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FULLADDER
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
 
ENTITY FULLADDER_TB IS
END FULLADDER_TB;
 
ARCHITECTURE behavior OF FULLADDER_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FULLADDER
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
   uut: FULLADDER PORT MAP (
          A => A,
          B => B,
          C => C,
          S => S,
          C1 => C1
        );

   -- Stimulus process
   stim_proc: process
   begin		
      A<='0';
		B<='1';
		C<='0';
		wait for 100 ns;
		A<='0';
		B<='1';
		C<='1';
		wait for 100 ns;
		A<='1';
		B<='0';
		C<='0';
		wait for 100 ns;
		A<='0';
		B<='0';
		C<='1';
		wait for 100 ns;
		A<='1';
		B<='1';
		C<='1';
		wait for 100 ns;
      wait;
   end process;

END;
