library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Decoder_3_to_8 is

end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is

    COMPONENT Decoder_3_to_8 is Port ( 
        I : in STD_LOGIC_VECTOR (2 downto 0);
        En : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR (7 downto 0));
    END COMPONENT;
    
    SIGNAL I_TB : STD_LOGIC_VECTOR (2 downto 0);
    SIGNAL En_TB : STD_LOGIC;
    SIGNAL Y_TB : STD_LOGIC_VECTOR (7 downto 0);

begin

    UUT : Decoder_3_to_8 PORT MAP (
        I => I_TB,
        En => En_TB,
        Y => Y_TB
    );

    process begin
        En_TB <= '0';
        I_TB <= "010";
        WAIT FOR 50 ns;

        I_TB <= "100";
        WAIT FOR 50 ns; 

        I_TB <= "011";
        WAIT FOR 50 ns; 

        I_TB <= "110";
        WAIT FOR 50 ns; 

        I_TB <= "000";
        WAIT FOR 50 ns; 

        I_TB <= "111";
        WAIT FOR 50 ns;

        I_TB <= "101";
        WAIT FOR 50 ns; 

        I_TB <= "001";
        WAIT FOR 50 ns;
        
        En_TB <= '1';
        I_TB <= "010";
        WAIT FOR 50 ns;

        I_TB <= "100";
        WAIT FOR 50 ns; 

        I_TB <= "011";
        WAIT FOR 50 ns; 

        I_TB <= "110";
        WAIT FOR 50 ns; 

        I_TB <= "000";
        WAIT FOR 50 ns; 

        I_TB <= "111";
        WAIT FOR 50 ns;

        I_TB <= "101";
        WAIT FOR 50 ns; 

        I_TB <= "001";
        WAIT; 
    end process;

end Behavioral;
