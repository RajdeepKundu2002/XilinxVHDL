----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:20:08 09/23/2022 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           OP : in  STD_LOGIC_VECTOR (3 downto 0);
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU;

architecture Behavioral of ALU is
--component FULLSUBTRACTOR is
--    Port ( X : in  STD_LOGIC;
--           Y : in  STD_LOGIC;
--           B : in  STD_LOGIC;
--           R : out  STD_LOGIC;
--           B1 : out  STD_LOGIC);
--end component;
--entity RIPPLECARRY is
--    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
--           B : in  STD_LOGIC_VECTOR (3 downto 0);
--           S : out  STD_LOGIC_VECTOR (3 downto 0);
--			  C : in STD_LOGIC;
--           C1 : out  STD_LOGIC);
--end RIPPLECARRY;
signal X,Z:std_logic_vector(3 downto 0);
signal M:std_logic;
begin
	process(OP)
	begin
		Z<="0000";
		if(OP="0000")then
			X<="XXXX";
		elsif(OP="0001")then
			X<=A+B;
		elsif(OP="0010")then
			X<=A-B;
		elsif(OP="0011")then
			X<=A AND B;
		elsif(OP="0100")then
			X<=A XOR B;
		elsif(OP="0101")then
		   X<=A OR B;
		elsif(OP="0110")then
			X<=("1111"-A)+"0001";
		elsif(OP="0111")then
			X<=("1111"-A);
		elsif(OP="1001")then
		   if(B="0001")then
		   X(0)<=A(1);
		   X(1)<=A(2);
		   X(2)<=A(3);
		   X(3)<='0';
		   elsif(B="0010")then
		   X(0)<=A(2);
		   X(1)<=A(3);
		   X(2)<='0';
		   X(3)<='0';
		   elsif(B="0011")then
		   X(0)<=A(3);
		   X(1)<='0';
		   X(2)<='0';
		   X(3)<='0';
			else
			X<=A;
		   end if;
		elsif(OP="1000")then
		   if(B="0001")then
		   X(3)<=A(2);
		   X(1)<=A(0);
		   X(2)<=A(1);
		   X(0)<='0';
		   elsif(B="0010")then
		   X(3)<=A(1);
		   X(2)<=A(0);
		   X(1)<='0';
		   X(0)<='0';
		   elsif(B="0011")then
		   X(3)<=A(0);
		   X(2)<='0';
		   X(1)<='0';
		   X(0)<='0';
			else
			X<=A;
		   end if;
		elsif(OP="1011")then
			if(B="0001")then
		   X(0)<=A(1);
		   X(1)<=A(2);
		   X(2)<=A(3);
		   X(3)<=A(0);
		   elsif(B="0010")then
		   X(0)<=A(2);
		   X(1)<=A(3);
		   X(2)<=A(0);
		   X(3)<=A(1);
		   elsif(B="0011")then
		   X(0)<=A(3);
		   X(1)<=A(0);
		   X(2)<=A(1);
		   X(3)<=A(2);
			else
			X<=A;
	  	   end if;
		elsif(OP="1010")then
			if(B="0001")then
		   X(3)<=A(2);
		   X(1)<=A(0);
		   X(2)<=A(1);
		   X(0)<=A(3);
		   elsif(B="0010")then
		   X(3)<=A(1);
		   X(2)<=A(0);
		   X(1)<=A(3);
		   X(0)<=A(2);
		   elsif(B="0011")then
		   X(3)<=A(0);
		   X(2)<=A(3);
		   X(1)<=A(2);
		   X(0)<=A(1);
			else
			X<=A;
		   end if;
		else
			X<="UUUU";
		end if;
	end process;
	Q<=X;
end Behavioral;

