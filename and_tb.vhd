--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:29:27 05/27/2023
-- Design Name:   
-- Module Name:   C:/Users/ACER/OneDrive/Desktop/DSD practs/And_gate/and_tb.vhd
-- Project Name:  And_gate
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: and1
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
 ---------------------------- Name : janhvi pardeshi
ENTITY and_tb IS
END and_tb;
 
ARCHITECTURE behavior OF and_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT and1
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- approp
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: and1 PORT MAP (
          a => a,
          b => b,
          c => c
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
    -- insert stimulus here 
		a <= '0';
		b <= '1';
		wait for 10 ns;
		
		a <= '1';
		b <= '0';
		wait for 10 ns;
		
		a <= '1';
		b <= '1';
		wait for 10 ns;
		
		a <= '0';
		b <= '0';
		wait for 10 ns;
		
		a <= '0';
		b <= '1';
		wait for 10 ns;
		
		a <= '1';
		b <= '0';
		wait for 10 ns;
		
		a <= '1';
		b <= '1';
		wait for 10 ns;
      wait;
   end process;
END;
