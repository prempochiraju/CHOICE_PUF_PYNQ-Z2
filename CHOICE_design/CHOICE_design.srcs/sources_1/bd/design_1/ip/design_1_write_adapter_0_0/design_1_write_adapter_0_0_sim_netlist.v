// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat May  3 21:33:50 2025
// Host        : FT-6K64K74 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ppochiraju2024/Desktop/CHOICE-PUF/CHOICE_design/CHOICE_design.srcs/sources_1/bd/design_1/ip/design_1_write_adapter_0_0/design_1_write_adapter_0_0_sim_netlist.v
// Design      : design_1_write_adapter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_write_adapter_0_0,write_adapter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "write_adapter,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_write_adapter_0_0
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    data_in,
    data_in_valid,
    data_in_ready,
    to_dma_data,
    to_dma_valid,
    to_dma_tlast,
    to_dma_ready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_write_adapter, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 data_in TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME data_in, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]data_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 data_in TVALID" *) input data_in_valid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 data_in TREADY" *) output data_in_ready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 to_dma TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME to_dma, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]to_dma_data;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 to_dma TVALID" *) output to_dma_valid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 to_dma TLAST" *) output to_dma_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 to_dma TREADY" *) input to_dma_ready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF data_in:S00_AXI_write_adapter:to_dma, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire [127:0]data_in;
  wire data_in_ready;
  wire data_in_valid;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire s00_axi_wready;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign to_dma_data[127:0] = data_in;
  assign to_dma_tlast = \<const1> ;
  assign to_dma_valid = data_in_valid;
  GND GND
       (.G(\<const0> ));
  design_1_write_adapter_0_0_write_adapter U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .data_in(data_in),
        .data_in_ready(data_in_ready),
        .data_in_valid(data_in_valid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wvalid(s00_axi_wvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "write_adapter" *) 
module design_1_write_adapter_0_0_write_adapter
   (data_in_ready,
    S_AXI_ARREADY,
    axi_rvalid_reg,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_rdata,
    s00_axi_bvalid,
    data_in_valid,
    s00_axi_arvalid,
    s00_axi_aclk,
    s00_axi_araddr,
    data_in,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output data_in_ready;
  output S_AXI_ARREADY;
  output axi_rvalid_reg;
  output s00_axi_awready;
  output s00_axi_wready;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  input data_in_valid;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input [127:0]data_in;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire axi_rvalid_reg;
  wire [127:0]data_in;
  wire data_in_ready;
  wire data_in_valid;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_wready;
  wire s00_axi_wvalid;

  design_1_write_adapter_0_0_write_adapter_S00_AXI write_adapter_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .data_in(data_in),
        .data_in_ready(data_in_ready),
        .data_in_valid(data_in_valid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "write_adapter_S00_AXI" *) 
module design_1_write_adapter_0_0_write_adapter_S00_AXI
   (data_in_ready,
    S_AXI_ARREADY,
    axi_rvalid_reg_0,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_rdata,
    s00_axi_bvalid,
    data_in_valid,
    s00_axi_arvalid,
    s00_axi_aclk,
    s00_axi_araddr,
    data_in,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output data_in_ready;
  output S_AXI_ARREADY;
  output axi_rvalid_reg_0;
  output s00_axi_awready;
  output s00_axi_wready;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  input data_in_valid;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input [127:0]data_in;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [3:2]L;
  wire S_AXI_ARREADY;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire [127:0]data_in;
  wire data_in_ready;
  wire data_in_valid;
  wire p_0_in;
  wire r_reg_ready0;
  wire r_reg_ready_i_1_n_0;
  wire [31:0]reg_data0;
  wire [31:0]reg_data1;
  wire [31:0]reg_data2;
  wire [31:0]reg_data3;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire slv_reg_rden;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(L[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(L[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(L[2]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(L[3]),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awready),
        .I1(s00_axi_wready),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(reg_data1[0]),
        .I1(reg_data0[0]),
        .I2(reg_data3[0]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(reg_data1[10]),
        .I1(reg_data0[10]),
        .I2(reg_data3[10]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(reg_data1[11]),
        .I1(reg_data0[11]),
        .I2(reg_data3[11]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(reg_data1[12]),
        .I1(reg_data0[12]),
        .I2(reg_data3[12]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(reg_data1[13]),
        .I1(reg_data0[13]),
        .I2(reg_data3[13]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(reg_data1[14]),
        .I1(reg_data0[14]),
        .I2(reg_data3[14]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(reg_data1[15]),
        .I1(reg_data0[15]),
        .I2(reg_data3[15]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(reg_data1[16]),
        .I1(reg_data0[16]),
        .I2(reg_data3[16]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(reg_data1[17]),
        .I1(reg_data0[17]),
        .I2(reg_data3[17]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(reg_data1[18]),
        .I1(reg_data0[18]),
        .I2(reg_data3[18]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(reg_data1[19]),
        .I1(reg_data0[19]),
        .I2(reg_data3[19]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(reg_data1[1]),
        .I1(reg_data0[1]),
        .I2(reg_data3[1]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(reg_data1[20]),
        .I1(reg_data0[20]),
        .I2(reg_data3[20]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(reg_data1[21]),
        .I1(reg_data0[21]),
        .I2(reg_data3[21]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(reg_data1[22]),
        .I1(reg_data0[22]),
        .I2(reg_data3[22]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(reg_data1[23]),
        .I1(reg_data0[23]),
        .I2(reg_data3[23]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(reg_data1[24]),
        .I1(reg_data0[24]),
        .I2(reg_data3[24]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(reg_data1[25]),
        .I1(reg_data0[25]),
        .I2(reg_data3[25]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(reg_data1[26]),
        .I1(reg_data0[26]),
        .I2(reg_data3[26]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(reg_data1[27]),
        .I1(reg_data0[27]),
        .I2(reg_data3[27]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(reg_data1[28]),
        .I1(reg_data0[28]),
        .I2(reg_data3[28]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(reg_data1[29]),
        .I1(reg_data0[29]),
        .I2(reg_data3[29]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(reg_data1[2]),
        .I1(reg_data0[2]),
        .I2(reg_data3[2]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(reg_data1[30]),
        .I1(reg_data0[30]),
        .I2(reg_data3[30]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(axi_rvalid_reg_0),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_2 
       (.I0(reg_data1[31]),
        .I1(reg_data0[31]),
        .I2(reg_data3[31]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(reg_data1[3]),
        .I1(reg_data0[3]),
        .I2(reg_data3[3]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(reg_data1[4]),
        .I1(reg_data0[4]),
        .I2(reg_data3[4]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(reg_data1[5]),
        .I1(reg_data0[5]),
        .I2(reg_data3[5]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(reg_data1[6]),
        .I1(reg_data0[6]),
        .I2(reg_data3[6]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(reg_data1[7]),
        .I1(reg_data0[7]),
        .I2(reg_data3[7]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(reg_data1[8]),
        .I1(reg_data0[8]),
        .I2(reg_data3[8]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(reg_data1[9]),
        .I1(reg_data0[9]),
        .I2(reg_data3[9]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(reg_data2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(axi_rvalid_reg_0),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h22227222)) 
    r_reg_ready_i_1
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .I2(S_AXI_ARREADY),
        .I3(s00_axi_arvalid),
        .I4(axi_rvalid_reg_0),
        .O(r_reg_ready_i_1_n_0));
  FDRE r_reg_ready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_reg_ready_i_1_n_0),
        .Q(data_in_ready),
        .R(1'b0));
  FDRE \reg_data0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[0]),
        .Q(reg_data0[0]),
        .R(1'b0));
  FDRE \reg_data0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[10]),
        .Q(reg_data0[10]),
        .R(1'b0));
  FDRE \reg_data0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[11]),
        .Q(reg_data0[11]),
        .R(1'b0));
  FDRE \reg_data0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[12]),
        .Q(reg_data0[12]),
        .R(1'b0));
  FDRE \reg_data0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[13]),
        .Q(reg_data0[13]),
        .R(1'b0));
  FDRE \reg_data0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[14]),
        .Q(reg_data0[14]),
        .R(1'b0));
  FDRE \reg_data0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[15]),
        .Q(reg_data0[15]),
        .R(1'b0));
  FDRE \reg_data0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[16]),
        .Q(reg_data0[16]),
        .R(1'b0));
  FDRE \reg_data0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[17]),
        .Q(reg_data0[17]),
        .R(1'b0));
  FDRE \reg_data0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[18]),
        .Q(reg_data0[18]),
        .R(1'b0));
  FDRE \reg_data0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[19]),
        .Q(reg_data0[19]),
        .R(1'b0));
  FDRE \reg_data0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[1]),
        .Q(reg_data0[1]),
        .R(1'b0));
  FDRE \reg_data0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[20]),
        .Q(reg_data0[20]),
        .R(1'b0));
  FDRE \reg_data0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[21]),
        .Q(reg_data0[21]),
        .R(1'b0));
  FDRE \reg_data0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[22]),
        .Q(reg_data0[22]),
        .R(1'b0));
  FDRE \reg_data0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[23]),
        .Q(reg_data0[23]),
        .R(1'b0));
  FDRE \reg_data0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[24]),
        .Q(reg_data0[24]),
        .R(1'b0));
  FDRE \reg_data0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[25]),
        .Q(reg_data0[25]),
        .R(1'b0));
  FDRE \reg_data0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[26]),
        .Q(reg_data0[26]),
        .R(1'b0));
  FDRE \reg_data0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[27]),
        .Q(reg_data0[27]),
        .R(1'b0));
  FDRE \reg_data0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[28]),
        .Q(reg_data0[28]),
        .R(1'b0));
  FDRE \reg_data0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[29]),
        .Q(reg_data0[29]),
        .R(1'b0));
  FDRE \reg_data0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[2]),
        .Q(reg_data0[2]),
        .R(1'b0));
  FDRE \reg_data0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[30]),
        .Q(reg_data0[30]),
        .R(1'b0));
  FDRE \reg_data0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[31]),
        .Q(reg_data0[31]),
        .R(1'b0));
  FDRE \reg_data0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[3]),
        .Q(reg_data0[3]),
        .R(1'b0));
  FDRE \reg_data0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[4]),
        .Q(reg_data0[4]),
        .R(1'b0));
  FDRE \reg_data0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[5]),
        .Q(reg_data0[5]),
        .R(1'b0));
  FDRE \reg_data0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[6]),
        .Q(reg_data0[6]),
        .R(1'b0));
  FDRE \reg_data0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[7]),
        .Q(reg_data0[7]),
        .R(1'b0));
  FDRE \reg_data0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[8]),
        .Q(reg_data0[8]),
        .R(1'b0));
  FDRE \reg_data0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[9]),
        .Q(reg_data0[9]),
        .R(1'b0));
  FDRE \reg_data1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[32]),
        .Q(reg_data1[0]),
        .R(1'b0));
  FDRE \reg_data1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[42]),
        .Q(reg_data1[10]),
        .R(1'b0));
  FDRE \reg_data1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[43]),
        .Q(reg_data1[11]),
        .R(1'b0));
  FDRE \reg_data1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[44]),
        .Q(reg_data1[12]),
        .R(1'b0));
  FDRE \reg_data1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[45]),
        .Q(reg_data1[13]),
        .R(1'b0));
  FDRE \reg_data1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[46]),
        .Q(reg_data1[14]),
        .R(1'b0));
  FDRE \reg_data1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[47]),
        .Q(reg_data1[15]),
        .R(1'b0));
  FDRE \reg_data1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[48]),
        .Q(reg_data1[16]),
        .R(1'b0));
  FDRE \reg_data1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[49]),
        .Q(reg_data1[17]),
        .R(1'b0));
  FDRE \reg_data1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[50]),
        .Q(reg_data1[18]),
        .R(1'b0));
  FDRE \reg_data1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[51]),
        .Q(reg_data1[19]),
        .R(1'b0));
  FDRE \reg_data1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[33]),
        .Q(reg_data1[1]),
        .R(1'b0));
  FDRE \reg_data1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[52]),
        .Q(reg_data1[20]),
        .R(1'b0));
  FDRE \reg_data1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[53]),
        .Q(reg_data1[21]),
        .R(1'b0));
  FDRE \reg_data1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[54]),
        .Q(reg_data1[22]),
        .R(1'b0));
  FDRE \reg_data1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[55]),
        .Q(reg_data1[23]),
        .R(1'b0));
  FDRE \reg_data1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[56]),
        .Q(reg_data1[24]),
        .R(1'b0));
  FDRE \reg_data1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[57]),
        .Q(reg_data1[25]),
        .R(1'b0));
  FDRE \reg_data1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[58]),
        .Q(reg_data1[26]),
        .R(1'b0));
  FDRE \reg_data1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[59]),
        .Q(reg_data1[27]),
        .R(1'b0));
  FDRE \reg_data1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[60]),
        .Q(reg_data1[28]),
        .R(1'b0));
  FDRE \reg_data1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[61]),
        .Q(reg_data1[29]),
        .R(1'b0));
  FDRE \reg_data1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[34]),
        .Q(reg_data1[2]),
        .R(1'b0));
  FDRE \reg_data1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[62]),
        .Q(reg_data1[30]),
        .R(1'b0));
  FDRE \reg_data1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[63]),
        .Q(reg_data1[31]),
        .R(1'b0));
  FDRE \reg_data1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[35]),
        .Q(reg_data1[3]),
        .R(1'b0));
  FDRE \reg_data1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[36]),
        .Q(reg_data1[4]),
        .R(1'b0));
  FDRE \reg_data1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[37]),
        .Q(reg_data1[5]),
        .R(1'b0));
  FDRE \reg_data1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[38]),
        .Q(reg_data1[6]),
        .R(1'b0));
  FDRE \reg_data1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[39]),
        .Q(reg_data1[7]),
        .R(1'b0));
  FDRE \reg_data1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[40]),
        .Q(reg_data1[8]),
        .R(1'b0));
  FDRE \reg_data1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[41]),
        .Q(reg_data1[9]),
        .R(1'b0));
  FDRE \reg_data2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[64]),
        .Q(reg_data2[0]),
        .R(1'b0));
  FDRE \reg_data2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[74]),
        .Q(reg_data2[10]),
        .R(1'b0));
  FDRE \reg_data2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[75]),
        .Q(reg_data2[11]),
        .R(1'b0));
  FDRE \reg_data2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[76]),
        .Q(reg_data2[12]),
        .R(1'b0));
  FDRE \reg_data2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[77]),
        .Q(reg_data2[13]),
        .R(1'b0));
  FDRE \reg_data2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[78]),
        .Q(reg_data2[14]),
        .R(1'b0));
  FDRE \reg_data2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[79]),
        .Q(reg_data2[15]),
        .R(1'b0));
  FDRE \reg_data2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[80]),
        .Q(reg_data2[16]),
        .R(1'b0));
  FDRE \reg_data2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[81]),
        .Q(reg_data2[17]),
        .R(1'b0));
  FDRE \reg_data2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[82]),
        .Q(reg_data2[18]),
        .R(1'b0));
  FDRE \reg_data2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[83]),
        .Q(reg_data2[19]),
        .R(1'b0));
  FDRE \reg_data2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[65]),
        .Q(reg_data2[1]),
        .R(1'b0));
  FDRE \reg_data2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[84]),
        .Q(reg_data2[20]),
        .R(1'b0));
  FDRE \reg_data2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[85]),
        .Q(reg_data2[21]),
        .R(1'b0));
  FDRE \reg_data2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[86]),
        .Q(reg_data2[22]),
        .R(1'b0));
  FDRE \reg_data2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[87]),
        .Q(reg_data2[23]),
        .R(1'b0));
  FDRE \reg_data2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[88]),
        .Q(reg_data2[24]),
        .R(1'b0));
  FDRE \reg_data2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[89]),
        .Q(reg_data2[25]),
        .R(1'b0));
  FDRE \reg_data2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[90]),
        .Q(reg_data2[26]),
        .R(1'b0));
  FDRE \reg_data2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[91]),
        .Q(reg_data2[27]),
        .R(1'b0));
  FDRE \reg_data2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[92]),
        .Q(reg_data2[28]),
        .R(1'b0));
  FDRE \reg_data2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[93]),
        .Q(reg_data2[29]),
        .R(1'b0));
  FDRE \reg_data2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[66]),
        .Q(reg_data2[2]),
        .R(1'b0));
  FDRE \reg_data2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[94]),
        .Q(reg_data2[30]),
        .R(1'b0));
  FDRE \reg_data2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[95]),
        .Q(reg_data2[31]),
        .R(1'b0));
  FDRE \reg_data2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[67]),
        .Q(reg_data2[3]),
        .R(1'b0));
  FDRE \reg_data2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[68]),
        .Q(reg_data2[4]),
        .R(1'b0));
  FDRE \reg_data2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[69]),
        .Q(reg_data2[5]),
        .R(1'b0));
  FDRE \reg_data2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[70]),
        .Q(reg_data2[6]),
        .R(1'b0));
  FDRE \reg_data2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[71]),
        .Q(reg_data2[7]),
        .R(1'b0));
  FDRE \reg_data2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[72]),
        .Q(reg_data2[8]),
        .R(1'b0));
  FDRE \reg_data2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[73]),
        .Q(reg_data2[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_data3[31]_i_1 
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .O(r_reg_ready0));
  FDRE \reg_data3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[96]),
        .Q(reg_data3[0]),
        .R(1'b0));
  FDRE \reg_data3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[106]),
        .Q(reg_data3[10]),
        .R(1'b0));
  FDRE \reg_data3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[107]),
        .Q(reg_data3[11]),
        .R(1'b0));
  FDRE \reg_data3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[108]),
        .Q(reg_data3[12]),
        .R(1'b0));
  FDRE \reg_data3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[109]),
        .Q(reg_data3[13]),
        .R(1'b0));
  FDRE \reg_data3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[110]),
        .Q(reg_data3[14]),
        .R(1'b0));
  FDRE \reg_data3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[111]),
        .Q(reg_data3[15]),
        .R(1'b0));
  FDRE \reg_data3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[112]),
        .Q(reg_data3[16]),
        .R(1'b0));
  FDRE \reg_data3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[113]),
        .Q(reg_data3[17]),
        .R(1'b0));
  FDRE \reg_data3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[114]),
        .Q(reg_data3[18]),
        .R(1'b0));
  FDRE \reg_data3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[115]),
        .Q(reg_data3[19]),
        .R(1'b0));
  FDRE \reg_data3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[97]),
        .Q(reg_data3[1]),
        .R(1'b0));
  FDRE \reg_data3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[116]),
        .Q(reg_data3[20]),
        .R(1'b0));
  FDRE \reg_data3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[117]),
        .Q(reg_data3[21]),
        .R(1'b0));
  FDRE \reg_data3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[118]),
        .Q(reg_data3[22]),
        .R(1'b0));
  FDRE \reg_data3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[119]),
        .Q(reg_data3[23]),
        .R(1'b0));
  FDRE \reg_data3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[120]),
        .Q(reg_data3[24]),
        .R(1'b0));
  FDRE \reg_data3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[121]),
        .Q(reg_data3[25]),
        .R(1'b0));
  FDRE \reg_data3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[122]),
        .Q(reg_data3[26]),
        .R(1'b0));
  FDRE \reg_data3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[123]),
        .Q(reg_data3[27]),
        .R(1'b0));
  FDRE \reg_data3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[124]),
        .Q(reg_data3[28]),
        .R(1'b0));
  FDRE \reg_data3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[125]),
        .Q(reg_data3[29]),
        .R(1'b0));
  FDRE \reg_data3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[98]),
        .Q(reg_data3[2]),
        .R(1'b0));
  FDRE \reg_data3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[126]),
        .Q(reg_data3[30]),
        .R(1'b0));
  FDRE \reg_data3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[127]),
        .Q(reg_data3[31]),
        .R(1'b0));
  FDRE \reg_data3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[99]),
        .Q(reg_data3[3]),
        .R(1'b0));
  FDRE \reg_data3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[100]),
        .Q(reg_data3[4]),
        .R(1'b0));
  FDRE \reg_data3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[101]),
        .Q(reg_data3[5]),
        .R(1'b0));
  FDRE \reg_data3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[102]),
        .Q(reg_data3[6]),
        .R(1'b0));
  FDRE \reg_data3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[103]),
        .Q(reg_data3[7]),
        .R(1'b0));
  FDRE \reg_data3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[104]),
        .Q(reg_data3[8]),
        .R(1'b0));
  FDRE \reg_data3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(r_reg_ready0),
        .D(data_in[105]),
        .Q(reg_data3[9]),
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
