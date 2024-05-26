----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:17:52 03/04/2024 
-- Design Name: 
-- Module Name:    fourbit_adder_rtl - Behavioral 
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

entity fourbit_adder_rtl is
    Port ( A: in  STD_LOGIC_VECTOR (3 downto 0);
           B: in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S: out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end fourbit_adder_rtl;

architecture Behavioral of fourbit_adder_rtl is
component full_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component ;


signal c1,c2,c3,c4: STD_LOGIC:='0';
begin
FA0:full_rtl port map(
 a=>A(0),
 b=>B(0),
 cin=>Cin,
 sum=> S(0),
 cout => c1);
 
 FA1:full_rtl port map(
 a=>A(0),
 b=>B(0),
 cin=>Cin,
 sum=> S(1),
 cout => c2);
 
 FA2:full_rtl port map(
 a=>A(0),
 b=>B(0),
 cin=>Cin,
 sum=> S(2),
 cout => c3);
 
 FA3:full_rtl port map(
 a=>A(0),
 b=>B(0),
 cin=>Cin,
 sum=> S(3),
 cout => c4);

end Behavioral;

