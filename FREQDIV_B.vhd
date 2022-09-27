----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:58:30 09/22/2022 
-- Design Name: 
-- Module Name:    FREQDIV_B - Behavioral 
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

entity FREQDIV_B is
    Port ( CLK : in  STD_LOGIC;
           N : in  STD_LOGIC_VECTOR (3 downto 0);
           Q : out  STD_LOGIC;
           QC : out  STD_LOGIC_VECTOR (3 downto 0);
           RST : in  STD_LOGIC);
end FREQDIV_B;

architecture Behavioral of FREQDIV_B is
component FOURBITCOUNTER is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
component DFFWRST is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;
signal S:std_logic_vector(3 downto 0);
signal X,Y:std_logic;
begin
	process(CLK)
	begin
		if(X='0')then
			S<="0000";
		elsif(rising_edge(CLK))then
			S<=S+"0001";
		end if;
	end process;
	process(S)
	begin
		if(S=(N-1))then
			X<='1';
		else
			X<='0';
		end if;
	end process;
	process(X,RST)
	begin
		if(RST='0')then
			Y<='0';
		elsif(falling_edge(CLK))then 
			Y<=X;
		end if;
	end process;
	Q<=Y;
	QC<=S;
end Behavioral;