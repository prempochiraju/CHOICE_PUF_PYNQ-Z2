-- (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:PUF_controller:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_PUF_controller_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    payload : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    read_valid : IN STD_LOGIC;
    write_ready : IN STD_LOGIC;
    read_ready : OUT STD_LOGIC;
    write_valid : OUT STD_LOGIC;
    ff_reset : OUT STD_LOGIC;
    ASR_enable : OUT STD_LOGIC;
    ASR_tuning : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
    ASR_choice : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END design_1_PUF_controller_0_0;

ARCHITECTURE design_1_PUF_controller_0_0_arch OF design_1_PUF_controller_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_PUF_controller_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT PUF_controller IS
    PORT (
      clk : IN STD_LOGIC;
      payload : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      read_valid : IN STD_LOGIC;
      write_ready : IN STD_LOGIC;
      read_ready : OUT STD_LOGIC;
      write_valid : OUT STD_LOGIC;
      ff_reset : OUT STD_LOGIC;
      ASR_enable : OUT STD_LOGIC;
      ASR_tuning : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
      ASR_choice : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT PUF_controller;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_PUF_controller_0_0_arch: ARCHITECTURE IS "PUF_controller,Vivado 2020.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_PUF_controller_0_0_arch : ARCHITECTURE IS "design_1_PUF_controller_0_0,PUF_controller,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_PUF_controller_0_0_arch: ARCHITECTURE IS "design_1_PUF_controller_0_0,PUF_controller,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=PUF_controller,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_PUF_controller_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF ff_reset: SIGNAL IS "XIL_INTERFACENAME ff_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ff_reset: SIGNAL IS "xilinx.com:signal:reset:1.0 ff_reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : PUF_controller
    PORT MAP (
      clk => clk,
      payload => payload,
      read_valid => read_valid,
      write_ready => write_ready,
      read_ready => read_ready,
      write_valid => write_valid,
      ff_reset => ff_reset,
      ASR_enable => ASR_enable,
      ASR_tuning => ASR_tuning,
      ASR_choice => ASR_choice
    );
END design_1_PUF_controller_0_0_arch;
