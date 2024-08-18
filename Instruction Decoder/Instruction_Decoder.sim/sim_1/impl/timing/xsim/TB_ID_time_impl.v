// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun  5 20:00:42 2023
// Host        : MY-ROG running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/RAMINDU/Desktop/2nd sem/Computer
//               Organization and Digital Design/Week 10/Lab 9-10/Nanoprocessor/Instruction
//               Decoder/Instruction_Decoder.sim/sim_1/impl/timing/xsim/TB_ID_time_impl.v}
// Design      : ID
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "645e0a7a" *) 
(* NotValidForBitStream *)
module ID
   (Ins,
    Check,
    RegEn,
    Reg_A,
    Reg_B,
    Imd,
    Load,
    Jmp,
    OpSel,
    Adr);
  input [11:0]Ins;
  input [3:0]Check;
  output [2:0]RegEn;
  output [2:0]Reg_A;
  output [2:0]Reg_B;
  output [3:0]Imd;
  output Load;
  output Jmp;
  output OpSel;
  output [2:0]Adr;

  wire [2:0]Adr;
  wire [2:0]Adr_OBUF;
  wire [3:0]Check;
  wire [3:0]Check_IBUF;
  wire [3:0]Imd;
  wire [3:3]Imd_OBUF;
  wire [11:0]Ins;
  wire Jmp;
  wire Jmp_OBUF;
  wire Load;
  wire Load_OBUF;
  wire OpSel;
  wire OpSel_OBUF;
  wire [2:0]RegEn;
  wire [2:0]Reg_A;
  wire [2:0]Reg_A_OBUF;
  wire [2:0]Reg_B;
  wire [2:0]Reg_B_OBUF;

initial begin
 $sdf_annotate("TB_ID_time_impl.sdf",,,,"tool_control");
end
  OBUF \Adr_OBUF[0]_inst 
       (.I(Adr_OBUF[0]),
        .O(Adr[0]));
  OBUF \Adr_OBUF[1]_inst 
       (.I(Adr_OBUF[1]),
        .O(Adr[1]));
  OBUF \Adr_OBUF[2]_inst 
       (.I(Adr_OBUF[2]),
        .O(Adr[2]));
  IBUF \Check_IBUF[0]_inst 
       (.I(Check[0]),
        .O(Check_IBUF[0]));
  IBUF \Check_IBUF[1]_inst 
       (.I(Check[1]),
        .O(Check_IBUF[1]));
  IBUF \Check_IBUF[2]_inst 
       (.I(Check[2]),
        .O(Check_IBUF[2]));
  IBUF \Check_IBUF[3]_inst 
       (.I(Check[3]),
        .O(Check_IBUF[3]));
  OBUF \Imd_OBUF[0]_inst 
       (.I(Adr_OBUF[0]),
        .O(Imd[0]));
  OBUF \Imd_OBUF[1]_inst 
       (.I(Adr_OBUF[1]),
        .O(Imd[1]));
  OBUF \Imd_OBUF[2]_inst 
       (.I(Adr_OBUF[2]),
        .O(Imd[2]));
  OBUF \Imd_OBUF[3]_inst 
       (.I(Imd_OBUF),
        .O(Imd[3]));
  IBUF \Ins_IBUF[0]_inst 
       (.I(Ins[0]),
        .O(Adr_OBUF[0]));
  IBUF \Ins_IBUF[10]_inst 
       (.I(Ins[10]),
        .O(OpSel_OBUF));
  IBUF \Ins_IBUF[11]_inst 
       (.I(Ins[11]),
        .O(Load_OBUF));
  IBUF \Ins_IBUF[1]_inst 
       (.I(Ins[1]),
        .O(Adr_OBUF[1]));
  IBUF \Ins_IBUF[2]_inst 
       (.I(Ins[2]),
        .O(Adr_OBUF[2]));
  IBUF \Ins_IBUF[3]_inst 
       (.I(Ins[3]),
        .O(Imd_OBUF));
  IBUF \Ins_IBUF[4]_inst 
       (.I(Ins[4]),
        .O(Reg_B_OBUF[0]));
  IBUF \Ins_IBUF[5]_inst 
       (.I(Ins[5]),
        .O(Reg_B_OBUF[1]));
  IBUF \Ins_IBUF[6]_inst 
       (.I(Ins[6]),
        .O(Reg_B_OBUF[2]));
  IBUF \Ins_IBUF[7]_inst 
       (.I(Ins[7]),
        .O(Reg_A_OBUF[0]));
  IBUF \Ins_IBUF[8]_inst 
       (.I(Ins[8]),
        .O(Reg_A_OBUF[1]));
  IBUF \Ins_IBUF[9]_inst 
       (.I(Ins[9]),
        .O(Reg_A_OBUF[2]));
  OBUF Jmp_OBUF_inst
       (.I(Jmp_OBUF),
        .O(Jmp));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    Jmp_OBUF_inst_i_1
       (.I0(Check_IBUF[2]),
        .I1(Check_IBUF[1]),
        .I2(Check_IBUF[0]),
        .I3(Check_IBUF[3]),
        .I4(Load_OBUF),
        .I5(OpSel_OBUF),
        .O(Jmp_OBUF));
  OBUF Load_OBUF_inst
       (.I(Load_OBUF),
        .O(Load));
  OBUF OpSel_OBUF_inst
       (.I(OpSel_OBUF),
        .O(OpSel));
  OBUF \RegEn_OBUF[0]_inst 
       (.I(Reg_A_OBUF[0]),
        .O(RegEn[0]));
  OBUF \RegEn_OBUF[1]_inst 
       (.I(Reg_A_OBUF[1]),
        .O(RegEn[1]));
  OBUF \RegEn_OBUF[2]_inst 
       (.I(Reg_A_OBUF[2]),
        .O(RegEn[2]));
  OBUF \Reg_A_OBUF[0]_inst 
       (.I(Reg_A_OBUF[0]),
        .O(Reg_A[0]));
  OBUF \Reg_A_OBUF[1]_inst 
       (.I(Reg_A_OBUF[1]),
        .O(Reg_A[1]));
  OBUF \Reg_A_OBUF[2]_inst 
       (.I(Reg_A_OBUF[2]),
        .O(Reg_A[2]));
  OBUF \Reg_B_OBUF[0]_inst 
       (.I(Reg_B_OBUF[0]),
        .O(Reg_B[0]));
  OBUF \Reg_B_OBUF[1]_inst 
       (.I(Reg_B_OBUF[1]),
        .O(Reg_B[1]));
  OBUF \Reg_B_OBUF[2]_inst 
       (.I(Reg_B_OBUF[2]),
        .O(Reg_B[2]));
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
