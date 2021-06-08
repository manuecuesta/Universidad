----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:53:08 02/29/2020 
-- Design Name: 
-- Module Name:    juego - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity juego is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           inicio_juego : in  STD_LOGIC;
           pul_dato : in  STD_LOGIC;
           datos : in  STD_LOGIC_VECTOR (3 downto 0);
           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC;
           red : out  STD_LOGIC_VECTOR (2 downto 0);
           green : out  STD_LOGIC_VECTOR (2 downto 0);
           blue : out  STD_LOGIC_VECTOR (2 downto 1));
end juego;

architecture Behavioral of juego is
	-- Declaración de componentes
	-- PANTALLA
	component pantalla_vga is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           datos : in  STD_LOGIC_VECTOR (7 downto 0);
           direc : in  STD_LOGIC_VECTOR (10 downto 0);
           wr : in  STD_LOGIC;
           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC;
           red : out  STD_LOGIC_VECTOR (2 downto 0);
           green : out  STD_LOGIC_VECTOR (2 downto 0);
           blue : out  STD_LOGIC_VECTOR (2 downto 1)
	 );
	end component;
	-- NUMERO ALEATORIO
	component num_aleatorio is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           inicio_juego : in  STD_LOGIC;
           fin_juego : in  STD_LOGIC;
           num_al : out  STD_LOGIC_VECTOR (7 downto 0)
	 );
	end component;
	-- IMPRIMIR
	component imprime_r is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           inicio_juego : in  STD_LOGIC;
			  fin_juego : out  STD_LOGIC;
			  num_al : in  STD_LOGIC_VECTOR (7 downto 0);
           direc : out  STD_LOGIC_VECTOR (10 downto 0);
           dir_c : out  STD_LOGIC_VECTOR (7 downto 0);
			  wr : out  STD_LOGIC
	 );
	end component;
	
	-- Delcaración de señales
	signal direc	: std_logic_vector(10 downto 0);
	signal dir_c	: std_logic_vector(7 downto 0);
	signal wr		: std_logic;
	signal fin_juego		: std_logic;
	signal num_al  : std_logic_vector(7 downto 0);

begin
	vga:pantalla_vga port map (
		clk	=> clk,
		reset	=> reset,
		datos	=> dir_c,
		direc	=> direc,
		wr		=> wr,
		hsync	=> hsync,
		vsync	=> vsync,
		red	=> red,
		green	=> green,
		blue	=> blue
	);
	
	numale: num_aleatorio port map (
		clk	=> clk,
		reset	=> reset,
		inicio_juego => inicio_juego,
		fin_juego => fin_juego,
		num_al => num_al
	);

	impres:imprime_r port map (
		clk	=> clk,
		reset	=> reset,
		inicio_juego => inicio_juego,
		fin_juego => fin_juego,
		dir_c	=> dir_c,
		direc	=> direc,
		wr		=> wr,
		num_al => num_al
	);
   
	--wr <= inicio_juego;
	--direc <= "01011001110";
	--dir_c <= X"3" & X"0";
	--dir_c <= X"3" & X"1";
	
end Behavioral;

