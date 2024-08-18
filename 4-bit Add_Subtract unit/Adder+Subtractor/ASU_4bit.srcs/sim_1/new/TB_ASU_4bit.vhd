library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_ASU_4bit is

end TB_ASU_4bit;

architecture Behavioral of TB_ASU_4bit is

    COMPONENT ASU_4bit PORT(
        A, B : in STD_LOGIC_VECTOR (3 downto 0);
        Sel : in STD_LOGIC;
        Ovfl, Zero : out STD_LOGIC;
        S : out STD_LOGIC_VECTOR (3 downto 0));
    END COMPONENT;
    
    SIGNAL A_TB, B_TB, S_TB : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL Sel_TB, Ovfl_TB, Zero_TB : STD_LOGIC;

begin

    UUT : ASU_4bit PORT MAP (
        A => A_TB,
        B => B_TB,
        Sel => Sel_TB,
        Ovfl => Ovfl_TB,
        Zero => Zero_TB,
        S => S_TB
    );

    process begin
        A_TB <= "1010";
        B_TB <= "0011";
        Sel_TB <= '0';
        WAIT FOR 100 ns;

        A_TB <= "0101";
        B_TB <= "0000";
        Sel_TB <= '1';
        WAIT FOR 100 ns;
        
        A_TB <= "0110";
        B_TB <= "0111";
        Sel_TB <= '0';
        WAIT FOR 100 ns;
        
        A_TB <= "0111";
        B_TB <= "0000";
        Sel_TB <= '1';
        WAIT FOR 100 ns;
        
        A_TB <= "1011";
        B_TB <= "0000";
        Sel_TB <= '1';
        WAIT FOR 100 ns;
        
        A_TB <= "1111";
        B_TB <= "0001";
        Sel_TB <= '0';
        WAIT FOR 100 ns;

        A_TB <= "1000";
        B_TB <= "0101";
        Sel_TB <= '0';
        WAIT FOR 100 ns;
        
        A_TB <= "1111";
        B_TB <= "0000";
        Sel_TB <= '1';
        WAIT FOR 100 ns;
        
        A_TB <= "0001";
        B_TB <= "0000";
        Sel_TB <= '1';
        WAIT FOR 100 ns;
        
        A_TB <= "0000";
        B_TB <= "0000";
        Sel_TB <= '1';
        WAIT; 
    end process;

end Behavioral;
