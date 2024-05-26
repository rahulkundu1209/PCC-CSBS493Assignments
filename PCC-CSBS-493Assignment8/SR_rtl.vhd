----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:57:58 04/10/2024 
-- Design Name: 
-- Module Name:    SR_FF - Behavioral 
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

entity SR_FF is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBar : out  STD_LOGIC);
end SR_FF;

architecture Behavioral of SR_FF is

signal temp: STD_LOGIC:='0';

begin	
	
	Q <= temp;
	QBar <= not temp;
	
	process(S,R,Clk)
	begin
		if (rising_edge(Clk)) then
			if (S = '0' and R = '0') then
				temp <= temp;
			elsif (S = '1' and R = '1') then
				temp <= 'Z';
			elsif (S='0' and R='1') then
				temp <= '0';
			elsif (S='1' and R='0') then
				temp <= '1';
			end if;
		end if;
	end process;

end Behavioral;

