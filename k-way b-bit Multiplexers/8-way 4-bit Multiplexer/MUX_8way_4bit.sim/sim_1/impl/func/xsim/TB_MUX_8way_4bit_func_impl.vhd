-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sun Jun  4 15:40:33 2023
-- Host        : MY-ROG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/RAMINDU/Desktop/2nd sem/Computer Organization and
--               Digital Design/Week 10/Lab 9-10/Nanoprocessor/k-way b-bit Multiplexers/8-way 4-bit
--               Multiplexer/MUX_8way_4bit.sim/sim_1/impl/func/xsim/TB_MUX_8way_4bit_func_impl.vhd}
-- Design      : MUX_8way_4bit
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MUX_8way_4bit is
  port (
    En : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    W_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    W_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    W_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    W_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    W_4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    W_5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    W_6 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    W_7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MUX_8way_4bit : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of MUX_8way_4bit : entity is "8fba3857";
end MUX_8way_4bit;

architecture STRUCTURE of MUX_8way_4bit is
  signal Q_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Q_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Q_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Q_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Q_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Q_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Q_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Q_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Q_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal S_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal W_0_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal W_1_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal W_2_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal W_3_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal W_4_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal W_5_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal W_6_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal W_7_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\Q_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(0),
      O => Q(0)
    );
\Q_OBUF[0]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Q_OBUF[0]_inst_i_2_n_0\,
      I1 => \Q_OBUF[0]_inst_i_3_n_0\,
      O => Q_OBUF(0),
      S => S_IBUF(2)
    );
\Q_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => W_3_IBUF(0),
      I1 => W_2_IBUF(0),
      I2 => S_IBUF(1),
      I3 => W_1_IBUF(0),
      I4 => S_IBUF(0),
      I5 => W_0_IBUF(0),
      O => \Q_OBUF[0]_inst_i_2_n_0\
    );
\Q_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => W_7_IBUF(0),
      I1 => W_6_IBUF(0),
      I2 => S_IBUF(1),
      I3 => W_5_IBUF(0),
      I4 => S_IBUF(0),
      I5 => W_4_IBUF(0),
      O => \Q_OBUF[0]_inst_i_3_n_0\
    );
\Q_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(1),
      O => Q(1)
    );
\Q_OBUF[1]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Q_OBUF[1]_inst_i_2_n_0\,
      I1 => \Q_OBUF[1]_inst_i_3_n_0\,
      O => Q_OBUF(1),
      S => S_IBUF(2)
    );
\Q_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => W_3_IBUF(1),
      I1 => W_2_IBUF(1),
      I2 => S_IBUF(1),
      I3 => W_1_IBUF(1),
      I4 => S_IBUF(0),
      I5 => W_0_IBUF(1),
      O => \Q_OBUF[1]_inst_i_2_n_0\
    );
\Q_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => W_7_IBUF(1),
      I1 => W_6_IBUF(1),
      I2 => S_IBUF(1),
      I3 => W_5_IBUF(1),
      I4 => S_IBUF(0),
      I5 => W_4_IBUF(1),
      O => \Q_OBUF[1]_inst_i_3_n_0\
    );
\Q_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(2),
      O => Q(2)
    );
\Q_OBUF[2]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Q_OBUF[2]_inst_i_2_n_0\,
      I1 => \Q_OBUF[2]_inst_i_3_n_0\,
      O => Q_OBUF(2),
      S => S_IBUF(2)
    );
\Q_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => W_3_IBUF(2),
      I1 => W_2_IBUF(2),
      I2 => S_IBUF(1),
      I3 => W_1_IBUF(2),
      I4 => S_IBUF(0),
      I5 => W_0_IBUF(2),
      O => \Q_OBUF[2]_inst_i_2_n_0\
    );
\Q_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => W_7_IBUF(2),
      I1 => W_6_IBUF(2),
      I2 => S_IBUF(1),
      I3 => W_5_IBUF(2),
      I4 => S_IBUF(0),
      I5 => W_4_IBUF(2),
      O => \Q_OBUF[2]_inst_i_3_n_0\
    );
\Q_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(3),
      O => Q(3)
    );
\Q_OBUF[3]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Q_OBUF[3]_inst_i_2_n_0\,
      I1 => \Q_OBUF[3]_inst_i_3_n_0\,
      O => Q_OBUF(3),
      S => S_IBUF(2)
    );
\Q_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => W_3_IBUF(3),
      I1 => W_2_IBUF(3),
      I2 => S_IBUF(1),
      I3 => W_1_IBUF(3),
      I4 => S_IBUF(0),
      I5 => W_0_IBUF(3),
      O => \Q_OBUF[3]_inst_i_2_n_0\
    );
\Q_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => W_7_IBUF(3),
      I1 => W_6_IBUF(3),
      I2 => S_IBUF(1),
      I3 => W_5_IBUF(3),
      I4 => S_IBUF(0),
      I5 => W_4_IBUF(3),
      O => \Q_OBUF[3]_inst_i_3_n_0\
    );
\S_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => S(0),
      O => S_IBUF(0)
    );
\S_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => S(1),
      O => S_IBUF(1)
    );
\S_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => S(2),
      O => S_IBUF(2)
    );
\W_0_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_0(0),
      O => W_0_IBUF(0)
    );
\W_0_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_0(1),
      O => W_0_IBUF(1)
    );
\W_0_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_0(2),
      O => W_0_IBUF(2)
    );
\W_0_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_0(3),
      O => W_0_IBUF(3)
    );
\W_1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_1(0),
      O => W_1_IBUF(0)
    );
\W_1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_1(1),
      O => W_1_IBUF(1)
    );
\W_1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_1(2),
      O => W_1_IBUF(2)
    );
\W_1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_1(3),
      O => W_1_IBUF(3)
    );
\W_2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_2(0),
      O => W_2_IBUF(0)
    );
\W_2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_2(1),
      O => W_2_IBUF(1)
    );
\W_2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_2(2),
      O => W_2_IBUF(2)
    );
\W_2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_2(3),
      O => W_2_IBUF(3)
    );
\W_3_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_3(0),
      O => W_3_IBUF(0)
    );
\W_3_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_3(1),
      O => W_3_IBUF(1)
    );
\W_3_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_3(2),
      O => W_3_IBUF(2)
    );
\W_3_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_3(3),
      O => W_3_IBUF(3)
    );
\W_4_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_4(0),
      O => W_4_IBUF(0)
    );
\W_4_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_4(1),
      O => W_4_IBUF(1)
    );
\W_4_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_4(2),
      O => W_4_IBUF(2)
    );
\W_4_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_4(3),
      O => W_4_IBUF(3)
    );
\W_5_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_5(0),
      O => W_5_IBUF(0)
    );
\W_5_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_5(1),
      O => W_5_IBUF(1)
    );
\W_5_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_5(2),
      O => W_5_IBUF(2)
    );
\W_5_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_5(3),
      O => W_5_IBUF(3)
    );
\W_6_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_6(0),
      O => W_6_IBUF(0)
    );
\W_6_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_6(1),
      O => W_6_IBUF(1)
    );
\W_6_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_6(2),
      O => W_6_IBUF(2)
    );
\W_6_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_6(3),
      O => W_6_IBUF(3)
    );
\W_7_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_7(0),
      O => W_7_IBUF(0)
    );
\W_7_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_7(1),
      O => W_7_IBUF(1)
    );
\W_7_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_7(2),
      O => W_7_IBUF(2)
    );
\W_7_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_7(3),
      O => W_7_IBUF(3)
    );
end STRUCTURE;
