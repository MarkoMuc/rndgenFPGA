----------------------------------------------------------------------------------
-- description : top file that runs the project
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

entity top is
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
end top;

architecture Behavioral of top is


component prescaler is
    Port ( 
        CLK100MHZ : in STD_LOGIC;
        cs : out std_logic 
        );
end component;

component spi_master is
    Port ( 
        clk : in STD_LOGIC; -- 4MHz clock
        cs : out std_logic; --Chip select
        mosi : out std_logic; -- command line
        miso : in std_logic; -- data in line
        sclk : out std_logic; -- sclk
        
        xout : out std_logic_vector(11 downto 0);
        yout : out std_logic_vector(11 downto 0);
        zout : out std_logic_vector(11 downto 0)
        );
end component;


signal X : std_logic_vector(11 downto 0);
signal Y : std_logic_vector(11 downto 0);
signal Z : std_logic_vector(11 downto 0);
signal X_before: std_logic_vector(11 downto 0);
signal clk4mhz : std_logic;
signal ledr: std_logic := '0';

signal x_test : std_logic_vector(7 downto 0);

begin

   prescl_inst: prescaler
    port map (
        CLK100MHZ => CLK100MHZ,
        cs => clk4mhz);
   
   spi_inst: spi_master
   port map(
        clk => clk4mhz,
        cs => ACL_CSN,
        mosi => ACL_MOSI,
        miso => ACL_MISO,
        sclk => ACL_SCLK,
        xout => X,
        yout => Y,
        ZOUt => Z);
    
    data_transmit : entity work.data_transmit(Behavioral)
        port map(
            clk => CLK100MHZ,
            reset => CPU_RESETN,
            data_in => x_test,
            btnc => BTNC,
            data_out => UART_RXD_OUT);
            
    
   
    process(CLK100MHZ)
    begin
        if rising_edge(CLK100MHZ)
        then
            if X_before = X then
                ledr <= '1';
            else
                ledr <= '0';
            end if;
            X_before <= X;
        end if;
     end process;
     
     x_test <= X(11 downto 4);
     LED <= ledr;
end Behavioral;
