--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:14:11 09/22/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/FREQDIV_B_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FREQDIV_B
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
 
ENTITY FREQDIV_B_TB IS
END FREQDIV_B_TB;
 
ARCHITECTURE behavior OF FREQDIV_B_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FREQDIV_B
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         N : IN  std_logic_vector(3 downto 0);
         Q : OUT  std_logic;
         QC : OUT  std_logic_vector(3 downto 0)
			);
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal N : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Q : std_logic;
   signal QC : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FREQDIV_B PORT MAP (
          CLK => CLK,
          N => N,
          RST => RST,
          Q => Q,
          QC => QC
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
		N<="1010";
		wait for 10 ns;
		RST<='1';
      wait;	
   end process;

END;
