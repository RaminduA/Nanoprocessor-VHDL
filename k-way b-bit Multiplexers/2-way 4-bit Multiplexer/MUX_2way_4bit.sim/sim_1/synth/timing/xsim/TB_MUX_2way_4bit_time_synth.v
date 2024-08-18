// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun  5 13:00:57 2023
// Host        : MY-ROG running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/RAMINDU/Desktop/2nd sem/Computer
//               Organization and Digital Design/Week 10/Lab 9-10/Nanoprocessor/k-way b-bit Multiplexers/2-way 4-bit
//               Multiplexer/MUX_2way_4bit.sim/sim_1/synth/timing/xsim/TB_MUX_2way_4bit_time_synth.v}
// Design      : MUX_2way_4bit
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module MUX_2way_4bit
   (S,
    W_0,
    W_1,
    Q);
  input S;
  input [3:0]W_0;
  input [3:0]W_1;
  output [3:0]Q;

  wire [3:0]Q;
  wire [3:0]Q_OBUF;
  wire S;
  wire S_IBUF;
  wire [3:0]W_0;
  wire [3:0]W_0_IBUF;
  wire [3:0]W_1;
  wire [3:0]W_1_IBUF;

initial begin
 $sdf_annotate("TB_MUX_2way_4bit_time_synth.sdf",,,,"tool_control");
end
  OBUF \Q_OBUF[0]_inst 
       (.I(Q_OBUF[0]),
        .O(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q_OBUF[0]_inst_i_1 
       (.I0(W_1_IBUF[0]),
        .I1(W_0_IBUF[0]),
        .I2(S_IBUF),
        .O(Q_OBUF[0]));
  OBUF \Q_OBUF[1]_inst 
       (.I(Q_OBUF[1]),
        .O(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q_OBUF[1]_inst_i_1 
       (.I0(W_1_IBUF[1]),
        .I1(W_0_IBUF[1]),
        .I2(S_IBUF),
        .O(Q_OBUF[1]));
  OBUF \Q_OBUF[2]_inst 
       (.I(Q_OBUF[2]),
        .O(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q_OBUF[2]_inst_i_1 
       (.I0(W_1_IBUF[2]),
        .I1(W_0_IBUF[2]),
        .I2(S_IBUF),
        .O(Q_OBUF[2]));
  OBUF \Q_OBUF[3]_inst 
       (.I(Q_OBUF[3]),
        .O(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q_OBUF[3]_inst_i_1 
       (.I0(W_1_IBUF[3]),
        .I1(W_0_IBUF[3]),
        .I2(S_IBUF),
        .O(Q_OBUF[3]));
  IBUF S_IBUF_inst
       (.I(S),
        .O(S_IBUF));
  IBUF \W_0_IBUF[0]_inst 
       (.I(W_0[0]),
        .O(W_0_IBUF[0]));
  IBUF \W_0_IBUF[1]_inst 
       (.I(W_0[1]),
        .O(W_0_IBUF[1]));
  IBUF \W_0_IBUF[2]_inst 
       (.I(W_0[2]),
        .O(W_0_IBUF[2]));
  IBUF \W_0_IBUF[3]_inst 
       (.I(W_0[3]),
        .O(W_0_IBUF[3]));
  IBUF \W_1_IBUF[0]_inst 
       (.I(W_1[0]),
        .O(W_1_IBUF[0]));
  IBUF \W_1_IBUF[1]_inst 
       (.I(W_1[1]),
        .O(W_1_IBUF[1]));
  IBUF \W_1_IBUF[2]_inst 
       (.I(W_1[2]),
        .O(W_1_IBUF[2]));
  IBUF \W_1_IBUF[3]_inst 
       (.I(W_1[3]),
        .O(W_1_IBUF[3]));
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
