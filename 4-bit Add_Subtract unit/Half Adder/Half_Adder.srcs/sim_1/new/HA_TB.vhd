library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_HA is

end TB_HA;

architecture Behavioral of TB_HA is

    COMPONENT HA 
        PORT(A,B : IN STD_LOGIC;
             C,S : OUT STD_LOGIC);
    END COMPONENT;

    SIGNAL A_TB, B_TB, C_TB, S_TB : STD_LOGIC;

begin

    UUT : HA PORT MAP(
        A => A_TB,
        B => B_TB,
        C => C_TB,
        S => S_TB
    );
    
    process begin
       A_TB <= '0'; 
       B_TB <= '0';
       WAIT FOR 100 ns;
       
       B_TB <= '1';
       WAIT FOR 100 ns;
       
       A_TB <= '1';
       B_TB <= '0';
       WAIT FOR 100 ns;
       
       B_TB <= '1';
       WAIT;
    end process;

end Behavioral;
