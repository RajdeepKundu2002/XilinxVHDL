----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:10:28 09/23/2022 
-- Design Name: 
-- Module Name:    SEQGENDET - Behavioral 
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

entity SEQGENDET is
    Port ( CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           QIN : out  STD_LOGIC;
           Q : out  STD_LOGIC);
end SEQGENDET;

architecture Behavioral of SEQGENDET is
component TWENTYBITSEQGEN is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;
component SEQMC is
    Port ( X : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end component;
signal Y,Z:std_logic;
begin
GEN:TWENTYBITSEQGEN port map(CLK,CLR,Z);
SEQ:SEQMC port map(Z,CLK,CLR,Y);
Q<=Y;
QIN<=Z;	
end Behavioral;