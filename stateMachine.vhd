LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY stateMachine IS
    PORT (
        data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        mode : OUT STD_LOGIC;
        dir : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC
    );
END ENTITY stateMachine;

ARCHITECTURE behaviour OF stateMachine IS

    TYPE stateType IS (ins1, ins2, ins3, ins4, ins5, ins6, dt1, dt2, dt3, dt4, dt5);
    SIGNAL currentState : stateType;

BEGIN
    PROCESS (clk, reset)
    BEGIN
        IF (reset = '0') THEN
            currentState <= ins1;
        ELSIF (rising_edge(clk)) THEN
            CASE currentState IS

                    -- setting up the LCD
                WHEN ins1 =>
                    data <= "00111000";
                    mode <= '0';
                    currentState <= ins2;
                WHEN ins2 =>
                    data <= "00111000";
                    mode <= '0';
                    currentState <= ins3;
                WHEN ins3 =>
                    data <= "00001100";
                    mode <= '0';
                    currentState <= ins4;
                WHEN ins4 =>
                    data <= "00000001";
                    mode <= '0';
                    currentState <= ins5;
                WHEN ins5 =>
                    data <= "00000110";
                    mode <= '0';
                    currentState <= ins6;
                WHEN ins6 =>
                    data <= "10000000";
                    mode <= '0';
                    currentState <= dt1;

                    -- finished setting up. Sending Name Data.
                WHEN dt1 =>
                    data <= "01001000";
                    mode <= '1';
                    IF (dir = '0') THEN
                        currentState <= dt2;
                    ELSE
                        currentState <= dt5;
                    END IF;
                WHEN dt2 =>
                    data <= "01101111";
                    mode <= '1';
                    IF (dir = '0') THEN
                        currentState <= dt3;
                    ELSE
                        currentState <= dt1;
                    END IF;
                WHEN dt3 =>
                    data <= "01101110";
                    mode <= '1';
                    IF (dir = '0') THEN
                        currentState <= dt4;
                    ELSE
                        currentState <= dt2;
                    END IF;
                WHEN dt4 =>
                    data <= "01100101";
                    mode <= '1';
                    IF (dir = '0') THEN
                        currentState <= dt5;
                    ELSE
                        currentState <= dt3;
                    END IF;
                WHEN dt5 =>
                    data <= "01111001";
                    mode <= '1';
                    IF (dir = '0') THEN
                        currentState <= dt1; --loop back to the first letter of the name
                    ELSE
                        currentState <= dt4;
                    END IF;

            END CASE;
        END IF;
    END PROCESS;
END ARCHITECTURE;