-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat May  3 21:33:49 2025
-- Host        : FT-6K64K74 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_write_adapter_0_0_sim_netlist.vhdl
-- Design      : design_1_write_adapter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_adapter_S00_AXI is
  port (
    data_in_ready : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    data_in_valid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_adapter_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_adapter_S00_AXI is
  signal L : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^data_in_ready\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal r_reg_ready0 : STD_LOGIC;
  signal r_reg_ready_i_1_n_0 : STD_LOGIC;
  signal reg_data0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  data_in_ready <= \^data_in_ready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => L(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => L(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => L(2),
      S => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => L(3),
      S => p_0_in
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => \^s00_axi_wready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(0),
      I1 => reg_data0(0),
      I2 => reg_data3(0),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(10),
      I1 => reg_data0(10),
      I2 => reg_data3(10),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(11),
      I1 => reg_data0(11),
      I2 => reg_data3(11),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(12),
      I1 => reg_data0(12),
      I2 => reg_data3(12),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(13),
      I1 => reg_data0(13),
      I2 => reg_data3(13),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(14),
      I1 => reg_data0(14),
      I2 => reg_data3(14),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(15),
      I1 => reg_data0(15),
      I2 => reg_data3(15),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(16),
      I1 => reg_data0(16),
      I2 => reg_data3(16),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(17),
      I1 => reg_data0(17),
      I2 => reg_data3(17),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(18),
      I1 => reg_data0(18),
      I2 => reg_data3(18),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(19),
      I1 => reg_data0(19),
      I2 => reg_data3(19),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(1),
      I1 => reg_data0(1),
      I2 => reg_data3(1),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(20),
      I1 => reg_data0(20),
      I2 => reg_data3(20),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(21),
      I1 => reg_data0(21),
      I2 => reg_data3(21),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(22),
      I1 => reg_data0(22),
      I2 => reg_data3(22),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(23),
      I1 => reg_data0(23),
      I2 => reg_data3(23),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(24),
      I1 => reg_data0(24),
      I2 => reg_data3(24),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(25),
      I1 => reg_data0(25),
      I2 => reg_data3(25),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(26),
      I1 => reg_data0(26),
      I2 => reg_data3(26),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(27),
      I1 => reg_data0(27),
      I2 => reg_data3(27),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(28),
      I1 => reg_data0(28),
      I2 => reg_data3(28),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(29),
      I1 => reg_data0(29),
      I2 => reg_data3(29),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(2),
      I1 => reg_data0(2),
      I2 => reg_data3(2),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(30),
      I1 => reg_data0(30),
      I2 => reg_data3(30),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^axi_rvalid_reg_0\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(31),
      I1 => reg_data0(31),
      I2 => reg_data3(31),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(3),
      I1 => reg_data0(3),
      I2 => reg_data3(3),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(4),
      I1 => reg_data0(4),
      I2 => reg_data3(4),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(5),
      I1 => reg_data0(5),
      I2 => reg_data3(5),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(6),
      I1 => reg_data0(6),
      I2 => reg_data3(6),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(7),
      I1 => reg_data0(7),
      I2 => reg_data3(7),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(8),
      I1 => reg_data0(8),
      I2 => reg_data3(8),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => reg_data1(9),
      I1 => reg_data0(9),
      I2 => reg_data3(9),
      I3 => L(3),
      I4 => L(2),
      I5 => reg_data2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => p_0_in
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => p_0_in
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => p_0_in
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => p_0_in
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => p_0_in
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => p_0_in
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => p_0_in
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => p_0_in
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => p_0_in
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => p_0_in
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => p_0_in
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => p_0_in
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => p_0_in
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => p_0_in
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^axi_rvalid_reg_0\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => p_0_in
    );
r_reg_ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22227222"
    )
        port map (
      I0 => \^data_in_ready\,
      I1 => data_in_valid,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^axi_rvalid_reg_0\,
      O => r_reg_ready_i_1_n_0
    );
r_reg_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_reg_ready_i_1_n_0,
      Q => \^data_in_ready\,
      R => '0'
    );
\reg_data0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(0),
      Q => reg_data0(0),
      R => '0'
    );
\reg_data0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(10),
      Q => reg_data0(10),
      R => '0'
    );
\reg_data0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(11),
      Q => reg_data0(11),
      R => '0'
    );
