----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:58:00 03/07/2024 
-- Design Name: 
-- Module Name:    hsub_rtl - Behavioral 
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

entity hsub_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           D : out  STD_LOGIC;
           Bout : out  STD_LOGIC);
end hsub_rtl;

architecture Behavioral of hsub_rtl is

begin
	D <= A xor B;
	Bout <= (not A) and B;


end Behavioral;

