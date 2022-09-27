----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:51:43 09/01/2022 
-- Design Name: 
-- Module Name:    HALFSUBTRACTOR - Behavioral 
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

entity HALFSUBTRACTOR is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           R : out  STD_LOGIC;
           B : out  STD_LOGIC);
end HALFSUBTRACTOR;

architecture Behavioral of HALFSUBTRACTOR is

begin

	R<=X XOR Y;
	B<=NOT(X) AND Y;

end Behavioral;

