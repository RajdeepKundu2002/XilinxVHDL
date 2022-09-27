--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:49:43 09/03/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/TWOBCDADDER_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TWOBCDADDER
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
 
ENTITY TWOBCDADDER_TB IS
END TWOBCDADDER_TB;
 
ARCHITECTURE behavior OF TWOBCDADDER_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TWOBCDADDER
    PORT(
         A0 : IN  std_logic_vector(3 downto 0);
         A1 : IN  std_logic_vector(3 downto 0);
         B0 : IN  std_logic_vector(3 downto 0);
         B1 : IN  std_logic_vector(3 downto 0);
         S0 : OUT  std_logic_vector(3 downto 0);
         S1 : OUT  std_logic_vector(3 downto 0);
         C : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A0 : std_logic_vector(3 downto 0) := (others => '0');
   signal A1 : std_logic_vector(3 downto 0) := (others => '0');
   signal B0 : std_logic_vector(3 downto 0) := (others => '0');
   signal B1 : std_logic_vector(3 downto 0) := (others => '0');
   signal S0 : std_logic_vector(3 downto 0) := (others => '0');
   signal S1 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal C : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TWOBCDADDER PORT MAP (
          A0 => A0,
          A1 => A1,
          B0 => B0,
          B1 => B1,
          S0 => S0,
          S1 => S1,
          C => C
        );

   -- Stimulus process
   stim_proc: process
   begin		
      A1<="0010";
		B1<="0001";
		A0<="0110";
		B0<="1001";
		wait for 50 ns;
		A1<="0100";
		B1<="0100";
		A0<="0011";
		B0<="0010";
		wait for 50 ns;
		A1<="0101";
		B1<="0001";
		A0<="0110";
		B0<="0011";
		wait for 50 ns;
		A1<="0110";
		B1<="1000";
		A0<="0011";
		B0<="0011";
		wait for 50 ns;
		A1<="0111";
		B1<="0110";
		A0<="0010";
		B0<="0101";
		wait for 50 ns;
      wait;
   end process;

END;
