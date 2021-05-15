----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:28:39 01/01/2021 
-- Design Name: 
-- Module Name:    main - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity vga_driver1 is
	port(	CLK_50MHZ : in STD_LOGIC;
			RGB : in STD_LOGIC_VECTOR(2 DOWNTO 0);
			VGA_R : out STD_LOGIC;
			VGA_G : out STD_LOGIC;
			VGA_B : out STD_LOGIC;
			VGA_HS : out STD_LOGIC;
			VGA_VS : out STD_LOGIC;
			RDY : out STD_LOGIC;
			PIX_X : out STD_LOGIC_VECTOR(9 DOWNTO 0);
			PIX_Y : out STD_LOGIC_VECTOR(8 DOWNTO 0));
end vga_driver1;

architecture Behavioral of vga_driver1 is
	signal clk_25 : STD_LOGIC := '0';
	signal h_cnt : integer range 0 to 799 := 0;
	signal v_cnt : integer range 0 to 520 := 0;
	
	constant H_LEN : positive := 96;
	constant H_TBP : positive := 48;
	constant V_LEN : positive := 2;
	constant V_TBP : positive := 29;
	
	constant PIX_X_MIN : positive := H_LEN + H_TBP;
	constant PIX_X_MAX : positive := PIX_X_MIN + 640;
	constant PIX_Y_MIN : positive := V_LEN + V_TBP;
	constant PIX_Y_MAX : positive := PIX_Y_MIN + 480;
begin

	clk_div : process(CLK_50MHZ)
	begin
		if rising_edge(CLK_50MHZ) then
			clk_25 <= NOT clk_25;
		end if;
	end process;
	
	counters : process(clk_25)
	begin
		if rising_edge(clk_25) then
			if(h_cnt < 799) then
				h_cnt <= h_cnt + 1;
			else
				h_cnt <= 0;
				if(v_cnt < 520) then
					v_cnt <= v_cnt + 1;
					if(v_cnt = 512) then
						RDY <= '1';
					else
						RDY <= '0';
					end if;
				else
					v_cnt <= 0;
				end if;
			end if;
		end if;
	end process;
	
	h_sync : process(h_cnt)
	begin
		if(h_cnt < H_LEN) then
			VGA_HS <= '0';
		else
			VGA_HS <= '1';
		end if;
	end process;
	
	v_sync : process(v_cnt)
	begin
		if(v_cnt < V_LEN) then
			VGA_VS <= '0';
		else
			VGA_VS <= '1';
		end if;
	end process;
	
	color_pixel : process(h_cnt, v_cnt, RGB)
	begin
		if (h_cnt >= PIX_X_MIN and h_cnt < PIX_X_MAX and v_cnt >= PIX_Y_MIN and v_cnt < PIX_Y_MAX) then
		PIX_X <= std_logic_vector(to_unsigned(h_cnt - PIX_X_MIN, 10));
		PIX_Y <= std_logic_vector(to_unsigned(v_cnt - PIX_Y_MIN, 9));
		VGA_R <= RGB(2);
		VGA_G <= RGB(1);
		VGA_B <= RGB(0);
		else 
		PIX_X <= std_logic_vector(to_unsigned(640, 10));
		PIX_Y <= std_logic_vector(to_unsigned(480, 9));
		VGA_R <= '0';
		VGA_G <= '0';
		VGA_B <= '0';
		end if;
	end process;
	

end Behavioral;
