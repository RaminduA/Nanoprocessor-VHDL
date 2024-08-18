library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ID is
    Port ( Ins : in STD_LOGIC_VECTOR (11 downto 0);
           Check : in STD_LOGIC_VECTOR (3 downto 0);
           RegEn : out STD_LOGIC_VECTOR (2 downto 0);
           Reg_A : out STD_LOGIC_VECTOR (2 downto 0);
           Reg_B : out STD_LOGIC_VECTOR (2 downto 0);
           Imd : out STD_LOGIC_VECTOR (3 downto 0);
           Load : out STD_LOGIC;
           Jmp : out STD_LOGIC;
           OpSel : out STD_LOGIC;
           Adr : out STD_LOGIC_VECTOR (2 downto 0));
end ID;

architecture Behavioral of ID is

    SIGNAL X, Y, Z : STD_LOGIC;

begin
    RegEn <= Ins (9 downto 7);
    Reg_A <= Ins (9 downto 7);
    Reg_B <= Ins (6 downto 4);
    Imd <= Ins (3 downto 0);
    Adr <= Ins (2 downto 0);
     
    process(Check) begin
        if(Check = "0000") then
            X <= '1' ;
        else
            X <= '0' ;
        end if;
    
        Y <= Ins(3);  
    end process;

    With Ins(11 downto 10) select Z <= '1' when "11", '0' when others;
    With Ins(11 downto 10) select Load <= '1' when "10", '0' when others;
    Jmp <= (X XOR Y) AND Z;
    OpSel <= Ins(10) XOR Ins(11);

end Behavioral;
