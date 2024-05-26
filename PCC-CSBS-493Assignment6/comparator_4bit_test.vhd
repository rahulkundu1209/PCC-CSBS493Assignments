--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:39:24 03/20/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13031122015/comparator/comparator_test.vhd
-- Project Name:  comparator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comperator_4bit
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
 
ENTITY comparator_test IS
END comparator_test;
 
ARCHITECTURE behavior OF comparator_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comperator_4bit
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Eq : OUT  std_logic;
         Grt : OUT  std_logic;
         Let : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Eq : std_logic;
   signal Grt : std_logic;
   signal Let : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comperator_4bit PORT MAP (
          A => A,
          B => B,
          Eq => Eq,
          Grt => Grt,
          Let => Let
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
		A <= "0000";
		B <= "0000";
		wait for 1 ps;
		A <= "0000";
		B <= "0001";
		wait for 1 ps;
		A <= "0001";
		B <= "0000";
		wait for 1 ps;
		A <= "0001";
		B <= "0001";
		wait for 1 ps;
		A <= "0010";
		B <= "0010";
		wait for 1 ps;
		A <= "0100";
		B <= "0011";
		wait for 1 ps;
		A <= "1111";
		B <= "1110";
		wait for 1 ps;
		A <= "0000";
		B <= "1111";
		wait for 1 ps;
	
   end process;

END;
