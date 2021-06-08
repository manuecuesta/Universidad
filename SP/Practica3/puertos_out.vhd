----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:51:03 11/16/2008 
-- Design Name: 
-- Module Name:    puertos_out - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--		Circuitería para buffering de las unidades utilizadas como entradas.
--		Es necesario definir el número de puertos de entrada, para lo cual
--		será utilizado un paquete (picoblaze_pkg, por defecto o sustituir 
--		por otro). La constante es denominada puertos_salida.
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

entity puertos_out is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
	   write_strobe	: in std_logic;
	   direccion : in  STD_LOGIC_VECTOR (7 downto 0);
           data_in : in  std_logic_vector (7 downto 0);
           data_out : out  data_port (puertos_salida-1 downto 0));
end puertos_out;

architecture Behavioral of puertos_out is
	signal ce	: std_logic_vector (puertos_salida-1 downto 0);
begin
	F1:for i in puertos_salida-1 downto 0 generate
	begin
		ce(i) <= write_strobe when conv_integer(direccion)=i else '0';
		P1:process (clk)
		begin
			if (clk='0' and clk'event) then
				if (reset = '1') then
					data_out(i) <= (others => '0');
				elsif (ce(i) = '1') then
					data_out(i) <= data_in;
				end if;
			end if;
		end process;
	end generate;

end Behavioral;

