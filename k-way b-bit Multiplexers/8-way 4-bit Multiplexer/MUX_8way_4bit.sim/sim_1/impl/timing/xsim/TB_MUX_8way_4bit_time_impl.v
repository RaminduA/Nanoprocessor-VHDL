// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sun Jun  4 17:58:42 2023
// Host        : MY-ROG running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/RAMINDU/Desktop/2nd sem/Computer
//               Organization and Digital Design/Week 10/Lab 9-10/Nanoprocessor/k-way b-bit Multiplexers/8-way 4-bit
//               Multiplexer/MUX_8way_4bit.sim/sim_1/impl/timing/xsim/TB_MUX_8way_4bit_time_impl.v}
// Design      : MUX_8way_4bit
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "93c62c53" *) 
(* NotValidForBitStream *)
module MUX_8way_4bit
   (En,
    S,
    W_0,
    W_1,
    W_2,
    W_3,
    W_4,
    W_5,
    W_6,
    W_7,
    Q);
  input En;
  input [2:0]S;
  input [3:0]W_0;
  input [3:0]W_1;
  input [3:0]W_2;
  input [3:0]W_3;
  input [3:0]W_4;
  input [3:0]W_5;
  input [3:0]W_6;
  input [3:0]W_7;
  output [3:0]Q;

  wire En;
  wire En_IBUF;
  wire [3:0]Q;
  wire [3:0]Q_OBUF;
  wire \Q_OBUF[0]_inst_i_2_n_0 ;
  wire \Q_OBUF[0]_inst_i_3_n_0 ;
  wire \Q_OBUF[1]_inst_i_2_n_0 ;
  wire \Q_OBUF[1]_inst_i_3_n_0 ;
  wire \Q_OBUF[2]_inst_i_2_n_0 ;
  wire \Q_OBUF[2]_inst_i_3_n_0 ;
  wire \Q_OBUF[3]_inst_i_2_n_0 ;
  wire \Q_OBUF[3]_inst_i_3_n_0 ;
  wire [2:0]S;
  wire [2:0]S_IBUF;
  wire [3:0]W_0;
  wire [3:0]W_0_IBUF;
  wire [3:0]W_1;
  wire [3:0]W_1_IBUF;
  wire [3:0]W_2;
  wire [3:0]W_2_IBUF;
  wire [3:0]W_3;
  wire [3:0]W_3_IBUF;
  wire [3:0]W_4;
  wire [3:0]W_4_IBUF;
  wire [3:0]W_5;
  wire [3:0]W_5_IBUF;
  wire [3:0]W_6;
  wire [3:0]W_6_IBUF;
  wire [3:0]W_7;
  wire [3:0]W_7_IBUF;

initial begin
 $sdf_annotate("TB_MUX_8way_4bit_time_impl.sdf",,,,"tool_control");
