----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:30:28 09/03/2022 
-- Design Name: 
-- Module Name:    SRFF - Behavioral 
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

entity SRFF is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           CLK : in  STD_LOGIC;
           PR : in  STD_LOGIC;
           CLR : in  STD_LOGIC);
end SRFF;

architecture Behavioral of SRFF is
signal x: std_logic;
begin
SRFF:process(CLK,PR,CLR) is
begin
	if(CLR='0') then
		x<='0';
	elsif(PR='0') then
		x<='1';
	elsif(rising_edge(CLK)) then
		if(S='1' AND R='0') then
			x<='1';
		elsif(S='0' AND R='1') then
			x<='0';
		elsif(S='1' AND R='1') then
			x<='X';
		end if;
	end if;
end process;
Q<=x;
end Behavioral;

