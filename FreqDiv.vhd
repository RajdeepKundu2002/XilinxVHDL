----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:16:38 09/14/2022 
-- Design Name: 
-- Module Name:    FREQDIV - Behavioral 
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

entity FREQDIV is
    Port ( CLK : in  STD_LOGIC;
			  N : in STD_LOGIC_VECTOR(3 downto 0);
			  Y: out STD_LOGIC_VECTOR(3 downto 0);
			  X : out STD_LOGIC_VECTOR(3 downto 0);
			  RST : in STD_LOGIC;
			  A : out STD_LOGIC;
           Q : out  STD_LOGIC);
end FREQDIV;

architecture Behavioral of FREQDIV is

component NEGEDGEDFF is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
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
component RIPPLECARRY is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
			  C : in STD_LOGIC;
           C1 : out  STD_LOGIC);
end component;
signal R,C,Q1,A1:std_logic;
signal S,P,M:std_logic_vector(3 downto 0);
begin
	A1<=RST AND NOT(Q1);
	FBIT:FOURBITCOUNTER port map (CLK,A1,P);
	M<="1111";
	ADD:RIPPLECARRY port map (N,M,S,'0',C);
	COMP:COMPARATOR port map (P,S,R);
	DFF:NEGEDGEDFF port map (R,CLK,RST,Q1);
	Q<=Q1;
	X<=P;
	Y<=S;
	A<=A1;
end Behavioral;

