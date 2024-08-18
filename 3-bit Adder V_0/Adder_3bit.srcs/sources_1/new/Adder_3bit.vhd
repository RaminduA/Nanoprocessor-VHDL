library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder_3bit is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           B : in STD_LOGIC_VECTOR (2 downto 0);
           C_in : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (2 downto 0);
           C_out : out STD_LOGIC);
end Adder_3bit;

architecture Behavioral of Adder_3bit is

    COMPONENT FA PORT(
        A: in STD_LOGIC;
        B: in STD_LOGIC;
        C_in: in STD_LOGIC;
        S: out STD_LOGIC;
        C_out: out STD_LOGIC);
    END COMPONENT; 

    SIGNAL S_0, S_1, S_2, C_1, C_2, C_3 : STD_LOGIC; 

begin

    FA_0 : FA port map(
            A => A(0),
            B => B(0),
            C_in => C_in,
            S => S_0,
            C_out => C_1
        );

    FA_1 : FA port map(
            A => A(1),
            B => B(1),
            C_in => C_1,
            S => S_1,
            C_out => C_2
        );

    FA_2 : FA port map(
            A => A(2),
            B => B(2),
            C_in => C_2,
            S => S_2,
            C_out => C_3
        );

    C_out <= C_3;
    S(0) <= S_0;
    S(1) <= S_1;
    S(2) <= S_2;

end Behavioral;