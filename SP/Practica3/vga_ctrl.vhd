----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:25:46 08/13/2009 
-- Design Name: 
-- Module Name:    vga_ctrl - Behavioral 
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

--use work.font.all;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_ctrl is
    Port ( clk : in  STD_LOGIC;
				reset : in  STD_LOGIC;
				clk_out	: out std_logic;
				px	: out std_logic_vector (9 downto 0);
				py	: out std_logic_vector (9 downto 0);
				video_on	: out std_logic;
				hs_out    : out std_logic;
				vs_out    : out std_logic
	 );
end vga_ctrl;

architecture Behavioral of vga_ctrl is
	-- Caractersticas para 640x480	
	constant HD_vga	: integer := 	640;	-- horizontal display area
	constant HF_vga	: integer := 	16;		-- h. front porch
	constant HB_vga	: integer := 	48;		-- h. back porch
	constant HR_vga	: integer := 	96;		-- h. retrace
	constant VD_vga : integer :=	480;	-- vertical display area
	constant VF_vga : integer :=	10;		-- v. front porch
	constant VB_vga	: integer :=	33;		-- v. back porch
	constant VR_vga : integer :=	2;		-- v. retrace
	
	CONSTANT px_max	: integer := HD_vga+HF_vga+HB_vga+HR_vga-1;	-- 799
	CONSTANT py_max	: integer := VD_vga+VF_vga+VB_vga+VR_vga-1;	-- 524
	CONSTANT hsync0	: integer := HD_vga+HF_vga;					-- 656
	CONSTANT hsync1	: integer := HD_vga+HF_vga+HR_vga-1;		-- 751
	CONSTANT vsync0	: integer := VD_vga+VF_vga;					-- 490
	CONSTANT vsync1	: integer := VD_vga+VF_vga+VR_vga-1;		-- 491
	--
	signal clk25	: std_logic;
	signal hcount	: std_logic_vector (9 downto 0);
	signal vcount	: std_logic_vector (9 downto 0);
begin
	-- Generador de direccin de pixeles
	process (clk, reset)
	begin
		if reset='1' then
			clk25 <= '0';
		else
			if clk'event and clk='1' then
				if (clk25 = '0') then clk25 <= '1';
				else clk25 <= '0';
				end if;
			end if;
		end if;
	end process;
	clk_out <= clk25;
	process (clk25, reset) 
	begin
		if reset='1' then
			hcount <= (others => '0');
			vcount <= (others => '0');
			hs_out <= '0';
			vs_out <= '0';
		else
			if clk25'event and clk25 = '1' then
				-- Contador horizontal
				if (hcount < px_max) then
					hcount <= hcount+1;
				else
					hcount <= (others => '0');
				end if;
				-- Contador vertical
				if (hcount = px_max and vcount < py_max) then
					vcount <= vcount+1;
				elsif (vcount = py_max) then
					vcount <= (others => '0');
				end if;
				-- Generacin de las seales de sincronizacin
				if (hcount >= hsync0 and hcount <= hsync1) then
					hs_out <= '0';
				else
					hs_out <= '1';
				end if;
				if (vcount >= vsync0 and vcount <= vsync1) then
					vs_out <= '0';
				else
					vs_out <= '1';
				end if;
			end if;
		end if;
	end process;
	-- Generación de la señal de video_on
	video_on <= '1' when hcount < HD_vga and vcount < VD_vga else '0';
	
	px <= hcount;
	py <= vcount;
	-- 
	
end Behavioral;

