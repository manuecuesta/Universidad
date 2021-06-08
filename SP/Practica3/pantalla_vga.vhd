----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:54:16 02/28/2020 
-- Design Name: 
-- Module Name:    pantalla_vga - Behavioral 
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

entity pantalla_vga is
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
end pantalla_vga;

architecture Behavioral of pantalla_vga is
	-- Declaración de componentes
	component vga_ctrl is
    Port ( clk : in  STD_LOGIC;
				reset : in  STD_LOGIC;
				clk_out	: out std_logic;
				px	: out std_logic_vector (9 downto 0);
				py	: out std_logic_vector (9 downto 0);
				video_on	: out std_logic;
				hs_out    : out std_logic;
				vs_out    : out std_logic
	 );
	end component;
	component vga_texto is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           datos : in  STD_LOGIC_VECTOR (7 downto 0);
           direc : in  STD_LOGIC_VECTOR (10 downto 0);
           wr : in  STD_LOGIC;
           px : in  STD_LOGIC_VECTOR (9 downto 0);
           py : in  STD_LOGIC_VECTOR (9 downto 0);
           red : out  STD_LOGIC_VECTOR (2 downto 0);
           green : out  STD_LOGIC_VECTOR (2 downto 0);
           blue : out  STD_LOGIC_VECTOR (2 downto 1));
	end component;
	-- Delcaración de señales
	signal pixel_x		: std_logic_vector(9 downto 0);
	signal pixel_y		: std_logic_vector(9 downto 0);
	signal hsync_tmp	: std_logic;
	signal vsync_tmp	: std_logic;
begin
	ctrl:vga_ctrl
	port map (
		clk 		=> clk,
		reset 	=> reset,
		clk_out	=> open,
		px	=> pixel_x,
		py	=> pixel_y,
		video_on	=> open,
		hs_out	=> hsync_tmp,
		vs_out	=> vsync_tmp
	);
	pantalla:vga_texto
	port map (
		clk	=> clk,
		reset	=> reset,
		datos	=> datos,
		direc	=> direc,
		wr		=> wr,
		px		=> pixel_x,
		py		=> pixel_y,
		red	=> red,
		green	=> green,
		blue	=> blue
	);
	
	hsync <= hsync_tmp;
	vsync <= vsync_tmp;
end Behavioral;

