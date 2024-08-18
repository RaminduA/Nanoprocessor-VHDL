library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_MUX_2way_4bit is

end TB_MUX_2way_4bit;

architecture Behavioral of TB_MUX_2way_4bit is

    COMPONENT MUX_2way_4bit PORT(
            S : in STD_LOGIC;
            W_0, W_1 : in STD_LOGIC_VECTOR (3 downto 0);
            Q : out STD_LOGIC_VECTOR (3 downto 0));
    END COMPONENT;

    SIGNAL S_TB : STD_LOGIC;
    SIGNAL W_0_TB, W_1_TB, Q_TB : STD_LOGIC_VECTOR (3 downto 0);

begin

    UUT : MUX_2way_4bit PORT MAP (
        S => S_TB,
        W_0 => W_0_TB,
        W_1 => W_1_TB,
        Q => Q_TB
    );

    process begin
        W_0_TB <= "1010";
        W_1_TB <= "0110";
    
        S_TB <= '0';
        WAIT FOR 200 ns;

        S_TB <= '1';
        WAIT FOR 200 ns; 

        S_TB <= '0';
        WAIT FOR 200 ns;

        S_TB <= '1';
        WAIT; 
    end process;

end Behavioral;