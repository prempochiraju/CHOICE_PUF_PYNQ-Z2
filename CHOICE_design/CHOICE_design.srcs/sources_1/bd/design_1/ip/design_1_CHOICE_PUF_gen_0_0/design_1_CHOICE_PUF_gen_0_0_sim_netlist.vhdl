-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat May  3 21:33:51 2025
-- Host        : FT-6K64K74 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/ppochiraju2024/Desktop/CHOICE-PUF/CHOICE_design/CHOICE_design.srcs/sources_1/bd/design_1/ip/design_1_CHOICE_PUF_gen_0_0/design_1_CHOICE_PUF_gen_0_0_sim_netlist.vhdl
-- Design      : design_1_CHOICE_PUF_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[0].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[0].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[0].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[0].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_0 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_0 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_0;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_0 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[100].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[100].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[100].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[100].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_1 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_1 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_1;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_1 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[101].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[101].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[101].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[101].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_10 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_10 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_10;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_10 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[10].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[10].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[10].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[10].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_100 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_100 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_100;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_100 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[76].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[76].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[76].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[76].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_101 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_101 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_101;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_101 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[77].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[77].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[77].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[77].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_102 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_102 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_102;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_102 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[78].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[78].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[78].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[78].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_103 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_103 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_103;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_103 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[79].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[79].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[79].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[79].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_104 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_104 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_104;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_104 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[7].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[7].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[7].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[7].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_105 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_105 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_105;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_105 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[80].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[80].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[80].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[80].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_106 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_106 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_106;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_106 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[81].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[81].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[81].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[81].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_107 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_107 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_107;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_107 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[82].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[82].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[82].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[82].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_108 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_108 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_108;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_108 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[83].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[83].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[83].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[83].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_109 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_109 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_109;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_109 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[84].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[84].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[84].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[84].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_11 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_11 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_11;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_11 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[110].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[110].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[110].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[110].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_110 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_110 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_110;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_110 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[85].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[85].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[85].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[85].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_111 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_111 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_111;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_111 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[86].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[86].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[86].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[86].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_112 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_112 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_112;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_112 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[87].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[87].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[87].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[87].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_113 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_113 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_113;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_113 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[88].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[88].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[88].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[88].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_114 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_114 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_114;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_114 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[89].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[89].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[89].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[89].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_115 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_115 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_115;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_115 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[8].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[8].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[8].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[8].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_116 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_116 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_116;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_116 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[90].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[90].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[90].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[90].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_117 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_117 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_117;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_117 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[91].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[91].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[91].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[91].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_118 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_118 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_118;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_118 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[92].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[92].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[92].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[92].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_119 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_119 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_119;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_119 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[93].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[93].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[93].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[93].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_12 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_12 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_12;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_12 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[111].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[111].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[111].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[111].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_120 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_120 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_120;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_120 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[94].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[94].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[94].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[94].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_121 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_121 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_121;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_121 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[95].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[95].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[95].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[95].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_122 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_122 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_122;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_122 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[96].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[96].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[96].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[96].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_123 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_123 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_123;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_123 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[97].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[97].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[97].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[97].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_124 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_124 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_124;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_124 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[98].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[98].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[98].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[98].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_125 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_125 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_125;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_125 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[99].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[99].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[99].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[99].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_126 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_126 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_126;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_126 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[9].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[9].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[9].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[9].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_13 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_13 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_13;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_13 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[112].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[112].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[112].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[112].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_14 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_14 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_14;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_14 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[113].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[113].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[113].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[113].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_15 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_15 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_15;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_15 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[114].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[114].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[114].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[114].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_16 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_16 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_16;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_16 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[115].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[115].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[115].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[115].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_17 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_17 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_17;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_17 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[116].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[116].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[116].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[116].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_18 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_18 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_18;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_18 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[117].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[117].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[117].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[117].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_19 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_19 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_19;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_19 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[118].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[118].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[118].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[118].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_2 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_2 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_2;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_2 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[102].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[102].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[102].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[102].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_20 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_20 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_20;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_20 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[119].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[119].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[119].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[119].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_21 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_21 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_21;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_21 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[11].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[11].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[11].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[11].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_22 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_22 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_22;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_22 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[120].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[120].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[120].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[120].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_23 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_23 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_23;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_23 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[121].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[121].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[121].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[121].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_24 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_24 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_24;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_24 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[122].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[122].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[122].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[122].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_25 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_25 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_25;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_25 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[123].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[123].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[123].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[123].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_26 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_26 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_26;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_26 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[124].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[124].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[124].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[124].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_27 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_27 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_27;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_27 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[125].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[125].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[125].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[125].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_28 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_28 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_28;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_28 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[126].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[126].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[126].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[126].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_29 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_29 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_29;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_29 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[127].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[127].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[127].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[127].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_3 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_3 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_3;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_3 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[103].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[103].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[103].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[103].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_30 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_30 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_30;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_30 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[12].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[12].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[12].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[12].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_31 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_31 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_31;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_31 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[13].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[13].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[13].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[13].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_32 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_32 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_32;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_32 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[14].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[14].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[14].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[14].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_33 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_33 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_33;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_33 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[15].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[15].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[15].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[15].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_34 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_34 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_34;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_34 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[16].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[16].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[16].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[16].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_35 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_35 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_35;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_35 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[17].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[17].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[17].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[17].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_36 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_36 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_36;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_36 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[18].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[18].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[18].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[18].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_37 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_37 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_37;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_37 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[19].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[19].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[19].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[19].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_38 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_38 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_38;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_38 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[1].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[1].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[1].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[1].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_39 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_39 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_39;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_39 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[20].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[20].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[20].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[20].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_4 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_4 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_4;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_4 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[104].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[104].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[104].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[104].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_40 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_40 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_40;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_40 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[21].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[21].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[21].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[21].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_41 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_41 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_41;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_41 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[22].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[22].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[22].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[22].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_42 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_42 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_42;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_42 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[23].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[23].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[23].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[23].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_43 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_43 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_43;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_43 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[24].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[24].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[24].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[24].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_44 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_44 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_44;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_44 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[25].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[25].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[25].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[25].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_45 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_45 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_45;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_45 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[26].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[26].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[26].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[26].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_46 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_46 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_46;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_46 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[27].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[27].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[27].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[27].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_47 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_47 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_47;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_47 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[28].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[28].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[28].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[28].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_48 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_48 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_48;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_48 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[29].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[29].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[29].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[29].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_49 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_49 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_49;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_49 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[2].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[2].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[2].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[2].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_5 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_5 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_5;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_5 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[105].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[105].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[105].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[105].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_50 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_50 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_50;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_50 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[30].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[30].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[30].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[30].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_51 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_51 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_51;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_51 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[31].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[31].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[31].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[31].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_52 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_52 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_52;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_52 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[32].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[32].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[32].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[32].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_53 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_53 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_53;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_53 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[33].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[33].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[33].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[33].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_54 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_54 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_54;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_54 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[34].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[34].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[34].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[34].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_55 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_55 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_55;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_55 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[35].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[35].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[35].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[35].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_56 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_56 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_56;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_56 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[36].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[36].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[36].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[36].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_57 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_57 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_57;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_57 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[37].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[37].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[37].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[37].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_58 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_58 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_58;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_58 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[38].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[38].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[38].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[38].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_59 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_59 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_59;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_59 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[39].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[39].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[39].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[39].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_6 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_6 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_6;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_6 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[106].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[106].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[106].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[106].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_60 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_60 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_60;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_60 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[3].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[3].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[3].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[3].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_61 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_61 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_61;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_61 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[40].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[40].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[40].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[40].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_62 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_62 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_62;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_62 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[41].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[41].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[41].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[41].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_63 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_63 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_63;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_63 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[42].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[42].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[42].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[42].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_64 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_64 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_64;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_64 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[43].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[43].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[43].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[43].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_65 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_65 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_65;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_65 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[44].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[44].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[44].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[44].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_66 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_66 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_66;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_66 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[45].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[45].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[45].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[45].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_67 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_67 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_67;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_67 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[46].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[46].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[46].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[46].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_68 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_68 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_68;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_68 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[47].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[47].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[47].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[47].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_69 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_69 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_69;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_69 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[48].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[48].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[48].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[48].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_7 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_7 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_7;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_7 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[107].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[107].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[107].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[107].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_70 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_70 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_70;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_70 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[49].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[49].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[49].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[49].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_71 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_71 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_71;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_71 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[4].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[4].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[4].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[4].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_72 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_72 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_72;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_72 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[50].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[50].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[50].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[50].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_73 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_73 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_73;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_73 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[51].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[51].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[51].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[51].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_74 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_74 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_74;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_74 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[52].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[52].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[52].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[52].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_75 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_75 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_75;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_75 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[53].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[53].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[53].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[53].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_76 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_76 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_76;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_76 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[54].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[54].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[54].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[54].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_77 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_77 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_77;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_77 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[55].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[55].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[55].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[55].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_78 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_78 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_78;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_78 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[56].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[56].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[56].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[56].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_79 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_79 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_79;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_79 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[57].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[57].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[57].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[57].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_8 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_8 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_8;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_8 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[108].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[108].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[108].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[108].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_80 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_80 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_80;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_80 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[58].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[58].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[58].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[58].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_81 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_81 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_81;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_81 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[59].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[59].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[59].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[59].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_82 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_82 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_82;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_82 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[5].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[5].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[5].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[5].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_83 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_83 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_83;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_83 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[60].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[60].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[60].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[60].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_84 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_84 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_84;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_84 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[61].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[61].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[61].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[61].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_85 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_85 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_85;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_85 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[62].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[62].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[62].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[62].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_86 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_86 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_86;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_86 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[63].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[63].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[63].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[63].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_87 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_87 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_87;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_87 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[64].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[64].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[64].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[64].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_88 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_88 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_88;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_88 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[65].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[65].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[65].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[65].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_89 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_89 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_89;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_89 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[66].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[66].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[66].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[66].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_9 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_9 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_9;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_9 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[109].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[109].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[109].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[109].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_90 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_90 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_90;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_90 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[67].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[67].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[67].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[67].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_91 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_91 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_91;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_91 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[68].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[68].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[68].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[68].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_92 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_92 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_92;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_92 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[69].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[69].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[69].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[69].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_93 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_93 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_93;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_93 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[6].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[6].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[6].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[6].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_94 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_94 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_94;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_94 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[70].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[70].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[70].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[70].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_95 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_95 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_95;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_95 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[71].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[71].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[71].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[71].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_96 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_96 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_96;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_96 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[72].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[72].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[72].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[72].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_97 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_97 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_97;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_97 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[73].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[73].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[73].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[73].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_98 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_98 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_98;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_98 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[74].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[74].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[74].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[74].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_99 is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 0 to 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_99 : entity is "CHOICE_PUF";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_99;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_99 is
  signal ASRQ0 : STD_LOGIC;
  signal ASRQ1 : STD_LOGIC;
  signal ASRQ2 : STD_LOGIC;
  signal ASRQ3 : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal NLW_CARRY4_inst_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY4_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SRLC32E_inst_0_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_1_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_2_Q31_UNCONNECTED : STD_LOGIC;
  signal NLW_SRLC32E_inst_3_Q31_UNCONNECTED : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CARRY4_inst : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of CARRY4_inst : label is "PRIMITIVE";
  attribute box_type of FDCPE_inst : label is "PRIMITIVE";
  attribute box_type of SRLC32E_inst_0 : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF ";
  attribute srl_name : string;
  attribute srl_name of SRLC32E_inst_0 : label is "\U0/GEN_PUF[75].PUF/SRLC32E_inst_0 ";
  attribute box_type of SRLC32E_inst_1 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_1 : label is "\U0/GEN_PUF[75].PUF/SRLC32E_inst_1 ";
  attribute box_type of SRLC32E_inst_2 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_2 : label is "\U0/GEN_PUF[75].PUF/SRLC32E_inst_2 ";
  attribute box_type of SRLC32E_inst_3 : label is "PRIMITIVE";
  attribute srl_bus_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF ";
  attribute srl_name of SRLC32E_inst_3 : label is "\U0/GEN_PUF[75].PUF/SRLC32E_inst_3 ";
