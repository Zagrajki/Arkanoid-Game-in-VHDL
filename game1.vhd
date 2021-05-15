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

entity game1 is
	port( RDY : in STD_LOGIC;
			DO : in STD_LOGIC;
			DO_RDY : in STD_LOGIC_VECTOR(7 DOWNTO 0);
			PIX_X : in STD_LOGIC_VECTOR(9 DOWNTO 0);
			PIX_Y : in STD_LOGIC_VECTOR(8 DOWNTO 0);
			RGB : out STD_LOGIC_VECTOR(2 DOWNTO 0));
end game1;

architecture Behavioral of game1 is

signal x_s : integer range 0 to 640;
signal y_s : integer range 0 to 480;

signal hit_pale_help : STD_LOGIC := '0';
signal hit_rare : STD_LOGIC := '0';
signal hit_up : STD_LOGIC := '0';
signal hit_right : STD_LOGIC := '0';
signal hit_down : STD_LOGIC := '0';
signal hit_left : STD_LOGIC := '0';

signal ballx : integer range 0 to 640 := 50;
signal bally : integer range 0 to 480 := 475;
signal ballm : integer range 0 to 16 := 8;
signal ballh : STD_LOGIC := '0';
constant balls : positive := 4;

signal palex : integer range 0 to 640 := 270;
signal paley : integer range 0 to 480 := 430;
constant paleh : positive := 10;
constant palew : positive := 100;

signal won_lost : STD_LOGIC := '1';

--you
signal bricky01 : STD_LOGIC := '1';
signal bricky02 : STD_LOGIC := '1';
signal bricky03 : STD_LOGIC := '1';
signal bricky04 : STD_LOGIC := '1';
signal bricky05 : STD_LOGIC := '1';
signal bricky06 : STD_LOGIC := '1';
signal bricky07 : STD_LOGIC := '1';
signal bricky08 : STD_LOGIC := '1';
signal bricky09 : STD_LOGIC := '1';
signal bricky10 : STD_LOGIC := '1';
signal bricky11 : STD_LOGIC := '1';
signal bricky12 : STD_LOGIC := '1';
signal bricky13 : STD_LOGIC := '1';
signal bricky14 : STD_LOGIC := '1';
signal bricky15 : STD_LOGIC := '1';
signal bricky16 : STD_LOGIC := '1';
signal bricky17 : STD_LOGIC := '1';
signal bricky18 : STD_LOGIC := '1';
signal bricky19 : STD_LOGIC := '1';
signal bricky20 : STD_LOGIC := '1';
signal bricky21 : STD_LOGIC := '1';
signal bricky22 : STD_LOGIC := '1';
signal bricky23 : STD_LOGIC := '1';
signal bricky24 : STD_LOGIC := '1';
signal bricky25 : STD_LOGIC := '1';
signal bricky26 : STD_LOGIC := '1';
signal bricky27 : STD_LOGIC := '1';
signal bricky28 : STD_LOGIC := '1';
signal bricky29 : STD_LOGIC := '1';
signal bricky30 : STD_LOGIC := '1';
signal bricky31 : STD_LOGIC := '1';
signal bricky32 : STD_LOGIC := '1';
signal bricky33 : STD_LOGIC := '1';
signal bricky34 : STD_LOGIC := '1';
signal bricky35 : STD_LOGIC := '1';

constant bricky01x : positive := 125;
constant bricky01y : positive := 30;
constant bricky02x : positive := 125;
constant bricky02y : positive := 40;
constant bricky03x : positive := 125;
constant bricky03y : positive := 50;
constant bricky04x : positive := 155;
constant bricky04y : positive := 50;
constant bricky05x : positive := 155;
constant bricky05y : positive := 60;
constant bricky06x : positive := 155;
constant bricky06y : positive := 70;
constant bricky07x : positive := 185;
constant bricky07y : positive := 30;
constant bricky08x : positive := 185;
constant bricky08y : positive := 40;
constant bricky09x : positive := 185;
constant bricky09y : positive := 50;

constant bricky10x : positive := 245;
constant bricky10y : positive := 30;
constant bricky11x : positive := 245;
constant bricky11y : positive := 40;
constant bricky12x : positive := 245;
constant bricky12y : positive := 50;
constant bricky13x : positive := 245;
constant bricky13y : positive := 60;
constant bricky14x : positive := 245;
constant bricky14y : positive := 70;
constant bricky15x : positive := 275;
constant bricky15y : positive := 30;
constant bricky16x : positive := 275;
constant bricky16y : positive := 70;
constant bricky17x : positive := 305;
constant bricky17y : positive := 30;
constant bricky18x : positive := 305;
constant bricky18y : positive := 70;
constant bricky19x : positive := 335;
constant bricky19y : positive := 30;
constant bricky20x : positive := 335;
constant bricky20y : positive := 40;
constant bricky21x : positive := 335;
constant bricky21y : positive := 50;
constant bricky22x : positive := 335;
constant bricky22y : positive := 60;
constant bricky23x : positive := 335;
constant bricky23y : positive := 70;

constant bricky24x : positive := 395;
constant bricky24y : positive := 30;
constant bricky25x : positive := 395;
constant bricky25y : positive := 40;
constant bricky26x : positive := 395;
constant bricky26y : positive := 50;
constant bricky27x : positive := 395;
constant bricky27y : positive := 60;
constant bricky28x : positive := 395;
constant bricky28y : positive := 70;
constant bricky29x : positive := 425;
constant bricky29y : positive := 70;
constant bricky30x : positive := 455;
constant bricky30y : positive := 70;
constant bricky31x : positive := 485;
constant bricky31y : positive := 30;
constant bricky32x : positive := 485;
constant bricky32y : positive := 40;
constant bricky33x : positive := 485;
constant bricky33y : positive := 50;
constant bricky34x : positive := 485;
constant bricky34y : positive := 60;
constant bricky35x : positive := 485;
constant bricky35y : positive := 70;

