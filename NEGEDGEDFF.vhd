----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:11:13 09/25/2022 
-- Design Name: 
-- Module Name:    NEGEDGEDFF - Behavioral 
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

entity NEGEDGEDFF is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end NEGEDGEDFF;

architecture Behavioral of NEGEDGEDFF is
signal X:std_logic;
begin
process(CLK,RST) is
begin
	if(RST='0') then
		X<='0';
	elsif(falling_edge(CLK)) then
		X<=D;
	end if;
end process;
Q<=X;
end Behavioral;

