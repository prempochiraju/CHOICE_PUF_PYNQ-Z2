// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat May  3 21:33:51 2025
// Host        : FT-6K64K74 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ppochiraju2024/Desktop/CHOICE-PUF/CHOICE_design/CHOICE_design.srcs/sources_1/bd/design_1/ip/design_1_CHOICE_PUF_gen_0_0/design_1_CHOICE_PUF_gen_0_0_sim_netlist.v
// Design      : design_1_CHOICE_PUF_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_CHOICE_PUF_gen_0_0,CHOICE_PUF_gen,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CHOICE_PUF_gen,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_CHOICE_PUF_gen_0_0
   (clk,
    ff_reset,
    chip_enable,
    ASR_length_conf,
    ASR_data_conf,
    puf_response);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ff_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ff_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ff_reset;
  input chip_enable;
  input [19:0]ASR_length_conf;
  input [3:0]ASR_data_conf;
  output [127:0]puf_response;

  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [127:0]puf_response;

  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_gen U0
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[0].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[0].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[0].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[0].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_0
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[100].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[100].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[100].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[100].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_1
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[101].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[101].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[101].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[101].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_10
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[10].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[10].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[10].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[10].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_100
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[76].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[76].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[76].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[76].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_101
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[77].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[77].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[77].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[77].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_102
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[78].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[78].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[78].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[78].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_103
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[79].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[79].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[79].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[79].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_104
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[7].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[7].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[7].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[7].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_105
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[80].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[80].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[80].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[80].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_106
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[81].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[81].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[81].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[81].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_107
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[82].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[82].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[82].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[82].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_108
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[83].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[83].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[83].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[83].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_109
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[84].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[84].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[84].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[84].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_11
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[110].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[110].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[110].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[110].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_110
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[85].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[85].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[85].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[85].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_111
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[86].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[86].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[86].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[86].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_112
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[87].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[87].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[87].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[87].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_113
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[88].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[88].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[88].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[88].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_114
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[89].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[89].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[89].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[89].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_115
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[8].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[8].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[8].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[8].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_116
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[90].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[90].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[90].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[90].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_117
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[91].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[91].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[91].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[91].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_118
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[92].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[92].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[92].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[92].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_119
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[93].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[93].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[93].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[93].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_12
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[111].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[111].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[111].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[111].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_120
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[94].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[94].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[94].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[94].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_121
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[95].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[95].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[95].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[95].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_122
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[96].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[96].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[96].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[96].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_123
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[97].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[97].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[97].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[97].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_124
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[98].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[98].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[98].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[98].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_125
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[99].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[99].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[99].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[99].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_126
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[9].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[9].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[9].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[9].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_13
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[112].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[112].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[112].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[112].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_14
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[113].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[113].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[113].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[113].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_15
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[114].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[114].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[114].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[114].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_16
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[115].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[115].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[115].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[115].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_17
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[116].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[116].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[116].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[116].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_18
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[117].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[117].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[117].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[117].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_19
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[118].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[118].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[118].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[118].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_2
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[102].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[102].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[102].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[102].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_20
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[119].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[119].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[119].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[119].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_21
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[11].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[11].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[11].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[11].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_22
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[120].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[120].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[120].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[120].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_23
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[121].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[121].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[121].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[121].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_24
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[122].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[122].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[122].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[122].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_25
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[123].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[123].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[123].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[123].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_26
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[124].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[124].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[124].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[124].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_27
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[125].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[125].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[125].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[125].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_28
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[126].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[126].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[126].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[126].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_29
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[127].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[127].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[127].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[127].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_3
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[103].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[103].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[103].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[103].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_30
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[12].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[12].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[12].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[12].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_31
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[13].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[13].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[13].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[13].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_32
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[14].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[14].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[14].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[14].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_33
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[15].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[15].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[15].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[15].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_34
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[16].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[16].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[16].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[16].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_35
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[17].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[17].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[17].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[17].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_36
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[18].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[18].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[18].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[18].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_37
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[19].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[19].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[19].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[19].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_38
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[1].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[1].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[1].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[1].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_39
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[20].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[20].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[20].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[20].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_4
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[104].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[104].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[104].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[104].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_40
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[21].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[21].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[21].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[21].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_41
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[22].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[22].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[22].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[22].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_42
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[23].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[23].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[23].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[23].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_43
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[24].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[24].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[24].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[24].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_44
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[25].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[25].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[25].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[25].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_45
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[26].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[26].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[26].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[26].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_46
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[27].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[27].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[27].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[27].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_47
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[28].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[28].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[28].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[28].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_48
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[29].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[29].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[29].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[29].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_49
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[2].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[2].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[2].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[2].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_5
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[105].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[105].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[105].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[105].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_50
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[30].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[30].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[30].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[30].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_51
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[31].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[31].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[31].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[31].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_52
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[32].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[32].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[32].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[32].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_53
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[33].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[33].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[33].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[33].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_54
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[34].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[34].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[34].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[34].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_55
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[35].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[35].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[35].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[35].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_56
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[36].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[36].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[36].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[36].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_57
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[37].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[37].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[37].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[37].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_58
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[38].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[38].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[38].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[38].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_59
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[39].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[39].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[39].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[39].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_6
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[106].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[106].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[106].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[106].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_60
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[3].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[3].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[3].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[3].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_61
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[40].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[40].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[40].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[40].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_62
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[41].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[41].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[41].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[41].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_63
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[42].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[42].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[42].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[42].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_64
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[43].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[43].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[43].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[43].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_65
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[44].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[44].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[44].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[44].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_66
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[45].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[45].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[45].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[45].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_67
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[46].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[46].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[46].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[46].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_68
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[47].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[47].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[47].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[47].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_69
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[48].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[48].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[48].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[48].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_7
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[107].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[107].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[107].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[107].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_70
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[49].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[49].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[49].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[49].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_71
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[4].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[4].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[4].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[4].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_72
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[50].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[50].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[50].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[50].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_73
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[51].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[51].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[51].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[51].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_74
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[52].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[52].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[52].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[52].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_75
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[53].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[53].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[53].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[53].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_76
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[54].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[54].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[54].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[54].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_77
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[55].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[55].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[55].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[55].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_78
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[56].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[56].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[56].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[56].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_79
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[57].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[57].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[57].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[57].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_8
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[108].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[108].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[108].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[108].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_80
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[58].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[58].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[58].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[58].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_81
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[59].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[59].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[59].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[59].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_82
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[5].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[5].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[5].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[5].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_83
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[60].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[60].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[60].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[60].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_84
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[61].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[61].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[61].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[61].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_85
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[62].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[62].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[62].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[62].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_86
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[63].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[63].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[63].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[63].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_87
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[64].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[64].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[64].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[64].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_88
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[65].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[65].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[65].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[65].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_89
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[66].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[66].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[66].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[66].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_9
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[109].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[109].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[109].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[109].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_90
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[67].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[67].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[67].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[67].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_91
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[68].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[68].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[68].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[68].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_92
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[69].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[69].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[69].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[69].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_93
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[6].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[6].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[6].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[6].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_94
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[70].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[70].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[70].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[70].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_95
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[71].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[71].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[71].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[71].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_96
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[72].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[72].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[72].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[72].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_97
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[73].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[73].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[73].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[73].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_98
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[74].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[74].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[74].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[74].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_99
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [0:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire ASRQ0;
  wire ASRQ1;
  wire ASRQ2;
  wire ASRQ3;
  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire carry_out;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [0:0]puf_response;
  wire [2:0]NLW_CARRY4_inst_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst_O_UNCONNECTED;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_1_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_2_Q31_UNCONNECTED;
  wire NLW_SRLC32E_inst_3_Q31_UNCONNECTED;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(1'b1),
        .CO({carry_out,NLW_CARRY4_inst_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst_O_UNCONNECTED[3:0]),
        .S({ASRQ3,ASRQ2,ASRQ1,ASRQ0}));
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDCPE_inst
       (.C(clk),
        .CE(ff_reset),
        .D(1'b0),
        .PRE(carry_out),
        .Q(puf_response));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[75].PUF/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A(ASR_length_conf[4:0]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[0]),
        .Q(ASRQ0),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[75].PUF/SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_1
       (.A(ASR_length_conf[9:5]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[1]),
        .Q(ASRQ1),
        .Q31(NLW_SRLC32E_inst_1_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[75].PUF/SRLC32E_inst_2 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_2
       (.A(ASR_length_conf[14:10]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[2]),
        .Q(ASRQ2),
        .Q31(NLW_SRLC32E_inst_2_Q31_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/GEN_PUF " *) 
  (* srl_name = "\U0/GEN_PUF[75].PUF/SRLC32E_inst_3 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_3
       (.A(ASR_length_conf[19:15]),
        .CE(chip_enable),
        .CLK(clk),
        .D(ASR_data_conf[3]),
        .Q(ASRQ3),
        .Q31(NLW_SRLC32E_inst_3_Q31_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "CHOICE_PUF_gen" *) 
module design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_gen
   (puf_response,
    chip_enable,
    ASR_data_conf,
    ASR_length_conf,
    clk,
    ff_reset);
  output [127:0]puf_response;
  input chip_enable;
  input [3:0]ASR_data_conf;
  input [19:0]ASR_length_conf;
  input clk;
  input ff_reset;

  wire [3:0]ASR_data_conf;
  wire [19:0]ASR_length_conf;
  wire chip_enable;
  wire clk;
  wire ff_reset;
  wire [127:0]puf_response;

  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF \GEN_PUF[0].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[0]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_0 \GEN_PUF[100].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[100]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_1 \GEN_PUF[101].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[101]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_2 \GEN_PUF[102].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[102]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_3 \GEN_PUF[103].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[103]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_4 \GEN_PUF[104].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[104]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_5 \GEN_PUF[105].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[105]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_6 \GEN_PUF[106].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[106]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_7 \GEN_PUF[107].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[107]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_8 \GEN_PUF[108].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[108]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_9 \GEN_PUF[109].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[109]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_10 \GEN_PUF[10].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[10]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_11 \GEN_PUF[110].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[110]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_12 \GEN_PUF[111].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[111]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_13 \GEN_PUF[112].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[112]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_14 \GEN_PUF[113].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[113]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_15 \GEN_PUF[114].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[114]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_16 \GEN_PUF[115].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[115]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_17 \GEN_PUF[116].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[116]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_18 \GEN_PUF[117].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[117]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_19 \GEN_PUF[118].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[118]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_20 \GEN_PUF[119].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[119]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_21 \GEN_PUF[11].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[11]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_22 \GEN_PUF[120].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[120]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_23 \GEN_PUF[121].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[121]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_24 \GEN_PUF[122].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[122]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_25 \GEN_PUF[123].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[123]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_26 \GEN_PUF[124].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[124]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_27 \GEN_PUF[125].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[125]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_28 \GEN_PUF[126].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[126]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_29 \GEN_PUF[127].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[127]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_30 \GEN_PUF[12].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[12]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_31 \GEN_PUF[13].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[13]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_32 \GEN_PUF[14].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[14]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_33 \GEN_PUF[15].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[15]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_34 \GEN_PUF[16].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[16]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_35 \GEN_PUF[17].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[17]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_36 \GEN_PUF[18].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[18]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_37 \GEN_PUF[19].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[19]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_38 \GEN_PUF[1].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[1]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_39 \GEN_PUF[20].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[20]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_40 \GEN_PUF[21].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[21]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_41 \GEN_PUF[22].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[22]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_42 \GEN_PUF[23].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[23]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_43 \GEN_PUF[24].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[24]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_44 \GEN_PUF[25].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[25]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_45 \GEN_PUF[26].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[26]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_46 \GEN_PUF[27].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[27]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_47 \GEN_PUF[28].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[28]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_48 \GEN_PUF[29].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[29]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_49 \GEN_PUF[2].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[2]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_50 \GEN_PUF[30].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[30]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_51 \GEN_PUF[31].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[31]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_52 \GEN_PUF[32].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[32]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_53 \GEN_PUF[33].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[33]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_54 \GEN_PUF[34].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[34]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_55 \GEN_PUF[35].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[35]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_56 \GEN_PUF[36].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[36]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_57 \GEN_PUF[37].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[37]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_58 \GEN_PUF[38].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[38]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_59 \GEN_PUF[39].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[39]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_60 \GEN_PUF[3].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[3]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_61 \GEN_PUF[40].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[40]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_62 \GEN_PUF[41].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[41]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_63 \GEN_PUF[42].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[42]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_64 \GEN_PUF[43].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[43]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_65 \GEN_PUF[44].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[44]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_66 \GEN_PUF[45].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[45]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_67 \GEN_PUF[46].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[46]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_68 \GEN_PUF[47].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[47]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_69 \GEN_PUF[48].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[48]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_70 \GEN_PUF[49].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[49]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_71 \GEN_PUF[4].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[4]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_72 \GEN_PUF[50].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[50]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_73 \GEN_PUF[51].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[51]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_74 \GEN_PUF[52].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[52]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_75 \GEN_PUF[53].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[53]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_76 \GEN_PUF[54].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[54]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_77 \GEN_PUF[55].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[55]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_78 \GEN_PUF[56].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[56]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_79 \GEN_PUF[57].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[57]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_80 \GEN_PUF[58].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[58]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_81 \GEN_PUF[59].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[59]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_82 \GEN_PUF[5].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[5]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_83 \GEN_PUF[60].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[60]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_84 \GEN_PUF[61].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[61]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_85 \GEN_PUF[62].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[62]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_86 \GEN_PUF[63].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[63]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_87 \GEN_PUF[64].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[64]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_88 \GEN_PUF[65].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[65]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_89 \GEN_PUF[66].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[66]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_90 \GEN_PUF[67].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[67]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_91 \GEN_PUF[68].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[68]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_92 \GEN_PUF[69].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[69]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_93 \GEN_PUF[6].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[6]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_94 \GEN_PUF[70].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[70]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_95 \GEN_PUF[71].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[71]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_96 \GEN_PUF[72].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[72]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_97 \GEN_PUF[73].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[73]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_98 \GEN_PUF[74].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[74]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_99 \GEN_PUF[75].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[75]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_100 \GEN_PUF[76].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[76]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_101 \GEN_PUF[77].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[77]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_102 \GEN_PUF[78].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[78]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_103 \GEN_PUF[79].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[79]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_104 \GEN_PUF[7].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[7]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_105 \GEN_PUF[80].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[80]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_106 \GEN_PUF[81].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[81]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_107 \GEN_PUF[82].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[82]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_108 \GEN_PUF[83].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[83]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_109 \GEN_PUF[84].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[84]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_110 \GEN_PUF[85].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[85]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_111 \GEN_PUF[86].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[86]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_112 \GEN_PUF[87].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[87]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_113 \GEN_PUF[88].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[88]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_114 \GEN_PUF[89].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[89]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_115 \GEN_PUF[8].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[8]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_116 \GEN_PUF[90].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[90]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_117 \GEN_PUF[91].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[91]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_118 \GEN_PUF[92].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[92]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_119 \GEN_PUF[93].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[93]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_120 \GEN_PUF[94].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[94]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_121 \GEN_PUF[95].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[95]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_122 \GEN_PUF[96].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[96]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_123 \GEN_PUF[97].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[97]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_124 \GEN_PUF[98].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[98]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_125 \GEN_PUF[99].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[99]));
  design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_126 \GEN_PUF[9].PUF 
       (.ASR_data_conf(ASR_data_conf),
        .ASR_length_conf(ASR_length_conf),
        .chip_enable(chip_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .puf_response(puf_response[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
