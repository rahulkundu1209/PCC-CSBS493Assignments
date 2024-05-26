----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:21:00 04/10/2024 
-- Design Name: 
-- Module Name:    D_rtl - Behavioral 
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

entity D_rtl is
    Port ( D : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBar : out  STD_LOGIC);
end D_rtl;

architecture Behavioral of D_rtl is
signal temp: std_logic := '0';

begin
	Q <= temp;
	QBar <= not temp;
	process(D, Clk)
		begin
			if(rising_edge(Clk))then
				if(D='0')then
					temp <= '0';
				elsif(D='1')then
					temp <= '1';
				end if;
			end if;
	end process;


end Behavioral;

