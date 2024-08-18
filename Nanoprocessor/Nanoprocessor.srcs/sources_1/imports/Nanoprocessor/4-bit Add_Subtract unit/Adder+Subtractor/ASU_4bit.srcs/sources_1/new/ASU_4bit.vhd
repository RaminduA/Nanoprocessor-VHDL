library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ASU_4bit is
    Port (
        A : in STD_LOGIC_VECTOR (3 downto 0);
        B : in STD_LOGIC_VECTOR (3 downto 0);
        Sel : in STD_LOGIC;
        Ovfl : out STD_LOGIC;
        Zero : out STD_LOGIC;
        S : out STD_LOGIC_VECTOR (3 downto 0)
    );
end ASU_4bit;

architecture Behavioral of ASU_4bit is

    COMPONENT FA
        PORT(
            A, B, C_in: in STD_LOGIC;
            S, C_out: out STD_LOGIC
        );
    END COMPONENT; 
    
    SIGNAL Q, X, C : STD_LOGIC_VECTOR (3 downto 0);

begin

    FA_0 : FA port map(
            A => Q(0), 
            B => B(0), 
            C_in => Sel, 
            S => X(0), 
            C_out => C(0)
        );
    FA_1 : FA port map(
            A => Q(1), 
            B => B(1), 
            C_in => C(0), 
            S => X(1), 
            C_out => C(1)
        );
    FA_2 : FA port map(
            A => Q(2), 
            B => B(2), 
            C_in => C(1), 
            S => X(2), 
            C_out => C(2)
        );
    FA_3 : FA port map(
            A => Q(3), 
            B => B(3), 
            C_in => C(2), 
            S => X(3), 
            C_out => C(3)
        );
    
    with Sel select Q <= A when '0', NOT(A) when others;
    Ovfl <= C(3) XOR C(2);
    with X select Zero <= '1' when "0000", '0' when others;
    S <= X;

end Behavioral;
