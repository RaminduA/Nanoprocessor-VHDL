library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_8way_4bit is
    Port ( 
        S : in STD_LOGIC_VECTOR (2 downto 0);
        W_0, W_1, W_2, W_3, W_4, W_5, W_6, W_7 : in STD_LOGIC_VECTOR (3 downto 0);
        Q : out STD_LOGIC_VECTOR (3 downto 0)
    );
end MUX_8way_4bit;

architecture Behavioral of MUX_8way_4bit is
    
begin 

    with S select
        Q <= W_0 when "000",
             W_1 when "001",
             W_2 when "010",
             W_3 when "011",
             W_4 when "100",
             W_5 when "101",
             W_6 when "110",
             W_7 when "111",
             "0000" when others;   

end Behavioral;
