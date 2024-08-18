-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sat Jun  3 12:29:12 2023
-- Host        : MY-ROG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/RAMINDU/Desktop/2nd sem/Computer Organization and
--               Digital Design/Week 10/Lab 9-10/Nanoprocessor/4-bit Add_Subtract unit/Half
--               Adder/Half_Adder.sim/sim_1/synth/func/xsim/TB_HA_func_synth.vhd}
-- Design      : HA
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HA is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    S : out STD_LOGIC;
    C : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HA : entity is true;
end HA;

architecture STRUCTURE of HA is
  signal A_IBUF : STD_LOGIC;
  signal B_IBUF : STD_LOGIC;
  signal C_OBUF : STD_LOGIC;
  signal S_OBUF : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of C_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of S_OBUF_inst_i_1 : label is "soft_lutpair0";
begin
A_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => A,
      O => A_IBUF
    );
B_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => B,
      O => B_IBUF
    );
C_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => C_OBUF,
      O => C
    );
C_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A_IBUF,
      I1 => B_IBUF,
      O => C_OBUF
    );
S_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF,
      O => S
    );
S_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B_IBUF,
      I1 => A_IBUF,
      O => S_OBUF
    );
end STRUCTURE;
