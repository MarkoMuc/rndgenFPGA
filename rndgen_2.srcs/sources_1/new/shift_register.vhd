----------------------------------------------------------------------------------
-- PISO register
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_register is
    port (
        clock : in STD_LOGIC;
        reset : in STD_LOGIC;
        write_data : in STD_LOGIC;
        shr_en : in STD_LOGIC;
        data_in : in STD_LOGIC_VECTOR (7 downto 0);
        data_out : out STD_LOGIC);
end shift_register;

architecture Behavioral of shift_register is
    -- shift register, 10 bits: 1x start + 8x data + 1x stop
    signal data : std_logic_vector(9 downto 0);
    
begin
    process (clock)
    begin
        if rising_edge(clock) then 
            if reset = '1' then                
                data <= (others => '1');
                data_out <= '1';               
            else 
                if write_data = '1' then 
                    -- start bit 
                    data(0) <= '0';
                    -- data bits
                    data(8 downto 1) <= data_in;
                    -- stop bit 
                    data(9) <= '1';
                    -- initialize output to ensure high level on RX even if we did not reset a circuit beforehand 
                    data_out <= '1';
                elsif shr_en = '1' then 
                    data_out <= data(0);
                    data(8 downto 0) <= data(9 downto 1);
                    data(9) <= '1';
                end if;
            end if;
        end if;    
    end process;

end Behavioral;
