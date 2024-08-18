-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sat Jun  3 13:52:29 2023
-- Host        : MY-ROG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/RAMINDU/Desktop/2nd sem/Computer Organization and
--               Digital Design/Week 10/Lab 9-10/Nanoprocessor/4-bit Add_Subtract unit/Ripple Carry
--               Adder/RCA_4bit.sim/sim_1/impl/func/xsim/TB_RCA_4bit_func_impl.vhd}
-- Design      : RCA_4bit
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RCA_4bit is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    C_in : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    C_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RCA_4bit : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of RCA_4bit : entity is "300808be";
end RCA_4bit;

architecture STRUCTURE of RCA_4bit is
  signal A_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal C_2 : STD_LOGIC;
  signal C_in_IBUF : STD_LOGIC;
  signal C_out_OBUF : STD_LOGIC;
  signal S_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of C_out_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S_OBUF[1]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \S_OBUF[3]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S_OBUF[3]_inst_i_2\ : label is "soft_lutpair1";
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
C_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => C_in,
      O => C_in_IBUF
    );
C_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => C_out_OBUF,
      O => C_out
    );
C_out_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => C_2,
      I1 => B_IBUF(2),
      I2 => A_IBUF(2),
      I3 => B_IBUF(3),
      I4 => A_IBUF(3),
      O => C_out_OBUF
    );
\S_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF(0),
      O => S(0)
    );
\S_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => C_in_IBUF,
      I1 => A_IBUF(0),
      I2 => B_IBUF(0),
      O => S_OBUF(0)
    );
\S_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF(1),
      O => S(1)
    );
\S_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => A_IBUF(0),
      I1 => B_IBUF(0),
      I2 => C_in_IBUF,
      I3 => A_IBUF(1),
      I4 => B_IBUF(1),
      O => S_OBUF(1)
    );
\S_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF(2),
      O => S(2)
    );
\S_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => C_2,
      I1 => A_IBUF(2),
      I2 => B_IBUF(2),
      O => S_OBUF(2)
    );
\S_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF(3),
      O => S(3)
    );
\S_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => A_IBUF(2),
      I1 => B_IBUF(2),
      I2 => C_2,
      I3 => A_IBUF(3),
      I4 => B_IBUF(3),
      O => S_OBUF(3)
    );
\S_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => C_in_IBUF,
      I1 => B_IBUF(0),
      I2 => A_IBUF(0),
      I3 => B_IBUF(1),
      I4 => A_IBUF(1),
      O => C_2
    );
end STRUCTURE;
