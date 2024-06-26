--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:06:57 03/04/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000123137/Fourbit_adder/fourbit_adder_test.vhd
-- Project Name:  Fourbit_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fourbit_adder_rtl
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
 
ENTITY fourbit_adder_test IS
END fourbit_adder_test;
 
ARCHITECTURE behavior OF fourbit_adder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourbit_adder_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fourbit_adder_rtl PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout
        );

   -- Clock process definitions
   
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      A<="0000";
		B<="0001";
		Cin<='0';
		wait for 1 ps;
		
		A<="0001";
		B<="0001";
		Cin<='0';
		wait for 1 ps;
		
		A<="0010";
		B<="0001";
		Cin<='0';
		wait for 1 ps;
		
		A<="0010";
		B<="0010";
		Cin<='0';
		wait for 1 ps;
		
   end process;

END;
