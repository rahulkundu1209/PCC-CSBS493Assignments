----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:22:15 04/24/2024 
-- Design Name: 
-- Module Name:    sipo_rtl - Behavioral 
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

entity sipo_rtl is
    Port ( Clk, Rst : in  STD_LOGIC;
           IpData : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end sipo_rtl;

architecture Behavioral of sipo_rtl is
signal temp: std_logic_vector(3 downto 0) := "0000";
begin
	Q <= temp;
	process(Clk)
	begin
		if Rst = '1' then
			temp <= "0000";
		elsif(rising_edge(Clk))then
			
			temp(3 downto 1) <= temp(2 downto 0);
			temp(0) <= IpData;
		end if;
	end process;

end Behavioral;

