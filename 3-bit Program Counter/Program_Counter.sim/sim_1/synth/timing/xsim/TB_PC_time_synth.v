// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun  5 15:32:39 2023
// Host        : MY-ROG running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/RAMINDU/Desktop/2nd sem/Computer
//               Organization and Digital Design/Week 10/Lab 9-10/Nanoprocessor/Program
//               Counter/Program_Counter.sim/sim_1/synth/timing/xsim/TB_PC_time_synth.v}
// Design      : PC
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module PC
   (Adr,
    Clk,
    Rst,
    S);
  input [2:0]Adr;
  input Clk;
  input Rst;
  output [2:0]S;

  wire [2:0]Adr;
  wire [2:0]Adr_IBUF;
  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire Rst;
  wire Rst_IBUF;
  wire [2:0]S;
  wire [2:0]S_OBUF;

initial begin
 $sdf_annotate("TB_PC_time_synth.sdf",,,,"tool_control");
end
  IBUF \Adr_IBUF[0]_inst 
       (.I(Adr[0]),
        .O(Adr_IBUF[0]));
  IBUF \Adr_IBUF[1]_inst 
       (.I(Adr[1]),
        .O(Adr_IBUF[1]));
  IBUF \Adr_IBUF[2]_inst 
       (.I(Adr[2]),
        .O(Adr_IBUF[2]));
  BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  IBUF Rst_IBUF_inst
       (.I(Rst),
        .O(Rst_IBUF));
  OBUF \S_OBUF[0]_inst 
       (.I(S_OBUF[0]),
        .O(S[0]));
  OBUF \S_OBUF[1]_inst 
       (.I(S_OBUF[1]),
        .O(S[1]));
  OBUF \S_OBUF[2]_inst 
       (.I(S_OBUF[2]),
        .O(S[2]));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Adr_IBUF[0]),
        .Q(S_OBUF[0]),
        .R(Rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Adr_IBUF[1]),
        .Q(S_OBUF[1]),
        .R(Rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Adr_IBUF[2]),
        .Q(S_OBUF[2]),
        .R(Rst_IBUF));
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
