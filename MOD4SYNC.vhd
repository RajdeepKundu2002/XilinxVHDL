----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:41:03 09/06/2022 
-- Design Name: 
-- Module Name:    MOD4SYNC - Behavioral 
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

entity MOD4SYNC is
    Port ( CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (1 downto 0);
			  CLR : in STD_LOGIC);
end MOD4SYNC;

architecture Behavioral of MOD4SYNC is
signal X: std_logic_vector(1 downto 0);
begin
process(CLK,CLR)
begin
if(CLR='1') then
	X<="00";
elsif (rising_edge(CLK)) then
	X<=X+"1";
end if;
end process;
Q<=X;
end Behavioral;

