----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:58:09 04/28/2024 
-- Design Name: 
-- Module Name:    piso_rtl - Behavioral 
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

entity piso_rtl is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Load : in  STD_LOGIC;
           Din : in  STD_LOGIC_VECTOR (3 downto 0);
           Dout : out  STD_LOGIC;
           Dout_vector : out  STD_LOGIC_VECTOR (3 downto 0));
end piso_rtl;

architecture Behavioral of piso_rtl is
signal temp: std_logic_vector(3 downto 0);
begin
	Dout <= temp(0);
	Dout_vector <= temp;
	process(Clk, Rst, Load, DIn) is
	begin
		if(Rst = '1')then
			temp <= "0000";
		elsif(Load = '1')then
			temp <= Din;
		elsif(rising_edge(Clk))then
			temp(3 downto 1) <= temp(2 downto 0);
			temp(0) <= '0';
		end if;
	end process;


end Behavioral;

