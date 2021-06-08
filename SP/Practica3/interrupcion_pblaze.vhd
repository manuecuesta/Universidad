----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:51:15 09/15/2012 
-- Design Name: 
-- Module Name:    interrupcion_pblaze - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity interrupcion_pblaze is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           data_protocolo : in  STD_LOGIC_VECTOR(7 downto 0);
           interrupt_ack : in  STD_LOGIC;
           interrupt : out  STD_LOGIC);
end interrupcion_pblaze;

architecture Behavioral of interrupcion_pblaze is
	type estado_int is (inicio, inter);
	signal estado	: estado_int;
	signal data_tmp	: std_logic_vector(7 downto 0);
begin
	-- Interrupcin
	Pinter:process (clk, reset)
	begin
		if (reset='1') then
			interrupt <= '0';
			estado <= inicio;
			data_tmp <= data_protocolo;
		else
			if (clk='1' and clk'event) then
				case estado is
					when inicio =>
						interrupt <= '0';
						data_tmp <= data_protocolo;
						if (data_protocolo /= 0) then
							if (data_protocolo /= data_tmp) then
								estado <= inter;
							end if;
						end if;
					when inter =>
						interrupt <= '1';
						if (interrupt_ack='1') then
							estado <= inicio;
						end if;
					when others =>
						estado <= inicio;
				end case;
			end if;
		end if;
	end process;

end Behavioral;

