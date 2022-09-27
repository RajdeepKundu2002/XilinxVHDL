----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:31:42 09/03/2022 
-- Design Name: 
-- Module Name:    BCD - Behavioral 
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

entity BCD is
    Port ( A : in  STD_LOGIC_VECTOR (0 downto 0);
           B : in  STD_LOGIC_VECTOR (0 downto 0);
           S : out  STD_LOGIC_VECTOR (0 downto 0);
           C : in  STD_LOGIC;
           C1 : out  STD_LOGIC);
end BCD;

architecture Behavioral of BCD is

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
	--chk1<=((A(3) AND A(2))OR(A(3) AND A(1))) OR ((B(3) AND B(2))OR(B(3) AND B(1)));
	process(chk)
	begin
		if(chk='1') then
			x(3)<='0';
			x(2)<='1';
			x(1)<='1';
			x(0)<='0';
		elsif(chk='0') then
			x(3)<='0';
			x(2)<='0';
			x(1)<='0';
			x(0)<='0';
		end if;
	end process;
	RA2:RIPPLECARRY port map(y,x,S,'0',m);
	if(A>"1001") then
		n<='X';
		m<='X';
		S<="XXXX";
	end if;
	C1<=n OR m;
--	process(chk1)
--	begin
--		if(chk1='1') then
--			S<="XXXX";
--			end if;
--	end process;
end Behavioral;
