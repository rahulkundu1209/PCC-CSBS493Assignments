----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:42:24 05/04/2024 
-- Design Name: 
-- Module Name:    alu_rtl - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           ALU_Out : out  STD_LOGIC_VECTOR (3 downto 0));
end alu_rtl;

architecture Behavioral of alu_rtl is

begin
	process(A, B, S)is
		begin
		case S is
			when "000" =>
			ALU_Out <= A + B;
			when "001" =>
			ALU_Out <= A - B;
			when "010" =>
			ALU_Out <= A + 1;
			when "011" =>
			ALU_Out <= A - 1;
			when "100" =>
			ALU_Out <= A and B;
			when "101" =>
			ALU_Out <= A or B;
			when "110" =>
			ALU_Out <= not A;
			when "111" =>
			ALU_Out <= A xor B;
			when others =>
			NULL;
			
		end case;
	
	end process;


end Behavioral;

