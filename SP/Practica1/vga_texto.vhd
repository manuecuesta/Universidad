----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:	14:02:37 02/28/2020 
-- Design Name: 
-- Module Name:	vga_texto - Behavioral 
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

use work.font_caracteres.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity vga_texto is
	Port ( clk : in	STD_LOGIC;
			reset : in	STD_LOGIC;
			datos : in	STD_LOGIC_VECTOR (7 downto 0);
			direc : in	STD_LOGIC_VECTOR (10 downto 0);
			wr : in	STD_LOGIC;
			px : in	STD_LOGIC_VECTOR (9 downto 0);
			py : in	STD_LOGIC_VECTOR (9 downto 0);
			red : out	STD_LOGIC_VECTOR (2 downto 0);
			green : out	STD_LOGIC_VECTOR (2 downto 0);
			blue : out	STD_LOGIC_VECTOR (2 downto 1));
end vga_texto;

architecture Behavioral of vga_texto is
	signal dir_c				: std_logic_vector(10 downto 0);
	signal dir_rom				: std_logic_vector(11 downto 0);
	signal data_out			: std_logic_vector(0 to 7);
	signal color				: std_logic;
begin
		RAMB16_S9_S9_inst : RAMB16_S9_S9
	generic map (
		INIT_A => X"000", --	Value of output RAM registers on Port A at startup
		INIT_B => X"000", --	Value of output RAM registers on Port B at startup
		SRVAL_A => X"000", --	Port A output value upon SSR assertion
		SRVAL_B => X"000", --	Port B output value upon SSR assertion
		WRITE_MODE_A => "WRITE_FIRST", --	WRITE_FIRST, READ_FIRST or NO_CHANGE
		WRITE_MODE_B => "WRITE_FIRST", --	WRITE_FIRST, READ_FIRST or NO_CHANGE
		SIM_COLLISION_CHECK => "ALL", -- "NONE", "WARNING", "GENERATE_X_ONLY", "ALL" 
		-- The following INIT_xx declarations specify the initial contents of the RAM
		-- Address 0 to 511
		INIT_00 => X"1616161616161616161616161616161616161616161616161616161616161614",
		INIT_01 => X"0000000000000000000000000000000000000000000000001516161616161616",
		INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_03 => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_04 => X"0000000000004f444143524f4841004c45000000000000000000000000000013",
		INIT_05 => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_06 => X"0053454c42414d4152474f52500053414d455453495300000000000000000013",
		INIT_07 => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_09 => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_0A => X"00000000000000415453455543004c45554e414d003a35004f50555247000013",   --nombre
		INIT_0B => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_0C => X"16161616161616161616161b1616161616161616161616161616161616161619",
		INIT_0D => X"0000000000000000000000000000000000000000000000001a16161616161616",
		INIT_0E => X"0000000000000000000000130000000000000000000000000000000000000013",
		INIT_0F => X"0000000000000000000000000000000000000000000000001300000000000000",
		-- Address 512 to 1023
		
		INIT_10 => X"3a524f495245505553000013000000524f4c4156000000000000000201140013",  -- 020114  parte superior barra
		INIT_11 => X"0000000000000000000000000000000000000000000000001300000000585800",
		INIT_12 => X"3a524f495245464e4900001300004f544c55434f000000000000000500130013", --050013 cabeza
		INIT_13 => X"0000000000000000000000000000000000000000000000001300000000585800",
		INIT_14 => X"3a534f544e45544e490000130000000000000000000000000000071308130013", --cuerpo
		INIT_15 => X"0000000000000000000000000000000000000000000000001300000000585800", --07000813
		INIT_16 => X"0000000000000000000000130000000000585800000000000000080007130013", 
		INIT_17 => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_18 => X"000000003a4f5441440000130000000000000000000000000000000000000013",
		INIT_19 => X"0000000000000000000000000000000000000000000000001300000000585800",
		INIT_1A => X"0000000000000000000000130000000000000000000000000000000000000013",
		INIT_1B => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_1C => X"16161616161616161616161c1616161616161616161616161616161616161617",
		INIT_1D => X"0000000000000000000000000000000000000000000000001816161616161616",
		INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_1F => X"0000000000000000000000000000000000000000000000001300000000000000",
		
		
		-- Address 1024 to 1535
		INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_21 => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_23 => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_25 => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_27 => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_29 => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_2B => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_2D => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_2F => X"0000000000000000000000000000000000000000000000001300000000000000",
		-- Address 1536 to 2047
		INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_31 => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_33 => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_35 => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_37 => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_39 => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_3B => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_3D => X"0000000000000000000000000000000000000000000000001300000000000000",
		INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000013",
		INIT_3F => X"0000000000000000000000000000000000000000000000001300000000000000",
		-- The next set of INITP_xx are for the parity bits
		-- Address 0 to 511
		INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
		INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
		-- Address 512 to 1023
		INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
		INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
		-- Address 1024 to 1535
		INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
		INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
		-- Address 1536 to 2047
		INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
		INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000")
	port map (
		DOA => open,		-- Port A 8-bit Data Output
		DOB => dir_rom(11 downto 4),		-- Port B 8-bit Data Output
		DOPA => open,	-- Port A 1-bit Parity Output
		DOPB => open,	-- Port B 1-bit Parity Output
		ADDRA => direc,	-- Port A 11-bit Address Input
		ADDRB => dir_c,	-- Port B 11-bit Address Input
		CLKA => clk,	-- Port A Clock
		CLKB => clk,	-- Port B Clock
		DIA => datos,		-- Port A 8-bit Data Input
		DIB => X"00",		-- Port B 8-bit Data Input
		DIPA => "0",	-- Port A 1-bit parity Input
		DIPB => "0",	-- Port-B 1-bit parity Input
		ENA => '1',		-- Port A RAM Enable Input
		ENB => '1',		-- PortB RAM Enable Input
		SSRA => reset,	-- Port A Synchronous Set/Reset Input
		SSRB => reset,	-- Port B Synchronous Set/Reset Input
		WEA => wr,		-- Port A Write Enable Input
		WEB => '0'		-- Port B Write Enable Input
	);

	
	dir_c <= py(9 downto 5) & px(9 downto 4) when px(9 downto 4) < 40 else (others => '0');
	dir_rom(3 downto 0) <= py(4 downto 1);
	data_out <= ROM(conv_integer(dir_rom));
	color <= data_out(conv_integer(px(3 downto 1)));
	
	red <= (others => color);
	green <= (others => color);
	blue <= (others => color);

end Behavioral;

