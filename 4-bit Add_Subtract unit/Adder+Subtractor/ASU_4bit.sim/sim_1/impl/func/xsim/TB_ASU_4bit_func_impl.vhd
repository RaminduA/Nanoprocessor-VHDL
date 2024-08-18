-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed Jun  7 14:06:22 2023
-- Host        : MY-ROG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/RAMINDU/Desktop/2nd sem/Computer Organization and
--               Digital Design/Week 10/Lab 9-10/Nanoprocessor/4-bit Add_Subtract
--               unit/Adder+Subtractor/ASU_4bit.sim/sim_1/impl/func/xsim/TB_ASU_4bit_func_impl.vhd}
-- Design      : ASU_4bit
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ASU_4bit is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Sel : in STD_LOGIC;
    Ovfl : out STD_LOGIC;
    Zero : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ASU_4bit : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of ASU_4bit : entity is "1b3d0696";
end ASU_4bit;

architecture STRUCTURE of ASU_4bit is
  signal A_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal C_1 : STD_LOGIC;
  signal \FA_3/S_0\ : STD_LOGIC;
  signal Ovfl_OBUF : STD_LOGIC;
  signal S_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Sel_IBUF : STD_LOGIC;
  signal Zero_OBUF : STD_LOGIC;
  signal Zero_OBUF_inst_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Ovfl_OBUF_inst_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S_OBUF[0]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \S_OBUF[1]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of Zero_OBUF_inst_i_3 : label is "soft_lutpair0";
begin
\A_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(0),
      O => A_IBUF(0)
    );
\A_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(1),
      O => A_IBUF(1)
    );
\A_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(2),
      O => A_IBUF(2)
    );
\A_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(3),
      O => A_IBUF(3)
    );
\B_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(0),
      O => B_IBUF(0)
    );
\B_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(1),
      O => B_IBUF(1)
    );
\B_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(2),
      O => B_IBUF(2)
    );
\B_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(3),
      O => B_IBUF(3)
    );
Ovfl_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Ovfl_OBUF,
      O => Ovfl
    );
Ovfl_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2121412841284848"
    )
        port map (
      I0 => A_IBUF(3),
      I1 => B_IBUF(3),
      I2 => Sel_IBUF,
      I3 => A_IBUF(2),
      I4 => B_IBUF(2),
      I5 => C_1,
      O => Ovfl_OBUF
    );
Ovfl_OBUF_inst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF40EA8A"
    )
        port map (
      I0 => Sel_IBUF,
      I1 => B_IBUF(0),
      I2 => A_IBUF(0),
      I3 => B_IBUF(1),
      I4 => A_IBUF(1),
      O => C_1
    );
\S_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF(0),
      O => S(0)
    );
\S_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A_IBUF(0),
      I1 => B_IBUF(0),
      O => S_OBUF(0)
    );
\S_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF(1),
      O => S(1)
    );
\S_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28D7D728"
    )
        port map (
      I0 => A_IBUF(0),
      I1 => B_IBUF(0),
      I2 => Sel_IBUF,
      I3 => A_IBUF(1),
      I4 => B_IBUF(1),
      O => S_OBUF(1)
    );
\S_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF(2),
      O => S(2)
    );
\S_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => C_1,
      I1 => Sel_IBUF,
      I2 => A_IBUF(2),
      I3 => B_IBUF(2),
      O => S_OBUF(2)
    );
\S_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF(3),
      O => S(3)
    );
\S_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BE8D417D4172BE8"
    )
        port map (
      I0 => A_IBUF(2),
      I1 => B_IBUF(2),
      I2 => C_1,
      I3 => Sel_IBUF,
      I4 => A_IBUF(3),
      I5 => B_IBUF(3),
      O => S_OBUF(3)
    );
Sel_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Sel,
      O => Sel_IBUF
    );
Zero_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Zero_OBUF,
      O => Zero
    );
Zero_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008088004808004"
    )
        port map (
      I0 => \FA_3/S_0\,
      I1 => Zero_OBUF_inst_i_3_n_0,
      I2 => B_IBUF(2),
      I3 => A_IBUF(2),
      I4 => Sel_IBUF,
      I5 => C_1,
      O => Zero_OBUF
    );
Zero_OBUF_inst_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B_IBUF(3),
      I1 => A_IBUF(3),
      I2 => Sel_IBUF,
      O => \FA_3/S_0\
    );
Zero_OBUF_inst_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96000099"
    )
        port map (
      I0 => B_IBUF(1),
      I1 => A_IBUF(1),
      I2 => Sel_IBUF,
      I3 => B_IBUF(0),
      I4 => A_IBUF(0),
      O => Zero_OBUF_inst_i_3_n_0
    );
end STRUCTURE;
