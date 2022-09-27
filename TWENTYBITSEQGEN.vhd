----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:41:41 09/14/2022 
-- Design Name: 
-- Module Name:    TWENTYBITSEQGEN - Behavioral 
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

entity TWENTYBITSEQGEN is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end TWENTYBITSEQGEN;

architecture Behavioral of TWENTYBITSEQGEN is
signal X:std_logic_vector(19 downto 0);
signal A:std_logic;
begin
	process(CLK,RST)
	begin
		if(RST='0') then
			X<="00000000000000000000";
		elsif(rising_edge(CLK))then
			X(0)<=A;
			X(1)<=X(0);
			X(2)<=X(1);
			X(3)<=X(2);
			X(4)<=X(3);
			X(5)<=X(4);
			X(6)<=X(5);
			X(7)<=X(6);
			X(8)<=X(7);
			X(9)<=X(8);
			X(10)<=X(9);
			X(11)<=X(10);
			X(12)<=X(11);
			X(13)<=X(12);
			X(14)<=X(13);
			X(15)<=X(14);
			X(16)<=X(15);
			X(17)<=X(16);
			X(18)<=X(17);
			X(19)<=X(18);
		end if;
	end process;
	process(X)
	begin
		if(X<="00000000000000000000")then
			A<='1';
		else
			A<=X(16) XOR X(19);
		end if;
	end process;
	Q<=X(19);
end Behavioral;

