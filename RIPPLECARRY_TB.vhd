--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:21:55 09/01/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/RIPPLECARRY_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RIPPLECARRY
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
 
ENTITY RIPPLECARRY_TB IS
END RIPPLECARRY_TB;
 
ARCHITECTURE behavior OF RIPPLECARRY_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RIPPLECARRY
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(3 downto 0);
         C : IN  std_logic;
         C1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic;

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal C1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RIPPLECARRY PORT MAP (
          A => A,
          B => B,
          S => S,
          C => C,
			 C1 => C1
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		A<="0100";
		B<="0011";
		C<='0';
		wait for 100 ns;
		A<="0100";
		B<="1010";
		wait for 100 ns;
		A<="0101";
		B<="0011";
		wait for 100 ns;
		A<="0001";
		B<="0011";
		wait for 100 ns;
		A<="1001";
		B<="1011";
		wait for 100 ns;
      wait;
   end process;

END;
