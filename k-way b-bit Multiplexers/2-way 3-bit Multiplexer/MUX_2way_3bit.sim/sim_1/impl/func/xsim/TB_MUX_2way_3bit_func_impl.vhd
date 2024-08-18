-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Mon Jun  5 12:56:25 2023
-- Host        : MY-ROG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/RAMINDU/Desktop/2nd sem/Computer Organization and
--               Digital Design/Week 10/Lab 9-10/Nanoprocessor/k-way b-bit Multiplexers/2-way 3-bit
--               Multiplexer/MUX_2way_3bit.sim/sim_1/impl/func/xsim/TB_MUX_2way_3bit_func_impl.vhd}
-- Design      : MUX_2way_3bit
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MUX_2way_3bit is
  port (
    S : in STD_LOGIC;
    W_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    W_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MUX_2way_3bit : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of MUX_2way_3bit : entity is "69c5b788";
end MUX_2way_3bit;

architecture STRUCTURE of MUX_2way_3bit is
  signal Q_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_IBUF : STD_LOGIC;
  signal W_0_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal W_1_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_OBUF[0]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q_OBUF[1]_inst_i_1\ : label is "soft_lutpair0";
begin
\Q_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(0),
      O => Q(0)
    );
\Q_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => W_1_IBUF(0),
      I1 => W_0_IBUF(0),
      I2 => S_IBUF,
      O => Q_OBUF(0)
    );
\Q_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(1),
      O => Q(1)
    );
\Q_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => W_1_IBUF(1),
      I1 => W_0_IBUF(1),
      I2 => S_IBUF,
      O => Q_OBUF(1)
    );
\Q_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(2),
      O => Q(2)
    );
\Q_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => W_1_IBUF(2),
      I1 => W_0_IBUF(2),
      I2 => S_IBUF,
      O => Q_OBUF(2)
    );
S_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => S,
      O => S_IBUF
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
end STRUCTURE;
