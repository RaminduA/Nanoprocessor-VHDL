-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sat Jun  3 12:59:50 2023
-- Host        : MY-ROG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/RAMINDU/Desktop/2nd sem/Computer Organization and
--               Digital Design/Week 10/Lab 9-10/Nanoprocessor/4-bit Add_Subtract unit/Full
--               Adder/Full_Adder.sim/sim_1/impl/func/xsim/TB_FA_func_impl.vhd}
-- Design      : FA
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C_in : in STD_LOGIC;
    S : out STD_LOGIC;
    C_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FA : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of FA : entity is "59c9bd96";
end FA;

architecture STRUCTURE of FA is
  signal A_IBUF : STD_LOGIC;
  signal B_IBUF : STD_LOGIC;
  signal C_in_IBUF : STD_LOGIC;
  signal C_out_OBUF : STD_LOGIC;
  signal S_OBUF : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of C_out_OBUF_inst_i_1 : label is "soft_lutpair0";
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
C_out_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => C_in_IBUF,
      I1 => B_IBUF,
      I2 => A_IBUF,
      O => C_out_OBUF
    );
S_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF,
      O => S
    );
S_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => C_in_IBUF,
      I1 => A_IBUF,
      I2 => B_IBUF,
      O => S_OBUF
    );
end STRUCTURE;
