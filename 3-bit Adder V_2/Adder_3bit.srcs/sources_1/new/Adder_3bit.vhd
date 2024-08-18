library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder_3bit is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC_VECTOR (2 downto 0));
end Adder_3bit;

architecture Behavioral of Adder_3bit is

    SIGNAL X : STD_LOGIC;

begin

    X <= A(2) AND A(1);
    S(0) <= NOT(A(0)) OR X ;
    S(1) <= (A(1) XOR A(0)) OR X;
    S(2) <= A(2) OR (A(1) AND A(0));

end Behavioral;