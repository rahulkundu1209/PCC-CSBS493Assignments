----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:01:38 03/10/2024 
-- Design Name: 
-- Module Name:    fsub_using_hsub_rtl - Behavioral 
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

entity fsub_using_hsub_rtl is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           BIN : in  STD_LOGIC;
           DIFF : out  STD_LOGIC;
           BOUT : out  STD_LOGIC);
end fsub_using_hsub_rtl;

architecture Behavioral of fsub_using_hsub_rtl is
component hsub_rtl is 
Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           D : out  STD_LOGIC;
           Bout : out  STD_LOGIC);
end component;
signal temp, b1, b2: std_logic;

begin
hs0: hsub_rtl port map(X, Y, temp, b1);
hs1: hsub_rtl port map(temp, BIN, DIFF, b2);
BOUT <= b1 or b2;


end Behavioral;