--[mutual]
signal brickm01 : STD_LOGIC := '1';
signal brickm02 : STD_LOGIC := '1';
signal brickm03 : STD_LOGIC := '1';
signal brickm04 : STD_LOGIC := '1';
signal brickm05 : STD_LOGIC := '1';
signal brickm06 : STD_LOGIC := '1';
signal brickm07 : STD_LOGIC := '1';
signal brickm08 : STD_LOGIC := '1';
signal brickm09 : STD_LOGIC := '1';
signal brickm10 : STD_LOGIC := '1';
signal brickm11 : STD_LOGIC := '1';
signal brickm12 : STD_LOGIC := '1';
signal brickm13 : STD_LOGIC := '1';
signal brickm14 : STD_LOGIC := '1';
signal brickm15 : STD_LOGIC := '1';
signal brickm16 : STD_LOGIC := '1';
signal brickm17 : STD_LOGIC := '1';
signal brickm18 : STD_LOGIC := '1';
signal brickm19 : STD_LOGIC := '1';
signal brickm20 : STD_LOGIC := '1';

constant brickm01x : positive := 50;
constant brickm01y : positive := 100;
constant brickm02x : positive := 110;
constant brickm02y : positive := 140;
constant brickm03x : positive := 200;
constant brickm03y : positive := 120;
constant brickm04x : positive := 230;
constant brickm04y : positive := 100;
constant brickm05x : positive := 290;
constant brickm05y : positive := 100;
constant brickm06x : positive := 290;
constant brickm06y : positive := 110;
constant brickm07x : positive := 290;
constant brickm07y : positive := 120;
constant brickm08x : positive := 290;
constant brickm08y : positive := 130;
constant brickm09x : positive := 290;
constant brickm09y : positive := 140;
constant brickm10x : positive := 350;
constant brickm10y : positive := 100;
constant brickm11x : positive := 350;
constant brickm11y : positive := 140;
constant brickm12x : positive := 380;
constant brickm12y : positive := 100;
constant brickm13x : positive := 380;
constant brickm13y : positive := 120;
constant brickm14x : positive := 380;
constant brickm14y : positive := 140;
constant brickm15x : positive := 440;
constant brickm15y : positive := 100;
constant brickm16x : positive := 440;
constant brickm16y : positive := 120;
constant brickm17x : positive := 440;
constant brickm17y : positive := 130;
constant brickm18x : positive := 440;
constant brickm18y : positive := 140;
constant brickm19x : positive := 530;
constant brickm19y : positive := 130;
constant brickm20x : positive := 560;
constant brickm20y : positive := 100;

--won
signal brickw01 : STD_LOGIC := '1';
signal brickw02 : STD_LOGIC := '1';
signal brickw03 : STD_LOGIC := '1';
signal brickw04 : STD_LOGIC := '1';
signal brickw05 : STD_LOGIC := '1';
signal brickw06 : STD_LOGIC := '1';
signal brickw07 : STD_LOGIC := '1';
signal brickw08 : STD_LOGIC := '1';
signal brickw09 : STD_LOGIC := '1';
signal brickw10 : STD_LOGIC := '1';
signal brickw11 : STD_LOGIC := '1';
signal brickw12 : STD_LOGIC := '1';
signal brickw13 : STD_LOGIC := '1';
signal brickw14 : STD_LOGIC := '1';
signal brickw15 : STD_LOGIC := '1';
signal brickw16 : STD_LOGIC := '1';
signal brickw17 : STD_LOGIC := '1';
signal brickw18 : STD_LOGIC := '1';
signal brickw19 : STD_LOGIC := '1';
signal brickw20 : STD_LOGIC := '1';

constant brickw01x : positive := 65;
constant brickw01y : positive := 110;
constant brickw02x : positive := 80;
constant brickw02y : positive := 120;
constant brickw03x : positive := 95;
constant brickw03y : positive := 130;
constant brickw04x : positive := 125;
constant brickw04y : positive := 130;
constant brickw05x : positive := 140;
constant brickw05y : positive := 120;
constant brickw06x : positive := 155;
constant brickw06y : positive := 130;
constant brickw07x : positive := 170;
constant brickw07y : positive := 140;
constant brickw08x : positive := 185;
constant brickw08y : positive := 130;
constant brickw09x : positive := 215;
constant brickw09y : positive := 110;
constant brickw10x : positive := 320;
constant brickw10y : positive := 100;
constant brickw11x : positive := 320;
constant brickw11y : positive := 140;
constant brickw12x : positive := 380;
constant brickw12y : positive := 110;
constant brickw13x : positive := 380;
constant brickw13y : positive := 130;
constant brickw14x : positive := 440;
constant brickw14y : positive := 110;
constant brickw15x : positive := 470;
constant brickw15y : positive := 110;
constant brickw16x : positive := 500;
constant brickw16y : positive := 120;
constant brickw17x : positive := 560;
constant brickw17y : positive := 110;
constant brickw18x : positive := 560;
constant brickw18y : positive := 120;
constant brickw19x : positive := 560;
constant brickw19y : positive := 130;
constant brickw20x : positive := 560;
constant brickw20y : positive := 140;

--lost
signal brickl01 : STD_LOGIC := '1';
signal brickl02 : STD_LOGIC := '1';
signal brickl03 : STD_LOGIC := '1';
signal brickl04 : STD_LOGIC := '1';
signal brickl05 : STD_LOGIC := '1';
signal brickl06 : STD_LOGIC := '1';
signal brickl07 : STD_LOGIC := '1';
signal brickl08 : STD_LOGIC := '1';
signal brickl09 : STD_LOGIC := '1';
signal brickl10 : STD_LOGIC := '1';
signal brickl11 : STD_LOGIC := '1';
signal brickl12 : STD_LOGIC := '1';
signal brickl13 : STD_LOGIC := '1';
signal brickl14 : STD_LOGIC := '1';
signal brickl15 : STD_LOGIC := '1';
signal brickl16 : STD_LOGIC := '1';
signal brickl17 : STD_LOGIC := '1';
signal brickl18 : STD_LOGIC := '1';
signal brickl19 : STD_LOGIC := '1';
signal brickl20 : STD_LOGIC := '1';
signal brickl21 : STD_LOGIC := '1';
signal brickl22 : STD_LOGIC := '1';
signal brickl23 : STD_LOGIC := '1';

