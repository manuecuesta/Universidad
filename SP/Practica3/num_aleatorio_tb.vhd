LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY num_aleatorio_tb IS
END num_aleatorio_tb;
architecture behavior OF num_aleatorio_tb IS
-- Declaración de componentes

COMPONENT num_aleatorio
PORT(
	 clk : in STD_LOGIC;
	 reset : in STD_LOGIC;
	 inicio_juego : in STD_LOGIC;
	 fin_juego : in STD_LOGIC;
	 num_al : inout STD_LOGIC_VECTOR(7 downto 0)
);
END COMPONENT;
--Inputs
signal clk : std_logic := '0';
signal reset : std_logic := '0';
signal inicio_juego : std_logic := '0';
signal fin_juego : std_logic := '0';

--Outputs
signal num_al : std_logic_vector(7 downto 0);

-- Clock period definitions
constant clk_period : time := 20 ns;
BEGIN
uut: num_aleatorio PORT MAP (
	clk => clk,
	reset => reset,
	inicio_juego => inicio_juego,
	fin_juego => fin_juego,
	num_al => num_al
);

clk_process :process
begin
	clk <= '0';
	wait for clk_period/2;
	clk <= '1';
	wait for clk_period/2;
end process;

reset_process :process
begin
	reset <= '1';
	wait for 13*clk_period/4;
	reset <= '0';
	wait;
end process;

-- Stimulus process
stim_proc: process
begin
	inicio_juego <= '0';
	fin_juego <= '0';
	wait until reset='0';
	wait for 30*clk_period;
	inicio_juego <= '1';
	wait for clk_period;
	inicio_juego <= '0';
	wait for 300*clk_period;
	fin_juego <= '1';
	wait for clk_period;
	fin_juego <= '0';
	wait;
end process;

end;