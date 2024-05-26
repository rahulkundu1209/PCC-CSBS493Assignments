--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:13:57 03/10/2024
-- Design Name:   
-- Module Name:   /home/rahul/VHDLProjects/half_subtractor/fsub_using_hsub_test.vhd
-- Project Name:  half_subtractor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fsub_using_hsub_rtl
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
 
ENTITY fsub_using_hsub_test IS
END fsub_using_hsub_test;
 
ARCHITECTURE behavior OF fsub_using_hsub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fsub_using_hsub_rtl
    PORT(
         X : IN  std_logic;
         Y : IN  std_logic;
         BIN : IN  std_logic;
         DIFF : OUT  std_logic;
         BOUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal BIN : std_logic := '0';

 	--Outputs
   signal DIFF : std_logic;
   signal BOUT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fsub_using_hsub_rtl PORT MAP (
          X => X,
          Y => Y,
          BIN => BIN,
          DIFF => DIFF,
          BOUT => BOUT
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		X <= '0';
		Y <= '0';
		BIN <= '0';
      wait for 1 ps;
		X <= '0';
		Y <= '0';
		BIN <= '1';
      wait for 1 ps;
		X <= '0';
		Y <= '1';
		BIN <= '0';
      wait for 1 ps;	
		X <= '0';
		Y <= '1';
		BIN <= '1';
      wait for 1 ps;
		X <= '1';
		Y <= '0';
		BIN <= '0';
      wait for 1 ps;
		X <= '1';
		Y <= '0';
		BIN <= '1';
      wait for 1 ps;
		X <= '1';
		Y <= '1';
		BIN <= '0';
      wait for 1 ps;
		X <= '1';
		Y <= '1';
		BIN <= '1';
      wait for 1 ps;
   end process;

END;
