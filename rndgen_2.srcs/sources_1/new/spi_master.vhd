----------------------------------------------------------------------------------
-- Spi Master communicates with the ADXL362

    -- 1. phase :
        -- standby for 6ns after powerup
        -- send write command, PCR address and Mode
        -- wait 40 ns -> 2.phase
    -- 2. phase :
        -- send read command, X address, read 6Bytes of X,Y,Z data
        -- wait 10ns, repeat

-- SCLK : 1MHz
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

entity spi_master is
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
end entity;

architecture Behavioral of spi_master is
    constant WRITECMD : std_logic_vector(7 downto 0) := X"0A"; -- Write Command
    constant READCMD : std_logic_vector(7 downto 0) := X"0B"; -- Read Command
    constant PCR : std_logic_vector(7 downto 0) := X"2D";  -- Power Control Register Address
    constant MEASURE : std_logic_vector(7 downto 0) := X"02"; -- Turn on measurment mode
    constant STARTADR: std_logic_vector(7 downto 0) := X"0E"; -- Address of the first data register - register X
    
    constant CLK_LIMIT : integer := 1; -- Counter for 1MHz SCLK 
    
    
    
    type allStates is (
        --Start upstate
        power_up,
        
        -- Setting up measurment mode, preparing for data read
        cs_low, 
        
        write_cmd1, write_cmd2, write_cmd3, write_cmd4, write_cmd5, write_cmd6, write_cmd7, write_cmd8,
        write_pcr1, write_pcr2, write_pcr3, write_pcr4, write_pcr5, write_pcr6, write_pcr7, write_pcr8,
        write_mode1, write_mode2, write_mode3, write_mode4, write_mode5, write_mode6, write_mode7, write_mode8,
       
        wait_40,
        
        -- Reading data in loop
        read_low,
        read_cmd1, read_cmd2, read_cmd3, read_cmd4, read_cmd5, read_cmd6, read_cmd7, read_cmd8,
        read_adr1, read_adr2, read_adr3, read_adr4, read_adr5, read_adr6, read_adr7, read_adr8,
        
        read_xdata1, read_xdata2, read_xdata3, read_xdata4, read_xdata5, read_xdata6, read_xdata7, read_xdata8,
        read_x2data1, read_x2data2, read_x2data3, read_x2data4, read_x2data5, read_x2data6, read_x2data7, read_x2data8,

        read_ydata1, read_ydata2, read_ydata3, read_ydata4, read_ydata5, read_ydata6, read_ydata7, read_ydata8,
        read_y2data1, read_y2data2, read_y2data3, read_y2data4, read_y2data5, read_y2data6, read_y2data7, read_y2data8,

        read_zdata1, read_zdata2, read_zdata3, read_zdata4, read_zdata5, read_zdata6, read_zdata7, read_zdata8,
        read_z2data1, read_z2data2, read_z2data3, read_z2data4, read_z2data5, read_z2data6, read_z2data7, read_z2data8,
        
        wait_10
        );
    
    signal state : allStates := power_up; -- start state
    signal counter : integer := 0; -- 4000 ticks per ms
    signal sclk_control : std_logic := '0'; -- turns sclk on/off
    
    signal sclk_counter : std_logic := '0'; -- generates sclk
    signal sclk_reg: std_logic := '0'; -- SCLK
    
    -- DATA
    signal x: std_logic_vector(15 downto 0);
    signal y: std_logic_vector(15 downto 0);
    signal z: std_logic_vector(15 downto 0);
    
    
    signal x_temp: std_logic_vector(11 downto 0);
    signal y_temp: std_logic_vector(11 downto 0);
    signal z_temp: std_logic_vector(11 downto 0);

    signal latch_data: std_logic := '0';
