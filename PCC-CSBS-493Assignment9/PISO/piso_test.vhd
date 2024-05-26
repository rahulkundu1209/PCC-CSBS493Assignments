--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:40:01 04/28/2024
-- Design Name:   
-- Module Name:   /home/rahul/VHDLProjects/PISO_4bit/piso_test.vhd
-- Project Name:  PISO_4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: piso_rtl
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
 
ENTITY piso_test IS
END piso_test;
 
ARCHITECTURE behavior OF piso_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT piso_rtl
    PORT(
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         Load : IN  std_logic;
         Din : IN  std_logic_vector(3 downto 0);
         Dout : OUT  std_logic;
         Dout_vector : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';
   signal Load : std_logic := '0';
   signal Din : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Dout : std_logic;
   signal Dout_vector : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: piso_rtl PORT MAP (
          Clk => Clk,
          Rst => Rst,
          Load => Load,
          Din => Din,
          Dout => Dout,
          Dout_vector => Dout_vector
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
		Load <='1';
		Din <= "1111";
		wait for 2 ps;
		Load <= '0';
		for i in 1 to 4 loop
			wait for 2 ps;
		end loop;
		
     
   end process;

END;
