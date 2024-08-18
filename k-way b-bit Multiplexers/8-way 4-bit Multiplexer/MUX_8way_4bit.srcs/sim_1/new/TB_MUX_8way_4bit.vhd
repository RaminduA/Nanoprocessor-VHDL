library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_MUX_8way_4bit is

end TB_MUX_8way_4bit;

architecture Behavioral of TB_MUX_8way_4bit is

    COMPONENT MUX_8way_4bit PORT(
            S : in STD_LOGIC_VECTOR (2 downto 0);
            W_0, W_1, W_2, W_3, W_4, W_5, W_6, W_7 : in STD_LOGIC_VECTOR (3 downto 0);
            Q : out STD_LOGIC_VECTOR (3 downto 0));
    END COMPONENT;

    SIGNAL S_TB : STD_LOGIC_VECTOR (2 downto 0);
    SIGNAL W_0_TB, W_1_TB, W_2_TB, W_3_TB, W_4_TB, W_5_TB, W_6_TB, W_7_TB, Q_TB : STD_LOGIC_VECTOR (3 downto 0);

begin

    UUT : MUX_8way_4bit PORT MAP (
        S => S_TB,
        W_0 => W_0_TB,
        W_1 => W_1_TB,
        W_2 => W_2_TB,
        W_3 => W_3_TB,
        W_4 => W_4_TB,
        W_5 => W_5_TB,
        W_6 => W_6_TB,
        W_7 => W_7_TB,
        Q => Q_TB
    );

    process begin
        W_0_TB <= "1111";
        W_1_TB <= "0000";
        W_2_TB <= "1110";
        W_3_TB <= "0110";
        W_4_TB <= "1001";
        W_5_TB <= "0010";
        W_6_TB <= "0111";
        W_7_TB <= "1101";
    
        S_TB <= "010";
        WAIT FOR 100 ns;

        S_TB <= "100";
        WAIT FOR 100 ns; 

        S_TB <= "011";
        WAIT FOR 100 ns; 

        S_TB <= "110";
        WAIT FOR 100 ns; 

        S_TB <= "000";
        WAIT FOR 100 ns; 

        S_TB <= "111";
        WAIT FOR 100 ns;

        S_TB <= "101";
        WAIT FOR 100 ns; 

        S_TB <= "001";
        WAIT; 
    end process;

end Behavioral;