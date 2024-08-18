-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Mon Jun  5 19:45:58 2023
-- Host        : MY-ROG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/RAMINDU/Desktop/2nd sem/Computer Organization and
--               Digital Design/Week 10/Lab 9-10/Nanoprocessor/Instruction
--               Decoder/Instruction_Decoder.sim/sim_1/synth/func/xsim/TB_ID_func_synth.vhd}
-- Design      : ID
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ID is
  port (
    Ins : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Check : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RegEn : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Reg_A : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Reg_B : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Imd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Load : out STD_LOGIC;
    Jmp : out STD_LOGIC;
    OpSel : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ID : entity is true;
end ID;

architecture STRUCTURE of ID is
  signal Check_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Imd_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Jmp_OBUF : STD_LOGIC;
  signal Load_OBUF : STD_LOGIC;
  signal OpSel_OBUF : STD_LOGIC;
  signal Reg_A_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Reg_B_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\Check_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Check(0),
      O => Check_IBUF(0)
    );
\Check_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Check(1),
      O => Check_IBUF(1)
    );
\Check_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Check(2),
      O => Check_IBUF(2)
    );
\Check_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Check(3),
      O => Check_IBUF(3)
    );
\Imd_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Imd_OBUF(0),
      O => Imd(0)
    );
\Imd_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Imd_OBUF(1),
      O => Imd(1)
    );
\Imd_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Imd_OBUF(2),
      O => Imd(2)
    );
\Imd_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Imd_OBUF(3),
      O => Imd(3)
    );
\Ins_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Ins(0),
      O => Imd_OBUF(0)
    );
\Ins_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Ins(10),
      O => OpSel_OBUF
    );
\Ins_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Ins(11),
      O => Load_OBUF
    );
\Ins_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Ins(1),
      O => Imd_OBUF(1)
    );
\Ins_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Ins(2),
      O => Imd_OBUF(2)
    );
\Ins_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Ins(3),
      O => Imd_OBUF(3)
    );
\Ins_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Ins(4),
      O => Reg_B_OBUF(0)
    );
\Ins_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Ins(5),
      O => Reg_B_OBUF(1)
    );
\Ins_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Ins(6),
      O => Reg_B_OBUF(2)
    );
\Ins_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Ins(7),
      O => Reg_A_OBUF(0)
    );
\Ins_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Ins(8),
      O => Reg_A_OBUF(1)
    );
\Ins_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Ins(9),
      O => Reg_A_OBUF(2)
    );
Jmp_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Jmp_OBUF,
      O => Jmp
    );
Jmp_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => Check_IBUF(2),
      I1 => Check_IBUF(1),
      I2 => Check_IBUF(0),
      I3 => Check_IBUF(3),
      I4 => Load_OBUF,
      I5 => OpSel_OBUF,
      O => Jmp_OBUF
    );
Load_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Load_OBUF,
      O => Load
    );
OpSel_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => OpSel_OBUF,
      O => OpSel
    );
\RegEn_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg_A_OBUF(0),
      O => RegEn(0)
    );
\RegEn_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg_A_OBUF(1),
      O => RegEn(1)
    );
\RegEn_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg_A_OBUF(2),
      O => RegEn(2)
    );
\Reg_A_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg_A_OBUF(0),
      O => Reg_A(0)
    );
\Reg_A_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg_A_OBUF(1),
      O => Reg_A(1)
    );
\Reg_A_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg_A_OBUF(2),
      O => Reg_A(2)
    );
\Reg_B_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg_B_OBUF(0),
      O => Reg_B(0)
    );
\Reg_B_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg_B_OBUF(1),
      O => Reg_B(1)
    );
\Reg_B_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg_B_OBUF(2),
      O => Reg_B(2)
    );
end STRUCTURE;
