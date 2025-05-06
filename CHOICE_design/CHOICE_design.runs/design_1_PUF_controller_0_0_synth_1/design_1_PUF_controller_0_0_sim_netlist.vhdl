-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat May  3 21:33:50 2025
-- Host        : FT-6K64K74 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_PUF_controller_0_0_sim_netlist.vhdl
-- Design      : design_1_PUF_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pattern_ctrl_unit is
  port (
    pattern_ready_s : out STD_LOGIC;
    ASR_choice : out STD_LOGIC_VECTOR ( 3 downto 0 );
    payload : in STD_LOGIC_VECTOR ( 36 downto 0 );
    clk : in STD_LOGIC;
    fill_req_s : in STD_LOGIC;
    pattern_ready_reg_0 : in STD_LOGIC;
    state : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pattern_ctrl_unit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pattern_ctrl_unit is
  signal ASR_bottom_indx : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^asr_choice\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ASR_choice[0]_i_1_n_0\ : STD_LOGIC;
  signal \ASR_choice[0]_i_3_n_0\ : STD_LOGIC;
  signal \ASR_choice[0]_i_4_n_0\ : STD_LOGIC;
  signal \ASR_choice[0]_i_7_n_0\ : STD_LOGIC;
  signal \ASR_choice[1]_i_1_n_0\ : STD_LOGIC;
  signal \ASR_choice[1]_i_3_n_0\ : STD_LOGIC;
  signal \ASR_choice[1]_i_4_n_0\ : STD_LOGIC;
  signal \ASR_choice[1]_i_6_n_0\ : STD_LOGIC;
  signal \ASR_choice[1]_i_7_n_0\ : STD_LOGIC;
  signal \ASR_choice[2]_i_1_n_0\ : STD_LOGIC;
  signal \ASR_choice[2]_i_3_n_0\ : STD_LOGIC;
  signal \ASR_choice[2]_i_4_n_0\ : STD_LOGIC;
  signal \ASR_choice[2]_i_6_n_0\ : STD_LOGIC;
  signal \ASR_choice[2]_i_7_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_10_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_19_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_1_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_20_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_21_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_22_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_23_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_24_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_25_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_26_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_27_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_28_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_29_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_30_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_31_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_32_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_33_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_34_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_3_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_4_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_6_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_7_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_8_n_0\ : STD_LOGIC;
  signal \ASR_choice[3]_i_9_n_0\ : STD_LOGIC;
  signal \ASR_choice_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \ASR_choice_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \ASR_choice_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \ASR_choice_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \ASR_choice_reg[3]_i_15_n_0\ : STD_LOGIC;
  signal \ASR_choice_reg[3]_i_16_n_0\ : STD_LOGIC;
  signal \ASR_choice_reg[3]_i_17_n_0\ : STD_LOGIC;
  signal \ASR_choice_reg[3]_i_18_n_0\ : STD_LOGIC;
  signal ASR_top_indx : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ASR_top_indx_0 : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal bottom_in_pattern : STD_LOGIC;
  signal bottom_in_pattern_reg_n_0 : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[0]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[10]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[11]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[12]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[13]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[14]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[15]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[16]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[17]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[18]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[19]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[1]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[20]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[21]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[22]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[23]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[24]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[25]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[26]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[27]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[28]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[29]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[2]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[30]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[31]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[3]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[4]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[5]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[6]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[7]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[8]\ : STD_LOGIC;
  signal \bottom_pattern_reg_n_0_[9]\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal count0 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_i_1_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal mux16_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mux7_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_9_in__5\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pattern_ready_i_1_n_0 : STD_LOGIC;
  signal pattern_ready_i_2_n_0 : STD_LOGIC;
  signal \^pattern_ready_s\ : STD_LOGIC;
  signal top_in_pattern : STD_LOGIC;
  signal top_in_pattern_reg_n_0 : STD_LOGIC;
  signal \top_pattern_reg_n_0_[0]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[10]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[11]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[12]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[13]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[14]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[15]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[16]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[17]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[18]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[19]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[1]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[20]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[21]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[22]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[23]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[24]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[25]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[26]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[27]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[28]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[29]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[2]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[30]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[31]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[3]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[4]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[5]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[6]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[7]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[8]\ : STD_LOGIC;
  signal \top_pattern_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ASR_choice[0]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ASR_choice[0]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ASR_choice[0]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ASR_choice[1]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ASR_choice[1]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ASR_choice[1]_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ASR_choice[2]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ASR_choice[2]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ASR_choice[2]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ASR_choice[3]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ASR_choice[3]_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ASR_choice[3]_i_8\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "s0:001,s1:010,s2:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "s0:001,s1:010,s2:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "s0:001,s1:010,s2:100,";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[5]_i_1\ : label is "soft_lutpair3";
begin
  ASR_choice(3 downto 0) <= \^asr_choice\(3 downto 0);
  pattern_ready_s <= \^pattern_ready_s\;
\ASR_bottom_indx[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => payload(36),
      I2 => payload(33),
      I3 => payload(35),
      I4 => payload(34),
      O => ASR_top_indx_0
    );
\ASR_bottom_indx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ASR_top_indx_0,
      D => payload(0),
      Q => ASR_bottom_indx(0),
      R => '0'
    );
\ASR_bottom_indx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ASR_top_indx_0,
      D => payload(1),
      Q => ASR_bottom_indx(1),
      R => '0'
    );
\ASR_choice[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => mux16_out(0),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \ASR_choice[0]_i_3_n_0\,
      I3 => count,
      I4 => \ASR_choice[0]_i_4_n_0\,
      I5 => \^asr_choice\(0),
      O => \ASR_choice[0]_i_1_n_0\
    );
\ASR_choice[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFFFEFEFE00"
    )
        port map (
      I0 => \top_pattern_reg_n_0_[0]\,
      I1 => ASR_top_indx(0),
      I2 => ASR_top_indx(1),
      I3 => ASR_bottom_indx(1),
      I4 => ASR_bottom_indx(0),
      I5 => \bottom_pattern_reg_n_0_[0]\,
      O => mux16_out(0)
    );
\ASR_choice[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B8BB"
    )
        port map (
      I0 => mux7_out(0),
      I1 => count_reg(5),
      I2 => \ASR_choice[3]_i_6_n_0\,
      I3 => \p_9_in__5\(0),
      I4 => \ASR_choice[0]_i_7_n_0\,
      I5 => \ASR_choice[3]_i_9_n_0\,
      O => \ASR_choice[0]_i_3_n_0\
    );
\ASR_choice[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFFFFFAAAAAAAA"
    )
        port map (
      I0 => \ASR_choice[3]_i_10_n_0\,
      I1 => \ASR_choice[0]_i_7_n_0\,
      I2 => ASR_top_indx(0),
      I3 => ASR_top_indx(1),
      I4 => count_reg(5),
      I5 => count,
      O => \ASR_choice[0]_i_4_n_0\
    );
