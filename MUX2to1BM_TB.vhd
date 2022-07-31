--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:24:56 07/28/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/MUX2to1BM_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX2to1BM
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
 
ENTITY MUX2to1BM_TB IS
END MUX2to1BM_TB;
 
ARCHITECTURE behavior OF MUX2to1BM_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX2to1BM
    PORT(
         i1 : IN  std_logic;
         i0 : IN  std_logic;
         c : IN  std_logic;
         f : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i1 : std_logic := '0';
   signal i0 : std_logic := '0';
   signal c : std_logic := '0';

 	--Outputs
   signal f : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX2to1BM PORT MAP (
          i1 => i1,
          i0 => i0,
          c => c,
          f => f
        );

   -- Stimulus process
   stim_proc: process
   begin		
      i1<='0';
		i0<='1';
		c<='0';
		wait for 20 ns;
		i1<='0';
		i0<='1';
		c<='1';
		wait for 30 ns;
		
      wait;
   end process;

END;
