--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:43:25 03/01/2020
-- Design Name:   
-- Module Name:   E:/naharro/Dropbox/trabajo/docencia/Sistemas_Programables/codigos/ahorcado_num/vhdl/juego_tb.vhd
-- Project Name:  ahorcado
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: juego
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
 
ENTITY juego_tb IS
END juego_tb;
 
ARCHITECTURE behavior OF juego_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT juego
    generic ( sim	: integer := 0);
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         inicio_juego : IN  std_logic;
         pul_dato : IN  std_logic;
         datos : IN  std_logic_vector(3 downto 0);
         hsync : OUT  std_logic;
         vsync : OUT  std_logic;
         red : OUT  std_logic_vector(2 downto 0);
         green : OUT  std_logic_vector(2 downto 0);
         blue : OUT  std_logic_vector(2 downto 1)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal inicio_juego : std_logic := '0';
   signal pul_dato : std_logic := '0';
   signal datos : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal hsync : std_logic;
   signal vsync : std_logic;
   signal red : std_logic_vector(2 downto 0);
   signal green : std_logic_vector(2 downto 0);
   signal blue : std_logic_vector(2 downto 1);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
	uut: juego
	generic map (sim => 1)
	PORT MAP (
		clk => clk,
		reset => reset,
		inicio_juego => inicio_juego,
		pul_dato => pul_dato,
		datos => datos,
		hsync => hsync,
		vsync => vsync,
		red => red,
		green => green,
		blue => blue
	);

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
		wait for 13*clk_period/4;
		reset <= '0';
		wait;
	end process;


	-- Stimulus process
	stim_proc: process
	begin
		inicio_juego <= '0';
		pul_dato <= '0';
		datos <= (others => '0');
		wait until reset='1';
		wait for 30*clk_period;
		inicio_juego <= '1';
		wait for 10*clk_period;
		inicio_juego <= '0';
		-- Primer intento
		wait for 1500*clk_period;
		datos <= X"1";
		pul_dato <= '1';
		wait for 10*clk_period;
		pul_dato <= '0';
		wait for 400*clk_period;
		datos <= X"1";
		pul_dato <= '1';
		wait for 10*clk_period;
		pul_dato <= '0';
		-- Segundo intento
		wait for 900*clk_period;
		datos <= X"0";
		pul_dato <= '1';
		wait for 10*clk_period;
		pul_dato <= '0';
		wait for 400*clk_period;
		datos <= X"4";
		pul_dato <= '1';
		wait for 10*clk_period;
		pul_dato <= '0';
		-- Tercer intento
		wait for 900*clk_period;
		datos <= X"0";
		pul_dato <= '1';
		wait for 10*clk_period;
		pul_dato <= '0';
		wait for 400*clk_period;
		datos <= X"9";
		pul_dato <= '1';
		wait for 10*clk_period;
		pul_dato <= '0';
		
		wait;
	end process;

END;