constant brickl01x : positive := 50;
constant brickl01y : positive := 110;
constant brickl02x : positive := 50;
constant brickl02y : positive := 120;
constant brickl03x : positive := 50;
constant brickl03y : positive := 130;
constant brickl04x : positive := 50;
constant brickl04y : positive := 140;
constant brickl05x : positive := 80;
constant brickl05y : positive := 140;
constant brickl06x : positive := 140;
constant brickl06y : positive := 140;
constant brickl07x : positive := 200;
constant brickl07y : positive := 100;
constant brickl08x : positive := 200;
constant brickl08y : positive := 110;
constant brickl09x : positive := 200;
constant brickl09y : positive := 130;
constant brickl10x : positive := 200;
constant brickl10y : positive := 140;
constant brickl11x : positive := 230;
constant brickl11y : positive := 140;
constant brickl12x : positive := 260;
constant brickl12y : positive := 100;
constant brickl13x : positive := 260;
constant brickl13y : positive := 140;
constant brickl14x : positive := 350;
constant brickl14y : positive := 110;
constant brickl15x : positive := 350;
constant brickl15y : positive := 120;
constant brickl16x : positive := 410;
constant brickl16y : positive := 100;
constant brickl17x : positive := 410;
constant brickl17y : positive := 120;
constant brickl18x : positive := 410;
constant brickl18y : positive := 140;
constant brickl19x : positive := 500;
constant brickl19y : positive := 100;
constant brickl20x : positive := 530;
constant brickl20y : positive := 100;
constant brickl21x : positive := 530;
constant brickl21y : positive := 110;
constant brickl22x : positive := 530;
constant brickl22y : positive := 120;
constant brickl23x : positive := 530;
constant brickl23y : positive := 140;
--signal bricky01 : STD_LOGIC := '1';
--signal bricky02 : STD_LOGIC := '1';
--signal bricky03 : STD_LOGIC := '1';
--signal bricky04 : STD_LOGIC := '1';
--signal bricky05 : STD_LOGIC := '1';
--signal bricky06 : STD_LOGIC := '1';
--signal bricky07 : STD_LOGIC := '1';
--signal bricky08 : STD_LOGIC := '1';
--signal bricky09 : STD_LOGIC := '1';
--constant bricky01x : positive := 10;
--constant bricky01y : positive := 30;
--constant bricky02x : positive := 40;
--constant bricky02y : positive := 30;
--constant bricky03x : positive := 70;
--constant bricky03y : positive := 30;
--constant bricky04x : positive := 100;
--constant bricky04y : positive := 30;
--constant bricky05x : positive := 130;
--constant bricky05y : positive := 40;
--constant bricky06x : positive := 160;
--constant bricky06y : positive := 40;
--constant bricky07x : positive := 190;
--constant bricky07y : positive := 40;
--constant bricky08x : positive := 300;
--constant bricky08y : positive := 200;
--constant bricky09x : positive := 130;
--constant bricky09y : positive := 30;
constant brickh : positive := 10;
constant brickw : positive := 30;

procedure change_direction_hit_rare(signal   ballm   : inout integer) is
begin
			case ballm is
				when 0 => ballm <= 8;
				when 1 => ballm <= 9;
				when 2 => ballm <= 10;
				when 3 => ballm <= 11;
				when 4 => ballm <= 12;
				when 5 => ballm <= 13;
				when 6 => ballm <= 14;
				when 7 => ballm <= 15;
				when 8 => ballm <= 0;
				when 9 => ballm <= 1;
				when 10 => ballm <= 2;
				when 11 => ballm <= 3;
				when 12 => ballm <= 4;
				when 13 => ballm <= 5;
				when 14 => ballm <= 6;
				when 15 => ballm <= 7;
			end case;
end procedure;

procedure change_direction_hit_up(signal   ballm   : inout integer) is
begin
			case ballm is
				when 0 => ballm <= 0;
				when 1 => ballm <= 1;
				when 2 => ballm <= 2;
				when 3 => ballm <= 3;
				when 4 => ballm <= 4;
				when 5 => ballm <= 3;
				when 6 => ballm <= 2;
				when 7 => ballm <= 1;
				when 8 => ballm <= 0;
				when 9 => ballm <= 15;
				when 10 => ballm <= 14;
				when 11 => ballm <= 13;
				when 12 => ballm <= 12;
				when 13 => ballm <= 13;
				when 14 => ballm <= 14;
				when 15 => ballm <= 15;
			end case;
end procedure;

procedure change_direction_hit_right(signal   ballm   : inout integer) is
begin
			case ballm is
				when 0 => ballm <= 0;
				when 1 => ballm <= 1;
				when 2 => ballm <= 2;
				when 3 => ballm <= 3;
				when 4 => ballm <= 4;
				when 5 => ballm <= 5;
				when 6 => ballm <= 6;
				when 7 => ballm <= 7;
				when 8 => ballm <= 8;
				when 9 => ballm <= 7;
				when 10 => ballm <= 6;
				when 11 => ballm <= 5;
				when 12 => ballm <= 4;
				when 13 => ballm <= 3;
				when 14 => ballm <= 2;
				when 15 => ballm <= 1;
			end case;
end procedure;

procedure change_direction_hit_down(signal   ballm   : inout integer) is
begin
			case ballm is
				when 0 => ballm <= 8;
				when 1 => ballm <= 7;
				when 2 => ballm <= 6;
				when 3 => ballm <= 5;
				when 4 => ballm <= 4;
				when 5 => ballm <= 5;
				when 6 => ballm <= 6;
				when 7 => ballm <= 7;
				when 8 => ballm <= 8;
				when 9 => ballm <= 9;
				when 10 => ballm <= 10;
				when 11 => ballm <= 11;
				when 12 => ballm <= 12;
				when 13 => ballm <= 11;
				when 14 => ballm <= 10;
				when 15 => ballm <= 9;
			end case;
end procedure;

