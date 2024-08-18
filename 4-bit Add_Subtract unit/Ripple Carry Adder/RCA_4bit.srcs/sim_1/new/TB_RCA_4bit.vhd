library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_RCA_4bit is

end TB_RCA_4bit;

architecture Behavioral of TB_RCA_4bit is

    COMPONENT RCA_4bit PORT(
        A,B : IN STD_LOGIC_VECTOR (3 downto 0);
        C_in : IN STD_LOGIC;
        S : OUT STD_LOGIC_VECTOR (3 downto 0);
        C_out : OUT STD_LOGIC);
    END COMPONENT;

    SIGNAL A_TB, B_TB, S_TB : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL C_in_TB, C_out_TB : STD_LOGIC;

begin

    UUT : RCA_4bit PORT MAP (
        A => A_TB,
        B => B_TB,
        C_in => C_in_TB,
        S => S_TB,
        C_out => C_out_TB
    );

    process begin
        A_TB <= "0101"; 
        B_TB <= "0010";
        C_in_TB <= '0';
        WAIT FOR 100 ns;

        A_TB <= "0110"; 
        B_TB <= "0100";
        WAIT FOR 100 ns; 

        A_TB <= "1101"; 
        B_TB <= "0011";
        WAIT FOR 100 ns;
        
        A_TB <= "1010"; 
        B_TB <= "0111";
        WAIT FOR 100 ns;
        
        A_TB <= "0011"; 
        B_TB <= "1001";
        WAIT FOR 100 ns;

        A_TB <= "1111"; 
        B_TB <= "1111";
        WAIT FOR 100 ns; 

        A_TB <= "1011"; 
        B_TB <= "0100";
        WAIT FOR 100 ns;
        
        A_TB <= "1110"; 
        B_TB <= "1010";
        WAIT; 
    end process;

end Behavioral;
