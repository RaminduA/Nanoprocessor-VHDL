library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_SSD is

end TB_SSD;

architecture Behavioral of TB_SSD is

   COMPONENT SSD Port ( 
      I : in STD_LOGIC_VECTOR (3 downto 0);
      Y : out STD_LOGIC_VECTOR (6 downto 0));
   END COMPONENT;

   SIGNAL I_TB : STD_LOGIC_VECTOR (3 downto 0);
   SIGNAL Y_TB : STD_LOGIC_VECTOR (6 downto 0);

begin
   
   UUT : SSD PORT MAP(
                        I => I_TB,
                        Y => Y_TB
                     );
   
process begin

     I_TB <= "0000";
     WAIT FOR 40ns;  
     I_TB <= "0001";
     WAIT FOR 40ns;
     I_TB <= "0010";
     WAIT FOR 40ns;
     I_TB<="0011";
     WAIT FOR 40ns;
     I_TB<="0100";
     WAIT FOR 40ns;
     I_TB<="0101";
     WAIT FOR 40ns;
     I_TB<="0110";
     WAIT FOR 40ns;
     I_TB<="0111";
     WAIT FOR 40ns;
     I_TB<="1000";
     WAIT FOR 40ns;
     I_TB<="1001";
     WAIT FOR 40ns;
     I_TB<="1010";
     WAIT FOR 40ns;
     I_TB<="1011";
     WAIT FOR 40ns;
     I_TB<="1100";
     WAIT FOR 40ns;
     I_TB<="1101";
     WAIT FOR 40ns;
     I_TB<="1110";
     WAIT FOR 40ns;
     I_TB<="1111";
     WAIT;   
      
end process;

end Behavioral;
