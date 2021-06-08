--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 


library IEEE;
use IEEE.STD_LOGIC_1164.all;

package picoblaze_pkg is
	-- Constantes
	constant puertos_entrada			: integer := 3;
		constant proto_port				: integer := 0;
			constant bit_inicio			: integer := 0;
			constant bit_dato				: integer := 1;
	constant dato_port					: integer := 1;
	constant num_al_port					: integer := 2;

	constant puertos_salida				: integer := 4;
		--constant proto_port			: integer := 0;
			constant bit_fin				: integer := 0;
			constant bit_wr				: integer := 1;
		--constant dato_port				: integer := 1;
		constant dir_port0				: integer := 2;
		constant dir_port1				: integer := 3;

	-- Tipos
	type data_port is array (integer range <>) of std_logic_vector(7 downto 0);
end picoblaze_pkg;
