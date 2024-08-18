library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Slow_Clk is

end TB_Slow_Clk;

architecture Behavioral of TB_Slow_Clk is

    COMPONENT Slow_Clk PORT(
        Clk_in : IN STD_LOGIC;
        Clk_out : OUT STD_LOGIC);
    END COMPONENT;

    SIGNAL Clk_in_TB, Clk_out_TB : STD_LOGIC := '0';

begin

    UUT : Slow_Clk PORT MAP (
        Clk_in => Clk_in_TB,
        Clk_out => Clk_out_TB
    );
    
    process begin
        Clk_in_TB <= NOT Clk_in_TB;
        WAIT FOR 2ns;
    end process;

end Behavioral;
