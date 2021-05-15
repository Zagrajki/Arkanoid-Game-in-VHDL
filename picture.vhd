----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:17:02 01/30/2021 
-- Design Name: 
-- Module Name:    picture - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity picture is
	port( PIX_X : in STD_LOGIC_VECTOR(9 DOWNTO 0);
			PIX_Y : in STD_LOGIC_VECTOR(8 DOWNTO 0);
			RGB : out STD_LOGIC_VECTOR(2 DOWNTO 0));
end picture;

architecture Behavioral of picture is
signal x_s : integer range 0 to 1024;
signal y_s : integer range 0 to 512;
begin
x_s <= to_integer(unsigned(PIX_X));
y_s <= to_integer(unsigned(PIX_Y));
RGB <= "100" when x_s <= 20 else
		  "010" when x_s <= 400 else
		  "001";

end Behavioral;
