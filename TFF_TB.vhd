--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:35:27 09/14/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/TFF_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TFF
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
 
ENTITY TFF_TB IS
END TFF_TB;
 
ARCHITECTURE behavior OF TFF_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TFF
    PORT(
         T : IN  std_logic;
         CLK : IN  std_logic;
			RST : IN std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 70 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TFF PORT MAP (
          T => T,
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
		RST<='0';
		wait for 10 ns;
		RST<='1';	
      wait for 100 ns;
      T<='0';
		wait for 50 ns;
		T<='1';
		wait for 180 ns;
		T<='0';
		wait for 100 ns;
      T<='0';
		wait for 50 ns;
		T<='1';
		wait for 180 ns;
		T<='0';
      wait;
   end process;

END;
