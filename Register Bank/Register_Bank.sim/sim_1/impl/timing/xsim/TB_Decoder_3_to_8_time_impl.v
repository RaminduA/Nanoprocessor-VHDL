// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun  5 16:35:29 2023
// Host        : MY-ROG running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/RAMINDU/Desktop/2nd sem/Computer
//               Organization and Digital Design/Week 10/Lab 9-10/Nanoprocessor/Register
//               Bank/Register_Bank.sim/sim_1/impl/timing/xsim/TB_Decoder_3_to_8_time_impl.v}
// Design      : RB
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "2b198caf" *) 
(* NotValidForBitStream *)
module RB
   (D,
    En,
    Clk,
    Rst,
    DB_0,
    DB_1,
    DB_2,
    DB_3,
    DB_4,
    DB_5,
    DB_6,
    DB_7);
  input [3:0]D;
  input [2:0]En;
  input Clk;
  input Rst;
  output [3:0]DB_0;
  output [3:0]DB_1;
  output [3:0]DB_2;
  output [3:0]DB_3;
  output [3:0]DB_4;
  output [3:0]DB_5;
  output [3:0]DB_6;
  output [3:0]DB_7;

  wire [3:0]DB_0;
  wire [3:0]DB_1;
  wire [3:0]DB_2;
  wire [3:0]DB_3;
  wire [3:0]DB_4;
  wire [3:0]DB_5;
  wire [3:0]DB_6;
  wire [3:0]DB_7;

initial begin
 $sdf_annotate("TB_Decoder_3_to_8_time_impl.sdf",,,,"tool_control");
end
  OBUFT \DB_0_OBUF[0]_inst 
       (.I(1'b0),
        .O(DB_0[0]),
        .T(1'b1));
  OBUFT \DB_0_OBUF[1]_inst 
       (.I(1'b0),
        .O(DB_0[1]),
        .T(1'b1));
  OBUFT \DB_0_OBUF[2]_inst 
       (.I(1'b0),
        .O(DB_0[2]),
        .T(1'b1));
  OBUFT \DB_0_OBUF[3]_inst 
       (.I(1'b0),
        .O(DB_0[3]),
        .T(1'b1));
  OBUFT \DB_1_OBUF[0]_inst 
       (.I(1'b0),
        .O(DB_1[0]),
        .T(1'b1));
  OBUFT \DB_1_OBUF[1]_inst 
       (.I(1'b0),
        .O(DB_1[1]),
        .T(1'b1));
  OBUFT \DB_1_OBUF[2]_inst 
       (.I(1'b0),
        .O(DB_1[2]),
        .T(1'b1));
  OBUFT \DB_1_OBUF[3]_inst 
       (.I(1'b0),
        .O(DB_1[3]),
        .T(1'b1));
  OBUFT \DB_2_OBUF[0]_inst 
       (.I(1'b0),
        .O(DB_2[0]),
        .T(1'b1));
  OBUFT \DB_2_OBUF[1]_inst 
       (.I(1'b0),
        .O(DB_2[1]),
        .T(1'b1));
  OBUFT \DB_2_OBUF[2]_inst 
       (.I(1'b0),
        .O(DB_2[2]),
        .T(1'b1));
  OBUFT \DB_2_OBUF[3]_inst 
       (.I(1'b0),
        .O(DB_2[3]),
        .T(1'b1));
  OBUFT \DB_3_OBUF[0]_inst 
       (.I(1'b0),
        .O(DB_3[0]),
        .T(1'b1));
  OBUFT \DB_3_OBUF[1]_inst 
       (.I(1'b0),
        .O(DB_3[1]),
        .T(1'b1));
  OBUFT \DB_3_OBUF[2]_inst 
       (.I(1'b0),
        .O(DB_3[2]),
        .T(1'b1));
  OBUFT \DB_3_OBUF[3]_inst 
       (.I(1'b0),
        .O(DB_3[3]),
        .T(1'b1));
  OBUFT \DB_4_OBUF[0]_inst 
       (.I(1'b0),
        .O(DB_4[0]),
        .T(1'b1));
  OBUFT \DB_4_OBUF[1]_inst 
       (.I(1'b0),
        .O(DB_4[1]),
        .T(1'b1));
  OBUFT \DB_4_OBUF[2]_inst 
       (.I(1'b0),
        .O(DB_4[2]),
        .T(1'b1));
  OBUFT \DB_4_OBUF[3]_inst 
       (.I(1'b0),
        .O(DB_4[3]),
        .T(1'b1));
  OBUFT \DB_5_OBUF[0]_inst 
       (.I(1'b0),
        .O(DB_5[0]),
        .T(1'b1));
  OBUFT \DB_5_OBUF[1]_inst 
       (.I(1'b0),
        .O(DB_5[1]),
        .T(1'b1));
  OBUFT \DB_5_OBUF[2]_inst 
       (.I(1'b0),
        .O(DB_5[2]),
        .T(1'b1));
  OBUFT \DB_5_OBUF[3]_inst 
       (.I(1'b0),
        .O(DB_5[3]),
        .T(1'b1));
  OBUFT \DB_6_OBUF[0]_inst 
       (.I(1'b0),
        .O(DB_6[0]),
        .T(1'b1));
  OBUFT \DB_6_OBUF[1]_inst 
       (.I(1'b0),
        .O(DB_6[1]),
        .T(1'b1));
  OBUFT \DB_6_OBUF[2]_inst 
       (.I(1'b0),
        .O(DB_6[2]),
        .T(1'b1));
  OBUFT \DB_6_OBUF[3]_inst 
       (.I(1'b0),
        .O(DB_6[3]),
        .T(1'b1));
  OBUFT \DB_7_OBUF[0]_inst 
       (.I(1'b0),
        .O(DB_7[0]),
        .T(1'b1));
  OBUFT \DB_7_OBUF[1]_inst 
       (.I(1'b0),
        .O(DB_7[1]),
        .T(1'b1));
  OBUFT \DB_7_OBUF[2]_inst 
       (.I(1'b0),
        .O(DB_7[2]),
        .T(1'b1));
  OBUFT \DB_7_OBUF[3]_inst 
       (.I(1'b0),
        .O(DB_7[3]),
        .T(1'b1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
