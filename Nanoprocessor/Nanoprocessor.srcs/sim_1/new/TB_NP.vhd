library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_NP is

end TB_NP;

architecture Behavioral of TB_NP is

    COMPONENT NP Port ( 
        Clk, Rst : in STD_LOGIC;
        Disp : out STD_LOGIC_VECTOR (6 downto 0);
        LED, Anode : out  STD_LOGIC_VECTOR (3 downto 0);
        Zero, Ovfl : out STD_LOGIC);
    END COMPONENT;

    SIGNAL Clk_TB, Rst_TB : STD_LOGIC := '0';
    SIGNAL Disp_TB : STD_LOGIC_VECTOR (6 downto 0);
    SIGNAL LED_TB, Anode_TB : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL Zero_TB, Ovfl_TB : STD_LOGIC;

begin
    UUT: NP PORT MAP(
        Clk => Clk_TB,
        Rst => Rst_TB,
        Disp => Disp_TB,
        LED => LED_TB,
        Anode => Anode_TB,
        Zero => Zero_TB,
        Ovfl => Ovfl_TB);

    process begin
        WAIT FOR 2ns;
        Clk_TB <= NOT Clk_TB;
    end process;

end Behavioral;


