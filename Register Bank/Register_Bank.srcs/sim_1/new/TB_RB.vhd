library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_RB is

end TB_RB;

architecture Behavioral of TB_RB is

    COMPONENT RB Port ( 
        D : in STD_LOGIC_VECTOR (3 downto 0);
        RegEn: in STD_LOGIC_VECTOR (2 downto 0);
        Clk, Rst : in STD_LOGIC;
        DB_0, DB_1, DB_2, DB_3, DB_4, DB_5, DB_6, DB_7 : out STD_LOGIC_VECTOR (3 downto 0));
    END COMPONENT;

    SIGNAL  D_TB : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL  RegEn_TB : STD_LOGIC_VECTOR (2 downto 0);
    SIGNAL  Clk_TB :  STD_LOGIC := '1';
    SIGNAL  Rst_TB :  STD_LOGIC := '0';
    SIGNAL  DB0_TB, DB1_TB, DB2_TB, DB3_TB, DB4_TB, DB5_TB, DB6_TB, DB7_TB :  STD_LOGIC_VECTOR (3 downto 0);

begin

    UUT : RB port map(
                        D => D_TB, RegEn => RegEn_TB, Clk => Clk_TB, Rst => Rst_TB,  
                        DB_0 => DB0_TB, DB_1 => DB1_TB, DB_2 => DB2_TB, DB_3 => DB3_TB, 
                        DB_4 => DB4_TB, DB_5 => DB5_TB, DB_6 => DB6_TB,  DB_7 => DB7_TB
                    );

    process begin
        Clk_TB <= NOT Clk_TB;
        WAIT FOR 3ns;
    end process;

    process begin                  
        Rst_TB <= '0';
        D_TB <= "0010";
        RegEn_TB <= "001";
        WAIT FOR 80ns;
        
        D_TB <= "0000";
        RegEn_TB <= "010";
        WAIT FOR 80ns;
        
        D_TB <= "0111";
        RegEn_TB <= "011";
        WAIT FOR 80ns;
        
        D_TB <= "0001";
        RegEn_TB <= "100";
        WAIT FOR 80ns;
        
        D_TB <= "1101";
        RegEn_TB <= "101";
        WAIT FOR 80ns;
        
        D_TB <= "1110";
        RegEn_TB <= "110";
        WAIT FOR 80ns;
        
        D_TB <= "0101";
        RegEn_TB <= "111";
        WAIT;    
    end process;

end Behavioral;
