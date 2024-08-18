library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2way_4bit is
    Port ( 
        S : in STD_LOGIC;
        W_0, W_1 : in STD_LOGIC_VECTOR (3 downto 0);
        Q : out STD_LOGIC_VECTOR (3 downto 0)
    );
end MUX_2way_4bit;

architecture Behavioral of MUX_2way_4bit is 
    
begin 

    with S select
        Q <= W_0 when '0',
             W_1 when '1',
             "0000" when others;    

end Behavioral;
