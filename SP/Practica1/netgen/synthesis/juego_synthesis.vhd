--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: juego_synthesis.vhd
-- /___/   /\     Timestamp: Wed Apr 14 16:54:52 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm juego -w -dir netgen/synthesis -ofmt vhdl -sim juego.ngc juego_synthesis.vhd 
-- Device	: xc3s100e-5-cp132
-- Input file	: juego.ngc
-- Output file	: C:\Users\Manuel\Practica1\netgen\synthesis\juego_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: juego
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity juego is
  port (
    clk : in STD_LOGIC := 'X'; 
    vsync : out STD_LOGIC; 
    pul_dato : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    inicio_juego : in STD_LOGIC := 'X'; 
    hsync : out STD_LOGIC; 
    blue : out STD_LOGIC_VECTOR ( 2 downto 1 ); 
    green : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    red : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    datos : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end juego;

architecture Structure of juego is
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal N163 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal N189 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal blue_1_OBUF_76 : STD_LOGIC; 
  signal clk_BUFGP_78 : STD_LOGIC; 
  signal datos_0_IBUF_83 : STD_LOGIC; 
  signal datos_1_IBUF_84 : STD_LOGIC; 
  signal datos_2_IBUF_85 : STD_LOGIC; 
  signal datos_3_IBUF_86 : STD_LOGIC; 
  signal inicio_juego_IBUF_92 : STD_LOGIC; 
  signal pul_dato_IBUF_94 : STD_LOGIC; 
  signal reset_IBUF_99 : STD_LOGIC; 
  signal vga_ctrl_Mcount_hcount : STD_LOGIC; 
  signal vga_ctrl_Mcount_hcount1 : STD_LOGIC; 
  signal vga_ctrl_Mcount_hcount2 : STD_LOGIC; 
  signal vga_ctrl_Mcount_hcount3 : STD_LOGIC; 
  signal vga_ctrl_Mcount_hcount4 : STD_LOGIC; 
  signal vga_ctrl_Mcount_hcount5 : STD_LOGIC; 
  signal vga_ctrl_Mcount_hcount6 : STD_LOGIC; 
  signal vga_ctrl_Mcount_hcount7 : STD_LOGIC; 
  signal vga_ctrl_Mcount_hcount8 : STD_LOGIC; 
  signal vga_ctrl_Mcount_hcount9 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_cy_1_rt_131 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_cy_2_rt_133 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_cy_3_rt_135 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_cy_4_rt_137 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_cy_5_rt_139 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_cy_6_rt_141 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_cy_7_rt_143 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_cy_8_rt_145 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_eqn_0 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_eqn_1 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_eqn_2 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_eqn_3 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_eqn_4 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_eqn_5 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_eqn_6 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_eqn_7 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_eqn_8 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_eqn_9 : STD_LOGIC; 
  signal vga_ctrl_Mcount_vcount_xor_9_rt_157 : STD_LOGIC; 
  signal vga_ctrl_N2 : STD_LOGIC; 
  signal vga_ctrl_N6 : STD_LOGIC; 
  signal vga_ctrl_N7 : STD_LOGIC; 
  signal vga_ctrl_clk25_171 : STD_LOGIC; 
  signal vga_ctrl_clk251 : STD_LOGIC; 
  signal vga_ctrl_clk25_mux0001 : STD_LOGIC; 
  signal vga_ctrl_hcount_not0001_inv : STD_LOGIC; 
  signal vga_ctrl_hs_out_185 : STD_LOGIC; 
  signal vga_ctrl_hs_out_mux0001_186 : STD_LOGIC; 
  signal vga_ctrl_vcount_and0000_197 : STD_LOGIC; 
  signal vga_ctrl_vcount_not0001 : STD_LOGIC; 
  signal vga_ctrl_vcount_not000112_199 : STD_LOGIC; 
  signal vga_ctrl_vs_out_200 : STD_LOGIC; 
  signal vga_ctrl_vs_out_mux0001 : STD_LOGIC; 
  signal vga_ctrl_vs_out_mux000113 : STD_LOGIC; 
  signal vga_ctrl_vs_out_mux0001131_203 : STD_LOGIC; 
  signal vga_ctrl_vs_out_mux000127_204 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_10_f5_205 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_10_f51 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_10_f6_207 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_11_208 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_111_209 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_11_f5_210 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_12_211 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_121_212 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_122_213 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_12_f5_214 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_12_f51 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_12_f52 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_13_217 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_131_218 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_132_219 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_133_220 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_14_221 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_141_222 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_142_223 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_14_f6_224 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_15_f5_225 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_15_f51 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_15_f6_227 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_15_f7_228 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_15_f71 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_16_230 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_161_231 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_16_f5_232 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_16_f51 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_16_f52 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_16_f6_235 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_16_f61 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_16_f62 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_16_f7_238 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_16_f8_239 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_240 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_171_241 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_172_242 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_173_243 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_174_244 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f5_245 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f51_246 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f52_247 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f53 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f54 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f55 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f56 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f57 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f6_253 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f61 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f62 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f7_256 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f71 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f72 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f8_259 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_17_f81 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_261 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_181 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_182_263 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_183_264 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_184_265 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_185_266 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_186_267 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_187_268 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_188 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f5_270 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f51 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f52 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f53 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f54 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f55 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f56 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f57 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f6_278 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f61 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f62 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f63 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f64 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f65 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f7_284 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f71 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f72 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_18_f73 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_288 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_191_289 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_1910_290 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_1911_291 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_1912_292 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_1913_293 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_192_294 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_193_295 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_194_296 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_195 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_196_298 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_197_299 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_198_300 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_199_301 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f5_302 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f51_303 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f510 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f52 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f53 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f54 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f55 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f56 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f57 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f58 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f59 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f6_313 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f61 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f62 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f63 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f64 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f65 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f66 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f67 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f68 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f69 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f7_323 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f71 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_19_f8_325 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_326 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_201_327 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2010 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2011_329 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2012_330 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2013_331 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2014 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2015_333 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_202_334 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_203_335 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_204_336 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_205_337 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_206_338 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_207_339 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_208 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_209_341 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f5_342 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f51_343 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f510 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f511 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f512 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f513 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f514 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f515 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f516 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f517 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f518 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f519 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f52_354 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f53 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f54 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f55 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f56 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f57 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f58 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f59 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f5_0_362 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f5_14_363 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f5_2_364 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f5_21_365 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f5_3_366 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f5_9_367 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f6_368 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f61 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f610 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f611 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f62 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f63 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f64 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f65 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f66 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f67 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f68 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f69 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f7_380 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f71 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f8_382 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_20_f81 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_384 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_211_385 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2110_386 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2111_387 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2113 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2114 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2115_390 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2116_391 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2117_392 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2118_393 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2119_394 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_212_395 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2120_396 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2121_397 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2122_398 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2123_399 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2124_400 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2125 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_213_402 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_214_403 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_215_404 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_216 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_217_406 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_219_407 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f5_408 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f51 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f510 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f511 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f512 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f513 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f514 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f515 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f516 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f517 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f518 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f519 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f52 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f520 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f521 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f522 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f523 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f524 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f53 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f54 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f55 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f56 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f57 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f58 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f59 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f5_1_433 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f5_11_434 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f5_4_435 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f5_8_436 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f6_437 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f61 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f62 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f63 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f64 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f65 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f66 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f67 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f68 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f7_446 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f71 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_21_f72 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_449 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_221_450 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2210_451 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2211_452 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2212_453 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2213_454 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2214_455 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2215_456 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2216_457 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2217_458 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2218_459 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2219_460 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_222_461 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2220_462 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2221_463 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2222_464 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2223_465 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2224_466 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2225_467 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2226_468 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2227_469 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2229_470 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_223_471 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2230 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2231_473 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2232 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2233_475 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2234_476 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2235_477 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2236_478 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2237_479 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2238_480 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_224_481 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2240_482 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_225_483 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_226 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_227 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_228_486 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f5_487 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f51 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f510 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f511 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f512 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f513 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f514 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f515 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f516 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f517 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f518 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f519 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f52 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f520 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f521 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f522 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f524 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f525 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f526 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f527 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f528 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f529 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f53 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f54 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f55 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f56 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f57 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f58 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f59 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f5_19_516 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f5_191_517 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f5_2_518 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f5_21_519 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f5_4_520 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f5_7_521 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f5_71_522 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f5_8_523 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f5_9_524 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f5_91_525 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f6_526 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f61 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f62 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f63 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f64 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f65 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f66 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f67 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f7_534 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f71 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_22_f72 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_537 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_231_538 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2310_539 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2311_540 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2312_541 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2313_542 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2314_543 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2315 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2316_545 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2317_546 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2318_547 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2319_548 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_232_549 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2320_550 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2321_551 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2322_552 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2323_553 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2324_554 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2325_555 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2326_556 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2327_557 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2328_558 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2329_559 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_233_560 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2330_561 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2331_562 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2332_563 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2333 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2334_565 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2336_566 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2337_567 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2338_568 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2340_569 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2341_570 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2342_571 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2344_572 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2346 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2347 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2348_575 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2349_576 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_235_577 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2350_578 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2351_579 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_236_580 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_237_581 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_238_582 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_239_583 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f5_584 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f51 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f510 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f512 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f513 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f514 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f515 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f516 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f517 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f518 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f519 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f52 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f520 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f521 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f522 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f523 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f53 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f54 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f55 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f57 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f58 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f59 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f5_2_606 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f5_3_607 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f5_8_608 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f6_609 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f61 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f62 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f63 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f64 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f65 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f66 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f67 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f68 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f69 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_23_f7_619 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_620 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_241_621 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2410_622 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2411_623 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2412_624 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2413_625 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2414_626 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2415_627 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2416_628 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2417_629 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2418_630 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2419_631 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_242_632 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2420_633 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2421_634 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2422_635 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2423_636 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2424_637 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2425_638 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2426_639 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2427_640 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2428_641 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2429_642 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_243_643 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2430_644 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2431_645 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2432_646 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2433_647 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2435 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2436_649 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2437_650 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2439 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_244_652 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2440 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2446 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2447_655 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2448_656 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_245_657 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2450 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_247_659 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_248_660 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_249_661 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f51 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f510 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f511 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f512 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f513 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f514 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f515 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f516 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f517 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f518 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f519 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f52 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f520 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f521 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f53 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f54 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f55 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f56 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f57 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f58 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f59 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f5_1_683 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f5_5_684 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f6_685 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f61 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f62 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f63 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_24_f64 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_251_690 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2510_691 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2511_692 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2512_693 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2513_694 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2514_695 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2515_696 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2516_697 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2517_698 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2518_699 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2520_700 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2521_701 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2522_702 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2524_703 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2526_704 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2528_705 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2529_706 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_253_707 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2530_708 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2532_709 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2534_710 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2535 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2536_712 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2537_713 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2538_714 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2539_715 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_254_716 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2540_717 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2541 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2542_719 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2543 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2544_721 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_255_722 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_256_723 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_257_724 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_258_725 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f5_726 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f51 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f510 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f511 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f512 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f513 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f514 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f515 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f516 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f517 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f518 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f519 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f520 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f53 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f55 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f56 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f57 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f58 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f59 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f5_4_745 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f5_5_746 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f6_747 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f61 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f62 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_25_f7_750 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_751 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_261_752 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2610_753 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2611_754 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2612_755 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2613_756 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2614_757 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2615_758 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2616_759 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2617_760 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2619_761 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_262_762 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2620_763 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2623_764 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2624_765 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2625_766 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2626_767 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2628_768 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2629_769 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_263_770 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2630_771 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2631_772 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2632_773 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2633_774 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2635_775 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2636_776 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2637_777 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2638_778 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2639_779 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_264_780 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2640 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2641_782 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2642 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_265_784 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_266_785 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_267_786 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_268_787 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_f51 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_f510 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_f511 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_f512 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_f513 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_f52 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_f53 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_f54 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_f55 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_f56 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_f57 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_f58 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_f59 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_f5_3_801 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_26_f6_802 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_27_803 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_271_804 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2710_805 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2713_806 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2714_807 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2715_808 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2716_809 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2717_810 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2718_811 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2720_812 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2721_813 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2722_814 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2725_815 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2726_816 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2727_817 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2728_818 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2729_819 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_273_820 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2730_821 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2731_822 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2732_823 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2733_824 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2734_825 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_277_826 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_278_827 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_27_f5_828 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_27_f51 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_27_f52 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_27_f53 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_27_f54 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_27_f56 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_27_f57 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_27_f5_5_835 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_27_f6_836 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_28_837 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_281_838 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2811_839 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2812_840 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2813_841 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2814_842 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2816_843 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2817_844 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2819 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_282_846 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2821 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_283_848 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_284_849 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_285_850 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_286_851 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_287_852 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_288_853 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_289_854 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_28_f5_855 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_28_f51 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_28_f52 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_28_f6_858 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_29_859 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_291_860 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_2910_861 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_292_862 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_293_863 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_294_864 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_295_865 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_298_866 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_29_f5_867 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_29_f51 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_30_869 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_301_870 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_302_871 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_303_872 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_30_f5_873 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_31_874 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_311_875 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_312_876 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_31_f5_877 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_32_878 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_321_879 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_33_880 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_5_f5_881 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_6_882 : STD_LOGIC; 
  signal vga_pantalla_Mmux_color_7_883 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom00001 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000010 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000100 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000103 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom00001031_inv : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000104 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000105 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000106 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000107 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000108 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000109 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000110 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000112 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000113 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000114 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000115 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000116 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000117 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom00001181_inv : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000122 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000123 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000124 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000125 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000126 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000127 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000128 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000130 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000131 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000133 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000136 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000137 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000139 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000014 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000141 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000142 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000143 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000144 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000145 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000146 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom00001461_inv : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000147_924 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000148 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000149 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000150 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000153 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000157 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000159 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000162 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000163 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000164 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000166 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000169 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000017 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000171_937 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000172 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000176 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000177 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000178 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000186 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000187 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000189 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom00001891_inv : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000019 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000191_947 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000192 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000193 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000194 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000196 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000198 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom00002 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000201 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000202 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000203 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000205 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000207 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000209 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000212 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000214 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000215 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000216 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000217 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000218 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000219 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000022 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000221 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000223 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000225 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000023 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000024 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000245 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000247 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000249 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom00002571_inv : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000263 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000265 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000028 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom00002801_inv : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000282_981 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000289 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000029 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000290 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom00002911_inv : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000297 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000299 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom00003 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000300 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000031_990 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000315 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000320_992 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000033 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000037 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000373 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000380 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000386 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000393 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000397 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000399 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000041 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000042 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000435 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000443 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000454 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom0000458 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000055 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000064_1008 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000065 : STD_LOGIC; 
  signal vga_pantalla_Mrom_data_out_rom000094 : STD_LOGIC; 
  signal vga_pantalla_N1 : STD_LOGIC; 
  signal vga_pantalla_N14 : STD_LOGIC; 
  signal vga_pantalla_N15 : STD_LOGIC; 
  signal vga_pantalla_N22 : STD_LOGIC; 
  signal vga_pantalla_N26 : STD_LOGIC; 
  signal vga_pantalla_N27 : STD_LOGIC; 
  signal vga_pantalla_N28 : STD_LOGIC; 
  signal vga_pantalla_N30 : STD_LOGIC; 
  signal vga_pantalla_N31 : STD_LOGIC; 
  signal vga_pantalla_N32 : STD_LOGIC; 
  signal vga_pantalla_N33 : STD_LOGIC; 
  signal vga_pantalla_N35 : STD_LOGIC; 
  signal vga_pantalla_N4 : STD_LOGIC; 
  signal vga_pantalla_N42 : STD_LOGIC; 
  signal vga_pantalla_N46 : STD_LOGIC; 
  signal vga_pantalla_N58 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_10_0_1039 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_10_1 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_10_128 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_10_1281_1042 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_10_1282_1043 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_10_168 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_10_1681_1045 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_10_2 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_10_30 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_10_301_1048 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_10_302_1049 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_4_1_1051 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_4_3 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_4_6 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_4_9 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_4_mmx_out10 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_4_mmx_out2 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_4_mmx_out6 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_4_mmx_out71_inv : STD_LOGIC; 
  signal vga_pantalla_dir_rom_4_mmx_out81_inv : STD_LOGIC; 
  signal vga_pantalla_dir_rom_4_mmx_out9 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_4_mmx_out91_inv : STD_LOGIC; 
  signal vga_pantalla_dir_rom_5_13 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_5_25 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_5_26 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_5_3 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_10 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_11 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_12 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_12111_1071 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_13 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_14 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_141_1074 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_15 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_17 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_171_1077 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_18 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_181_1079 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_19 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_191 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_1911_1082 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_20 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_22 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_23 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_24 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_25 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_251_1088 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_26 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_27 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_28 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_5_1092 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_6 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_7 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_71_1095 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_8_1096 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_9 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_6_91_1098 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_7_1_1100 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_7_14_1101 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_7_18_1102 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_7_2 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_7_4 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_7_465_1105 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_7_5 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_7_591 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_7_6 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_7_67 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_7_7 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_8_1 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_8_11_1113 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_8_2 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_8_239 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_8_2391_1116 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_8_3 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_8_41_1118 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_8_437_1119 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_8_477_1120 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_8_5 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_9_311_1123 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_9_37_1124 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_9_4 : STD_LOGIC; 
  signal vga_pantalla_dir_rom_9_5 : STD_LOGIC; 
  signal vga_pantalla_px_3_141_1127 : STD_LOGIC; 
  signal vga_pantalla_px_3_21_1128 : STD_LOGIC; 
  signal vga_pantalla_px_3_251_SW0 : STD_LOGIC; 
  signal vga_pantalla_px_3_48_1130 : STD_LOGIC; 
  signal vga_pantalla_px_3_5_1131 : STD_LOGIC; 
  signal vga_pantalla_px_3_58_1132 : STD_LOGIC; 
  signal wr : STD_LOGIC; 
  signal NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_pantalla_RAMB16_S9_S9_inst_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_pantalla_RAMB16_S9_S9_inst_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_vga_pantalla_RAMB16_S9_S9_inst_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal vga_ctrl_Mcount_hcount_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_ctrl_Mcount_hcount_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_ctrl_Mcount_vcount_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_ctrl_Mcount_vcount_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal vga_ctrl_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_ctrl_hcount : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_ctrl_vcount : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_pantalla_dir_c : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal vga_pantalla_dir_rom : STD_LOGIC_VECTOR ( 10 downto 4 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  vga_ctrl_Mcount_vcount_xor_9_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(8),
      LI => vga_ctrl_Mcount_vcount_xor_9_rt_157,
      O => vga_ctrl_Result(9)
    );
  vga_ctrl_Mcount_vcount_xor_8_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(7),
      LI => vga_ctrl_Mcount_vcount_cy_8_rt_145,
      O => vga_ctrl_Result(8)
    );
  vga_ctrl_Mcount_vcount_cy_8_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(7),
      DI => N0,
      S => vga_ctrl_Mcount_vcount_cy_8_rt_145,
      O => vga_ctrl_Mcount_vcount_cy(8)
    );
  vga_ctrl_Mcount_vcount_xor_7_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(6),
      LI => vga_ctrl_Mcount_vcount_cy_7_rt_143,
      O => vga_ctrl_Result(7)
    );
  vga_ctrl_Mcount_vcount_cy_7_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(6),
      DI => N0,
      S => vga_ctrl_Mcount_vcount_cy_7_rt_143,
      O => vga_ctrl_Mcount_vcount_cy(7)
    );
  vga_ctrl_Mcount_vcount_xor_6_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(5),
      LI => vga_ctrl_Mcount_vcount_cy_6_rt_141,
      O => vga_ctrl_Result(6)
    );
  vga_ctrl_Mcount_vcount_cy_6_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(5),
      DI => N0,
      S => vga_ctrl_Mcount_vcount_cy_6_rt_141,
      O => vga_ctrl_Mcount_vcount_cy(6)
    );
  vga_ctrl_Mcount_vcount_xor_5_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(4),
      LI => vga_ctrl_Mcount_vcount_cy_5_rt_139,
      O => vga_ctrl_Result(5)
    );
  vga_ctrl_Mcount_vcount_cy_5_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(4),
      DI => N0,
      S => vga_ctrl_Mcount_vcount_cy_5_rt_139,
      O => vga_ctrl_Mcount_vcount_cy(5)
    );
  vga_ctrl_Mcount_vcount_xor_4_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(3),
      LI => vga_ctrl_Mcount_vcount_cy_4_rt_137,
      O => vga_ctrl_Result(4)
    );
  vga_ctrl_Mcount_vcount_cy_4_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(3),
      DI => N0,
      S => vga_ctrl_Mcount_vcount_cy_4_rt_137,
      O => vga_ctrl_Mcount_vcount_cy(4)
    );
  vga_ctrl_Mcount_vcount_xor_3_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(2),
      LI => vga_ctrl_Mcount_vcount_cy_3_rt_135,
      O => vga_ctrl_Result(3)
    );
  vga_ctrl_Mcount_vcount_cy_3_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(2),
      DI => N0,
      S => vga_ctrl_Mcount_vcount_cy_3_rt_135,
      O => vga_ctrl_Mcount_vcount_cy(3)
    );
  vga_ctrl_Mcount_vcount_xor_2_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(1),
      LI => vga_ctrl_Mcount_vcount_cy_2_rt_133,
      O => vga_ctrl_Result(2)
    );
  vga_ctrl_Mcount_vcount_cy_2_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(1),
      DI => N0,
      S => vga_ctrl_Mcount_vcount_cy_2_rt_133,
      O => vga_ctrl_Mcount_vcount_cy(2)
    );
  vga_ctrl_Mcount_vcount_xor_1_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(0),
      LI => vga_ctrl_Mcount_vcount_cy_1_rt_131,
      O => vga_ctrl_Result(1)
    );
  vga_ctrl_Mcount_vcount_cy_1_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_vcount_cy(0),
      DI => N0,
      S => vga_ctrl_Mcount_vcount_cy_1_rt_131,
      O => vga_ctrl_Mcount_vcount_cy(1)
    );
  vga_ctrl_Mcount_vcount_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => vga_ctrl_Mcount_vcount_lut(0),
      O => vga_ctrl_Result(0)
    );
  vga_ctrl_Mcount_vcount_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => vga_ctrl_Mcount_vcount_lut(0),
      O => vga_ctrl_Mcount_vcount_cy(0)
    );
  vga_ctrl_vcount_9 : FDCE
    port map (
      C => vga_ctrl_clk25_171,
      CE => vga_ctrl_vcount_not0001,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_vcount_eqn_9,
      Q => vga_ctrl_vcount(9)
    );
  vga_ctrl_vcount_8 : FDCE
    port map (
      C => vga_ctrl_clk25_171,
      CE => vga_ctrl_vcount_not0001,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_vcount_eqn_8,
      Q => vga_ctrl_vcount(8)
    );
  vga_ctrl_vcount_7 : FDCE
    port map (
      C => vga_ctrl_clk25_171,
      CE => vga_ctrl_vcount_not0001,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_vcount_eqn_7,
      Q => vga_ctrl_vcount(7)
    );
  vga_ctrl_vcount_6 : FDCE
    port map (
      C => vga_ctrl_clk25_171,
      CE => vga_ctrl_vcount_not0001,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_vcount_eqn_6,
      Q => vga_ctrl_vcount(6)
    );
  vga_ctrl_vcount_5 : FDCE
    port map (
      C => vga_ctrl_clk25_171,
      CE => vga_ctrl_vcount_not0001,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_vcount_eqn_5,
      Q => vga_ctrl_vcount(5)
    );
  vga_ctrl_vcount_4 : FDCE
    port map (
      C => vga_ctrl_clk25_171,
      CE => vga_ctrl_vcount_not0001,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_vcount_eqn_4,
      Q => vga_ctrl_vcount(4)
    );
  vga_ctrl_vcount_3 : FDCE
    port map (
      C => vga_ctrl_clk25_171,
      CE => vga_ctrl_vcount_not0001,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_vcount_eqn_3,
      Q => vga_ctrl_vcount(3)
    );
  vga_ctrl_vcount_2 : FDCE
    port map (
      C => vga_ctrl_clk25_171,
      CE => vga_ctrl_vcount_not0001,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_vcount_eqn_2,
      Q => vga_ctrl_vcount(2)
    );
  vga_ctrl_vcount_1 : FDCE
    port map (
      C => vga_ctrl_clk25_171,
      CE => vga_ctrl_vcount_not0001,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_vcount_eqn_1,
      Q => vga_ctrl_vcount(1)
    );
  vga_ctrl_vcount_0 : FDCE
    port map (
      C => vga_ctrl_clk25_171,
      CE => vga_ctrl_vcount_not0001,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_vcount_eqn_0,
      Q => vga_ctrl_vcount(0)
    );
  vga_ctrl_hcount_9 : FDC
    port map (
      C => vga_ctrl_clk25_171,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_hcount9,
      Q => vga_ctrl_hcount(9)
    );
  vga_ctrl_hcount_8 : FDC
    port map (
      C => vga_ctrl_clk25_171,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_hcount8,
      Q => vga_ctrl_hcount(8)
    );
  vga_ctrl_hcount_7 : FDC
    port map (
      C => vga_ctrl_clk25_171,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_hcount7,
      Q => vga_ctrl_hcount(7)
    );
  vga_ctrl_hcount_6 : FDC
    port map (
      C => vga_ctrl_clk25_171,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_hcount6,
      Q => vga_ctrl_hcount(6)
    );
  vga_ctrl_hcount_5 : FDC
    port map (
      C => vga_ctrl_clk25_171,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_hcount5,
      Q => vga_ctrl_hcount(5)
    );
  vga_ctrl_hcount_4 : FDC
    port map (
      C => vga_ctrl_clk25_171,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_hcount4,
      Q => vga_ctrl_hcount(4)
    );
  vga_ctrl_hcount_3 : FDC
    port map (
      C => vga_ctrl_clk25_171,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_hcount3,
      Q => vga_ctrl_hcount(3)
    );
  vga_ctrl_hcount_2 : FDC
    port map (
      C => vga_ctrl_clk25_171,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_hcount2,
      Q => vga_ctrl_hcount(2)
    );
  vga_ctrl_hcount_1 : FDC
    port map (
      C => vga_ctrl_clk25_171,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_hcount1,
      Q => vga_ctrl_hcount(1)
    );
  vga_ctrl_hcount_0 : FDC
    port map (
      C => vga_ctrl_clk25_171,
      CLR => reset_IBUF_99,
      D => vga_ctrl_Mcount_hcount,
      Q => vga_ctrl_hcount(0)
    );
  vga_ctrl_Mcount_hcount_xor_9_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(8),
      LI => vga_ctrl_Mcount_hcount_lut(9),
      O => vga_ctrl_Mcount_hcount9
    );
  vga_ctrl_Mcount_hcount_xor_8_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(7),
      LI => vga_ctrl_Mcount_hcount_lut(8),
      O => vga_ctrl_Mcount_hcount8
    );
  vga_ctrl_Mcount_hcount_cy_8_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(7),
      DI => N0,
      S => vga_ctrl_Mcount_hcount_lut(8),
      O => vga_ctrl_Mcount_hcount_cy(8)
    );
  vga_ctrl_Mcount_hcount_xor_7_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(6),
      LI => vga_ctrl_Mcount_hcount_lut(7),
      O => vga_ctrl_Mcount_hcount7
    );
  vga_ctrl_Mcount_hcount_cy_7_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(6),
      DI => N0,
      S => vga_ctrl_Mcount_hcount_lut(7),
      O => vga_ctrl_Mcount_hcount_cy(7)
    );
  vga_ctrl_Mcount_hcount_xor_6_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(5),
      LI => vga_ctrl_Mcount_hcount_lut(6),
      O => vga_ctrl_Mcount_hcount6
    );
  vga_ctrl_Mcount_hcount_cy_6_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(5),
      DI => N0,
      S => vga_ctrl_Mcount_hcount_lut(6),
      O => vga_ctrl_Mcount_hcount_cy(6)
    );
  vga_ctrl_Mcount_hcount_xor_5_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(4),
      LI => vga_ctrl_Mcount_hcount_lut(5),
      O => vga_ctrl_Mcount_hcount5
    );
  vga_ctrl_Mcount_hcount_cy_5_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(4),
      DI => N0,
      S => vga_ctrl_Mcount_hcount_lut(5),
      O => vga_ctrl_Mcount_hcount_cy(5)
    );
  vga_ctrl_Mcount_hcount_xor_4_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(3),
      LI => vga_ctrl_Mcount_hcount_lut(4),
      O => vga_ctrl_Mcount_hcount4
    );
  vga_ctrl_Mcount_hcount_cy_4_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(3),
      DI => N0,
      S => vga_ctrl_Mcount_hcount_lut(4),
      O => vga_ctrl_Mcount_hcount_cy(4)
    );
  vga_ctrl_Mcount_hcount_xor_3_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(2),
      LI => vga_ctrl_Mcount_hcount_lut(3),
      O => vga_ctrl_Mcount_hcount3
    );
  vga_ctrl_Mcount_hcount_cy_3_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(2),
      DI => N0,
      S => vga_ctrl_Mcount_hcount_lut(3),
      O => vga_ctrl_Mcount_hcount_cy(3)
    );
  vga_ctrl_Mcount_hcount_xor_2_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(1),
      LI => vga_ctrl_Mcount_hcount_lut(2),
      O => vga_ctrl_Mcount_hcount2
    );
  vga_ctrl_Mcount_hcount_cy_2_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(1),
      DI => N0,
      S => vga_ctrl_Mcount_hcount_lut(2),
      O => vga_ctrl_Mcount_hcount_cy(2)
    );
  vga_ctrl_Mcount_hcount_xor_1_Q : XORCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(0),
      LI => vga_ctrl_Mcount_hcount_lut(1),
      O => vga_ctrl_Mcount_hcount1
    );
  vga_ctrl_Mcount_hcount_cy_1_Q : MUXCY
    port map (
      CI => vga_ctrl_Mcount_hcount_cy(0),
      DI => N0,
      S => vga_ctrl_Mcount_hcount_lut(1),
      O => vga_ctrl_Mcount_hcount_cy(1)
    );
  vga_ctrl_Mcount_hcount_xor_0_Q : XORCY
    port map (
      CI => vga_ctrl_hcount_not0001_inv,
      LI => vga_ctrl_Mcount_hcount_lut(0),
      O => vga_ctrl_Mcount_hcount
    );
  vga_ctrl_Mcount_hcount_cy_0_Q : MUXCY
    port map (
      CI => vga_ctrl_hcount_not0001_inv,
      DI => N0,
      S => vga_ctrl_Mcount_hcount_lut(0),
      O => vga_ctrl_Mcount_hcount_cy(0)
    );
  vga_ctrl_hs_out : FDC
    port map (
      C => vga_ctrl_clk25_171,
      CLR => reset_IBUF_99,
      D => vga_ctrl_hs_out_mux0001_186,
      Q => vga_ctrl_hs_out_185
    );
  vga_ctrl_vs_out : FDC
    port map (
      C => vga_ctrl_clk25_171,
      CLR => reset_IBUF_99,
      D => vga_ctrl_vs_out_mux0001,
      Q => vga_ctrl_vs_out_200
    );
  vga_ctrl_clk25 : FDC
    port map (
      C => clk_BUFGP_78,
      CLR => reset_IBUF_99,
      D => vga_ctrl_clk25_mux0001,
      Q => vga_ctrl_clk251
    );
  vga_pantalla_Mmux_color_18_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_20_326,
      I1 => vga_pantalla_Mmux_color_19_288,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_18_f5_270
    );
  vga_pantalla_Mmux_color_19_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_21_384,
      I1 => vga_pantalla_Mmux_color_19_f510,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_19_f5_302
    );
  vga_pantalla_Mmux_color_17_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_19_f5_302,
      I1 => vga_pantalla_Mmux_color_18_f5_270,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_17_f6_253
    );
  vga_pantalla_Mmux_color_19_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_211_385,
      I1 => vga_pantalla_Mmux_color_202_334,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_19_f51_303
    );
  vga_pantalla_Mmux_color_22 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000108,
      I1 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_22_449
    );
  vga_pantalla_Mmux_color_20_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_20_f518,
      I1 => vga_pantalla_Mmux_color_20_f519,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_20_f5_342
    );
  vga_pantalla_Mmux_color_18_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_20_f5_342,
      I1 => vga_pantalla_Mmux_color_19_f51_303,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_18_f6_278
    );
  vga_pantalla_Mmux_color_16_f7 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_18_f6_278,
      I1 => vga_pantalla_Mmux_color_17_f6_253,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_16_f7_238
    );
  vga_pantalla_Mmux_color_21_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_23_537,
      I1 => vga_pantalla_Mmux_color_221_450,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f5_408
    );
  vga_pantalla_Mmux_color_231 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000320_992,
      I2 => vga_pantalla_Mrom_data_out_rom0000186,
      O => vga_pantalla_Mmux_color_231_538
    );
  vga_pantalla_Mmux_color_22_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_24_620,
      I1 => vga_pantalla_Mmux_color_231_538,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f5_487
    );
  vga_pantalla_Mmux_color_20_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_22_f5_487,
      I1 => vga_pantalla_Mmux_color_21_f5_408,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f6_368
    );
  vga_pantalla_Mmux_color_25_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_27_803,
      I1 => vga_pantalla_Mmux_color_26_751,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f5_726
    );
  vga_pantalla_Mmux_color_13 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(8),
      I1 => vga_pantalla_Mmux_color_16_f7_238,
      I2 => vga_pantalla_dir_rom_7_1_1100,
      O => vga_pantalla_Mmux_color_13_217
    );
  vga_pantalla_Mmux_color_22_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_241_621,
      I1 => vga_pantalla_Mmux_color_232_549,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f51
    );
  vga_pantalla_Mmux_color_23_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_251_690,
      I1 => vga_pantalla_Mmux_color_242_632,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f5_584
    );
  vga_pantalla_Mmux_color_21_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_23_f5_584,
      I1 => vga_pantalla_Mmux_color_22_f51,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_21_f6_437
    );
  vga_pantalla_Mmux_color_191 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_dir_rom_5_3,
      I2 => vga_pantalla_Mmux_color_23_f51,
      O => vga_pantalla_Mmux_color_191_289
    );
  vga_pantalla_Mmux_color_23_f5_1 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_253_707,
      I1 => vga_pantalla_Mmux_color_244_652,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f52
    );
  vga_pantalla_Mmux_color_203 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_Mmux_color_23_f52,
      I2 => vga_pantalla_dir_rom_5_13,
      O => vga_pantalla_Mmux_color_203_335
    );
  vga_pantalla_Mmux_color_18_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_203_335,
      I1 => vga_pantalla_Mmux_color_191_289,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_18_f51
    );
  vga_pantalla_Mmux_color_14 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(8),
      I1 => vga_pantalla_dir_rom_7_2,
      I2 => vga_pantalla_Mmux_color_18_f51,
      O => vga_pantalla_Mmux_color_14_221
    );
  vga_pantalla_Mmux_color_12_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_14_221,
      I1 => vga_pantalla_Mmux_color_13_217,
      S => vga_pantalla_dir_rom(9),
      O => vga_pantalla_Mmux_color_12_f5_214
    );
  vga_pantalla_Mmux_color_233 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_dir_rom_4_mmx_out6,
      O => vga_pantalla_Mmux_color_233_560
    );
  vga_pantalla_Mmux_color_245 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_dir_rom_4_1_1051,
      I2 => vga_pantalla_dir_rom_4_mmx_out6,
      O => vga_pantalla_Mmux_color_245_657
    );
  vga_pantalla_Mmux_color_22_f5_1 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_245_657,
      I1 => vga_pantalla_Mmux_color_233_560,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_22_f52
    );
  vga_pantalla_Mmux_color_262 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000108,
      O => vga_pantalla_Mmux_color_262_762
    );
  vga_pantalla_Mmux_color_24_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_262_762,
      I1 => vga_pantalla_Mmux_color_254_716,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f51
    );
  vga_pantalla_Mmux_color_25_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_271_804,
      I1 => vga_pantalla_Mmux_color_263_770,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f51
    );
  vga_pantalla_Mmux_color_23_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_25_f51,
      I1 => vga_pantalla_Mmux_color_24_f51,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_23_f6_609
    );
  vga_pantalla_Mmux_color_22_f5_2 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_22_f5_2_518,
      I1 => vga_pantalla_Mmux_color_22_f5_21_519,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f53
    );
  vga_pantalla_Mmux_color_247 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000320_992,
      I2 => vga_pantalla_Mrom_data_out_rom000010,
      O => vga_pantalla_Mmux_color_247_659
    );
  vga_pantalla_Mmux_color_23_f5_2 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_23_f5_2_606,
      I1 => vga_pantalla_Mmux_color_247_659,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f53
    );
  vga_pantalla_Mmux_color_21_f6_0 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_23_f53,
      I1 => vga_pantalla_Mmux_color_22_f53,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_21_f61
    );
  vga_pantalla_Mmux_color_23_f5_3 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_256_723,
      I1 => vga_pantalla_Mmux_color_23_f5_3_607,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f54
    );
  vga_pantalla_Mmux_color_24_f5_1 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_24_f5_1_683,
      I1 => vga_pantalla_Mmux_color_257_724,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f52
    );
  vga_pantalla_Mmux_color_22_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_24_f52,
      I1 => vga_pantalla_Mmux_color_23_f54,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_22_f6_526
    );
  vga_pantalla_Mmux_color_20_f7 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_22_f6_526,
      I1 => vga_pantalla_Mmux_color_21_f61,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_20_f7_380
    );
  vga_pantalla_Mmux_color_20_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_20_f5_0_362,
      I1 => vga_pantalla_Mmux_color_213_402,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_20_f51_343
    );
  vga_pantalla_Mmux_color_21_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_235_577,
      I1 => vga_pantalla_Mmux_color_223_471,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f51
    );
  vga_pantalla_Mmux_color_19_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_21_f51,
      I1 => vga_pantalla_Mmux_color_20_f51_343,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_19_f6_313
    );
  vga_pantalla_Mmux_color_21_f5_1 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_21_f5_1_433,
      I1 => vga_pantalla_Mmux_color_21_f5_11_434,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f52
    );
  vga_pantalla_Mmux_color_22_f5_3 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_249_661,
      I1 => vga_pantalla_Mmux_color_237_581,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f54
    );
  vga_pantalla_Mmux_color_20_f6_0 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_22_f54,
      I1 => vga_pantalla_Mmux_color_21_f52,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f61
    );
  vga_pantalla_Mmux_color_18_f7 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_20_f61,
      I1 => vga_pantalla_Mmux_color_19_f6_313,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_18_f7_284
    );
  vga_pantalla_Mmux_color_21_f5_2 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_238_582,
      I1 => vga_pantalla_Mmux_color_225_483,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f53
    );
  vga_pantalla_Mmux_color_22_f5_4 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_22_f5_4_520,
      I1 => vga_pantalla_Mmux_color_239_583,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f55
    );
  vga_pantalla_Mmux_color_20_f6_1 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_22_f55,
      I1 => vga_pantalla_Mmux_color_21_f53,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f62
    );
  vga_pantalla_Mmux_color_2310 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000282_981,
      O => vga_pantalla_Mmux_color_2310_539
    );
  vga_pantalla_Mmux_color_22_f5_5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2410_622,
      I1 => vga_pantalla_Mmux_color_2310_539,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f56
    );
  vga_pantalla_Mmux_color_23_f5_4 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_258_725,
      I1 => vga_pantalla_dir_rom_4_mmx_out71_inv,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f55
    );
  vga_pantalla_Mmux_color_21_f6_1 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_23_f55,
      I1 => vga_pantalla_Mmux_color_22_f56,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_21_f62
    );
  vga_pantalla_Mmux_color_19_f7 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_21_f62,
      I1 => vga_pantalla_Mmux_color_20_f62,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_19_f7_323
    );
  vga_pantalla_Mmux_color_17_f8 : MUXF8
    port map (
      I0 => vga_pantalla_Mmux_color_19_f7_323,
      I1 => vga_pantalla_Mmux_color_18_f7_284,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_17_f8_259
    );
  vga_pantalla_Mmux_color_17_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_17_f56,
      I1 => vga_pantalla_Mmux_color_17_f57,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_17_f5_245
    );
  vga_pantalla_Mmux_color_18_f5_1 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_204_336,
      I1 => vga_pantalla_Mmux_color_193_295,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_18_f52
    );
  vga_pantalla_Mmux_color_16_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_18_f52,
      I1 => vga_pantalla_Mmux_color_17_f5_245,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_16_f6_235
    );
  vga_pantalla_Mmux_color_194 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000186,
      I2 => vga_pantalla_Mrom_data_out_rom0000282_981,
      O => vga_pantalla_Mmux_color_194_296
    );
  vga_pantalla_Mmux_color_18_f5_2 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_205_337,
      I1 => vga_pantalla_Mmux_color_194_296,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_18_f53
    );
  vga_pantalla_Mmux_color_19_f5_1 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_214_403,
      I1 => vga_pantalla_Mrom_data_out_rom00002801_inv,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_19_f52
    );
  vga_pantalla_Mmux_color_17_f6_0 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_19_f52,
      I1 => vga_pantalla_Mmux_color_18_f53,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_17_f61
    );
  vga_pantalla_Mmux_color_15_f7 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_17_f61,
      I1 => vga_pantalla_Mmux_color_16_f6_235,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_15_f7_228
    );
  vga_pantalla_Mmux_color_206 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_dir_rom_4_mmx_out9,
      I2 => vga_pantalla_Mmux_color_2238_480,
      O => vga_pantalla_Mmux_color_206_338
    );
  vga_pantalla_Mmux_color_215 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_Mrom_data_out_rom0000282_981,
      I2 => vga_pantalla_dir_rom_4_3,
      O => vga_pantalla_Mmux_color_215_404
    );
  vga_pantalla_Mmux_color_19_f5_2 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_215_404,
      I1 => vga_pantalla_Mmux_color_206_338,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_19_f53
    );
  vga_pantalla_Mmux_color_21_f5_3 : MUXF5
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom00002911_inv,
      I1 => vga_pantalla_Mmux_color_226,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f54
    );
  vga_pantalla_Mmux_color_2311 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000290,
      I2 => vga_pantalla_Mrom_data_out_rom0000130,
      O => vga_pantalla_Mmux_color_2311_540
    );
  vga_pantalla_Mmux_color_22_f5_6 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2411_623,
      I1 => vga_pantalla_Mmux_color_2311_540,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f57
    );
  vga_pantalla_Mmux_color_20_f6_2 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_22_f57,
      I1 => vga_pantalla_Mmux_color_21_f54,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f63
    );
  vga_pantalla_Mmux_color_12 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(8),
      I1 => vga_pantalla_Mmux_color_15_f7_228,
      I2 => vga_pantalla_dir_rom_7_4,
      O => vga_pantalla_Mmux_color_12_211
    );
  vga_pantalla_Mmux_color_217 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000186,
      I2 => vga_pantalla_Mrom_data_out_rom0000198,
      O => vga_pantalla_Mmux_color_216
    );
  vga_pantalla_Mmux_color_20_f5_1 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_227,
      I1 => vga_pantalla_Mmux_color_216,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_20_f52_354
    );
  vga_pantalla_Mmux_color_2312 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000193,
      I2 => vga_pantalla_Mrom_data_out_rom0000265,
      O => vga_pantalla_Mmux_color_2312_541
    );
  vga_pantalla_Mmux_color_21_f5_4 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2312_541,
      I1 => vga_pantalla_Mmux_color_21_f5_4_435,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f55
    );
  vga_pantalla_Mmux_color_19_f6_0 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_21_f55,
      I1 => vga_pantalla_Mmux_color_20_f52_354,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_19_f61
    );
  vga_pantalla_Mmux_color_19_f5_3 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_217_406,
      I1 => vga_pantalla_Mmux_color_207_339,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_19_f54
    );
  vga_pantalla_Mmux_color_20_f5_2 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_20_f5_2_364,
      I1 => vga_pantalla_Mmux_color_20_f5_21_365,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_20_f53
    );
  vga_pantalla_Mmux_color_18_f6_0 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_20_f53,
      I1 => vga_pantalla_Mmux_color_19_f54,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_18_f61
    );
  vga_pantalla_Mmux_color_20_f5_3 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_4_mmx_out91_inv,
      I1 => vga_pantalla_Mmux_color_20_f5_3_366,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_20_f54
    );
  vga_pantalla_Mmux_color_21_f5_5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2313_542,
      I1 => vga_pantalla_Mmux_color_2210_451,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f56
    );
  vga_pantalla_Mmux_color_19_f6_1 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_21_f56,
      I1 => vga_pantalla_Mmux_color_20_f54,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_19_f62
    );
  vga_pantalla_Mmux_color_17_f7 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_19_f62,
      I1 => vga_pantalla_Mmux_color_18_f61,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_17_f7_256
    );
  vga_pantalla_Mmux_color_131 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(8),
      I1 => vga_pantalla_dir_rom_7_5,
      I2 => vga_pantalla_Mmux_color_17_f7_256,
      O => vga_pantalla_Mmux_color_131_218
    );
  vga_pantalla_Mmux_color_11_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_131_218,
      I1 => vga_pantalla_Mmux_color_12_211,
      S => vga_pantalla_dir_rom(9),
      O => vga_pantalla_Mmux_color_11_f5_210
    );
  vga_pantalla_Mmux_color_23_f5_6 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2510_691,
      I1 => vga_pantalla_Mmux_color_2413_625,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f57
    );
  vga_pantalla_Mmux_color_21_f5_6 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2314_543,
      I1 => vga_pantalla_Mmux_color_2211_452,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f57
    );
  vga_pantalla_Mmux_color_22_f5_7 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_22_f5_7_521,
      I1 => vga_pantalla_Mmux_color_22_f5_71_522,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f58
    );
  vga_pantalla_Mmux_color_20_f6_3 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_22_f58,
      I1 => vga_pantalla_Mmux_color_21_f57,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f64
    );
  vga_pantalla_Mmux_color_209 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000189,
      I2 => vga_pantalla_Mrom_data_out_rom0000263,
      O => vga_pantalla_Mmux_color_208
    );
  vga_pantalla_Mmux_color_19_f5_4 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_219_407,
      I1 => vga_pantalla_Mmux_color_208,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_19_f55
    );
  vga_pantalla_Mmux_color_20_f5_4 : MUXF5
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom00002571_inv,
      I1 => vga_pantalla_Mmux_color_2110_386,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_20_f55
    );
  vga_pantalla_Mmux_color_18_f6_1 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_20_f55,
      I1 => vga_pantalla_Mmux_color_19_f55,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_18_f62
    );
  vga_pantalla_Mmux_color_2112 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000186,
      I2 => vga_pantalla_Mrom_data_out_rom0000162,
      O => vga_pantalla_Mmux_color_2111_387
    );
  vga_pantalla_Mmux_color_20_f5_5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2212_453,
      I1 => vga_pantalla_Mmux_color_2111_387,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_20_f56
    );
  vga_pantalla_Mmux_color_21_f5_7 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_4_mmx_out81_inv,
      I1 => vga_pantalla_Mmux_color_2213_454,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f58
    );
  vga_pantalla_Mmux_color_19_f6_2 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_21_f58,
      I1 => vga_pantalla_Mmux_color_20_f56,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_19_f63
    );
  vga_pantalla_Mmux_color_17_f7_0 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_19_f63,
      I1 => vga_pantalla_Mmux_color_18_f62,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_17_f71
    );
  vga_pantalla_Mmux_color_132 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(8),
      I1 => vga_pantalla_dir_rom_7_6,
      I2 => vga_pantalla_Mmux_color_17_f71,
      O => vga_pantalla_Mmux_color_132_219
    );
  vga_pantalla_Mmux_color_2316 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000163,
      I2 => vga_pantalla_Mrom_data_out_rom0000164,
      O => vga_pantalla_Mmux_color_2316_545
    );
  vga_pantalla_Mmux_color_22_f5_8 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2415_627,
      I1 => vga_pantalla_Mmux_color_22_f5_8_523,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f59
    );
  vga_pantalla_Mmux_color_23_f5_7 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2511_692,
      I1 => vga_pantalla_Mmux_color_2416_628,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f58
    );
  vga_pantalla_Mmux_color_21_f6_2 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_23_f58,
      I1 => vga_pantalla_Mmux_color_22_f59,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_21_f63
    );
  vga_pantalla_Mmux_color_2115 : LUT4
    generic map(
      INIT => X"0189"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000171_937,
      I3 => vga_pantalla_Mrom_data_out_rom0000103,
      O => vga_pantalla_Mmux_color_2113
    );
  vga_pantalla_Mmux_color_19_f5_5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2113,
      I1 => vga_pantalla_Mmux_color_209_341,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_19_f56
    );
  vga_pantalla_Mmux_color_2116 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_Mrom_data_out_rom0000103,
      I2 => vga_pantalla_Mmux_color_2342_571,
      O => vga_pantalla_Mmux_color_2114
    );
  vga_pantalla_Mmux_color_20_f5_7 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2215_456,
      I1 => vga_pantalla_Mmux_color_2114,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f58
    );
  vga_pantalla_Mmux_color_18_f6_2 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_20_f58,
      I1 => vga_pantalla_Mmux_color_19_f56,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_18_f63
    );
  vga_pantalla_Mmux_color_141 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(8),
      I1 => vga_pantalla_dir_rom_7_7,
      I2 => vga_pantalla_Mmux_color_18_f63,
      O => vga_pantalla_Mmux_color_141_222
    );
  vga_pantalla_Mmux_color_12_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_141_222,
      I1 => vga_pantalla_Mmux_color_132_219,
      S => vga_pantalla_dir_rom(9),
      O => vga_pantalla_Mmux_color_12_f51
    );
  vga_pantalla_Mmux_color_10_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_12_f51,
      I1 => vga_pantalla_Mmux_color_11_f5_210,
      S => vga_pantalla_dir_rom(10),
      O => vga_pantalla_Mmux_color_10_f6_207
    );
  vga_pantalla_Mmux_color_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_ctrl_hcount(1),
      I1 => vga_pantalla_dir_rom_10_1,
      I2 => vga_pantalla_Mmux_color_10_f6_207,
      O => vga_pantalla_Mmux_color_6_882
    );
  vga_pantalla_Mmux_color_2218 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_dir_rom_4_6,
      I2 => vga_pantalla_dir_rom_4_mmx_out10,
      O => vga_pantalla_Mmux_color_2216_457
    );
  vga_pantalla_Mmux_color_20_f5_8 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2216_457,
      I1 => vga_pantalla_Mmux_color_2115_390,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f59
    );
  vga_pantalla_Mmux_color_2317 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000130,
      O => vga_pantalla_Mmux_color_2317_546
    );
  vga_pantalla_Mmux_color_22_f5_9 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_22_f5_9_524,
      I1 => vga_pantalla_Mmux_color_22_f5_91_525,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f510
    );
  vga_pantalla_Mmux_color_23_f5_8 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_23_f5_8_608,
      I1 => vga_pantalla_Mmux_color_2418_630,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f59
    );
  vga_pantalla_Mmux_color_21_f6_3 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_23_f59,
      I1 => vga_pantalla_Mmux_color_22_f510,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_21_f64
    );
  vga_pantalla_Mmux_color_2219 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000108,
      I1 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2217_458
    );
  vga_pantalla_Mmux_color_20_f5_9 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2217_458,
      I1 => vga_pantalla_Mmux_color_20_f5_9_367,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_20_f510
    );
  vga_pantalla_Mmux_color_21_f5_8 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_21_f5_8_436,
      I1 => vga_pantalla_Mmux_color_2218_459,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f59
    );
  vga_pantalla_Mmux_color_19_f6_3 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_21_f59,
      I1 => vga_pantalla_Mmux_color_20_f510,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_19_f64
    );
  vga_pantalla_Mmux_color_21_f5_9 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2319_548,
      I1 => vga_pantalla_Mmux_color_2219_460,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f510
    );
  vga_pantalla_Mmux_color_22_f5_10 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2419_631,
      I1 => vga_pantalla_Mmux_color_2320_550,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f511
    );
  vga_pantalla_Mmux_color_20_f6_4 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_22_f511,
      I1 => vga_pantalla_Mmux_color_21_f510,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f65
    );
  vga_pantalla_Mmux_color_18_f7_0 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_20_f65,
      I1 => vga_pantalla_Mmux_color_19_f64,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_18_f71
    );
  vga_pantalla_Mmux_color_20_f5_10 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2220_462,
      I1 => vga_pantalla_Mmux_color_2117_392,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_20_f511
    );
  vga_pantalla_Mmux_color_21_f5_10 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2321_551,
      I1 => vga_pantalla_Mmux_color_2221_463,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f511
    );
  vga_pantalla_Mmux_color_19_f6_4 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_21_f511,
      I1 => vga_pantalla_Mmux_color_20_f511,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_19_f65
    );
  vga_pantalla_Mmux_color_23_f5_9 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2513_694,
      I1 => vga_pantalla_Mmux_color_2420_633,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f510
    );
  vga_pantalla_Mmux_color_16 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_19_f65,
      I2 => vga_pantalla_dir_rom_6_5_1092,
      O => vga_pantalla_Mmux_color_16_230
    );
  vga_pantalla_Mmux_color_2224 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000042,
      I2 => vga_pantalla_Mrom_data_out_rom0000454,
      O => vga_pantalla_Mmux_color_2222_464
    );
  vga_pantalla_Mmux_color_21_f5_11 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2322_552,
      I1 => vga_pantalla_Mmux_color_2222_464,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f512
    );
  vga_pantalla_Mmux_color_22_f5_11 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2421_634,
      I1 => vga_pantalla_Mmux_color_2323_553,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f512
    );
  vga_pantalla_Mmux_color_20_f6_5 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_22_f512,
      I1 => vga_pantalla_Mmux_color_21_f512,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f66
    );
  vga_pantalla_Mmux_color_17 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_20_f66,
      I2 => vga_pantalla_dir_rom_6_6,
      O => vga_pantalla_Mmux_color_17_240
    );
  vga_pantalla_Mmux_color_15_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_17_240,
      I1 => vga_pantalla_Mmux_color_16_230,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_15_f5_225
    );
  vga_pantalla_Mmux_color_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(9),
      I1 => vga_pantalla_dir_rom_8_2,
      I2 => vga_pantalla_Mmux_color_15_f5_225,
      O => vga_pantalla_Mmux_color_11_208
    );
  vga_pantalla_Mmux_color_2120 : LUT4
    generic map(
      INIT => X"23AB"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_Mrom_data_out_rom00002,
      I3 => vga_pantalla_Mrom_data_out_rom0000106,
      O => vga_pantalla_Mmux_color_2118_393
    );
  vga_pantalla_Mmux_color_19_f5_6 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2118_393,
      I1 => vga_pantalla_Mmux_color_2010,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_19_f57
    );
  vga_pantalla_Mmux_color_2121 : LUT4
    generic map(
      INIT => X"67EF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom00001,
      I3 => vga_pantalla_Mrom_data_out_rom00003,
      O => vga_pantalla_Mmux_color_2119_394
    );
  vga_pantalla_Mmux_color_2225 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_2223_465
    );
  vga_pantalla_Mmux_color_20_f5_11 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2223_465,
      I1 => vga_pantalla_Mmux_color_2119_394,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f512
    );
  vga_pantalla_Mmux_color_18_f6_3 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_20_f512,
      I1 => vga_pantalla_Mmux_color_19_f57,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_18_f64
    );
  vga_pantalla_Mmux_color_2422 : LUT4
    generic map(
      INIT => X"FF47"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000157,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom000033,
      I3 => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_2422_635
    );
  vga_pantalla_Mmux_color_22_f5_12 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2422_635,
      I1 => vga_pantalla_Mmux_color_2324_554,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_22_f513
    );
  vga_pantalla_Mmux_color_27_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_29_859,
      I1 => vga_pantalla_Mmux_color_28_837,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_27_f5_828
    );
  vga_pantalla_Mmux_color_21_f5_12 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2325_555,
      I1 => vga_pantalla_Mmux_color_2224_466,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f513
    );
  vga_pantalla_Mmux_color_2423 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000130,
      I1 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2423_636
    );
  vga_pantalla_Mmux_color_22_f5_13 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2423_636,
      I1 => vga_pantalla_Mmux_color_2326_556,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f514
    );
  vga_pantalla_Mmux_color_20_f6_6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_22_f514,
      I1 => vga_pantalla_Mmux_color_21_f513,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f67
    );
  vga_pantalla_Mmux_color_2227 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000144,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_2225_467
    );
  vga_pantalla_Mmux_color_2327 : LUT4
    generic map(
      INIT => X"FF47"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000108,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000435,
      I3 => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_2327_557
    );
  vga_pantalla_Mmux_color_21_f5_13 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2327_557,
      I1 => vga_pantalla_Mmux_color_2225_467,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_21_f514
    );
  vga_pantalla_Mmux_color_171 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_20_f67,
      I2 => vga_pantalla_Mmux_color_21_f514,
      O => vga_pantalla_Mmux_color_171_241
    );
  vga_pantalla_Mmux_color_25_f5_2 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_273_820,
      I1 => vga_pantalla_Mmux_color_266_785,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f53
    );
  vga_pantalla_Mmux_color_2424 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000116,
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2424_637
    );
  vga_pantalla_Mmux_color_22_f5_14 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2424_637,
      I1 => vga_pantalla_Mmux_color_2328_558,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_22_f515
    );
  vga_pantalla_Mmux_color_182 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_dir_rom_6_8_1096,
      I2 => vga_pantalla_Mmux_color_22_f515,
      O => vga_pantalla_Mmux_color_181
    );
  vga_pantalla_Mmux_color_16_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_181,
      I1 => vga_pantalla_Mmux_color_171_241,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_16_f5_232
    );
  vga_pantalla_Mmux_color_121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(9),
      I1 => vga_pantalla_dir_rom_8_3,
      I2 => vga_pantalla_Mmux_color_16_f5_232,
      O => vga_pantalla_Mmux_color_121_212
    );
  vga_pantalla_Mmux_color_10_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_121_212,
      I1 => vga_pantalla_Mmux_color_11_208,
      S => vga_pantalla_dir_rom(10),
      O => vga_pantalla_Mmux_color_10_f5_205
    );
  vga_pantalla_Mmux_color_20_f5_12 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2226_468,
      I1 => vga_pantalla_Mmux_color_2120_396,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_20_f513
    );
  vga_pantalla_Mmux_color_21_f5_14 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2329_559,
      I1 => vga_pantalla_Mmux_color_2227_469,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f515
    );
  vga_pantalla_Mmux_color_19_f6_5 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_21_f515,
      I1 => vga_pantalla_Mmux_color_20_f513,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_19_f66
    );
  vga_pantalla_Mmux_color_24_f5_2 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_267_786,
      I1 => vga_pantalla_Mmux_color_2514_695,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f53
    );
  vga_pantalla_Mmux_color_161 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_19_f66,
      I2 => vga_pantalla_dir_rom_6_9,
      O => vga_pantalla_Mmux_color_161_231
    );
  vga_pantalla_Mmux_color_24_f5_3 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_268_787,
      I1 => vga_pantalla_Mmux_color_2515_696,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f54
    );
  vga_pantalla_Mmux_color_2330 : LUT4
    generic map(
      INIT => X"57DF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom000031_990,
      I3 => vga_pantalla_Mrom_data_out_rom0000116,
      O => vga_pantalla_Mmux_color_2330_561
    );
  vga_pantalla_Mmux_color_172 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_dir_rom_6_10,
      I2 => vga_pantalla_Mmux_color_21_f516,
      O => vga_pantalla_Mmux_color_172_242
    );
  vga_pantalla_Mmux_color_15_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_172_242,
      I1 => vga_pantalla_Mmux_color_161_231,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_15_f51
    );
  vga_pantalla_Mmux_color_21_f5_16 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2331_562,
      I1 => vga_pantalla_Mmux_color_2229_470,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_21_f517
    );
  vga_pantalla_Mmux_color_173 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_dir_rom_6_11,
      I2 => vga_pantalla_Mmux_color_21_f517,
      O => vga_pantalla_Mmux_color_173_243
    );
  vga_pantalla_Mmux_color_2517 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000028,
      I2 => vga_pantalla_Mrom_data_out_rom0000137,
      O => vga_pantalla_Mmux_color_2517_698
    );
  vga_pantalla_Mmux_color_23_f5_11 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2517_698,
      I1 => vga_pantalla_Mmux_color_2426_639,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f512
    );
  vga_pantalla_Mmux_color_24_f5_4 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2610_753,
      I1 => vga_pantalla_Mmux_color_2518_699,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f55
    );
  vga_pantalla_Mmux_color_22_f6_0 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_24_f55,
      I1 => vga_pantalla_Mmux_color_23_f512,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_22_f61
    );
  vga_pantalla_Mmux_color_183 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_dir_rom_6_12,
      I2 => vga_pantalla_Mmux_color_22_f61,
      O => vga_pantalla_Mmux_color_182_263
    );
  vga_pantalla_Mmux_color_16_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_182_263,
      I1 => vga_pantalla_Mmux_color_173_243,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_16_f51
    );
  vga_pantalla_Mmux_color_14_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_16_f51,
      I1 => vga_pantalla_Mmux_color_15_f51,
      S => vga_pantalla_dir_rom(9),
      O => vga_pantalla_Mmux_color_14_f6_224
    );
  vga_pantalla_Mmux_color_24_f5_5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2611_754,
      I1 => vga_pantalla_Mmux_color_24_f5_5_684,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f56
    );
  vga_pantalla_Mmux_color_25_f5_4 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_25_f5_4_745,
      I1 => vga_pantalla_Mmux_color_2612_755,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f55
    );
  vga_pantalla_Mmux_color_23_f6_0 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_25_f55,
      I1 => vga_pantalla_Mmux_color_24_f56,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_23_f61
    );
  vga_pantalla_Mmux_color_196 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_dir_rom_6_13,
      I2 => vga_pantalla_Mmux_color_23_f61,
      O => vga_pantalla_Mmux_color_195
    );
  vga_pantalla_Mmux_color_2520 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_dir_rom_4_9,
      I2 => vga_pantalla_dir_rom_4_mmx_out2,
      O => vga_pantalla_Mmux_color_2520_700
    );
  vga_pantalla_Mmux_color_23_f5_12 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2520_700,
      I1 => vga_pantalla_Mmux_color_2427_640,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_23_f513
    );
  vga_pantalla_Mmux_color_2013 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_23_f513,
      I2 => vga_pantalla_dir_rom_6_14,
      O => vga_pantalla_Mmux_color_2011_329
    );
  vga_pantalla_Mmux_color_18_f5_3 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2011_329,
      I1 => vga_pantalla_Mmux_color_195,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_18_f54
    );
  vga_pantalla_Mmux_color_277 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000110,
      I2 => vga_pantalla_Mrom_data_out_rom0000399,
      O => vga_pantalla_Mmux_color_277_826
    );
  vga_pantalla_Mmux_color_26_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_282_846,
      I1 => vga_pantalla_Mmux_color_277_826,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_26_f51
    );
  vga_pantalla_Mmux_color_27_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_291_860,
      I1 => vga_pantalla_Mmux_color_283_848,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_27_f51
    );
  vga_pantalla_Mmux_color_25_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_27_f51,
      I1 => vga_pantalla_Mmux_color_26_f51,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_25_f6_747
    );
  vga_pantalla_Mmux_color_26_f5_1 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_284_849,
      I1 => vga_pantalla_Mmux_color_278_827,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_26_f52
    );
  vga_pantalla_Mmux_color_25_f5_5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_222_461,
      I1 => vga_pantalla_Mmux_color_25_f5_5_746,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f56
    );
  vga_pantalla_Mmux_color_26_f5_2 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_285_850,
      I1 => vga_pantalla_Mmux_color_2710_805,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_26_f53
    );
  vga_pantalla_Mmux_color_24_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_26_f53,
      I1 => vga_pantalla_Mmux_color_25_f56,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_24_f6_685
    );
  vga_pantalla_Mmux_color_26_f5_3 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_286_851,
      I1 => vga_pantalla_Mmux_color_26_f5_3_801,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_26_f54
    );
  vga_pantalla_Mmux_color_27_f5_1 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_292_862,
      I1 => vga_pantalla_Mmux_color_287_852,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_27_f52
    );
  vga_pantalla_Mmux_color_25_f6_0 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_27_f52,
      I1 => vga_pantalla_Mmux_color_26_f54,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_25_f61
    );
  vga_pantalla_Mmux_color_23_f7 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_25_f61,
      I1 => vga_pantalla_Mmux_color_24_f6_685,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_23_f7_619
    );
  vga_pantalla_Mmux_color_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_ctrl_hcount(1),
      I1 => vga_pantalla_Mmux_color_10_f5_205,
      I2 => vga_pantalla_dir_rom_10_2,
      O => vga_pantalla_Mmux_color_7_883
    );
  vga_pantalla_Mmux_color_5_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_7_883,
      I1 => vga_pantalla_Mmux_color_6_882,
      S => vga_ctrl_hcount(2),
      O => vga_pantalla_Mmux_color_5_f5_881
    );
  vga_pantalla_Mmux_color_19_f5_7 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2121_397,
      I1 => vga_pantalla_Mmux_color_2012_330,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_19_f58
    );
  vga_pantalla_Mmux_color_20_f5_13 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2230,
      I1 => vga_pantalla_Mmux_color_2122_398,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_20_f514
    );
  vga_pantalla_Mmux_color_18_f6_4 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_20_f514,
      I1 => vga_pantalla_Mmux_color_19_f58,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_18_f65
    );
  vga_pantalla_Mmux_color_20_f5_14 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_20_f5_14_363,
      I1 => vga_pantalla_Mmux_color_2123_399,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_20_f515
    );
  vga_pantalla_Mmux_color_21_f5_17 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2332_563,
      I1 => vga_pantalla_Mmux_color_2232,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f518
    );
  vga_pantalla_Mmux_color_19_f6_6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_21_f518,
      I1 => vga_pantalla_Mmux_color_20_f515,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_19_f67
    );
  vga_pantalla_Mmux_color_17_f7_1 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_19_f67,
      I1 => vga_pantalla_Mmux_color_18_f65,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_17_f72
    );
  vga_pantalla_Mmux_color_20_f5_15 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2233_475,
      I1 => vga_pantalla_Mmux_color_2124_400,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_20_f516
    );
  vga_pantalla_Mmux_color_21_f5_18 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2333,
      I1 => vga_pantalla_Mmux_color_2234_476,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f519
    );
  vga_pantalla_Mmux_color_19_f6_7 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_21_f519,
      I1 => vga_pantalla_Mmux_color_20_f516,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_19_f68
    );
  vga_pantalla_Mmux_color_21_f5_19 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2334_565,
      I1 => vga_pantalla_Mmux_color_2235_477,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f520
    );
  vga_pantalla_Mmux_color_2428 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000193,
      I2 => vga_pantalla_Mrom_data_out_rom0000194,
      O => vga_pantalla_Mmux_color_2428_641
    );
  vga_pantalla_Mmux_color_22_f5_15 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2428_641,
      I1 => vga_pantalla_Mmux_color_228_486,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f516
    );
  vga_pantalla_Mmux_color_20_f6_7 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_22_f516,
      I1 => vga_pantalla_Mmux_color_21_f520,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f68
    );
  vga_pantalla_Mmux_color_18_f7_1 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_20_f68,
      I1 => vga_pantalla_Mmux_color_19_f68,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_18_f72
    );
  vga_pantalla_Mmux_color_16_f8 : MUXF8
    port map (
      I0 => vga_pantalla_Mmux_color_18_f72,
      I1 => vga_pantalla_Mmux_color_17_f72,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_16_f8_239
    );
  vga_pantalla_Mmux_color_2127 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom00002,
      I2 => vga_pantalla_Mrom_data_out_rom0000225,
      O => vga_pantalla_Mmux_color_2125
    );
  vga_pantalla_Mmux_color_2238 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000223,
      I2 => vga_pantalla_Mrom_data_out_rom0000130,
      O => vga_pantalla_Mmux_color_2236_478
    );
  vga_pantalla_Mmux_color_20_f5_16 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2236_478,
      I1 => vga_pantalla_Mmux_color_2125,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_20_f517
    );
  vga_pantalla_Mmux_color_21_f5_20 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2336_566,
      I1 => vga_pantalla_Mmux_color_2237_479,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f521
    );
  vga_pantalla_Mmux_color_19_f6_8 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_21_f521,
      I1 => vga_pantalla_Mmux_color_20_f517,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_19_f69
    );
  vga_pantalla_Mmux_color_21_f5_21 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2337_567,
      I1 => vga_pantalla_Mmux_color_2238_480,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f522
    );
  vga_pantalla_Mmux_color_22_f5_16 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2429_642,
      I1 => vga_pantalla_Mmux_color_2338_568,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f517
    );
  vga_pantalla_Mmux_color_20_f6_8 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_22_f517,
      I1 => vga_pantalla_Mmux_color_21_f522,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f69
    );
  vga_pantalla_Mmux_color_18_f7_2 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_20_f69,
      I1 => vga_pantalla_Mmux_color_19_f69,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_18_f73
    );
  vga_pantalla_Mmux_color_21_f5_22 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_192_294,
      I1 => vga_pantalla_Mmux_color_18_261,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f523
    );
  vga_pantalla_Mmux_color_22_f5_17 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2430_644,
      I1 => vga_pantalla_Mmux_color_2340_569,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f518
    );
  vga_pantalla_Mmux_color_20_f6_9 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_22_f518,
      I1 => vga_pantalla_Mmux_color_21_f523,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f610
    );
  vga_pantalla_Mmux_color_22_f5_18 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2431_645,
      I1 => vga_pantalla_Mmux_color_2341_570,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f519
    );
  vga_pantalla_Mmux_color_23_f5_13 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2521_701,
      I1 => vga_pantalla_Mmux_color_2432_646,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f514
    );
  vga_pantalla_Mmux_color_21_f6_4 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_23_f514,
      I1 => vga_pantalla_Mmux_color_22_f519,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_21_f65
    );
  vga_pantalla_Mmux_color_19_f7_0 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_21_f65,
      I1 => vga_pantalla_Mmux_color_20_f610,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_19_f71
    );
  vga_pantalla_Mmux_color_17_f8_0 : MUXF8
    port map (
      I0 => vga_pantalla_Mmux_color_19_f71,
      I1 => vga_pantalla_Mmux_color_18_f73,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_17_f81
    );
  vga_pantalla_Mmux_color_133 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(9),
      I1 => vga_pantalla_Mmux_color_16_f8_239,
      I2 => vga_pantalla_Mmux_color_17_f81,
      O => vga_pantalla_Mmux_color_133_220
    );
  vga_pantalla_Mmux_color_22_f5_19 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_22_f5_19_516,
      I1 => vga_pantalla_Mmux_color_22_f5_191_517,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f520
    );
  vga_pantalla_Mmux_color_23_f5_14 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2522_702,
      I1 => vga_pantalla_Mmux_color_2433_647,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f515
    );
  vga_pantalla_Mmux_color_21_f6_5 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_23_f515,
      I1 => vga_pantalla_Mmux_color_22_f520,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_21_f66
    );
  vga_pantalla_Mmux_color_288 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000104,
      I2 => vga_pantalla_Mrom_data_out_rom0000116,
      O => vga_pantalla_Mmux_color_288_853
    );
  vga_pantalla_Mmux_color_26_f5_4 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_288_853,
      I1 => vga_pantalla_Mmux_color_243_643,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_26_f55
    );
  vga_pantalla_Mmux_color_184 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_21_f66,
      I2 => vga_pantalla_dir_rom_6_15,
      O => vga_pantalla_Mmux_color_183_264
    );
  vga_pantalla_Mmux_color_2614 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000162,
      I2 => vga_pantalla_Mrom_data_out_rom0000163,
      O => vga_pantalla_Mmux_color_2614_757
    );
  vga_pantalla_Mmux_color_24_f5_6 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2614_757,
      I1 => vga_pantalla_Mmux_color_2316_545,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f57
    );
  vga_pantalla_Mmux_color_25_f5_6 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2713_806,
      I1 => vga_pantalla_Mmux_color_2615_758,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f57
    );
  vga_pantalla_Mmux_color_23_f6_1 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_25_f57,
      I1 => vga_pantalla_Mmux_color_24_f57,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_23_f62
    );
  vga_pantalla_Mmux_color_197 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_22_f521,
      I2 => vga_pantalla_Mmux_color_23_f62,
      O => vga_pantalla_Mmux_color_196_298
    );
  vga_pantalla_Mmux_color_17_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_196_298,
      I1 => vga_pantalla_Mmux_color_183_264,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_17_f51_246
    );
  vga_pantalla_Mmux_color_293 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000178,
      I1 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_293_863
    );
  vga_pantalla_Mmux_color_28_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_30_869,
      I1 => vga_pantalla_Mmux_color_293_863,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_28_f5_855
    );
  vga_pantalla_Mmux_color_289 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000137,
      I2 => vga_pantalla_Mrom_data_out_rom0000116,
      O => vga_pantalla_Mmux_color_289_854
    );
  vga_pantalla_Mmux_color_26_f5_5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_289_854,
      I1 => vga_pantalla_Mmux_color_2714_807,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_26_f56
    );
  vga_pantalla_Mmux_color_27_f5_2 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_294_864,
      I1 => vga_pantalla_Mmux_color_2315,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_27_f53
    );
  vga_pantalla_Mmux_color_25_f6_1 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_27_f53,
      I1 => vga_pantalla_Mmux_color_26_f56,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_25_f62
    );
  vga_pantalla_Mmux_color_2524 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000191_947,
      I2 => vga_pantalla_Mrom_data_out_rom0000192,
      O => vga_pantalla_Mmux_color_2524_703
    );
  vga_pantalla_Mmux_color_24_f5_7 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2616_759,
      I1 => vga_pantalla_Mmux_color_2524_703,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f58
    );
  vga_pantalla_Mmux_color_25_f5_7 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2715_808,
      I1 => vga_pantalla_Mrom_data_out_rom00001891_inv,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f58
    );
  vga_pantalla_Mmux_color_23_f6_2 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_25_f58,
      I1 => vga_pantalla_Mmux_color_24_f58,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_23_f63
    );
  vga_pantalla_Mmux_color_2617 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000186,
      I2 => vga_pantalla_Mrom_data_out_rom0000187,
      O => vga_pantalla_Mmux_color_2617_760
    );
  vga_pantalla_Mmux_color_2716 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000186,
      O => vga_pantalla_Mmux_color_2716_809
    );
  vga_pantalla_Mmux_color_25_f5_8 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2716_809,
      I1 => vga_pantalla_Mmux_color_2617_760,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f59
    );
  vga_pantalla_Mmux_color_26_f5_6 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2811_839,
      I1 => vga_pantalla_Mmux_color_2717_810,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_26_f57
    );
  vga_pantalla_Mmux_color_24_f6_0 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_26_f57,
      I1 => vga_pantalla_Mmux_color_25_f59,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_24_f61
    );
  vga_pantalla_Mmux_color_22_f7 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_24_f61,
      I1 => vga_pantalla_Mmux_color_23_f63,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_22_f7_534
    );
  vga_pantalla_Mmux_color_142 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(9),
      I1 => vga_pantalla_Mmux_color_17_f51_246,
      I2 => vga_pantalla_dir_rom_8_5,
      O => vga_pantalla_Mmux_color_142_223
    );
  vga_pantalla_Mmux_color_12_f5_1 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_142_223,
      I1 => vga_pantalla_Mmux_color_133_220,
      S => vga_pantalla_dir_rom(10),
      O => vga_pantalla_Mmux_color_12_f52
    );
  vga_pantalla_Mmux_color_22_f5_21 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2435,
      I1 => vga_pantalla_Mmux_color_2344_572,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f522
    );
  vga_pantalla_Mmux_color_23_f5_15 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2231_473,
      I1 => vga_pantalla_Mmux_color_2436_649,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f516
    );
  vga_pantalla_Mmux_color_21_f6_6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_23_f516,
      I1 => vga_pantalla_Mmux_color_22_f522,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_21_f67
    );
  vga_pantalla_Mmux_color_26_f5_7 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2812_840,
      I1 => vga_pantalla_Mmux_color_2718_811,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_26_f58
    );
  vga_pantalla_Mmux_color_185 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_21_f67,
      I2 => vga_pantalla_dir_rom_6_17,
      O => vga_pantalla_Mmux_color_184_265
    );
  vga_pantalla_Mmux_color_2438 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000113,
      I1 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2437_650
    );
  vga_pantalla_Mmux_color_23_f5_16 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2526_704,
      I1 => vga_pantalla_Mmux_color_2437_650,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f517
    );
  vga_pantalla_Mmux_color_24_f5_8 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_22_449,
      I1 => vga_pantalla_Mmux_color_212_395,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f59
    );
  vga_pantalla_Mmux_color_22_f6_1 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_24_f59,
      I1 => vga_pantalla_Mmux_color_23_f517,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_22_f62
    );
  vga_pantalla_Mmux_color_26_f5_8 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2813_841,
      I1 => vga_pantalla_Mmux_color_201_327,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_26_f59
    );
  vga_pantalla_Mmux_color_198 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_22_f62,
      I2 => vga_pantalla_dir_rom_6_18,
      O => vga_pantalla_Mmux_color_197_299
    );
  vga_pantalla_Mmux_color_17_f5_1 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_197_299,
      I1 => vga_pantalla_Mmux_color_184_265,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_17_f52_247
    );
  vga_pantalla_Mmux_color_23_f5_17 : MUXF5
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom00001031_inv,
      I1 => vga_pantalla_Mmux_color_2342_571,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f518
    );
  vga_pantalla_Mmux_color_24_f5_9 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2619_761,
      I1 => vga_pantalla_Mmux_color_2528_705,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f510
    );
  vga_pantalla_Mmux_color_22_f6_2 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_24_f510,
      I1 => vga_pantalla_Mmux_color_23_f518,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_22_f63
    );
  vga_pantalla_Mmux_color_27_f5_3 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_295_865,
      I1 => vga_pantalla_Mmux_color_2814_842,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_27_f54
    );
  vga_pantalla_Mmux_color_199 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_22_f63,
      I2 => vga_pantalla_dir_rom_6_19,
      O => vga_pantalla_Mmux_color_198_300
    );
  vga_pantalla_Mmux_color_25_f5_9 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2720_812,
      I1 => vga_pantalla_Mmux_color_2620_763,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f510
    );
  vga_pantalla_Mmux_color_2721 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000300,
      I2 => vga_pantalla_Mrom_data_out_rom000094,
      O => vga_pantalla_Mmux_color_2721_813
    );
  vga_pantalla_Mmux_color_26_f5_9 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2816_843,
      I1 => vga_pantalla_Mmux_color_2721_813,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_26_f510
    );
  vga_pantalla_Mmux_color_24_f6_1 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_26_f510,
      I1 => vga_pantalla_Mmux_color_25_f510,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_24_f62
    );
  vga_pantalla_Mmux_color_2015 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_dir_rom_6_20,
      I2 => vga_pantalla_Mmux_color_24_f62,
      O => vga_pantalla_Mmux_color_2013_331
    );
  vga_pantalla_Mmux_color_18_f5_4 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2013_331,
      I1 => vga_pantalla_Mmux_color_198_300,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_18_f55
    );
  vga_pantalla_Mmux_color_16_f6_0 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_18_f55,
      I1 => vga_pantalla_Mmux_color_17_f52_247,
      S => vga_pantalla_dir_rom(9),
      O => vga_pantalla_Mmux_color_16_f61
    );
  vga_pantalla_Mmux_color_23_f5_18 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2529_706,
      I1 => vga_pantalla_Mmux_color_2439,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f519
    );
  vga_pantalla_Mmux_color_24_f5_10 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_255_722,
      I1 => vga_pantalla_Mmux_color_2530_708,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f511
    );
  vga_pantalla_Mmux_color_22_f6_3 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_24_f511,
      I1 => vga_pantalla_Mmux_color_23_f519,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_22_f64
    );
  vga_pantalla_Mmux_color_24_f5_11 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2417_629,
      I1 => vga_pantalla_Mmux_color_248_660,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f512
    );
  vga_pantalla_Mmux_color_25_f5_10 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2722_814,
      I1 => vga_pantalla_Mmux_color_2623_764,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f511
    );
  vga_pantalla_Mmux_color_23_f6_3 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_25_f511,
      I1 => vga_pantalla_Mmux_color_24_f512,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_23_f64
    );
  vga_pantalla_Mmux_color_21_f7 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_23_f64,
      I1 => vga_pantalla_Mmux_color_22_f64,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_21_f7_446
    );
  vga_pantalla_Mmux_color_24_f5_12 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2624_765,
      I1 => vga_pantalla_Mrom_data_out_rom00001181_inv,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f513
    );
  vga_pantalla_Mmux_color_25_f5_11 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_264_780,
      I1 => vga_pantalla_Mmux_color_2625_766,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f512
    );
  vga_pantalla_Mmux_color_23_f6_4 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_25_f512,
      I1 => vga_pantalla_Mmux_color_24_f513,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_23_f65
    );
  vga_pantalla_Mmux_color_25_f5_12 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2414_626,
      I1 => vga_pantalla_Mmux_color_2626_767,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f513
    );
  vga_pantalla_Mmux_color_26_f5_10 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2817_844,
      I1 => vga_pantalla_Mmux_color_2725_815,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_26_f511
    );
  vga_pantalla_Mmux_color_24_f6_2 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_26_f511,
      I1 => vga_pantalla_Mmux_color_25_f513,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_24_f63
    );
  vga_pantalla_Mmux_color_22_f7_0 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_24_f63,
      I1 => vga_pantalla_Mmux_color_23_f65,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_22_f71
    );
  vga_pantalla_Mmux_color_20_f8 : MUXF8
    port map (
      I0 => vga_pantalla_Mmux_color_22_f71,
      I1 => vga_pantalla_Mmux_color_21_f7_446,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_20_f8_382
    );
  vga_pantalla_Mmux_color_32 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000144,
      I2 => vga_pantalla_Mrom_data_out_rom0000145,
      O => vga_pantalla_Mmux_color_32_878
    );
  vga_pantalla_Mmux_color_33 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000143,
      O => vga_pantalla_Mmux_color_33_880
    );
  vga_pantalla_Mmux_color_31_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_33_880,
      I1 => vga_pantalla_Mmux_color_32_878,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_31_f5_877
    );
  vga_pantalla_Mmux_color_29_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_31_874,
      I1 => vga_pantalla_Mrom_data_out_rom00001461_inv,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_29_f5_867
    );
  vga_pantalla_Mmux_color_311 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000147_924,
      I2 => vga_pantalla_Mrom_data_out_rom0000148,
      O => vga_pantalla_Mmux_color_311_875
    );
  vga_pantalla_Mmux_color_30_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_321_879,
      I1 => vga_pantalla_Mmux_color_311_875,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_30_f5_873
    );
  vga_pantalla_Mmux_color_28_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_30_f5_873,
      I1 => vga_pantalla_Mmux_color_29_f5_867,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_28_f6_858
    );
  vga_pantalla_Mmux_color_27_f5_5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_27_f5_5_835,
      I1 => vga_pantalla_Mmux_color_2613_756,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_27_f56
    );
  vga_pantalla_Mmux_color_28_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_301_870,
      I1 => vga_pantalla_Mmux_color_298_866,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_28_f51
    );
  vga_pantalla_Mmux_color_26_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_28_f51,
      I1 => vga_pantalla_Mmux_color_27_f56,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_26_f6_802
    );
  vga_pantalla_Mmux_color_28_f5_1 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_302_871,
      I1 => vga_pantalla_Mmux_color_224_481,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_28_f52
    );
  vga_pantalla_Mmux_color_29_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_312_876,
      I1 => vga_pantalla_Mmux_color_303_872,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_29_f51
    );
  vga_pantalla_Mmux_color_27_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_29_f51,
      I1 => vga_pantalla_Mmux_color_28_f52,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_27_f6_836
    );
  vga_pantalla_Mmux_color_25_f7 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_27_f6_836,
      I1 => vga_pantalla_Mmux_color_26_f6_802,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_25_f7_750
    );
  vga_pantalla_Mmux_color_2348 : LUT4
    generic map(
      INIT => X"67EF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom00001,
      I3 => vga_pantalla_Mrom_data_out_rom00002,
      O => vga_pantalla_Mmux_color_2346
    );
  vga_pantalla_Mmux_color_22_f5_23 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2214_455,
      I1 => vga_pantalla_Mmux_color_2346,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_22_f524
    );
  vga_pantalla_Mmux_color_2910 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom000029,
      I1 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2910_861
    );
  vga_pantalla_Mmux_color_27_f5_6 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2910_861,
      I1 => vga_pantalla_Mmux_color_2819,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_27_f57
    );
  vga_pantalla_Mmux_color_1910 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_22_f524,
      I2 => vga_pantalla_dir_rom_6_23,
      O => vga_pantalla_Mmux_color_199_301
    );
  vga_pantalla_Mmux_color_17_f5_2 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_199_301,
      I1 => vga_pantalla_Mmux_color_185_266,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_17_f53
    );
  vga_pantalla_Mmux_color_187 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_Mrom_data_out_rom000019,
      I3 => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_186_267
    );
  vga_pantalla_Mmux_color_1911 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_dir_rom_5_25,
      O => vga_pantalla_Mmux_color_1910_290
    );
  vga_pantalla_Mmux_color_17_f5_3 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_1910_290,
      I1 => vga_pantalla_Mmux_color_186_267,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_17_f54
    );
  vga_pantalla_Mmux_color_1912 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000122,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_dir_rom(6),
      I3 => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_1911_291
    );
  vga_pantalla_Mmux_color_18_f5_5 : MUXF5
    port map (
      I0 => N1,
      I1 => vga_pantalla_Mmux_color_1911_291,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_18_f56
    );
  vga_pantalla_Mmux_color_16_f6_1 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_18_f56,
      I1 => vga_pantalla_Mmux_color_17_f54,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_16_f62
    );
  vga_pantalla_Mmux_color_2349 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom000014,
      I1 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2347
    );
  vga_pantalla_Mmux_color_22_f5_24 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2318_547,
      I1 => vga_pantalla_Mmux_color_2347,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f525
    );
  vga_pantalla_Mmux_color_1913 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_Mmux_color_22_f525,
      I2 => vga_pantalla_dir_rom_5_26,
      O => vga_pantalla_Mmux_color_1912_292
    );
  vga_pantalla_Mmux_color_2532 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom000029,
      I1 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2532_709
    );
  vga_pantalla_Mmux_color_2016 : LUT4
    generic map(
      INIT => X"EF4F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_Mmux_color_2532_709,
      I2 => vga_pantalla_dir_rom(6),
      I3 => vga_pantalla_Mmux_color_2219_460,
      O => vga_pantalla_Mmux_color_2014
    );
  vga_pantalla_Mmux_color_18_f5_6 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2014,
      I1 => vga_pantalla_Mmux_color_1912_292,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_18_f57
    );
  vga_pantalla_Mmux_color_2017 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom000010,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_dir_rom(6),
      I3 => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_2015_333
    );
  vga_pantalla_Mmux_color_19_f5_8 : MUXF5
    port map (
      I0 => N1,
      I1 => vga_pantalla_Mmux_color_2015_333,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_19_f59
    );
  vga_pantalla_Mmux_color_17_f6_1 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_19_f59,
      I1 => vga_pantalla_Mmux_color_18_f57,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_17_f62
    );
  vga_pantalla_Mmux_color_15_f7_0 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_17_f62,
      I1 => vga_pantalla_Mmux_color_16_f62,
      S => vga_pantalla_dir_rom(9),
      O => vga_pantalla_Mmux_color_15_f71
    );
  vga_pantalla_Mmux_color_111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(10),
      I1 => vga_pantalla_dir_rom_9_4,
      I2 => vga_pantalla_Mmux_color_15_f71,
      O => vga_pantalla_Mmux_color_111_209
    );
  vga_pantalla_Mmux_color_21_f5_23 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2348_575,
      I1 => vga_pantalla_Mmux_color_2240_482,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_21_f524
    );
  vga_pantalla_Mmux_color_2351 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000124,
      I2 => vga_pantalla_Mrom_data_out_rom0000435,
      O => vga_pantalla_Mmux_color_2349_576
    );
  vga_pantalla_Mmux_color_22_f5_25 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_236_580,
      I1 => vga_pantalla_Mmux_color_2349_576,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f526
    );
  vga_pantalla_Mmux_color_20_f6_10 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_22_f526,
      I1 => vga_pantalla_Mmux_color_21_f524,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f611
    );
  vga_pantalla_Mmux_color_2628 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000116,
      I2 => vga_pantalla_Mrom_data_out_rom0000144,
      O => vga_pantalla_Mmux_color_2628_768
    );
  vga_pantalla_Mmux_color_25_f5_13 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2726_816,
      I1 => vga_pantalla_Mmux_color_2628_768,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f514
    );
  vga_pantalla_Mmux_color_174 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_20_f611,
      I2 => vga_pantalla_dir_rom_6_25,
      O => vga_pantalla_Mmux_color_174_244
    );
  vga_pantalla_Mmux_color_25_f5_14 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2727_817,
      I1 => vga_pantalla_Mmux_color_2629_769,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f515
    );
  vga_pantalla_Mmux_color_2352 : LUT4
    generic map(
      INIT => X"57DF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_Mrom_data_out_rom0000116,
      I3 => vga_pantalla_Mrom_data_out_rom000037,
      O => vga_pantalla_Mmux_color_2350_578
    );
  vga_pantalla_Mmux_color_22_f5_26 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2330_561,
      I1 => vga_pantalla_Mmux_color_2350_578,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_22_f527
    );
  vga_pantalla_Mmux_color_189 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_dir_rom_6_26,
      I2 => vga_pantalla_Mmux_color_22_f527,
      O => vga_pantalla_Mmux_color_187_268
    );
  vga_pantalla_Mmux_color_16_f5_1 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_187_268,
      I1 => vga_pantalla_Mmux_color_174_244,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_16_f52
    );
  vga_pantalla_Mmux_color_24_f5_13 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2630_771,
      I1 => vga_pantalla_Mmux_color_2425_638,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f514
    );
  vga_pantalla_Mmux_color_22_f5_27 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2440,
      I1 => vga_pantalla_Mmux_color_2351_579,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_22_f528
    );
  vga_pantalla_Mmux_color_1810 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_dir_rom_6_27,
      I2 => vga_pantalla_Mmux_color_22_f528,
      O => vga_pantalla_Mmux_color_188
    );
  vga_pantalla_Mmux_color_26_f5_11 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_261_752,
      I1 => vga_pantalla_Mmux_color_2728_818,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_26_f512
    );
  vga_pantalla_Mmux_color_2631 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000028,
      I2 => vga_pantalla_Mrom_data_out_rom000029,
      O => vga_pantalla_Mmux_color_2631_772
    );
  vga_pantalla_Mmux_color_24_f5_14 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2631_772,
      I1 => vga_pantalla_Mmux_color_2534_710,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f515
    );
  vga_pantalla_Mmux_color_25_f5_15 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2729_819,
      I1 => vga_pantalla_Mmux_color_2632_773,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f516
    );
  vga_pantalla_Mmux_color_23_f6_5 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_25_f516,
      I1 => vga_pantalla_Mmux_color_24_f515,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_23_f66
    );
  vga_pantalla_Mmux_color_1915 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_dir_rom_6_28,
      I2 => vga_pantalla_Mmux_color_23_f66,
      O => vga_pantalla_Mmux_color_1913_293
    );
  vga_pantalla_Mmux_color_17_f5_4 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_1913_293,
      I1 => vga_pantalla_Mmux_color_188,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_17_f55
    );
  vga_pantalla_Mmux_color_15_f6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_17_f55,
      I1 => vga_pantalla_Mmux_color_16_f52,
      S => vga_pantalla_dir_rom(9),
      O => vga_pantalla_Mmux_color_15_f6_227
    );
  vga_pantalla_Mmux_color_22_f5_28 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2446,
      I1 => vga_pantalla_Mmux_color_2116_391,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_22_f529
    );
  vga_pantalla_Mmux_color_23_f5_19 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2535,
      I1 => vga_pantalla_Mmux_color_2447_655,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f520
    );
  vga_pantalla_Mmux_color_21_f6_7 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_23_f520,
      I1 => vga_pantalla_Mmux_color_22_f529,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_21_f68
    );
  vga_pantalla_Mmux_color_23_f5_20 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2536_712,
      I1 => vga_pantalla_Mmux_color_2448_656,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f521
    );
  vga_pantalla_Mmux_color_2633 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000108,
      I2 => vga_pantalla_Mrom_data_out_rom000064_1008,
      O => vga_pantalla_Mmux_color_2633_774
    );
  vga_pantalla_Mmux_color_24_f5_15 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2633_774,
      I1 => vga_pantalla_Mmux_color_2537_713,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f516
    );
  vga_pantalla_Mmux_color_22_f6_4 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_24_f516,
      I1 => vga_pantalla_Mmux_color_23_f521,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_22_f65
    );
  vga_pantalla_Mmux_color_20_f7_0 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_22_f65,
      I1 => vga_pantalla_Mmux_color_21_f68,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_20_f71
    );
  vga_pantalla_Mmux_color_2538 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000137,
      I2 => vga_pantalla_Mrom_data_out_rom000010,
      O => vga_pantalla_Mmux_color_2538_714
    );
  vga_pantalla_Mmux_color_23_f5_21 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2538_714,
      I1 => vga_pantalla_Mmux_color_2317_546,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f522
    );
  vga_pantalla_Mmux_color_24_f5_16 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2512_693,
      I1 => vga_pantalla_Mmux_color_2539_715,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f517
    );
  vga_pantalla_Mmux_color_22_f6_5 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_24_f517,
      I1 => vga_pantalla_Mmux_color_23_f522,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_22_f66
    );
  vga_pantalla_Mmux_color_24_f5_17 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2635_775,
      I1 => vga_pantalla_Mmux_color_2540_717,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f518
    );
  vga_pantalla_Mmux_color_25_f5_16 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2730_821,
      I1 => vga_pantalla_Mmux_color_2636_776,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f517
    );
  vga_pantalla_Mmux_color_23_f6_6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_25_f517,
      I1 => vga_pantalla_Mmux_color_24_f518,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_23_f67
    );
  vga_pantalla_Mmux_color_21_f7_0 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_23_f67,
      I1 => vga_pantalla_Mmux_color_22_f66,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_21_f71
    );
  vga_pantalla_Mmux_color_19_f8 : MUXF8
    port map (
      I0 => vga_pantalla_Mmux_color_21_f71,
      I1 => vga_pantalla_Mmux_color_20_f71,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_19_f8_325
    );
  vga_pantalla_Mmux_color_23_f5_22 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2541,
      I1 => vga_pantalla_Mmux_color_2450,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_23_f523
    );
  vga_pantalla_Mmux_color_24_f5_18 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2637_777,
      I1 => vga_pantalla_Mmux_color_2542_719,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f519
    );
  vga_pantalla_Mmux_color_22_f6_6 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_24_f519,
      I1 => vga_pantalla_Mmux_color_23_f523,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_22_f67
    );
  vga_pantalla_Mmux_color_24_f5_19 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2638_778,
      I1 => vga_pantalla_Mmux_color_2543,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f520
    );
  vga_pantalla_Mmux_color_25_f5_17 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2731_822,
      I1 => vga_pantalla_Mmux_color_2639_779,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f518
    );
  vga_pantalla_Mmux_color_23_f6_7 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_25_f518,
      I1 => vga_pantalla_Mmux_color_24_f520,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_23_f68
    );
  vga_pantalla_Mmux_color_21_f7_1 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_23_f68,
      I1 => vga_pantalla_Mmux_color_22_f67,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_21_f72
    );
  vga_pantalla_Mmux_color_24_f5_20 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2640,
      I1 => vga_pantalla_Mmux_color_2544_721,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_24_f521
    );
  vga_pantalla_Mmux_color_25_f5_18 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2732_823,
      I1 => vga_pantalla_Mmux_color_2641_782,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f519
    );
  vga_pantalla_Mmux_color_23_f6_8 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_25_f519,
      I1 => vga_pantalla_Mmux_color_24_f521,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_23_f69
    );
  vga_pantalla_Mmux_color_25_f5_19 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2733_824,
      I1 => vga_pantalla_Mmux_color_2642,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_25_f520
    );
  vga_pantalla_Mmux_color_26_f5_12 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_2821,
      I1 => vga_pantalla_Mmux_color_2734_825,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_26_f513
    );
  vga_pantalla_Mmux_color_24_f6_3 : MUXF6
    port map (
      I0 => vga_pantalla_Mmux_color_26_f513,
      I1 => vga_pantalla_Mmux_color_25_f520,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_24_f64
    );
  vga_pantalla_Mmux_color_22_f7_1 : MUXF7
    port map (
      I0 => vga_pantalla_Mmux_color_24_f64,
      I1 => vga_pantalla_Mmux_color_23_f69,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_Mmux_color_22_f72
    );
  vga_pantalla_Mmux_color_20_f8_0 : MUXF8
    port map (
      I0 => vga_pantalla_Mmux_color_22_f72,
      I1 => vga_pantalla_Mmux_color_21_f72,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_Mmux_color_20_f81
    );
  vga_pantalla_Mmux_color_122 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(10),
      I1 => vga_pantalla_Mmux_color_15_f6_227,
      I2 => vga_pantalla_dir_rom_9_5,
      O => vga_pantalla_Mmux_color_122_213
    );
  vga_pantalla_Mmux_color_10_f5_0 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_122_213,
      I1 => vga_pantalla_Mmux_color_111_209,
      S => vga_ctrl_hcount(1),
      O => vga_pantalla_Mmux_color_10_f51
    );
  vga_pantalla_dir_c_4_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_hcount(8),
      I1 => vga_ctrl_hcount(9),
      O => vga_pantalla_dir_c(4)
    );
  vga_pantalla_dir_c_3_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_hcount(7),
      I1 => vga_ctrl_hcount(9),
      O => vga_pantalla_dir_c(3)
    );
  vga_pantalla_dir_c_5_11 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => vga_ctrl_hcount(8),
      I1 => vga_ctrl_hcount(7),
      I2 => vga_ctrl_hcount(9),
      O => vga_pantalla_dir_c(5)
    );
  vga_pantalla_dir_c_9_11 : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => vga_ctrl_vcount(8),
      I1 => vga_ctrl_hcount(7),
      I2 => vga_ctrl_hcount(8),
      I3 => vga_ctrl_hcount(9),
      O => vga_pantalla_dir_c(9)
    );
  vga_pantalla_dir_c_8_11 : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => vga_ctrl_vcount(7),
      I1 => vga_ctrl_hcount(7),
      I2 => vga_ctrl_hcount(8),
      I3 => vga_ctrl_hcount(9),
      O => vga_pantalla_dir_c(8)
    );
  vga_pantalla_dir_c_7_11 : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => vga_ctrl_vcount(6),
      I1 => vga_ctrl_hcount(7),
      I2 => vga_ctrl_hcount(8),
      I3 => vga_ctrl_hcount(9),
      O => vga_pantalla_dir_c(7)
    );
  vga_pantalla_dir_c_6_11 : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => vga_ctrl_vcount(5),
      I1 => vga_ctrl_hcount(7),
      I2 => vga_ctrl_hcount(8),
      I3 => vga_ctrl_hcount(9),
      O => vga_pantalla_dir_c(6)
    );
  vga_pantalla_dir_c_2_11 : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => vga_ctrl_hcount(6),
      I1 => vga_ctrl_hcount(7),
      I2 => vga_ctrl_hcount(8),
      I3 => vga_ctrl_hcount(9),
      O => vga_pantalla_dir_c(2)
    );
  vga_pantalla_dir_c_1_11 : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => vga_ctrl_hcount(5),
      I1 => vga_ctrl_hcount(7),
      I2 => vga_ctrl_hcount(8),
      I3 => vga_ctrl_hcount(9),
      O => vga_pantalla_dir_c(1)
    );
  vga_pantalla_dir_c_10_11 : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => vga_ctrl_vcount(9),
      I1 => vga_ctrl_hcount(7),
      I2 => vga_ctrl_hcount(8),
      I3 => vga_ctrl_hcount(9),
      O => vga_pantalla_dir_c(10)
    );
  vga_pantalla_dir_c_0_11 : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => vga_ctrl_hcount(4),
      I1 => vga_ctrl_hcount(7),
      I2 => vga_ctrl_hcount(8),
      I3 => vga_ctrl_hcount(9),
      O => vga_pantalla_dir_c(0)
    );
  wr1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => inicio_juego_IBUF_92,
      I1 => pul_dato_IBUF_94,
      O => wr
    );
  vga_ctrl_hs_out_mux0001_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => vga_ctrl_hcount(7),
      I1 => vga_ctrl_hcount(9),
      I2 => vga_ctrl_hcount(8),
      O => N01
    );
  vga_ctrl_hs_out_mux0001 : LUT4
    generic map(
      INIT => X"EAAB"
    )
    port map (
      I0 => N01,
      I1 => vga_ctrl_hcount(6),
      I2 => vga_ctrl_hcount(5),
      I3 => vga_ctrl_hcount(4),
      O => vga_ctrl_hs_out_mux0001_186
    );
  vga_ctrl_vs_out_mux000127 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => vga_ctrl_vcount(8),
      I1 => vga_ctrl_vcount(7),
      I2 => vga_ctrl_vcount(6),
      I3 => vga_ctrl_vcount(9),
      O => vga_ctrl_vs_out_mux000127_204
    );
  vga_ctrl_vs_out_mux000128 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => vga_ctrl_vs_out_mux000113,
      I1 => vga_ctrl_vs_out_mux000127_204,
      O => vga_ctrl_vs_out_mux0001
    );
  vga_ctrl_Mcount_vcount_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_Result(0),
      I1 => vga_ctrl_vcount_and0000_197,
      O => vga_ctrl_Mcount_vcount_eqn_0
    );
  vga_ctrl_vcount_and0000_SW0 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => vga_ctrl_vcount(9),
      I1 => vga_ctrl_vcount(0),
      I2 => vga_ctrl_vcount(1),
      O => N2
    );
  vga_ctrl_vcount_and0000 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => N2,
      I3 => N187,
      O => vga_ctrl_vcount_and0000_197
    );
  vga_ctrl_Mcount_vcount_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_Result(1),
      I1 => vga_ctrl_vcount_and0000_197,
      O => vga_ctrl_Mcount_vcount_eqn_1
    );
  vga_ctrl_Mcount_vcount_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_Result(2),
      I1 => vga_ctrl_vcount_and0000_197,
      O => vga_ctrl_Mcount_vcount_eqn_2
    );
  vga_ctrl_Mcount_vcount_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_Result(3),
      I1 => vga_ctrl_vcount_and0000_197,
      O => vga_ctrl_Mcount_vcount_eqn_3
    );
  vga_ctrl_Mcount_vcount_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_Result(4),
      I1 => vga_ctrl_vcount_and0000_197,
      O => vga_ctrl_Mcount_vcount_eqn_4
    );
  vga_ctrl_Mcount_vcount_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_Result(5),
      I1 => vga_ctrl_vcount_and0000_197,
      O => vga_ctrl_Mcount_vcount_eqn_5
    );
  vga_ctrl_Mcount_vcount_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_Result(6),
      I1 => vga_ctrl_vcount_and0000_197,
      O => vga_ctrl_Mcount_vcount_eqn_6
    );
  vga_ctrl_vcount_and00001_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => vga_ctrl_vcount(6),
      I1 => vga_ctrl_vcount(5),
      O => N4
    );
  vga_ctrl_Mcount_vcount_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_Result(7),
      I1 => vga_ctrl_vcount_and0000_197,
      O => vga_ctrl_Mcount_vcount_eqn_7
    );
  vga_ctrl_Mcount_vcount_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_Result(8),
      I1 => vga_ctrl_vcount_and0000_197,
      O => vga_ctrl_Mcount_vcount_eqn_8
    );
  vga_ctrl_Mcount_vcount_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_Result(9),
      I1 => vga_ctrl_vcount_and0000_197,
      O => vga_ctrl_Mcount_vcount_eqn_9
    );
  vga_ctrl_hcount_not0001_inv22 : LUT4
    generic map(
      INIT => X"F777"
    )
    port map (
      I0 => vga_ctrl_hcount(8),
      I1 => vga_ctrl_hcount(9),
      I2 => vga_ctrl_N7,
      I3 => N188,
      O => vga_ctrl_hcount_not0001_inv
    );
  vga_ctrl_hcount_not0001_inv21_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => vga_ctrl_hcount(3),
      I1 => vga_ctrl_hcount(2),
      O => N6
    );
  vga_pantalla_Mrom_data_out_rom00001631 : LUT4
    generic map(
      INIT => X"0006"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000163
    );
  vga_pantalla_Mrom_data_out_rom00002171 : LUT4
    generic map(
      INIT => X"0280"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000217
    );
  vga_pantalla_Mrom_data_out_rom00003001 : LUT4
    generic map(
      INIT => X"F99F"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000300
    );
  vga_pantalla_Mrom_data_out_rom00001261 : LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom0000126
    );
  vga_pantalla_Mrom_data_out_rom00002071 : LUT4
    generic map(
      INIT => X"0006"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom0000207
    );
  vga_pantalla_Mrom_data_out_rom00001031 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom0000103
    );
  vga_pantalla_Mrom_data_out_rom000039111 : LUT4
    generic map(
      INIT => X"5540"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom000014
    );
  vga_pantalla_Mrom_data_out_rom000022311 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000380
    );
  vga_pantalla_Mrom_data_out_rom00001711 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000171_937
    );
  vga_pantalla_Mrom_data_out_rom0000224 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom000022
    );
  vga_pantalla_dir_rom_6_1101 : LUT4
    generic map(
      INIT => X"4555"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_Mrom_data_out_rom00001,
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_N46
    );
  vga_pantalla_dir_rom_6_271 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => vga_pantalla_N46,
      I1 => vga_pantalla_dir_rom(6),
      I2 => vga_pantalla_Mmux_color_26_f512,
      O => vga_pantalla_dir_rom_6_28
    );
  vga_pantalla_Mrom_data_out_rom000028911 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(1),
      O => vga_pantalla_N30
    );
  vga_pantalla_dir_rom_5_241 : LUT4
    generic map(
      INIT => X"57DF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom000017,
      I3 => vga_pantalla_Mrom_data_out_rom0000172,
      O => vga_pantalla_dir_rom_5_25
    );
  vga_pantalla_Mrom_data_out_rom00001281 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom0000128
    );
  vga_pantalla_dir_rom_6_4 : LUT4
    generic map(
      INIT => X"72FA"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_Mmux_color_23_f510,
      I3 => N22,
      O => vga_pantalla_dir_rom_6_5_1092
    );
  vga_pantalla_Mrom_data_out_rom0000282111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      O => vga_pantalla_N35
    );
  vga_pantalla_dir_rom_6_261 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_Mmux_color_24_f514,
      I2 => vga_pantalla_dir_rom_5_3,
      O => vga_pantalla_dir_rom_6_27
    );
  vga_pantalla_dir_rom_7_31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_19_f53,
      I2 => vga_pantalla_Mmux_color_20_f63,
      O => vga_pantalla_dir_rom_7_4
    );
  vga_pantalla_dir_rom_6_8 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_dir_rom(5),
      I2 => N26,
      I3 => vga_pantalla_Mmux_color_24_f53,
      O => vga_pantalla_dir_rom_6_9
    );
  vga_pantalla_dir_rom_7_498 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_19_f61,
      I2 => vga_pantalla_dir_rom_7_465_1105,
      O => vga_pantalla_dir_rom_7_5
    );
  vga_pantalla_dir_rom_9_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(9),
      I1 => vga_pantalla_Mmux_color_19_f8_325,
      I2 => vga_pantalla_Mmux_color_20_f81,
      O => vga_pantalla_dir_rom_9_5
    );
  vga_pantalla_dir_rom_7_1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_N46,
      I2 => N38,
      I3 => vga_pantalla_Mmux_color_21_f6_437,
      O => vga_pantalla_dir_rom_7_2
    );
  vga_pantalla_Mrom_data_out_rom000010411 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(1),
      O => vga_pantalla_N42
    );
  vga_pantalla_Mrom_data_out_rom0000109111 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      O => vga_pantalla_N27
    );
  vga_pantalla_dir_rom_6_16 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_dir_rom(5),
      I2 => N46,
      I3 => vga_pantalla_Mmux_color_26_f58,
      O => vga_pantalla_dir_rom_6_17
    );
  vga_pantalla_dir_rom_9_37 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_dir_rom(6),
      I2 => vga_pantalla_Mrom_data_out_rom0000116,
      I3 => vga_pantalla_dir_rom(8),
      O => vga_pantalla_dir_rom_9_37_1124
    );
  vga_pantalla_dir_rom_9_311 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_dir_rom(5),
      O => vga_pantalla_dir_rom_9_311_1123
    );
  vga_pantalla_dir_rom_9_334 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => vga_pantalla_dir_rom(9),
      I1 => vga_pantalla_dir_rom_9_37_1124,
      I2 => vga_pantalla_Mmux_color_17_f53,
      I3 => vga_pantalla_dir_rom_9_311_1123,
      O => vga_pantalla_dir_rom_9_4
    );
  vga_pantalla_dir_rom_7_14 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_N26,
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_dir_rom_7_14_1101
    );
  vga_pantalla_dir_rom_7_18 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_Mrom_data_out_rom0000186,
      O => vga_pantalla_dir_rom_7_18_1102
    );
  vga_pantalla_Mrom_data_out_rom000017811 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      O => vga_pantalla_N1
    );
  vga_pantalla_dir_rom_7_62 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_20_f57,
      I2 => vga_pantalla_Mmux_color_21_f63,
      O => vga_pantalla_dir_rom_7_7
    );
  vga_pantalla_dir_rom_8_41 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_25_f62,
      O => vga_pantalla_dir_rom_8_41_1118
    );
  vga_pantalla_dir_rom_8_477 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_dir_rom_8_437_1119,
      I2 => vga_pantalla_dir_rom(7),
      I3 => vga_pantalla_Mmux_color_28_f5_855,
      O => vga_pantalla_dir_rom_8_477_1120
    );
  vga_pantalla_dir_rom_8_4128 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => vga_pantalla_dir_rom(8),
      I1 => vga_pantalla_dir_rom_8_41_1118,
      I2 => vga_pantalla_dir_rom_8_477_1120,
      I3 => vga_pantalla_Mmux_color_22_f7_534,
      O => vga_pantalla_dir_rom_8_5
    );
  vga_pantalla_Mrom_data_out_rom000032011 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      O => vga_pantalla_N33
    );
  vga_pantalla_dir_rom_10_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => vga_pantalla_dir_rom(9),
      I1 => vga_pantalla_Mmux_color_17_f8_259,
      O => vga_pantalla_dir_rom_10_0_1039
    );
  vga_pantalla_dir_rom_10_68 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => vga_pantalla_dir_rom(10),
      I1 => vga_pantalla_dir_rom_10_0_1039,
      I2 => vga_pantalla_Mmux_color_12_f5_214,
      I3 => vga_pantalla_dir_rom_10_30,
      O => vga_pantalla_dir_rom_10_1
    );
  vga_pantalla_dir_rom_5_411 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_dir_rom(5),
      O => vga_pantalla_N32
    );
  vga_pantalla_Mrom_data_out_rom00001021 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(4),
      O => vga_pantalla_N31
    );
  vga_pantalla_Mrom_data_out_rom000010101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000107
    );
  vga_pantalla_px_3_5 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => vga_pantalla_Mmux_color_16_f61,
      I1 => vga_pantalla_dir_rom(10),
      O => vga_pantalla_px_3_5_1131
    );
  vga_pantalla_px_3_48 : LUT4
    generic map(
      INIT => X"FF72"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_Mmux_color_31_f5_877,
      I2 => vga_pantalla_px_3_21_1128,
      I3 => vga_pantalla_dir_rom(7),
      O => vga_pantalla_px_3_48_1130
    );
  vga_pantalla_px_3_58 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_28_f6_858,
      O => vga_pantalla_px_3_58_1132
    );
  pul_dato_IBUF : IBUF
    port map (
      I => pul_dato,
      O => pul_dato_IBUF_94
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_99
    );
  inicio_juego_IBUF : IBUF
    port map (
      I => inicio_juego,
      O => inicio_juego_IBUF_92
    );
  datos_3_IBUF : IBUF
    port map (
      I => datos(3),
      O => datos_3_IBUF_86
    );
  datos_2_IBUF : IBUF
    port map (
      I => datos(2),
      O => datos_2_IBUF_85
    );
  datos_1_IBUF : IBUF
    port map (
      I => datos(1),
      O => datos_1_IBUF_84
    );
  datos_0_IBUF : IBUF
    port map (
      I => datos(0),
      O => datos_0_IBUF_83
    );
  vsync_OBUF : OBUF
    port map (
      I => vga_ctrl_vs_out_200,
      O => vsync
    );
  hsync_OBUF : OBUF
    port map (
      I => vga_ctrl_hs_out_185,
      O => hsync
    );
  blue_2_OBUF : OBUF
    port map (
      I => blue_1_OBUF_76,
      O => blue(2)
    );
  blue_1_OBUF : OBUF
    port map (
      I => blue_1_OBUF_76,
      O => blue(1)
    );
  green_2_OBUF : OBUF
    port map (
      I => blue_1_OBUF_76,
      O => green(2)
    );
  green_1_OBUF : OBUF
    port map (
      I => blue_1_OBUF_76,
      O => green(1)
    );
  green_0_OBUF : OBUF
    port map (
      I => blue_1_OBUF_76,
      O => green(0)
    );
  red_2_OBUF : OBUF
    port map (
      I => blue_1_OBUF_76,
      O => red(2)
    );
  red_1_OBUF : OBUF
    port map (
      I => blue_1_OBUF_76,
      O => red(1)
    );
  red_0_OBUF : OBUF
    port map (
      I => blue_1_OBUF_76,
      O => red(0)
    );
  vga_ctrl_Mcount_vcount_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_vcount(8),
      O => vga_ctrl_Mcount_vcount_cy_8_rt_145
    );
  vga_ctrl_Mcount_vcount_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_vcount(7),
      O => vga_ctrl_Mcount_vcount_cy_7_rt_143
    );
  vga_ctrl_Mcount_vcount_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_vcount(6),
      O => vga_ctrl_Mcount_vcount_cy_6_rt_141
    );
  vga_ctrl_Mcount_vcount_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_vcount(5),
      O => vga_ctrl_Mcount_vcount_cy_5_rt_139
    );
  vga_ctrl_Mcount_vcount_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      O => vga_ctrl_Mcount_vcount_cy_4_rt_137
    );
  vga_ctrl_Mcount_vcount_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      O => vga_ctrl_Mcount_vcount_cy_3_rt_135
    );
  vga_ctrl_Mcount_vcount_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      O => vga_ctrl_Mcount_vcount_cy_2_rt_133
    );
  vga_ctrl_Mcount_vcount_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      O => vga_ctrl_Mcount_vcount_cy_1_rt_131
    );
  vga_ctrl_Mcount_vcount_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_ctrl_vcount(9),
      O => vga_ctrl_Mcount_vcount_xor_9_rt_157
    );
  vga_pantalla_Mmux_color_20_f51 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000108,
      I1 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_20_f518
    );
  vga_pantalla_Mmux_color_23_f5_01 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_Mmux_color_2315,
      I2 => vga_pantalla_Mmux_color_243_643,
      O => vga_pantalla_Mmux_color_23_f51
    );
  vga_pantalla_Mmux_color_22_f5_81 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000163,
      I2 => vga_pantalla_Mrom_data_out_rom0000164,
      O => vga_pantalla_Mmux_color_22_f5_8_523
    );
  vga_pantalla_Mmux_color_22_f5_92 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000130,
      O => vga_pantalla_Mmux_color_22_f5_91_525
    );
  vga_ctrl_Mcount_hcount_lut_6_Q : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => vga_ctrl_hcount(8),
      I1 => vga_ctrl_hcount(6),
      I2 => vga_ctrl_hcount(9),
      O => vga_ctrl_Mcount_hcount_lut(6)
    );
  vga_ctrl_Mcount_hcount_lut_8_Q : LUT4
    generic map(
      INIT => X"0C4C"
    )
    port map (
      I0 => vga_ctrl_hcount(6),
      I1 => vga_ctrl_hcount(8),
      I2 => vga_ctrl_hcount(9),
      I3 => N8,
      O => vga_ctrl_Mcount_hcount_lut(8)
    );
  vga_ctrl_hcount_not0001_SW1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => vga_ctrl_hcount(9),
      I1 => vga_ctrl_hcount(8),
      O => N52
    );
  vga_ctrl_Mcount_hcount_lut_0_Q : LUT4
    generic map(
      INIT => X"0A2A"
    )
    port map (
      I0 => vga_ctrl_hcount(0),
      I1 => vga_ctrl_hcount(6),
      I2 => N52,
      I3 => N8,
      O => vga_ctrl_Mcount_hcount_lut(0)
    );
  vga_ctrl_Mcount_hcount_lut_1_Q : LUT4
    generic map(
      INIT => X"0A2A"
    )
    port map (
      I0 => vga_ctrl_hcount(1),
      I1 => vga_ctrl_hcount(6),
      I2 => N52,
      I3 => N8,
      O => vga_ctrl_Mcount_hcount_lut(1)
    );
  vga_ctrl_Mcount_hcount_lut_2_Q : LUT4
    generic map(
      INIT => X"0A2A"
    )
    port map (
      I0 => vga_ctrl_hcount(2),
      I1 => vga_ctrl_hcount(6),
      I2 => N52,
      I3 => N8,
      O => vga_ctrl_Mcount_hcount_lut(2)
    );
  vga_ctrl_Mcount_hcount_lut_3_Q : LUT4
    generic map(
      INIT => X"0A2A"
    )
    port map (
      I0 => vga_ctrl_hcount(3),
      I1 => vga_ctrl_hcount(6),
      I2 => N52,
      I3 => N8,
      O => vga_ctrl_Mcount_hcount_lut(3)
    );
  vga_ctrl_hcount_not0001_SW0 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => vga_ctrl_hcount(5),
      I1 => vga_ctrl_hcount(7),
      I2 => vga_ctrl_hcount(4),
      I3 => N189,
      O => N8
    );
  vga_ctrl_Mcount_hcount_lut_9_Q : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => vga_ctrl_hcount(9),
      I1 => N8,
      I2 => vga_ctrl_hcount(6),
      I3 => vga_ctrl_hcount(8),
      O => vga_ctrl_Mcount_hcount_lut(9)
    );
  vga_ctrl_hcount_not0001_SW0_SW1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => vga_ctrl_hcount(7),
      I1 => vga_ctrl_hcount(5),
      I2 => vga_ctrl_hcount(6),
      O => N70
    );
  vga_ctrl_Mcount_hcount_lut_4_Q : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => vga_ctrl_hcount(4),
      I1 => N70,
      I2 => N68,
      I3 => N52,
      O => vga_ctrl_Mcount_hcount_lut(4)
    );
  vga_ctrl_vcount_not000120_SW0 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => vga_ctrl_hcount(8),
      I1 => vga_ctrl_hcount(9),
      I2 => N186,
      O => N72
    );
  vga_ctrl_vcount_not000132 : LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => vga_ctrl_N2,
      I1 => N72,
      I2 => vga_ctrl_vcount_not000112_199,
      I3 => vga_ctrl_vcount_and0000_197,
      O => vga_ctrl_vcount_not0001
    );
  vga_pantalla_dir_rom_6_1352 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => N74,
      I2 => vga_pantalla_Mrom_data_out_rom000010,
      O => vga_pantalla_dir_rom_6_14
    );
  vga_pantalla_px_3_141_SW0 : LUT4
    generic map(
      INIT => X"BF15"
    )
    port map (
      I0 => vga_pantalla_dir_rom(8),
      I1 => vga_pantalla_px_3_48_1130,
      I2 => vga_pantalla_px_3_58_1132,
      I3 => vga_pantalla_Mmux_color_25_f7_750,
      O => N76
    );
  vga_pantalla_px_3_141 : LUT4
    generic map(
      INIT => X"57DF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(10),
      I1 => vga_pantalla_dir_rom(9),
      I2 => vga_pantalla_Mmux_color_20_f8_382,
      I3 => N76,
      O => vga_pantalla_px_3_141_1127
    );
  vga_ctrl_Mcount_hcount_lut_5_Q : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => vga_ctrl_hcount(9),
      I1 => vga_ctrl_hcount(5),
      I2 => vga_ctrl_hcount(8),
      O => vga_ctrl_Mcount_hcount_lut(5)
    );
  vga_ctrl_Mcount_hcount_lut_7_Q : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => vga_ctrl_hcount(9),
      I1 => vga_ctrl_hcount(7),
      I2 => vga_ctrl_hcount(8),
      O => vga_ctrl_Mcount_hcount_lut(7)
    );
  vga_pantalla_Mmux_color_2530 : LUT4
    generic map(
      INIT => X"0301"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom000037,
      I1 => vga_pantalla_Mrom_data_out_rom0000209,
      I2 => vga_pantalla_N22,
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2530_708
    );
  vga_pantalla_px_3_251 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_ctrl_hcount(3),
      I1 => vga_pantalla_Mmux_color_5_f5_881,
      I2 => N80,
      O => blue_1_OBUF_76
    );
  vga_pantalla_Mmux_color_2221 : LUT4
    generic map(
      INIT => X"0145"
    )
    port map (
      I0 => vga_pantalla_N15,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000297,
      I3 => vga_pantalla_Mrom_data_out_rom0000315,
      O => vga_pantalla_Mmux_color_2219_460
    );
  vga_pantalla_dir_rom_8_218_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_dir_rom_5_3,
      I2 => vga_pantalla_Mmux_color_27_f5_828,
      O => N86
    );
  vga_pantalla_Mmux_color_20 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_pantalla_N27,
      I3 => vga_pantalla_Mrom_data_out_rom0000116,
      O => vga_pantalla_Mmux_color_20_326
    );
  vga_pantalla_Mmux_color_221 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => N90,
      I2 => vga_pantalla_Mrom_data_out_rom0000202,
      I3 => vga_pantalla_Mrom_data_out_rom0000386,
      O => vga_pantalla_Mmux_color_221_450
    );
  vga_pantalla_Mmux_color_23 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000186,
      I2 => vga_pantalla_N14,
      I3 => vga_pantalla_Mrom_data_out_rom000037,
      O => vga_pantalla_Mmux_color_23_537
    );
  vga_pantalla_Mmux_color_24 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000320_992,
      I2 => vga_pantalla_Mrom_data_out_rom000023,
      I3 => vga_pantalla_Mrom_data_out_rom0000386,
      O => vga_pantalla_Mmux_color_24_620
    );
  vga_pantalla_Mmux_color_239 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000171_937,
      I2 => vga_pantalla_Mrom_data_out_rom000010,
      I3 => vga_pantalla_N1,
      O => vga_pantalla_Mmux_color_239_583
    );
  vga_pantalla_Mmux_color_193 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_pantalla_N30,
      I3 => vga_pantalla_Mrom_data_out_rom0000247,
      O => vga_pantalla_Mmux_color_193_295
    );
  vga_pantalla_Mmux_color_228 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000131,
      I2 => vga_pantalla_Mrom_data_out_rom00003,
      I3 => vga_pantalla_Mrom_data_out_rom000037,
      O => vga_pantalla_Mmux_color_226
    );
  vga_pantalla_Mmux_color_2314 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_pantalla_N4,
      I3 => vga_pantalla_Mrom_data_out_rom0000116,
      O => vga_pantalla_Mmux_color_2314_543
    );
  vga_pantalla_Mmux_color_2214 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000186,
      I2 => vga_pantalla_Mrom_data_out_rom0000386,
      I3 => vga_pantalla_Mrom_data_out_rom0000194,
      O => vga_pantalla_Mmux_color_2212_453
    );
  vga_pantalla_Mmux_color_2416 : LUT4
    generic map(
      INIT => X"5702"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000186,
      I2 => vga_pantalla_Mrom_data_out_rom000037,
      I3 => vga_pantalla_Mrom_data_out_rom0000159,
      O => vga_pantalla_Mmux_color_2416_628
    );
  vga_pantalla_Mmux_color_2329 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom000023,
      I3 => vga_pantalla_N22,
      O => vga_pantalla_Mmux_color_2329_559
    );
  vga_pantalla_Mmux_color_2425 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_pantalla_Mrom_data_out_rom0000128,
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2425_638
    );
  vga_pantalla_Mmux_color_285 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000112,
      I2 => vga_pantalla_Mrom_data_out_rom0000397,
      I3 => vga_pantalla_N58,
      O => vga_pantalla_Mmux_color_285_850
    );
  vga_pantalla_Mmux_color_2237 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000198,
      I2 => vga_pantalla_N14,
      I3 => vga_pantalla_Mrom_data_out_rom0000202,
      O => vga_pantalla_Mmux_color_2235_477
    );
  vga_pantalla_Mmux_color_2239 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000223,
      I2 => vga_pantalla_N22,
      I3 => vga_pantalla_Mrom_data_out_rom0000150,
      O => vga_pantalla_Mmux_color_2237_479
    );
  vga_pantalla_Mmux_color_2436 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000187,
      I3 => vga_pantalla_N33,
      O => vga_pantalla_Mmux_color_2435
    );
  vga_pantalla_Mmux_color_2526 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000112,
      I2 => vga_pantalla_N31,
      I3 => vga_pantalla_N33,
      O => vga_pantalla_Mmux_color_2526_704
    );
  vga_pantalla_Mmux_color_2623 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000194,
      I3 => vga_pantalla_Mrom_data_out_rom0000380,
      O => vga_pantalla_Mmux_color_2623_764
    );
  vga_pantalla_Mmux_color_2625 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000100,
      I2 => vga_pantalla_Mrom_data_out_rom000037,
      I3 => vga_pantalla_Mrom_data_out_rom0000380,
      O => vga_pantalla_Mmux_color_2625_766
    );
  vga_pantalla_Mmux_color_186 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_Mmux_color_2440,
      I2 => vga_pantalla_dir_rom(7),
      I3 => N94,
      O => vga_pantalla_Mmux_color_185_266
    );
  vga_pantalla_Mmux_color_2350 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N1,
      I2 => N96,
      I3 => vga_pantalla_Mrom_data_out_rom0000128,
      O => vga_pantalla_Mmux_color_2348_575
    );
  vga_pantalla_Mmux_color_2727 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000041,
      I2 => vga_pantalla_Mrom_data_out_rom0000194,
      I3 => vga_pantalla_Mrom_data_out_rom0000141,
      O => vga_pantalla_Mmux_color_2727_817
    );
  vga_pantalla_Mmux_color_2537 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000065,
      I2 => vga_pantalla_Mrom_data_out_rom0000141,
      I3 => vga_pantalla_Mrom_data_out_rom0000144,
      O => vga_pantalla_Mmux_color_2537_713
    );
  vga_pantalla_Mmux_color_2540 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000029,
      I2 => vga_pantalla_Mrom_data_out_rom0000194,
      I3 => vga_pantalla_N33,
      O => vga_pantalla_Mmux_color_2540_717
    );
  vga_pantalla_Mmux_color_2733 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N22,
      I2 => vga_pantalla_Mrom_data_out_rom0000177,
      I3 => vga_pantalla_Mrom_data_out_rom00003,
      O => vga_pantalla_Mmux_color_2733_824
    );
  vga_pantalla_Mrom_data_out_rom000010912 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(2),
      O => vga_pantalla_N4
    );
  vga_pantalla_Mmux_color_2632 : LUT4
    generic map(
      INIT => X"EB42"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2632_773
    );
  vga_pantalla_Mrom_data_out_rom00001131 : LUT4
    generic map(
      INIT => X"7646"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000113
    );
  vga_pantalla_dir_rom_6_12111 : LUT4
    generic map(
      INIT => X"A9AD"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_dir_rom_6_12111_1071
    );
  vga_pantalla_Mmux_color_224 : LUT4
    generic map(
      INIT => X"59FF"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_pantalla_N33,
      O => vga_pantalla_Mmux_color_224_481
    );
  vga_pantalla_Mmux_color_2229 : LUT4
    generic map(
      INIT => X"FF45"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mmux_color_2227_469
    );
  vga_pantalla_Mrom_data_out_rom0000291 : LUT4
    generic map(
      INIT => X"0206"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom000029
    );
  vga_pantalla_px_3_21 : LUT4
    generic map(
      INIT => X"E860"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_Mrom_data_out_rom0000122,
      I3 => vga_pantalla_Mrom_data_out_rom0000112,
      O => vga_pantalla_px_3_21_1128
    );
  vga_pantalla_Mmux_color_21_f5_111 : LUT4
    generic map(
      INIT => X"59FF"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_pantalla_N33,
      O => vga_pantalla_Mmux_color_21_f5_11_434
    );
  vga_pantalla_Mmux_color_27 : LUT4
    generic map(
      INIT => X"0145"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000297,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000177,
      I3 => vga_pantalla_Mrom_data_out_rom0000215,
      O => vga_pantalla_Mmux_color_27_803
    );
  vga_pantalla_Mmux_color_261 : LUT3
    generic map(
      INIT => X"76"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000022,
      I2 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mmux_color_261_752
    );
  vga_pantalla_Mmux_color_256 : LUT4
    generic map(
      INIT => X"5F13"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_pantalla_Mrom_data_out_rom0000209,
      I2 => vga_pantalla_N26,
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_256_723
    );
  vga_pantalla_Mmux_color_2410 : LUT4
    generic map(
      INIT => X"0145"
    )
    port map (
      I0 => vga_pantalla_N22,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000117,
      I3 => vga_pantalla_N14,
      O => vga_pantalla_Mmux_color_2410_622
    );
  vga_pantalla_Mmux_color_2313 : LUT4
    generic map(
      INIT => X"151F"
    )
    port map (
      I0 => vga_pantalla_N26,
      I1 => N100,
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2313_542
    );
  vga_pantalla_Mmux_color_2117 : LUT4
    generic map(
      INIT => X"15D5"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000114,
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_pantalla_Mrom_data_out_rom0000115,
      O => vga_pantalla_Mmux_color_2115_390
    );
  vga_pantalla_Mmux_color_2119 : LUT4
    generic map(
      INIT => X"0145"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000150,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000297,
      I3 => vga_pantalla_Mrom_data_out_rom0000141,
      O => vga_pantalla_Mmux_color_2117_392
    );
  vga_pantalla_Mmux_color_2322 : LUT4
    generic map(
      INIT => X"0145"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000141,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000116,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_2322_552
    );
  vga_pantalla_Mmux_color_2331 : LUT4
    generic map(
      INIT => X"1F11"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000297,
      I1 => vga_pantalla_Mrom_data_out_rom0000177,
      I2 => vga_pantalla_dir_rom(5),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2331_562
    );
  vga_pantalla_Mmux_color_2338 : LUT4
    generic map(
      INIT => X"010F"
    )
    port map (
      I0 => vga_pantalla_N26,
      I1 => vga_pantalla_Mrom_data_out_rom0000315,
      I2 => vga_pantalla_Mrom_data_out_rom0000215,
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2338_568
    );
  vga_pantalla_Mmux_color_2717 : LUT3
    generic map(
      INIT => X"31"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000215,
      I1 => vga_pantalla_Mrom_data_out_rom0000186,
      I2 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2717_810
    );
  vga_pantalla_Mmux_color_2638 : LUT4
    generic map(
      INIT => X"57DF"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_N28,
      I3 => vga_pantalla_N26,
      O => vga_pantalla_Mmux_color_2638_778
    );
  vga_pantalla_Mrom_data_out_rom00002031 : LUT4
    generic map(
      INIT => X"6062"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000203
    );
  vga_pantalla_Mrom_data_out_rom00002651 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000265
    );
  vga_pantalla_Mrom_data_out_rom000012711 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      O => vga_pantalla_N15
    );
  vga_pantalla_Mrom_data_out_rom000039921 : LUT4
    generic map(
      INIT => X"2A08"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_N58
    );
  vga_pantalla_dir_rom_4_12101 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_N26,
      O => vga_pantalla_dir_rom_4_mmx_out9
    );
  vga_pantalla_dir_rom_4_1231 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000130,
      O => vga_pantalla_dir_rom_4_mmx_out2
    );
  vga_pantalla_dir_rom_4_mmx_out71_inv1 : LUT4
    generic map(
      INIT => X"2A7F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_pantalla_Mrom_data_out_rom000041,
      I3 => vga_pantalla_Mrom_data_out_rom000010,
      O => vga_pantalla_dir_rom_4_mmx_out71_inv
    );
  vga_pantalla_Mmux_color_22_f5_41 : LUT4
    generic map(
      INIT => X"2A7F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_pantalla_Mrom_data_out_rom000041,
      I3 => vga_pantalla_Mrom_data_out_rom000010,
      O => vga_pantalla_Mmux_color_22_f5_4_520
    );
  vga_pantalla_Mmux_color_201 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000116,
      I2 => vga_pantalla_Mrom_data_out_rom0000315,
      I3 => vga_pantalla_Mrom_data_out_rom0000150,
      O => vga_pantalla_Mmux_color_201_327
    );
  vga_pantalla_Mmux_color_21 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000114,
      I2 => vga_pantalla_Mrom_data_out_rom0000315,
      I3 => vga_pantalla_Mrom_data_out_rom0000107,
      O => vga_pantalla_Mmux_color_21_384
    );
  vga_pantalla_Mmux_color_202 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000109,
      I2 => vga_pantalla_Mrom_data_out_rom0000386,
      I3 => vga_pantalla_Mrom_data_out_rom0000123,
      O => vga_pantalla_Mmux_color_202_334
    );
  vga_pantalla_Mmux_color_211 : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N33,
      I2 => vga_pantalla_Mrom_data_out_rom0000186,
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mmux_color_211_385
    );
  vga_pantalla_Mmux_color_212 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000110,
      I3 => vga_pantalla_N4,
      O => vga_pantalla_Mmux_color_212_395
    );
  vga_pantalla_Mmux_color_26 : LUT4
    generic map(
      INIT => X"2A7F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N42,
      I2 => vga_pantalla_N31,
      I3 => vga_pantalla_Mrom_data_out_rom0000124,
      O => vga_pantalla_Mmux_color_26_751
    );
  vga_pantalla_Mmux_color_232 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000177,
      I3 => vga_pantalla_Mrom_data_out_rom0000297,
      O => vga_pantalla_Mmux_color_232_549
    );
  vga_pantalla_Mmux_color_241 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom000024,
      I3 => vga_pantalla_N15,
      O => vga_pantalla_Mmux_color_241_621
    );
  vga_pantalla_Mmux_color_242 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000300,
      I2 => vga_pantalla_Mrom_data_out_rom0000117,
      I3 => vga_pantalla_N22,
      O => vga_pantalla_Mmux_color_242_632
    );
  vga_pantalla_Mmux_color_251 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000107,
      I2 => vga_pantalla_N35,
      I3 => vga_pantalla_Mrom_data_out_rom0000299,
      O => vga_pantalla_Mmux_color_251_690
    );
  vga_pantalla_Mmux_color_243 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000115,
      I2 => vga_pantalla_Mrom_data_out_rom0000150,
      I3 => vga_pantalla_Mrom_data_out_rom0000141,
      O => vga_pantalla_Mmux_color_243_643
    );
  vga_pantalla_Mmux_color_252 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000105,
      I2 => vga_pantalla_Mrom_data_out_rom0000297,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_2315
    );
  vga_pantalla_Mmux_color_253 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000166,
      I2 => vga_pantalla_Mrom_data_out_rom0000177,
      I3 => vga_pantalla_N14,
      O => vga_pantalla_Mmux_color_253_707
    );
  vga_pantalla_Mmux_color_254 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000108,
      I2 => vga_pantalla_N22,
      I3 => vga_pantalla_Mrom_data_out_rom0000209,
      O => vga_pantalla_Mmux_color_254_716
    );
  vga_pantalla_Mmux_color_263 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_N26,
      I3 => vga_pantalla_Mrom_data_out_rom000010,
      O => vga_pantalla_Mmux_color_263_770
    );
  vga_pantalla_Mmux_color_271 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000114,
      I3 => vga_pantalla_N30,
      O => vga_pantalla_Mmux_color_271_804
    );
  vga_pantalla_Mmux_color_234 : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N35,
      I2 => vga_pantalla_Mrom_data_out_rom0000207,
      I3 => vga_pantalla_Mrom_data_out_rom0000171_937,
      O => vga_pantalla_Mmux_color_2012_330
    );
  vga_pantalla_Mmux_color_246 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000114,
      I2 => vga_pantalla_N14,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_2124_400
    );
  vga_pantalla_Mmux_color_255 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_Mrom_data_out_rom0000139,
      I3 => vga_pantalla_Mrom_data_out_rom0000128,
      O => vga_pantalla_Mmux_color_255_722
    );
  vga_pantalla_Mmux_color_257 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000215,
      I3 => vga_pantalla_Mrom_data_out_rom0000186,
      O => vga_pantalla_Mmux_color_257_724
    );
  vga_pantalla_Mmux_color_264 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_N22,
      I3 => vga_pantalla_Mrom_data_out_rom0000209,
      O => vga_pantalla_Mmux_color_264_780
    );
  vga_pantalla_Mmux_color_213 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N31,
      I2 => vga_pantalla_N42,
      I3 => vga_pantalla_Mrom_data_out_rom0000225,
      O => vga_pantalla_Mmux_color_213_402
    );
  vga_pantalla_Mmux_color_223 : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N30,
      I2 => vga_pantalla_Mrom_data_out_rom0000219,
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mmux_color_223_471
    );
  vga_pantalla_Mmux_color_235 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000289,
      I2 => vga_pantalla_Mrom_data_out_rom0000177,
      I3 => vga_pantalla_Mrom_data_out_rom0000136,
      O => vga_pantalla_Mmux_color_235_577
    );
  vga_pantalla_Mmux_color_236 : LUT4
    generic map(
      INIT => X"2A7F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N26,
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_Mrom_data_out_rom0000130,
      O => vga_pantalla_Mmux_color_236_580
    );
  vga_pantalla_Mmux_color_237 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000290,
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_237_581
    );
  vga_pantalla_Mmux_color_249 : LUT4
    generic map(
      INIT => X"2A7F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000041,
      I2 => vga_ctrl_vcount(1),
      I3 => vga_pantalla_Mrom_data_out_rom0000214,
      O => vga_pantalla_Mmux_color_249_661
    );
  vga_pantalla_Mmux_color_225 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000019,
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_225_483
    );
  vga_pantalla_Mmux_color_238 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000117,
      I2 => vga_pantalla_Mrom_data_out_rom0000209,
      I3 => vga_pantalla_N22,
      O => vga_pantalla_Mmux_color_238_582
    );
  vga_pantalla_Mmux_color_258 : LUT4
    generic map(
      INIT => X"5702"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N14,
      I2 => vga_pantalla_N22,
      I3 => vga_pantalla_Mrom_data_out_rom000022,
      O => vga_pantalla_Mmux_color_258_725
    );
  vga_pantalla_Mmux_color_18 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000107,
      I2 => vga_pantalla_N35,
      I3 => vga_pantalla_Mrom_data_out_rom000019,
      O => vga_pantalla_Mmux_color_18_261
    );
  vga_pantalla_Mmux_color_204 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000216,
      I3 => vga_pantalla_N30,
      O => vga_pantalla_Mmux_color_204_336
    );
  vga_pantalla_Mmux_color_205 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => N108,
      I2 => vga_pantalla_N22,
      I3 => vga_pantalla_N14,
      O => vga_pantalla_Mmux_color_205_337
    );
  vga_pantalla_Mmux_color_214 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => N110,
      I2 => vga_pantalla_N22,
      I3 => vga_pantalla_N14,
      O => vga_pantalla_Mmux_color_214_403
    );
  vga_pantalla_Mmux_color_2411 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000289,
      I2 => vga_pantalla_Mrom_data_out_rom0000315,
      I3 => vga_pantalla_Mrom_data_out_rom0000116,
      O => vga_pantalla_Mmux_color_2411_623
    );
  vga_pantalla_Mmux_color_229 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000186,
      I2 => vga_pantalla_Mrom_data_out_rom0000209,
      I3 => vga_pantalla_N22,
      O => vga_pantalla_Mmux_color_227
    );
  vga_pantalla_Mmux_color_2210 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000186,
      I2 => vga_pantalla_N22,
      I3 => vga_pantalla_Mrom_data_out_rom0000209,
      O => vga_pantalla_Mmux_color_228_486
    );
  vga_pantalla_Mmux_color_2412 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000177,
      I2 => vga_pantalla_Mrom_data_out_rom0000209,
      I3 => vga_pantalla_N22,
      O => vga_pantalla_Mmux_color_2412_624
    );
  vga_pantalla_Mmux_color_259 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_pantalla_Mrom_data_out_rom000010,
      I3 => vga_pantalla_N30,
      O => vga_pantalla_Mmux_color_2333
    );
  vga_pantalla_Mmux_color_207 : LUT4
    generic map(
      INIT => X"F7A2"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N35,
      I2 => vga_pantalla_Mrom_data_out_rom0000171_937,
      I3 => vga_pantalla_Mrom_data_out_rom000022,
      O => vga_pantalla_Mmux_color_207_339
    );
  vga_pantalla_Mmux_color_218 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000114,
      I2 => vga_pantalla_Mrom_data_out_rom0000297,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_217_406
    );
  vga_pantalla_Mmux_color_2211 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000122,
      I2 => vga_pantalla_Mrom_data_out_rom0000297,
      I3 => vga_pantalla_Mrom_data_out_rom0000150,
      O => vga_pantalla_Mmux_color_2230
    );
  vga_pantalla_Mmux_color_219 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_Mrom_data_out_rom0000205,
      O => vga_pantalla_Mmux_color_2123_399
    );
  vga_pantalla_Mmux_color_2212 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_pantalla_Mrom_data_out_rom0000186,
      I3 => vga_pantalla_N31,
      O => vga_pantalla_Mmux_color_2210_451
    );
  vga_pantalla_Mmux_color_2413 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000249,
      I2 => vga_pantalla_Mrom_data_out_rom0000186,
      I3 => vga_pantalla_N14,
      O => vga_pantalla_Mmux_color_2413_625
    );
  vga_pantalla_Mmux_color_2510 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000176,
      I2 => vga_pantalla_Mrom_data_out_rom0000116,
      I3 => vga_pantalla_Mrom_data_out_rom0000297,
      O => vga_pantalla_Mmux_color_2510_691
    );
  vga_pantalla_Mmux_color_2213 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_Mrom_data_out_rom0000247,
      O => vga_pantalla_Mmux_color_2211_452
    );
  vga_pantalla_Mmux_color_2414 : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_Mrom_data_out_rom0000130,
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mmux_color_2414_626
    );
  vga_pantalla_Mmux_color_2110 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000191_947,
      I2 => vga_pantalla_Mrom_data_out_rom0000215,
      I3 => vga_pantalla_Mrom_data_out_rom0000297,
      O => vga_pantalla_Mmux_color_219_407
    );
  vga_pantalla_Mmux_color_2215 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000186,
      I2 => vga_pantalla_N22,
      I3 => vga_pantalla_Mrom_data_out_rom0000187,
      O => vga_pantalla_Mmux_color_2213_454
    );
  vga_pantalla_Mmux_color_2216 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_pantalla_Mrom_data_out_rom000022,
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_2214_455
    );
  vga_pantalla_Mmux_color_2415 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000162,
      I2 => vga_pantalla_Mrom_data_out_rom0000141,
      I3 => vga_pantalla_N15,
      O => vga_pantalla_Mmux_color_2415_627
    );
  vga_pantalla_Mmux_color_2511 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000159,
      I3 => vga_pantalla_N30,
      O => vga_pantalla_Mmux_color_2511_692
    );
  vga_pantalla_Mmux_color_2011 : LUT4
    generic map(
      INIT => X"5702"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_Mrom_data_out_rom0000107,
      I2 => vga_pantalla_Mrom_data_out_rom0000141,
      I3 => vga_pantalla_Mmux_color_288_853,
      O => vga_pantalla_Mmux_color_209_341
    );
  vga_pantalla_Mmux_color_2217 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => N112,
      I2 => vga_pantalla_Mrom_data_out_rom0000107,
      I3 => vga_pantalla_Mrom_data_out_rom0000297,
      O => vga_pantalla_Mmux_color_2215_456
    );
  vga_pantalla_Mmux_color_2417 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000209,
      I3 => vga_pantalla_N22,
      O => vga_pantalla_Mmux_color_2417_629
    );
  vga_pantalla_Mmux_color_2418 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N1,
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_Mrom_data_out_rom0000114,
      O => vga_pantalla_Mmux_color_2418_630
    );
  vga_pantalla_Mmux_color_2118 : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N35,
      I2 => vga_pantalla_Mrom_data_out_rom00002,
      I3 => vga_pantalla_Mrom_data_out_rom0000171_937,
      O => vga_pantalla_Mmux_color_2116_391
    );
  vga_pantalla_Mmux_color_2318 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_pantalla_Mrom_data_out_rom000029,
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mmux_color_2318_547
    );
  vga_pantalla_Mmux_color_2319 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000029,
      I2 => vga_pantalla_Mrom_data_out_rom0000141,
      I3 => vga_pantalla_N15,
      O => vga_pantalla_Mmux_color_2319_548
    );
  vga_pantalla_Mmux_color_2320 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000443,
      I2 => vga_pantalla_Mrom_data_out_rom0000209,
      I3 => vga_pantalla_N22,
      O => vga_pantalla_Mmux_color_2320_550
    );
  vga_pantalla_Mmux_color_2419 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000130,
      I2 => vga_pantalla_Mrom_data_out_rom0000209,
      I3 => vga_pantalla_N22,
      O => vga_pantalla_Mmux_color_2419_631
    );
  vga_pantalla_Mmux_color_2222 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000107,
      I2 => vga_pantalla_N35,
      I3 => vga_pantalla_Mrom_data_out_rom0000172,
      O => vga_pantalla_Mmux_color_2220_462
    );
  vga_pantalla_Mmux_color_2223 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_pantalla_Mrom_data_out_rom000041,
      I3 => vga_pantalla_Mrom_data_out_rom0000458,
      O => vga_pantalla_Mmux_color_2221_463
    );
  vga_pantalla_Mmux_color_2321 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000217,
      I2 => vga_pantalla_Mrom_data_out_rom0000141,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_2321_551
    );
  vga_pantalla_Mmux_color_2513 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000041,
      I2 => vga_ctrl_vcount(1),
      I3 => N114,
      O => vga_pantalla_Mmux_color_2513_694
    );
  vga_pantalla_Mmux_color_2323 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N31,
      I2 => vga_pantalla_N42,
      I3 => vga_pantalla_Mrom_data_out_rom0000153,
      O => vga_pantalla_Mmux_color_2323_553
    );
  vga_pantalla_Mmux_color_265 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000107,
      I2 => vga_pantalla_N35,
      I3 => vga_pantalla_Mrom_data_out_rom0000153,
      O => vga_pantalla_Mmux_color_265_784
    );
  vga_pantalla_Mmux_color_2012 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000133,
      I3 => N116,
      O => vga_pantalla_Mmux_color_2010
    );
  vga_pantalla_Mmux_color_28 : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000107,
      I2 => vga_pantalla_Mrom_data_out_rom0000136,
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mmux_color_28_837
    );
  vga_pantalla_Mmux_color_29 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000116,
      I2 => vga_pantalla_Mrom_data_out_rom0000297,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_29_859
    );
  vga_pantalla_Mmux_color_2226 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000131,
      I2 => vga_pantalla_Mrom_data_out_rom0000141,
      I3 => vga_pantalla_Mrom_data_out_rom0000107,
      O => vga_pantalla_Mmux_color_2224_466
    );
  vga_pantalla_Mmux_color_2325 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N31,
      I2 => vga_ctrl_vcount(3),
      I3 => N118,
      O => vga_pantalla_Mmux_color_2325_555
    );
  vga_pantalla_Mmux_color_2122 : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N31,
      I2 => vga_pantalla_Mrom_data_out_rom0000110,
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mmux_color_2120_396
    );
  vga_pantalla_Mmux_color_2228 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000373,
      I2 => vga_pantalla_N14,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_2226_468
    );
  vga_pantalla_Mmux_color_2514 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N1,
      I2 => vga_pantalla_Mrom_data_out_rom000029,
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mmux_color_2514_695
    );
  vga_pantalla_Mmux_color_267 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000116,
      I2 => vga_pantalla_Mrom_data_out_rom0000215,
      I3 => vga_pantalla_Mrom_data_out_rom0000297,
      O => vga_pantalla_Mmux_color_267_786
    );
  vga_pantalla_Mmux_color_2515 : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N27,
      I2 => vga_pantalla_Mrom_data_out_rom0000113,
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mmux_color_2515_696
    );
  vga_pantalla_Mmux_color_2516 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000157,
      I2 => vga_pantalla_N15,
      I3 => vga_pantalla_Mrom_data_out_rom0000141,
      O => vga_pantalla_Mmux_color_2516_697
    );
  vga_pantalla_Mmux_color_2231 : LUT4
    generic map(
      INIT => X"888D"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_Mmux_color_2814_842,
      I2 => vga_pantalla_Mrom_data_out_rom0000177,
      I3 => vga_pantalla_Mrom_data_out_rom0000297,
      O => vga_pantalla_Mmux_color_2229_470
    );
  vga_pantalla_Mmux_color_2426 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => N120,
      I2 => vga_pantalla_N14,
      I3 => vga_pantalla_Mrom_data_out_rom000024,
      O => vga_pantalla_Mmux_color_2426_639
    );
  vga_pantalla_Mmux_color_2610 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000218,
      I3 => vga_pantalla_N27,
      O => vga_pantalla_Mmux_color_2610_753
    );
  vga_pantalla_Mmux_color_2519 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_pantalla_Mrom_data_out_rom0000142,
      I3 => vga_pantalla_N31,
      O => vga_pantalla_Mmux_color_2439
    );
  vga_pantalla_Mmux_color_2612 : LUT4
    generic map(
      INIT => X"FFAB"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2612_755
    );
  vga_pantalla_Mmux_color_276 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000126,
      I2 => vga_pantalla_Mrom_data_out_rom000014,
      I3 => vga_pantalla_Mrom_data_out_rom000023,
      O => vga_pantalla_Mmux_color_2535
    );
  vga_pantalla_Mmux_color_283 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000150,
      I3 => vga_pantalla_N33,
      O => vga_pantalla_Mmux_color_283_848
    );
  vga_pantalla_Mmux_color_278 : LUT4
    generic map(
      INIT => X"111F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_Mrom_data_out_rom0000150,
      I3 => vga_pantalla_N33,
      O => vga_pantalla_Mmux_color_278_827
    );
  vga_pantalla_Mmux_color_284_SW0 : LUT4
    generic map(
      INIT => X"89F7"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_dir_rom(4),
      O => N122
    );
  vga_pantalla_Mmux_color_284 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom000010,
      I3 => N122,
      O => vga_pantalla_Mmux_color_284_849
    );
  vga_pantalla_Mmux_color_2613 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_pantalla_Mrom_data_out_rom0000153,
      I3 => vga_pantalla_N31,
      O => vga_pantalla_Mmux_color_2613_756
    );
  vga_pantalla_Mmux_color_2710 : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N30,
      I2 => vga_pantalla_Mrom_data_out_rom0000148,
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mmux_color_2710_805
    );
  vga_pantalla_Mmux_color_286 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000107,
      I2 => vga_pantalla_N35,
      I3 => vga_pantalla_Mrom_data_out_rom0000146,
      O => vga_pantalla_Mmux_color_286_851
    );
  vga_pantalla_Mmux_color_287 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000143,
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_Mrom_data_out_rom0000150,
      O => vga_pantalla_Mmux_color_287_852
    );
  vga_pantalla_Mmux_color_292 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000149,
      I2 => vga_pantalla_Mrom_data_out_rom0000150,
      I3 => vga_pantalla_N33,
      O => vga_pantalla_Mmux_color_292_862
    );
  vga_pantalla_Mmux_color_2123 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000315,
      I3 => vga_pantalla_Mrom_data_out_rom0000116,
      O => vga_pantalla_Mmux_color_2121_397
    );
  vga_pantalla_Mmux_color_2124 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000114,
      I2 => vga_pantalla_Mrom_data_out_rom0000186,
      I3 => vga_pantalla_Mrom_data_out_rom0000215,
      O => vga_pantalla_Mmux_color_2122_398
    );
  vga_pantalla_Mmux_color_2233 : LUT4
    generic map(
      INIT => X"2A7F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N26,
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_Mrom_data_out_rom000010,
      O => vga_pantalla_Mmux_color_2231_473
    );
  vga_pantalla_Mmux_color_2332 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_pantalla_Mrom_data_out_rom0000203,
      I3 => vga_pantalla_N31,
      O => vga_pantalla_Mmux_color_2332_563
    );
  vga_pantalla_Mmux_color_2235 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_N26,
      I3 => vga_pantalla_Mrom_data_out_rom0000201,
      O => vga_pantalla_Mmux_color_2233_475
    );
  vga_pantalla_Mmux_color_2236 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000150,
      I3 => vga_pantalla_Mrom_data_out_rom0000297,
      O => vga_pantalla_Mmux_color_2234_476
    );
  vga_pantalla_Mmux_color_2334 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_pantalla_Mrom_data_out_rom0000196,
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mmux_color_2334_565
    );
  vga_pantalla_Mmux_color_2336 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000221,
      I2 => vga_pantalla_Mrom_data_out_rom0000315,
      I3 => vga_pantalla_Mrom_data_out_rom0000116,
      O => vga_pantalla_Mmux_color_2336_566
    );
  vga_pantalla_Mmux_color_2337 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_pantalla_Mrom_data_out_rom000041,
      I3 => vga_pantalla_Mrom_data_out_rom0000172,
      O => vga_pantalla_Mmux_color_2337_567
    );
  vga_pantalla_Mmux_color_2429 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_pantalla_Mrom_data_out_rom000041,
      I3 => vga_pantalla_Mrom_data_out_rom0000214,
      O => vga_pantalla_Mmux_color_2429_642
    );
  vga_pantalla_Mmux_color_2340 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000217,
      I2 => vga_pantalla_Mrom_data_out_rom0000177,
      I3 => vga_pantalla_Mrom_data_out_rom0000315,
      O => vga_pantalla_Mmux_color_2340_569
    );
  vga_pantalla_Mmux_color_2430 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000107,
      I2 => vga_pantalla_N35,
      I3 => vga_pantalla_Mrom_data_out_rom0000216,
      O => vga_pantalla_Mmux_color_2430_644
    );
  vga_pantalla_Mmux_color_2341 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_pantalla_Mrom_data_out_rom0000214,
      I3 => vga_pantalla_N31,
      O => vga_pantalla_Mmux_color_2341_570
    );
  vga_pantalla_Mmux_color_2431 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000212,
      I2 => vga_pantalla_N15,
      I3 => vga_pantalla_Mrom_data_out_rom0000141,
      O => vga_pantalla_Mmux_color_2431_645
    );
  vga_pantalla_Mmux_color_2432 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000019,
      I2 => vga_pantalla_N22,
      I3 => vga_pantalla_Mrom_data_out_rom0000117,
      O => vga_pantalla_Mmux_color_2432_646
    );
  vga_pantalla_Mmux_color_2521 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N31,
      I2 => vga_pantalla_N42,
      I3 => vga_pantalla_Mrom_data_out_rom0000172,
      O => vga_pantalla_Mmux_color_2521_701
    );
  vga_pantalla_Mmux_color_2342 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000104,
      I2 => vga_pantalla_Mrom_data_out_rom0000297,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_2342_571
    );
  vga_pantalla_Mmux_color_2522 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000166,
      I2 => vga_pantalla_N14,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_2522_702
    );
  vga_pantalla_Mmux_color_2713 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000116,
      I2 => vga_pantalla_Mrom_data_out_rom0000215,
      I3 => vga_pantalla_Mrom_data_out_rom00003,
      O => vga_pantalla_Mmux_color_2713_806
    );
  vga_pantalla_Mmux_color_30 : LUT4
    generic map(
      INIT => X"2A7F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N31,
      I2 => vga_ctrl_vcount(3),
      I3 => vga_pantalla_Mrom_data_out_rom0000176,
      O => vga_pantalla_Mmux_color_30_869
    );
  vga_pantalla_Mmux_color_294 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_pantalla_Mrom_data_out_rom0000130,
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mmux_color_294_864
    );
  vga_pantalla_Mmux_color_2616 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000189,
      I2 => vga_pantalla_Mrom_data_out_rom0000215,
      I3 => vga_pantalla_Mrom_data_out_rom0000297,
      O => vga_pantalla_Mmux_color_2616_759
    );
  vga_pantalla_Mmux_color_2811 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000186,
      I3 => vga_pantalla_Mrom_data_out_rom0000215,
      O => vga_pantalla_Mmux_color_2811_839
    );
  vga_pantalla_Mmux_color_2344 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000123,
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_2344_572
    );
  vga_pantalla_Mmux_color_2718 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000126,
      I2 => vga_pantalla_Mrom_data_out_rom0000297,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_2718_811
    );
  vga_pantalla_Mmux_color_2812 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000124,
      I2 => vga_pantalla_Mrom_data_out_rom0000215,
      I3 => vga_pantalla_Mrom_data_out_rom0000297,
      O => vga_pantalla_Mmux_color_2812_840
    );
  vga_pantalla_Mmux_color_2813 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000115,
      I2 => vga_pantalla_Mrom_data_out_rom0000209,
      I3 => vga_pantalla_N22,
      O => vga_pantalla_Mmux_color_2813_841
    );
  vga_pantalla_Mmux_color_2619 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000100,
      I3 => vga_pantalla_N30,
      O => vga_pantalla_Mmux_color_2619_761
    );
  vga_pantalla_Mmux_color_2814 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000107,
      I2 => vga_pantalla_Mrom_data_out_rom0000141,
      I3 => vga_pantalla_Mrom_data_out_rom0000116,
      O => vga_pantalla_Mmux_color_2814_842
    );
  vga_pantalla_Mmux_color_295 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000104,
      I2 => vga_pantalla_Mrom_data_out_rom0000150,
      I3 => vga_pantalla_Mrom_data_out_rom0000315,
      O => vga_pantalla_Mmux_color_295_865
    );
  vga_pantalla_Mmux_color_2620 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => N124,
      I2 => vga_pantalla_Mrom_data_out_rom0000297,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_2620_763
    );
  vga_pantalla_Mmux_color_2720 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000163,
      I2 => vga_pantalla_Mrom_data_out_rom000024,
      I3 => vga_pantalla_N15,
      O => vga_pantalla_Mmux_color_2720_812
    );
  vga_pantalla_Mmux_color_2816 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_Mrom_data_out_rom0000299,
      I3 => vga_pantalla_N28,
      O => vga_pantalla_Mmux_color_2816_843
    );
  vga_pantalla_Mmux_color_2529 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N1,
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_Mrom_data_out_rom000010,
      O => vga_pantalla_Mmux_color_2529_706
    );
  vga_pantalla_Mmux_color_2722 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => N126,
      I2 => vga_pantalla_Mrom_data_out_rom0000131,
      I3 => vga_pantalla_Mrom_data_out_rom0000201,
      O => vga_pantalla_Mmux_color_2722_814
    );
  vga_pantalla_Mmux_color_2624 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_Mrom_data_out_rom0000108,
      O => vga_pantalla_Mmux_color_2624_765
    );
  vga_pantalla_Mmux_color_2626 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_pantalla_Mrom_data_out_rom000094,
      I3 => vga_pantalla_N31,
      O => vga_pantalla_Mmux_color_2626_767
    );
  vga_pantalla_Mmux_color_2817 : LUT4
    generic map(
      INIT => X"82D7"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_pantalla_Mrom_data_out_rom0000127,
      O => vga_pantalla_Mmux_color_2817_844
    );
  vga_pantalla_Mmux_color_31 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_N26,
      I3 => vga_pantalla_Mrom_data_out_rom0000117,
      O => vga_pantalla_Mmux_color_31_874
    );
  vga_pantalla_Mmux_color_321 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N22,
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_Mrom_data_out_rom0000150,
      O => vga_pantalla_Mmux_color_321_879
    );
  vga_pantalla_Mmux_color_297 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => vga_pantalla_N30,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mmux_color_2541
    );
  vga_pantalla_Mmux_color_298 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000114,
      I2 => vga_pantalla_Mrom_data_out_rom0000133,
      I3 => vga_pantalla_Mrom_data_out_rom0000117,
      O => vga_pantalla_Mmux_color_298_866
    );
  vga_pantalla_Mmux_color_301 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000145,
      I2 => vga_pantalla_Mrom_data_out_rom0000177,
      I3 => vga_pantalla_Mrom_data_out_rom0000136,
      O => vga_pantalla_Mmux_color_301_870
    );
  vga_pantalla_Mmux_color_302 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000146,
      I2 => vga_pantalla_Mrom_data_out_rom0000215,
      I3 => vga_pantalla_Mrom_data_out_rom0000133,
      O => vga_pantalla_Mmux_color_302_871
    );
  vga_pantalla_Mmux_color_303 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000148,
      I2 => vga_pantalla_N14,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_303_872
    );
  vga_pantalla_Mmux_color_312 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000149,
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_Mrom_data_out_rom0000150,
      O => vga_pantalla_Mmux_color_312_876
    );
  vga_pantalla_Mmux_color_2820 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000031_990,
      I2 => vga_pantalla_N15,
      I3 => vga_pantalla_Mrom_data_out_rom0000141,
      O => vga_pantalla_Mmux_color_2819
    );
  vga_pantalla_Mmux_color_2243 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000126,
      I2 => vga_pantalla_Mrom_data_out_rom0000141,
      I3 => vga_pantalla_Mrom_data_out_rom0000116,
      O => vga_pantalla_Mmux_color_2240_482
    );
  vga_pantalla_Mmux_color_2726 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N1,
      I2 => vga_pantalla_Mrom_data_out_rom0000125,
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mmux_color_2726_816
    );
  vga_pantalla_Mmux_color_2629 : LUT4
    generic map(
      INIT => X"FF45"
    )
    port map (
      I0 => vga_pantalla_N22,
      I1 => vga_ctrl_vcount(4),
      I2 => vga_pantalla_N30,
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2629_769
    );
  vga_pantalla_Mmux_color_2630 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_pantalla_Mrom_data_out_rom000033,
      I3 => vga_pantalla_N30,
      O => vga_pantalla_Mmux_color_2630_771
    );
  vga_pantalla_Mmux_color_2353 : LUT4
    generic map(
      INIT => X"888D"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_Mmux_color_28_837,
      I2 => vga_pantalla_Mrom_data_out_rom0000177,
      I3 => vga_pantalla_Mrom_data_out_rom0000297,
      O => vga_pantalla_Mmux_color_2351_579
    );
  vga_pantalla_Mmux_color_2728 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => vga_pantalla_N27,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mmux_color_2728_818
    );
  vga_pantalla_Mmux_color_2534 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_N14,
      I3 => vga_pantalla_Mrom_data_out_rom000024,
      O => vga_pantalla_Mmux_color_2534_710
    );
  vga_pantalla_Mmux_color_2729 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_Mrom_data_out_rom0000218,
      I3 => vga_pantalla_N26,
      O => vga_pantalla_Mmux_color_2729_819
    );
  vga_pantalla_Mmux_color_2536 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_pantalla_Mrom_data_out_rom0000100,
      I3 => vga_pantalla_N31,
      O => vga_pantalla_Mmux_color_2536_712
    );
  vga_pantalla_Mmux_color_2539 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N31,
      I2 => vga_pantalla_N42,
      I3 => vga_pantalla_Mrom_data_out_rom0000393,
      O => vga_pantalla_Mmux_color_2539_715
    );
  vga_pantalla_Mmux_color_2635 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000393,
      I2 => vga_pantalla_Mrom_data_out_rom0000315,
      I3 => vga_pantalla_Mrom_data_out_rom0000107,
      O => vga_pantalla_Mmux_color_2635_775
    );
  vga_pantalla_Mmux_color_2636 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000435,
      I2 => vga_pantalla_Mrom_data_out_rom0000136,
      I3 => vga_pantalla_Mrom_data_out_rom0000144,
      O => vga_pantalla_Mmux_color_2636_776
    );
  vga_pantalla_Mmux_color_2730 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000055,
      I2 => vga_pantalla_Mrom_data_out_rom0000150,
      I3 => vga_pantalla_N33,
      O => vga_pantalla_Mmux_color_2730_821
    );
  vga_pantalla_Mmux_color_2451 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N31,
      I2 => vga_pantalla_N42,
      I3 => vga_pantalla_Mrom_data_out_rom0000106,
      O => vga_pantalla_Mmux_color_2450
    );
  vga_pantalla_Mmux_color_2542 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000114,
      I2 => vga_pantalla_Mrom_data_out_rom0000215,
      I3 => vga_pantalla_Mrom_data_out_rom0000133,
      O => vga_pantalla_Mmux_color_2542_719
    );
  vga_pantalla_Mmux_color_2637 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => N128,
      I2 => vga_pantalla_Mrom_data_out_rom0000117,
      I3 => vga_pantalla_Mrom_data_out_rom0000133,
      O => vga_pantalla_Mmux_color_2637_777
    );
  vga_pantalla_Mmux_color_2639 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_pantalla_N31,
      I3 => vga_pantalla_Mrom_data_out_rom0000458,
      O => vga_pantalla_Mmux_color_2639_779
    );
  vga_pantalla_Mmux_color_2731 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000217,
      I2 => vga_pantalla_Mrom_data_out_rom0000177,
      I3 => vga_pantalla_Mrom_data_out_rom0000141,
      O => vga_pantalla_Mmux_color_2731_822
    );
  vga_pantalla_Mmux_color_2641 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => N130,
      I2 => vga_pantalla_Mrom_data_out_rom0000215,
      I3 => vga_pantalla_Mrom_data_out_rom0000133,
      O => vga_pantalla_Mmux_color_2641_782
    );
  vga_pantalla_Mmux_color_2734 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000458,
      I2 => vga_pantalla_Mrom_data_out_rom0000141,
      I3 => vga_pantalla_Mrom_data_out_rom0000116,
      O => vga_pantalla_Mmux_color_2734_825
    );
  vga_pantalla_Mrom_data_out_rom00001031_inv1 : LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom00001031_inv
    );
  vga_pantalla_dir_rom_5_251 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N35,
      I2 => vga_pantalla_dir_rom(5),
      I3 => vga_pantalla_Mrom_data_out_rom0000171_937,
      O => vga_pantalla_dir_rom_5_26
    );
  vga_pantalla_Mrom_data_out_rom00004581 : LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000458
    );
  vga_pantalla_Mrom_data_out_rom00002991 : LUT4
    generic map(
      INIT => X"0660"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000299
    );
  vga_pantalla_Mrom_data_out_rom00002451 : LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000245
    );
  vga_pantalla_Mrom_data_out_rom00001042 : LUT4
    generic map(
      INIT => X"5557"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000104
    );
  vga_pantalla_Mrom_data_out_rom00002861 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom00002
    );
  vga_pantalla_Mrom_data_out_rom00001871 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom0000187
    );
  vga_pantalla_Mrom_data_out_rom00001101 : LUT4
    generic map(
      INIT => X"55EA"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000110
    );
  vga_pantalla_dir_rom_4_mmx_out81_inv1 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_N22,
      I3 => vga_pantalla_Mrom_data_out_rom0000187,
      O => vga_pantalla_dir_rom_4_mmx_out81_inv
    );
  vga_pantalla_Mrom_data_out_rom00001161 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000116
    );
  vga_pantalla_dir_rom_6_4_SW0 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000116,
      I2 => vga_pantalla_Mrom_data_out_rom00002,
      I3 => vga_pantalla_Mrom_data_out_rom0000141,
      O => N22
    );
  vga_pantalla_dir_rom_6_8_SW0 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000123,
      I3 => vga_pantalla_Mrom_data_out_rom0000386,
      O => N26
    );
  vga_pantalla_dir_rom_5_31 : LUT4
    generic map(
      INIT => X"1F11"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000297,
      I1 => vga_pantalla_Mrom_data_out_rom0000177,
      I2 => vga_pantalla_dir_rom(5),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_dir_rom_5_3
    );
  vga_pantalla_dir_rom_6_16_SW0 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000141,
      I3 => vga_pantalla_N15,
      O => N46
    );
  vga_pantalla_dir_rom_4_51 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000130,
      I2 => vga_pantalla_Mrom_data_out_rom0000150,
      I3 => vga_pantalla_N33,
      O => vga_pantalla_dir_rom_4_6
    );
  vga_pantalla_Mrom_data_out_rom000019211 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(4),
      O => vga_pantalla_N28
    );
  vga_pantalla_dir_rom_4_1 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000194,
      I2 => vga_pantalla_Mrom_data_out_rom0000209,
      I3 => vga_pantalla_N22,
      O => vga_pantalla_dir_rom_4_1_1051
    );
  vga_pantalla_Mmux_color_19_f51 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000116,
      I2 => vga_pantalla_Mrom_data_out_rom0000315,
      I3 => vga_pantalla_Mrom_data_out_rom0000150,
      O => vga_pantalla_Mmux_color_19_f510
    );
  vga_pantalla_Mmux_color_20_f52 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000110,
      I3 => vga_pantalla_N4,
      O => vga_pantalla_Mmux_color_20_f519
    );
  vga_pantalla_Mmux_color_22_f5_29 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000114,
      I2 => vga_pantalla_N14,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_22_f5_2_518
    );
  vga_pantalla_Mmux_color_22_f5_210 : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N35,
      I2 => vga_pantalla_Mrom_data_out_rom0000207,
      I3 => vga_pantalla_Mrom_data_out_rom0000171_937,
      O => vga_pantalla_Mmux_color_22_f5_21_519
    );
  vga_pantalla_Mmux_color_23_f5_23 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_Mrom_data_out_rom0000139,
      I3 => vga_pantalla_Mrom_data_out_rom0000128,
      O => vga_pantalla_Mmux_color_23_f5_2_606
    );
  vga_pantalla_Mmux_color_24_f5_110 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_N22,
      I3 => vga_pantalla_Mrom_data_out_rom0000209,
      O => vga_pantalla_Mmux_color_24_f5_1_683
    );
  vga_pantalla_Mmux_color_21_f5_110 : LUT4
    generic map(
      INIT => X"2A7F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N26,
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_Mrom_data_out_rom0000130,
      O => vga_pantalla_Mmux_color_21_f5_1_433
    );
  vga_pantalla_Mmux_color_17_f52 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000107,
      I2 => vga_pantalla_N35,
      I3 => vga_pantalla_Mrom_data_out_rom000019,
      O => vga_pantalla_Mmux_color_17_f57
    );
  vga_pantalla_Mmux_color_21_f5_41 : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000186,
      I2 => vga_pantalla_N22,
      I3 => vga_pantalla_Mrom_data_out_rom0000209,
      O => vga_pantalla_Mmux_color_21_f5_4_435
    );
  vga_pantalla_Mmux_color_20_f5_21 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000122,
      I2 => vga_pantalla_Mrom_data_out_rom0000297,
      I3 => vga_pantalla_Mrom_data_out_rom0000150,
      O => vga_pantalla_Mmux_color_20_f5_2_364
    );
  vga_pantalla_Mmux_color_20_f5_22 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_N22,
      I3 => vga_pantalla_Mrom_data_out_rom0000187,
      O => vga_pantalla_Mmux_color_20_f5_21_365
    );
  vga_pantalla_Mmux_color_20_f5_31 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_Mrom_data_out_rom0000205,
      O => vga_pantalla_Mmux_color_20_f5_3_366
    );
  vga_pantalla_Mmux_color_22_f5_71 : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_Mrom_data_out_rom0000130,
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mmux_color_22_f5_7_521
    );
  vga_pantalla_Mmux_color_22_f5_72 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000105,
      I2 => vga_pantalla_Mrom_data_out_rom0000297,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_22_f5_71_522
    );
  vga_pantalla_Mmux_color_22_f5_91 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom000010,
      I2 => vga_pantalla_Mrom_data_out_rom0000209,
      I3 => vga_pantalla_N22,
      O => vga_pantalla_Mmux_color_22_f5_9_524
    );
  vga_pantalla_Mmux_color_20_f5_91 : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N35,
      I2 => vga_pantalla_Mrom_data_out_rom00002,
      I3 => vga_pantalla_Mrom_data_out_rom0000171_937,
      O => vga_pantalla_Mmux_color_20_f5_9_367
    );
  vga_pantalla_Mmux_color_21_f5_81 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_pantalla_Mrom_data_out_rom000029,
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mmux_color_21_f5_8_436
    );
  vga_pantalla_Mmux_color_24_f5_51 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_pantalla_Mrom_data_out_rom0000142,
      I3 => vga_pantalla_N31,
      O => vga_pantalla_Mmux_color_24_f5_5_684
    );
  vga_pantalla_Mmux_color_25_f5_41 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000126,
      I2 => vga_pantalla_Mrom_data_out_rom000014,
      I3 => vga_pantalla_Mrom_data_out_rom000023,
      O => vga_pantalla_Mmux_color_25_f5_4_745
    );
  vga_pantalla_Mmux_color_25_f5_51 : LUT4
    generic map(
      INIT => X"4E5F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_pantalla_Mrom_data_out_rom0000153,
      I3 => vga_pantalla_N31,
      O => vga_pantalla_Mmux_color_25_f5_5_746
    );
  vga_pantalla_Mmux_color_20_f5_141 : LUT4
    generic map(
      INIT => X"2A7F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N26,
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_Mrom_data_out_rom000010,
      O => vga_pantalla_Mmux_color_20_f5_14_363
    );
  vga_pantalla_Mmux_color_22_f5_191 : LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mmux_color_22_f5_19_516
    );
  vga_pantalla_Mmux_color_22_f5_192 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000104,
      I2 => vga_pantalla_Mrom_data_out_rom0000297,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_22_f5_191_517
    );
  vga_pantalla_Mmux_color_27_f5_51 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => vga_pantalla_N30,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mmux_color_27_f5_5_835
    );
  vga_pantalla_Mrom_data_out_rom0000320 : LUT4
    generic map(
      INIT => X"0984"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000320_992
    );
  vga_pantalla_Mrom_data_out_rom000064 : LUT4
    generic map(
      INIT => X"36BC"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom000064_1008
    );
  vga_pantalla_Mrom_data_out_rom00002631 : LUT4
    generic map(
      INIT => X"238A"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000263
    );
  vga_pantalla_Mrom_data_out_rom00001931 : LUT4
    generic map(
      INIT => X"44A6"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom0000193
    );
  vga_pantalla_Mmux_color_2426_SW0 : LUT4
    generic map(
      INIT => X"57EE"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(3),
      O => N120
    );
  vga_pantalla_Mmux_color_248 : LUT4
    generic map(
      INIT => X"57D7"
    )
    port map (
      I0 => vga_pantalla_N33,
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_248_660
    );
  vga_pantalla_Mmux_color_2715 : LUT4
    generic map(
      INIT => X"32FF"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => N138,
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mmux_color_2715_808
    );
  vga_pantalla_Mmux_color_23_f5_31 : LUT4
    generic map(
      INIT => X"57D7"
    )
    port map (
      I0 => vga_pantalla_N33,
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_23_f5_3_607
    );
  vga_pantalla_Mrom_data_out_rom00001272 : LUT4
    generic map(
      INIT => X"5E56"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000127
    );
  vga_pantalla_Mrom_data_out_rom00002251 : LUT4
    generic map(
      INIT => X"0460"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000225
    );
  vga_pantalla_Mmux_color_2722_SW0 : LUT3
    generic map(
      INIT => X"7E"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      O => N126
    );
  vga_pantalla_Mrom_data_out_rom000010121 : LUT4
    generic map(
      INIT => X"0018"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000144
    );
  vga_pantalla_Mrom_data_out_rom00001481 : LUT4
    generic map(
      INIT => X"4660"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000148
    );
  vga_pantalla_Mrom_data_out_rom00001641 : LUT4
    generic map(
      INIT => X"565A"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000164
    );
  vga_pantalla_Mrom_data_out_rom00001911 : LUT4
    generic map(
      INIT => X"1418"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000191_947
    );
  vga_pantalla_Mrom_data_out_rom00002901 : LUT4
    generic map(
      INIT => X"2818"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000290
    );
  vga_pantalla_Mrom_data_out_rom00001891 : LUT4
    generic map(
      INIT => X"1418"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000189
    );
  vga_pantalla_Mrom_data_out_rom00002141 : LUT4
    generic map(
      INIT => X"6AEA"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000214
    );
  vga_pantalla_Mrom_data_out_rom0000331 : LUT4
    generic map(
      INIT => X"55FE"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom000033
    );
  vga_pantalla_Mrom_data_out_rom00001301 : LUT4
    generic map(
      INIT => X"565A"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000130
    );
  vga_pantalla_Mrom_data_out_rom0000411 : LUT3
    generic map(
      INIT => X"24"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom000041
    );
  vga_pantalla_Mrom_data_out_rom00001941 : LUT4
    generic map(
      INIT => X"4140"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom0000194
    );
  vga_pantalla_Mrom_data_out_rom00001431 : LUT4
    generic map(
      INIT => X"6620"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000143
    );
  vga_pantalla_Mmux_color_2427 : LUT4
    generic map(
      INIT => X"15D5"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom000010,
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_pantalla_Mrom_data_out_rom0000130,
      O => vga_pantalla_Mmux_color_2427_640
    );
  vga_pantalla_Mmux_color_221_SW0 : LUT4
    generic map(
      INIT => X"5510"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(4),
      O => N90
    );
  vga_pantalla_Mmux_color_281 : LUT4
    generic map(
      INIT => X"B2B7"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mmux_color_281_838
    );
  vga_pantalla_dir_rom_4_81 : LUT4
    generic map(
      INIT => X"9899"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_dir_rom_4_9
    );
  vga_pantalla_Mmux_color_2313_SW0 : LUT4
    generic map(
      INIT => X"0145"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(3),
      O => N100
    );
  vga_pantalla_Mmux_color_282 : LUT4
    generic map(
      INIT => X"0111"
    )
    port map (
      I0 => vga_pantalla_N33,
      I1 => vga_pantalla_Mrom_data_out_rom0000177,
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_pantalla_N14,
      O => vga_pantalla_Mmux_color_282_846
    );
  vga_pantalla_Mmux_color_2711 : LUT4
    generic map(
      INIT => X"040F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_Mrom_data_out_rom0000150,
      I3 => vga_pantalla_N33,
      O => vga_pantalla_Mmux_color_2543
    );
  vga_pantalla_Mmux_color_2240 : LUT4
    generic map(
      INIT => X"91FF"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_pantalla_N33,
      O => vga_pantalla_Mmux_color_2238_480
    );
  vga_pantalla_Mmux_color_2544 : LUT4
    generic map(
      INIT => X"040F"
    )
    port map (
      I0 => vga_pantalla_N1,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000177,
      I3 => vga_pantalla_N33,
      O => vga_pantalla_Mmux_color_2544_721
    );
  vga_pantalla_Mrom_data_out_rom00002491 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000249
    );
  vga_pantalla_Mrom_data_out_rom00001081 : LUT4
    generic map(
      INIT => X"1404"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000108
    );
  vga_pantalla_Mmux_color_26_f5_31 : LUT4
    generic map(
      INIT => X"040F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_Mrom_data_out_rom0000150,
      I3 => vga_pantalla_N33,
      O => vga_pantalla_Mmux_color_26_f5_3_801
    );
  vga_pantalla_Mrom_data_out_rom00001181_inv1 : LUT3
    generic map(
      INIT => X"89"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom00001181_inv
    );
  vga_pantalla_Mmux_color_23_f5_81 : LUT4
    generic map(
      INIT => X"FF89"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_23_f5_8_608
    );
  vga_pantalla_Mmux_color_2447 : LUT4
    generic map(
      INIT => X"FF57"
    )
    port map (
      I0 => vga_pantalla_N33,
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2446
    );
  vga_pantalla_Mrom_data_out_rom00001421 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000142
    );
  vga_pantalla_Mrom_data_out_rom00001571 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000157
    );
  vga_pantalla_Mrom_data_out_rom00001092 : LUT4
    generic map(
      INIT => X"0506"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000109
    );
  vga_pantalla_Mrom_data_out_rom00002021 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000202
    );
  vga_pantalla_Mrom_data_out_rom00002151 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000215
    );
  vga_pantalla_dir_rom_5_131 : LUT4
    generic map(
      INIT => X"F11F"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000177,
      I1 => vga_pantalla_Mrom_data_out_rom0000297,
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_pantalla_dir_rom(5),
      O => vga_pantalla_dir_rom_5_13
    );
  vga_pantalla_dir_rom_4_mmx_out91_inv1 : LUT4
    generic map(
      INIT => X"2A7F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N26,
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_Mrom_data_out_rom000010,
      O => vga_pantalla_dir_rom_4_mmx_out91_inv
    );
  vga_pantalla_Mrom_data_out_rom0000371 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom000037
    );
  vga_pantalla_Mrom_data_out_rom000011421 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000209
    );
  vga_pantalla_dir_rom_4_1221 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N22,
      I2 => vga_pantalla_Mrom_data_out_rom0000209,
      I3 => vga_pantalla_Mrom_data_out_rom0000115,
      O => vga_pantalla_dir_rom_4_mmx_out10
    );
  vga_pantalla_Mrom_data_out_rom00003861 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom0000386
    );
  vga_pantalla_Mrom_data_out_rom000031 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom00003
    );
  vga_pantalla_Mmux_color_2448 : LUT4
    generic map(
      INIT => X"FF45"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom000023,
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2447_655
    );
  vga_pantalla_Mmux_color_2324 : LUT4
    generic map(
      INIT => X"F11F"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000177,
      I1 => vga_pantalla_Mrom_data_out_rom0000297,
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_2324_554
    );
  vga_pantalla_Mmux_color_2234 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000187,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_N26,
      O => vga_pantalla_Mmux_color_2232
    );
  vga_pantalla_Mmux_color_19 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_19_288
    );
  vga_pantalla_Mmux_color_244 : LUT4
    generic map(
      INIT => X"FF45"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000144,
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_244_652
    );
  vga_pantalla_Mmux_color_222 : LUT4
    generic map(
      INIT => X"13FF"
    )
    port map (
      I0 => vga_pantalla_N26,
      I1 => vga_pantalla_Mrom_data_out_rom0000209,
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_222_461
    );
  vga_pantalla_Mmux_color_214_SW0 : LUT4
    generic map(
      INIT => X"0111"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => N110
    );
  vga_pantalla_Mmux_color_2217_SW0 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => vga_pantalla_N15,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_N1,
      I3 => vga_pantalla_N33,
      O => N112
    );
  vga_pantalla_Mmux_color_2220 : LUT4
    generic map(
      INIT => X"FF45"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom000014,
      I1 => vga_ctrl_vcount(4),
      I2 => vga_pantalla_N27,
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2218_459
    );
  vga_pantalla_Mmux_color_2420 : LUT4
    generic map(
      INIT => X"FF13"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_pantalla_Mrom_data_out_rom0000117,
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2420_633
    );
  vga_pantalla_Mmux_color_2421 : LUT4
    generic map(
      INIT => X"F777"
    )
    port map (
      I0 => vga_pantalla_N33,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mmux_color_2421_634
    );
  vga_pantalla_Mmux_color_272 : LUT4
    generic map(
      INIT => X"5557"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_N14,
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_Mrom_data_out_rom0000177,
      O => vga_pantalla_Mmux_color_2640
    );
  vga_pantalla_Mmux_color_266 : LUT4
    generic map(
      INIT => X"FF13"
    )
    port map (
      I0 => vga_pantalla_N1,
      I1 => vga_pantalla_Mrom_data_out_rom0000116,
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_266_785
    );
  vga_pantalla_Mmux_color_2328 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_dir_rom(5),
      O => vga_pantalla_Mmux_color_2328_558
    );
  vga_pantalla_Mmux_color_2611 : LUT4
    generic map(
      INIT => X"FDDD"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000107,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mmux_color_2611_754
    );
  vga_pantalla_Mmux_color_2433 : LUT4
    generic map(
      INIT => X"0111"
    )
    port map (
      I0 => vga_pantalla_N15,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_N1,
      I3 => vga_pantalla_N33,
      O => vga_pantalla_Mmux_color_2433_647
    );
  vga_pantalla_Mmux_color_2615_SW0 : LUT4
    generic map(
      INIT => X"B1A1"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(1),
      O => N142
    );
  vga_pantalla_Mmux_color_2615 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000215,
      I2 => vga_pantalla_Mrom_data_out_rom00003,
      I3 => N142,
      O => vga_pantalla_Mmux_color_2615_758
    );
  vga_pantalla_Mmux_color_2528 : LUT4
    generic map(
      INIT => X"0301"
    )
    port map (
      I0 => vga_pantalla_N33,
      I1 => vga_pantalla_Mrom_data_out_rom0000144,
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mmux_color_2528_705
    );
  vga_pantalla_Mmux_color_2815 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_pantalla_N35,
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mmux_color_2642
    );
  vga_pantalla_Mmux_color_2441 : LUT4
    generic map(
      INIT => X"13FF"
    )
    port map (
      I0 => vga_pantalla_N31,
      I1 => vga_pantalla_Mrom_data_out_rom0000297,
      I2 => vga_ctrl_vcount(3),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2440
    );
  vga_pantalla_Mmux_color_2822 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_pantalla_N33,
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2821
    );
  vga_pantalla_Mmux_color_20_f5_01 : LUT4
    generic map(
      INIT => X"13FF"
    )
    port map (
      I0 => vga_pantalla_N26,
      I1 => vga_pantalla_Mrom_data_out_rom0000209,
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_20_f5_0_362
    );
  vga_pantalla_Mrom_data_out_rom0000282 : LUT4
    generic map(
      INIT => X"2840"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000282_981
    );
  vga_pantalla_Mrom_data_out_rom0000147 : LUT4
    generic map(
      INIT => X"7FEC"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000147_924
    );
  vga_pantalla_Mrom_data_out_rom00001591 : LUT4
    generic map(
      INIT => X"1008"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000159
    );
  vga_pantalla_Mmux_color_205_SW0 : LUT4
    generic map(
      INIT => X"2402"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => N108
    );
  vga_pantalla_Mrom_data_out_rom00001981 : LUT4
    generic map(
      INIT => X"0884"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000198
    );
  vga_pantalla_Mrom_data_out_rom00002191 : LUT4
    generic map(
      INIT => X"4604"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000219
    );
  vga_pantalla_Mrom_data_out_rom00003931 : LUT4
    generic map(
      INIT => X"5446"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000393
    );
  vga_pantalla_Mrom_data_out_rom00001061 : LUT4
    generic map(
      INIT => X"1830"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000106
    );
  vga_pantalla_Mrom_data_out_rom00004431 : LUT4
    generic map(
      INIT => X"0618"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000443
    );
  vga_pantalla_Mrom_data_out_rom00002471 : LUT4
    generic map(
      INIT => X"0180"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000247
    );
  vga_pantalla_Mrom_data_out_rom00001251 : LUT4
    generic map(
      INIT => X"0018"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000125
    );
  vga_pantalla_Mmux_color_2111_SW0 : LUT3
    generic map(
      INIT => X"DA"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(1),
      O => N146
    );
  vga_pantalla_Mmux_color_2111 : LUT4
    generic map(
      INIT => X"BF9D"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => N146,
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mmux_color_2110_386
    );
  vga_pantalla_dir_rom_8_437_SW0 : LUT4
    generic map(
      INIT => X"EFA2"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_pantalla_dir_rom(5),
      I3 => vga_ctrl_vcount(2),
      O => N148
    );
  vga_pantalla_dir_rom_8_437 : LUT4
    generic map(
      INIT => X"DF57"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => N148,
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_dir_rom_8_437_1119
    );
  vga_pantalla_Mrom_data_out_rom0000651 : LUT4
    generic map(
      INIT => X"5646"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom000065
    );
  vga_pantalla_Mrom_data_out_rom00002181 : LUT3
    generic map(
      INIT => X"24"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000218
    );
  vga_pantalla_Mrom_data_out_rom00002051 : LUT4
    generic map(
      INIT => X"1810"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000205
    );
  vga_pantalla_Mrom_data_out_rom00001001 : LUT4
    generic map(
      INIT => X"565E"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000100
    );
  vga_pantalla_Mrom_data_out_rom00001531 : LUT4
    generic map(
      INIT => X"2644"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000153
    );
  vga_pantalla_Mrom_data_out_rom00001231 : LUT4
    generic map(
      INIT => X"060E"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000123
    );
  vga_pantalla_Mrom_data_out_rom00001121 : LUT4
    generic map(
      INIT => X"2428"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000112
    );
  vga_pantalla_Mrom_data_out_rom00002211 : LUT4
    generic map(
      INIT => X"6800"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000221
    );
  vga_pantalla_Mrom_data_out_rom00003731 : LUT4
    generic map(
      INIT => X"226E"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000373
    );
  vga_pantalla_Mrom_data_out_rom00001151 : LUT3
    generic map(
      INIT => X"26"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000115
    );
  vga_pantalla_Mrom_data_out_rom00003971 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000397
    );
  vga_pantalla_Mmux_color_291 : LUT4
    generic map(
      INIT => X"D3FF"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_291_860
    );
  vga_pantalla_Mrom_data_out_rom0000101 : LUT3
    generic map(
      INIT => X"76"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom000010
    );
  vga_pantalla_Mmux_color_192 : LUT4
    generic map(
      INIT => X"BA51"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mmux_color_192_294
    );
  vga_pantalla_Mmux_color_17_f51 : LUT4
    generic map(
      INIT => X"BA51"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mmux_color_17_f56
    );
  vga_pantalla_Mmux_color_2715_SW0 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(1),
      O => N138
    );
  vga_pantalla_Mrom_data_out_rom00001221 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000122
    );
  vga_pantalla_Mmux_color_2732 : LUT4
    generic map(
      INIT => X"FF9D"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2732_823
    );
  vga_pantalla_Mrom_data_out_rom00002571_inv1 : LUT4
    generic map(
      INIT => X"FD7D"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom00002571_inv
    );
  vga_pantalla_Mrom_data_out_rom00001891_inv1 : LUT4
    generic map(
      INIT => X"EDBB"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom00001891_inv
    );
  vga_pantalla_Mrom_data_out_rom00003151 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000315
    );
  vga_pantalla_Mrom_data_out_rom00001361 : LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000136
    );
  vga_pantalla_Mrom_data_out_rom00002011 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000201
    );
  vga_pantalla_Mrom_data_out_rom00001411 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000141
    );
  vga_pantalla_Mrom_data_out_rom00001311 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000131
    );
  vga_pantalla_Mrom_data_out_rom0000191 : LUT4
    generic map(
      INIT => X"0280"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom000019
    );
  vga_pantalla_Mrom_data_out_rom0000231 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom000023
    );
  vga_pantalla_Mrom_data_out_rom00002971 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000297
    );
  vga_pantalla_Mrom_data_out_rom00001331 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom0000133
    );
  vga_pantalla_Mrom_data_out_rom00001171 : LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom0000117
    );
  vga_pantalla_Mrom_data_out_rom000017821 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      O => vga_pantalla_N14
    );
  vga_pantalla_Mrom_data_out_rom00001371 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000137
    );
  vga_pantalla_Mrom_data_out_rom00002801_inv1 : LUT4
    generic map(
      INIT => X"E7FF"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom00002801_inv
    );
  vga_pantalla_Mmux_color_2437 : LUT4
    generic map(
      INIT => X"AB19"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mmux_color_2436_649
    );
  vga_pantalla_Mrom_data_out_rom00001783 : LUT4
    generic map(
      INIT => X"3566"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000178
    );
  vga_pantalla_Mrom_data_out_rom00001922 : LUT4
    generic map(
      INIT => X"5B42"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000192
    );
  vga_pantalla_Mmux_color_2326_SW1 : LUT4
    generic map(
      INIT => X"B717"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_pantalla_dir_rom(4),
      O => N150
    );
  vga_pantalla_Mmux_color_2326 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => N150,
      O => vga_pantalla_Mmux_color_2326_556
    );
  vga_pantalla_Mrom_data_out_rom00004351 : LUT4
    generic map(
      INIT => X"561A"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000435
    );
  vga_pantalla_Mrom_data_out_rom00001241 : LUT4
    generic map(
      INIT => X"2224"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000124
    );
  vga_pantalla_Mrom_data_out_rom00003991 : LUT4
    generic map(
      INIT => X"7CAA"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom0000399
    );
  vga_pantalla_Mmux_color_275 : LUT4
    generic map(
      INIT => X"AA25"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mmux_color_2448_656
    );
  vga_pantalla_Mmux_color_2513_SW0 : LUT4
    generic map(
      INIT => X"52CA"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(1),
      O => N114
    );
  vga_pantalla_Mrom_data_out_rom00001621 : LUT4
    generic map(
      INIT => X"5590"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000162
    );
  vga_pantalla_Mrom_data_out_rom0000941 : LUT4
    generic map(
      INIT => X"460E"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom000094
    );
  vga_pantalla_Mrom_data_out_rom0000551 : LUT4
    generic map(
      INIT => X"5446"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom000055
    );
  vga_pantalla_Mmux_color_2350_SW0 : LUT4
    generic map(
      INIT => X"1382"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(4),
      O => N96
    );
  vga_pantalla_Mrom_data_out_rom00001661 : LUT4
    generic map(
      INIT => X"5646"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000166
    );
  vga_pantalla_Mmux_color_2325_SW0 : LUT4
    generic map(
      INIT => X"062E"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => N118
    );
  vga_pantalla_Mrom_data_out_rom00001461 : LUT4
    generic map(
      INIT => X"6664"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000146
    );
  vga_pantalla_Mrom_data_out_rom00001461_inv1 : LUT4
    generic map(
      INIT => X"AA57"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom00001461_inv
    );
  vga_pantalla_Mrom_data_out_rom00001691 : LUT4
    generic map(
      INIT => X"0818"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000169
    );
  vga_pantalla_Mrom_data_out_rom00002231 : LUT4
    generic map(
      INIT => X"5E56"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000223
    );
  vga_pantalla_dir_rom_4_1271 : LUT4
    generic map(
      INIT => X"5712"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_dir_rom_4_mmx_out6
    );
  vga_pantalla_Mmux_color_268 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_Mrom_data_out_rom0000373,
      I2 => vga_pantalla_Mrom_data_out_rom0000189,
      O => vga_pantalla_Mmux_color_268_787
    );
  vga_pantalla_Mmux_color_2725 : LUT4
    generic map(
      INIT => X"A8ED"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mmux_color_2725_815
    );
  vga_pantalla_Mmux_color_2641_SW0 : LUT4
    generic map(
      INIT => X"7E6E"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(1),
      O => N130
    );
  vga_pantalla_Mrom_data_out_rom00002161 : LUT4
    generic map(
      INIT => X"5E4E"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000216
    );
  vga_pantalla_Mrom_data_out_rom00002911_inv1 : LUT4
    generic map(
      INIT => X"AA25"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom00002911_inv
    );
  vga_pantalla_Mrom_data_out_rom00001391 : LUT4
    generic map(
      INIT => X"0860"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000139
    );
  vga_pantalla_Mrom_data_out_rom00002121 : LUT4
    generic map(
      INIT => X"2808"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000212
    );
  vga_pantalla_Mrom_data_out_rom0000311 : LUT4
    generic map(
      INIT => X"2600"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom000031_990
    );
  vga_pantalla_Mrom_data_out_rom00001501 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000150
    );
  vga_pantalla_Mrom_data_out_rom000017621 : LUT4
    generic map(
      INIT => X"0282"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom0000186
    );
  vga_pantalla_Mmux_color_2512 : LUT4
    generic map(
      INIT => X"FF89"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_2512_693
    );
  vga_pantalla_Mrom_data_out_rom000013 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom00001
    );
  vga_pantalla_Mmux_color_2637_SW0 : LUT4
    generic map(
      INIT => X"666A"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => N128
    );
  vga_pantalla_Mrom_data_out_rom00001491 : LUT4
    generic map(
      INIT => X"6EEA"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000149
    );
  vga_pantalla_Mrom_data_out_rom00001141 : LUT4
    generic map(
      INIT => X"0900"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000114
    );
  vga_pantalla_Mmux_color_273_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_pantalla_dir_rom(4),
      O => N156
    );
  vga_pantalla_Mmux_color_273 : LUT4
    generic map(
      INIT => X"EE79"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(4),
      I2 => N156,
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mmux_color_273_820
    );
  vga_pantalla_Mrom_data_out_rom00001451 : LUT4
    generic map(
      INIT => X"66EA"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000145
    );
  vga_pantalla_Mrom_data_out_rom00001761 : LUT4
    generic map(
      INIT => X"2695"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom0000176
    );
  vga_pantalla_Mrom_data_out_rom00001961 : LUT4
    generic map(
      INIT => X"3290"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom0000196
    );
  vga_pantalla_Mrom_data_out_rom000011411 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(3),
      O => vga_pantalla_N26
    );
  vga_pantalla_Mrom_data_out_rom00001771 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(4),
      O => vga_pantalla_Mrom_data_out_rom0000177
    );
  vga_pantalla_Mrom_data_out_rom000014011 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_N22
    );
  vga_pantalla_Mrom_data_out_rom0000241 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom000024
    );
  vga_pantalla_Mmux_color_2518 : LUT4
    generic map(
      INIT => X"94D2"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mmux_color_2518_699
    );
  vga_pantalla_Mrom_data_out_rom0000281 : LUT4
    generic map(
      INIT => X"160C"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom000028
    );
  vga_pantalla_Mmux_color_2620_SW0 : LUT4
    generic map(
      INIT => X"3124"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(2),
      O => N124
    );
  vga_pantalla_Mrom_data_out_rom0000171 : LUT4
    generic map(
      INIT => X"2224"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom000017
    );
  vga_pantalla_Mrom_data_out_rom00001721 : LUT4
    generic map(
      INIT => X"2664"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000172
    );
  vga_pantalla_Mrom_data_out_rom00001051 : LUT4
    generic map(
      INIT => X"4642"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_Mrom_data_out_rom0000105
    );
  vga_pantalla_Mrom_data_out_rom00004541 : LUT4
    generic map(
      INIT => X"528A"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_ctrl_vcount(3),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mrom_data_out_rom0000454
    );
  vga_pantalla_Mrom_data_out_rom00002891 : LUT4
    generic map(
      INIT => X"0880"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom0000289
    );
  vga_pantalla_Mrom_data_out_rom0000421 : LUT4
    generic map(
      INIT => X"0280"
    )
    port map (
      I0 => vga_ctrl_vcount(2),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_ctrl_vcount(3),
      O => vga_pantalla_Mrom_data_out_rom000042
    );
  vga_pantalla_Mmux_color_2714 : LUT4
    generic map(
      INIT => X"E7FF"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(2),
      O => vga_pantalla_Mmux_color_2714_807
    );
  vga_pantalla_dir_rom_6_1243 : MUXF5
    port map (
      I0 => N158,
      I1 => N159,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_dir_rom_6_13
    );
  vga_pantalla_dir_rom_6_1243_F : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => vga_pantalla_N32,
      I1 => vga_pantalla_dir_rom_6_12111_1071,
      I2 => vga_pantalla_Mrom_data_out_rom000010,
      O => N158
    );
  vga_pantalla_dir_rom_6_1243_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_Mmux_color_281_838,
      I2 => vga_pantalla_Mmux_color_2448_656,
      O => N159
    );
  vga_pantalla_Mmux_color_21_f5_151 : MUXF5
    port map (
      I0 => N160,
      I1 => N161,
      S => vga_pantalla_dir_rom(4),
      O => vga_pantalla_Mmux_color_21_f516
    );
  vga_pantalla_Mmux_color_21_f5_151_F : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_Mrom_data_out_rom000031_990,
      I2 => vga_pantalla_dir_rom(6),
      O => N160
    );
  vga_pantalla_Mmux_color_21_f5_151_G : LUT4
    generic map(
      INIT => X"17B7"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_Mrom_data_out_rom0000116,
      I2 => vga_pantalla_dir_rom(6),
      I3 => vga_pantalla_Mrom_data_out_rom0000136,
      O => N161
    );
  vga_pantalla_dir_rom_6_101 : MUXF5
    port map (
      I0 => N162,
      I1 => N163,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_dir_rom_6_11
    );
  vga_pantalla_dir_rom_6_101_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_Mmux_color_2516_697,
      I2 => vga_pantalla_Mmux_color_2425_638,
      O => N162
    );
  vga_pantalla_dir_rom_6_101_G : LUT3
    generic map(
      INIT => X"9F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_Mrom_data_out_rom0000169,
      O => N163
    );
  vga_pantalla_dir_rom_7_465 : MUXF5
    port map (
      I0 => N164,
      I1 => N165,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_dir_rom_7_465_1105
    );
  vga_pantalla_dir_rom_7_465_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_Mmux_color_2333,
      I2 => vga_pantalla_Mmux_color_2412_624,
      O => N164
    );
  vga_pantalla_dir_rom_7_465_G : LUT4
    generic map(
      INIT => X"096F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_Mrom_data_out_rom0000114,
      I3 => vga_pantalla_Mrom_data_out_rom0000201,
      O => N165
    );
  vga_pantalla_dir_rom_6_5 : MUXF5
    port map (
      I0 => N166,
      I1 => N167,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_dir_rom_6_6
    );
  vga_pantalla_dir_rom_6_5_F : LUT4
    generic map(
      INIT => X"666F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_Mrom_data_out_rom0000209,
      I3 => vga_pantalla_N22,
      O => N166
    );
  vga_pantalla_dir_rom_6_5_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_Mmux_color_2640,
      I2 => vga_pantalla_Mmux_color_265_784,
      O => N167
    );
  vga_pantalla_Mmux_color_20_f5_61 : MUXF5
    port map (
      I0 => N168,
      I1 => N169,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_20_f57
    );
  vga_pantalla_Mmux_color_20_f5_61_F : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_pantalla_Mrom_data_out_rom000022,
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_pantalla_dir_rom(5),
      O => N168
    );
  vga_pantalla_Mmux_color_20_f5_61_G : LUT4
    generic map(
      INIT => X"0189"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom00001,
      I3 => vga_pantalla_Mrom_data_out_rom0000116,
      O => N169
    );
  vga_pantalla_Mmux_color_22_f5_201 : MUXF5
    port map (
      I0 => N170,
      I1 => N171,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_Mmux_color_22_f521
    );
  vga_pantalla_Mmux_color_22_f5_201_F : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_pantalla_Mrom_data_out_rom000022,
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_pantalla_dir_rom(5),
      O => N170
    );
  vga_pantalla_Mmux_color_22_f5_201_G : LUT4
    generic map(
      INIT => X"0189"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom00001,
      I3 => vga_pantalla_Mrom_data_out_rom0000157,
      O => N171
    );
  vga_pantalla_Mmux_color_186_SW0 : MUXF5
    port map (
      I0 => N172,
      I1 => N173,
      S => vga_pantalla_dir_rom(7),
      O => N94
    );
  vga_pantalla_Mmux_color_186_SW0_F : LUT4
    generic map(
      INIT => X"1F11"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000297,
      I1 => vga_pantalla_Mrom_data_out_rom0000177,
      I2 => vga_pantalla_dir_rom(5),
      I3 => vga_pantalla_dir_rom(4),
      O => N172
    );
  vga_pantalla_Mmux_color_186_SW0_G : LUT4
    generic map(
      INIT => X"FF47"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000116,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000169,
      I3 => vga_pantalla_dir_rom(5),
      O => N173
    );
  vga_pantalla_dir_rom_7_1_SW0 : MUXF5
    port map (
      I0 => N174,
      I1 => N175,
      S => vga_pantalla_dir_rom(5),
      O => N38
    );
  vga_pantalla_dir_rom_7_1_SW0_F : LUT4
    generic map(
      INIT => X"89FF"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom000022,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_ctrl_vcount(1),
      I3 => vga_pantalla_dir_rom(6),
      O => N174
    );
  vga_pantalla_dir_rom_7_1_SW0_G : LUT4
    generic map(
      INIT => X"55D5"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_N28,
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_ctrl_vcount(2),
      O => N175
    );
  vga_pantalla_dir_rom_6_111 : MUXF5
    port map (
      I0 => N176,
      I1 => N177,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_dir_rom_6_12
    );
  vga_pantalla_dir_rom_6_111_F : LUT4
    generic map(
      INIT => X"7F6B"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom000022,
      I1 => vga_pantalla_dir_rom(6),
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_ctrl_vcount(1),
      O => N176
    );
  vga_pantalla_dir_rom_6_111_G : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_N26,
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_ctrl_vcount(2),
      O => N177
    );
  vga_pantalla_dir_rom_7_559_SW0 : MUXF5
    port map (
      I0 => N178,
      I1 => N179,
      S => vga_ctrl_vcount(2),
      O => N82
    );
  vga_pantalla_dir_rom_7_559_SW0_F : LUT4
    generic map(
      INIT => X"2C14"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => N178
    );
  vga_pantalla_dir_rom_7_559_SW0_G : LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(4),
      O => N179
    );
  vga_pantalla_dir_rom_6_1352_SW0 : MUXF5
    port map (
      I0 => N180,
      I1 => N181,
      S => vga_ctrl_vcount(3),
      O => N74
    );
  vga_pantalla_dir_rom_6_1352_SW0_F : LUT4
    generic map(
      INIT => X"AF84"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_ctrl_vcount(4),
      O => N180
    );
  vga_pantalla_dir_rom_6_1352_SW0_G : LUT3
    generic map(
      INIT => X"09"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_ctrl_vcount(4),
      O => N181
    );
  vga_pantalla_Mmux_color_2012_SW0 : MUXF5
    port map (
      I0 => N182,
      I1 => N183,
      S => vga_ctrl_vcount(4),
      O => N116
    );
  vga_pantalla_Mmux_color_2012_SW0_F : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(1),
      O => N182
    );
  vga_pantalla_Mmux_color_2012_SW0_G : LUT4
    generic map(
      INIT => X"1214"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_vcount(1),
      O => N183
    );
  vga_pantalla_dir_rom_4_2 : MUXF5
    port map (
      I0 => N184,
      I1 => N185,
      S => vga_ctrl_vcount(2),
      O => vga_pantalla_dir_rom_4_3
    );
  vga_pantalla_dir_rom_4_2_F : LUT4
    generic map(
      INIT => X"EF77"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(1),
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_ctrl_vcount(4),
      O => N184
    );
  vga_pantalla_dir_rom_4_2_G : LUT4
    generic map(
      INIT => X"FE77"
    )
    port map (
      I0 => vga_ctrl_vcount(1),
      I1 => vga_ctrl_vcount(4),
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_ctrl_vcount(3),
      O => N185
    );
  vga_ctrl_clk25_BUFG : BUFG
    port map (
      I => vga_ctrl_clk251,
      O => vga_ctrl_clk25_171
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_78
    );
  vga_ctrl_Mcount_vcount_lut_0_INV_0 : INV
    port map (
      I => vga_ctrl_vcount(0),
      O => vga_ctrl_Mcount_vcount_lut(0)
    );
  vga_ctrl_clk25_mux00011_INV_0 : INV
    port map (
      I => vga_ctrl_clk251,
      O => vga_ctrl_clk25_mux0001
    );
  vga_pantalla_RAMB16_S9_S9_inst : RAMB16_S9_S9
    generic map(
      SRVAL_A => X"000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"1616161616161616161616161616161616161616161616161616161616161614",
      INIT_01 => X"0000000000000000000000000000000000000000000000001516161616161616",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000013",
      INIT_03 => X"0000000000000000000000000000000000000000000000001300000000000000",
      INIT_04 => X"0000000000004F444143524F4841004C45000000000000000000000000000013",
      INIT_05 => X"0000000000000000000000000000000000000000000000001300000000000000",
      INIT_06 => X"0053454C42414D4152474F52500053414D455453495300000000000000000013",
      INIT_07 => X"0000000000000000000000000000000000000000000000001300000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000013",
      INIT_09 => X"0000000000000000000000000000000000000000000000001300000000000000",
      INIT_0A => X"0000000000000000415453455543004C45554E414D003A35004F505552470013",
      INIT_0B => X"0000000000000000000000000000000000000000000000001300000000000000",
      INIT_0C => X"16161616161616161616161B1616161616161616161616161616161616161619",
      INIT_0D => X"0000000000000000000000000000000000000000000000001A16161616161616",
      INIT_0E => X"0000000000000000000000130000000000000000000000000000000000000013",
      INIT_0F => X"0000000000000000000000000000000000000000000000001300000000000000",
      INIT_10 => X"3A524F495245505553000013000000524F4C4156000000000000000000000013",
      INIT_11 => X"0000000000000000000000000000000000000000000000001300000000585800",
      INIT_12 => X"3A524F495245464E4900001300004F544C55434F000000000000000000000013",
      INIT_13 => X"0000000000000000000000000000000000000000000000001300000000585800",
      INIT_14 => X"3A534F544E45544E490000130000000000000000000000000000000000000013",
      INIT_15 => X"0000000000000000120100000000000000000000000000001300000000585800",
      INIT_16 => X"0000000000000000130000130000000000585800000000000000000000000013",
      INIT_17 => X"0000000000000000130000000000000000000000000000001300000000000000",
      INIT_18 => X"000000003A4F5441440000130000000000000000000000000000000000000013",
      INIT_19 => X"0000000000000000000000000000000000000000000000001300000000585800",
      INIT_1A => X"0000000000000000000000130000000000000000000000000000000000000013",
      INIT_1B => X"0000000000000000000000000000000000000000000000001300000000000000",
      INIT_1C => X"16161616161616161616161C1616161616161616161616161616161616161617",
      INIT_1D => X"0000000000000000000000000000000000000000000000001816161616161616",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000013",
      INIT_1F => X"0000000000000000000000000000000000000000000000001300000000000000",
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
      SIM_COLLISION_CHECK => "ALL",
      INIT_A => X"000",
      INIT_B => X"000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      SRVAL_B => X"000"
    )
    port map (
      CLKA => clk_BUFGP_78,
      CLKB => clk_BUFGP_78,
      ENA => N1,
      ENB => N1,
      SSRA => reset_IBUF_99,
      SSRB => reset_IBUF_99,
      WEA => wr,
      WEB => N0,
      ADDRA(10) => N0,
      ADDRA(9) => N1,
      ADDRA(8) => N0,
      ADDRA(7) => N1,
      ADDRA(6) => N1,
      ADDRA(5) => N0,
      ADDRA(4) => N0,
      ADDRA(3) => N1,
      ADDRA(2) => N1,
      ADDRA(1) => N0,
      ADDRA(0) => N1,
      ADDRB(10) => vga_pantalla_dir_c(10),
      ADDRB(9) => vga_pantalla_dir_c(9),
      ADDRB(8) => vga_pantalla_dir_c(8),
      ADDRB(7) => vga_pantalla_dir_c(7),
      ADDRB(6) => vga_pantalla_dir_c(6),
      ADDRB(5) => vga_pantalla_dir_c(5),
      ADDRB(4) => vga_pantalla_dir_c(4),
      ADDRB(3) => vga_pantalla_dir_c(3),
      ADDRB(2) => vga_pantalla_dir_c(2),
      ADDRB(1) => vga_pantalla_dir_c(1),
      ADDRB(0) => vga_pantalla_dir_c(0),
      DIA(7) => N0,
      DIA(6) => N0,
      DIA(5) => N1,
      DIA(4) => N1,
      DIA(3) => datos_3_IBUF_86,
      DIA(2) => datos_2_IBUF_85,
      DIA(1) => datos_1_IBUF_84,
      DIA(0) => datos_0_IBUF_83,
      DIB(7) => N0,
      DIB(6) => N0,
      DIB(5) => N0,
      DIB(4) => N0,
      DIB(3) => N0,
      DIB(2) => N0,
      DIB(1) => N0,
      DIB(0) => N0,
      DIPA(0) => N0,
      DIPB(0) => N0,
      DOA(7) => NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_7_UNCONNECTED,
      DOA(6) => NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_6_UNCONNECTED,
      DOA(5) => NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_5_UNCONNECTED,
      DOA(4) => NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_4_UNCONNECTED,
      DOA(3) => NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_3_UNCONNECTED,
      DOA(2) => NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_2_UNCONNECTED,
      DOA(1) => NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_1_UNCONNECTED,
      DOA(0) => NLW_vga_pantalla_RAMB16_S9_S9_inst_DOA_0_UNCONNECTED,
      DOPA(0) => NLW_vga_pantalla_RAMB16_S9_S9_inst_DOPA_0_UNCONNECTED,
      DOB(7) => NLW_vga_pantalla_RAMB16_S9_S9_inst_DOB_7_UNCONNECTED,
      DOB(6) => vga_pantalla_dir_rom(10),
      DOB(5) => vga_pantalla_dir_rom(9),
      DOB(4) => vga_pantalla_dir_rom(8),
      DOB(3) => vga_pantalla_dir_rom(7),
      DOB(2) => vga_pantalla_dir_rom(6),
      DOB(1) => vga_pantalla_dir_rom(5),
      DOB(0) => vga_pantalla_dir_rom(4),
      DOPB(0) => NLW_vga_pantalla_RAMB16_S9_S9_inst_DOPB_0_UNCONNECTED
    );
  vga_ctrl_vs_out_mux0001131 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => vga_ctrl_vcount(3),
      I1 => vga_ctrl_vcount(2),
      I2 => vga_ctrl_vcount(4),
      I3 => vga_ctrl_vcount(1),
      O => vga_ctrl_vs_out_mux0001131_203
    );
  vga_ctrl_vs_out_mux000113_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => vga_ctrl_vs_out_mux0001131_203,
      S => vga_ctrl_vcount(5),
      O => vga_ctrl_vs_out_mux000113
    );
  vga_pantalla_dir_rom_6_91 : LUT4
    generic map(
      INIT => X"57DF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000249,
      I3 => vga_pantalla_Mrom_data_out_rom0000110,
      O => vga_pantalla_dir_rom_6_91_1098
    );
  vga_pantalla_dir_rom_6_9_f5 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_6_91_1098,
      I1 => vga_pantalla_Mmux_color_24_f54,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_dir_rom_6_10
    );
  vga_pantalla_dir_rom_6_71 : LUT4
    generic map(
      INIT => X"BF15"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_dir_rom(4),
      I3 => vga_pantalla_Mmux_color_25_f53,
      O => vga_pantalla_dir_rom_6_7
    );
  vga_pantalla_dir_rom_6_72 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_Mmux_color_25_f53,
      O => vga_pantalla_dir_rom_6_71_1095
    );
  vga_pantalla_dir_rom_6_7_f5 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_6_71_1095,
      I1 => vga_pantalla_dir_rom_6_7,
      S => vga_pantalla_Mrom_data_out_rom0000245,
      O => vga_pantalla_dir_rom_6_8_1096
    );
  vga_pantalla_dir_rom_6_141 : LUT4
    generic map(
      INIT => X"0189"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_Mrom_data_out_rom0000171_937,
      I3 => vga_pantalla_Mrom_data_out_rom0000103,
      O => vga_pantalla_dir_rom_6_141_1074
    );
  vga_pantalla_dir_rom_6_14_f5 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_6_141_1074,
      I1 => vga_pantalla_Mmux_color_26_f55,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_dir_rom_6_15
    );
  vga_pantalla_dir_rom_6_241 : LUT4
    generic map(
      INIT => X"FF47"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom0000166,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000435,
      I3 => vga_pantalla_dir_rom(5),
      O => vga_pantalla_dir_rom_6_24
    );
  vga_pantalla_dir_rom_6_24_f5 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_6_24,
      I1 => vga_pantalla_Mmux_color_25_f514,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_dir_rom_6_25
    );
  vga_pantalla_dir_rom_7_5911 : LUT4
    generic map(
      INIT => X"BF15"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_dir_rom(4),
      I2 => N82,
      I3 => vga_pantalla_Mmux_color_23_f57,
      O => vga_pantalla_dir_rom_7_591
    );
  vga_pantalla_dir_rom_7_591_f5 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_7_591,
      I1 => vga_pantalla_Mmux_color_20_f64,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_dir_rom_7_6
    );
  vga_pantalla_dir_rom_6_251 : LUT4
    generic map(
      INIT => X"57DF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(5),
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_Mrom_data_out_rom0000249,
      I3 => vga_pantalla_Mrom_data_out_rom0000245,
      O => vga_pantalla_dir_rom_6_251_1088
    );
  vga_pantalla_dir_rom_6_25_f5 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_6_251_1088,
      I1 => vga_pantalla_Mmux_color_25_f515,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_dir_rom_6_26
    );
  vga_pantalla_dir_rom_6_181 : LUT4
    generic map(
      INIT => X"0189"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_Mrom_data_out_rom0000104,
      I3 => vga_pantalla_Mrom_data_out_rom0000103,
      O => vga_pantalla_dir_rom_6_181_1079
    );
  vga_pantalla_dir_rom_6_18_f5 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_6_181_1079,
      I1 => vga_pantalla_Mmux_color_27_f54,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_dir_rom_6_19
    );
  vga_pantalla_dir_rom_6_171 : LUT4
    generic map(
      INIT => X"57DF"
    )
    port map (
      I0 => vga_pantalla_dir_rom(4),
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_pantalla_Mrom_data_out_rom0000116,
      I3 => vga_pantalla_Mrom_data_out_rom0000117,
      O => vga_pantalla_dir_rom_6_171_1077
    );
  vga_pantalla_dir_rom_6_17_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_26_f59,
      I1 => vga_pantalla_dir_rom_6_171_1077,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_dir_rom_6_18
    );
  vga_pantalla_dir_rom_6_221 : LUT4
    generic map(
      INIT => X"FF13"
    )
    port map (
      I0 => vga_pantalla_N28,
      I1 => vga_pantalla_dir_rom(5),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_pantalla_dir_rom(4),
      O => vga_pantalla_dir_rom_6_22
    );
  vga_pantalla_dir_rom_6_22_f5 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_6_22,
      I1 => vga_pantalla_Mmux_color_27_f57,
      S => vga_pantalla_dir_rom(6),
      O => vga_pantalla_dir_rom_6_23
    );
  vga_pantalla_dir_rom_8_11 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => vga_pantalla_dir_rom(8),
      I1 => vga_pantalla_dir_rom(7),
      I2 => vga_pantalla_Mmux_color_20_f59,
      I3 => vga_pantalla_Mmux_color_18_f71,
      O => vga_pantalla_dir_rom_8_1
    );
  vga_pantalla_dir_rom_8_12 : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => vga_pantalla_dir_rom(8),
      I1 => vga_pantalla_Mmux_color_18_f71,
      I2 => vga_pantalla_Mmux_color_20_f59,
      I3 => vga_pantalla_dir_rom(7),
      O => vga_pantalla_dir_rom_8_11_1113
    );
  vga_pantalla_dir_rom_8_1_f5 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_8_11_1113,
      I1 => vga_pantalla_dir_rom_8_1,
      S => vga_pantalla_Mmux_color_21_f64,
      O => vga_pantalla_dir_rom_8_2
    );
  vga_pantalla_dir_rom_8_2391 : LUT4
    generic map(
      INIT => X"F7A2"
    )
    port map (
      I0 => vga_pantalla_dir_rom(8),
      I1 => vga_pantalla_dir_rom(7),
      I2 => N86,
      I3 => vga_pantalla_Mmux_color_18_f64,
      O => vga_pantalla_dir_rom_8_239
    );
  vga_pantalla_dir_rom_8_2392 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => vga_pantalla_dir_rom(8),
      I1 => vga_pantalla_Mmux_color_18_f64,
      I2 => vga_pantalla_dir_rom(7),
      I3 => N86,
      O => vga_pantalla_dir_rom_8_2391_1116
    );
  vga_pantalla_dir_rom_8_239_f5 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_8_2391_1116,
      I1 => vga_pantalla_dir_rom_8_239,
      S => vga_pantalla_Mmux_color_22_f513,
      O => vga_pantalla_dir_rom_8_3
    );
  vga_pantalla_dir_rom_10_1281 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => vga_pantalla_dir_rom(9),
      I1 => vga_pantalla_Mmux_color_23_f7_619,
      O => vga_pantalla_dir_rom_10_1281_1042
    );
  vga_pantalla_dir_rom_10_1282 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => vga_pantalla_dir_rom(9),
      I1 => vga_pantalla_dir_rom(7),
      I2 => vga_pantalla_Mmux_color_25_f6_747,
      I3 => vga_pantalla_Mmux_color_26_f52,
      O => vga_pantalla_dir_rom_10_1282_1043
    );
  vga_pantalla_dir_rom_10_128_f5 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_10_1282_1043,
      I1 => vga_pantalla_dir_rom_10_1281_1042,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_dir_rom_10_128
    );
  vga_pantalla_dir_rom_10_1681 : LUT4
    generic map(
      INIT => X"F7A2"
    )
    port map (
      I0 => vga_pantalla_dir_rom(10),
      I1 => vga_pantalla_dir_rom(9),
      I2 => vga_pantalla_dir_rom_10_128,
      I3 => vga_pantalla_Mmux_color_14_f6_224,
      O => vga_pantalla_dir_rom_10_168
    );
  vga_pantalla_dir_rom_10_1682 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => vga_pantalla_dir_rom(10),
      I1 => vga_pantalla_Mmux_color_14_f6_224,
      I2 => vga_pantalla_dir_rom_10_128,
      O => vga_pantalla_dir_rom_10_1681_1045
    );
  vga_pantalla_dir_rom_10_168_f5 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_10_1681_1045,
      I1 => vga_pantalla_dir_rom_10_168,
      S => vga_pantalla_Mmux_color_18_f54,
      O => vga_pantalla_dir_rom_10_2
    );
  vga_pantalla_px_3_251_SW01 : LUT4
    generic map(
      INIT => X"72FA"
    )
    port map (
      I0 => vga_ctrl_hcount(1),
      I1 => vga_pantalla_px_3_5_1131,
      I2 => vga_pantalla_Mmux_color_12_f52,
      I3 => vga_pantalla_px_3_141_1127,
      O => vga_pantalla_px_3_251_SW0
    );
  vga_pantalla_px_3_251_SW0_f5 : MUXF5
    port map (
      I0 => vga_pantalla_px_3_251_SW0,
      I1 => vga_pantalla_Mmux_color_10_f51,
      S => vga_ctrl_hcount(2),
      O => N80
    );
  vga_pantalla_dir_rom_7_671 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_dir_rom_7_14_1101,
      I2 => vga_pantalla_dir_rom_7_18_1102,
      I3 => vga_pantalla_Mmux_color_25_f5_726,
      O => vga_pantalla_dir_rom_7_67
    );
  vga_pantalla_dir_rom_7_67_f5 : MUXF5
    port map (
      I0 => vga_pantalla_Mmux_color_20_f6_368,
      I1 => vga_pantalla_dir_rom_7_67,
      S => vga_pantalla_dir_rom(7),
      O => vga_pantalla_dir_rom_7_1_1100
    );
  vga_pantalla_dir_rom_10_301 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_pantalla_Mmux_color_20_f7_380,
      I1 => vga_pantalla_dir_rom(9),
      O => vga_pantalla_dir_rom_10_301_1048
    );
  vga_pantalla_dir_rom_10_302 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => vga_pantalla_dir_rom(7),
      I1 => vga_pantalla_Mmux_color_22_f52,
      I2 => vga_pantalla_dir_rom(9),
      I3 => vga_pantalla_Mmux_color_23_f6_609,
      O => vga_pantalla_dir_rom_10_302_1049
    );
  vga_pantalla_dir_rom_10_30_f5 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_10_302_1049,
      I1 => vga_pantalla_dir_rom_10_301_1048,
      S => vga_pantalla_dir_rom(8),
      O => vga_pantalla_dir_rom_10_30
    );
  vga_pantalla_dir_rom_6_1911 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => vga_pantalla_dir_rom(6),
      I1 => vga_pantalla_Mmux_color_2642,
      O => vga_pantalla_dir_rom_6_191
    );
  vga_pantalla_dir_rom_6_1912 : LUT4
    generic map(
      INIT => X"7F6B"
    )
    port map (
      I0 => vga_pantalla_Mrom_data_out_rom000022,
      I1 => vga_pantalla_dir_rom(4),
      I2 => vga_pantalla_dir_rom(6),
      I3 => vga_ctrl_vcount(1),
      O => vga_pantalla_dir_rom_6_1911_1082
    );
  vga_pantalla_dir_rom_6_191_f5 : MUXF5
    port map (
      I0 => vga_pantalla_dir_rom_6_1911_1082,
      I1 => vga_pantalla_dir_rom_6_191,
      S => vga_pantalla_dir_rom(5),
      O => vga_pantalla_dir_rom_6_20
    );
  vga_ctrl_vcount_not000121 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => vga_ctrl_hcount(5),
      I1 => vga_ctrl_hcount(6),
      I2 => vga_ctrl_hcount(7),
      LO => N186,
      O => vga_ctrl_N7
    );
  vga_ctrl_vcount_and00001 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vga_ctrl_vcount(4),
      I1 => vga_ctrl_vcount(8),
      I2 => vga_ctrl_vcount(7),
      I3 => N4,
      LO => N187,
      O => vga_ctrl_N6
    );
  vga_ctrl_vcount_not000112 : LUT4_L
    generic map(
      INIT => X"7F55"
    )
    port map (
      I0 => vga_ctrl_vcount(9),
      I1 => vga_ctrl_vcount(3),
      I2 => vga_ctrl_vcount(2),
      I3 => vga_ctrl_N6,
      LO => vga_ctrl_vcount_not000112_199
    );
  vga_ctrl_hcount_not0001_inv21 : LUT4_D
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => vga_ctrl_hcount(1),
      I1 => vga_ctrl_hcount(0),
      I2 => vga_ctrl_hcount(4),
      I3 => N6,
      LO => N188,
      O => vga_ctrl_N2
    );
  vga_ctrl_hcount_not0001_SW0_SW0 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => vga_ctrl_hcount(0),
      I1 => vga_ctrl_hcount(3),
      I2 => vga_ctrl_hcount(2),
      I3 => vga_ctrl_hcount(1),
      LO => N189,
      O => N68
    );

end Structure;

