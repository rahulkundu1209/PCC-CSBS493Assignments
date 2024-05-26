----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:39 03/20/2024 
-- Design Name: 
-- Module Name:    comperator_4bit - Behavioral 
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

entity comperator_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Eq : out  STD_LOGIC;
           Grt : out  STD_LOGIC;
           Let : out  STD_LOGIC);
end comperator_4bit;

architecture Behavioral of comperator_4bit is

signal x0, x1, x2, x3: std_logic;

begin

x0 <= not(A(0) xor B(0));
x1 <= not(A(1) xor B(1));
x2 <= not(A(2) xor B(2));
x3 <= not(A(3) xor B(3));

Eq <= X0 and X1 and X2 and X3;
Grt <= (A(3) and (not(B(3)))) or ( X3 and A(2) and (not(B(2)))) or ( X3 and X2 and A(1) and (not(B(1)))) or ( X3 and X2 and X1 and A(0) and (not(B(0))));
Let <= (B(3) and (not(A(3)))) or ( X3 and B(2) and (not(A(2)))) or ( X3 and X2 and B(1) and (not(A(1)))) or ( X3 and X2 and X1 and B(0) and (not(A(0))));

end Behavioral;