\ASR_choice[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => top_in_pattern_reg_n_0,
      I1 => ASR_bottom_indx(1),
      I2 => ASR_bottom_indx(0),
      I3 => bottom_in_pattern_reg_n_0,
      O => mux7_out(0)
    );
\ASR_choice[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ASR_top_indx(1),
      I1 => ASR_top_indx(0),
      O => \p_9_in__5\(0)
    );
\ASR_choice[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ASR_bottom_indx(1),
      I1 => ASR_bottom_indx(0),
      O => \ASR_choice[0]_i_7_n_0\
    );
\ASR_choice[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => mux16_out(1),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \ASR_choice[1]_i_3_n_0\,
      I3 => count,
      I4 => \ASR_choice[1]_i_4_n_0\,
      I5 => \^asr_choice\(1),
      O => \ASR_choice[1]_i_1_n_0\
    );
\ASR_choice[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFFFEFEFEF00EF"
    )
        port map (
      I0 => \top_pattern_reg_n_0_[0]\,
      I1 => ASR_top_indx(1),
      I2 => ASR_top_indx(0),
      I3 => ASR_bottom_indx(0),
      I4 => ASR_bottom_indx(1),
      I5 => \bottom_pattern_reg_n_0_[0]\,
      O => mux16_out(1)
    );
\ASR_choice[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B8BB"
    )
        port map (
      I0 => mux7_out(1),
      I1 => count_reg(5),
      I2 => \ASR_choice[3]_i_6_n_0\,
      I3 => \ASR_choice[1]_i_6_n_0\,
      I4 => \ASR_choice[1]_i_7_n_0\,
      I5 => \ASR_choice[3]_i_9_n_0\,
      O => \ASR_choice[1]_i_3_n_0\
    );
\ASR_choice[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEFFFFAAAAAAAA"
    )
        port map (
      I0 => \ASR_choice[3]_i_10_n_0\,
      I1 => \ASR_choice[1]_i_7_n_0\,
      I2 => ASR_top_indx(1),
      I3 => ASR_top_indx(0),
      I4 => count_reg(5),
      I5 => count,
      O => \ASR_choice[1]_i_4_n_0\
    );
\ASR_choice[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA2"
    )
        port map (
      I0 => top_in_pattern_reg_n_0,
      I1 => ASR_bottom_indx(0),
      I2 => ASR_bottom_indx(1),
      I3 => bottom_in_pattern_reg_n_0,
      O => mux7_out(1)
    );
\ASR_choice[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ASR_top_indx(0),
      I1 => ASR_top_indx(1),
      O => \ASR_choice[1]_i_6_n_0\
    );
\ASR_choice[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ASR_bottom_indx(0),
      I1 => ASR_bottom_indx(1),
      O => \ASR_choice[1]_i_7_n_0\
    );
\ASR_choice[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => mux16_out(2),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \ASR_choice[2]_i_3_n_0\,
      I3 => count,
      I4 => \ASR_choice[2]_i_4_n_0\,
      I5 => \^asr_choice\(2),
      O => \ASR_choice[2]_i_1_n_0\
    );
\ASR_choice[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFFFEFEFEF00EF"
    )
        port map (
      I0 => \top_pattern_reg_n_0_[0]\,
      I1 => ASR_top_indx(0),
      I2 => ASR_top_indx(1),
      I3 => ASR_bottom_indx(1),
      I4 => ASR_bottom_indx(0),
      I5 => \bottom_pattern_reg_n_0_[0]\,
      O => mux16_out(2)
    );
\ASR_choice[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B8BB"
    )
        port map (
      I0 => mux7_out(2),
      I1 => count_reg(5),
      I2 => \ASR_choice[3]_i_6_n_0\,
      I3 => \ASR_choice[2]_i_6_n_0\,
      I4 => \ASR_choice[2]_i_7_n_0\,
      I5 => \ASR_choice[3]_i_9_n_0\,
      O => \ASR_choice[2]_i_3_n_0\
    );
\ASR_choice[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEFFFFAAAAAAAA"
    )
        port map (
      I0 => \ASR_choice[3]_i_10_n_0\,
      I1 => \ASR_choice[2]_i_7_n_0\,
      I2 => ASR_top_indx(0),
      I3 => ASR_top_indx(1),
      I4 => count_reg(5),
      I5 => count,
      O => \ASR_choice[2]_i_4_n_0\
    );
\ASR_choice[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA2"
    )
        port map (
      I0 => top_in_pattern_reg_n_0,
      I1 => ASR_bottom_indx(1),
      I2 => ASR_bottom_indx(0),
      I3 => bottom_in_pattern_reg_n_0,
      O => mux7_out(2)
    );
\ASR_choice[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ASR_top_indx(1),
      I1 => ASR_top_indx(0),
      O => \ASR_choice[2]_i_6_n_0\
    );
\ASR_choice[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ASR_bottom_indx(1),
      I1 => ASR_bottom_indx(0),
      O => \ASR_choice[2]_i_7_n_0\
    );
\ASR_choice[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => mux16_out(3),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \ASR_choice[3]_i_3_n_0\,
      I3 => count,
      I4 => \ASR_choice[3]_i_4_n_0\,
      I5 => \^asr_choice\(3),
      O => \ASR_choice[3]_i_1_n_0\
    );
\ASR_choice[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA882A00000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => payload(34),
      I2 => payload(33),
      I3 => payload(35),
      I4 => payload(36),
      I5 => fill_req_s,
      O => \ASR_choice[3]_i_10_n_0\
    );
\ASR_choice[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \top_pattern_reg_n_0_[27]\,
      I1 => \top_pattern_reg_n_0_[26]\,
      I2 => count_reg(1),
      I3 => \top_pattern_reg_n_0_[25]\,
      I4 => count_reg(0),
      I5 => \top_pattern_reg_n_0_[24]\,
      O => \ASR_choice[3]_i_19_n_0\
    );
\ASR_choice[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFBFBF00BFBFBF"
    )
        port map (
      I0 => \top_pattern_reg_n_0_[0]\,
      I1 => ASR_top_indx(0),
      I2 => ASR_top_indx(1),
      I3 => ASR_bottom_indx(1),
      I4 => ASR_bottom_indx(0),
      I5 => \bottom_pattern_reg_n_0_[0]\,
      O => mux16_out(3)
    );
\ASR_choice[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \top_pattern_reg_n_0_[31]\,
      I1 => \top_pattern_reg_n_0_[30]\,
      I2 => count_reg(1),
      I3 => \top_pattern_reg_n_0_[29]\,
      I4 => count_reg(0),
      I5 => \top_pattern_reg_n_0_[28]\,
      O => \ASR_choice[3]_i_20_n_0\
    );
