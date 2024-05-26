--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:09:49 04/10/2024
-- Design Name:   
-- Module Name:   /home/rahul/VHDLProjects/SR_FF/SR_test.vhd
-- Project Name:  SR_FF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SR_FF
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
 
ENTITY SR_test IS
END SR_test;
 
ARCHITECTURE behavior OF SR_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SR_FF
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         Clk : IN  std_logic;
         Q : OUT  std_logic;
         QBar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal R : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic := '0';
   signal QBar : std_logic := '0';

   -- Clock period definitions
   constant Clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SR_FF PORT MAP (
          S => S,
          R => R,
          Clk => Clk,
          Q => Q,
          QBar => QBar
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
      S <= '0';
		R <= '0';
		wait for 2 ps;
		S <= '0';
		R <= '1';
		wait for 2 ps;
		S <= '1';
		R <= '0';
		wait for 2 ps;
		S <= '1';
		R <= '1';
		wait for 2 ps;
		
   end process;

END;
