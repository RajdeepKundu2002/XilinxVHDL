----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:12:25 09/07/2022 
-- Design Name: 
-- Module Name:    DFF - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DFF is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end DFF;

architecture Behavioral of DFF is
signal X:std_logic;
begin
process(CLK) is
begin
	if(rising_edge(CLK)) then
		X<=D;
	end if;
end process;
Q<=X;
end Behavioral;

