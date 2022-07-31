----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:06 07/28/2022 
-- Design Name: 
-- Module Name:    MUX2to1 - Behavioral 
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

entity MUX2to1 is
    Port ( i1 : in  STD_LOGIC;
           i0 : in  STD_LOGIC;
           c : in  STD_LOGIC;
           f : out  STD_LOGIC);
end MUX2to1;

architecture Behavioral of MUX2to1 is
--behavioural word is a misnomer
begin
	f<=(not(c) and i0) or (c and i1);
	--dataflow

end Behavioral;

