-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Mon Jun  5 15:32:55 2023
-- Host        : MY-ROG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/RAMINDU/Desktop/2nd sem/Computer Organization and
--               Digital Design/Week 10/Lab 9-10/Nanoprocessor/Program
--               Counter/Program_Counter.sim/sim_1/impl/func/xsim/TB_PC_func_impl.vhd}
-- Design      : PC
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PC is
  port (
    Adr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PC : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of PC : entity is "5e6a5673";
end PC;

architecture STRUCTURE of PC is
  signal Adr_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Clk_IBUF : STD_LOGIC;
  signal Clk_IBUF_BUFG : STD_LOGIC;
  signal Rst_IBUF : STD_LOGIC;
  signal S_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\Adr_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Adr(0),
      O => Adr_IBUF(0)
    );
\Adr_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Adr(1),
      O => Adr_IBUF(1)
    );
\Adr_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Adr(2),
      O => Adr_IBUF(2)
    );
Clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => Clk_IBUF,
      O => Clk_IBUF_BUFG
    );
Clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Clk,
      O => Clk_IBUF
    );
Rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Rst,
      O => Rst_IBUF
    );
\S_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF(0),
      O => S(0)
    );
\S_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF(1),
      O => S(1)
    );
\S_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF(2),
      O => S(2)
    );
\S_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Adr_IBUF(0),
      Q => S_OBUF(0),
      R => Rst_IBUF
    );
\S_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Adr_IBUF(1),
      Q => S_OBUF(1),
      R => Rst_IBUF
    );
\S_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Adr_IBUF(2),
      Q => S_OBUF(2),
      R => Rst_IBUF
    );
end STRUCTURE;
