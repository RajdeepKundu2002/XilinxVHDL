----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:58:54 09/07/2022 
-- Design Name: 
-- Module Name:    PISO - Behavioral 
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

entity PISO is
    Port ( LSBAR : in  STD_LOGIC;
           Q : out  STD_LOGIC;
			  CLK : in STD_LOGIC;
           P : in  STD_LOGIC_VECTOR (3 downto 0));
end PISO;

architecture Behavioral of PISO is
component DFF is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;
component MUX2to1 is
    Port ( i1 : in  STD_LOGIC;
           i0 : in  STD_LOGIC;
           c : in  STD_LOGIC;
           f : out  STD_LOGIC);
end component;
signal X,Y:std_logic_vector(3 downto 0);
begin
	MUX0:MUX2to1 port map(P(0),X(1),LSBAR,Y(0));
	MUX1:MUX2to1 port map(P(1),X(2),LSBAR,Y(1));
	MUX2:MUX2to1 port map(P(2),X(3),LSBAR,Y(2));
	MUX3:MUX2to1 port map(P(3),'0',LSBAR,Y(3));
	DFF0:DFF port map(Y(0),CLK,Q);
	DFF1:DFF port map(Y(1),CLK,X(1));
	DFF2:DFF port map(Y(2),CLK,X(2));
	DFF3:DFF port map(Y(3),CLK,X(3));
end Behavioral;

