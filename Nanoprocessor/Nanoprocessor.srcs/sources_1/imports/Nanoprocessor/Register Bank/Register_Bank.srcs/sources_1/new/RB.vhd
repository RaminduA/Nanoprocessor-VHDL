library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RB is
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           RegEn : in STD_LOGIC_VECTOR (2 downto 0);
           Clk : in STD_LOGIC;
           Rst : in STD_LOGIC;
           DB_0 : out STD_LOGIC_VECTOR (3 downto 0);
           DB_1 : out STD_LOGIC_VECTOR (3 downto 0);
           DB_2 : out STD_LOGIC_VECTOR (3 downto 0);
           DB_3 : out STD_LOGIC_VECTOR (3 downto 0);
           DB_4 : out STD_LOGIC_VECTOR (3 downto 0);
           DB_5 : out STD_LOGIC_VECTOR (3 downto 0);
           DB_6 : out STD_LOGIC_VECTOR (3 downto 0);
           DB_7 : out STD_LOGIC_VECTOR (3 downto 0));
end RB;

architecture Behavioral of RB is

    COMPONENT Reg_4bit Port (
        D : in STD_LOGIC_VECTOR (3 downto 0);
        En : in STD_LOGIC;
        Rst : in STD_LOGIC;
        Clk : in STD_LOGIC;
        Q : out STD_LOGIC_VECTOR (3 downto 0));
    END COMPONENT;

    COMPONENT Decoder_3_to_8 Port ( 
        I : in STD_LOGIC_VECTOR (2 downto 0);
        En : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR (7 downto 0));
    END COMPONENT;

    SIGNAL RegSel :STD_LOGIC_VECTOR (7 downto 0);
 
begin
    Dec : Decoder_3_to_8 PORT MAP(
            I => RegEn,
            En => '1',
            Y => RegSel
        );
        
    Reg_0 : Reg_4bit PORT MAP(
            D => "0000",
            En => '1',
            Rst => Rst,
            Clk => Clk,
            Q => DB_0        
        );
        
    Reg_1 : Reg_4bit PORT MAP(
            D => D,
            En => RegSel(1),
            Rst => Rst,
            Clk => Clk,
            Q => DB_1        
        );
                
    Reg_2 : Reg_4bit PORT MAP(
            D => D,
            En => RegSel(2),
            Rst => Rst,
            Clk => Clk,
            Q => DB_2        
        );
        
    Reg_3 : Reg_4bit PORT MAP(
            D => D,
            En => RegSel(3),
            Rst => Rst,
            Clk => Clk,
            Q => DB_3        
        );
        
    Reg_4 : Reg_4bit PORT MAP(
            D => D,
            En => RegSel(4),
            Rst => Rst,
            Clk => Clk,
            Q => DB_4        
        );
                
    Reg_5 : Reg_4bit PORT MAP(
            D => D,
            En => RegSel(5),
            Rst => Rst,
            Clk => Clk,
            Q => DB_5        
        );
                
    Reg_6 : Reg_4bit PORT MAP(
            D => D,
            En => RegSel(6),
            Rst => Rst,
            Clk => Clk,
            Q => DB_6        
        );
                
    Reg_7 : Reg_4bit PORT MAP(
            D => D,
            En => RegSel(7),
            Rst => Rst,
            Clk => Clk,
            Q => DB_7        
        );
                                          
end Behavioral;
