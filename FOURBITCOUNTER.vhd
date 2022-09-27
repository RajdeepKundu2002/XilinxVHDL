----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:17:41 09/14/2022 
-- Design Name: 
-- Module Name:    FOURBITCOUNTER - Behavioral 
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

entity FOURBITCOUNTER is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end FOURBITCOUNTER;

architecture Behavioral of FOURBITCOUNTER is
signal X:std_logic_vector (3 downto 0);
begin
process(CLK,RST) is
begin
	if(RST='0') then
		X<="0000";
	elsif(rising_edge(CLK)) then
			X<=X+'1';
	end if;
end process;
Q<=X;
end Behavioral;

