----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:54:51 05/24/2021 
-- Design Name: 
-- Module Name:    imprime_r - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity imprime_r is
    Port ( wr : out  STD_LOGIC;
           direc : out  STD_LOGIC_VECTOR (10 downto 0);
           dir_c : out  STD_LOGIC_VECTOR (7 downto 0);
           num_al : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           inicio_juego : in  STD_LOGIC;
           fin_juego : out  STD_LOGIC);
end imprime_r;

architecture Behavioral of imprime_r is
	type estado_asm is (espera_inicio, cuenta, genera_fin, imp_dos);
	signal estado	: estado_asm;
	signal cont		: std_logic_vector(26 downto 0);
	constant cont_max : integer := 10000000; --IMPLEMENTACION
	--constant cont_max : integer := 10; --SIMULACION

begin
P1:process (clk, reset)
	begin
		if (reset='1') then
			cont <= (others => '0');
			fin_juego <= '0';
			
		elsif (clk='1' and clk'event) then
			case estado is
				when espera_inicio =>
					if (inicio_juego='1') then
						cont <= (others => '0');
						fin_juego <= '0';
						wr <= '0';
						estado <= cuenta;
					else
						estado <= espera_inicio;
					end if;
				when cuenta =>
					if (cont < cont_max) then
						cont <= cont+1;
						estado <= cuenta;
					else
						estado <= genera_fin;
					end if;
				when genera_fin =>
						wr <= '1';
						direc <= "01011001110";
--						dir_c <= X"3" & X"1";
						dir_c <= X"3" & num_al(3 downto 0);
						fin_juego <= '1';
						estado <= imp_dos;
				when imp_dos =>
						direc <= "01011001101";
--						dir_c <= X"3" & X"2";
						dir_c <= X"3" & num_al(7 downto 4);
						estado <= espera_inicio;
				when others =>
					estado <= espera_inicio;
			end case;
		end if;
	end process;

end Behavioral;

