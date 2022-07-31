----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:18:48 07/28/2022 
-- Design Name: 
-- Module Name:    MUX2to1BM - Behavioral 
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

entity MUX2to1BM is
    Port ( i1 : in  STD_LOGIC;
           i0 : in  STD_LOGIC;
           c : in  STD_LOGIC;
           f : out  STD_LOGIC);
end MUX2to1BM;

architecture Behavioral of MUX2to1BM is

begin
--process needs excitation signals i1,i0,c
mux2to1: process (i1,i0,c) is
begin
if (c='0') then
	f<=i0;
else
	f<=i1;
end if;
end process;
end Behavioral;

