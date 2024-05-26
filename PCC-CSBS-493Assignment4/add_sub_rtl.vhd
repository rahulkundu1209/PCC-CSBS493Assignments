----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:37:09 03/10/2024 
-- Design Name: 
-- Module Name:    add_sub_rtl - Behavioral 
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

entity add_sub_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end add_sub_rtl;

architecture Behavioral of add_sub_rtl is

component fadd_rtl is
Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end component;

signal c0, c1, c2: std_logic;

begin
fa0: fadd_rtl port map(A(0), (B(0) xor Cin), Cin, Sum(0), C0);
fa1: fadd_rtl port map(A(1), (B(1) xor Cin), C0, Sum(1), C1);
fa2: fadd_rtl port map(A(2), (B(2) xor Cin), C1, Sum(2), C2);
fa3: fadd_rtl port map(A(3), (B(3) xor Cin), C2, Sum(3), Cout);

end Behavioral;

