--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:45:08 09/07/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/DFFERST_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DFFWRST
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
 
ENTITY DFFERST_TB IS
END DFFERST_TB;
 
ARCHITECTURE behavior OF DFFERST_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DFFWRST
    PORT(
         D : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 70 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DFFWRST PORT MAP (
          D => D,
          CLK => CLK,
          RST => RST,
          Q => Q
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
      wait for 100 ns;
      D<='0';
		wait for 50 ns;
		D<='1';
		wait for 180 ns;
		D<='0';
		wait for 20 ns;
		RST<='1';
		wait for 100 ns;
		RST<='0';
		wait for 100 ns;
      D<='0';
		wait for 50 ns;
		D<='1';
		wait for 180 ns;
		D<='0';
      wait;
   end process;

END;
