library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NP is
    Port ( Clk : in STD_LOGIC;
           Rst : in STD_LOGIC;
           Disp : out STD_LOGIC_VECTOR (6 downto 0);
           LED : out STD_LOGIC_VECTOR (3 downto 0);
           Anode : out  STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           Ovfl : out STD_LOGIC);
end NP;

architecture Behavioral of NP is

    COMPONENT Slow_Clk PORT ( 
        Clk_in : in STD_LOGIC;
        Clk_out : out STD_LOGIC);
    END COMPONENT;
    
    COMPONENT SSD PORT ( 
        I : in STD_LOGIC_VECTOR (3 downto 0);
        Y : out STD_LOGIC_VECTOR (6 downto 0));
    END COMPONENT;
    
    COMPONENT ID PORT (
        Ins : in STD_LOGIC_VECTOR (11 downto 0);
        Check : in STD_LOGIC_VECTOR (3 downto 0);
        RegEn, Reg_A, Reg_B, Adr : out STD_LOGIC_VECTOR (2 downto 0);
        Imd : out STD_LOGIC_VECTOR (3 downto 0);
        Load, Jmp, OpSel : out STD_LOGIC);
    END COMPONENT;
    
    COMPONENT RB PORT ( 
        D : in STD_LOGIC_VECTOR (3 downto 0);
        RegEn : in STD_LOGIC_VECTOR (2 downto 0);
        Clk, Rst : in STD_LOGIC;
        DB_0, DB_1, DB_2, DB_3, DB_4, DB_5, DB_6, DB_7 : out STD_LOGIC_VECTOR (3 downto 0));
    END COMPONENT;
    
    COMPONENT PR PORT ( 
        Sel : in STD_LOGIC_VECTOR (2 downto 0);
        Ins : out STD_LOGIC_VECTOR (11 downto 0));
    END COMPONENT;
    
    COMPONENT PC PORT ( 
        Adr : in STD_LOGIC_VECTOR (2 downto 0);
        Clk, Rst : in STD_LOGIC;
        S : out STD_LOGIC_VECTOR (2 downto 0) := "000");
    END COMPONENT;
    
    COMPONENT MUX_8way_4bit PORT ( 
        S : in STD_LOGIC_VECTOR (2 downto 0);
        W_0, W_1, W_2, W_3, W_4, W_5, W_6, W_7 : in STD_LOGIC_VECTOR (3 downto 0);
        Q : out STD_LOGIC_VECTOR (3 downto 0));
    END COMPONENT;
    
    COMPONENT MUX_2way_4bit PORT ( 
        S : in STD_LOGIC;
        W_0, W_1 : in STD_LOGIC_VECTOR (3 downto 0);
        Q : out STD_LOGIC_VECTOR (3 downto 0));
    END COMPONENT;
    
    COMPONENT MUX_2way_3bit PORT ( 
        S : in STD_LOGIC;
        W_0, W_1 : in STD_LOGIC_VECTOR (2 downto 0);
        Q : out STD_LOGIC_VECTOR (2 downto 0));
    END COMPONENT;
    
    COMPONENT ASU_4bit PORT ( 
        A, B : in STD_LOGIC_VECTOR (3 downto 0);
        Sel : in STD_LOGIC;
        Ovfl, Zero : out STD_LOGIC;
        S : out STD_LOGIC_VECTOR (3 downto 0));
    END COMPONENT;
    
    COMPONENT Adder_3bit PORT ( 
        A : in STD_LOGIC_VECTOR (2 downto 0);
        S : out STD_LOGIC_VECTOR (2 downto 0));
    END COMPONENT;
    
    SIGNAL Slw_Clk, Init_Rst, Rst_in : STD_LOGIC;
    SIGNAL Ins : STD_LOGIC_VECTOR (11 downto 0);
    SIGNAL Imd : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL RegEn, RegSel_A, RegSel_B : STD_LOGIC_VECTOR (2 downto 0);
    SIGNAL LoadSel, JmpSel, OpSel : STD_LOGIC;
    SIGNAL Rslt, Data : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL Reg_0, Reg_1, Reg_2, Reg_3, Reg_4, Reg_5, Reg_6, Reg_7, Reg_A, Reg_B:  STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL MemoSel, ROM_A, ROM_B, Adr : STD_LOGIC_VECTOR (2 downto 0);

begin

    Slow_Clk_0 : Slow_Clk PORT MAP(Clk_in => Clk, Clk_out => Slw_Clk);

    SSD_0 : SSD PORT MAP(I => Reg_7, Y => Disp);

    ID_0 : ID PORT MAP(Ins => Ins, Check => Reg_A, RegEn => RegEn, Reg_A => RegSel_A, Reg_B => RegSel_B, 
           Imd => Imd, Load => LoadSel, Jmp => JmpSel, OpSel => OpSel, Adr => ROM_B);

    RB_0 : RB PORT MAP(D => Data, RegEn => RegEn, Clk => Slw_Clk, Rst => Rst_in, DB_0 => Reg_0, DB_1 => Reg_1, 
           DB_2 => Reg_2, DB_3 => Reg_3, DB_4 => Reg_4, DB_5 => Reg_5, DB_6 => Reg_6, DB_7 => Reg_7);

    PR_0 : PR PORT MAP(Sel => MemoSel, Ins => Ins);

    PC_0 : PC PORT MAP(Adr => Adr, Clk => Slw_Clk, Rst => Rst_in, S => MemoSel);

    MUX_8way_4bit_A : MUX_8way_4bit PORT MAP(S => RegSel_A, W_0 => Reg_0, W_1 => Reg_1, W_2 => Reg_2, 
                      W_3 => Reg_3, W_4 => Reg_4, W_5 => Reg_5, W_6 => Reg_6, W_7 => Reg_7, Q => Reg_A);

    MUX_8way_4bit_B : MUX_8way_4bit PORT MAP(S => RegSel_B, W_0 => Reg_0, W_1 => Reg_1, W_2 => Reg_2, 
                      W_3 => Reg_3, W_4 => Reg_4, W_5 => Reg_5, W_6 => Reg_6, W_7 => Reg_7, Q => Reg_B);

    MUX_2way_4bit_0 : MUX_2way_4bit PORT MAP(S => LoadSel, W_0 => Rslt, W_1 => Imd, Q => Data);

    MUX_2way_3bit_0 : MUX_2way_3bit PORT MAP(S => JmpSel, W_0 => ROM_A, W_1 => ROM_B, Q => Adr);

    ASU_4bit_0 : ASU_4bit PORT MAP(A => Reg_A, B => Reg_B, Sel => OpSel, Ovfl => Ovfl, Zero => Zero, S => Rslt);

    Adder_3bit_0 :Adder_3bit PORT MAP(A => MemoSel, S => ROM_A);
    
    process begin
        Init_Rst <= '1';
        WAIT FOR 20ns;
        Init_Rst <= '0';
        WAIT;
    end process;
    
    Rst_in <= Rst OR Init_Rst;
    LED <= Reg_7;
    Anode <= "1110";

end Behavioral;
