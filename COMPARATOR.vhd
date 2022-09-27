----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:46:26 09/14/2022 
-- Design Name: 
-- Module Name:    COMPARATOR - Behavioral 
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

entity COMPARATOR is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Q : out  STD_LOGIC);
end COMPARATOR;

architecture Behavioral of COMPARATOR is
signal X3,X2,X1,X0:std_logic;
begin
	X3<=A(3) XNOR B(3);
	X2<=A(2) XNOR B(2);
	X1<=A(1) XNOR B(1);
	X0<=A(0) XNOR B(0);
	Q<=X3 AND X2 AND X1 AND X0;
end Behavioral;

