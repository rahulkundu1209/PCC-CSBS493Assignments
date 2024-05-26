----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:55:16 04/10/2024 
-- Design Name: 
-- Module Name:    JK_rtl - Behavioral 
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

entity JK_rtl is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBar : out  STD_LOGIC);
end JK_rtl;

architecture Behavioral of JK_rtl is
signal temp: std_logic := '0';

begin
	Q <= temp;
	QBar <= not temp;

	process(J, K, Clk)
	begin
		if(rising_edge(Clk))then
			if(J='0' and K='0')then
				temp <= temp;
			elsif(J='0' and K='1')then
				temp <= '0';
			elsif(J='1' and K='0')then
				temp <= '1';
			elsif(J='1' and K='1')then
				temp <= not temp;
			end if;
		end if;
	end process;


end Behavioral;