\reg_data0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(12),
      Q => reg_data0(12),
      R => '0'
    );
\reg_data0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(13),
      Q => reg_data0(13),
      R => '0'
    );
\reg_data0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(14),
      Q => reg_data0(14),
      R => '0'
    );
\reg_data0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(15),
      Q => reg_data0(15),
      R => '0'
    );
\reg_data0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(16),
      Q => reg_data0(16),
      R => '0'
    );
\reg_data0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(17),
      Q => reg_data0(17),
      R => '0'
    );
\reg_data0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(18),
      Q => reg_data0(18),
      R => '0'
    );
\reg_data0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(19),
      Q => reg_data0(19),
      R => '0'
    );
\reg_data0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(1),
      Q => reg_data0(1),
      R => '0'
    );
\reg_data0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(20),
      Q => reg_data0(20),
      R => '0'
    );
\reg_data0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(21),
      Q => reg_data0(21),
      R => '0'
    );
\reg_data0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(22),
      Q => reg_data0(22),
      R => '0'
    );
\reg_data0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(23),
      Q => reg_data0(23),
      R => '0'
    );
\reg_data0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(24),
      Q => reg_data0(24),
      R => '0'
    );
\reg_data0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(25),
      Q => reg_data0(25),
      R => '0'
    );
\reg_data0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(26),
      Q => reg_data0(26),
      R => '0'
    );
\reg_data0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(27),
      Q => reg_data0(27),
      R => '0'
    );
\reg_data0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(28),
      Q => reg_data0(28),
      R => '0'
    );
\reg_data0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(29),
      Q => reg_data0(29),
      R => '0'
    );
\reg_data0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(2),
      Q => reg_data0(2),
      R => '0'
    );
\reg_data0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(30),
      Q => reg_data0(30),
      R => '0'
    );
\reg_data0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(31),
      Q => reg_data0(31),
      R => '0'
    );
\reg_data0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(3),
      Q => reg_data0(3),
      R => '0'
    );
\reg_data0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(4),
      Q => reg_data0(4),
      R => '0'
    );
\reg_data0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(5),
      Q => reg_data0(5),
      R => '0'
    );
\reg_data0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(6),
      Q => reg_data0(6),
      R => '0'
    );
\reg_data0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(7),
      Q => reg_data0(7),
      R => '0'
    );
\reg_data0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(8),
      Q => reg_data0(8),
      R => '0'
    );
\reg_data0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(9),
      Q => reg_data0(9),
      R => '0'
    );
\reg_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(32),
      Q => reg_data1(0),
      R => '0'
    );
\reg_data1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(42),
      Q => reg_data1(10),
      R => '0'
    );
\reg_data1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(43),
      Q => reg_data1(11),
      R => '0'
    );
\reg_data1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(44),
      Q => reg_data1(12),
      R => '0'
    );
\reg_data1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(45),
      Q => reg_data1(13),
      R => '0'
    );
\reg_data1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(46),
      Q => reg_data1(14),
      R => '0'
    );
\reg_data1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(47),
      Q => reg_data1(15),
      R => '0'
    );
\reg_data1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(48),
      Q => reg_data1(16),
      R => '0'
    );
\reg_data1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(49),
      Q => reg_data1(17),
      R => '0'
    );
\reg_data1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(50),
      Q => reg_data1(18),
      R => '0'
    );
\reg_data1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(51),
      Q => reg_data1(19),
      R => '0'
    );
\reg_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(33),
      Q => reg_data1(1),
      R => '0'
    );
\reg_data1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(52),
      Q => reg_data1(20),
      R => '0'
    );
\reg_data1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(53),
      Q => reg_data1(21),
      R => '0'
    );
\reg_data1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(54),
      Q => reg_data1(22),
      R => '0'
    );
\reg_data1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(55),
      Q => reg_data1(23),
      R => '0'
    );
\reg_data1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(56),
      Q => reg_data1(24),
      R => '0'
    );
\reg_data1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(57),
      Q => reg_data1(25),
      R => '0'
    );
\reg_data1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(58),
      Q => reg_data1(26),
      R => '0'
    );
\reg_data1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(59),
      Q => reg_data1(27),
      R => '0'
    );
\reg_data1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(60),
      Q => reg_data1(28),
      R => '0'
    );
\reg_data1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(61),
      Q => reg_data1(29),
      R => '0'
    );
