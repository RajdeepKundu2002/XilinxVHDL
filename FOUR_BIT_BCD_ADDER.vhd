----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:50:07 09/01/2022 
-- Design Name: 
-- Module Name:    FOUR_BIT_BCD_ADDER - Behavioral 
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

entity FOUR_BIT_BCD_ADDER is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  C : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C1 : out  STD_LOGIC);
end FOUR_BIT_BCD_ADDER;

architecture Behavioral of FOUR_BIT_BCD_ADDER is
component FULLADDER is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C1 : out  STD_LOGIC);
end component;
signal x1,x2,x3,x4:std_logic;
begin

	FA1:FULLADDER port map(A(0),B(0),C,S(0),x1);
	FA2:FULLADDER port map(A(1),B(1),x1,S(1),x2);
	FA3:FULLADDER port map(A(2),B(2),x2,S(2),x3);
	FA4:FULLADDER port map(A(3),B(3),x3,S(3),C1);

end Behavioral;

