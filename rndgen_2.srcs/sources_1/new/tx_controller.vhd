----------------------------------------------------------------------------------
-- TX controller - FSM
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tx_control is
    port (
        clock : in STD_LOGIC;
        reset : in STD_LOGIC;
        start : in STD_LOGIC;
        tx_clk : in STD_LOGIC;
        done : out std_logic;
        psc_reset : out STD_LOGIC;
        write_data : out STD_LOGIC;
        shr_en : out STD_LOGIC);
end tx_control;

architecture Behavioral of tx_control is

    --Use descriptive names for the states, like st1_reset, st2_search
    type state_type is (
        ST_RESET, ST_IDLE, ST_START, ST_B0, ST_B1, ST_B2,
        ST_B3, ST_B4, ST_B5, ST_B6, ST_B7, ST_STOP);

    signal state, next_state : state_type;
    --Declare internal signals for all outputs of the state-machine
    signal psc_reset_i, write_data_i, shr_en_i, done_i : std_logic;

begin

    --Insert the following in the architecture after the begin keyword
    SYNC_PROC: process (clock)
    begin
        if rising_edge(clock) then
            if (reset = '1') then
                state <= ST_RESET;
                psc_reset <= '0';
                write_data <= '0';
                shr_en <= '0';
                done <= '0';
            else
                state <= next_state;
                psc_reset <= psc_reset_i;
                write_data <= write_data_i;
                shr_en <= shr_en_i;
                done <= done_i;
            end if;
        end if;
    end process;

    --MEALY State-Machine - Outputs based on state and inputs
    OUTPUT_DECODE: process (state, start, tx_clk)
    begin

        -- default output values (to avoid additional latches)
        psc_reset_i  <= '0';
        write_data_i <= '0';
        shr_en_i     <= '0';
        done_i <= '0';
        
        case state is
            when ST_RESET =>
                write_data_i <= '1';
            when ST_IDLE =>
                if start = '1' then
                    psc_reset_i <= '1';
                    shr_en_i <= '1';
                end if;
            when ST_START | ST_B0 | ST_B1 | ST_B2 | ST_B3 |
                    ST_B4 | ST_B5 | ST_B6 | ST_B7 =>
                if tx_clk = '1' then
                    shr_en_i <= '1';
                end if;
            when ST_STOP =>
                done_i <= '1';
                if tx_clk = '1' then
                    shr_en_i <= '1';
                end if;
                
            when others =>
                psc_reset_i  <= '0';
                write_data_i <= '0';
                shr_en_i     <= '0';
                done_i <= '0';
        end case;
    end process;

    NEXT_STATE_DECODE: process (state, start, tx_clk)
    begin
        --declare default state for next_state to avoid latches
        next_state <= state;  --default is to stay in current state
        
        case (state) is
            when ST_RESET =>
                next_state <= ST_IDLE;
            when ST_IDLE =>
                if start = '1' then next_state <= ST_START; end if;
            when ST_START =>
                if tx_clk = '1' then next_state <= ST_B0; end if;
            when ST_B0 =>
                if tx_clk = '1' then next_state <= ST_B1; end if;
            when ST_B1 =>
                if tx_clk = '1' then next_state <= ST_B2; end if;
            when ST_B2 =>
                if tx_clk = '1' then next_state <= ST_B3; end if;
            when ST_B3 =>
                if tx_clk = '1' then next_state <= ST_B4; end if;
            when ST_B4 =>
                if tx_clk = '1' then next_state <= ST_B5; end if;
            when ST_B5 =>
                if tx_clk = '1' then next_state <= ST_B6; end if;
            when ST_B6 =>
                if tx_clk = '1' then next_state <= ST_B7; end if;
            when ST_B7 =>
                if tx_clk = '1' then next_state <= ST_STOP; end if;
            when ST_STOP =>
                if tx_clk = '1' then next_state <= ST_RESET; end if;
            when others =>
                next_state <= ST_RESET;
        end case;
    end process;


end Behavioral;