\reg_data1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(34),
      Q => reg_data1(2),
      R => '0'
    );
\reg_data1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(62),
      Q => reg_data1(30),
      R => '0'
    );
\reg_data1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(63),
      Q => reg_data1(31),
      R => '0'
    );
\reg_data1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(35),
      Q => reg_data1(3),
      R => '0'
    );
\reg_data1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(36),
      Q => reg_data1(4),
      R => '0'
    );
\reg_data1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(37),
      Q => reg_data1(5),
      R => '0'
    );
\reg_data1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(38),
      Q => reg_data1(6),
      R => '0'
    );
\reg_data1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(39),
      Q => reg_data1(7),
      R => '0'
    );
\reg_data1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(40),
      Q => reg_data1(8),
      R => '0'
    );
\reg_data1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(41),
      Q => reg_data1(9),
      R => '0'
    );
\reg_data2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(64),
      Q => reg_data2(0),
      R => '0'
    );
\reg_data2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(74),
      Q => reg_data2(10),
      R => '0'
    );
\reg_data2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(75),
      Q => reg_data2(11),
      R => '0'
    );
\reg_data2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(76),
      Q => reg_data2(12),
      R => '0'
    );
\reg_data2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(77),
      Q => reg_data2(13),
      R => '0'
    );
\reg_data2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(78),
      Q => reg_data2(14),
      R => '0'
    );
\reg_data2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(79),
      Q => reg_data2(15),
      R => '0'
    );
\reg_data2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(80),
      Q => reg_data2(16),
      R => '0'
    );
\reg_data2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(81),
      Q => reg_data2(17),
      R => '0'
    );
\reg_data2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(82),
      Q => reg_data2(18),
      R => '0'
    );
\reg_data2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(83),
      Q => reg_data2(19),
      R => '0'
    );
\reg_data2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(65),
      Q => reg_data2(1),
      R => '0'
    );
\reg_data2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(84),
      Q => reg_data2(20),
      R => '0'
    );
\reg_data2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(85),
      Q => reg_data2(21),
      R => '0'
    );
\reg_data2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(86),
      Q => reg_data2(22),
      R => '0'
    );
\reg_data2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(87),
      Q => reg_data2(23),
      R => '0'
    );
\reg_data2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(88),
      Q => reg_data2(24),
      R => '0'
    );
\reg_data2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(89),
      Q => reg_data2(25),
      R => '0'
    );
\reg_data2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(90),
      Q => reg_data2(26),
      R => '0'
    );
\reg_data2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(91),
      Q => reg_data2(27),
      R => '0'
    );
\reg_data2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(92),
      Q => reg_data2(28),
      R => '0'
    );
\reg_data2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(93),
      Q => reg_data2(29),
      R => '0'
    );
\reg_data2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(66),
      Q => reg_data2(2),
      R => '0'
    );
\reg_data2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(94),
      Q => reg_data2(30),
      R => '0'
    );
\reg_data2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(95),
      Q => reg_data2(31),
      R => '0'
    );
\reg_data2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(67),
      Q => reg_data2(3),
      R => '0'
    );
\reg_data2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(68),
      Q => reg_data2(4),
      R => '0'
    );
\reg_data2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(69),
      Q => reg_data2(5),
      R => '0'
    );
\reg_data2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(70),
      Q => reg_data2(6),
      R => '0'
    );
\reg_data2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(71),
      Q => reg_data2(7),
      R => '0'
    );
\reg_data2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(72),
      Q => reg_data2(8),
      R => '0'
    );
\reg_data2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(73),
      Q => reg_data2(9),
      R => '0'
    );
\reg_data3[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_in_ready\,
      I1 => data_in_valid,
      O => r_reg_ready0
    );
\reg_data3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(96),
      Q => reg_data3(0),
      R => '0'
    );
\reg_data3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(106),
      Q => reg_data3(10),
      R => '0'
    );
\reg_data3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(107),
      Q => reg_data3(11),
      R => '0'
    );
\reg_data3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(108),
      Q => reg_data3(12),
      R => '0'
    );
\reg_data3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(109),
      Q => reg_data3(13),
      R => '0'
    );
\reg_data3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(110),
      Q => reg_data3(14),
      R => '0'
    );
\reg_data3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(111),
      Q => reg_data3(15),
      R => '0'
    );
\reg_data3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(112),
      Q => reg_data3(16),
      R => '0'
    );
