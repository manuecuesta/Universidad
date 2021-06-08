----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:30:32 04/23/2012 
-- Design Name: 
-- Module Name:    sim - Behavioral 
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
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

use work.picoblaze_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity simulacion is
    Port ( clk	: in std_logic;
			  reset	: in std_logic;
			  hab_reg	: in std_logic;
			  instruction : in  STD_LOGIC_vector(17 downto 0);
           alu_result : in  STD_LOGIC_vector(7 downto 0);
           registros : out  data_port(15 downto 0));
end simulacion;

architecture Behavioral of simulacion is

begin
	Psim:process (clk, reset)
	begin
		if (reset='1') then
			registros <= (others => (others => '0'));
		else
			if (clk='1' and clk'event) then
				if (hab_reg='1') then
					registros(conv_integer(instruction(11 downto 8))) <= alu_result;
				end if;
      	end if;
		end if;
	end process;

end Behavioral;

