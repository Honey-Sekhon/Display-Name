LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LCD IS
	PORT (
		CLOCK_50 : IN STD_LOGIC;
		sw : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
		key : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		lcd_on : OUT STD_LOGIC := '1';
		lcd_blon : OUT STD_LOGIC := '1';
		lcd_rw : OUT STD_LOGIC := '0';
		lcd_rs : OUT STD_LOGIC;
		lcd_en : OUT STD_LOGIC;
		lcd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY LCD;

ARCHITECTURE behaviour OF LCD IS

	COMPONENT stateMachine IS
		PORT (
			data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			mode : OUT STD_LOGIC;
			dir : IN STD_LOGIC;
			reset : IN STD_LOGIC;
			clk : IN STD_LOGIC
		);
	END COMPONENT stateMachine;

	COMPONENT counter IS
		PORT (
			clock : IN STD_LOGIC;
			slowClock : OUT STD_LOGIC);
	END COMPONENT counter;

	SIGNAL OneHzClock : STD_LOGIC;

BEGIN

	obj2 : counter
	PORT MAP(clock => CLOCK_50, slowClock => OneHzClock);

	lcd_en <= OneHzClock;

	obj1 : stateMachine
	PORT MAP(data => lcd_data, mode => lcd_rs, dir => sw(0), reset => key(3), clk => OneHzClock);

END ARCHITECTURE;