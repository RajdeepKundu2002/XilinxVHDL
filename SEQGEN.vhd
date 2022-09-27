----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:29:10 09/07/2022 
-- Design Name: 
-- Module Name:    SEQGEN - Behavioral 
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

entity SEQGEN is
    Port ( CLK : in  STD_LOGIC;
			  CLR : in STD_LOGIC;
           Q : out  STD_LOGIC);
end SEQGEN;

architecture Behavioral of SEQGEN is
component DFFWRST is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;
signal Q2,Q1,Q0,X:std_logic;
begin
X<=(Q2 AND NOT(Q1)) OR (NOT(Q2) AND NOT(Q0));
DFF0:DFFWRST port map(X,CLK,CLR,Q0);
DFF1:DFFWRST port map(Q0,CLK,CLR,Q1);
DFF2:DFFWRST port map(Q1,CLK,CLR,Q2);
Q<=Q2;
end Behavioral;

