----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:45:26 09/03/2022 
-- Design Name: 
-- Module Name:    TWOBCDADDER - Behavioral 
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

entity TWOBCDADDER is
    Port ( A0 : in  STD_LOGIC_VECTOR (3 downto 0);
           A1 : in  STD_LOGIC_VECTOR (3 downto 0);
           B0 : in  STD_LOGIC_VECTOR (3 downto 0);
           B1 : in  STD_LOGIC_VECTOR (3 downto 0);
           S0 : out STD_LOGIC_VECTOR (3 downto 0);
           S1 : out  STD_LOGIC_VECTOR (3 downto 0);
           C : out  STD_LOGIC);
end TWOBCDADDER;

architecture Behavioral of TWOBCDADDER is
component BCDADDER is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           C1 : out  STD_LOGIC);
end component;
signal x:std_logic;
begin
	BCD1:BCDADDER port map(A0,B0,'0',S0,x);
	BCD2:BCDADDER port map(A1,B1,x,S1,C);
end Behavioral;