begin
CARRY4_inst: unisim.vcomponents.CARRY4
     port map (
      CI => '1',
      CO(3) => carry_out,
      CO(2 downto 0) => NLW_CARRY4_inst_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY4_inst_O_UNCONNECTED(3 downto 0),
      S(3) => ASRQ3,
      S(2) => ASRQ2,
      S(1) => ASRQ1,
      S(0) => ASRQ0
    );
FDCPE_inst: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => ff_reset,
      D => '0',
      PRE => carry_out,
      Q => puf_response(0)
    );
SRLC32E_inst_0: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(4 downto 0),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(0),
      Q => ASRQ0,
      Q31 => NLW_SRLC32E_inst_0_Q31_UNCONNECTED
    );
SRLC32E_inst_1: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(9 downto 5),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(1),
      Q => ASRQ1,
      Q31 => NLW_SRLC32E_inst_1_Q31_UNCONNECTED
    );
SRLC32E_inst_2: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(14 downto 10),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(2),
      Q => ASRQ2,
      Q31 => NLW_SRLC32E_inst_2_Q31_UNCONNECTED
    );
SRLC32E_inst_3: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => ASR_length_conf(19 downto 15),
      CE => chip_enable,
      CLK => clk,
      D => ASR_data_conf(3),
      Q => ASRQ3,
      Q31 => NLW_SRLC32E_inst_3_Q31_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_gen is
  port (
    puf_response : out STD_LOGIC_VECTOR ( 127 downto 0 );
    chip_enable : in STD_LOGIC;
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_gen : entity is "CHOICE_PUF_gen";
end design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_gen;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_gen is
begin
\GEN_PUF[0].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(0)
    );
