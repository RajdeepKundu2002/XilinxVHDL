----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:57:20 07/28/2022 
-- Design Name: 
-- Module Name:    MUX4to1 - Behavioral 
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

entity MUX4to1 is
    Port ( i3 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           i0 : in  STD_LOGIC;
           c1 : in  STD_LOGIC;
           c0 : in  STD_LOGIC;
           f : out  STD_LOGIC);
end MUX4to1;
--need structural design-- 3 units of 2:1 MUX-- use as component
architecture Behavioral of MUX4to1 is
--declare component, replace word entity
component MUX2to1 is
    Port ( i1 : in  STD_LOGIC;
           i0 : in  STD_LOGIC;
           c : in  STD_LOGIC;
           f : out  STD_LOGIC);
end component;
signal f1, f0:std_logic;
--standard logic- 0/1/high impedance/undefined
--bit
--integer
--real
--boolean
begin
	u1:MUX2to1 port map(i1, i0, c0, f0);
	u2:MUX2to1 port map(i3, i2, c0, f1);
	u3:MUX2to1 port map(f1, f0, c1, f);

end Behavioral;

