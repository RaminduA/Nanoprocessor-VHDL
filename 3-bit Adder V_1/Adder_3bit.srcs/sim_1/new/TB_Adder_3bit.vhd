library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Adder_3bit is

end TB_Adder_3bit;

architecture Behavioral of TB_Adder_3bit is

    COMPONENT Adder_3bit PORT(
        A : IN STD_LOGIC_VECTOR (2 downto 0);
        S : OUT STD_LOGIC_VECTOR (2 downto 0));
    END COMPONENT;

    SIGNAL A_TB, S_TB : STD_LOGIC_VECTOR (2 downto 0);

begin

    UUT : Adder_3bit PORT MAP (
        A => A_TB,
        S => S_TB
    );

    process begin
        A_TB <= "101"; 
        WAIT FOR 100 ns;

        A_TB <= "110"; 
        WAIT FOR 100 ns; 

        A_TB <= "111"; 
        WAIT FOR 100 ns;
        
        A_TB <= "010"; 
        WAIT FOR 100 ns;
        
        A_TB <= "000"; 
        WAIT FOR 100 ns; 

        A_TB <= "100"; 
        WAIT FOR 100 ns;
        
        A_TB <= "001"; 
        WAIT FOR 100 ns;

        A_TB <= "011"; 
        WAIT; 
    end process;

end Behavioral;