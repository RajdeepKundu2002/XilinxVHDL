--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:44:07 09/03/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/SRFF_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SRFF
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
 
ENTITY SRFF_TB IS
END SRFF_TB;
 
ARCHITECTURE behavior OF SRFF_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SRFF
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         Q : OUT  std_logic;
         CLK : IN  std_logic;
         PR : IN  std_logic;
         CLR : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal R : std_logic := '0';
   signal CLK : std_logic := '0';
   signal PR : std_logic := '0';
   signal CLR : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 70 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SRFF PORT MAP (
          S => S,
          R => R,
          Q => Q,
          CLK => CLK,
          PR => PR,
          CLR => CLR
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      PR<='1';
		CLR<='1';
		S<='1';
		R<='0';
		wait for 150 ns;
		S<='0';
		R<='1';
		PR<='0';
		wait for 80 ns;
		PR<='1';
		wait for 50 ns;
		S<='0';
		R<='0';
		wait for 140 ns;
		S<='1';
		R<='0';
		wait for 100 ns;
		S<='0';
		R<='1';
		CLR<='0';
		wait for 150 ns;
		CLR<='1';
		S<='0';
		R<='1';
		wait for 140 ns;
		S<='1';
		R<='1'; 
      wait;
   end process;

END;
