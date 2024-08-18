library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SSD is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (6 downto 0));
end SSD;

architecture Behavioral of SSD is

TYPE LUT is ARRAY (0 to 15) of STD_LOGIC_VECTOR(6 downto 0);
SIGNAL SSD_LUT : LUT := (
                            "1000000", -- 0
                            "1111001", -- 1
                            "0100100", -- 2
                            "0110000", -- 3
                            "0011001", -- 4
                            "0010010", -- 5
                            "0000010", -- 6
                            "1111000", -- 7
                            "0000000", -- 8
                            "0010000", -- 9    
                            "0001000", -- a
                            "0000011", -- b
                            "1000110", -- c
                            "0100001", -- d
                            "0000110", -- e
                            "0001110"  -- f
                        );
begin
    
    Y <= SSD_LUT(TO_INTEGER(UNSIGNED(I)));

end Behavioral;
