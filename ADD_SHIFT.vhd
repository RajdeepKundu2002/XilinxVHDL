----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:25:11 09/24/2022 
-- Design Name: 
-- Module Name:    ADD_SHIFT - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADD_SHIFT is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           M : out  STD_LOGIC_VECTOR (7 downto 0);
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end ADD_SHIFT;
architecture Behavioral of ADD_SHIFT is
begin
process(A,B)
variable X,Y:STD_LOGIC_VECTOR(7 downto 0);
begin
	X:="00000000";
	Y:="0000" & B;
	for i in 0 to 3 loop
		if(A(i)='1')then
			X:=X+Y;
		end if;
		Y:=Y(6 downto 0)&'0';
	end loop;
	Q<=X;
	M<=Y;
end process;
end Behavioral;

