----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.03.2023 16:06:04
-- Design Name: 
-- Module Name: top_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_tb is
--  Port ( );
end top_tb;

architecture Behavioral of top_tb is

component top is
    Port (
        CLK100MHZ : in std_logic;
        CPU_RESETN : in STD_LOGIC;
        BTNC : in STD_LOGIC;
        UART_RXD_OUT : out STD_LOGIC;
        LED : out std_logic;
        ACL_MISO : in std_logic;
        ACL_MOSI: out std_logic;
        ACL_SCLK: out std_logic;
        ACL_CSN: out std_logic);
end component;

constant clock_period : time := 10ns;

signal clock, led, miso,mosi,sclk,csn,reset,btn : std_logic := '0';

begin
    UUT: top
    port map(
        CLK100MHZ => clock,
        LED => led,
        CPU_RESETN => reset,
        BTNC => btn,
        ACL_MISO => miso,
        ACL_MOSI => mosi,
        ACL_SCLK => sclk,
        ACL_CSN => csn
    );
    
    -- Stimulus for clock
    clk: process
    begin
        clock <= '0';
        wait for clock_period/2;
        clock <= '1';
        wait for clock_period/2;
    end process;
    
    stimuli: process
    begin
        -- initialize
        miso <= '1';
        wait for clock_period * 10;
        miso <= '1';
        wait for clock_period * 10;

    end process;


end Behavioral;
