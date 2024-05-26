--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:58:56 03/10/2024
-- Design Name:   
-- Module Name:   /home/rahul/VHDLProjects/sub_4bit/sub_4bit_test.vhd
-- Project Name:  sub_4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sub_4bit_rtl
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
 
ENTITY sub_4bit_test IS
END sub_4bit_test;
 
ARCHITECTURE behavior OF sub_4bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sub_4bit_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Bin : IN  std_logic;
         Diff : OUT  std_logic_vector(3 downto 0);
         Bout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Bin : std_logic := '0';

 	--Outputs
   signal Diff : std_logic_vector(3 downto 0);
   signal Bout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sub_4bit_rtl PORT MAP (
          A => A,
          B => B,
          Bin => Bin,
          Diff => Diff,
          Bout => Bout
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
	A <= "0000";
	B <= "0000";
	Bin <= '0';
	wait for 1 ps;
	A <= "0000";
	B <= "0010";
	Bin <= '0';
	wait for 1 ps;
	A <= "0001";
	B <= "0100";
	Bin <= '0';
	wait for 1 ps;
	A <= "0010";
	B <= "1000";
	Bin <= '0';
	wait for 1 ps;
	A <= "0011";
	B <= "0110";
	Bin <= '0';
	wait for 1 ps;
	A <= "0001";
	B <= "0010";
	Bin <= '1';
	wait for 1 ps;
	A <= "0000";
	B <= "0000";
	Bin <= '1';
	wait for 1 ps;
	
   end process;

END;
