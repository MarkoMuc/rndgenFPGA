----------------------------------------------------------------------------------

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity prescaleruart is
    generic (
        width : integer := 27);
    port (
        clock : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        limit : in  integer;
        ce    : out STD_LOGIC);
end entity;

architecture Behavioral of prescaleruart is
    signal value: unsigned(width-1 downto 0);
begin

    process (clock)
    begin
        if rising_edge(clock) then
            if reset = '1' then
                value <= (others => '0');
                ce <= '0';
            elsif value >= limit then
                value <= (others => '0');
                ce <= '1';
            else
                value <= value + 1;
                ce <= '0';
            end if;
        end if;
    end process;
end Behavioral;
