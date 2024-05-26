--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:32:45 04/24/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13031122024/SIPO_4bit/sipo_test.vhd
-- Project Name:  SIPO_4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sipo_rtl
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
 
ENTITY sipo_test IS
END sipo_test;
 
ARCHITECTURE behavior OF sipo_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sipo_rtl
    PORT(
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         IpData : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';
   signal IpData : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sipo_rtl PORT MAP (
          Clk => Clk,
          Rst => Rst,
          IpData => IpData,
          Q => Q
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
	Rst <= '0';
	IpData <= '0';
	wait for 2 ps;
	Rst <= '0';
	IpData <= '1';
	wait for 2 ps;
	Rst <= '0';
	IpData <= '1';
	wait for 2 ps;
	Rst <= '0';
	IpData <= '1';
	wait for 2 ps;
	Rst <= '0';
	IpData <= '1';
	wait for 2 ps;
	Rst <= '0';
	IpData <= '0';
	wait for 2 ps;
	
	
   end process;

END;
