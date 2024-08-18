library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Decoder_3_to_8 is
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           En : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end Decoder_3_to_8;

architecture Behavioral of Decoder_3_to_8 is

    SIGNAL X : STD_LOGIC_VECTOR (3 downto 0);

begin

    X(3) <= En;
    X(2 downto 0) <= I;

    with X select Y <=  "00000001" when "1000",
                        "00000010" when "1001",
                        "00000100" when "1010",
                        "00001000" when "1011",
                        "00010000" when "1100",
                        "00100000" when "1101",
                        "01000000" when "1110",
                        "10000000" when "1111",
                        "00000000" when others;

end Behavioral;
