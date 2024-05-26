----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:52:56 03/10/2024 
-- Design Name: 
-- Module Name:    sub_4bit_rtl - Behavioral 
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

entity sub_4bit_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Bin : in  STD_LOGIC;
           Diff : out  STD_LOGIC_VECTOR (3 downto 0);
           Bout : out  STD_LOGIC);
end sub_4bit_rtl;

architecture Behavioral of sub_4bit_rtl is

component sub_2bit_rtl is
	Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           Diff : out  STD_LOGIC;
           Bout : out  STD_LOGIC);
end component;

signal B0, B1, B2: std_logic;

begin
S2B0: sub_2bit_rtl port map(A(0), B(0), Bin, Diff(0), B0);
S2B1: sub_2bit_rtl port map(A(1), B(1), B0, Diff(1), B1);
S2B2: sub_2bit_rtl port map(A(2), B(2), B1, Diff(2), B2);
D2B3: sub_2bit_rtl port map(A(3), B(3), B2, Diff(3), Bout);


end Behavioral;

