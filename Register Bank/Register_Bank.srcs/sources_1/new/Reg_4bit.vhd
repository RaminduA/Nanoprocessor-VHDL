library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reg_4bit is
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           En : in STD_LOGIC;
           Rst : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end Reg_4bit;

architecture Behavioral of Reg_4bit is

begin

    process(Clk) begin
        if rising_edge(Clk) AND En = '1' then
            if (Rst = '1') then
                Q <= "0000";
            else
                Q <= D;
            end if;
        end if;    
    end process;

end Behavioral;