\GEN_PUF[100].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_0
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(100)
    );
\GEN_PUF[101].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_1
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(101)
    );
\GEN_PUF[102].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_2
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(102)
    );
\GEN_PUF[103].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_3
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(103)
    );
\GEN_PUF[104].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_4
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(104)
    );
\GEN_PUF[105].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_5
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(105)
    );
\GEN_PUF[106].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_6
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(106)
    );
\GEN_PUF[107].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_7
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(107)
    );
\GEN_PUF[108].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_8
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(108)
    );
\GEN_PUF[109].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_9
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(109)
    );
\GEN_PUF[10].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_10
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(10)
    );
\GEN_PUF[110].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_11
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(110)
    );
\GEN_PUF[111].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_12
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(111)
    );
\GEN_PUF[112].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_13
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(112)
    );
\GEN_PUF[113].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_14
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(113)
    );
\GEN_PUF[114].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_15
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(114)
    );
\GEN_PUF[115].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_16
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(115)
    );
\GEN_PUF[116].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_17
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(116)
    );
\GEN_PUF[117].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_18
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(117)
    );
\GEN_PUF[118].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_19
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(118)
    );
\GEN_PUF[119].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_20
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(119)
    );
\GEN_PUF[11].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_21
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(11)
    );
\GEN_PUF[120].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_22
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(120)
    );
