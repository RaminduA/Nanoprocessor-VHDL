library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PR is
    Port ( Sel : in STD_LOGIC_VECTOR (2 downto 0);
           Ins : out STD_LOGIC_VECTOR (11 downto 0));
end PR;

architecture Behavioral of PR is

    type ROM_ARRAY is array (0 to 7) of STD_LOGIC_VECTOR (11 downto 0);
    signal Instructions : ROM_ARRAY :=(
                          -- calculating the total of all integers between 1 and 3
                                        "101110000000",   -- MOVI R7,0
                                        "100100000011",   -- MOVI R2,3
                                        "100110000001",   -- MOVI R3,1
                                        "010110000000",   -- NEG R3
                                        "001110100000",   -- ADD R7,R2
                                        "000100110000",   -- ADD R2,R3
                                        "110100001100",   -- JNZ R2,4
                                        "010000000000"    -- NOP
                                    );
begin

    Ins <= Instructions(to_integer(UNSIGNED(Sel)));

end Behavioral;