\ASR_choice[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \top_pattern_reg_n_0_[19]\,
      I1 => \top_pattern_reg_n_0_[18]\,
      I2 => count_reg(1),
      I3 => \top_pattern_reg_n_0_[17]\,
      I4 => count_reg(0),
      I5 => \top_pattern_reg_n_0_[16]\,
      O => \ASR_choice[3]_i_21_n_0\
    );
\ASR_choice[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \top_pattern_reg_n_0_[23]\,
      I1 => \top_pattern_reg_n_0_[22]\,
      I2 => count_reg(1),
      I3 => \top_pattern_reg_n_0_[21]\,
      I4 => count_reg(0),
      I5 => \top_pattern_reg_n_0_[20]\,
      O => \ASR_choice[3]_i_22_n_0\
    );
\ASR_choice[3]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \top_pattern_reg_n_0_[11]\,
      I1 => \top_pattern_reg_n_0_[10]\,
      I2 => count_reg(1),
      I3 => \top_pattern_reg_n_0_[9]\,
      I4 => count_reg(0),
      I5 => \top_pattern_reg_n_0_[8]\,
      O => \ASR_choice[3]_i_23_n_0\
    );
\ASR_choice[3]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \top_pattern_reg_n_0_[15]\,
      I1 => \top_pattern_reg_n_0_[14]\,
      I2 => count_reg(1),
      I3 => \top_pattern_reg_n_0_[13]\,
      I4 => count_reg(0),
      I5 => \top_pattern_reg_n_0_[12]\,
      O => \ASR_choice[3]_i_24_n_0\
    );
\ASR_choice[3]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \top_pattern_reg_n_0_[3]\,
      I1 => \top_pattern_reg_n_0_[2]\,
      I2 => count_reg(1),
      I3 => \top_pattern_reg_n_0_[1]\,
      I4 => count_reg(0),
      I5 => \top_pattern_reg_n_0_[0]\,
      O => \ASR_choice[3]_i_25_n_0\
    );
\ASR_choice[3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \top_pattern_reg_n_0_[7]\,
      I1 => \top_pattern_reg_n_0_[6]\,
      I2 => count_reg(1),
      I3 => \top_pattern_reg_n_0_[5]\,
      I4 => count_reg(0),
      I5 => \top_pattern_reg_n_0_[4]\,
      O => \ASR_choice[3]_i_26_n_0\
    );
\ASR_choice[3]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bottom_pattern_reg_n_0_[27]\,
      I1 => \bottom_pattern_reg_n_0_[26]\,
      I2 => count_reg(1),
      I3 => \bottom_pattern_reg_n_0_[25]\,
      I4 => count_reg(0),
      I5 => \bottom_pattern_reg_n_0_[24]\,
      O => \ASR_choice[3]_i_27_n_0\
    );
\ASR_choice[3]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bottom_pattern_reg_n_0_[31]\,
      I1 => \bottom_pattern_reg_n_0_[30]\,
      I2 => count_reg(1),
      I3 => \bottom_pattern_reg_n_0_[29]\,
      I4 => count_reg(0),
      I5 => \bottom_pattern_reg_n_0_[28]\,
      O => \ASR_choice[3]_i_28_n_0\
    );
\ASR_choice[3]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bottom_pattern_reg_n_0_[19]\,
      I1 => \bottom_pattern_reg_n_0_[18]\,
      I2 => count_reg(1),
      I3 => \bottom_pattern_reg_n_0_[17]\,
      I4 => count_reg(0),
      I5 => \bottom_pattern_reg_n_0_[16]\,
      O => \ASR_choice[3]_i_29_n_0\
    );
\ASR_choice[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B8BB"
    )
        port map (
      I0 => mux7_out(3),
      I1 => count_reg(5),
      I2 => \ASR_choice[3]_i_6_n_0\,
      I3 => \ASR_choice[3]_i_7_n_0\,
      I4 => \ASR_choice[3]_i_8_n_0\,
      I5 => \ASR_choice[3]_i_9_n_0\,
      O => \ASR_choice[3]_i_3_n_0\
    );
\ASR_choice[3]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bottom_pattern_reg_n_0_[23]\,
      I1 => \bottom_pattern_reg_n_0_[22]\,
      I2 => count_reg(1),
      I3 => \bottom_pattern_reg_n_0_[21]\,
      I4 => count_reg(0),
      I5 => \bottom_pattern_reg_n_0_[20]\,
      O => \ASR_choice[3]_i_30_n_0\
    );
\ASR_choice[3]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bottom_pattern_reg_n_0_[11]\,
      I1 => \bottom_pattern_reg_n_0_[10]\,
      I2 => count_reg(1),
      I3 => \bottom_pattern_reg_n_0_[9]\,
      I4 => count_reg(0),
      I5 => \bottom_pattern_reg_n_0_[8]\,
      O => \ASR_choice[3]_i_31_n_0\
    );
\ASR_choice[3]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bottom_pattern_reg_n_0_[15]\,
      I1 => \bottom_pattern_reg_n_0_[14]\,
      I2 => count_reg(1),
      I3 => \bottom_pattern_reg_n_0_[13]\,
      I4 => count_reg(0),
      I5 => \bottom_pattern_reg_n_0_[12]\,
      O => \ASR_choice[3]_i_32_n_0\
    );
\ASR_choice[3]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bottom_pattern_reg_n_0_[3]\,
      I1 => \bottom_pattern_reg_n_0_[2]\,
      I2 => count_reg(1),
      I3 => \bottom_pattern_reg_n_0_[1]\,
      I4 => count_reg(0),
      I5 => \bottom_pattern_reg_n_0_[0]\,
      O => \ASR_choice[3]_i_33_n_0\
    );
\ASR_choice[3]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bottom_pattern_reg_n_0_[7]\,
      I1 => \bottom_pattern_reg_n_0_[6]\,
      I2 => count_reg(1),
      I3 => \bottom_pattern_reg_n_0_[5]\,
      I4 => count_reg(0),
      I5 => \bottom_pattern_reg_n_0_[4]\,
      O => \ASR_choice[3]_i_34_n_0\
    );
\ASR_choice[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFFFFAAAAAAAA"
    )
        port map (
      I0 => \ASR_choice[3]_i_10_n_0\,
      I1 => \ASR_choice[3]_i_8_n_0\,
      I2 => ASR_top_indx(0),
      I3 => ASR_top_indx(1),
      I4 => count_reg(5),
      I5 => count,
      O => \ASR_choice[3]_i_4_n_0\
    );
