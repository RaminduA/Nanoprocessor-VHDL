-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu Jun  8 16:50:41 2023
-- Host        : MY-ROG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/RAMINDU/Desktop/2nd sem/Computer Organization and
--               Digital Design/Week 10/Lab 9-10/Nanoprocessor/Register
--               Bank/Register_Bank.sim/sim_1/synth/func/xsim/TB_Decoder_3_to_8_func_synth.vhd}
-- Design      : Decoder_3_to_8
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Decoder_3_to_8 is
  port (
    I : in STD_LOGIC_VECTOR ( 2 downto 0 );
    En : in STD_LOGIC;
    Y : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Decoder_3_to_8 : entity is true;
end Decoder_3_to_8;

architecture STRUCTURE of Decoder_3_to_8 is
  signal En_IBUF : STD_LOGIC;
  signal I_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Y_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Y_OBUF[0]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Y_OBUF[1]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Y_OBUF[2]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Y_OBUF[3]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Y_OBUF[4]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Y_OBUF[5]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Y_OBUF[6]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Y_OBUF[7]_inst_i_1\ : label is "soft_lutpair3";
begin
En_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => En,
      O => En_IBUF
    );
\I_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I(0),
      O => I_IBUF(0)
    );
\I_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I(1),
      O => I_IBUF(1)
    );
\I_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I(2),
      O => I_IBUF(2)
    );
\Y_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(0),
      O => Y(0)
    );
\Y_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => En_IBUF,
      I1 => I_IBUF(2),
      I2 => I_IBUF(0),
      I3 => I_IBUF(1),
      O => Y_OBUF(0)
    );
\Y_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(1),
      O => Y(1)
    );
\Y_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => En_IBUF,
      I1 => I_IBUF(2),
      I2 => I_IBUF(0),
      I3 => I_IBUF(1),
      O => Y_OBUF(1)
    );
\Y_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(2),
      O => Y(2)
    );
\Y_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => En_IBUF,
      I1 => I_IBUF(2),
      I2 => I_IBUF(1),
      I3 => I_IBUF(0),
      O => Y_OBUF(2)
    );
\Y_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(3),
      O => Y(3)
    );
\Y_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => En_IBUF,
      I1 => I_IBUF(2),
      I2 => I_IBUF(0),
      I3 => I_IBUF(1),
      O => Y_OBUF(3)
    );
\Y_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(4),
      O => Y(4)
    );
\Y_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => En_IBUF,
      I1 => I_IBUF(0),
      I2 => I_IBUF(2),
      I3 => I_IBUF(1),
      O => Y_OBUF(4)
    );
\Y_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(5),
      O => Y(5)
    );
\Y_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => En_IBUF,
      I1 => I_IBUF(1),
      I2 => I_IBUF(0),
      I3 => I_IBUF(2),
      O => Y_OBUF(5)
    );
\Y_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(6),
      O => Y(6)
    );
\Y_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => En_IBUF,
      I1 => I_IBUF(0),
      I2 => I_IBUF(1),
      I3 => I_IBUF(2),
      O => Y_OBUF(6)
    );
\Y_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(7),
      O => Y(7)
    );
\Y_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => I_IBUF(2),
      I1 => En_IBUF,
      I2 => I_IBUF(0),
      I3 => I_IBUF(1),
      O => Y_OBUF(7)
    );
end STRUCTURE;
