library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC
    );
end FA;

architecture Behavioral of FA is

    SIGNAL X : STD_LOGIC; 

begin
      
    X <= A XOR B;
    S <= X XOR C_in;
    C_out <= (A AND B) OR (X AND C_in);
        
end Behavioral;