\ASR_choice[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => top_in_pattern_reg_n_0,
      I1 => ASR_bottom_indx(1),
      I2 => ASR_bottom_indx(0),
      I3 => bottom_in_pattern_reg_n_0,
      O => mux7_out(3)
    );
\ASR_choice[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ASR_choice_reg[3]_i_11_n_0\,
      I1 => \ASR_choice_reg[3]_i_12_n_0\,
      I2 => count_reg(4),
      I3 => \ASR_choice_reg[3]_i_13_n_0\,
      I4 => count_reg(3),
      I5 => \ASR_choice_reg[3]_i_14_n_0\,
      O => \ASR_choice[3]_i_6_n_0\
    );
\ASR_choice[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ASR_top_indx(1),
      I1 => ASR_top_indx(0),
      O => \ASR_choice[3]_i_7_n_0\
    );
\ASR_choice[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ASR_bottom_indx(1),
      I1 => ASR_bottom_indx(0),
      O => \ASR_choice[3]_i_8_n_0\
    );
\ASR_choice[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ASR_choice_reg[3]_i_15_n_0\,
      I1 => \ASR_choice_reg[3]_i_16_n_0\,
      I2 => count_reg(4),
      I3 => \ASR_choice_reg[3]_i_17_n_0\,
      I4 => count_reg(3),
      I5 => \ASR_choice_reg[3]_i_18_n_0\,
      O => \ASR_choice[3]_i_9_n_0\
    );
\ASR_choice_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ASR_choice[0]_i_1_n_0\,
      Q => \^asr_choice\(0),
      R => '0'
    );
\ASR_choice_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ASR_choice[1]_i_1_n_0\,
      Q => \^asr_choice\(1),
      R => '0'
    );
\ASR_choice_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ASR_choice[2]_i_1_n_0\,
      Q => \^asr_choice\(2),
      R => '0'
    );
\ASR_choice_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ASR_choice[3]_i_1_n_0\,
      Q => \^asr_choice\(3),
      R => '0'
    );
\ASR_choice_reg[3]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ASR_choice[3]_i_19_n_0\,
      I1 => \ASR_choice[3]_i_20_n_0\,
      O => \ASR_choice_reg[3]_i_11_n_0\,
      S => count_reg(2)
    );
\ASR_choice_reg[3]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ASR_choice[3]_i_21_n_0\,
      I1 => \ASR_choice[3]_i_22_n_0\,
      O => \ASR_choice_reg[3]_i_12_n_0\,
      S => count_reg(2)
    );
\ASR_choice_reg[3]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ASR_choice[3]_i_23_n_0\,
      I1 => \ASR_choice[3]_i_24_n_0\,
      O => \ASR_choice_reg[3]_i_13_n_0\,
      S => count_reg(2)
    );
\ASR_choice_reg[3]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ASR_choice[3]_i_25_n_0\,
      I1 => \ASR_choice[3]_i_26_n_0\,
      O => \ASR_choice_reg[3]_i_14_n_0\,
      S => count_reg(2)
    );
\ASR_choice_reg[3]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ASR_choice[3]_i_27_n_0\,
      I1 => \ASR_choice[3]_i_28_n_0\,
      O => \ASR_choice_reg[3]_i_15_n_0\,
      S => count_reg(2)
    );
\ASR_choice_reg[3]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ASR_choice[3]_i_29_n_0\,
      I1 => \ASR_choice[3]_i_30_n_0\,
      O => \ASR_choice_reg[3]_i_16_n_0\,
      S => count_reg(2)
    );
\ASR_choice_reg[3]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ASR_choice[3]_i_31_n_0\,
      I1 => \ASR_choice[3]_i_32_n_0\,
      O => \ASR_choice_reg[3]_i_17_n_0\,
      S => count_reg(2)
    );
\ASR_choice_reg[3]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ASR_choice[3]_i_33_n_0\,
      I1 => \ASR_choice[3]_i_34_n_0\,
      O => \ASR_choice_reg[3]_i_18_n_0\,
      S => count_reg(2)
    );
\ASR_top_indx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ASR_top_indx_0,
      D => payload(2),
      Q => ASR_top_indx(0),
      R => '0'
    );
\ASR_top_indx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ASR_top_indx_0,
      D => payload(3),
      Q => ASR_top_indx(1),
      R => '0'
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FA22FA22FA22"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => state,
      I2 => pattern_ready_reg_0,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => count_reg(5),
      I5 => count,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAFFFA888A888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => state,
      I2 => pattern_ready_reg_0,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => count_reg(5),
      I5 => count,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF8807000700"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => state,
      I2 => pattern_ready_reg_0,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => count_reg(5),
      I5 => count,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => count,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => '0'
    );
bottom_in_pattern_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(32),
      Q => bottom_in_pattern_reg_n_0,
      R => '0'
    );
\bottom_pattern[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => payload(36),
      I2 => payload(33),
      I3 => payload(35),
      I4 => payload(34),
      O => bottom_in_pattern
    );
\bottom_pattern_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(0),
      Q => \bottom_pattern_reg_n_0_[0]\,
      R => '0'
    );
\bottom_pattern_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(10),
      Q => \bottom_pattern_reg_n_0_[10]\,
      R => '0'
    );
\bottom_pattern_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(11),
      Q => \bottom_pattern_reg_n_0_[11]\,
      R => '0'
    );
\bottom_pattern_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(12),
      Q => \bottom_pattern_reg_n_0_[12]\,
      R => '0'
    );
\bottom_pattern_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(13),
      Q => \bottom_pattern_reg_n_0_[13]\,
      R => '0'
    );
\bottom_pattern_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(14),
      Q => \bottom_pattern_reg_n_0_[14]\,
      R => '0'
    );
\bottom_pattern_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(15),
      Q => \bottom_pattern_reg_n_0_[15]\,
      R => '0'
    );
\bottom_pattern_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(16),
      Q => \bottom_pattern_reg_n_0_[16]\,
      R => '0'
    );
\bottom_pattern_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(17),
      Q => \bottom_pattern_reg_n_0_[17]\,
      R => '0'
    );
\bottom_pattern_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(18),
      Q => \bottom_pattern_reg_n_0_[18]\,
      R => '0'
    );
\bottom_pattern_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(19),
      Q => \bottom_pattern_reg_n_0_[19]\,
      R => '0'
    );
\bottom_pattern_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(1),
      Q => \bottom_pattern_reg_n_0_[1]\,
      R => '0'
    );
\bottom_pattern_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(20),
      Q => \bottom_pattern_reg_n_0_[20]\,
      R => '0'
    );
\bottom_pattern_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(21),
      Q => \bottom_pattern_reg_n_0_[21]\,
      R => '0'
    );
\bottom_pattern_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(22),
      Q => \bottom_pattern_reg_n_0_[22]\,
      R => '0'
    );
