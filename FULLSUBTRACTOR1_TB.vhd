--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:51:53 09/01/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/FULLSUBTRACTOR1_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FULLSUBTRACTOR1
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
 
ENTITY FULLSUBTRACTOR1_TB IS
END FULLSUBTRACTOR1_TB;
 
ARCHITECTURE behavior OF FULLSUBTRACTOR1_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FULLSUBTRACTOR1
    PORT(
         X : IN  std_logic;
         Y : IN  std_logic;
         B : IN  std_logic;
         R : OUT  std_logic;
         B1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal R : std_logic;
   signal B1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FULLSUBTRACTOR1 PORT MAP (
          X => X,
          Y => Y,
          B => B,
          R => R,
          B1 => B1
        );

   -- Stimulus process
   stim_proc: process
   begin		
      X<='0';
		Y<='0';
		B<='0';
		wait for 100 ns;
		X<='0';
		Y<='0';
		B<='1';
		wait for 100 ns;
		X<='0';
		Y<='1';
		B<='0';
		wait for 100 ns;
		X<='0';
		Y<='1';
		B<='1';
		wait for 100 ns;
		X<='1';
		Y<='0';
		B<='0';
		wait for 100 ns;
		X<='1';
		Y<='0';
		B<='1';
		wait for 100 ns;
      X<='1';
		Y<='1';
		B<='0';
		wait for 100 ns;
		X<='1';
		Y<='1';
		B<='1';
		wait for 100 ns;
		wait;
   end process;

END;
