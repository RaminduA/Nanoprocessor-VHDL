library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_ID is

end TB_ID;

architecture Behavioral of TB_ID is

    COMPONENT ID is Port ( 
        Ins : in STD_LOGIC_VECTOR (11 downto 0);
        Check : in STD_LOGIC_VECTOR (3 downto 0);
        RegEn : out STD_LOGIC_VECTOR (2 downto 0);
        Reg_A : out STD_LOGIC_VECTOR (2 downto 0);
        Reg_B : out STD_LOGIC_VECTOR (2 downto 0);
        Imd : out STD_LOGIC_VECTOR (3 downto 0);
        Load : out STD_LOGIC;
        Jmp : out STD_LOGIC;
        OpSel : out STD_LOGIC;
        Adr : out STD_LOGIC_VECTOR (2 downto 0));
    END COMPONENT;
    
    SIGNAL Ins_TB : STD_LOGIC_VECTOR (11 downto 0);
    SIGNAL Check_TB : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL RegEn_TB : STD_LOGIC_VECTOR (2 downto 0);
    SIGNAL Reg_A_TB : STD_LOGIC_VECTOR (2 downto 0);
    SIGNAL Reg_B_TB : STD_LOGIC_VECTOR (2 downto 0);
    SIGNAL Imd_TB : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL Load_TB : STD_LOGIC;
    SIGNAL Jmp_TB : STD_LOGIC;
    SIGNAL OpSel_TB : STD_LOGIC;
    SIGNAL Adr_TB : STD_LOGIC_VECTOR (2 downto 0);

begin

    UUT : ID PORT MAP (
        Ins => Ins_TB,
        Check => Check_TB,
        RegEn => RegEn_TB,
        Reg_A => Reg_A_TB,
        Reg_B => Reg_B_TB,
        Imd => Imd_TB,
        Load => Load_TB,
        Jmp => Jmp_TB,
        OpSel => OpSel_TB,
        Adr => Adr_TB
    );

    process begin
        Ins_TB <= "100010001010";
        Check_TB <= "1010";
        WAIT FOR 100 ns;
                
        Ins_TB <= "100100000001";
        Check_TB <= "0111";
        WAIT FOR 100 ns;
                
        Ins_TB <= "010100000000";
        Check_TB <= "0011";
        WAIT FOR 100 ns;
                
        Ins_TB <= "000010100000";
        Check_TB <= "1010";
        WAIT FOR 100 ns;
                
        Ins_TB <= "110100000110";
        Check_TB <= "0000";
        WAIT FOR 100 ns;
                
        Ins_TB <= "111110000001";
        Check_TB <= "0001";
        WAIT FOR 100 ns;
                
        Ins_TB <= "000010001010";
        Check_TB <= "1011";
        WAIT FOR 100 ns;
                
        Ins_TB <= "011010000000";
        Check_TB <= "1111";
        WAIT FOR 100 ns;
                
        Ins_TB <= "110010000010";
        Check_TB <= "1101";
        WAIT FOR 100 ns;
                
        Ins_TB <= "110110000010";
        Check_TB <= "0000";
        WAIT; 
    end process;

end Behavioral;
