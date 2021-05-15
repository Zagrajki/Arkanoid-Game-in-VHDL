--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : vga.vhf
-- /___/   /\     Timestamp : 05/14/2021 09:19:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "D:/Users/Mati/Desktop/5 semestr/syf/wtorektest/vga.vhf" -w "D:/Users/Mati/Desktop/5 semestr/syf/wtorektest/vga.sch"
--Design Name: vga
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity vga is
   port ( CLK_50MHZ : in    std_logic; 
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_RDY   : out   std_logic; 
          VGA_VS    : out   std_logic);
end vga;

architecture BEHAVIORAL of vga is
   signal XLXN_1        : std_logic_vector (2 downto 0);
   signal XLXN_2        : std_logic_vector (8 downto 0);
   signal XLXN_3        : std_logic_vector (9 downto 0);
   signal XLXN_18       : std_logic_vector (7 downto 0);
   signal XLXN_24       : std_logic;
   signal XLXN_26       : std_logic;
   signal VGA_RDY_DUMMY : std_logic;
   component vga_driver1
      port ( CLK_50MHZ : in    std_logic; 
             RGB       : in    std_logic_vector (2 downto 0); 
             VGA_R     : out   std_logic; 
             VGA_G     : out   std_logic; 
             VGA_B     : out   std_logic; 
             VGA_HS    : out   std_logic; 
             VGA_VS    : out   std_logic; 
             RDY       : out   std_logic; 
             PIX_X     : out   std_logic_vector (9 downto 0); 
             PIX_Y     : out   std_logic_vector (8 downto 0));
   end component;
   
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component game3
      port ( RDY    : in    std_logic; 
             DO_RDY : in    std_logic; 
             FO     : in    std_logic; 
             DO     : in    std_logic_vector (7 downto 0); 
             PIX_X  : in    std_logic_vector (9 downto 0); 
             PIX_Y  : in    std_logic_vector (8 downto 0); 
             RGB    : out   std_logic_vector (2 downto 0));
   end component;
   
begin
   VGA_RDY <= VGA_RDY_DUMMY;
   XLXI_15 : vga_driver1
      port map (CLK_50MHZ=>CLK_50MHZ,
                RGB(2 downto 0)=>XLXN_1(2 downto 0),
                PIX_X(9 downto 0)=>XLXN_3(9 downto 0),
                PIX_Y(8 downto 0)=>XLXN_2(8 downto 0),
                RDY=>VGA_RDY_DUMMY,
                VGA_B=>VGA_B,
                VGA_G=>VGA_G,
                VGA_HS=>VGA_HS,
                VGA_R=>VGA_R,
                VGA_VS=>VGA_VS);
   
   XLXI_16 : PS2_Kbd
      port map (Clk_Sys=>CLK_50MHZ,
                Clk_50MHz=>CLK_50MHZ,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_18(7 downto 0),
                DO_Rdy=>XLXN_26,
                E0=>open,
                F0=>XLXN_24);
   
   XLXI_19 : game3
      port map (DO(7 downto 0)=>XLXN_18(7 downto 0),
                DO_RDY=>XLXN_26,
                FO=>XLXN_24,
                PIX_X(9 downto 0)=>XLXN_3(9 downto 0),
                PIX_Y(8 downto 0)=>XLXN_2(8 downto 0),
                RDY=>VGA_RDY_DUMMY,
                RGB(2 downto 0)=>XLXN_1(2 downto 0));
   
end BEHAVIORAL;