\bottom_pattern_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(23),
      Q => \bottom_pattern_reg_n_0_[23]\,
      R => '0'
    );
\bottom_pattern_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(24),
      Q => \bottom_pattern_reg_n_0_[24]\,
      R => '0'
    );
\bottom_pattern_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(25),
      Q => \bottom_pattern_reg_n_0_[25]\,
      R => '0'
    );
\bottom_pattern_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(26),
      Q => \bottom_pattern_reg_n_0_[26]\,
      R => '0'
    );
\bottom_pattern_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(27),
      Q => \bottom_pattern_reg_n_0_[27]\,
      R => '0'
    );
\bottom_pattern_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(28),
      Q => \bottom_pattern_reg_n_0_[28]\,
      R => '0'
    );
\bottom_pattern_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(29),
      Q => \bottom_pattern_reg_n_0_[29]\,
      R => '0'
    );
\bottom_pattern_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(2),
      Q => \bottom_pattern_reg_n_0_[2]\,
      R => '0'
    );
\bottom_pattern_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(30),
      Q => \bottom_pattern_reg_n_0_[30]\,
      R => '0'
    );
\bottom_pattern_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(31),
      Q => \bottom_pattern_reg_n_0_[31]\,
      R => '0'
    );
\bottom_pattern_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(3),
      Q => \bottom_pattern_reg_n_0_[3]\,
      R => '0'
    );
\bottom_pattern_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(4),
      Q => \bottom_pattern_reg_n_0_[4]\,
      R => '0'
    );
\bottom_pattern_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(5),
      Q => \bottom_pattern_reg_n_0_[5]\,
      R => '0'
    );
\bottom_pattern_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(6),
      Q => \bottom_pattern_reg_n_0_[6]\,
      R => '0'
    );
\bottom_pattern_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(7),
      Q => \bottom_pattern_reg_n_0_[7]\,
      R => '0'
    );
\bottom_pattern_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(8),
      Q => \bottom_pattern_reg_n_0_[8]\,
      R => '0'
    );
\bottom_pattern_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bottom_in_pattern,
      D => payload(9),
      Q => \bottom_pattern_reg_n_0_[9]\,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BC"
    )
        port map (
      I0 => count_reg(5),
      I1 => count,
      I2 => count_reg(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(0),
      I2 => count_reg(1),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(2),
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      I4 => count_reg(3),
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(3),
      I5 => count_reg(4),
      O => \count[4]_i_1_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => count_reg(5),
      I1 => count0(5),
      O => \count[5]_i_1_n_0\
    );
\count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      I4 => count_reg(4),
      I5 => count_reg(5),
      O => count0(5)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => count_reg(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[1]_i_1_n_0\,
      Q => count_reg(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[2]_i_1_n_0\,
      Q => count_reg(2),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[3]_i_1_n_0\,
      Q => count_reg(3),
      R => '0'
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[4]_i_1_n_0\,
      Q => count_reg(4),
      R => '0'
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[5]_i_1_n_0\,
      Q => count_reg(5),
      R => '0'
    );
pattern_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"507F7F7F50404040"
    )
        port map (
      I0 => count_reg(5),
      I1 => pattern_ready_i_2_n_0,
      I2 => count,
      I3 => pattern_ready_reg_0,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \^pattern_ready_s\,
      O => pattern_ready_i_1_n_0
    );
pattern_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(3),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(4),
      I5 => count_reg(5),
      O => pattern_ready_i_2_n_0
    );
pattern_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pattern_ready_i_1_n_0,
      Q => \^pattern_ready_s\,
      R => '0'
    );
top_in_pattern_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(32),
      Q => top_in_pattern_reg_n_0,
      R => '0'
    );
\top_pattern[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => payload(34),
      I2 => payload(35),
      I3 => payload(33),
      I4 => payload(36),
      O => top_in_pattern
    );
\top_pattern_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(0),
      Q => \top_pattern_reg_n_0_[0]\,
      R => '0'
    );
\top_pattern_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(10),
      Q => \top_pattern_reg_n_0_[10]\,
      R => '0'
    );
\top_pattern_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(11),
      Q => \top_pattern_reg_n_0_[11]\,
      R => '0'
    );
\top_pattern_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(12),
      Q => \top_pattern_reg_n_0_[12]\,
      R => '0'
    );
\top_pattern_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(13),
      Q => \top_pattern_reg_n_0_[13]\,
      R => '0'
    );
\top_pattern_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(14),
      Q => \top_pattern_reg_n_0_[14]\,
      R => '0'
    );
\top_pattern_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(15),
      Q => \top_pattern_reg_n_0_[15]\,
      R => '0'
    );
\top_pattern_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(16),
      Q => \top_pattern_reg_n_0_[16]\,
      R => '0'
    );
\top_pattern_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(17),
      Q => \top_pattern_reg_n_0_[17]\,
      R => '0'
    );
\top_pattern_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(18),
      Q => \top_pattern_reg_n_0_[18]\,
      R => '0'
    );
\top_pattern_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(19),
      Q => \top_pattern_reg_n_0_[19]\,
      R => '0'
    );
\top_pattern_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(1),
      Q => \top_pattern_reg_n_0_[1]\,
      R => '0'
    );
\top_pattern_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(20),
      Q => \top_pattern_reg_n_0_[20]\,
      R => '0'
    );
\top_pattern_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(21),
      Q => \top_pattern_reg_n_0_[21]\,
      R => '0'
    );
\top_pattern_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(22),
      Q => \top_pattern_reg_n_0_[22]\,
      R => '0'
    );
\top_pattern_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(23),
      Q => \top_pattern_reg_n_0_[23]\,
      R => '0'
    );
\top_pattern_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(24),
      Q => \top_pattern_reg_n_0_[24]\,
      R => '0'
    );
\top_pattern_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(25),
      Q => \top_pattern_reg_n_0_[25]\,
      R => '0'
    );
\top_pattern_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(26),
      Q => \top_pattern_reg_n_0_[26]\,
      R => '0'
    );
\top_pattern_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(27),
      Q => \top_pattern_reg_n_0_[27]\,
      R => '0'
    );
\top_pattern_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(28),
      Q => \top_pattern_reg_n_0_[28]\,
      R => '0'
    );
\top_pattern_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(29),
      Q => \top_pattern_reg_n_0_[29]\,
      R => '0'
    );
\top_pattern_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(2),
      Q => \top_pattern_reg_n_0_[2]\,
      R => '0'
    );
\top_pattern_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(30),
      Q => \top_pattern_reg_n_0_[30]\,
      R => '0'
    );
\top_pattern_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(31),
      Q => \top_pattern_reg_n_0_[31]\,
      R => '0'
    );
