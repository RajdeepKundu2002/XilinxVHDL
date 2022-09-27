----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:58:17 09/03/2022 
-- Design Name: 
-- Module Name:    JKFF - Behavioral 
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

entity JKFF is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           PR : in  STD_LOGIC);
end JKFF;

architecture Behavioral of JKFF is
component SRFF is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           CLK : in  STD_LOGIC;
           PR : in  STD_LOGIC;
           CLR : in  STD_LOGIC);
end component;
signal x,a,b:std_logic;
begin
	a<=J AND NOT(x);
	b<=K AND x;
	SR: SRFF port map(a, b, x, CLK, PR, CLR);
	Q<=x;
end Behavioral;

