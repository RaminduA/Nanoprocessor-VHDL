library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC is
    Port ( Adr : in STD_LOGIC_VECTOR (2 downto 0);
           Clk : in STD_LOGIC;
           Rst : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (2 downto 0) := "000");
end PC;

architecture Behavioral of PC is

begin

    process(Clk)begin
        if (Rst ='1') then
            S <= "000";   
        elsif(rising_edge(Clk)) then
            S <= Adr;
        end if;    
    end process;
    
end Behavioral;