begin
    
    --SCLK -> 1MHz: 4*10^6 / 1*10^6 /2 = 2 
    sclk_gen : process(clk)
    begin
        if rising_edge(clk) then 
            sclk_counter <= NOT(sclk_counter);
            if sclk_counter = '1' then
                sclk_reg <= NOT(sclk_reg);
           end if;
        end if;
    end process;

    
   
    machine : process(clk, state)
    begin
        if rising_edge(clk) then
            counter <= counter  + 1;
            case (state) is
    --SET UP
               when power_up =>
                    -- waits 5ms for power up
                    if counter = 23999 then    -- 4000 * 6 = 24 000 => 6ns
                        state <= cs_low;
                    end if;
               when cs_low =>
                    -- Send cs_low signal to Accel
                    if counter = 24001 then
                        state <= write_cmd1;
                        cs <= '1';
                    end if;  
             -- Sends write command
               when write_cmd1 =>
                    if counter = 24003
                    then sclk_control <= '1'; --24003
                        mosi <= WRITECMD(7);
                    end if;
                    
                    if counter = 24005
                    then state <= write_cmd2;
                    end if;
               when write_cmd2 =>
                    
                    if countermosi <= WRITECMD(6);
                    if counter = 24009
                    then state <= write_cmd3;
                    end if;
                when write_cmd3 =>
                    mosi <= WRITECMD(5);
                    if counter = 24013
                    then state <= write_cmd4;
                    end if;
                when write_cmd4 =>
                    mosi <= WRITECMD(4);
                    if counter = 24017
                    then state <= write_cmd5;
                    end if;
                when write_cmd5 =>
                    mosi <= WRITECMD(3);
                    if counter = 24021
                    then state <= write_cmd6;
                    end if;
                when write_cmd6 =>
                    mosi <= WRITECMD(2);
                    if counter = 24025
                    then state <= write_cmd7;
                    end if;
                when write_cmd7 =>
                    mosi <= WRITECMD(1);
                    if counter = 24029
                    then state <= write_cmd8;
                    end if;
                when write_cmd8 =>
                    mosi <= WRITECMD(0);
                    if counter = 24033
                    then state <= write_pcr1;
                    end if;
                    
                -- Sends address of PCR register
                when write_pcr1 =>
                    mosi <= PCR(7);
                    if counter = 24037
                    then state <= write_pcr2;
                    end if;
               when write_pcr2 =>
                    mosi <= PCR(6);
                    if counter = 24041
                    then state <= write_pcr3;
                    end if;
                when write_pcr3 =>
                    mosi <= PCR(5);
                    if counter = 24045
                    then state <= write_pcr4;
                    end if;
                when write_pcr4 =>
                    mosi <= PCR(4);
                    if counter = 24049
                    then state <= write_pcr5;
                    end if;
                when write_pcr5 =>
                    mosi <= PCR(3);
                    if counter = 24053
                    then state <= write_pcr6;
                    end if;
                when write_pcr6 =>
                    mosi <= PCR(2);
                    if counter = 24057
                    then state <= write_pcr7;
                    end if;
                when write_pcr7 =>
                    mosi <= PCR(1);
                    if counter = 24061
                    then state <= write_pcr8;
                    end if;
                when write_pcr8 =>
                    mosi <= PCR(0);
                    if counter = 24065
                    then state <= write_mode1;
                    end if;
                
                -- Sets register PCR to measurment mode
                when write_mode1 =>
                    mosi <= MEASURE(7);
                    if counter = 24069
                    then state <= write_mode2;
                    end if;
               when write_mode2 =>
                    mosi <= MEASURE(6);
                    if counter = 24073
                    then state <= write_mode3;
                    end if;
                when write_mode3 =>
                    mosi <= MEASURE(5);
                    if counter = 24077
                    then state <= write_mode4;
                    end if;
                when write_mode4 =>
                    mosi <= MEASURE(4);
                    if counter = 24081
                    then state <= write_mode5;
                    end if;
                when write_mode5 =>
                    mosi <= MEASURE(3);
                    if counter = 24085
                    then state <= write_mode6;
                    end if;
                when write_mode6 =>
                    mosi <= MEASURE(2);
                    if counter = 24089
                    then state <= write_mode7;
                    end if;
                when write_mode7 =>
                    mosi <= MEASURE(1);
                    if counter = 24093
                    then state <= write_mode8;
                    end if;
                when write_mode8 =>
                    mosi <= MEASURE(0);
                    if counter = 24097
                    then 
                        state <= wait_40; -- Wait 40 seconds for valid data
                        counter <= 0;
                        cs <= '1'; -- Turn off CS
                        sclk_control <= '0'; -- Turn of SCLK
                    end if;
    -- READING DATA
                when wait_40 =>
                    if counter = 160002 then
                        counter <= 0;
                        state <= read_low;
                    end if;
                    
                -- Set CS to low
                when read_low => 
                    if counter = 1 then
                        sclk_control <= '1';
                        cs <= '0';
                        state <= read_cmd1;
                    end if;
                -- Send Read Command
                when read_cmd1 =>
                    mosi <= READCMD(7);
                    if counter = 4 
                    then state <= read_cmd2;
                    end if;
                when read_cmd2 =>
                    mosi <= READCMD(6);
                    if counter = 8 
                    then state <= read_cmd3;
                    end if;
                when read_cmd3 =>
                    mosi <= READCMD(5);
                    if counter = 12
                    then state <= read_cmd4;
                    end if;
                when read_cmd4 =>
                    mosi <= READCMD(4);
                    if counter = 16
                    then state <= read_cmd5;
                    end if;
                when read_cmd5 =>
                    mosi <= READCMD(3);
                    if counter = 20
                    then state <= read_cmd6;
                    end if;
                when read_cmd6 =>
                    mosi <= READCMD(2);
                    if counter = 24
                    then state <= read_cmd7;
                    end if;
                when read_cmd7 =>
                    mosi <= READCMD(1);
                    if counter = 28
                    then state <= read_cmd8;
                    end if;
                when read_cmd8 =>
                    mosi <= READCMD(0);
                    if counter = 32 
                    then state <= read_adr1;
                    end if;
                -- Send Start x register
                when read_adr1 =>
                    mosi <= STARTADR(7);
                    if counter = 36
                    then state <= read_adr2;
                    end if;
                when read_adr2 =>
                    mosi <= STARTADR(6);
                    if counter = 40
                    then state <= read_adr3;
                    end if;
                when read_adr3 =>
                    mosi <= STARTADR(5);
                    if counter = 44
                    then state <= read_adr4;
                    end if;
                when read_adr4 =>
                    mosi <= STARTADR(4);
                    if counter = 48
                    then state <= read_adr5;
                    end if;
                when read_adr5 =>
                    mosi <= STARTADR(3);
                    if counter = 52
                    then state <= read_adr6;
                    end if;
                when read_adr6 =>
                    mosi <= STARTADR(2);
                    if counter = 56
                    then state <= read_adr7;
                    end if;
                when read_adr7 =>
                    mosi <= STARTADR(1);
                    if counter = 60
                    then state <= read_adr8;
                    end if;
                when read_adr8 =>
                    mosi <= STARTADR(0);
                    if counter = 64
                    then state <= read_xdata1;
                    end if;
               
                -- Read X Data
                when read_xdata1 =>
                    X(7) <= miso;
                    if counter = 68
                    then state <= read_xdata2;
                    end if;
                when read_xdata2 =>
                    X(6) <= miso;
                    if counter = 72
                    then state <= read_xdata3;
                    end if;
                when read_xdata3 =>
                    X(5) <= miso;
                    if counter = 76
                    then state <= read_xdata4;
                    end if;
                when read_xdata4 =>
                    X(4) <= miso;
                    if counter = 80
                    then state <= read_xdata5;
                    end if;
                when read_xdata5 =>
                    X(3) <= miso;
                    if counter = 84
                    then state <= read_xdata6;
                    end if;
                when read_xdata6 =>
                    X(2) <= miso;
                    if counter = 88
                    then state <= read_xdata7;
                    end if;    
                when read_xdata7 =>
                    X(1) <= miso;
                    if counter = 92
                    then state <= read_xdata8;
                    end if;
                when read_xdata8 =>
                    X(0) <= miso;
                    if counter = 96
                    then state <= read_x2data1;
                    end if;
                
                 -- READS 2nd byte
                when read_x2data1 =>
                    if counter = 98 then
                    X(15) <= miso;
                    end if;
                    if counter = 100
                    then state <= read_x2data2;
                    end if;
                when read_x2data2 =>
                    X(14) <= miso;
                    if counter = 104
                    then state <= read_x2data3;
                    end if;
               when read_x2data3 =>
                    X(13) <= miso;
                    if counter = 108
                    then state <= read_x2data4;
                    end if;
                when read_x2data4 =>
                    X(12) <= miso;
                    if counter = 112
                    then state <= read_x2data5;
                    end if;   
                when read_x2data5 =>
                    X(11) <= miso;
                    if counter = 116
                    then state <= read_x2data6;
                    end if;
                when read_x2data6=>
                    X(10) <= miso;
                    if counter = 120
                    then state <= read_x2data7;
                    end if;
                 when read_x2data7 =>
                    X(9) <= miso;
                    if counter = 124
                    then state <= read_x2data8;
                    end if;
                when read_x2data8 =>
                    X(8) <= miso;
                    if counter = 128
                    then state <= read_ydata1;
                    end if;
               -- READ Y DATA
                when read_ydata1 =>
                    Y(7) <= miso;
                    if counter = 132
                    then state <= read_ydata2;
                    end if;
                when read_ydata2 =>
                    Y(6) <= miso;
                    if counter = 136
                    then state <= read_ydata3;
                    end if;
                when read_ydata3 =>
                    Y(5) <= miso;
                    if counter = 140
                    then state <= read_ydata4;
                    end if;
                when read_ydata4 =>
                    Y(4) <= miso;
                    if counter = 144
                    then state <= read_ydata5;
                    end if;
                when read_ydata5 =>
                    Y(3) <= miso;
                    if counter = 148
                    then state <= read_ydata6;
                    end if;
                when read_ydata6 =>
                    Y(2) <= miso;
                    if counter = 152
                    then state <= read_ydata7;
                    end if;    
                when read_ydata7 =>
                    Y(1) <= miso;
                    if counter = 156
                    then state <= read_ydata8;
                    end if;
                when read_ydata8 =>
                    Y(0) <= miso;
                    if counter = 160
                    then state <= read_y2data1;
                    end if;
                 
                 -- READS 2nd byte
                when read_y2data1 =>
                    Y(15) <= miso;
                    if counter = 164
                    then state <= read_y2data2;
                    end if;
                when read_y2data2 =>
                    Y(14) <= miso;
                    if counter = 168
                    then state <= read_y2data3;
                    end if;
               when read_y2data3 =>
                    Y(13) <= miso;
                    if counter = 172
                    then state <= read_y2data4;
                    end if;
                when read_y2data4 =>
                    Y(12) <= miso;
                    if counter = 176
                    then state <= read_y2data5;
                    end if;   
                when read_y2data5 =>
                    Y(11) <= miso;
                    if counter = 180
                    then state <= read_y2data6;
                    end if;
                when read_y2data6=>
                    Y(10) <= miso;
                    if counter = 184
                    then state <= read_y2data7;
                    end if;
                 when read_y2data7 =>
                    Y(9) <= miso;
                    if counter = 188
                    then state <= read_y2data8;
                    end if;
                when read_y2data8 =>
                    Y(8) <= miso;
                    if counter = 192
                    then state <= read_zdata1;
                    end if;
             
             -- READ Z DATA
                when read_zdata1 =>
                    Z(7) <= miso;
                    if counter = 196
                    then state <= read_zdata2;
                    end if;
                when read_zdata2 =>
                    Z(6) <= miso;
                    if counter = 200
                    then state <= read_zdata3;
                    end if;
                when read_zdata3 =>
                    Z(5) <= miso;
                    if counter = 204
                    then state <= read_zdata4;
                    end if;
                when read_zdata4 =>
                    Z(4) <= miso;
                    if counter = 208
                    then state <= read_zdata5;
                    end if;
                when read_zdata5 =>
                    Z(3) <= miso;
                    if counter = 212
                    then state <= read_zdata6;
                    end if;
                when read_zdata6 =>
                    Z(2) <= miso;
                    if counter = 216
                    then state <= read_zdata7;
                    end if;    
                when read_zdata7 =>
                    Z(1) <= miso;
                    if counter = 220
                    then state <= read_zdata8;
                    end if;
                when read_zdata8 =>
                    Z(0) <= miso;
                    if counter = 224
                    then state <= read_z2data1;
                    end if;
                 
                 -- READS 2nd byte
                when read_z2data1 =>
                    Z(15) <= miso;
                    if counter = 228
                    then state <= read_z2data2;
                    end if;
                when read_z2data2 =>
                    Z(14) <= miso;
                    if counter = 232
                    then state <= read_z2data3;
                    end if;
               when read_z2data3 =>
                    Z(13) <= miso;
                    if counter = 236
                    then state <= read_z2data4;
                    end if;
                when read_z2data4 =>
                    Z(12) <= miso;
                    if counter = 240
                    then state <= read_z2data5;
                    end if;   
                when read_z2data5 =>
                    Z(11) <= miso;
                    if counter = 244
                    then state <= read_z2data6;
                    end if;
                when read_z2data6=>
                    Z(10) <= miso;
                    if counter = 248
                    then state <= read_z2data7;
                    end if;
                 when read_z2data7 =>
                    Z(9) <= miso;
                    if counter = 252
                    then state <= read_z2data8;
                    end if;
                when read_z2data8 =>
                    Z(8) <= miso;
                    if counter = 256
                    then 
                        state <= wait_10;
                        cs <= '1';
                        sclk_control <= '0';
                    end if;
                 
                -- wait_10 --> loop to read_low
               when wait_10 =>
                   if counter = 40259
                   then
                        counter <= 0;
                        state <= read_low;
                   end if;
            end case;
            
        end if;
    end process;
    
    process(clk)
    begin
        if falling_edge(clk) then
            if latch_data = '1'
            then
                x_temp <= X(11 downto 0);
                y_temp <= Y(11 downto 0);
                z_temp <= Z(11 downto 0);
            end if;
        end if;
    end process;
    
    xout <= x_temp;
    yout <= y_temp;
    zout <= z_temp;

    sclk <= sclk_reg when sclk_control = '1' else '0';
    latch_data <= '1' when ((state = wait_10) and (counter = 258)) else '0';
end Behavioral;
