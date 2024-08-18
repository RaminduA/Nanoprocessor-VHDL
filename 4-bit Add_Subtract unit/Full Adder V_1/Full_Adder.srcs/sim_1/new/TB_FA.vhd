library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_FA is

end TB_FA;

architecture Behavioral of TB_FA is

    COMPONENT FA PORT(
        A,B,C_in : IN STD_LOGIC;
        C_out,S : OUT STD_LOGIC);
    END COMPONENT;

SIGNAL A_TB, B_TB, C_in_TB, S_TB, C_out_TB : STD_LOGIC;

begin

    UUT : FA PORT MAP (
        A => A_TB,
        B => B_TB,
        C_in => C_in_TB,
        S => S_TB,
        C_out => C_out_TB
    );

    process begin
        A_TB <= '0'; 
        B_TB <= '0';
        C_in_TB <= '0';
        WAIT FOR 50 ns;

        C_in_TB <= '1';
        WAIT FOR 50 ns; 

        B_TB <= '1' ;
        C_in_TB <= '0';
        WAIT FOR 50 ns;
        
        C_in_TB <= '1';
        WAIT FOR 50 ns;
        
        A_TB <= '1'; 
        B_TB <= '0';
        C_in_TB <= '0';
        WAIT FOR 50 ns;

        C_in_TB <= '1';
        WAIT FOR 50 ns; 

        B_TB <= '1' ;
        C_in_TB <= '0';
        WAIT FOR 50 ns;
        
        C_in_TB <= '1';
        WAIT; 
    end process;

end Behavioral;