--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:08:55 09/26/2022
-- Design Name:   
-- Module Name:   D:/Xilinx/Projects/Fifth_Sem_Mini_Project/FREQDIV_TB.vhd
-- Project Name:  Fifth_Sem_Mini_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FREQDIV
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
 
ENTITY FREQDIV_TB IS
END FREQDIV_TB;
 
ARCHITECTURE behavior OF FREQDIV_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FREQDIV
    PORT(
         CLK : IN  std_logic;
         N : IN  std_logic_vector(3 downto 0);
         Y : OUT  std_logic_vector(3 downto 0);
         X : OUT  std_logic_vector(3 downto 0);
         RST : IN  std_logic;
         A : OUT  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal N : std_logic_vector(3 downto 0) := (others => '0');
   signal RST : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(3 downto 0);
   signal X : std_logic_vector(3 downto 0);
   signal A : std_logic;
   signal Q : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FREQDIV PORT MAP (
          CLK => CLK,
          N => N,
          Y => Y,
          X => X,
          RST => RST,
          A => A,
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
		N<="1100";
      wait;
   end process;

END;
