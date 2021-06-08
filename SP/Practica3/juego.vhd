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

use work.picoblaze_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity juego is
	 generic ( sim	: integer := 0);
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
	component num_aleatorio is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           inicio_juego : in  STD_LOGIC;
           fin_juego : in  STD_LOGIC;
           num_al : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	component micro_total is
	 generic (sim	: integer := 0);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           data_protocolo : in  STD_LOGIC_VECTOR(7 downto 0);
			  interrupcion_ack	: out std_logic;
           data_in : in  data_port (puertos_entrada-1 downto 0);
           data_out : out  data_port (puertos_salida-1 downto 0);
			  --
			  PC_out	: out std_logic_vector(9 downto 0));
	end component;
	-- Delcaración de señales
	signal direc	: std_logic_vector(10 downto 0);
	signal dir_c	: std_logic_vector(7 downto 0);
	signal wr		: std_logic;
	
	signal fin_juego	: std_logic;
	signal num_al		: std_logic_vector(7 downto 0);
	
	signal data_in 	: data_port (puertos_entrada-1 downto 0);
	signal data_out 	: data_port (puertos_salida-1 downto 0);
	signal interrupcion_ack	: std_logic;

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

	aleatorio:num_aleatorio port map (
		clk		=> clk,
		reset		=> reset,
		inicio_juego	=> inicio_juego,
		fin_juego	=> fin_juego,
		num_al	=> num_al
	);
	
	sw:micro_total generic map (
		sim => sim)
	port map (
		clk 		=> clk,
		reset		=> reset,
		data_protocolo	=> data_in(proto_port),
		interrupcion_ack	=> interrupcion_ack,
		data_in	=> data_in,
		data_out	=> data_out,
		PC_out	=> open
	);
	
	data_in(proto_port)(bit_inicio) <= inicio_juego;
	data_in(proto_port)(bit_dato) <= pul_dato;
	data_in(proto_port)(7 downto 2) <= (others => '0');
	data_in(dato_port)(3 downto 0) <= datos;
	data_in(dato_port)(7 downto 4) <= (others => '0');
	data_in(num_al_port) <= num_al;
	
	fin_juego <= data_out(proto_port)(bit_fin);
	wr <= data_out(proto_port)(bit_wr);
	dir_c <= data_out(dato_port);
	direc(10 downto 8) <= data_out(dir_port1)(2 downto 0);
	direc(7 downto 0) <= data_out(dir_port0);
	
end Behavioral;

