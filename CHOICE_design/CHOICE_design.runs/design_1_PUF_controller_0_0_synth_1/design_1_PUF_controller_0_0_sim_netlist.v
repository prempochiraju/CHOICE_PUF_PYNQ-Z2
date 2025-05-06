// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat May  3 21:33:49 2025
// Host        : FT-6K64K74 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_PUF_controller_0_0_sim_netlist.v
// Design      : design_1_PUF_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PUF_controller
   (ASR_enable,
    ASR_choice,
    ASR_tuning,
    ff_reset,
    write_valid,
    clk,
    payload,
    read_valid);
  output ASR_enable;
  output [3:0]ASR_choice;
  output [19:0]ASR_tuning;
  output ff_reset;
  output write_valid;
  input clk;
  input [36:0]payload;
  input read_valid;

  wire [3:0]ASR_choice;
  wire ASR_enable;
  wire [19:0]ASR_tuning;
  wire clk;
  wire ff_reset;
  wire fill_req_s;
  wire pattern_ready_s;
  wire [36:0]payload;
  wire read_valid;
  wire state;
  wire write_valid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pattern_ctrl_unit pattern_ctrl_unit_i
       (.ASR_choice(ASR_choice),
        .clk(clk),
        .fill_req_s(fill_req_s),
        .pattern_ready_reg_0(ASR_enable),
        .pattern_ready_s(pattern_ready_s),
        .payload(payload),
        .state(state));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_request_ctrl_unit req_ctrl_unit_i
       (.ASR_enable(ASR_enable),
        .clk(clk),
        .ff_reset(ff_reset),
        .fill_req_s(fill_req_s),
        .pattern_ready_s(pattern_ready_s),
        .payload(payload[36:33]),
        .read_valid(read_valid),
        .state(state),
        .write_valid(write_valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tune_ctrl_unit tune_ctrl_unit_i
       (.ASR_tuning(ASR_tuning),
        .clk(clk),
        .payload({payload[36:33],payload[9:0]}));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_PUF_controller_0_0,PUF_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "PUF_controller,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    payload,
    read_valid,
    write_ready,
    read_ready,
    write_valid,
    ff_reset,
    ASR_enable,
    ASR_tuning,
    ASR_choice);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input [63:0]payload;
  input read_valid;
  input write_ready;
  output read_ready;
  output write_valid;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ff_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ff_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output ff_reset;
  output ASR_enable;
  output [19:0]ASR_tuning;
  output [3:0]ASR_choice;

  wire [3:0]ASR_choice;
  wire ASR_enable;
  wire [19:0]ASR_tuning;
  wire clk;
  wire ff_reset;
  wire [63:0]payload;
  wire read_valid;
  wire write_valid;

  assign read_ready = write_valid;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PUF_controller U0
       (.ASR_choice(ASR_choice),
        .ASR_enable(ASR_enable),
        .ASR_tuning(ASR_tuning),
        .clk(clk),
        .ff_reset(ff_reset),
        .payload({payload[63:60],payload[32:0]}),
        .read_valid(read_valid),
        .write_valid(write_valid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pattern_ctrl_unit
   (pattern_ready_s,
    ASR_choice,
    payload,
    clk,
    fill_req_s,
    pattern_ready_reg_0,
    state);
  output pattern_ready_s;
  output [3:0]ASR_choice;
  input [36:0]payload;
  input clk;
  input fill_req_s;
  input pattern_ready_reg_0;
  input state;

  wire [1:0]ASR_bottom_indx;
  wire [3:0]ASR_choice;
  wire \ASR_choice[0]_i_1_n_0 ;
  wire \ASR_choice[0]_i_3_n_0 ;
  wire \ASR_choice[0]_i_4_n_0 ;
  wire \ASR_choice[0]_i_7_n_0 ;
  wire \ASR_choice[1]_i_1_n_0 ;
  wire \ASR_choice[1]_i_3_n_0 ;
  wire \ASR_choice[1]_i_4_n_0 ;
  wire \ASR_choice[1]_i_6_n_0 ;
  wire \ASR_choice[1]_i_7_n_0 ;
  wire \ASR_choice[2]_i_1_n_0 ;
  wire \ASR_choice[2]_i_3_n_0 ;
  wire \ASR_choice[2]_i_4_n_0 ;
  wire \ASR_choice[2]_i_6_n_0 ;
  wire \ASR_choice[2]_i_7_n_0 ;
  wire \ASR_choice[3]_i_10_n_0 ;
  wire \ASR_choice[3]_i_19_n_0 ;
  wire \ASR_choice[3]_i_1_n_0 ;
  wire \ASR_choice[3]_i_20_n_0 ;
  wire \ASR_choice[3]_i_21_n_0 ;
  wire \ASR_choice[3]_i_22_n_0 ;
  wire \ASR_choice[3]_i_23_n_0 ;
  wire \ASR_choice[3]_i_24_n_0 ;
  wire \ASR_choice[3]_i_25_n_0 ;
  wire \ASR_choice[3]_i_26_n_0 ;
  wire \ASR_choice[3]_i_27_n_0 ;
  wire \ASR_choice[3]_i_28_n_0 ;
  wire \ASR_choice[3]_i_29_n_0 ;
  wire \ASR_choice[3]_i_30_n_0 ;
  wire \ASR_choice[3]_i_31_n_0 ;
  wire \ASR_choice[3]_i_32_n_0 ;
  wire \ASR_choice[3]_i_33_n_0 ;
  wire \ASR_choice[3]_i_34_n_0 ;
  wire \ASR_choice[3]_i_3_n_0 ;
  wire \ASR_choice[3]_i_4_n_0 ;
  wire \ASR_choice[3]_i_6_n_0 ;
  wire \ASR_choice[3]_i_7_n_0 ;
  wire \ASR_choice[3]_i_8_n_0 ;
  wire \ASR_choice[3]_i_9_n_0 ;
  wire \ASR_choice_reg[3]_i_11_n_0 ;
  wire \ASR_choice_reg[3]_i_12_n_0 ;
  wire \ASR_choice_reg[3]_i_13_n_0 ;
  wire \ASR_choice_reg[3]_i_14_n_0 ;
  wire \ASR_choice_reg[3]_i_15_n_0 ;
  wire \ASR_choice_reg[3]_i_16_n_0 ;
  wire \ASR_choice_reg[3]_i_17_n_0 ;
  wire \ASR_choice_reg[3]_i_18_n_0 ;
  wire [1:0]ASR_top_indx;
  wire ASR_top_indx_0;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire bottom_in_pattern;
  wire bottom_in_pattern_reg_n_0;
  wire \bottom_pattern_reg_n_0_[0] ;
  wire \bottom_pattern_reg_n_0_[10] ;
  wire \bottom_pattern_reg_n_0_[11] ;
  wire \bottom_pattern_reg_n_0_[12] ;
  wire \bottom_pattern_reg_n_0_[13] ;
  wire \bottom_pattern_reg_n_0_[14] ;
  wire \bottom_pattern_reg_n_0_[15] ;
  wire \bottom_pattern_reg_n_0_[16] ;
  wire \bottom_pattern_reg_n_0_[17] ;
  wire \bottom_pattern_reg_n_0_[18] ;
  wire \bottom_pattern_reg_n_0_[19] ;
  wire \bottom_pattern_reg_n_0_[1] ;
  wire \bottom_pattern_reg_n_0_[20] ;
  wire \bottom_pattern_reg_n_0_[21] ;
  wire \bottom_pattern_reg_n_0_[22] ;
  wire \bottom_pattern_reg_n_0_[23] ;
  wire \bottom_pattern_reg_n_0_[24] ;
  wire \bottom_pattern_reg_n_0_[25] ;
  wire \bottom_pattern_reg_n_0_[26] ;
  wire \bottom_pattern_reg_n_0_[27] ;
  wire \bottom_pattern_reg_n_0_[28] ;
  wire \bottom_pattern_reg_n_0_[29] ;
  wire \bottom_pattern_reg_n_0_[2] ;
  wire \bottom_pattern_reg_n_0_[30] ;
  wire \bottom_pattern_reg_n_0_[31] ;
  wire \bottom_pattern_reg_n_0_[3] ;
  wire \bottom_pattern_reg_n_0_[4] ;
  wire \bottom_pattern_reg_n_0_[5] ;
  wire \bottom_pattern_reg_n_0_[6] ;
  wire \bottom_pattern_reg_n_0_[7] ;
  wire \bottom_pattern_reg_n_0_[8] ;
  wire \bottom_pattern_reg_n_0_[9] ;
  wire clk;
  wire count;
  wire [5:5]count0;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire [5:0]count_reg;
  wire fill_req_s;
  wire [3:0]mux16_out;
  wire [3:0]mux7_out;
  wire [0:0]p_9_in__5;
  wire pattern_ready_i_1_n_0;
  wire pattern_ready_i_2_n_0;
  wire pattern_ready_reg_0;
  wire pattern_ready_s;
  wire [36:0]payload;
  wire state;
  wire top_in_pattern;
  wire top_in_pattern_reg_n_0;
  wire \top_pattern_reg_n_0_[0] ;
  wire \top_pattern_reg_n_0_[10] ;
  wire \top_pattern_reg_n_0_[11] ;
  wire \top_pattern_reg_n_0_[12] ;
  wire \top_pattern_reg_n_0_[13] ;
  wire \top_pattern_reg_n_0_[14] ;
  wire \top_pattern_reg_n_0_[15] ;
  wire \top_pattern_reg_n_0_[16] ;
  wire \top_pattern_reg_n_0_[17] ;
  wire \top_pattern_reg_n_0_[18] ;
  wire \top_pattern_reg_n_0_[19] ;
  wire \top_pattern_reg_n_0_[1] ;
  wire \top_pattern_reg_n_0_[20] ;
  wire \top_pattern_reg_n_0_[21] ;
  wire \top_pattern_reg_n_0_[22] ;
  wire \top_pattern_reg_n_0_[23] ;
  wire \top_pattern_reg_n_0_[24] ;
  wire \top_pattern_reg_n_0_[25] ;
  wire \top_pattern_reg_n_0_[26] ;
  wire \top_pattern_reg_n_0_[27] ;
  wire \top_pattern_reg_n_0_[28] ;
  wire \top_pattern_reg_n_0_[29] ;
  wire \top_pattern_reg_n_0_[2] ;
  wire \top_pattern_reg_n_0_[30] ;
  wire \top_pattern_reg_n_0_[31] ;
  wire \top_pattern_reg_n_0_[3] ;
  wire \top_pattern_reg_n_0_[4] ;
  wire \top_pattern_reg_n_0_[5] ;
  wire \top_pattern_reg_n_0_[6] ;
  wire \top_pattern_reg_n_0_[7] ;
  wire \top_pattern_reg_n_0_[8] ;
  wire \top_pattern_reg_n_0_[9] ;

  LUT5 #(
    .INIT(32'h00200000)) 
    \ASR_bottom_indx[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(payload[36]),
        .I2(payload[33]),
        .I3(payload[35]),
        .I4(payload[34]),
        .O(ASR_top_indx_0));
  FDRE #(
    .INIT(1'b0)) 
    \ASR_bottom_indx_reg[0] 
       (.C(clk),
        .CE(ASR_top_indx_0),
        .D(payload[0]),
        .Q(ASR_bottom_indx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ASR_bottom_indx_reg[1] 
       (.C(clk),
        .CE(ASR_top_indx_0),
        .D(payload[1]),
        .Q(ASR_bottom_indx[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \ASR_choice[0]_i_1 
       (.I0(mux16_out[0]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\ASR_choice[0]_i_3_n_0 ),
        .I3(count),
        .I4(\ASR_choice[0]_i_4_n_0 ),
        .I5(ASR_choice[0]),
        .O(\ASR_choice[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFE00)) 
    \ASR_choice[0]_i_2 
       (.I0(\top_pattern_reg_n_0_[0] ),
        .I1(ASR_top_indx[0]),
        .I2(ASR_top_indx[1]),
        .I3(ASR_bottom_indx[1]),
        .I4(ASR_bottom_indx[0]),
        .I5(\bottom_pattern_reg_n_0_[0] ),
        .O(mux16_out[0]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B8BB)) 
    \ASR_choice[0]_i_3 
       (.I0(mux7_out[0]),
        .I1(count_reg[5]),
        .I2(\ASR_choice[3]_i_6_n_0 ),
        .I3(p_9_in__5),
        .I4(\ASR_choice[0]_i_7_n_0 ),
        .I5(\ASR_choice[3]_i_9_n_0 ),
        .O(\ASR_choice[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFFFFFAAAAAAAA)) 
    \ASR_choice[0]_i_4 
       (.I0(\ASR_choice[3]_i_10_n_0 ),
        .I1(\ASR_choice[0]_i_7_n_0 ),
        .I2(ASR_top_indx[0]),
        .I3(ASR_top_indx[1]),
        .I4(count_reg[5]),
        .I5(count),
        .O(\ASR_choice[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \ASR_choice[0]_i_5 
       (.I0(top_in_pattern_reg_n_0),
        .I1(ASR_bottom_indx[1]),
        .I2(ASR_bottom_indx[0]),
        .I3(bottom_in_pattern_reg_n_0),
        .O(mux7_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ASR_choice[0]_i_6 
       (.I0(ASR_top_indx[1]),
        .I1(ASR_top_indx[0]),
        .O(p_9_in__5));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ASR_choice[0]_i_7 
       (.I0(ASR_bottom_indx[1]),
        .I1(ASR_bottom_indx[0]),
        .O(\ASR_choice[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \ASR_choice[1]_i_1 
       (.I0(mux16_out[1]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\ASR_choice[1]_i_3_n_0 ),
        .I3(count),
        .I4(\ASR_choice[1]_i_4_n_0 ),
        .I5(ASR_choice[1]),
        .O(\ASR_choice[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFFFEFEFEF00EF)) 
    \ASR_choice[1]_i_2 
       (.I0(\top_pattern_reg_n_0_[0] ),
        .I1(ASR_top_indx[1]),
        .I2(ASR_top_indx[0]),
        .I3(ASR_bottom_indx[0]),
        .I4(ASR_bottom_indx[1]),
        .I5(\bottom_pattern_reg_n_0_[0] ),
        .O(mux16_out[1]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B8BB)) 
    \ASR_choice[1]_i_3 
       (.I0(mux7_out[1]),
        .I1(count_reg[5]),
        .I2(\ASR_choice[3]_i_6_n_0 ),
        .I3(\ASR_choice[1]_i_6_n_0 ),
        .I4(\ASR_choice[1]_i_7_n_0 ),
        .I5(\ASR_choice[3]_i_9_n_0 ),
        .O(\ASR_choice[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFFFAAAAAAAA)) 
    \ASR_choice[1]_i_4 
       (.I0(\ASR_choice[3]_i_10_n_0 ),
        .I1(\ASR_choice[1]_i_7_n_0 ),
        .I2(ASR_top_indx[1]),
        .I3(ASR_top_indx[0]),
        .I4(count_reg[5]),
        .I5(count),
        .O(\ASR_choice[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAEA2)) 
    \ASR_choice[1]_i_5 
       (.I0(top_in_pattern_reg_n_0),
        .I1(ASR_bottom_indx[0]),
        .I2(ASR_bottom_indx[1]),
        .I3(bottom_in_pattern_reg_n_0),
        .O(mux7_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ASR_choice[1]_i_6 
       (.I0(ASR_top_indx[0]),
        .I1(ASR_top_indx[1]),
        .O(\ASR_choice[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ASR_choice[1]_i_7 
       (.I0(ASR_bottom_indx[0]),
        .I1(ASR_bottom_indx[1]),
        .O(\ASR_choice[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \ASR_choice[2]_i_1 
       (.I0(mux16_out[2]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\ASR_choice[2]_i_3_n_0 ),
        .I3(count),
        .I4(\ASR_choice[2]_i_4_n_0 ),
        .I5(ASR_choice[2]),
        .O(\ASR_choice[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFFFEFEFEF00EF)) 
    \ASR_choice[2]_i_2 
       (.I0(\top_pattern_reg_n_0_[0] ),
        .I1(ASR_top_indx[0]),
        .I2(ASR_top_indx[1]),
        .I3(ASR_bottom_indx[1]),
        .I4(ASR_bottom_indx[0]),
        .I5(\bottom_pattern_reg_n_0_[0] ),
        .O(mux16_out[2]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B8BB)) 
    \ASR_choice[2]_i_3 
       (.I0(mux7_out[2]),
        .I1(count_reg[5]),
        .I2(\ASR_choice[3]_i_6_n_0 ),
        .I3(\ASR_choice[2]_i_6_n_0 ),
        .I4(\ASR_choice[2]_i_7_n_0 ),
        .I5(\ASR_choice[3]_i_9_n_0 ),
        .O(\ASR_choice[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFFFAAAAAAAA)) 
    \ASR_choice[2]_i_4 
       (.I0(\ASR_choice[3]_i_10_n_0 ),
        .I1(\ASR_choice[2]_i_7_n_0 ),
        .I2(ASR_top_indx[0]),
        .I3(ASR_top_indx[1]),
        .I4(count_reg[5]),
        .I5(count),
        .O(\ASR_choice[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAEA2)) 
    \ASR_choice[2]_i_5 
       (.I0(top_in_pattern_reg_n_0),
        .I1(ASR_bottom_indx[1]),
        .I2(ASR_bottom_indx[0]),
        .I3(bottom_in_pattern_reg_n_0),
        .O(mux7_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ASR_choice[2]_i_6 
       (.I0(ASR_top_indx[1]),
        .I1(ASR_top_indx[0]),
        .O(\ASR_choice[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ASR_choice[2]_i_7 
       (.I0(ASR_bottom_indx[1]),
        .I1(ASR_bottom_indx[0]),
        .O(\ASR_choice[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \ASR_choice[3]_i_1 
       (.I0(mux16_out[3]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\ASR_choice[3]_i_3_n_0 ),
        .I3(count),
        .I4(\ASR_choice[3]_i_4_n_0 ),
        .I5(ASR_choice[3]),
        .O(\ASR_choice[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA882A00000000)) 
    \ASR_choice[3]_i_10 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(payload[34]),
        .I2(payload[33]),
        .I3(payload[35]),
        .I4(payload[36]),
        .I5(fill_req_s),
        .O(\ASR_choice[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_19 
       (.I0(\top_pattern_reg_n_0_[27] ),
        .I1(\top_pattern_reg_n_0_[26] ),
        .I2(count_reg[1]),
        .I3(\top_pattern_reg_n_0_[25] ),
        .I4(count_reg[0]),
        .I5(\top_pattern_reg_n_0_[24] ),
        .O(\ASR_choice[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBFBF00BFBFBF)) 
    \ASR_choice[3]_i_2 
       (.I0(\top_pattern_reg_n_0_[0] ),
        .I1(ASR_top_indx[0]),
        .I2(ASR_top_indx[1]),
        .I3(ASR_bottom_indx[1]),
        .I4(ASR_bottom_indx[0]),
        .I5(\bottom_pattern_reg_n_0_[0] ),
        .O(mux16_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_20 
       (.I0(\top_pattern_reg_n_0_[31] ),
        .I1(\top_pattern_reg_n_0_[30] ),
        .I2(count_reg[1]),
        .I3(\top_pattern_reg_n_0_[29] ),
        .I4(count_reg[0]),
        .I5(\top_pattern_reg_n_0_[28] ),
        .O(\ASR_choice[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_21 
       (.I0(\top_pattern_reg_n_0_[19] ),
        .I1(\top_pattern_reg_n_0_[18] ),
        .I2(count_reg[1]),
        .I3(\top_pattern_reg_n_0_[17] ),
        .I4(count_reg[0]),
        .I5(\top_pattern_reg_n_0_[16] ),
        .O(\ASR_choice[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_22 
       (.I0(\top_pattern_reg_n_0_[23] ),
        .I1(\top_pattern_reg_n_0_[22] ),
        .I2(count_reg[1]),
        .I3(\top_pattern_reg_n_0_[21] ),
        .I4(count_reg[0]),
        .I5(\top_pattern_reg_n_0_[20] ),
        .O(\ASR_choice[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_23 
       (.I0(\top_pattern_reg_n_0_[11] ),
        .I1(\top_pattern_reg_n_0_[10] ),
        .I2(count_reg[1]),
        .I3(\top_pattern_reg_n_0_[9] ),
        .I4(count_reg[0]),
        .I5(\top_pattern_reg_n_0_[8] ),
        .O(\ASR_choice[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_24 
       (.I0(\top_pattern_reg_n_0_[15] ),
        .I1(\top_pattern_reg_n_0_[14] ),
        .I2(count_reg[1]),
        .I3(\top_pattern_reg_n_0_[13] ),
        .I4(count_reg[0]),
        .I5(\top_pattern_reg_n_0_[12] ),
        .O(\ASR_choice[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_25 
       (.I0(\top_pattern_reg_n_0_[3] ),
        .I1(\top_pattern_reg_n_0_[2] ),
        .I2(count_reg[1]),
        .I3(\top_pattern_reg_n_0_[1] ),
        .I4(count_reg[0]),
        .I5(\top_pattern_reg_n_0_[0] ),
        .O(\ASR_choice[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_26 
       (.I0(\top_pattern_reg_n_0_[7] ),
        .I1(\top_pattern_reg_n_0_[6] ),
        .I2(count_reg[1]),
        .I3(\top_pattern_reg_n_0_[5] ),
        .I4(count_reg[0]),
        .I5(\top_pattern_reg_n_0_[4] ),
        .O(\ASR_choice[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_27 
       (.I0(\bottom_pattern_reg_n_0_[27] ),
        .I1(\bottom_pattern_reg_n_0_[26] ),
        .I2(count_reg[1]),
        .I3(\bottom_pattern_reg_n_0_[25] ),
        .I4(count_reg[0]),
        .I5(\bottom_pattern_reg_n_0_[24] ),
        .O(\ASR_choice[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_28 
       (.I0(\bottom_pattern_reg_n_0_[31] ),
        .I1(\bottom_pattern_reg_n_0_[30] ),
        .I2(count_reg[1]),
        .I3(\bottom_pattern_reg_n_0_[29] ),
        .I4(count_reg[0]),
        .I5(\bottom_pattern_reg_n_0_[28] ),
        .O(\ASR_choice[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_29 
       (.I0(\bottom_pattern_reg_n_0_[19] ),
        .I1(\bottom_pattern_reg_n_0_[18] ),
        .I2(count_reg[1]),
        .I3(\bottom_pattern_reg_n_0_[17] ),
        .I4(count_reg[0]),
        .I5(\bottom_pattern_reg_n_0_[16] ),
        .O(\ASR_choice[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B8BB)) 
    \ASR_choice[3]_i_3 
       (.I0(mux7_out[3]),
        .I1(count_reg[5]),
        .I2(\ASR_choice[3]_i_6_n_0 ),
        .I3(\ASR_choice[3]_i_7_n_0 ),
        .I4(\ASR_choice[3]_i_8_n_0 ),
        .I5(\ASR_choice[3]_i_9_n_0 ),
        .O(\ASR_choice[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_30 
       (.I0(\bottom_pattern_reg_n_0_[23] ),
        .I1(\bottom_pattern_reg_n_0_[22] ),
        .I2(count_reg[1]),
        .I3(\bottom_pattern_reg_n_0_[21] ),
        .I4(count_reg[0]),
        .I5(\bottom_pattern_reg_n_0_[20] ),
        .O(\ASR_choice[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_31 
       (.I0(\bottom_pattern_reg_n_0_[11] ),
        .I1(\bottom_pattern_reg_n_0_[10] ),
        .I2(count_reg[1]),
        .I3(\bottom_pattern_reg_n_0_[9] ),
        .I4(count_reg[0]),
        .I5(\bottom_pattern_reg_n_0_[8] ),
        .O(\ASR_choice[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_32 
       (.I0(\bottom_pattern_reg_n_0_[15] ),
        .I1(\bottom_pattern_reg_n_0_[14] ),
        .I2(count_reg[1]),
        .I3(\bottom_pattern_reg_n_0_[13] ),
        .I4(count_reg[0]),
        .I5(\bottom_pattern_reg_n_0_[12] ),
        .O(\ASR_choice[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_33 
       (.I0(\bottom_pattern_reg_n_0_[3] ),
        .I1(\bottom_pattern_reg_n_0_[2] ),
        .I2(count_reg[1]),
        .I3(\bottom_pattern_reg_n_0_[1] ),
        .I4(count_reg[0]),
        .I5(\bottom_pattern_reg_n_0_[0] ),
        .O(\ASR_choice[3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_34 
       (.I0(\bottom_pattern_reg_n_0_[7] ),
        .I1(\bottom_pattern_reg_n_0_[6] ),
        .I2(count_reg[1]),
        .I3(\bottom_pattern_reg_n_0_[5] ),
        .I4(count_reg[0]),
        .I5(\bottom_pattern_reg_n_0_[4] ),
        .O(\ASR_choice[3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFFFFAAAAAAAA)) 
    \ASR_choice[3]_i_4 
       (.I0(\ASR_choice[3]_i_10_n_0 ),
        .I1(\ASR_choice[3]_i_8_n_0 ),
        .I2(ASR_top_indx[0]),
        .I3(ASR_top_indx[1]),
        .I4(count_reg[5]),
        .I5(count),
        .O(\ASR_choice[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \ASR_choice[3]_i_5 
       (.I0(top_in_pattern_reg_n_0),
        .I1(ASR_bottom_indx[1]),
        .I2(ASR_bottom_indx[0]),
        .I3(bottom_in_pattern_reg_n_0),
        .O(mux7_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_6 
       (.I0(\ASR_choice_reg[3]_i_11_n_0 ),
        .I1(\ASR_choice_reg[3]_i_12_n_0 ),
        .I2(count_reg[4]),
        .I3(\ASR_choice_reg[3]_i_13_n_0 ),
        .I4(count_reg[3]),
        .I5(\ASR_choice_reg[3]_i_14_n_0 ),
        .O(\ASR_choice[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ASR_choice[3]_i_7 
       (.I0(ASR_top_indx[1]),
        .I1(ASR_top_indx[0]),
        .O(\ASR_choice[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ASR_choice[3]_i_8 
       (.I0(ASR_bottom_indx[1]),
        .I1(ASR_bottom_indx[0]),
        .O(\ASR_choice[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ASR_choice[3]_i_9 
       (.I0(\ASR_choice_reg[3]_i_15_n_0 ),
        .I1(\ASR_choice_reg[3]_i_16_n_0 ),
        .I2(count_reg[4]),
        .I3(\ASR_choice_reg[3]_i_17_n_0 ),
        .I4(count_reg[3]),
        .I5(\ASR_choice_reg[3]_i_18_n_0 ),
        .O(\ASR_choice[3]_i_9_n_0 ));
  FDRE \ASR_choice_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ASR_choice[0]_i_1_n_0 ),
        .Q(ASR_choice[0]),
        .R(1'b0));
  FDRE \ASR_choice_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ASR_choice[1]_i_1_n_0 ),
        .Q(ASR_choice[1]),
        .R(1'b0));
  FDRE \ASR_choice_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\ASR_choice[2]_i_1_n_0 ),
        .Q(ASR_choice[2]),
        .R(1'b0));
  FDRE \ASR_choice_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\ASR_choice[3]_i_1_n_0 ),
        .Q(ASR_choice[3]),
        .R(1'b0));
  MUXF7 \ASR_choice_reg[3]_i_11 
       (.I0(\ASR_choice[3]_i_19_n_0 ),
        .I1(\ASR_choice[3]_i_20_n_0 ),
        .O(\ASR_choice_reg[3]_i_11_n_0 ),
        .S(count_reg[2]));
  MUXF7 \ASR_choice_reg[3]_i_12 
       (.I0(\ASR_choice[3]_i_21_n_0 ),
        .I1(\ASR_choice[3]_i_22_n_0 ),
        .O(\ASR_choice_reg[3]_i_12_n_0 ),
        .S(count_reg[2]));
  MUXF7 \ASR_choice_reg[3]_i_13 
       (.I0(\ASR_choice[3]_i_23_n_0 ),
        .I1(\ASR_choice[3]_i_24_n_0 ),
        .O(\ASR_choice_reg[3]_i_13_n_0 ),
        .S(count_reg[2]));
  MUXF7 \ASR_choice_reg[3]_i_14 
       (.I0(\ASR_choice[3]_i_25_n_0 ),
        .I1(\ASR_choice[3]_i_26_n_0 ),
        .O(\ASR_choice_reg[3]_i_14_n_0 ),
        .S(count_reg[2]));
  MUXF7 \ASR_choice_reg[3]_i_15 
       (.I0(\ASR_choice[3]_i_27_n_0 ),
        .I1(\ASR_choice[3]_i_28_n_0 ),
        .O(\ASR_choice_reg[3]_i_15_n_0 ),
        .S(count_reg[2]));
  MUXF7 \ASR_choice_reg[3]_i_16 
       (.I0(\ASR_choice[3]_i_29_n_0 ),
        .I1(\ASR_choice[3]_i_30_n_0 ),
        .O(\ASR_choice_reg[3]_i_16_n_0 ),
        .S(count_reg[2]));
  MUXF7 \ASR_choice_reg[3]_i_17 
       (.I0(\ASR_choice[3]_i_31_n_0 ),
        .I1(\ASR_choice[3]_i_32_n_0 ),
        .O(\ASR_choice_reg[3]_i_17_n_0 ),
        .S(count_reg[2]));
  MUXF7 \ASR_choice_reg[3]_i_18 
       (.I0(\ASR_choice[3]_i_33_n_0 ),
        .I1(\ASR_choice[3]_i_34_n_0 ),
        .O(\ASR_choice_reg[3]_i_18_n_0 ),
        .S(count_reg[2]));
  FDRE #(
    .INIT(1'b1)) 
    \ASR_top_indx_reg[0] 
       (.C(clk),
        .CE(ASR_top_indx_0),
        .D(payload[2]),
        .Q(ASR_top_indx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \ASR_top_indx_reg[1] 
       (.C(clk),
        .CE(ASR_top_indx_0),
        .D(payload[3]),
        .Q(ASR_top_indx[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF00FA22FA22FA22)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(state),
        .I2(pattern_ready_reg_0),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(count_reg[5]),
        .I5(count),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAFFFA888A888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(state),
        .I2(pattern_ready_reg_0),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(count_reg[5]),
        .I5(count),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF8807000700)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(state),
        .I2(pattern_ready_reg_0),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(count_reg[5]),
        .I5(count),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s0:001,s1:010,s2:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s0:001,s1:010,s2:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(count),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s0:001,s1:010,s2:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    bottom_in_pattern_reg
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[32]),
        .Q(bottom_in_pattern_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00002000)) 
    \bottom_pattern[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(payload[36]),
        .I2(payload[33]),
        .I3(payload[35]),
        .I4(payload[34]),
        .O(bottom_in_pattern));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[0] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[0]),
        .Q(\bottom_pattern_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[10] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[10]),
        .Q(\bottom_pattern_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[11] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[11]),
        .Q(\bottom_pattern_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[12] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[12]),
        .Q(\bottom_pattern_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[13] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[13]),
        .Q(\bottom_pattern_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[14] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[14]),
        .Q(\bottom_pattern_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[15] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[15]),
        .Q(\bottom_pattern_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[16] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[16]),
        .Q(\bottom_pattern_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[17] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[17]),
        .Q(\bottom_pattern_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[18] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[18]),
        .Q(\bottom_pattern_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[19] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[19]),
        .Q(\bottom_pattern_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[1] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[1]),
        .Q(\bottom_pattern_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[20] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[20]),
        .Q(\bottom_pattern_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[21] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[21]),
        .Q(\bottom_pattern_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[22] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[22]),
        .Q(\bottom_pattern_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[23] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[23]),
        .Q(\bottom_pattern_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[24] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[24]),
        .Q(\bottom_pattern_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[25] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[25]),
        .Q(\bottom_pattern_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[26] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[26]),
        .Q(\bottom_pattern_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[27] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[27]),
        .Q(\bottom_pattern_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[28] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[28]),
        .Q(\bottom_pattern_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[29] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[29]),
        .Q(\bottom_pattern_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[2] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[2]),
        .Q(\bottom_pattern_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[30] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[30]),
        .Q(\bottom_pattern_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[31] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[31]),
        .Q(\bottom_pattern_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[3] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[3]),
        .Q(\bottom_pattern_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[4] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[4]),
        .Q(\bottom_pattern_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[5] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[5]),
        .Q(\bottom_pattern_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[6] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[6]),
        .Q(\bottom_pattern_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[7] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[7]),
        .Q(\bottom_pattern_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bottom_pattern_reg[8] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[8]),
        .Q(\bottom_pattern_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_pattern_reg[9] 
       (.C(clk),
        .CE(bottom_in_pattern),
        .D(payload[9]),
        .Q(\bottom_pattern_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBC)) 
    \count[0]_i_1 
       (.I0(count_reg[5]),
        .I1(count),
        .I2(count_reg[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \count[1]_i_1 
       (.I0(count_reg[5]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \count[2]_i_1 
       (.I0(count_reg[5]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \count[3]_i_1 
       (.I0(count_reg[5]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[3]),
        .O(\count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \count[4]_i_1 
       (.I0(count_reg[5]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .I5(count_reg[4]),
        .O(\count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \count[5]_i_1 
       (.I0(count_reg[5]),
        .I1(count0),
        .O(\count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_2 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .I5(count_reg[5]),
        .O(count0));
  FDRE #(
    .INIT(1'b1)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(count),
        .D(\count[1]_i_1_n_0 ),
        .Q(count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(count),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(count),
        .D(\count[3]_i_1_n_0 ),
        .Q(count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(count),
        .D(\count[4]_i_1_n_0 ),
        .Q(count_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(count),
        .D(\count[5]_i_1_n_0 ),
        .Q(count_reg[5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h507F7F7F50404040)) 
    pattern_ready_i_1
       (.I0(count_reg[5]),
        .I1(pattern_ready_i_2_n_0),
        .I2(count),
        .I3(pattern_ready_reg_0),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(pattern_ready_s),
        .O(pattern_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    pattern_ready_i_2
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[4]),
        .I5(count_reg[5]),
        .O(pattern_ready_i_2_n_0));
  FDRE pattern_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(pattern_ready_i_1_n_0),
        .Q(pattern_ready_s),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    top_in_pattern_reg
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[32]),
        .Q(top_in_pattern_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \top_pattern[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(payload[34]),
        .I2(payload[35]),
        .I3(payload[33]),
        .I4(payload[36]),
        .O(top_in_pattern));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[0] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[0]),
        .Q(\top_pattern_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[10] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[10]),
        .Q(\top_pattern_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[11] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[11]),
        .Q(\top_pattern_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[12] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[12]),
        .Q(\top_pattern_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[13] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[13]),
        .Q(\top_pattern_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[14] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[14]),
        .Q(\top_pattern_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[15] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[15]),
        .Q(\top_pattern_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[16] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[16]),
        .Q(\top_pattern_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[17] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[17]),
        .Q(\top_pattern_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[18] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[18]),
        .Q(\top_pattern_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[19] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[19]),
        .Q(\top_pattern_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[1] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[1]),
        .Q(\top_pattern_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[20] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[20]),
        .Q(\top_pattern_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[21] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[21]),
        .Q(\top_pattern_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[22] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[22]),
        .Q(\top_pattern_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[23] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[23]),
        .Q(\top_pattern_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[24] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[24]),
        .Q(\top_pattern_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[25] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[25]),
        .Q(\top_pattern_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[26] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[26]),
        .Q(\top_pattern_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[27] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[27]),
        .Q(\top_pattern_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[28] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[28]),
        .Q(\top_pattern_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[29] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[29]),
        .Q(\top_pattern_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[2] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[2]),
        .Q(\top_pattern_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[30] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[30]),
        .Q(\top_pattern_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[31] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[31]),
        .Q(\top_pattern_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[3] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[3]),
        .Q(\top_pattern_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[4] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[4]),
        .Q(\top_pattern_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[5] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[5]),
        .Q(\top_pattern_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[6] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[6]),
        .Q(\top_pattern_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[7] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[7]),
        .Q(\top_pattern_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \top_pattern_reg[8] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[8]),
        .Q(\top_pattern_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \top_pattern_reg[9] 
       (.C(clk),
        .CE(top_in_pattern),
        .D(payload[9]),
        .Q(\top_pattern_reg_n_0_[9] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_request_ctrl_unit
   (ASR_enable,
    fill_req_s,
    ff_reset,
    write_valid,
    state,
    clk,
    read_valid,
    payload,
    pattern_ready_s);
  output ASR_enable;
  output fill_req_s;
  output ff_reset;
  output write_valid;
  output state;
  input clk;
  input read_valid;
  input [3:0]payload;
  input pattern_ready_s;

  wire ASR_enable;
  wire ASR_enable_i_1_n_0;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire clk;
  wire ff_reset;
  wire ff_reset_i_1_n_0;
  wire fill_req_i_1_n_0;
  wire fill_req_s;
  wire pattern_ready_s;
  wire [3:0]payload;
  wire read_ready_i_1_n_0;
  wire read_ready_i_2_n_0;
  wire read_valid;
  wire state;
  wire [2:0]state_0;
  wire write_valid;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    ASR_enable_i_1
       (.I0(state_0[2]),
        .I1(state_0[1]),
        .I2(pattern_ready_s),
        .I3(state_0[0]),
        .O(ASR_enable_i_1_n_0));
  FDRE ASR_enable_reg
       (.C(clk),
        .CE(1'b1),
        .D(ASR_enable_i_1_n_0),
        .Q(ASR_enable),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA8AA8A8A)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(fill_req_s),
        .I1(payload[3]),
        .I2(payload[2]),
        .I3(payload[0]),
        .I4(payload[1]),
        .O(state));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF01FF01A)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state_0[1]),
        .I1(pattern_ready_s),
        .I2(state_0[0]),
        .I3(state_0[2]),
        .I4(read_ready_i_2_n_0),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA4A)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state_0[1]),
        .I1(pattern_ready_s),
        .I2(state_0[0]),
        .I3(state_0[2]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state_0[1]),
        .I1(state_0[0]),
        .I2(state_0[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s0:000,s1:001,s2:010,s3:011,s4:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state_0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s0:000,s1:001,s2:010,s3:011,s4:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state_0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s0:000,s1:001,s2:010,s3:011,s4:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state_0[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8AB0)) 
    ff_reset_i_1
       (.I0(ff_reset),
        .I1(state_0[2]),
        .I2(state_0[1]),
        .I3(state_0[0]),
        .O(ff_reset_i_1_n_0));
  FDRE ff_reset_reg
       (.C(clk),
        .CE(1'b1),
        .D(ff_reset_i_1_n_0),
        .Q(ff_reset),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    fill_req_i_1
       (.I0(state_0[2]),
        .I1(state_0[0]),
        .I2(read_ready_i_2_n_0),
        .I3(state_0[1]),
        .O(fill_req_i_1_n_0));
  FDRE fill_req_reg
       (.C(clk),
        .CE(1'b1),
        .D(fill_req_i_1_n_0),
        .Q(fill_req_s),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFCF10031)) 
    read_ready_i_1
       (.I0(read_ready_i_2_n_0),
        .I1(state_0[1]),
        .I2(state_0[2]),
        .I3(state_0[0]),
        .I4(write_valid),
        .O(read_ready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000020)) 
    read_ready_i_2
       (.I0(read_valid),
        .I1(payload[1]),
        .I2(payload[0]),
        .I3(payload[2]),
        .I4(payload[3]),
        .O(read_ready_i_2_n_0));
  FDRE read_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(read_ready_i_1_n_0),
        .Q(write_valid),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tune_ctrl_unit
   (ASR_tuning,
    payload,
    clk);
  output [19:0]ASR_tuning;
  input [13:0]payload;
  input clk;

  wire [1:0]A;
  wire \ASR_bottom_indx_reg_n_0_[0] ;
  wire \ASR_bottom_indx_reg_n_0_[1] ;
  wire ASR_top_indx;
  wire [19:0]ASR_tuning;
  wire [19:0]ASR_tuning0;
  wire ASR_tuning_set;
  wire clk;
  wire [4:0]lower_tuning;
  wire [13:0]payload;
  wire [4:0]upper_tuning;

  FDRE #(
    .INIT(1'b0)) 
    \ASR_bottom_indx_reg[0] 
       (.C(clk),
        .CE(ASR_top_indx),
        .D(payload[0]),
        .Q(\ASR_bottom_indx_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ASR_bottom_indx_reg[1] 
       (.C(clk),
        .CE(ASR_top_indx),
        .D(payload[1]),
        .Q(\ASR_bottom_indx_reg_n_0_[1] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \ASR_top_indx[1]_i_1 
       (.I0(payload[10]),
        .I1(payload[11]),
        .I2(payload[12]),
        .I3(payload[13]),
        .O(ASR_top_indx));
  FDRE #(
    .INIT(1'b1)) 
    \ASR_top_indx_reg[0] 
       (.C(clk),
        .CE(ASR_top_indx),
        .D(payload[2]),
        .Q(A[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \ASR_top_indx_reg[1] 
       (.C(clk),
        .CE(ASR_top_indx),
        .D(payload[3]),
        .Q(A[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFCFFFCFFFDAAA8)) 
    \ASR_tuning[0]_i_1 
       (.I0(\ASR_bottom_indx_reg_n_0_[0] ),
        .I1(A[0]),
        .I2(upper_tuning[0]),
        .I3(A[1]),
        .I4(lower_tuning[0]),
        .I5(\ASR_bottom_indx_reg_n_0_[1] ),
        .O(ASR_tuning0[0]));
  LUT6 #(
    .INIT(64'hFDFFA8AAFCFFFCFF)) 
    \ASR_tuning[10]_i_1 
       (.I0(\ASR_bottom_indx_reg_n_0_[0] ),
        .I1(A[0]),
        .I2(upper_tuning[0]),
        .I3(A[1]),
        .I4(lower_tuning[0]),
        .I5(\ASR_bottom_indx_reg_n_0_[1] ),
        .O(ASR_tuning0[10]));
  LUT6 #(
    .INIT(64'hFDFFA8AAFCFFFCFF)) 
    \ASR_tuning[11]_i_1 
       (.I0(\ASR_bottom_indx_reg_n_0_[0] ),
        .I1(A[0]),
        .I2(upper_tuning[1]),
        .I3(A[1]),
        .I4(lower_tuning[1]),
        .I5(\ASR_bottom_indx_reg_n_0_[1] ),
        .O(ASR_tuning0[11]));
  LUT6 #(
    .INIT(64'hFDFFA8AAFCFFFCFF)) 
    \ASR_tuning[12]_i_1 
       (.I0(\ASR_bottom_indx_reg_n_0_[0] ),
        .I1(A[0]),
        .I2(upper_tuning[2]),
        .I3(A[1]),
        .I4(lower_tuning[2]),
        .I5(\ASR_bottom_indx_reg_n_0_[1] ),
        .O(ASR_tuning0[12]));
  LUT6 #(
    .INIT(64'hFDFFA8AAFCFFFCFF)) 
    \ASR_tuning[13]_i_1 
       (.I0(\ASR_bottom_indx_reg_n_0_[0] ),
        .I1(A[0]),
        .I2(upper_tuning[3]),
        .I3(A[1]),
        .I4(lower_tuning[3]),
        .I5(\ASR_bottom_indx_reg_n_0_[1] ),
        .O(ASR_tuning0[13]));
  LUT6 #(
    .INIT(64'hFDFFA8AAFCFFFCFF)) 
    \ASR_tuning[14]_i_1 
       (.I0(\ASR_bottom_indx_reg_n_0_[0] ),
        .I1(A[0]),
        .I2(upper_tuning[4]),
        .I3(A[1]),
        .I4(lower_tuning[4]),
        .I5(\ASR_bottom_indx_reg_n_0_[1] ),
        .O(ASR_tuning0[14]));
  LUT6 #(
    .INIT(64'hBFBF80BFBFBFBFBF)) 
    \ASR_tuning[15]_i_1 
       (.I0(lower_tuning[0]),
        .I1(\ASR_bottom_indx_reg_n_0_[1] ),
        .I2(\ASR_bottom_indx_reg_n_0_[0] ),
        .I3(A[1]),
        .I4(upper_tuning[0]),
        .I5(A[0]),
        .O(ASR_tuning0[15]));
  LUT6 #(
    .INIT(64'hBFBF80BFBFBFBFBF)) 
    \ASR_tuning[16]_i_1 
       (.I0(lower_tuning[1]),
        .I1(\ASR_bottom_indx_reg_n_0_[1] ),
        .I2(\ASR_bottom_indx_reg_n_0_[0] ),
        .I3(A[1]),
        .I4(upper_tuning[1]),
        .I5(A[0]),
        .O(ASR_tuning0[16]));
  LUT6 #(
    .INIT(64'hBFBF80BFBFBFBFBF)) 
    \ASR_tuning[17]_i_1 
       (.I0(lower_tuning[2]),
        .I1(\ASR_bottom_indx_reg_n_0_[1] ),
        .I2(\ASR_bottom_indx_reg_n_0_[0] ),
        .I3(A[1]),
        .I4(upper_tuning[2]),
        .I5(A[0]),
        .O(ASR_tuning0[17]));
  LUT6 #(
    .INIT(64'hBFBF80BFBFBFBFBF)) 
    \ASR_tuning[18]_i_1 
       (.I0(lower_tuning[3]),
        .I1(\ASR_bottom_indx_reg_n_0_[1] ),
        .I2(\ASR_bottom_indx_reg_n_0_[0] ),
        .I3(A[1]),
        .I4(upper_tuning[3]),
        .I5(A[0]),
        .O(ASR_tuning0[18]));
  LUT6 #(
    .INIT(64'hBFBF80BFBFBFBFBF)) 
    \ASR_tuning[19]_i_1 
       (.I0(lower_tuning[4]),
        .I1(\ASR_bottom_indx_reg_n_0_[1] ),
        .I2(\ASR_bottom_indx_reg_n_0_[0] ),
        .I3(A[1]),
        .I4(upper_tuning[4]),
        .I5(A[0]),
        .O(ASR_tuning0[19]));
  LUT6 #(
    .INIT(64'hFFFCFFFCFFFDAAA8)) 
    \ASR_tuning[1]_i_1 
       (.I0(\ASR_bottom_indx_reg_n_0_[0] ),
        .I1(A[0]),
        .I2(upper_tuning[1]),
        .I3(A[1]),
        .I4(lower_tuning[1]),
        .I5(\ASR_bottom_indx_reg_n_0_[1] ),
        .O(ASR_tuning0[1]));
  LUT6 #(
    .INIT(64'hFFFCFFFCFFFDAAA8)) 
    \ASR_tuning[2]_i_1 
       (.I0(\ASR_bottom_indx_reg_n_0_[0] ),
        .I1(A[0]),
        .I2(upper_tuning[2]),
        .I3(A[1]),
        .I4(lower_tuning[2]),
        .I5(\ASR_bottom_indx_reg_n_0_[1] ),
        .O(ASR_tuning0[2]));
  LUT6 #(
    .INIT(64'hFFFCFFFCFFFDAAA8)) 
    \ASR_tuning[3]_i_1 
       (.I0(\ASR_bottom_indx_reg_n_0_[0] ),
        .I1(A[0]),
        .I2(upper_tuning[3]),
        .I3(A[1]),
        .I4(lower_tuning[3]),
        .I5(\ASR_bottom_indx_reg_n_0_[1] ),
        .O(ASR_tuning0[3]));
  LUT6 #(
    .INIT(64'hFFFCFFFCFFFDAAA8)) 
    \ASR_tuning[4]_i_1 
       (.I0(\ASR_bottom_indx_reg_n_0_[0] ),
        .I1(A[0]),
        .I2(upper_tuning[4]),
        .I3(A[1]),
        .I4(lower_tuning[4]),
        .I5(\ASR_bottom_indx_reg_n_0_[1] ),
        .O(ASR_tuning0[4]));
  LUT6 #(
    .INIT(64'hEFEFEF40EFEFEFEF)) 
    \ASR_tuning[5]_i_1 
       (.I0(\ASR_bottom_indx_reg_n_0_[1] ),
        .I1(lower_tuning[0]),
        .I2(\ASR_bottom_indx_reg_n_0_[0] ),
        .I3(upper_tuning[0]),
        .I4(A[1]),
        .I5(A[0]),
        .O(ASR_tuning0[5]));
  LUT6 #(
    .INIT(64'hEFEFEF40EFEFEFEF)) 
    \ASR_tuning[6]_i_1 
       (.I0(\ASR_bottom_indx_reg_n_0_[1] ),
        .I1(lower_tuning[1]),
        .I2(\ASR_bottom_indx_reg_n_0_[0] ),
        .I3(upper_tuning[1]),
        .I4(A[1]),
        .I5(A[0]),
        .O(ASR_tuning0[6]));
  LUT6 #(
    .INIT(64'hEFEFEF40EFEFEFEF)) 
    \ASR_tuning[7]_i_1 
       (.I0(\ASR_bottom_indx_reg_n_0_[1] ),
        .I1(lower_tuning[2]),
        .I2(\ASR_bottom_indx_reg_n_0_[0] ),
        .I3(upper_tuning[2]),
        .I4(A[1]),
        .I5(A[0]),
        .O(ASR_tuning0[7]));
  LUT6 #(
    .INIT(64'hEFEFEF40EFEFEFEF)) 
    \ASR_tuning[8]_i_1 
       (.I0(\ASR_bottom_indx_reg_n_0_[1] ),
        .I1(lower_tuning[3]),
        .I2(\ASR_bottom_indx_reg_n_0_[0] ),
        .I3(upper_tuning[3]),
        .I4(A[1]),
        .I5(A[0]),
        .O(ASR_tuning0[8]));
  LUT6 #(
    .INIT(64'hEFEFEF40EFEFEFEF)) 
    \ASR_tuning[9]_i_1 
       (.I0(\ASR_bottom_indx_reg_n_0_[1] ),
        .I1(lower_tuning[4]),
        .I2(\ASR_bottom_indx_reg_n_0_[0] ),
        .I3(upper_tuning[4]),
        .I4(A[1]),
        .I5(A[0]),
        .O(ASR_tuning0[9]));
  FDRE \ASR_tuning_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[0]),
        .Q(ASR_tuning[0]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[10]),
        .Q(ASR_tuning[10]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[11]),
        .Q(ASR_tuning[11]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[12]),
        .Q(ASR_tuning[12]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[13]),
        .Q(ASR_tuning[13]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[14]),
        .Q(ASR_tuning[14]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[15]),
        .Q(ASR_tuning[15]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[16]),
        .Q(ASR_tuning[16]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[17]),
        .Q(ASR_tuning[17]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[18]),
        .Q(ASR_tuning[18]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[19]),
        .Q(ASR_tuning[19]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[1]),
        .Q(ASR_tuning[1]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[2]),
        .Q(ASR_tuning[2]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[3]),
        .Q(ASR_tuning[3]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[4]),
        .Q(ASR_tuning[4]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[5]),
        .Q(ASR_tuning[5]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[6]),
        .Q(ASR_tuning[6]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[7]),
        .Q(ASR_tuning[7]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[8]),
        .Q(ASR_tuning[8]),
        .R(1'b0));
  FDRE \ASR_tuning_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(ASR_tuning0[9]),
        .Q(ASR_tuning[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lower_tuning_reg[0] 
       (.C(clk),
        .CE(ASR_tuning_set),
        .D(payload[0]),
        .Q(lower_tuning[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lower_tuning_reg[1] 
       (.C(clk),
        .CE(ASR_tuning_set),
        .D(payload[1]),
        .Q(lower_tuning[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lower_tuning_reg[2] 
       (.C(clk),
        .CE(ASR_tuning_set),
        .D(payload[2]),
        .Q(lower_tuning[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lower_tuning_reg[3] 
       (.C(clk),
        .CE(ASR_tuning_set),
        .D(payload[3]),
        .Q(lower_tuning[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lower_tuning_reg[4] 
       (.C(clk),
        .CE(ASR_tuning_set),
        .D(payload[4]),
        .Q(lower_tuning[4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0010)) 
    \upper_tuning[4]_i_1 
       (.I0(payload[13]),
        .I1(payload[12]),
        .I2(payload[11]),
        .I3(payload[10]),
        .O(ASR_tuning_set));
  FDRE #(
    .INIT(1'b1)) 
    \upper_tuning_reg[0] 
       (.C(clk),
        .CE(ASR_tuning_set),
        .D(payload[5]),
        .Q(upper_tuning[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \upper_tuning_reg[1] 
       (.C(clk),
        .CE(ASR_tuning_set),
        .D(payload[6]),
        .Q(upper_tuning[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \upper_tuning_reg[2] 
       (.C(clk),
        .CE(ASR_tuning_set),
        .D(payload[7]),
        .Q(upper_tuning[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \upper_tuning_reg[3] 
       (.C(clk),
        .CE(ASR_tuning_set),
        .D(payload[8]),
        .Q(upper_tuning[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \upper_tuning_reg[4] 
       (.C(clk),
        .CE(ASR_tuning_set),
        .D(payload[9]),
        .Q(upper_tuning[4]),
        .R(1'b0));
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