end
  IBUF En_IBUF_inst
       (.I(En),
        .O(En_IBUF));
  OBUF \Q_OBUF[0]_inst 
       (.I(Q_OBUF[0]),
        .O(Q[0]));
  LUT4 #(
    .INIT(16'hE200)) 
    \Q_OBUF[0]_inst_i_1 
       (.I0(\Q_OBUF[0]_inst_i_2_n_0 ),
        .I1(S_IBUF[2]),
        .I2(\Q_OBUF[0]_inst_i_3_n_0 ),
        .I3(En_IBUF),
        .O(Q_OBUF[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q_OBUF[0]_inst_i_2 
       (.I0(W_3_IBUF[0]),
        .I1(W_2_IBUF[0]),
        .I2(S_IBUF[1]),
        .I3(W_1_IBUF[0]),
        .I4(S_IBUF[0]),
        .I5(W_0_IBUF[0]),
        .O(\Q_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q_OBUF[0]_inst_i_3 
       (.I0(W_7_IBUF[0]),
        .I1(W_6_IBUF[0]),
        .I2(S_IBUF[1]),
        .I3(W_5_IBUF[0]),
        .I4(S_IBUF[0]),
        .I5(W_4_IBUF[0]),
        .O(\Q_OBUF[0]_inst_i_3_n_0 ));
  OBUF \Q_OBUF[1]_inst 
       (.I(Q_OBUF[1]),
        .O(Q[1]));
  LUT4 #(
    .INIT(16'hE200)) 
    \Q_OBUF[1]_inst_i_1 
       (.I0(\Q_OBUF[1]_inst_i_2_n_0 ),
        .I1(S_IBUF[2]),
        .I2(\Q_OBUF[1]_inst_i_3_n_0 ),
        .I3(En_IBUF),
        .O(Q_OBUF[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q_OBUF[1]_inst_i_2 
       (.I0(W_3_IBUF[1]),
        .I1(W_2_IBUF[1]),
        .I2(S_IBUF[1]),
        .I3(W_1_IBUF[1]),
        .I4(S_IBUF[0]),
        .I5(W_0_IBUF[1]),
        .O(\Q_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q_OBUF[1]_inst_i_3 
       (.I0(W_7_IBUF[1]),
        .I1(W_6_IBUF[1]),
        .I2(S_IBUF[1]),
        .I3(W_5_IBUF[1]),
        .I4(S_IBUF[0]),
        .I5(W_4_IBUF[1]),
        .O(\Q_OBUF[1]_inst_i_3_n_0 ));
  OBUF \Q_OBUF[2]_inst 
       (.I(Q_OBUF[2]),
        .O(Q[2]));
  LUT4 #(
    .INIT(16'hE200)) 
    \Q_OBUF[2]_inst_i_1 
       (.I0(\Q_OBUF[2]_inst_i_2_n_0 ),
        .I1(S_IBUF[2]),
        .I2(\Q_OBUF[2]_inst_i_3_n_0 ),
        .I3(En_IBUF),
        .O(Q_OBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q_OBUF[2]_inst_i_2 
       (.I0(W_3_IBUF[2]),
        .I1(W_2_IBUF[2]),
        .I2(S_IBUF[1]),
        .I3(W_1_IBUF[2]),
        .I4(S_IBUF[0]),
        .I5(W_0_IBUF[2]),
        .O(\Q_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q_OBUF[2]_inst_i_3 
       (.I0(W_7_IBUF[2]),
        .I1(W_6_IBUF[2]),
        .I2(S_IBUF[1]),
        .I3(W_5_IBUF[2]),
        .I4(S_IBUF[0]),
        .I5(W_4_IBUF[2]),
        .O(\Q_OBUF[2]_inst_i_3_n_0 ));
  OBUF \Q_OBUF[3]_inst 
       (.I(Q_OBUF[3]),
        .O(Q[3]));
  LUT4 #(
    .INIT(16'hE200)) 
    \Q_OBUF[3]_inst_i_1 
       (.I0(\Q_OBUF[3]_inst_i_2_n_0 ),
        .I1(S_IBUF[2]),
        .I2(\Q_OBUF[3]_inst_i_3_n_0 ),
        .I3(En_IBUF),
        .O(Q_OBUF[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q_OBUF[3]_inst_i_2 
       (.I0(W_3_IBUF[3]),
        .I1(W_2_IBUF[3]),
        .I2(S_IBUF[1]),
        .I3(W_1_IBUF[3]),
        .I4(S_IBUF[0]),
        .I5(W_0_IBUF[3]),
        .O(\Q_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q_OBUF[3]_inst_i_3 
       (.I0(W_7_IBUF[3]),
        .I1(W_6_IBUF[3]),
        .I2(S_IBUF[1]),
        .I3(W_5_IBUF[3]),
        .I4(S_IBUF[0]),
        .I5(W_4_IBUF[3]),
        .O(\Q_OBUF[3]_inst_i_3_n_0 ));
  IBUF \S_IBUF[0]_inst 
       (.I(S[0]),
        .O(S_IBUF[0]));
  IBUF \S_IBUF[1]_inst 
       (.I(S[1]),
        .O(S_IBUF[1]));
  IBUF \S_IBUF[2]_inst 
       (.I(S[2]),
        .O(S_IBUF[2]));
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
  IBUF \W_2_IBUF[0]_inst 
       (.I(W_2[0]),
        .O(W_2_IBUF[0]));
  IBUF \W_2_IBUF[1]_inst 
       (.I(W_2[1]),
        .O(W_2_IBUF[1]));
  IBUF \W_2_IBUF[2]_inst 
       (.I(W_2[2]),
        .O(W_2_IBUF[2]));
  IBUF \W_2_IBUF[3]_inst 
       (.I(W_2[3]),
        .O(W_2_IBUF[3]));
  IBUF \W_3_IBUF[0]_inst 
       (.I(W_3[0]),
        .O(W_3_IBUF[0]));
  IBUF \W_3_IBUF[1]_inst 
       (.I(W_3[1]),
        .O(W_3_IBUF[1]));
  IBUF \W_3_IBUF[2]_inst 
       (.I(W_3[2]),
        .O(W_3_IBUF[2]));
  IBUF \W_3_IBUF[3]_inst 
       (.I(W_3[3]),
        .O(W_3_IBUF[3]));
  IBUF \W_4_IBUF[0]_inst 
       (.I(W_4[0]),
        .O(W_4_IBUF[0]));
  IBUF \W_4_IBUF[1]_inst 
       (.I(W_4[1]),
        .O(W_4_IBUF[1]));
  IBUF \W_4_IBUF[2]_inst 
       (.I(W_4[2]),
        .O(W_4_IBUF[2]));
  IBUF \W_4_IBUF[3]_inst 
       (.I(W_4[3]),
        .O(W_4_IBUF[3]));
  IBUF \W_5_IBUF[0]_inst 
       (.I(W_5[0]),
        .O(W_5_IBUF[0]));
  IBUF \W_5_IBUF[1]_inst 
       (.I(W_5[1]),
        .O(W_5_IBUF[1]));
  IBUF \W_5_IBUF[2]_inst 
       (.I(W_5[2]),
        .O(W_5_IBUF[2]));
  IBUF \W_5_IBUF[3]_inst 
       (.I(W_5[3]),
        .O(W_5_IBUF[3]));
  IBUF \W_6_IBUF[0]_inst 
       (.I(W_6[0]),
        .O(W_6_IBUF[0]));
  IBUF \W_6_IBUF[1]_inst 
       (.I(W_6[1]),
        .O(W_6_IBUF[1]));
  IBUF \W_6_IBUF[2]_inst 
       (.I(W_6[2]),
        .O(W_6_IBUF[2]));
  IBUF \W_6_IBUF[3]_inst 
       (.I(W_6[3]),
        .O(W_6_IBUF[3]));
  IBUF \W_7_IBUF[0]_inst 
       (.I(W_7[0]),
        .O(W_7_IBUF[0]));
  IBUF \W_7_IBUF[1]_inst 
       (.I(W_7[1]),
        .O(W_7_IBUF[1]));
  IBUF \W_7_IBUF[2]_inst 
       (.I(W_7[2]),
        .O(W_7_IBUF[2]));
  IBUF \W_7_IBUF[3]_inst 
       (.I(W_7[3]),
        .O(W_7_IBUF[3]));
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
