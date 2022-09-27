----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:05:25 09/08/2022 
-- Design Name: 
-- Module Name:    BCDA - Behavioral 
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

entity BCDA is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C1 : out  STD_LOGIC);
end BCDA;

architecture Behavioral of BCDA is
component RIPPLECARRY is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
			  C : in STD_LOGIC;
           C1 : out  STD_LOGIC);
end component;
signal chk,chk1,m,n:std_logic;
signal x,y:std_logic_vector(3 downto 0);
begin
	RA1:RIPPLECARRY port map(A,B,y,C,n);
	chk<=n OR(y(3) AND y(2))OR(y(3) AND y(1));
	x(3)<='0';
	x(2)<=chk;
	x(1)<=chk;
	x(0)<='0';
	RA2:RIPPLECARRY port map(y,x,S,'0',m);
	C1<=n OR m;
end Behavioral;