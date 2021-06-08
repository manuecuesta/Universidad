----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:59:17 04/04/2010 
-- Design Name: 
-- Module Name:    micro_total - Behavioral 
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
use work.picoblaze_pkg.all;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity micro_total is
	 generic (sim	: integer := 0);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           data_protocolo : in  STD_LOGIC_VECTOR(7 downto 0);
			  interrupcion_ack	: out std_logic;
           data_in : in  data_port (puertos_entrada-1 downto 0);
           data_out : out  data_port (puertos_salida-1 downto 0);
			  --
			  PC_out	: out std_logic_vector(9 downto 0));
end micro_total;

architecture Behavioral of micro_total is
	-- Declaracin de componentes
	component kcpsm3
	Port (       address : out std_logic_vector(9 downto 0);
				instruction : in std_logic_vector(17 downto 0);
					 port_id : out std_logic_vector(7 downto 0);
			  write_strobe : out std_logic;
					out_port : out std_logic_vector(7 downto 0);
				read_strobe : out std_logic;
					 in_port : in std_logic_vector(7 downto 0);
				  interrupt : in std_logic;
			 interrupt_ack : out std_logic;
	 register_enable_out : out std_logic;
						  alu : out std_logic_vector(7 downto 0);
						reset : in std_logic;
						  clk : in std_logic);
	end component;
	component prog_fin
	generic ( sim	: integer := 0);
	Port (      address : in std_logic_vector(9 downto 0);
			instruction : out std_logic_vector(17 downto 0);
					  clk : in std_logic);
	end component;
	component puertos_in
	Port ( 	clk : in  STD_LOGIC;
			reset : in  STD_LOGIC;
			read_strobe	: in std_logic;
			direccion : in  STD_LOGIC_VECTOR (7 downto 0);
			data_in : in  data_port (puertos_entrada-1 downto 0);
			data_out : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	component puertos_out
	Port ( clk : in  STD_LOGIC;
			reset : in  STD_LOGIC;
			write_strobe	: in std_logic;
			direccion : in  STD_LOGIC_VECTOR (7 downto 0);
			data_in : in  std_logic_vector (7 downto 0);
			data_out : out  data_port (puertos_salida-1 downto 0));
	end component;
	component simulacion
    Port ( clk	: in std_logic;
			  reset	: in std_logic;
			  hab_reg	: in std_logic;
			  instruction : in  STD_LOGIC_vector(17 downto 0);
           alu_result : in  STD_LOGIC_vector(7 downto 0);
           registros : out  data_port(15 downto 0));
	end component;
	component interrupcion_pblaze
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           data_protocolo : in  STD_LOGIC_VECTOR(7 downto 0);
           interrupt_ack : in  STD_LOGIC;
           interrupt : out  STD_LOGIC);
	end component;
	-- Declaracin de seales interanas
	signal address	: std_logic_vector(9 downto 0);
	signal instr	: std_logic_vector(17 downto 0);
	signal alu		: std_logic_vector(7 downto 0);
	signal register_enable	: std_logic;
	signal registros	: data_port(15 downto 0);
	signal port_id	: std_logic_vector(7 downto 0);
	signal write_strobe	: std_logic;
	signal out_port	: std_logic_vector(7 downto 0);
	signal read_strobe	: std_logic;
	signal in_port		: std_logic_vector(7 downto 0);
	signal interrupt	: std_logic;
	signal interrupt_ack	: std_logic;
	type estado_int is (inicio, inter, inter_ack, inter_rest);
	signal estado	: estado_int;
begin
	interr:interrupcion_pblaze
	port map (
		clk => clk,
		reset => reset,
		data_protocolo => data_protocolo,
		interrupt_ack => interrupt_ack,
		interrupt => interrupt
	);
	interrupcion_ack <= interrupt_ack;
	-- Picoblaze
	PC_out <= address;
	micro:kcpsm3
	port map (
		address => address,
		instruction => instr,
		port_id => port_id,
		write_strobe => write_strobe,
		out_port => out_port,
		read_strobe => read_strobe,
		in_port => in_port,
		interrupt => interrupt,
		interrupt_ack => interrupt_ack,
		register_enable_out => register_enable,
		alu => alu,
		reset => reset,
		clk => clk
	);
	simul:simulacion
	port map (
		clk => clk,
		reset => reset,
		hab_reg => register_enable,
		instruction => instr,
		alu_result => alu,
		registros => registros
	);
	-- Programa
	programa:prog_fin
	generic map (sim => sim)
	port map (
		address => address,
		instruction => instr,
		clk => clk
	);
	-- Puertos de entrada
	entrada:puertos_in
	port map (
		clk => clk,
		reset => reset,
		read_strobe	=> read_strobe,
		direccion => port_id,
		data_in => data_in,
		data_out => in_port
	);
	-- Puertos de salida
	salida:puertos_out
	port map (
		clk => clk,
		reset => reset,
		write_strobe	=> write_strobe,
		direccion => port_id,
		data_in => out_port,
		data_out => data_out
	);
end Behavioral;

