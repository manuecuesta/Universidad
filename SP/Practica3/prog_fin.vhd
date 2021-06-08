----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:31:13 03/28/2009 
-- Design Name: 
-- Module Name:    psa_programa - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity prog_fin is
	 generic (sim	: integer);
    Port ( address : in  STD_LOGIC_VECTOR (9 downto 0);
           instruction : out  STD_LOGIC_VECTOR (17 downto 0);
           clk : in  STD_LOGIC);
end prog_fin;

architecture Behavioral of prog_fin is
	component prog
	Port (   address : in std_logic_vector(9 downto 0);
				instruction : out std_logic_vector(17 downto 0);
				clk : in std_logic);
	end component;
	component prog_sim
	Port (   address : in std_logic_vector(9 downto 0);
				instruction : out std_logic_vector(17 downto 0);
				clk : in std_logic);
	end component;
	signal instr_sim	: std_logic_vector (17 downto 0);
	signal instr_nosim	: std_logic_vector (17 downto 0);
begin
	prog_test:prog
	port map (
		clk => clk,
		address => address,
		instruction => instr_nosim
	);
	prog1_sim:prog_sim
	port map (
		clk => clk,
		address => address,
		instruction => instr_sim
	);
	
	instruction <= instr_nosim when sim=0 else instr_sim;
	
end Behavioral;

