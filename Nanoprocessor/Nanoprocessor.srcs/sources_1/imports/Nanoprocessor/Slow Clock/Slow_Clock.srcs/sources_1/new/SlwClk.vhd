library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Slow_Clk is
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end Slow_Clk;

architecture Behavioral of Slow_Clk is
    SIGNAL Count: integer := 1;
    SIGNAL Clk_Status : STD_LOGIC := '0';
    
begin

    process (Clk_in) begin
        if(rising_edge(Clk_in)) then
            Count <= Count + 1;
            --if(Count = 2) then    -- uncomment this when simulating
            if(Count=50000000) then    -- uncomment this when connecting to Basys3 Board
                Clk_Status <= NOT(Clk_Status);
                Clk_out <= Clk_Status;
                Count <= 1;
             end if;
        end if;
    end process;

end Behavioral;
