library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_PR is

end TB_PR;

architecture Behavioral of TB_PR is

    COMPONENT PR Port ( 
        Sel : in STD_LOGIC_VECTOR (2 downto 0);
        Ins : out STD_LOGIC_VECTOR (11 downto 0));
    END COMPONENT;

SIGNAL Sel_TB : STD_LOGIC_VECTOR (2 downto 0);
SIGNAL Ins_TB : STD_LOGIC_VECTOR (11 downto 0);

begin
UUT : PR port map(
                    Sel => Sel_TB,
                    Ins => Ins_TB 
                 );
    
    process begin
        Sel_TB <= "000";
        WAIT FOR 100 ns;
        
        Sel_TB <= "001";
        WAIT FOR 100 ns;       
  
        Sel_TB <= "010";
        WAIT FOR 100 ns; 
        
        Sel_TB <= "011";
        WAIT FOR 100 ns;
        
        Sel_TB <= "100";
        WAIT FOR 100 ns; 
        
        Sel_TB <= "101";
        WAIT FOR 100 ns;  
        
        Sel_TB <= "110";
        WAIT FOR 100 ns; 
        
        Sel_TB <= "111";
        WAIT;         
    end process;
    
end Behavioral;


