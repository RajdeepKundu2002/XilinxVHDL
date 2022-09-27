--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:11:29 09/23/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/ALU_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
-- that these types always be used for the tOP-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALU_TB IS
END ALU_TB;
 
ARCHITECTURE behavior OF ALU_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         OP : IN  std_logic_vector(3 downto 0);
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal OP : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          OP => OP,
          Q => Q
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      A<="1010";
		B<="0011";
		OP<="0000";
		wait for 50 ns;
		OP<="0001";
		wait for 50 ns;
		OP<="0010";
		wait for 50 ns;
		OP<="0011";
		wait for 50 ns;
		OP<="0100";
		wait for 50 ns;
		OP<="0101";
		wait for 50 ns;
		OP<="0110";
		wait for 50 ns;
		OP<="0111";
		wait for 50 ns;
		OP<="1000";
		wait for 50 ns;
		OP<="1001";
		wait for 50 ns;
		OP<="1010";
		wait for 50 ns;
		OP<="1011";
		wait for 50 ns;
		OP<="1100";
		wait for 50 ns;
      wait;
   end process;

END;
