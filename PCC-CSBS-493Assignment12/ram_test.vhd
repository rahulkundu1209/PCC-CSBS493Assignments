--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:25:11 05/04/2024
-- Design Name:   
-- Module Name:   /home/rahul/Desktop/13031122015/RAM_Memory_Module/ram_test.vhd
-- Project Name:  RAM_Memory_Module
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ram_rtl
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
USE ieee.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ram_test IS
END ram_test;
 
ARCHITECTURE behavior OF ram_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ram_rtl
    PORT(
         Addrerss : IN  std_logic_vector(6 downto 0);
         Data_in : IN  std_logic_vector(7 downto 0);
         Clk : IN  std_logic;
         Write_en : IN  std_logic;
         Data_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Addrerss : std_logic_vector(6 downto 0) := (others => '0');
   signal Data_in : std_logic_vector(7 downto 0) := (others => '0');
   signal Clk : std_logic := '0';
   signal Write_en : std_logic := '0';

 	--Outputs
   signal Data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ram_rtl PORT MAP (
          Addrerss => Addrerss,
          Data_in => Data_in,
          Clk => Clk,
          Write_en => Write_en,
          Data_out => Data_out
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
  Write_en <= '0'; 
  Addrerss <= "0000000";
  Data_in <= x"FF";
      -- wait for 100 ns; 
  -- start reading data from RAM 
  for i in 0 to 5 loop
  Addrerss <= Addrerss + "0000001";
      wait for Clk_period * 5;
  end loop;
  Addrerss <= "0000000";
  Write_en <= '1';
  -- start writing to RAM
  wait for 100 ns; 
  for i in 0 to 5 loop
  Addrerss <= Addrerss + "0000001";
  Data_in <= Data_in-x"01";
      wait for Clk_period * 5;
  end loop;  
  Write_en <= '0';
      wait;
   end process;

END;