procedure change_direction_hit_left(signal   ballm   : inout integer) is
begin
			case ballm is
				when 0 => ballm <= 0;
				when 1 => ballm <= 15;
				when 2 => ballm <= 14;
				when 3 => ballm <= 13;
				when 4 => ballm <= 12;
				when 5 => ballm <= 11;
				when 6 => ballm <= 10;
				when 7 => ballm <= 9;
				when 8 => ballm <= 8;
				when 9 => ballm <= 9;
				when 10 => ballm <= 10;
				when 11 => ballm <= 11;
				when 12 => ballm <= 12;
				when 13 => ballm <= 13;
				when 14 => ballm <= 14;
				when 15 => ballm <= 15;
			end case;
end procedure;

procedure hit_brick(	signal   brick   : inout STD_LOGIC;
							constant   brickx   : in positive;
							constant   bricky   : in positive;
							constant   brickw   : in positive;
							constant   brickh   : in positive;
							signal   ballx   : in integer;
							signal   bally   : in integer;
							constant   balls   : in positive;
							signal   ballm   : inout integer;
							signal hit_rare : inout STD_LOGIC;
							signal hit_up : inout STD_LOGIC;
							signal hit_right : inout STD_LOGIC;
							signal hit_down : inout STD_LOGIC;
							signal hit_left : inout STD_LOGIC) is
begin
		if (brick='1' and ((brickx <= ballx and ballx <= brickx+brickw) or
			(brickx <= ballx+balls and ballx+balls <= brickx+brickw)) and
			((bricky <= bally and bally <= bricky+brickh) or
			(bricky <= bally+balls and bally+balls <= bricky+brickh))) then
						brick <= '0';
						if (	(brickx = ballx+balls and bricky = bally+balls) or
								(brickx+brickw = ballx and bricky = bally+balls) or
								(brickx = ballx+balls and bricky+brickh = bally) or
								(brickx+brickw = ballx and bricky+brickh = bally)) then
								hit_rare <= '1';
						elsif (bricky = bally+balls) then
							if (hit_right = '1' or hit_left = '1') then
								hit_rare <= '1';
							else
								hit_up <= '1';
							end if;
						elsif (brickx+brickw = ballx)then
							if (hit_up = '1' or hit_down = '1') then
								hit_rare <= '1';
							else
								hit_right <= '1';
							end if;
						elsif (bricky+brickh = bally) then
							if (hit_right = '1' or hit_left = '1') then
								hit_rare <= '1';
							else
								hit_down <= '1';
							end if;
						elsif (brickx = ballx+balls) then
							if (hit_up = '1' or hit_down = '1') then
								hit_rare <= '1';
							else
								hit_left <= '1';
							end if;
						end if;
						
		end if;
end procedure;

