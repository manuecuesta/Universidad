----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:27:52 11/15/2008 
-- Design Name: 
-- Module Name:    puertos_in - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--		Circuitera para buffering de las unidades utilizadas como entradas.
--		Es necesario definir el nmero de puertos de entrada, para lo cual
--		ser utilizado un paquete (picoblaze_pkg, por defecto o sustituir 
--		por otro). La constante es denominada puertos_entrada.
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
--use work.psa_pack.all;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity puertos_in is
    Port ( 	clk : in  STD_LOGIC;
				reset : in  STD_LOGIC;
				read_strobe	: in std_logic;
				direccion : in  STD_LOGIC_VECTOR (7 downto 0);
				data_in : in  data_port (puertos_entrada-1 downto 0);
				data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end puertos_in;

architecture Behavioral of puertos_in is
	signal data_tmp	: data_port (puertos_entrada-1 downto 0);
	signal data_tmp_out	: std_logic_vector (7 downto 0);
	signal ctrl	: std_logic_vector(4 downto 0);
	signal dir	: integer;
begin
	F1:for i in puertos_entrada-1 downto 0 generate
	begin
		P1:process (clk)
		begin
			if (clk='0' and clk'event) then
				if (reset='1') then
					data_tmp(i) <= (others => '0');
				else
					data_tmp(i) <= data_in(i);
				end if;
			end if;
		end process;
	end generate;
	
--	Pctrl:process (clk, reset)
--	begin
--		if (reset='1') then
--			ctrl <= "00001";
--		else
--			if (clk='1' and clk'event) then
--				if (read_strobe='1') then
--					ctrl(4 downto 1) <= ctrl(3 downto 0);
--					ctrl(0) <= ctrl(4);
--				end if;
--				if (ctrl(0)='1') then
--					dir <= prioridad_port;
--				elsif (ctrl(2)='1' or ctrl(4)='1') then
--					dir <= red_in_port1(conv_integer(direccion));
--				else
--					dir <= red_in_port0(conv_integer(direccion));
--				end if;
--			end if;
--		end if;
--	end process;
	
	Psalida:process (clk, reset)
	begin
		if (reset='1') then
			data_tmp_out <= (others => '0');
		else
			if (clk='0' and clk'event) then
				if (read_strobe='1') then
					data_tmp_out <= data_tmp (conv_integer(direccion));
				end if;
			end if;
		end if;
	end process;
	
	data_out <= data_tmp_out;
end Behavioral;

