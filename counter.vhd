LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY counter IS
    PORT (
        clock : IN STD_LOGIC;
        slowClock : OUT STD_LOGIC);
END ENTITY counter;

ARCHITECTURE design OF counter IS
    SIGNAL valueFor1Hz : unsigned (26 DOWNTO 0) := (OTHERS => '0');
BEGIN
    PROCESS (clock)
    BEGIN
        IF (rising_edge(clock)) THEN
            IF (valueFor1Hz < "10111110101111000010000000") THEN
                valueFor1Hz <= valueFor1Hz + 1;
                slowClock <= '0';
            ELSE
                slowClock <= '1';
                valueFor1Hz <= (OTHERS => '0');
            END IF;
        END IF;

    END PROCESS;
END ARCHITECTURE;