begin

	ready : process(RDY)
	begin
		if (RDY = '1') then
			case ballm is
				when 0 => bally <= bally-1;
				when 1 => bally <= bally-1; ballh <= NOT ballh; if (ballh = '1') then ballx <= ballx+1; end if;
				when 2 => bally <= bally-1; ballx <= ballx+1;
				when 3 => ballx <= ballx+1; ballh <= NOT ballh; if (ballh = '1') then bally <= bally-1; end if;
				when 4 => ballx <= ballx+1;
				when 5 => ballx <= ballx+1; ballh <= NOT ballh; if (ballh = '1') then bally <= bally+1; end if;
				when 6 => bally <= bally+1; ballx <= ballx+1;
				when 7 => bally <= bally+1; ballh <= NOT ballh; if (ballh = '1') then ballx <= ballx+1; end if;
				when 8 => bally <= bally+1;
				when 9 => bally <= bally+1; ballh <= NOT ballh; if (ballh = '1') then ballx <= ballx-1; end if;
				when 10 => bally <= bally+1; ballx <= ballx-1;
				when 11 => ballx <= ballx-1; ballh <= NOT ballh; if (ballh = '1') then bally <= bally+1; end if;
				when 12 => ballx <= ballx-1;
				when 13 => ballx <= ballx-1; ballh <= NOT ballh; if (ballh = '1') then bally <= bally-1; end if;
				when 14 => bally <= bally-1; ballx <= ballx-1;
				when 15 => bally <= bally-1; ballh <= NOT ballh; if (ballh = '1') then ballx <= ballx-1; end if;
				when 16 => bally <= 320; ballx <= 320;
			end case;
		end if;
	end process;
	
	hit : process(ballx, bally)
	begin
		if (ballm = 16) then
			ballm <= 6;
		end if;
		hit_rare <= '0';
		hit_up <= '0';
		hit_right <= '0';
		hit_down <= '0';
		hit_left <= '0';
		if (won_lost = '1') then
		--hit_brick(brickw01, brickw01x, brickw01y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw02, brickw02x, brickw02y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw03, brickw03x, brickw03y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw04, brickw04x, brickw04y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw05, brickw05x, brickw05y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw06, brickw06x, brickw06y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw07, brickw07x, brickw07y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw08, brickw08x, brickw08y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw09, brickw09x, brickw09y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw10, brickw10x, brickw10y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw11, brickw11x, brickw11y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw12, brickw12x, brickw12y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw13, brickw13x, brickw13y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw14, brickw14x, brickw14y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw15, brickw15x, brickw15y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw16, brickw16x, brickw16y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw17, brickw17x, brickw17y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw18, brickw18x, brickw18y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw19, brickw19x, brickw19y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickw20, brickw20x, brickw20y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		else
		hit_brick(brickl01, brickl01x, brickl01y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl02, brickl02x, brickl02y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl03, brickl03x, brickl03y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl04, brickl04x, brickl04y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl05, brickl05x, brickl05y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl06, brickl06x, brickl06y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		--hit_brick(brickl07, brickl07x, brickl07y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl08, brickl08x, brickl08y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl09, brickl09x, brickl09y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl10, brickl10x, brickl10y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl11, brickl11x, brickl11y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl12, brickl12x, brickl12y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl13, brickl13x, brickl13y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl14, brickl14x, brickl14y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl15, brickl15x, brickl15y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl16, brickl16x, brickl16y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl17, brickl17x, brickl17y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl18, brickl18x, brickl18y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl19, brickl19x, brickl19y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl20, brickl20x, brickl20y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl21, brickl21x, brickl21y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl22, brickl22x, brickl22y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickl23, brickl23x, brickl23y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		end if;
		hit_brick(bricky01, bricky01x, bricky01y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky02, bricky02x, bricky02y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky03, bricky03x, bricky03y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky04, bricky04x, bricky04y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky05, bricky05x, bricky05y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky06, bricky06x, bricky06y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky07, bricky07x, bricky07y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky08, bricky08x, bricky08y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky09, bricky09x, bricky09y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky10, bricky10x, bricky10y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky11, bricky11x, bricky11y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky12, bricky12x, bricky12y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky13, bricky13x, bricky13y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky14, bricky14x, bricky14y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky15, bricky15x, bricky15y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky16, bricky16x, bricky16y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky17, bricky17x, bricky17y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky18, bricky18x, bricky18y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky19, bricky19x, bricky19y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky20, bricky20x, bricky20y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky21, bricky21x, bricky21y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky22, bricky22x, bricky22y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky23, bricky23x, bricky23y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky24, bricky24x, bricky24y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky25, bricky25x, bricky25y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky26, bricky26x, bricky26y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky27, bricky27x, bricky27y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky28, bricky28x, bricky28y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky29, bricky29x, bricky29y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky30, bricky30x, bricky30y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky31, bricky31x, bricky31y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky32, bricky32x, bricky32y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky33, bricky33x, bricky33y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky34, bricky34x, bricky34y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(bricky35, bricky35x, bricky35y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm01, brickm01x, brickm01y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm02, brickm02x, brickm02y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm03, brickm03x, brickm03y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm04, brickm04x, brickm04y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm05, brickm05x, brickm05y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm06, brickm06x, brickm06y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm07, brickm07x, brickm07y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm08, brickm08x, brickm08y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm09, brickm09x, brickm09y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm10, brickm10x, brickm10y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm11, brickm11x, brickm11y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm12, brickm12x, brickm12y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm13, brickm13x, brickm13y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm14, brickm14x, brickm14y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm15, brickm15x, brickm15y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm16, brickm16x, brickm16y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm17, brickm17x, brickm17y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm18, brickm18x, brickm18y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm19, brickm19x, brickm19y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		hit_brick(brickm20, brickm20x, brickm20y, brickw, brickh, ballx, bally, balls, ballm, hit_rare, hit_up, hit_right, hit_down, hit_left);
		if (((palex <= ballx and ballx <= palex+palew) or
			(palex <= ballx+balls and ballx+balls <= palex+palew)) and
			((paley <= bally and bally <= paley+paleh) or
			(paley <= bally+balls and bally+balls <= paley+paleh))) then
						if (	(palex = ballx+balls and paley = bally+balls) or
								(palex+brickw = ballx and paley = bally+balls) or
								(palex = ballx+balls and paley+paleh = bally) or
								(palex+palew = ballx and paley+paleh = bally)) then
								if(hit_pale_help = '0') then
									change_direction_hit_rare(ballm);
								end if;
								hit_pale_help <= NOT hit_pale_help;
						elsif (paley = bally+balls) then
								if(hit_pale_help = '0') then
									change_direction_hit_up(ballm);
								end if;
								hit_pale_help <= NOT hit_pale_help;
						elsif (palex+palew = ballx+balls)then
								if(hit_pale_help = '0') then
									change_direction_hit_right(ballm);
								end if;
								hit_pale_help <= NOT hit_pale_help;
						elsif (paley+paleh = bally) then
								if(hit_pale_help = '0') then
									change_direction_hit_down(ballm);
								end if;
								hit_pale_help <= NOT hit_pale_help;
						elsif (palex = ballx+balls) then
								if(hit_pale_help = '0') then
									change_direction_hit_left(ballm);
								end if;
								hit_pale_help <= NOT hit_pale_help;
						end if;
		end if;
		if (	(ballx=0 and bally=0) or (ballx=640 and bally=0) or
				(ballx=0 and bally=480) or (ballx=640 and bally=480) or hit_rare = '1') then
				--bricky01 <= NOT bricky01;
				change_direction_hit_rare(ballm);
		elsif (bally <= 0 or hit_up = '1') then
			--bricky02 <= NOT bricky02;
			change_direction_hit_up(ballm);
		elsif(640 <= ballx+balls or hit_right = '1') then
			--bricky03 <= NOT bricky03;
			change_direction_hit_right(ballm);
		elsif(480 <= bally+balls) then
			--bricky04 <= NOT bricky04;
			--change_direction_hit_down(ballm);
			won_lost <= '0';
			ballm <= 16;
		elsif(hit_down = '1') then
			--bricky04 <= NOT bricky04;
			change_direction_hit_down(ballm);
		elsif(ballx <= 0 or hit_left = '1') then
			--bricky05 <= NOT bricky05;
			change_direction_hit_left(ballm);
		end if;
		if(bricky01='0' and bricky02='0' and bricky03='0' and bricky04='0' and bricky05='0' and
			bricky06='0' and bricky07='0' and bricky08='0' and bricky09='0' and bricky10='0' and
			bricky11='0' and bricky12='0' and bricky13='0' and bricky14='0' and bricky15='0' and
			bricky16='0' and bricky17='0' and bricky18='0' and bricky19='0' and bricky20='0' and
			bricky21='0' and bricky22='0' and bricky23='0' and bricky24='0' and bricky25='0' and
			bricky26='0' and bricky27='0' and bricky28='0' and bricky29='0' and bricky30='0' and
			bricky31='0' and bricky32='0' and bricky33='0' and bricky34='0' and bricky35='0' and
			brickm01='0' and brickm02='0' and brickm03='0' and brickm04='0' and brickm05='0' and
			brickm06='0' and brickm07='0' and brickm08='0' and brickm09='0' and brickm10='0' and
			brickm11='0' and brickm12='0' and brickm13='0' and brickm14='0' and brickm15='0' and
			brickm16='0' and brickm17='0' and brickm18='0' and brickm19='0' and brickm20='0' and
			((won_lost='1' and
			brickw02='0' and brickw03='0' and brickw04='0' and brickw05='0' and
			brickw06='0' and brickw07='0' and brickw08='0' and brickw09='0' and brickw10='0' and
			brickw11='0' and brickw12='0' and brickw13='0' and brickw14='0' and brickw15='0' and
			brickw16='0' and brickw17='0' and brickw18='0' and brickw19='0' and brickw20='0') 
			or (won_lost='0' and
			brickl01='0' and brickl02='0' and brickl03='0' and brickl04='0' and brickl05='0' and
			brickl06='0' and brickl08='0' and brickl09='0' and brickl10='0' and
			brickl11='0' and brickl12='0' and brickl13='0' and brickl14='0' and brickl15='0' and
			brickl16='0' and brickl17='0' and brickl18='0' and brickl19='0' and brickl20='0' and
			brickl21='0' and brickl22='0' and brickl23='0'))) then
				won_lost <= '1';
				ballm <= 16;
		end if;
	end process;
	
x_s <= to_integer(unsigned(PIX_X));
y_s <= to_integer(unsigned(PIX_Y));
RGB <= "100" when ((bricky01='1' and bricky01x <= x_s and x_s <= bricky01x+brickw
						and bricky01y <= y_s and y_s <= bricky01y+brickh) or 
						(bricky02='1' and bricky02x <= x_s and x_s <= bricky02x+brickw
						and bricky02y <= y_s and y_s <= bricky02y+brickh) or 
						(bricky03='1' and bricky03x <= x_s and x_s <= bricky03x+brickw
						and bricky03y <= y_s and y_s <= bricky03y+brickh) or 
						(bricky04='1' and bricky04x <= x_s and x_s <= bricky04x+brickw
						and bricky04y <= y_s and y_s <= bricky04y+brickh) or 
						(bricky05='1' and bricky05x <= x_s and x_s <= bricky05x+brickw
						and bricky05y <= y_s and y_s <= bricky05y+brickh) or 
						(bricky06='1' and bricky06x <= x_s and x_s <= bricky06x+brickw
						and bricky06y <= y_s and y_s <= bricky06y+brickh) or 
						(bricky07='1' and bricky07x <= x_s and x_s <= bricky07x+brickw
						and bricky07y <= y_s and y_s <= bricky07y+brickh) or 
						(bricky08='1' and bricky08x <= x_s and x_s <= bricky08x+brickw
						and bricky08y <= y_s and y_s <= bricky08y+brickh) or 
						(bricky09='1' and bricky09x <= x_s and x_s <= bricky09x+brickw
						and bricky09y <= y_s and y_s <= bricky09y+brickh) or 
						(bricky10='1' and bricky10x <= x_s and x_s <= bricky10x+brickw
						and bricky10y <= y_s and y_s <= bricky10y+brickh) or 
						(bricky11='1' and bricky11x <= x_s and x_s <= bricky11x+brickw
						and bricky11y <= y_s and y_s <= bricky11y+brickh) or 
						(bricky12='1' and bricky12x <= x_s and x_s <= bricky12x+brickw
						and bricky12y <= y_s and y_s <= bricky12y+brickh) or 
						(bricky13='1' and bricky13x <= x_s and x_s <= bricky13x+brickw
						and bricky13y <= y_s and y_s <= bricky13y+brickh) or 
						(bricky14='1' and bricky14x <= x_s and x_s <= bricky14x+brickw
						and bricky14y <= y_s and y_s <= bricky14y+brickh) or 
						(bricky15='1' and bricky15x <= x_s and x_s <= bricky15x+brickw
						and bricky15y <= y_s and y_s <= bricky15y+brickh) or 
						(bricky16='1' and bricky16x <= x_s and x_s <= bricky16x+brickw
						and bricky16y <= y_s and y_s <= bricky16y+brickh) or 
						(bricky17='1' and bricky17x <= x_s and x_s <= bricky17x+brickw
						and bricky17y <= y_s and y_s <= bricky17y+brickh) or 
						(bricky18='1' and bricky18x <= x_s and x_s <= bricky18x+brickw
						and bricky18y <= y_s and y_s <= bricky18y+brickh) or 
						(bricky19='1' and bricky19x <= x_s and x_s <= bricky19x+brickw
						and bricky19y <= y_s and y_s <= bricky19y+brickh) or 
						(bricky20='1' and bricky20x <= x_s and x_s <= bricky20x+brickw
						and bricky20y <= y_s and y_s <= bricky20y+brickh) or 
						(bricky21='1' and bricky21x <= x_s and x_s <= bricky21x+brickw
						and bricky21y <= y_s and y_s <= bricky21y+brickh) or 
						(bricky22='1' and bricky22x <= x_s and x_s <= bricky22x+brickw
						and bricky22y <= y_s and y_s <= bricky22y+brickh) or 
						(bricky23='1' and bricky23x <= x_s and x_s <= bricky23x+brickw
						and bricky23y <= y_s and y_s <= bricky23y+brickh) or 
						(bricky24='1' and bricky24x <= x_s and x_s <= bricky24x+brickw
						and bricky24y <= y_s and y_s <= bricky24y+brickh) or 
						(bricky25='1' and bricky25x <= x_s and x_s <= bricky25x+brickw
						and bricky25y <= y_s and y_s <= bricky25y+brickh) or 
						(bricky26='1' and bricky26x <= x_s and x_s <= bricky26x+brickw
						and bricky26y <= y_s and y_s <= bricky26y+brickh) or 
						(bricky27='1' and bricky27x <= x_s and x_s <= bricky27x+brickw
						and bricky27y <= y_s and y_s <= bricky27y+brickh) or 
						(bricky28='1' and bricky28x <= x_s and x_s <= bricky28x+brickw
						and bricky28y <= y_s and y_s <= bricky28y+brickh) or 
						(bricky29='1' and bricky29x <= x_s and x_s <= bricky29x+brickw
						and bricky29y <= y_s and y_s <= bricky29y+brickh) or 
						(bricky30='1' and bricky30x <= x_s and x_s <= bricky30x+brickw
						and bricky30y <= y_s and y_s <= bricky30y+brickh) or 
						(bricky31='1' and bricky31x <= x_s and x_s <= bricky31x+brickw
						and bricky31y <= y_s and y_s <= bricky31y+brickh) or 
						(bricky32='1' and bricky32x <= x_s and x_s <= bricky32x+brickw
						and bricky32y <= y_s and y_s <= bricky32y+brickh) or 
						(bricky33='1' and bricky33x <= x_s and x_s <= bricky33x+brickw
						and bricky33y <= y_s and y_s <= bricky33y+brickh) or 
						(bricky34='1' and bricky34x <= x_s and x_s <= bricky34x+brickw
						and bricky34y <= y_s and y_s <= bricky34y+brickh) or 
						(bricky35='1' and bricky35x <= x_s and x_s <= bricky35x+brickw
						and bricky35y <= y_s and y_s <= bricky35y+brickh)) or
						(brickm01='1' and brickm01x <= x_s and x_s <= brickm01x+brickw
						and brickm01y <= y_s and y_s <= brickm01y+brickh) or 
						(brickm02='1' and brickm02x <= x_s and x_s <= brickm02x+brickw
						and brickm02y <= y_s and y_s <= brickm02y+brickh) or 
						(brickm03='1' and brickm03x <= x_s and x_s <= brickm03x+brickw
						and brickm03y <= y_s and y_s <= brickm03y+brickh) or 
						(brickm04='1' and brickm04x <= x_s and x_s <= brickm04x+brickw
						and brickm04y <= y_s and y_s <= brickm04y+brickh) or 
						(brickm05='1' and brickm05x <= x_s and x_s <= brickm05x+brickw
						and brickm05y <= y_s and y_s <= brickm05y+brickh) or 
						(brickm06='1' and brickm06x <= x_s and x_s <= brickm06x+brickw
						and brickm06y <= y_s and y_s <= brickm06y+brickh) or 
						(brickm07='1' and brickm07x <= x_s and x_s <= brickm07x+brickw
						and brickm07y <= y_s and y_s <= brickm07y+brickh) or 
						(brickm08='1' and brickm08x <= x_s and x_s <= brickm08x+brickw
						and brickm08y <= y_s and y_s <= brickm08y+brickh) or 
						(brickm09='1' and brickm09x <= x_s and x_s <= brickm09x+brickw
						and brickm09y <= y_s and y_s <= brickm09y+brickh) or 
						(brickm10='1' and brickm10x <= x_s and x_s <= brickm10x+brickw
						and brickm10y <= y_s and y_s <= brickm10y+brickh) or 
						(brickm11='1' and brickm11x <= x_s and x_s <= brickm11x+brickw
						and brickm11y <= y_s and y_s <= brickm11y+brickh) or 
						(brickm12='1' and brickm12x <= x_s and x_s <= brickm12x+brickw
						and brickm12y <= y_s and y_s <= brickm12y+brickh) or 
						(brickm13='1' and brickm13x <= x_s and x_s <= brickm13x+brickw
						and brickm13y <= y_s and y_s <= brickm13y+brickh) or 
						(brickm14='1' and brickm14x <= x_s and x_s <= brickm14x+brickw
						and brickm14y <= y_s and y_s <= brickm14y+brickh) or 
						(brickm15='1' and brickm15x <= x_s and x_s <= brickm15x+brickw
						and brickm15y <= y_s and y_s <= brickm15y+brickh) or 
						(brickm16='1' and brickm16x <= x_s and x_s <= brickm16x+brickw
						and brickm16y <= y_s and y_s <= brickm16y+brickh) or 
						(brickm17='1' and brickm17x <= x_s and x_s <= brickm17x+brickw
						and brickm17y <= y_s and y_s <= brickm17y+brickh) or 
						(brickm18='1' and brickm18x <= x_s and x_s <= brickm18x+brickw
						and brickm18y <= y_s and y_s <= brickm18y+brickh) or 
						(brickm19='1' and brickm19x <= x_s and x_s <= brickm19x+brickw
						and brickm19y <= y_s and y_s <= brickm19y+brickh) or 
						(brickm20='1' and brickm20x <= x_s and x_s <= brickm20x+brickw
						and brickm20y <= y_s and y_s <= brickm20y+brickh) or
						--(won_lost = '1' and brickw01='1' and brickw01x <= x_s and x_s <= brickw01x+brickw
						--and brickw01y <= y_s and y_s <= bricky01y+brickh) or 
						(won_lost = '1' and brickw02='1' and brickw02x <= x_s and x_s <= brickw02x+brickw
						and brickw02y <= y_s and y_s <= brickw02y+brickh) or 
						(won_lost = '1' and brickw03='1' and brickw03x <= x_s and x_s <= brickw03x+brickw
						and brickw03y <= y_s and y_s <= brickw03y+brickh) or 
						(won_lost = '1' and brickw04='1' and brickw04x <= x_s and x_s <= brickw04x+brickw
						and brickw04y <= y_s and y_s <= brickw04y+brickh) or 
						(won_lost = '1' and brickw05='1' and brickw05x <= x_s and x_s <= brickw05x+brickw
						and brickw05y <= y_s and y_s <= brickw05y+brickh) or 
						(won_lost = '1' and brickw06='1' and brickw06x <= x_s and x_s <= brickw06x+brickw
						and brickw06y <= y_s and y_s <= brickw06y+brickh) or 
						(won_lost = '1' and brickw07='1' and brickw07x <= x_s and x_s <= brickw07x+brickw
						and brickw07y <= y_s and y_s <= brickw07y+brickh) or 
						(won_lost = '1' and brickw08='1' and brickw08x <= x_s and x_s <= brickw08x+brickw
						and brickw08y <= y_s and y_s <= brickw08y+brickh) or 
						(won_lost = '1' and brickw09='1' and brickw09x <= x_s and x_s <= brickw09x+brickw
						and brickw09y <= y_s and y_s <= brickw09y+brickh) or 
						(won_lost = '1' and brickw10='1' and brickw10x <= x_s and x_s <= brickw10x+brickw
						and brickw10y <= y_s and y_s <= brickw10y+brickh) or 
						(won_lost = '1' and brickw11='1' and brickw11x <= x_s and x_s <= brickw11x+brickw
						and brickw11y <= y_s and y_s <= brickw11y+brickh) or 
						(won_lost = '1' and brickw12='1' and brickw12x <= x_s and x_s <= brickw12x+brickw
						and brickw12y <= y_s and y_s <= brickw12y+brickh) or 
						(won_lost = '1' and brickw13='1' and brickw13x <= x_s and x_s <= brickw13x+brickw
						and brickw13y <= y_s and y_s <= brickw13y+brickh) or 
						(won_lost = '1' and brickw14='1' and brickw14x <= x_s and x_s <= brickw14x+brickw
						and brickw14y <= y_s and y_s <= brickw14y+brickh) or 
						(won_lost = '1' and brickw15='1' and brickw15x <= x_s and x_s <= brickw15x+brickw
						and brickw15y <= y_s and y_s <= brickw15y+brickh) or 
						(won_lost = '1' and brickw16='1' and brickw16x <= x_s and x_s <= brickw16x+brickw
						and brickw16y <= y_s and y_s <= brickw16y+brickh) or 
						(won_lost = '1' and brickw17='1' and brickw17x <= x_s and x_s <= brickw17x+brickw
						and brickw17y <= y_s and y_s <= brickw17y+brickh) or 
						(won_lost = '1' and brickw18='1' and brickw18x <= x_s and x_s <= brickw18x+brickw
						and brickw18y <= y_s and y_s <= brickw18y+brickh) or 
						(won_lost = '1' and brickw19='1' and brickw19x <= x_s and x_s <= brickw19x+brickw
						and brickw19y <= y_s and y_s <= brickw19y+brickh) or 
						(won_lost = '1' and brickw20='1' and brickw20x <= x_s and x_s <= brickw20x+brickw
						and brickw20y <= y_s and y_s <= brickw20y+brickh) or 
						(won_lost = '0' and brickl01='1' and brickl01x <= x_s and x_s <= brickl01x+brickw
						and brickl01y <= y_s and y_s <= brickl01y+brickh) or 
						(won_lost = '0' and brickl02='1' and brickl02x <= x_s and x_s <= brickl02x+brickw
						and brickl02y <= y_s and y_s <= brickl02y+brickh) or 
						(won_lost = '0' and brickl03='1' and brickl03x <= x_s and x_s <= brickl03x+brickw
						and brickl03y <= y_s and y_s <= brickl03y+brickh) or 
						(won_lost = '0' and brickl04='1' and brickl04x <= x_s and x_s <= brickl04x+brickw
						and brickl04y <= y_s and y_s <= brickl04y+brickh) or 
						(won_lost = '0' and brickl05='1' and brickl05x <= x_s and x_s <= brickl05x+brickw
						and brickl05y <= y_s and y_s <= brickl05y+brickh) or 
						(won_lost = '0' and brickl06='1' and brickl06x <= x_s and x_s <= brickl06x+brickw
						and brickl06y <= y_s and y_s <= brickl06y+brickh) or 
						--(won_lost = '0' and brickl07='1' and bricky07x <= x_s and x_s <= brickl07x+brickw
						--and brickl07y <= y_s and y_s <= brickl07y+brickh) or 
						(won_lost = '0' and brickl08='1' and brickl08x <= x_s and x_s <= brickl08x+brickw
						and brickl08y <= y_s and y_s <= brickl08y+brickh) or 
						(won_lost = '0' and brickl09='1' and brickl09x <= x_s and x_s <= brickl09x+brickw
						and brickl09y <= y_s and y_s <= brickl09y+brickh) or 
						(won_lost = '0' and brickl10='1' and brickl10x <= x_s and x_s <= brickl10x+brickw
						and brickl10y <= y_s and y_s <= brickl10y+brickh) or 
						(won_lost = '0' and brickl11='1' and brickl11x <= x_s and x_s <= brickl11x+brickw
						and brickl11y <= y_s and y_s <= brickl11y+brickh) or 
						(won_lost = '0' and brickl12='1' and brickl12x <= x_s and x_s <= brickl12x+brickw
						and brickl12y <= y_s and y_s <= brickl12y+brickh) or 
						(won_lost = '0' and brickl13='1' and brickl13x <= x_s and x_s <= brickl13x+brickw
						and brickl13y <= y_s and y_s <= brickl13y+brickh) or 
						(won_lost = '0' and brickl14='1' and brickl14x <= x_s and x_s <= brickl14x+brickw
						and brickl14y <= y_s and y_s <= brickl14y+brickh) or 
						(won_lost = '0' and brickl15='1' and brickl15x <= x_s and x_s <= brickl15x+brickw
						and brickl15y <= y_s and y_s <= brickl15y+brickh) or 
						(won_lost = '0' and brickl16='1' and brickl16x <= x_s and x_s <= brickl16x+brickw
						and brickl16y <= y_s and y_s <= brickl16y+brickh) or 
						(won_lost = '0' and brickl17='1' and brickl17x <= x_s and x_s <= brickl17x+brickw
						and brickl17y <= y_s and y_s <= brickl17y+brickh) or 
						(won_lost = '0' and brickl18='1' and brickl18x <= x_s and x_s <= brickl18x+brickw
						and brickl18y <= y_s and y_s <= brickl18y+brickh) or 
						(won_lost = '0' and brickl19='1' and brickl19x <= x_s and x_s <= brickl19x+brickw
						and brickl19y <= y_s and y_s <= brickl19y+brickh) or 
						(won_lost = '0' and brickl20='1' and brickl20x <= x_s and x_s <= brickl20x+brickw
						and brickl20y <= y_s and y_s <= brickl20y+brickh) or 
						(won_lost = '0' and brickl21='1' and brickl21x <= x_s and x_s <= brickl21x+brickw
						and brickl21y <= y_s and y_s <= brickl21y+brickh) or 
						(won_lost = '0' and brickl22='1' and brickl22x <= x_s and x_s <= brickl22x+brickw
						and brickl22y <= y_s and y_s <= brickl22y+brickh) or 
						(won_lost = '0' and brickl23='1' and brickl23x <= x_s and x_s <= brickl23x+brickw
						and brickl23y <= y_s and y_s <= brickl23y+brickh) else
						"101" when (ballx <= x_s and x_s <= ballx+balls
						and bally <= y_s and y_s <= bally+balls) else
						"111" when (palex <= x_s and x_s <= palex+palew
						and paley <= y_s and y_s <= paley+paleh) else "010";

end Behavioral;
