// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat May  3 21:33:50 2025
// Host        : FT-6K64K74 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_CHOICE_PUF_gen_0_0_stub.v
// Design      : design_1_CHOICE_PUF_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "CHOICE_PUF_gen,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, ff_reset, chip_enable, ASR_length_conf, 
  ASR_data_conf, puf_response)
/* synthesis syn_black_box black_box_pad_pin="clk,ff_reset,chip_enable,ASR_length_conf[19:0],ASR_data_conf[3:0],puf_response[127:0]" */;
  input clk;
  input ff_reset;
  input chip_enable;
  input [19:0]ASR_length_conf;
  input [3:0]ASR_data_conf;
  output [127:0]puf_response;
endmodule
