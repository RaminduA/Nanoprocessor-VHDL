library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_PC is

end TB_PC;

architecture Behavioral of TB_PC is

    COMPONENT PC PORT(
       Adr : in STD_LOGIC_VECTOR (2 downto 0);
       Clk, Rst : in STD_LOGIC;
       S : out STD_LOGIC_VECTOR (2 downto 0));
    END COMPONENT;

    SIGNAL Clk_TB, Rst_TB : STD_LOGIC;
    SIGNAL Adr_TB, S_TB : STD_LOGIC_VECTOR (2 downto 0);

begin

    UUT : PC PORT MAP (
        Adr => Adr_TB,
        Clk => Clk_TB,
        Rst => Rst_TB,
        S => S_TB
    );

    process begin
        Rst_TB <= '0';
        Clk_TB <= '0';
        Adr_TB <= "101";
        WAIT FOR 50 ns;

        Rst_TB <= '0';
        Clk_TB <= '1';
        Adr_TB <= "011";
        WAIT FOR 50 ns;

        Rst_TB <= '0';
        Clk_TB <= '0';
        Adr_TB <= "110";
        WAIT FOR 50 ns;
        
        Rst_TB <= '0';
        Clk_TB <= '0';
        Adr_TB <= "111";
        WAIT FOR 50 ns;

        Rst_TB <= '0';
        Clk_TB <= '1';
        Adr_TB <= "111";
        WAIT FOR 50 ns;

        Rst_TB <= '1';
        Clk_TB <= '1';
        Adr_TB <= "100";
        WAIT FOR 50 ns;

        Rst_TB <= '0';
        Clk_TB <= '0';
        Adr_TB <= "100";
        WAIT FOR 50 ns;

        Rst_TB <= '1';
        Clk_TB <= '1';
        Adr_TB <= "011";
        WAIT FOR 50 ns;

        Rst_TB <= '0';
        Clk_TB <= '1';
        Adr_TB <= "011";
        WAIT FOR 50 ns;

        Rst_TB <= '1';
        Clk_TB <= '0';
        Adr_TB <= "110";
        WAIT FOR 50 ns;
        
        Rst_TB <= '0';
        Clk_TB <= '1';
        Adr_TB <= "111";
        WAIT FOR 50 ns;

        Rst_TB <= '1';
        Clk_TB <= '1';
        Adr_TB <= "111";
        WAIT FOR 50 ns;

        Rst_TB <= '0';
        Clk_TB <= '1';
        Adr_TB <= "100";
        WAIT FOR 50 ns;

        Rst_TB <= '1';
        Clk_TB <= '0';
        Adr_TB <= "100";
        WAIT FOR 50 ns;

        Rst_TB <= '0';
        Clk_TB <= '1';
        Adr_TB <= "011";
        WAIT; 
    end process;

end Behavioral;
