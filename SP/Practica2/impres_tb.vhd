--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:27:39 05/24/2021
-- Design Name:   
-- Module Name:   C:/TRABAJO/curso20202021/SSPP/practicas/practicaIyII/impres_tb.vhd
-- Project Name:  practicaIyII
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: imprime_r
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
 
ENTITY impres_tb IS
END impres_tb;
 
ARCHITECTURE behavior OF impres_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT imprime_r
    PORT(
         wr : OUT  std_logic;
         direc : OUT  std_logic_vector(10 downto 0);
         dir_c : OUT  std_logic_vector(7 downto 0);
         num_al : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         inicio_juego : IN  std_logic;
         fin_juego : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal num_al : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal inicio_juego : std_logic := '0';

 	--Outputs
   signal wr : std_logic;
   signal direc : std_logic_vector(10 downto 0);
   signal dir_c : std_logic_vector(7 downto 0);
   signal fin_juego : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: imprime_r PORT MAP (
          wr => wr,
          direc => direc,
          dir_c => dir_c,
          num_al => num_al,
          clk => clk,
          reset => reset,
          inicio_juego => inicio_juego,
          fin_juego => fin_juego
        );

   -- Clock process definitions
  clk_process :process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;

	reset_process :process
	begin
		reset <= '1';
		wait for 10*clk_period/4;
		reset <= '0';
		wait;
	end process;


   -- Stimulus process
	stim_proc: process
	begin		
		inicio_juego <= '0';
		--fin_juego <= '0';
		wait until reset='0';
		wait for 20*clk_period;
		inicio_juego <= '1';
		wait for clk_period;
		inicio_juego <= '0';
		wait for 300*clk_period;
--		fin_juego <= '1';
--		wait for clk_period;
--		fin_juego <= '0';
--		wait;
	end process;

END;
