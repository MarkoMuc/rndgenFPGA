----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.03.2023 16:29:06
-- Design Name: 
-- Module Name: prescaler_tb - Behavioral
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

entity prescaler_tb is
--  Port ( );
end prescaler_tb;

architecture Behavioral of prescaler_tb is
    constant clock_period : time := 10ns;
    
    component prescaler is
        Port ( 
            CLK100MHZ : in STD_LOGIC;
            cs : out std_logic 
            );
    end component;
    
    signal clock, csn : std_logic;
begin
    UUT: prescaler
    port map (
        CLK100MHZ => clock,
        cs => csn);
    
    clk: process
    begin
        clock <= '0';
        wait for clock_period/2;
        clock <= '1';
        wait for clock_period/2;
    end process;

end Behavioral;