\GEN_PUF[121].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_23
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(121)
    );
\GEN_PUF[122].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_24
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(122)
    );
\GEN_PUF[123].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_25
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(123)
    );
\GEN_PUF[124].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_26
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(124)
    );
\GEN_PUF[125].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_27
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(125)
    );
\GEN_PUF[126].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_28
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(126)
    );
\GEN_PUF[127].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_29
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(127)
    );
\GEN_PUF[12].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_30
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(12)
    );
\GEN_PUF[13].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_31
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(13)
    );
\GEN_PUF[14].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_32
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(14)
    );
\GEN_PUF[15].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_33
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(15)
    );
\GEN_PUF[16].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_34
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(16)
    );
\GEN_PUF[17].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_35
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(17)
    );
\GEN_PUF[18].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_36
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(18)
    );
\GEN_PUF[19].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_37
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(19)
    );
\GEN_PUF[1].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_38
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(1)
    );
\GEN_PUF[20].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_39
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(20)
    );
\GEN_PUF[21].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_40
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(21)
    );
\GEN_PUF[22].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_41
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(22)
    );
\GEN_PUF[23].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_42
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(23)
    );
\GEN_PUF[24].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_43
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(24)
    );
\GEN_PUF[25].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_44
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(25)
    );
\GEN_PUF[26].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_45
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(26)
    );
\GEN_PUF[27].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_46
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(27)
    );
\GEN_PUF[28].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_47
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(28)
    );
\GEN_PUF[29].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_48
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(29)
    );
\GEN_PUF[2].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_49
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(2)
    );
\GEN_PUF[30].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_50
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(30)
    );
\GEN_PUF[31].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_51
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(31)
    );
\GEN_PUF[32].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_52
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(32)
    );
\GEN_PUF[33].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_53
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(33)
    );
\GEN_PUF[34].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_54
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(34)
    );
\GEN_PUF[35].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_55
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(35)
    );
\GEN_PUF[36].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_56
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(36)
    );
\GEN_PUF[37].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_57
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(37)
    );
\GEN_PUF[38].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_58
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(38)
    );
\GEN_PUF[39].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_59
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(39)
    );
\GEN_PUF[3].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_60
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(3)
    );
\GEN_PUF[40].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_61
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(40)
    );
\GEN_PUF[41].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_62
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(41)
    );
\GEN_PUF[42].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_63
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(42)
    );
\GEN_PUF[43].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_64
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(43)
    );
\GEN_PUF[44].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_65
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(44)
    );
\GEN_PUF[45].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_66
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(45)
    );
\GEN_PUF[46].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_67
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(46)
    );
\GEN_PUF[47].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_68
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(47)
    );
\GEN_PUF[48].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_69
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(48)
    );
\GEN_PUF[49].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_70
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(49)
    );
