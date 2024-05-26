--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:37:49 04/29/2024
-- Design Name:   
-- Module Name:   /home/rahul/VHDLProjects/UpDownCounter_4bit/counter_test.vhd
-- Project Name:  UpDownCounter_4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter_rtl
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
 
ENTITY counter_test IS
END counter_test;
 
ARCHITECTURE behavior OF counter_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter_rtl
    PORT(
         UpDown : IN  std_logic;
         Rst : IN  std_logic;
         Clk : IN  std_logic;
         Count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal UpDown : std_logic := '0';
   signal Rst : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter_rtl PORT MAP (
          UpDown => UpDown,
          Rst => Rst,
          Clk => Clk,
          Count => Count
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
		Rst <= '1';
		wait for 2 ps;
		Rst <= '0';
		UpDown <= '0';
		for i in 1 to 15 loop
			wait for 2 ps;
		end loop;
		UpDown <= '1';
		for i in 1 to 15 loop
			wait for 2 ps;
		end loop;
	
      
   end process;

END;