\top_pattern_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(3),
      Q => \top_pattern_reg_n_0_[3]\,
      R => '0'
    );
\top_pattern_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(4),
      Q => \top_pattern_reg_n_0_[4]\,
      R => '0'
    );
\top_pattern_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(5),
      Q => \top_pattern_reg_n_0_[5]\,
      R => '0'
    );
\top_pattern_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(6),
      Q => \top_pattern_reg_n_0_[6]\,
      R => '0'
    );
\top_pattern_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(7),
      Q => \top_pattern_reg_n_0_[7]\,
      R => '0'
    );
\top_pattern_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(8),
      Q => \top_pattern_reg_n_0_[8]\,
      R => '0'
    );
\top_pattern_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => top_in_pattern,
      D => payload(9),
      Q => \top_pattern_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_request_ctrl_unit is
  port (
    ASR_enable : out STD_LOGIC;
    fill_req_s : out STD_LOGIC;
    ff_reset : out STD_LOGIC;
    write_valid : out STD_LOGIC;
    state : out STD_LOGIC;
    clk : in STD_LOGIC;
    read_valid : in STD_LOGIC;
    payload : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pattern_ready_s : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_request_ctrl_unit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_request_ctrl_unit is
  signal ASR_enable_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^ff_reset\ : STD_LOGIC;
  signal ff_reset_i_1_n_0 : STD_LOGIC;
  signal fill_req_i_1_n_0 : STD_LOGIC;
  signal \^fill_req_s\ : STD_LOGIC;
  signal read_ready_i_1_n_0 : STD_LOGIC;
  signal read_ready_i_2_n_0 : STD_LOGIC;
  signal state_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^write_valid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ASR_enable_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "s0:000,s1:001,s2:010,s3:011,s4:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "s0:000,s1:001,s2:010,s3:011,s4:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "s0:000,s1:001,s2:010,s3:011,s4:100,";
  attribute SOFT_HLUTNM of ff_reset_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of fill_req_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of read_ready_i_1 : label is "soft_lutpair8";
begin
  ff_reset <= \^ff_reset\;
  fill_req_s <= \^fill_req_s\;
  write_valid <= \^write_valid\;
ASR_enable_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4500"
    )
        port map (
      I0 => state_0(2),
      I1 => state_0(1),
      I2 => pattern_ready_s,
      I3 => state_0(0),
      O => ASR_enable_i_1_n_0
    );
ASR_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_enable_i_1_n_0,
      Q => ASR_enable,
      R => '0'
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AA8A8A"
    )
        port map (
      I0 => \^fill_req_s\,
      I1 => payload(3),
      I2 => payload(2),
      I3 => payload(0),
      I4 => payload(1),
      O => state
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F01FF01A"
    )
        port map (
      I0 => state_0(1),
      I1 => pattern_ready_s,
      I2 => state_0(0),
      I3 => state_0(2),
      I4 => read_ready_i_2_n_0,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA4A"
    )
        port map (
      I0 => state_0(1),
      I1 => pattern_ready_s,
      I2 => state_0(0),
      I3 => state_0(2),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => state_0(1),
      I1 => state_0(0),
      I2 => state_0(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state_0(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state_0(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state_0(2),
      R => '0'
    );
ff_reset_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AB0"
    )
        port map (
      I0 => \^ff_reset\,
      I1 => state_0(2),
      I2 => state_0(1),
      I3 => state_0(0),
      O => ff_reset_i_1_n_0
    );
ff_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ff_reset_i_1_n_0,
      Q => \^ff_reset\,
      R => '0'
    );
fill_req_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => state_0(2),
      I1 => state_0(0),
      I2 => read_ready_i_2_n_0,
      I3 => state_0(1),
      O => fill_req_i_1_n_0
    );
fill_req_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fill_req_i_1_n_0,
      Q => \^fill_req_s\,
      R => '0'
    );
read_ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCF10031"
    )
        port map (
      I0 => read_ready_i_2_n_0,
      I1 => state_0(1),
      I2 => state_0(2),
      I3 => state_0(0),
      I4 => \^write_valid\,
      O => read_ready_i_1_n_0
    );
read_ready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => read_valid,
      I1 => payload(1),
      I2 => payload(0),
      I3 => payload(2),
      I4 => payload(3),
      O => read_ready_i_2_n_0
    );
read_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => read_ready_i_1_n_0,
      Q => \^write_valid\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tune_ctrl_unit is
  port (
    ASR_tuning : out STD_LOGIC_VECTOR ( 19 downto 0 );
    payload : in STD_LOGIC_VECTOR ( 13 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tune_ctrl_unit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tune_ctrl_unit is
  signal A : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ASR_bottom_indx_reg_n_0_[0]\ : STD_LOGIC;
  signal \ASR_bottom_indx_reg_n_0_[1]\ : STD_LOGIC;
  signal ASR_top_indx : STD_LOGIC;
  signal ASR_tuning0 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal ASR_tuning_set : STD_LOGIC;
  signal lower_tuning : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal upper_tuning : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
\ASR_bottom_indx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ASR_top_indx,
      D => payload(0),
      Q => \ASR_bottom_indx_reg_n_0_[0]\,
      R => '0'
    );
\ASR_bottom_indx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ASR_top_indx,
      D => payload(1),
      Q => \ASR_bottom_indx_reg_n_0_[1]\,
      R => '0'
    );
\ASR_top_indx[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => payload(10),
      I1 => payload(11),
      I2 => payload(12),
      I3 => payload(13),
      O => ASR_top_indx
    );
\ASR_top_indx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ASR_top_indx,
      D => payload(2),
      Q => A(0),
      R => '0'
    );
\ASR_top_indx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ASR_top_indx,
      D => payload(3),
      Q => A(1),
      R => '0'
    );
\ASR_tuning[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFCFFFDAAA8"
    )
        port map (
      I0 => \ASR_bottom_indx_reg_n_0_[0]\,
      I1 => A(0),
      I2 => upper_tuning(0),
      I3 => A(1),
      I4 => lower_tuning(0),
      I5 => \ASR_bottom_indx_reg_n_0_[1]\,
      O => ASR_tuning0(0)
    );
\ASR_tuning[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFA8AAFCFFFCFF"
    )
        port map (
      I0 => \ASR_bottom_indx_reg_n_0_[0]\,
      I1 => A(0),
      I2 => upper_tuning(0),
      I3 => A(1),
      I4 => lower_tuning(0),
      I5 => \ASR_bottom_indx_reg_n_0_[1]\,
      O => ASR_tuning0(10)
    );