\reg_data3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(113),
      Q => reg_data3(17),
      R => '0'
    );
\reg_data3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(114),
      Q => reg_data3(18),
      R => '0'
    );
\reg_data3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(115),
      Q => reg_data3(19),
      R => '0'
    );
\reg_data3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(97),
      Q => reg_data3(1),
      R => '0'
    );
\reg_data3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(116),
      Q => reg_data3(20),
      R => '0'
    );
\reg_data3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(117),
      Q => reg_data3(21),
      R => '0'
    );
\reg_data3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(118),
      Q => reg_data3(22),
      R => '0'
    );
\reg_data3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(119),
      Q => reg_data3(23),
      R => '0'
    );
\reg_data3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(120),
      Q => reg_data3(24),
      R => '0'
    );
\reg_data3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(121),
      Q => reg_data3(25),
      R => '0'
    );
\reg_data3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(122),
      Q => reg_data3(26),
      R => '0'
    );
\reg_data3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(123),
      Q => reg_data3(27),
      R => '0'
    );
\reg_data3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(124),
      Q => reg_data3(28),
      R => '0'
    );
\reg_data3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(125),
      Q => reg_data3(29),
      R => '0'
    );
\reg_data3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(98),
      Q => reg_data3(2),
      R => '0'
    );
\reg_data3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(126),
      Q => reg_data3(30),
      R => '0'
    );
\reg_data3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(127),
      Q => reg_data3(31),
      R => '0'
    );
\reg_data3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(99),
      Q => reg_data3(3),
      R => '0'
    );
\reg_data3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(100),
      Q => reg_data3(4),
      R => '0'
    );
\reg_data3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(101),
      Q => reg_data3(5),
      R => '0'
    );
\reg_data3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(102),
      Q => reg_data3(6),
      R => '0'
    );
\reg_data3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(103),
      Q => reg_data3(7),
      R => '0'
    );
\reg_data3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(104),
      Q => reg_data3(8),
      R => '0'
    );
\reg_data3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => r_reg_ready0,
      D => data_in(105),
      Q => reg_data3(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_adapter is
  port (
    data_in_ready : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    data_in_valid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_adapter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_adapter is
begin
write_adapter_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_adapter_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      data_in(127 downto 0) => data_in(127 downto 0),
      data_in_ready => data_in_ready,
      data_in_valid => data_in_valid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_in_ready : out STD_LOGIC;
    to_dma_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    to_dma_valid : out STD_LOGIC;
    to_dma_tlast : out STD_LOGIC;
    to_dma_ready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_write_adapter_0_0,write_adapter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "write_adapter,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^data_in\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \^data_in_valid\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of data_in_ready : signal is "xilinx.com:interface:axis:1.0 data_in TREADY";
  attribute x_interface_info of data_in_valid : signal is "xilinx.com:interface:axis:1.0 data_in TVALID";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF data_in:S00_AXI_write_adapter:to_dma, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter WVALID";
  attribute x_interface_info of to_dma_ready : signal is "xilinx.com:interface:axis:1.0 to_dma TREADY";
  attribute x_interface_info of to_dma_tlast : signal is "xilinx.com:interface:axis:1.0 to_dma TLAST";
  attribute x_interface_info of to_dma_valid : signal is "xilinx.com:interface:axis:1.0 to_dma TVALID";
  attribute x_interface_info of data_in : signal is "xilinx.com:interface:axis:1.0 data_in TDATA";
  attribute x_interface_parameter of data_in : signal is "XIL_INTERFACENAME data_in, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI_write_adapter, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI_write_adapter WSTRB";
  attribute x_interface_info of to_dma_data : signal is "xilinx.com:interface:axis:1.0 to_dma TDATA";
  attribute x_interface_parameter of to_dma_data : signal is "XIL_INTERFACENAME to_dma, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  \^data_in\(127 downto 0) <= data_in(127 downto 0);
  \^data_in_valid\ <= data_in_valid;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  to_dma_data(127 downto 0) <= \^data_in\(127 downto 0);
  to_dma_tlast <= \<const1>\;
  to_dma_valid <= \^data_in_valid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_adapter
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      axi_rvalid_reg => s00_axi_rvalid,
      data_in(127 downto 0) => \^data_in\(127 downto 0),
      data_in_ready => data_in_ready,
      data_in_valid => \^data_in_valid\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
