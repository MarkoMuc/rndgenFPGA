----------------------------------------------------------------------------------
-- Generic prescaler
-- In clk : 100Mhz
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity prescaler is
    Port ( 
        CLK100MHZ : in STD_LOGIC;
        cs : out std_logic 
        );
end prescaler;

architecture Behavioral of prescaler is
    signal count : unsigned(7 downto 0):= (others => '0');
    signal cs_internal : std_logic := '0';
begin
   cs <= cs_internal;
   
   prescale : process(CLK100MHZ)
    begin
        if rising_edge(CLK100MHZ) then
            if count = 12 then
               cs_internal <= NOT(cs_internal);
                count <= count + 1;
            elsif count = 24 then
               cs_internal <= '1';
               count <= (others => '0');
            else
                count <= count + 1;
                cs_internal <= cs_internal;
            end if;
        end if;
    end process;

end Behavioral;
