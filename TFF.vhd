----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:32:41 09/14/2022 
-- Design Name: 
-- Module Name:    TFF - Behavioral 
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

entity TFF is
    Port ( T : in  STD_LOGIC;
			  RST : in STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end TFF;

architecture Behavioral of TFF is
signal X:std_logic;
begin
process(CLK) is
begin
	if(RST='0') then
		X<='0';
	elsif(rising_edge(CLK)) then
		X<=T XOR X;
	end if;
end process;
Q<=X;
end Behavioral;

