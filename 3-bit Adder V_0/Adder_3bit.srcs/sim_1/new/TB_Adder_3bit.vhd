library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Adder_3bit is

end TB_Adder_3bit;

architecture Behavioral of TB_Adder_3bit is

    COMPONENT Adder_3bit PORT(
        A,B : IN STD_LOGIC_VECTOR (2 downto 0);
        C_in : IN STD_LOGIC;
        S : OUT STD_LOGIC_VECTOR (2 downto 0);
        C_out : OUT STD_LOGIC);
    END COMPONENT;

    SIGNAL A_TB, B_TB, S_TB : STD_LOGIC_VECTOR (2 downto 0);
    SIGNAL C_in_TB, C_out_TB : STD_LOGIC;

begin

    UUT : Adder_3bit PORT MAP (
        A => A_TB,
        B => B_TB,
        C_in => C_in_TB,
        S => S_TB,
        C_out => C_out_TB
    );

    process begin
        A_TB <= "101"; 
        B_TB <= "010";
        C_in_TB <= '0';
        WAIT FOR 100 ns;

        A_TB <= "110"; 
        B_TB <= "100";
        WAIT FOR 100 ns; 

        A_TB <= "111"; 
        B_TB <= "011";
        WAIT FOR 100 ns;
        
        A_TB <= "010"; 
        B_TB <= "111";
        WAIT FOR 100 ns;

        A_TB <= "011"; 
        B_TB <= "001";
        WAIT; 
    end process;

end Behavioral;