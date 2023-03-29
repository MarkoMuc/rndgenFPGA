----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.03.2023 21:44:40
-- Design Name: 
-- Module Name: data_transmit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_transmit is
    Port ( 
        clk : in STD_LOGIC;
        reset : in std_logic;
        data_in : in std_logic_vector(7 downto 0);
        btnc: in std_logic;
        data_out : out std_logic);
end data_transmit;

architecture Behavioral of data_transmit is
    constant msgLen: integer := 1;
    signal byteIndex : integer range 0 to msgLen := 0;
    signal data_in_sig : std_logic_vector(7 downto 0);
    signal reset_s, start_s, sending, startSendingByte, doneSendingByte, doneSendingByteOld : std_logic;
    signal BTNC_old : std_logic;
begin
    reset_s <= not reset;
    start_s <= startSendingByte and sending;

    process(clk)
        begin 
            if rising_edge(clk) then
                
                BTNC_old <= BTNC;
                doneSendingByteOld <= doneSendingByte;
                
                if reset_s = '1' then 
                
                    sending <= '0';
                    startSendingByte <= '0';
                    --doneSendingByte <= '0';
                    BTNC_old <= '0';
                    byteIndex <= 0;
                    
                elsif doneSendingByte = '1' and doneSendingByteOld = '0' and byteIndex < msgLen then
                    
                    byteIndex <= byteIndex + 1;
                    sending <= '1';
                    startSendingByte <= '1';
                    
                elsif doneSendingByte = '1' and doneSendingByteOld = '0' and byteIndex = msgLen then
                    
                     startSendingByte <= '0';
                    byteIndex <= 0;
                    sending <= '0';
    
                elsif BTNC = '1' and BTNC_old = '0' then
                    sending <= '1';
                    startSendingByte <= '1';
                end if;
                     
            end if;
    end process;


 send_byte: entity work.UART_controller(Behavioral)
    port map(
        clk => clk,
        reset => reset_s, 
        start => start_s,
        data_in => data_in,
        done => doneSendingByte,
        data_out => data_out
    );

end Behavioral;
