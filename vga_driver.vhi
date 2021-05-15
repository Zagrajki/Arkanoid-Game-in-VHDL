
-- VHDL Instantiation Created from source file vga_driver.vhd -- 18:02:51 03/17/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT vga_driver
	PORT(
		CLK_50MHZ : IN std_logic;
		RGB : IN std_logic_vector(2 downto 0);          
		VGA_R : OUT std_logic;
		VGA_G : OUT std_logic;
		VGA_B : OUT std_logic;
		VGA_HS : OUT std_logic;
		VGA_VS : OUT std_logic;
		MIC : OUT std_logic_vector(14 downto 0);
		PIX_X : OUT std_logic_vector(9 downto 0);
		PIX_Y : OUT std_logic_vector(8 downto 0)
		);
	END COMPONENT;

	Inst_vga_driver: vga_driver PORT MAP(
		CLK_50MHZ => ,
		RGB => ,
		VGA_R => ,
		VGA_G => ,
		VGA_B => ,
		VGA_HS => ,
		VGA_VS => ,
		MIC => ,
		PIX_X => ,
		PIX_Y => 
	);