\ASR_tuning[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFA8AAFCFFFCFF"
    )
        port map (
      I0 => \ASR_bottom_indx_reg_n_0_[0]\,
      I1 => A(0),
      I2 => upper_tuning(1),
      I3 => A(1),
      I4 => lower_tuning(1),
      I5 => \ASR_bottom_indx_reg_n_0_[1]\,
      O => ASR_tuning0(11)
    );
\ASR_tuning[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFA8AAFCFFFCFF"
    )
        port map (
      I0 => \ASR_bottom_indx_reg_n_0_[0]\,
      I1 => A(0),
      I2 => upper_tuning(2),
      I3 => A(1),
      I4 => lower_tuning(2),
      I5 => \ASR_bottom_indx_reg_n_0_[1]\,
      O => ASR_tuning0(12)
    );
\ASR_tuning[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFA8AAFCFFFCFF"
    )
        port map (
      I0 => \ASR_bottom_indx_reg_n_0_[0]\,
      I1 => A(0),
      I2 => upper_tuning(3),
      I3 => A(1),
      I4 => lower_tuning(3),
      I5 => \ASR_bottom_indx_reg_n_0_[1]\,
      O => ASR_tuning0(13)
    );
\ASR_tuning[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFA8AAFCFFFCFF"
    )
        port map (
      I0 => \ASR_bottom_indx_reg_n_0_[0]\,
      I1 => A(0),
      I2 => upper_tuning(4),
      I3 => A(1),
      I4 => lower_tuning(4),
      I5 => \ASR_bottom_indx_reg_n_0_[1]\,
      O => ASR_tuning0(14)
    );
\ASR_tuning[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBF80BFBFBFBFBF"
    )
        port map (
      I0 => lower_tuning(0),
      I1 => \ASR_bottom_indx_reg_n_0_[1]\,
      I2 => \ASR_bottom_indx_reg_n_0_[0]\,
      I3 => A(1),
      I4 => upper_tuning(0),
      I5 => A(0),
      O => ASR_tuning0(15)
    );
\ASR_tuning[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBF80BFBFBFBFBF"
    )
        port map (
      I0 => lower_tuning(1),
      I1 => \ASR_bottom_indx_reg_n_0_[1]\,
      I2 => \ASR_bottom_indx_reg_n_0_[0]\,
      I3 => A(1),
      I4 => upper_tuning(1),
      I5 => A(0),
      O => ASR_tuning0(16)
    );
\ASR_tuning[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBF80BFBFBFBFBF"
    )
        port map (
      I0 => lower_tuning(2),
      I1 => \ASR_bottom_indx_reg_n_0_[1]\,
      I2 => \ASR_bottom_indx_reg_n_0_[0]\,
      I3 => A(1),
      I4 => upper_tuning(2),
      I5 => A(0),
      O => ASR_tuning0(17)
    );
\ASR_tuning[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBF80BFBFBFBFBF"
    )
        port map (
      I0 => lower_tuning(3),
      I1 => \ASR_bottom_indx_reg_n_0_[1]\,
      I2 => \ASR_bottom_indx_reg_n_0_[0]\,
      I3 => A(1),
      I4 => upper_tuning(3),
      I5 => A(0),
      O => ASR_tuning0(18)
    );
\ASR_tuning[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBF80BFBFBFBFBF"
    )
        port map (
      I0 => lower_tuning(4),
      I1 => \ASR_bottom_indx_reg_n_0_[1]\,
      I2 => \ASR_bottom_indx_reg_n_0_[0]\,
      I3 => A(1),
      I4 => upper_tuning(4),
      I5 => A(0),
      O => ASR_tuning0(19)
    );
\ASR_tuning[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFCFFFDAAA8"
    )
        port map (
      I0 => \ASR_bottom_indx_reg_n_0_[0]\,
      I1 => A(0),
      I2 => upper_tuning(1),
      I3 => A(1),
      I4 => lower_tuning(1),
      I5 => \ASR_bottom_indx_reg_n_0_[1]\,
      O => ASR_tuning0(1)
    );
\ASR_tuning[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFCFFFDAAA8"
    )
        port map (
      I0 => \ASR_bottom_indx_reg_n_0_[0]\,
      I1 => A(0),
      I2 => upper_tuning(2),
      I3 => A(1),
      I4 => lower_tuning(2),
      I5 => \ASR_bottom_indx_reg_n_0_[1]\,
      O => ASR_tuning0(2)
    );
\ASR_tuning[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFCFFFDAAA8"
    )
        port map (
      I0 => \ASR_bottom_indx_reg_n_0_[0]\,
      I1 => A(0),
      I2 => upper_tuning(3),
      I3 => A(1),
      I4 => lower_tuning(3),
      I5 => \ASR_bottom_indx_reg_n_0_[1]\,
      O => ASR_tuning0(3)
    );
\ASR_tuning[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFCFFFDAAA8"
    )
        port map (
      I0 => \ASR_bottom_indx_reg_n_0_[0]\,
      I1 => A(0),
      I2 => upper_tuning(4),
      I3 => A(1),
      I4 => lower_tuning(4),
      I5 => \ASR_bottom_indx_reg_n_0_[1]\,
      O => ASR_tuning0(4)
    );
\ASR_tuning[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEF40EFEFEFEF"
    )
        port map (
      I0 => \ASR_bottom_indx_reg_n_0_[1]\,
      I1 => lower_tuning(0),
      I2 => \ASR_bottom_indx_reg_n_0_[0]\,
      I3 => upper_tuning(0),
      I4 => A(1),
      I5 => A(0),
      O => ASR_tuning0(5)
    );
\ASR_tuning[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEF40EFEFEFEF"
    )
        port map (
      I0 => \ASR_bottom_indx_reg_n_0_[1]\,
      I1 => lower_tuning(1),
      I2 => \ASR_bottom_indx_reg_n_0_[0]\,
      I3 => upper_tuning(1),
      I4 => A(1),
      I5 => A(0),
      O => ASR_tuning0(6)
    );
\ASR_tuning[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEF40EFEFEFEF"
    )
        port map (
      I0 => \ASR_bottom_indx_reg_n_0_[1]\,
      I1 => lower_tuning(2),
      I2 => \ASR_bottom_indx_reg_n_0_[0]\,
      I3 => upper_tuning(2),
      I4 => A(1),
      I5 => A(0),
      O => ASR_tuning0(7)
    );
\ASR_tuning[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEF40EFEFEFEF"
    )
        port map (
      I0 => \ASR_bottom_indx_reg_n_0_[1]\,
      I1 => lower_tuning(3),
      I2 => \ASR_bottom_indx_reg_n_0_[0]\,
      I3 => upper_tuning(3),
      I4 => A(1),
      I5 => A(0),
      O => ASR_tuning0(8)
    );
