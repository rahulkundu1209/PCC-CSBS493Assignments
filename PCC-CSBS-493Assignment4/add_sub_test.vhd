--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:09:40 03/10/2024
-- Design Name:   
-- Module Name:   /home/rahul/VHDLProjects/add_subt_4bit/add_sub_test.vhd
-- Project Name:  add_subt_4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: add_sub_rtl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY add_sub_test IS
END add_sub_test;
 
ARCHITECTURE behavior OF add_sub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT add_sub_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: add_sub_rtl PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
	Cin <= '0';
	A <= "0000";
	B <= "0000";
	wait for 1 ps;
	Cin <= '0';
	A <= "0001";
	B <= "0001";
	wait for 1 ps;
	Cin <= '0';
	A <= "0010";
	B <= "0010";
	wait for 1 ps;
	Cin <= '0';
	A <= "0100";
	B <= "0100";
	wait for 1 ps;
	Cin <= '1';
	A <= "0000";
	B <= "0000";
	wait for 1 ps;
	Cin <= '1';
	A <= "0001";
	B <= "0001";
	wait for 1 ps;
	Cin <= '1';
	A <= "0001";
	B <= "0010";
	wait for 1 ps;
	Cin <= '1';
	A <= "0001";
	B <= "0100";
	wait for 1 ps;
	
   end process;

END;
