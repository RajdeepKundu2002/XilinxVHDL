----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:27:46 09/14/2022 
-- Design Name: 
-- Module Name:    FREQDIVNEW - Behavioral 
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

entity FREQDIVNEW is
    Port ( CLK : in  STD_LOGIC;
           N : in  STD_LOGIC_VECTOR (3 downto 0);
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end FREQDIVNEW;

architecture Behavioral of FREQDIVNEW is
component DFFWRST is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;
component TFF is
    Port ( T : in  STD_LOGIC;
			  RST : in STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;
component COMPARATOR is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Q : out  STD_LOGIC);
end component;
component FOURBITCOUNTER is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
signal S,R:std_logic;
signal P:std_logic_vector(3 downto 0);
begin
	FBIT:FOURBITCOUNTER port map (CLK,S,P);
	COMP:COMPARATOR port map (P,N-"0001",R);
	DFF1:DFFWRST port map (R,NOT(CLK),RST,S);
	Q<=S;
end Behavioral;

