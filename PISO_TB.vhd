--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:13:36 09/07/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/PISO_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PISO
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
 
ENTITY PISO_TB IS
END PISO_TB;
 
ARCHITECTURE behavior OF PISO_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PISO
    PORT(
         LSBAR : IN  std_logic;
         Q : OUT  std_logic;
			CLK : IN std_logic;
         P : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal LSBAR : std_logic := '0';
   signal P : std_logic_vector(3 downto 0) := (others => '0');
	signal CLK : std_logic := '0';
 	--Outputs
   signal Q : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant CLK_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PISO PORT MAP (
          LSBAR => LSBAR,
          Q => Q,
          P => P,
			 CLK => CLK
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
		LSBAR<='1';
		P<="1010";		
		wait for 40 ns;
		LSBAR<='0';
		wait for 300 ns;
		LSBAR<='1';
		P<="0101";		
		wait for 40 ns;
		LSBAR<='0';
		wait for 200 ns;
      wait;
   end process;

END;
