// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jun  8 05:40:41 2023
// Host        : MY-ROG running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/RAMINDU/Desktop/2nd sem/Computer
//               Organization and Digital Design/Week 10/Lab 9-10/Nanoprocessor/4-bit Add_Subtract
//               unit/Adder+Subtractor/ASU_4bit.sim/sim_1/impl/timing/xsim/TB_ASU_4bit_time_impl.v}
// Design      : ASU_4bit
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "1b3d0696" *) 
(* NotValidForBitStream *)
module ASU_4bit
   (A,
    B,
    Sel,
    Ovfl,
    Zero,
    S);
  input [3:0]A;
  input [3:0]B;
  input Sel;
  output Ovfl;
  output Zero;
  output [3:0]S;

  wire [3:0]A;
  wire [3:0]A_IBUF;
  wire [3:0]B;
  wire [3:0]B_IBUF;
  wire C_1;
  wire \FA_3/S_0 ;
  wire Ovfl;
  wire Ovfl_OBUF;
  wire [3:0]S;
  wire [3:0]S_OBUF;
  wire Sel;
  wire Sel_IBUF;
  wire Zero;
  wire Zero_OBUF;
  wire Zero_OBUF_inst_i_3_n_0;

initial begin
 $sdf_annotate("TB_ASU_4bit_time_impl.sdf",,,,"tool_control");
end
  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  OBUF Ovfl_OBUF_inst
       (.I(Ovfl_OBUF),
        .O(Ovfl));
  LUT6 #(
    .INIT(64'h2121412841284848)) 
    Ovfl_OBUF_inst_i_1
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .I2(Sel_IBUF),
        .I3(A_IBUF[2]),
        .I4(B_IBUF[2]),
        .I5(C_1),
        .O(Ovfl_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDF40EA8A)) 
    Ovfl_OBUF_inst_i_2
       (.I0(Sel_IBUF),
        .I1(B_IBUF[0]),
        .I2(A_IBUF[0]),
        .I3(B_IBUF[1]),
        .I4(A_IBUF[1]),
        .O(C_1));
  OBUF \S_OBUF[0]_inst 
       (.I(S_OBUF[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S_OBUF[0]_inst_i_1 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .O(S_OBUF[0]));
  OBUF \S_OBUF[1]_inst 
       (.I(S_OBUF[1]),
        .O(S[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \S_OBUF[1]_inst_i_1 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .I2(Sel_IBUF),
        .I3(A_IBUF[1]),
        .I4(B_IBUF[1]),
        .O(S_OBUF[1]));
  OBUF \S_OBUF[2]_inst 
       (.I(S_OBUF[2]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \S_OBUF[2]_inst_i_1 
       (.I0(C_1),
        .I1(Sel_IBUF),
        .I2(A_IBUF[2]),
        .I3(B_IBUF[2]),
        .O(S_OBUF[2]));
  OBUF \S_OBUF[3]_inst 
       (.I(S_OBUF[3]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h2BE8D417D4172BE8)) 
    \S_OBUF[3]_inst_i_1 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .I2(C_1),
        .I3(Sel_IBUF),
        .I4(A_IBUF[3]),
        .I5(B_IBUF[3]),
        .O(S_OBUF[3]));
  IBUF Sel_IBUF_inst
       (.I(Sel),
        .O(Sel_IBUF));
  OBUF Zero_OBUF_inst
       (.I(Zero_OBUF),
        .O(Zero));
  LUT6 #(
    .INIT(64'h8008088004808004)) 
    Zero_OBUF_inst_i_1
       (.I0(\FA_3/S_0 ),
        .I1(Zero_OBUF_inst_i_3_n_0),
        .I2(B_IBUF[2]),
        .I3(A_IBUF[2]),
        .I4(Sel_IBUF),
        .I5(C_1),
        .O(Zero_OBUF));
  LUT3 #(
    .INIT(8'h96)) 
    Zero_OBUF_inst_i_2
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[3]),
        .I2(Sel_IBUF),
        .O(\FA_3/S_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96000099)) 
    Zero_OBUF_inst_i_3
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[1]),
        .I2(Sel_IBUF),
        .I3(B_IBUF[0]),
        .I4(A_IBUF[0]),
        .O(Zero_OBUF_inst_i_3_n_0));
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
