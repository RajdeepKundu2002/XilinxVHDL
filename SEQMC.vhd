----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:54:26 09/27/2022 
-- Design Name: 
-- Module Name:    SEQMC - Behavioral 
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

entity SEQMC is
    Port ( X : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end SEQMC;

architecture Behavioral of SEQMC is
component DFFWRST is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;
signal D0,D1,Q0,Q1:std_logic;
begin
DFF0:DFFWRST port map(D0,CLK,CLR,Q0);
DFF1:DFFWRST port map(D1,CLK,CLR,Q1);
D0<=(Q0 AND X) OR (Q1 AND X);
D1<=(NOT(Q1) AND NOT(Q0) AND X) OR (Q0 AND NOT(X));
Z<=Q0 OR(Q1 AND X);
--D0<=Q1 xnor X;
--D1<=X;
--Z<=(Q1 AND Q0) OR (X AND NOT(Q0));
end Behavioral;

