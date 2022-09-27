----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:03:03 09/07/2022 
-- Design Name: 
-- Module Name:    MOD16SYNC - Behavioral 
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

entity MOD16SYNC is
    Port ( CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0);
           CLR : in  STD_LOGIC);
end MOD16SYNC;
architecture Behavioral of MOD16SYNC is
component MOD4SYNC is
    Port ( CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (1 downto 0);
			  CLR : in STD_LOGIC);
end component;
signal X,Y: std_logic_vector(1 downto 0);
begin
M41:MOD4SYNC port map(CLK,X,CLR);
M42:MOD4SYNC port map(X(1),Y,CLR);
Q<=Y & X;
end Behavioral;