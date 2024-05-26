----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:33:53 01/31/2024 
-- Design Name: 
-- Module Name:    full_adder_rtl - Behavioral 
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

entity full_adder_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end full_adder_rtl;

architecture Behavioral of full_adder_rtl is

component half_adder_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal temp, c1, c2 : STD_LOGIC := '0';
begin
HA0: half_adder_rtl port map(a=>A, b=>B, sum=>temp, cout=>c1);
HA1: half_adder_rtl port map(a=>temp, b=>Cin, sum=>Sum, cout=>c2);
Cout <= c1 or c2;

end Behavioral;

