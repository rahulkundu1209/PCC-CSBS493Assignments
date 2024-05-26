library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_rtl is
    Port ( UpDown : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Count : out  STD_LOGIC_VECTOR (3 downto 0));
end counter_rtl;

architecture Behavioral of counter_rtl is
signal temp: std_logic_vector(3 downto 0);

begin
	Count <= temp;
	process(UpDown, Rst, Clk)is
	begin
		if(Rst = '1')then
			temp <= "0000";
		elsif(rising_edge(Clk))then
			if(UpDown = '1' and temp /= "0000")then
				temp <= temp - '1';
			elsif(UpDown = '1' and temp = "0000")then
				temp <= "1111";
			elsif(UpDown = '0' and temp /= "1111")then
				temp <= temp + '1';
			elsif(UpDown = '0' and temp = "1111")then
				temp <= "0000";
			end if;
		end if;
	end process;


end Behavioral;