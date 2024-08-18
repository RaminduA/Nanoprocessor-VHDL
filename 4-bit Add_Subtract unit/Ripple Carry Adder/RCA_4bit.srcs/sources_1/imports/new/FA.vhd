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

    COMPONENT HA PORT(
        A: in STD_LOGIC;
        B: in STD_LOGIC;
        S: out STD_LOGIC;
        C: out STD_LOGIC);
    END COMPONENT; 

    SIGNAL S_0, C_0, S_1, C_1 : STD_LOGIC; 

begin

    HA_0 : HA port map(
            A => A,
            B => B,
            S => S_0,
            C => C_0 
        );
    
    HA_1 : HA port map(
            A => S_0,
            B => C_in,
            S => S_1,
            C => C_1
        );
      
    C_out <= C_0 OR C_1;
    S <= S_1;
        
end Behavioral;
