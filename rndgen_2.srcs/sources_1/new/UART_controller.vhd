----------------------------------------------------------------------------------
-- Top module: UART transmitter
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_controller is
    port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        start : in STD_LOGIC;
        data_in : in std_logic_vector(7 downto 0);
        done : out std_logic;
        data_out : out STD_LOGIC);
end UART_controller;

architecture Behavioral of UART_controller is
    constant baud_rate_limit : integer := 100e6 / 9600 - 1; -- 10415 --> 14 bits required
    
    signal prescaler_reset : std_logic;
    signal psc_reset, write_data, shr_en, tx_clk : std_logic;
begin

    prescaler_reset <= reset or psc_reset;
    
    
    baud_rate_gen: entity work.prescaleruart(Behavioral) 
    generic map (width => 14)
    port map (
        clock => clk,
        reset => prescaler_reset, 
        limit => baud_rate_limit, 
        ce    => tx_clk
    );
    
    PISO: entity work.shift_register(Behavioral) 
    port map(
        clock => clk,
        reset => reset, 
        write_data => write_data, 
        shr_en => shr_en, 
        data_in => data_in,
        data_out => data_out
    );
    
    controller: entity work.tx_control(Behavioral)
    port map(
        clock => clk,
        reset => reset, 
        write_data => write_data, 
        shr_en => shr_en, 
        psc_reset => psc_reset,
        tx_clk => tx_clk,
        start => start,
        done => done
    );

end Behavioral;