\GEN_PUF[4].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_71
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(4)
    );
\GEN_PUF[50].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_72
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(50)
    );
\GEN_PUF[51].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_73
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(51)
    );
\GEN_PUF[52].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_74
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(52)
    );
\GEN_PUF[53].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_75
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(53)
    );
\GEN_PUF[54].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_76
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(54)
    );
\GEN_PUF[55].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_77
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(55)
    );
\GEN_PUF[56].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_78
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(56)
    );
\GEN_PUF[57].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_79
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(57)
    );
\GEN_PUF[58].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_80
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(58)
    );
\GEN_PUF[59].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_81
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(59)
    );
\GEN_PUF[5].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_82
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(5)
    );
\GEN_PUF[60].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_83
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(60)
    );
\GEN_PUF[61].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_84
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(61)
    );
\GEN_PUF[62].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_85
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(62)
    );
\GEN_PUF[63].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_86
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(63)
    );
\GEN_PUF[64].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_87
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(64)
    );
\GEN_PUF[65].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_88
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(65)
    );
\GEN_PUF[66].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_89
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(66)
    );
\GEN_PUF[67].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_90
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(67)
    );
\GEN_PUF[68].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_91
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(68)
    );
\GEN_PUF[69].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_92
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(69)
    );
\GEN_PUF[6].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_93
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(6)
    );
\GEN_PUF[70].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_94
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(70)
    );
\GEN_PUF[71].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_95
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(71)
    );
\GEN_PUF[72].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_96
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(72)
    );
\GEN_PUF[73].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_97
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(73)
    );
\GEN_PUF[74].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_98
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(74)
    );
\GEN_PUF[75].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_99
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(75)
    );
\GEN_PUF[76].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_100
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(76)
    );
\GEN_PUF[77].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_101
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(77)
    );
\GEN_PUF[78].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_102
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(78)
    );
\GEN_PUF[79].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_103
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(79)
    );
\GEN_PUF[7].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_104
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(7)
    );
\GEN_PUF[80].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_105
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(80)
    );
\GEN_PUF[81].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_106
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(81)
    );
\GEN_PUF[82].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_107
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(82)
    );
\GEN_PUF[83].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_108
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(83)
    );
\GEN_PUF[84].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_109
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(84)
    );
\GEN_PUF[85].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_110
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(85)
    );
\GEN_PUF[86].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_111
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(86)
    );
\GEN_PUF[87].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_112
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(87)
    );
\GEN_PUF[88].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_113
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(88)
    );
\GEN_PUF[89].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_114
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(89)
    );
\GEN_PUF[8].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_115
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(8)
    );
\GEN_PUF[90].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_116
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(90)
    );
\GEN_PUF[91].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_117
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(91)
    );
\GEN_PUF[92].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_118
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(92)
    );
\GEN_PUF[93].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_119
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(93)
    );
\GEN_PUF[94].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_120
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(94)
    );
\GEN_PUF[95].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_121
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(95)
    );
\GEN_PUF[96].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_122
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(96)
    );
\GEN_PUF[97].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_123
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(97)
    );
\GEN_PUF[98].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_124
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(98)
    );
\GEN_PUF[99].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_125
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(99)
    );
\GEN_PUF[9].PUF\: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_126
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(0) => puf_response(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CHOICE_PUF_gen_0_0 is
  port (
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC;
    chip_enable : in STD_LOGIC;
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    puf_response : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_CHOICE_PUF_gen_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_CHOICE_PUF_gen_0_0 : entity is "design_1_CHOICE_PUF_gen_0_0,CHOICE_PUF_gen,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_CHOICE_PUF_gen_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_CHOICE_PUF_gen_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_CHOICE_PUF_gen_0_0 : entity is "CHOICE_PUF_gen,Vivado 2020.1";
end design_1_CHOICE_PUF_gen_0_0;

architecture STRUCTURE of design_1_CHOICE_PUF_gen_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of ff_reset : signal is "xilinx.com:signal:reset:1.0 ff_reset RST";
  attribute x_interface_parameter of ff_reset : signal is "XIL_INTERFACENAME ff_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_CHOICE_PUF_gen_0_0_CHOICE_PUF_gen
     port map (
      ASR_data_conf(3 downto 0) => ASR_data_conf(3 downto 0),
      ASR_length_conf(19 downto 0) => ASR_length_conf(19 downto 0),
      chip_enable => chip_enable,
      clk => clk,
      ff_reset => ff_reset,
      puf_response(127 downto 0) => puf_response(127 downto 0)
    );
end STRUCTURE;
