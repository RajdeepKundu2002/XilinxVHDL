--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:06:30 09/27/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/SEQMC_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SEQMC
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
 
ENTITY SEQMC_TB IS
END SEQMC_TB;
 
ARCHITECTURE behavior OF SEQMC_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SEQMC
    PORT(
         X : IN  std_logic;
         CLK : IN  std_logic;
         CLR : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';

 	--Outputs
   signal Z : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SEQMC PORT MAP (
          X => X,
          CLK => CLK,
          CLR => CLR,
          Z => Z
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
      CLR<='0';
		wait for 10 ns;
		CLR<='1';
		X<='0';
		wait for 70 ns;
		X<='0';
		wait for 70 ns;
		X<='1';
		wait for 70 ns;
		X<='0';
		wait for 70 ns;
		X<='1';
		wait for 70 ns;
		X<='1';
		wait for 70 ns;
		X<='0';
		wait for 70 ns;
		X<='1';
		wait for 70 ns;
		X<='0';
		wait for 70 ns;
		X<='0';
		wait for 70 ns;
      wait;
   end process;

END;
