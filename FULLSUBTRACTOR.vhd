----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:31:16 09/01/2022 
-- Design Name: 
-- Module Name:    FULLSUBTRACTOR - Behavioral 
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

entity FULLSUBTRACTOR is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           B : in  STD_LOGIC;
           R : out  STD_LOGIC;
           B1 : out  STD_LOGIC);
end FULLSUBTRACTOR;

architecture Behavioral of FULLSUBTRACTOR is
component HALFADDER is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC;
           S : out  STD_LOGIC);
end component;
component HALFSUBTRACTOR is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           R : out  STD_LOGIC;
           B : out  STD_LOGIC);
end component;
signal x1, x2, x3:std_logic;
begin

	HA:HALFADDER port map(B,Y,x1,x2);
	HS:HALFSUBTRACTOR port map(X,x2,R,x3);
	B1<=x1 OR x3;

end Behavioral;