\ASR_tuning[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEF40EFEFEFEF"
    )
        port map (
      I0 => \ASR_bottom_indx_reg_n_0_[1]\,
      I1 => lower_tuning(4),
      I2 => \ASR_bottom_indx_reg_n_0_[0]\,
      I3 => upper_tuning(4),
      I4 => A(1),
      I5 => A(0),
      O => ASR_tuning0(9)
    );
\ASR_tuning_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(0),
      Q => ASR_tuning(0),
      R => '0'
    );
\ASR_tuning_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(10),
      Q => ASR_tuning(10),
      R => '0'
    );
\ASR_tuning_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(11),
      Q => ASR_tuning(11),
      R => '0'
    );
\ASR_tuning_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(12),
      Q => ASR_tuning(12),
      R => '0'
    );
\ASR_tuning_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(13),
      Q => ASR_tuning(13),
      R => '0'
    );
\ASR_tuning_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(14),
      Q => ASR_tuning(14),
      R => '0'
    );
\ASR_tuning_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(15),
      Q => ASR_tuning(15),
      R => '0'
    );
\ASR_tuning_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(16),
      Q => ASR_tuning(16),
      R => '0'
    );
\ASR_tuning_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(17),
      Q => ASR_tuning(17),
      R => '0'
    );
\ASR_tuning_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(18),
      Q => ASR_tuning(18),
      R => '0'
    );
\ASR_tuning_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(19),
      Q => ASR_tuning(19),
      R => '0'
    );
\ASR_tuning_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(1),
      Q => ASR_tuning(1),
      R => '0'
    );
\ASR_tuning_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(2),
      Q => ASR_tuning(2),
      R => '0'
    );
\ASR_tuning_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(3),
      Q => ASR_tuning(3),
      R => '0'
    );
\ASR_tuning_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(4),
      Q => ASR_tuning(4),
      R => '0'
    );
\ASR_tuning_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(5),
      Q => ASR_tuning(5),
      R => '0'
    );
\ASR_tuning_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(6),
      Q => ASR_tuning(6),
      R => '0'
    );
\ASR_tuning_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(7),
      Q => ASR_tuning(7),
      R => '0'
    );
\ASR_tuning_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(8),
      Q => ASR_tuning(8),
      R => '0'
    );
\ASR_tuning_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ASR_tuning0(9),
      Q => ASR_tuning(9),
      R => '0'
    );
\lower_tuning_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ASR_tuning_set,
      D => payload(0),
      Q => lower_tuning(0),
      R => '0'
    );
\lower_tuning_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ASR_tuning_set,
      D => payload(1),
      Q => lower_tuning(1),
      R => '0'
    );
\lower_tuning_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ASR_tuning_set,
      D => payload(2),
      Q => lower_tuning(2),
      R => '0'
    );
\lower_tuning_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ASR_tuning_set,
      D => payload(3),
      Q => lower_tuning(3),
      R => '0'
    );
\lower_tuning_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ASR_tuning_set,
      D => payload(4),
      Q => lower_tuning(4),
      R => '0'
    );
\upper_tuning[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => payload(13),
      I1 => payload(12),
      I2 => payload(11),
      I3 => payload(10),
      O => ASR_tuning_set
    );
\upper_tuning_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ASR_tuning_set,
      D => payload(5),
      Q => upper_tuning(0),
      R => '0'
    );
\upper_tuning_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ASR_tuning_set,
      D => payload(6),
      Q => upper_tuning(1),
      R => '0'
    );
\upper_tuning_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ASR_tuning_set,
      D => payload(7),
      Q => upper_tuning(2),
      R => '0'
    );
\upper_tuning_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ASR_tuning_set,
      D => payload(8),
      Q => upper_tuning(3),
      R => '0'
    );
\upper_tuning_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ASR_tuning_set,
      D => payload(9),
      Q => upper_tuning(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PUF_controller is
  port (
    ASR_enable : out STD_LOGIC;
    ASR_choice : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ASR_tuning : out STD_LOGIC_VECTOR ( 19 downto 0 );
    ff_reset : out STD_LOGIC;
    write_valid : out STD_LOGIC;
    clk : in STD_LOGIC;
    payload : in STD_LOGIC_VECTOR ( 36 downto 0 );
    read_valid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PUF_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PUF_controller is
  signal \^asr_enable\ : STD_LOGIC;
  signal fill_req_s : STD_LOGIC;
  signal pattern_ready_s : STD_LOGIC;
  signal state : STD_LOGIC;
begin
  ASR_enable <= \^asr_enable\;
pattern_ctrl_unit_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pattern_ctrl_unit
     port map (
      ASR_choice(3 downto 0) => ASR_choice(3 downto 0),
      clk => clk,
      fill_req_s => fill_req_s,
      pattern_ready_reg_0 => \^asr_enable\,
      pattern_ready_s => pattern_ready_s,
      payload(36 downto 0) => payload(36 downto 0),
      state => state
    );
req_ctrl_unit_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_request_ctrl_unit
     port map (
      ASR_enable => \^asr_enable\,
      clk => clk,
      ff_reset => ff_reset,
      fill_req_s => fill_req_s,
      pattern_ready_s => pattern_ready_s,
      payload(3 downto 0) => payload(36 downto 33),
      read_valid => read_valid,
      state => state,
      write_valid => write_valid
    );
tune_ctrl_unit_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tune_ctrl_unit
     port map (
      ASR_tuning(19 downto 0) => ASR_tuning(19 downto 0),
      clk => clk,
      payload(13 downto 10) => payload(36 downto 33),
      payload(9 downto 0) => payload(9 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    payload : in STD_LOGIC_VECTOR ( 63 downto 0 );
    read_valid : in STD_LOGIC;
    write_ready : in STD_LOGIC;
    read_ready : out STD_LOGIC;
    write_valid : out STD_LOGIC;
    ff_reset : out STD_LOGIC;
    ASR_enable : out STD_LOGIC;
    ASR_tuning : out STD_LOGIC_VECTOR ( 19 downto 0 );
    ASR_choice : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_PUF_controller_0_0,PUF_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "PUF_controller,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^write_valid\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of ff_reset : signal is "xilinx.com:signal:reset:1.0 ff_reset RST";
  attribute x_interface_parameter of ff_reset : signal is "XIL_INTERFACENAME ff_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  read_ready <= \^write_valid\;
  write_valid <= \^write_valid\;
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PUF_controller
     port map (
      ASR_choice(3 downto 0) => ASR_choice(3 downto 0),
      ASR_enable => ASR_enable,
      ASR_tuning(19 downto 0) => ASR_tuning(19 downto 0),
      clk => clk,
      ff_reset => ff_reset,
      payload(36 downto 33) => payload(63 downto 60),
      payload(32 downto 0) => payload(32 downto 0),
      read_valid => read_valid,
      write_valid => \^write_valid\
    );
end STRUCTURE;
