library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.std_logic_signed.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity num_aleatorio is
 Port ( clk : in STD_LOGIC;
	 reset : in STD_LOGIC;
	 inicio_juego : in STD_LOGIC;
	 fin_juego : in STD_LOGIC;
	 num_al : out STD_LOGIC_VECTOR(7 downto 0));
end num_aleatorio;

architecture Behavioral of num_aleatorio is
	type estado_asm1 is (estadoinicial, estadodigito1, estadodigito1a0, estadodigito2);
	signal estado1 : estado_asm1;
	type estado_asm2 is (e0, e1, e2);
	signal estado2 : estado_asm2;
	signal digito1 : STD_LOGIC_VECTOR(3 downto 0);
	signal digito2 : STD_LOGIC_VECTOR(3 downto 0);
begin
P1:process (clk, reset)
begin
	if (reset='1') then
		digito1<=(others => '0');
		digito2<=(others => '0');
		estado1<=estadoinicial;
		--num_aleatorio<="00000000";  quitar
	elsif (clk='1' and clk'event) then
		case estado1 is
			when estadoinicial =>
				digito2<=(others => '0');
				digito1<=(others => '0');
				if (digito1<9) then
					estado1<=estadodigito1;
				else
					estado1<=estadodigito1a0;
				end if;
			
			when estadodigito1 => 
				
				if (digito1<9) then
					digito1 <= digito1 + 1;
					estado1<=estadodigito1;
				else
					estado1<=estadodigito1a0;
				end if;
			
			when estadodigito1a0 => 
				digito1<=(others => '0');
				if (digito2<9) then
					estado1<=estadodigito2;
				else 
					estado1<=estadoinicial;
				end if;
			
			when estadodigito2 =>
				digito2<=digito2+1;
				estado1<=estadodigito1;
			
		end case;
		
	end if;
end process;

P2:process (clk, reset)
begin
	if (reset='1') then
		--digito1<=(others => '0');
		--digito2<=(others => '0');
		estado2<=e0;
		num_al<=(others => '0');
	elsif (clk='1' and clk'event) then
		case estado2 is
			when e0 =>
				if (inicio_juego='1') then
					estado2<=e1;
				else
					estado2<=e0;
				end if;
			
			when e1 =>
				num_al<=digito2&digito1;
				estado2<=e2;
			
			when e2 =>
				if (fin_juego='1') then
					estado2<=e0;
				else
					estado2<=e2;
				end if;

		
		end case;
	end if;
end process;

end Behavioral;

