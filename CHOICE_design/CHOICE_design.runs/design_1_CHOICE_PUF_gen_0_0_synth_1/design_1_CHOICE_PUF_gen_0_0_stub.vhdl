-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat May  3 21:33:50 2025
-- Host        : FT-6K64K74 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_CHOICE_PUF_gen_0_0_stub.vhdl
-- Design      : design_1_CHOICE_PUF_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    ff_reset : in STD_LOGIC;
    chip_enable : in STD_LOGIC;
    ASR_length_conf : in STD_LOGIC_VECTOR ( 19 downto 0 );
    ASR_data_conf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    puf_response : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,ff_reset,chip_enable,ASR_length_conf[19:0],ASR_data_conf[3:0],puf_response[127:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "CHOICE_PUF_gen,Vivado 2020.1";
begin
end;
