-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun May 17 19:28:32 2020
-- Host        : Pine-Ripper running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Projects/Code/ECE544_Proj_02/ece-544-project-2-thongd_abhiraja/code/ece544_project_02/ece544_project_02.srcs/sources_1/bd/embsys/ip/embsys_motor_measure_control_0_0/embsys_motor_measure_control_0_0_sim_netlist.vhdl
-- Design      : embsys_motor_measure_control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_motor_measure_control_0_0_Motor_control is
  port (
    pwm : out STD_LOGIC;
    \slv_reg0_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of embsys_motor_measure_control_0_0_Motor_control : entity is "Motor_control";
end embsys_motor_measure_control_0_0_Motor_control;

architecture STRUCTURE of embsys_motor_measure_control_0_0_Motor_control is
  signal \clk_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \clk_count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal pwm_INST_0_i_1_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_2_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_3_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_count[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clk_count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clk_count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_count[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_count[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_count[7]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of pwm_INST_0_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of pwm_INST_0_i_4 : label is "soft_lutpair3";
begin
\clk_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_count_reg__0\(0),
      O => \clk_count[0]_i_1_n_0\
    );
\clk_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clk_count_reg__0\(0),
      I1 => \clk_count_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\clk_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \clk_count_reg__0\(1),
      I1 => \clk_count_reg__0\(0),
      I2 => \clk_count_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\clk_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \clk_count_reg__0\(2),
      I1 => \clk_count_reg__0\(0),
      I2 => \clk_count_reg__0\(1),
      I3 => \clk_count_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\clk_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \clk_count_reg__0\(3),
      I1 => \clk_count_reg__0\(1),
      I2 => \clk_count_reg__0\(0),
      I3 => \clk_count_reg__0\(2),
      I4 => \clk_count_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\clk_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \clk_count_reg__0\(4),
      I1 => \clk_count_reg__0\(2),
      I2 => \clk_count_reg__0\(0),
      I3 => \clk_count_reg__0\(1),
      I4 => \clk_count_reg__0\(3),
      I5 => \clk_count_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\clk_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \clk_count[7]_i_2_n_0\,
      I1 => \clk_count_reg__0\(4),
      I2 => \clk_count_reg__0\(5),
      I3 => \clk_count_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\clk_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \clk_count[7]_i_2_n_0\,
      I1 => \clk_count_reg__0\(6),
      I2 => \clk_count_reg__0\(5),
      I3 => \clk_count_reg__0\(4),
      I4 => \clk_count_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\clk_count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \clk_count_reg__0\(2),
      I1 => \clk_count_reg__0\(0),
      I2 => \clk_count_reg__0\(1),
      I3 => \clk_count_reg__0\(3),
      O => \clk_count[7]_i_2_n_0\
    );
\clk_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_count[0]_i_1_n_0\,
      Q => \clk_count_reg__0\(0),
      R => SR(0)
    );
\clk_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \clk_count_reg__0\(1),
      R => SR(0)
    );
\clk_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \clk_count_reg__0\(2),
      R => SR(0)
    );
\clk_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \clk_count_reg__0\(3),
      R => SR(0)
    );
\clk_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \clk_count_reg__0\(4),
      R => SR(0)
    );
\clk_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => \clk_count_reg__0\(5),
      R => SR(0)
    );
\clk_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => \clk_count_reg__0\(6),
      R => SR(0)
    );
\clk_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => \clk_count_reg__0\(7),
      R => SR(0)
    );
pwm_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DDF0DDF0D4F04"
    )
        port map (
      I0 => \clk_count_reg__0\(6),
      I1 => \slv_reg0_reg[7]\(6),
      I2 => \clk_count_reg__0\(7),
      I3 => \slv_reg0_reg[7]\(7),
      I4 => pwm_INST_0_i_1_n_0,
      I5 => pwm_INST_0_i_2_n_0,
      O => pwm
    );
pwm_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \slv_reg0_reg[7]\(5),
      I1 => \clk_count_reg__0\(5),
      O => pwm_INST_0_i_1_n_0
    );
pwm_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2BB22B200000000"
    )
        port map (
      I0 => \slv_reg0_reg[7]\(4),
      I1 => \clk_count_reg__0\(4),
      I2 => \slv_reg0_reg[7]\(3),
      I3 => \clk_count_reg__0\(3),
      I4 => pwm_INST_0_i_3_n_0,
      I5 => pwm_INST_0_i_4_n_0,
      O => pwm_INST_0_i_2_n_0
    );
pwm_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF0BFFFF0000BF0B"
    )
        port map (
      I0 => \slv_reg0_reg[7]\(0),
      I1 => \clk_count_reg__0\(0),
      I2 => \clk_count_reg__0\(1),
      I3 => \slv_reg0_reg[7]\(1),
      I4 => \clk_count_reg__0\(2),
      I5 => \slv_reg0_reg[7]\(2),
      O => pwm_INST_0_i_3_n_0
    );
pwm_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \slv_reg0_reg[7]\(5),
      I1 => \clk_count_reg__0\(5),
      O => pwm_INST_0_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_motor_measure_control_0_0_RPM_measure is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    enc_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg3_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \slv_reg0_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of embsys_motor_measure_control_0_0_RPM_measure : entity is "RPM_measure";
end embsys_motor_measure_control_0_0_RPM_measure;

architecture STRUCTURE of embsys_motor_measure_control_0_0_RPM_measure is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal calc_rpm : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \calc_rpm[31]_i_1_n_0\ : STD_LOGIC;
  signal clk_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \clk_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \clk_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \clk_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \clk_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \clk_counter0_carry__2_n_0\ : STD_LOGIC;
  signal \clk_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \clk_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \clk_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \clk_counter0_carry__3_n_0\ : STD_LOGIC;
  signal \clk_counter0_carry__3_n_1\ : STD_LOGIC;
  signal \clk_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \clk_counter0_carry__3_n_3\ : STD_LOGIC;
  signal \clk_counter0_carry__4_n_0\ : STD_LOGIC;
  signal \clk_counter0_carry__4_n_1\ : STD_LOGIC;
  signal \clk_counter0_carry__4_n_2\ : STD_LOGIC;
  signal \clk_counter0_carry__4_n_3\ : STD_LOGIC;
  signal \clk_counter0_carry__5_n_0\ : STD_LOGIC;
  signal \clk_counter0_carry__5_n_1\ : STD_LOGIC;
  signal \clk_counter0_carry__5_n_2\ : STD_LOGIC;
  signal \clk_counter0_carry__5_n_3\ : STD_LOGIC;
  signal \clk_counter0_carry__6_n_2\ : STD_LOGIC;
  signal \clk_counter0_carry__6_n_3\ : STD_LOGIC;
  signal clk_counter0_carry_n_0 : STD_LOGIC;
  signal clk_counter0_carry_n_1 : STD_LOGIC;
  signal clk_counter0_carry_n_2 : STD_LOGIC;
  signal clk_counter0_carry_n_3 : STD_LOGIC;
  signal \clk_counter[31]_i_2_n_0\ : STD_LOGIC;
  signal \clk_counter[31]_i_3_n_0\ : STD_LOGIC;
  signal \clk_counter[31]_i_4_n_0\ : STD_LOGIC;
  signal \clk_counter[31]_i_5_n_0\ : STD_LOGIC;
  signal \clk_counter[31]_i_6_n_0\ : STD_LOGIC;
  signal \clk_counter[31]_i_7_n_0\ : STD_LOGIC;
  signal \clk_counter[31]_i_8_n_0\ : STD_LOGIC;
  signal \clk_counter[31]_i_9_n_0\ : STD_LOGIC;
  signal clk_counter_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \enc_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \enc_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \enc_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal enc_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \enc_counter_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \enc_counter_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \enc_counter_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \enc_counter_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \enc_counter_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \enc_counter_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \enc_counter_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \enc_counter_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \enc_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \enc_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \enc_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \enc_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \enc_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \enc_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \enc_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \enc_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \enc_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \enc_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \enc_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \enc_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \enc_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \enc_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \enc_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \enc_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \enc_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \enc_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \enc_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \enc_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \enc_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \enc_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \enc_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \enc_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \enc_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \enc_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \enc_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \enc_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \enc_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \enc_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \enc_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \enc_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \enc_counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \enc_counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \enc_counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \enc_counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \enc_counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \enc_counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \enc_counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \enc_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \enc_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \enc_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \enc_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \enc_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \enc_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \enc_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \enc_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \enc_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \enc_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \enc_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \enc_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \enc_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \enc_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \enc_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \enc_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal enc_l_state : STD_LOGIC;
  signal \NLW_clk_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_clk_counter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_enc_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_counter[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clk_counter[31]_i_1\ : label is "soft_lutpair5";
begin
  SR(0) <= \^sr\(0);
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(0),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(0),
      I4 => calc_rpm(0),
      I5 => \slv_reg0_reg[31]\(0),
      O => D(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(10),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(10),
      I4 => calc_rpm(10),
      I5 => \slv_reg0_reg[31]\(10),
      O => D(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(11),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(11),
      I4 => calc_rpm(11),
      I5 => \slv_reg0_reg[31]\(11),
      O => D(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(12),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(12),
      I4 => calc_rpm(12),
      I5 => \slv_reg0_reg[31]\(12),
      O => D(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(13),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(13),
      I4 => calc_rpm(13),
      I5 => \slv_reg0_reg[31]\(13),
      O => D(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(14),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(14),
      I4 => calc_rpm(14),
      I5 => \slv_reg0_reg[31]\(14),
      O => D(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(15),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(15),
      I4 => calc_rpm(15),
      I5 => \slv_reg0_reg[31]\(15),
      O => D(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(16),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(16),
      I4 => calc_rpm(16),
      I5 => \slv_reg0_reg[31]\(16),
      O => D(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(17),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(17),
      I4 => calc_rpm(17),
      I5 => \slv_reg0_reg[31]\(17),
      O => D(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(18),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(18),
      I4 => calc_rpm(18),
      I5 => \slv_reg0_reg[31]\(18),
      O => D(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(19),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(19),
      I4 => calc_rpm(19),
      I5 => \slv_reg0_reg[31]\(19),
      O => D(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(1),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(1),
      I4 => calc_rpm(1),
      I5 => \slv_reg0_reg[31]\(1),
      O => D(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(20),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(20),
      I4 => calc_rpm(20),
      I5 => \slv_reg0_reg[31]\(20),
      O => D(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(21),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(21),
      I4 => calc_rpm(21),
      I5 => \slv_reg0_reg[31]\(21),
      O => D(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(22),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(22),
      I4 => calc_rpm(22),
      I5 => \slv_reg0_reg[31]\(22),
      O => D(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(23),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(23),
      I4 => calc_rpm(23),
      I5 => \slv_reg0_reg[31]\(23),
      O => D(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(24),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(24),
      I4 => calc_rpm(24),
      I5 => \slv_reg0_reg[31]\(24),
      O => D(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(25),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(25),
      I4 => calc_rpm(25),
      I5 => \slv_reg0_reg[31]\(25),
      O => D(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(26),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(26),
      I4 => calc_rpm(26),
      I5 => \slv_reg0_reg[31]\(26),
      O => D(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(27),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(27),
      I4 => calc_rpm(27),
      I5 => \slv_reg0_reg[31]\(27),
      O => D(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(28),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(28),
      I4 => calc_rpm(28),
      I5 => \slv_reg0_reg[31]\(28),
      O => D(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(29),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(29),
      I4 => calc_rpm(29),
      I5 => \slv_reg0_reg[31]\(29),
      O => D(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(2),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(2),
      I4 => calc_rpm(2),
      I5 => \slv_reg0_reg[31]\(2),
      O => D(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(30),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(30),
      I4 => calc_rpm(30),
      I5 => \slv_reg0_reg[31]\(30),
      O => D(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(31),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(31),
      I4 => calc_rpm(31),
      I5 => \slv_reg0_reg[31]\(31),
      O => D(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(3),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(3),
      I4 => calc_rpm(3),
      I5 => \slv_reg0_reg[31]\(3),
      O => D(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(4),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(4),
      I4 => calc_rpm(4),
      I5 => \slv_reg0_reg[31]\(4),
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(5),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(5),
      I4 => calc_rpm(5),
      I5 => \slv_reg0_reg[31]\(5),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(6),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(6),
      I4 => calc_rpm(6),
      I5 => \slv_reg0_reg[31]\(6),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(7),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(7),
      I4 => calc_rpm(7),
      I5 => \slv_reg0_reg[31]\(7),
      O => D(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(8),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(8),
      I4 => calc_rpm(8),
      I5 => \slv_reg0_reg[31]\(8),
      O => D(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(9),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(9),
      I4 => calc_rpm(9),
      I5 => \slv_reg0_reg[31]\(9),
      O => D(9)
    );
\calc_rpm[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => clk_counter(0),
      I2 => \clk_counter[31]_i_2_n_0\,
      I3 => \clk_counter[31]_i_3_n_0\,
      I4 => \clk_counter[31]_i_4_n_0\,
      O => \calc_rpm[31]_i_1_n_0\
    );
\calc_rpm_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(0),
      Q => calc_rpm(0),
      R => '0'
    );
\calc_rpm_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(10),
      Q => calc_rpm(10),
      R => '0'
    );
\calc_rpm_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(11),
      Q => calc_rpm(11),
      R => '0'
    );
\calc_rpm_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(12),
      Q => calc_rpm(12),
      R => '0'
    );
\calc_rpm_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(13),
      Q => calc_rpm(13),
      R => '0'
    );
\calc_rpm_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(14),
      Q => calc_rpm(14),
      R => '0'
    );
\calc_rpm_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(15),
      Q => calc_rpm(15),
      R => '0'
    );
\calc_rpm_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(16),
      Q => calc_rpm(16),
      R => '0'
    );
\calc_rpm_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(17),
      Q => calc_rpm(17),
      R => '0'
    );
\calc_rpm_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(18),
      Q => calc_rpm(18),
      R => '0'
    );
\calc_rpm_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(19),
      Q => calc_rpm(19),
      R => '0'
    );
\calc_rpm_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(1),
      Q => calc_rpm(1),
      R => '0'
    );
\calc_rpm_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(20),
      Q => calc_rpm(20),
      R => '0'
    );
\calc_rpm_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(21),
      Q => calc_rpm(21),
      R => '0'
    );
\calc_rpm_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(22),
      Q => calc_rpm(22),
      R => '0'
    );
\calc_rpm_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(23),
      Q => calc_rpm(23),
      R => '0'
    );
\calc_rpm_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(24),
      Q => calc_rpm(24),
      R => '0'
    );
\calc_rpm_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(25),
      Q => calc_rpm(25),
      R => '0'
    );
\calc_rpm_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(26),
      Q => calc_rpm(26),
      R => '0'
    );
\calc_rpm_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(27),
      Q => calc_rpm(27),
      R => '0'
    );
\calc_rpm_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(28),
      Q => calc_rpm(28),
      R => '0'
    );
\calc_rpm_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(29),
      Q => calc_rpm(29),
      R => '0'
    );
\calc_rpm_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(2),
      Q => calc_rpm(2),
      R => '0'
    );
\calc_rpm_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(30),
      Q => calc_rpm(30),
      R => '0'
    );
\calc_rpm_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(31),
      Q => calc_rpm(31),
      R => '0'
    );
\calc_rpm_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(3),
      Q => calc_rpm(3),
      R => '0'
    );
\calc_rpm_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(4),
      Q => calc_rpm(4),
      R => '0'
    );
\calc_rpm_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(5),
      Q => calc_rpm(5),
      R => '0'
    );
\calc_rpm_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(6),
      Q => calc_rpm(6),
      R => '0'
    );
\calc_rpm_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(7),
      Q => calc_rpm(7),
      R => '0'
    );
\calc_rpm_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(8),
      Q => calc_rpm(8),
      R => '0'
    );
\calc_rpm_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \calc_rpm[31]_i_1_n_0\,
      D => enc_counter_reg(9),
      Q => calc_rpm(9),
      R => '0'
    );
clk_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clk_counter0_carry_n_0,
      CO(2) => clk_counter0_carry_n_1,
      CO(1) => clk_counter0_carry_n_2,
      CO(0) => clk_counter0_carry_n_3,
      CYINIT => clk_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => clk_counter(4 downto 1)
    );
\clk_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => clk_counter0_carry_n_0,
      CO(3) => \clk_counter0_carry__0_n_0\,
      CO(2) => \clk_counter0_carry__0_n_1\,
      CO(1) => \clk_counter0_carry__0_n_2\,
      CO(0) => \clk_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => clk_counter(8 downto 5)
    );
\clk_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter0_carry__0_n_0\,
      CO(3) => \clk_counter0_carry__1_n_0\,
      CO(2) => \clk_counter0_carry__1_n_1\,
      CO(1) => \clk_counter0_carry__1_n_2\,
      CO(0) => \clk_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => clk_counter(12 downto 9)
    );
\clk_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter0_carry__1_n_0\,
      CO(3) => \clk_counter0_carry__2_n_0\,
      CO(2) => \clk_counter0_carry__2_n_1\,
      CO(1) => \clk_counter0_carry__2_n_2\,
      CO(0) => \clk_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => clk_counter(16 downto 13)
    );
\clk_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter0_carry__2_n_0\,
      CO(3) => \clk_counter0_carry__3_n_0\,
      CO(2) => \clk_counter0_carry__3_n_1\,
      CO(1) => \clk_counter0_carry__3_n_2\,
      CO(0) => \clk_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => clk_counter(20 downto 17)
    );
\clk_counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter0_carry__3_n_0\,
      CO(3) => \clk_counter0_carry__4_n_0\,
      CO(2) => \clk_counter0_carry__4_n_1\,
      CO(1) => \clk_counter0_carry__4_n_2\,
      CO(0) => \clk_counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => clk_counter(24 downto 21)
    );
\clk_counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter0_carry__4_n_0\,
      CO(3) => \clk_counter0_carry__5_n_0\,
      CO(2) => \clk_counter0_carry__5_n_1\,
      CO(1) => \clk_counter0_carry__5_n_2\,
      CO(0) => \clk_counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => clk_counter(28 downto 25)
    );
\clk_counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_clk_counter0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \clk_counter0_carry__6_n_2\,
      CO(0) => \clk_counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_clk_counter0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => clk_counter(31 downto 29)
    );
\clk_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \clk_counter[31]_i_4_n_0\,
      I1 => \clk_counter[31]_i_3_n_0\,
      I2 => \clk_counter[31]_i_2_n_0\,
      I3 => clk_counter(0),
      O => clk_counter_0(0)
    );
\clk_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(10),
      O => clk_counter_0(10)
    );
\clk_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(11),
      O => clk_counter_0(11)
    );
\clk_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(12),
      O => clk_counter_0(12)
    );
\clk_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(13),
      O => clk_counter_0(13)
    );
\clk_counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(14),
      O => clk_counter_0(14)
    );
\clk_counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(15),
      O => clk_counter_0(15)
    );
\clk_counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(16),
      O => clk_counter_0(16)
    );
\clk_counter[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(17),
      O => clk_counter_0(17)
    );
\clk_counter[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(18),
      O => clk_counter_0(18)
    );
\clk_counter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(19),
      O => clk_counter_0(19)
    );
\clk_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(1),
      O => clk_counter_0(1)
    );
\clk_counter[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(20),
      O => clk_counter_0(20)
    );
\clk_counter[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(21),
      O => clk_counter_0(21)
    );
\clk_counter[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(22),
      O => clk_counter_0(22)
    );
\clk_counter[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(23),
      O => clk_counter_0(23)
    );
\clk_counter[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(24),
      O => clk_counter_0(24)
    );
\clk_counter[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(25),
      O => clk_counter_0(25)
    );
\clk_counter[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(26),
      O => clk_counter_0(26)
    );
\clk_counter[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(27),
      O => clk_counter_0(27)
    );
\clk_counter[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(28),
      O => clk_counter_0(28)
    );
\clk_counter[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(29),
      O => clk_counter_0(29)
    );
\clk_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(2),
      O => clk_counter_0(2)
    );
\clk_counter[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(30),
      O => clk_counter_0(30)
    );
\clk_counter[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(31),
      O => clk_counter_0(31)
    );
\clk_counter[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => clk_counter(13),
      I1 => clk_counter(12),
      I2 => clk_counter(11),
      I3 => clk_counter(10),
      I4 => \clk_counter[31]_i_5_n_0\,
      O => \clk_counter[31]_i_2_n_0\
    );
\clk_counter[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => clk_counter(4),
      I1 => clk_counter(5),
      I2 => clk_counter(2),
      I3 => clk_counter(3),
      I4 => \clk_counter[31]_i_6_n_0\,
      O => \clk_counter[31]_i_3_n_0\
    );
\clk_counter[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \clk_counter[31]_i_7_n_0\,
      I1 => \clk_counter[31]_i_8_n_0\,
      I2 => clk_counter(31),
      I3 => clk_counter(30),
      I4 => clk_counter(1),
      I5 => \clk_counter[31]_i_9_n_0\,
      O => \clk_counter[31]_i_4_n_0\
    );
\clk_counter[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => clk_counter(15),
      I1 => clk_counter(14),
      I2 => clk_counter(17),
      I3 => clk_counter(16),
      O => \clk_counter[31]_i_5_n_0\
    );
\clk_counter[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => clk_counter(7),
      I1 => clk_counter(6),
      I2 => clk_counter(9),
      I3 => clk_counter(8),
      O => \clk_counter[31]_i_6_n_0\
    );
\clk_counter[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => clk_counter(23),
      I1 => clk_counter(22),
      I2 => clk_counter(25),
      I3 => clk_counter(24),
      O => \clk_counter[31]_i_7_n_0\
    );
\clk_counter[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => clk_counter(19),
      I1 => clk_counter(18),
      I2 => clk_counter(20),
      I3 => clk_counter(21),
      O => \clk_counter[31]_i_8_n_0\
    );
\clk_counter[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clk_counter(27),
      I1 => clk_counter(26),
      I2 => clk_counter(29),
      I3 => clk_counter(28),
      O => \clk_counter[31]_i_9_n_0\
    );
\clk_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(3),
      O => clk_counter_0(3)
    );
\clk_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(4),
      O => clk_counter_0(4)
    );
\clk_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(5),
      O => clk_counter_0(5)
    );
\clk_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(6),
      O => clk_counter_0(6)
    );
\clk_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(7),
      O => clk_counter_0(7)
    );
\clk_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(8),
      O => clk_counter_0(8)
    );
\clk_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => data0(9),
      O => clk_counter_0(9)
    );
\clk_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(0),
      Q => clk_counter(0),
      R => \^sr\(0)
    );
\clk_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(10),
      Q => clk_counter(10),
      R => \^sr\(0)
    );
\clk_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(11),
      Q => clk_counter(11),
      R => \^sr\(0)
    );
\clk_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(12),
      Q => clk_counter(12),
      R => \^sr\(0)
    );
\clk_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(13),
      Q => clk_counter(13),
      R => \^sr\(0)
    );
\clk_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(14),
      Q => clk_counter(14),
      R => \^sr\(0)
    );
\clk_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(15),
      Q => clk_counter(15),
      R => \^sr\(0)
    );
\clk_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(16),
      Q => clk_counter(16),
      R => \^sr\(0)
    );
\clk_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(17),
      Q => clk_counter(17),
      R => \^sr\(0)
    );
\clk_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(18),
      Q => clk_counter(18),
      R => \^sr\(0)
    );
\clk_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(19),
      Q => clk_counter(19),
      R => \^sr\(0)
    );
\clk_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(1),
      Q => clk_counter(1),
      R => \^sr\(0)
    );
\clk_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(20),
      Q => clk_counter(20),
      R => \^sr\(0)
    );
\clk_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(21),
      Q => clk_counter(21),
      R => \^sr\(0)
    );
\clk_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(22),
      Q => clk_counter(22),
      R => \^sr\(0)
    );
\clk_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(23),
      Q => clk_counter(23),
      R => \^sr\(0)
    );
\clk_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(24),
      Q => clk_counter(24),
      R => \^sr\(0)
    );
\clk_counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(25),
      Q => clk_counter(25),
      R => \^sr\(0)
    );
\clk_counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(26),
      Q => clk_counter(26),
      R => \^sr\(0)
    );
\clk_counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(27),
      Q => clk_counter(27),
      R => \^sr\(0)
    );
\clk_counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(28),
      Q => clk_counter(28),
      R => \^sr\(0)
    );
\clk_counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(29),
      Q => clk_counter(29),
      R => \^sr\(0)
    );
\clk_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(2),
      Q => clk_counter(2),
      R => \^sr\(0)
    );
\clk_counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(30),
      Q => clk_counter(30),
      R => \^sr\(0)
    );
\clk_counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(31),
      Q => clk_counter(31),
      R => \^sr\(0)
    );
\clk_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(3),
      Q => clk_counter(3),
      R => \^sr\(0)
    );
\clk_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(4),
      Q => clk_counter(4),
      R => \^sr\(0)
    );
\clk_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(5),
      Q => clk_counter(5),
      R => \^sr\(0)
    );
\clk_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(6),
      Q => clk_counter(6),
      R => \^sr\(0)
    );
\clk_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(7),
      Q => clk_counter(7),
      R => \^sr\(0)
    );
\clk_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(8),
      Q => clk_counter(8),
      R => \^sr\(0)
    );
\clk_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_counter_0(9),
      Q => clk_counter(9),
      R => \^sr\(0)
    );
\enc_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => clk_counter(0),
      I1 => \clk_counter[31]_i_2_n_0\,
      I2 => \clk_counter[31]_i_3_n_0\,
      I3 => \clk_counter[31]_i_4_n_0\,
      I4 => s00_axi_aresetn,
      O => \enc_counter[0]_i_1_n_0\
    );
\enc_counter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => enc_in,
      I1 => enc_l_state,
      O => \enc_counter[0]_i_2_n_0\
    );
\enc_counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => enc_counter_reg(0),
      O => \enc_counter[0]_i_4_n_0\
    );
\enc_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[0]_i_3_n_7\,
      Q => enc_counter_reg(0),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \enc_counter_reg[0]_i_3_n_0\,
      CO(2) => \enc_counter_reg[0]_i_3_n_1\,
      CO(1) => \enc_counter_reg[0]_i_3_n_2\,
      CO(0) => \enc_counter_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \enc_counter_reg[0]_i_3_n_4\,
      O(2) => \enc_counter_reg[0]_i_3_n_5\,
      O(1) => \enc_counter_reg[0]_i_3_n_6\,
      O(0) => \enc_counter_reg[0]_i_3_n_7\,
      S(3 downto 1) => enc_counter_reg(3 downto 1),
      S(0) => \enc_counter[0]_i_4_n_0\
    );
\enc_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[8]_i_1_n_5\,
      Q => enc_counter_reg(10),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[8]_i_1_n_4\,
      Q => enc_counter_reg(11),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[12]_i_1_n_7\,
      Q => enc_counter_reg(12),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \enc_counter_reg[8]_i_1_n_0\,
      CO(3) => \enc_counter_reg[12]_i_1_n_0\,
      CO(2) => \enc_counter_reg[12]_i_1_n_1\,
      CO(1) => \enc_counter_reg[12]_i_1_n_2\,
      CO(0) => \enc_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \enc_counter_reg[12]_i_1_n_4\,
      O(2) => \enc_counter_reg[12]_i_1_n_5\,
      O(1) => \enc_counter_reg[12]_i_1_n_6\,
      O(0) => \enc_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => enc_counter_reg(15 downto 12)
    );
\enc_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[12]_i_1_n_6\,
      Q => enc_counter_reg(13),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[12]_i_1_n_5\,
      Q => enc_counter_reg(14),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[12]_i_1_n_4\,
      Q => enc_counter_reg(15),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[16]_i_1_n_7\,
      Q => enc_counter_reg(16),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \enc_counter_reg[12]_i_1_n_0\,
      CO(3) => \enc_counter_reg[16]_i_1_n_0\,
      CO(2) => \enc_counter_reg[16]_i_1_n_1\,
      CO(1) => \enc_counter_reg[16]_i_1_n_2\,
      CO(0) => \enc_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \enc_counter_reg[16]_i_1_n_4\,
      O(2) => \enc_counter_reg[16]_i_1_n_5\,
      O(1) => \enc_counter_reg[16]_i_1_n_6\,
      O(0) => \enc_counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => enc_counter_reg(19 downto 16)
    );
\enc_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[16]_i_1_n_6\,
      Q => enc_counter_reg(17),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[16]_i_1_n_5\,
      Q => enc_counter_reg(18),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[16]_i_1_n_4\,
      Q => enc_counter_reg(19),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[0]_i_3_n_6\,
      Q => enc_counter_reg(1),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[20]_i_1_n_7\,
      Q => enc_counter_reg(20),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \enc_counter_reg[16]_i_1_n_0\,
      CO(3) => \enc_counter_reg[20]_i_1_n_0\,
      CO(2) => \enc_counter_reg[20]_i_1_n_1\,
      CO(1) => \enc_counter_reg[20]_i_1_n_2\,
      CO(0) => \enc_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \enc_counter_reg[20]_i_1_n_4\,
      O(2) => \enc_counter_reg[20]_i_1_n_5\,
      O(1) => \enc_counter_reg[20]_i_1_n_6\,
      O(0) => \enc_counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => enc_counter_reg(23 downto 20)
    );
\enc_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[20]_i_1_n_6\,
      Q => enc_counter_reg(21),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[20]_i_1_n_5\,
      Q => enc_counter_reg(22),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[20]_i_1_n_4\,
      Q => enc_counter_reg(23),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[24]_i_1_n_7\,
      Q => enc_counter_reg(24),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \enc_counter_reg[20]_i_1_n_0\,
      CO(3) => \enc_counter_reg[24]_i_1_n_0\,
      CO(2) => \enc_counter_reg[24]_i_1_n_1\,
      CO(1) => \enc_counter_reg[24]_i_1_n_2\,
      CO(0) => \enc_counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \enc_counter_reg[24]_i_1_n_4\,
      O(2) => \enc_counter_reg[24]_i_1_n_5\,
      O(1) => \enc_counter_reg[24]_i_1_n_6\,
      O(0) => \enc_counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => enc_counter_reg(27 downto 24)
    );
\enc_counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[24]_i_1_n_6\,
      Q => enc_counter_reg(25),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[24]_i_1_n_5\,
      Q => enc_counter_reg(26),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[24]_i_1_n_4\,
      Q => enc_counter_reg(27),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[28]_i_1_n_7\,
      Q => enc_counter_reg(28),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \enc_counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_enc_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \enc_counter_reg[28]_i_1_n_1\,
      CO(1) => \enc_counter_reg[28]_i_1_n_2\,
      CO(0) => \enc_counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \enc_counter_reg[28]_i_1_n_4\,
      O(2) => \enc_counter_reg[28]_i_1_n_5\,
      O(1) => \enc_counter_reg[28]_i_1_n_6\,
      O(0) => \enc_counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => enc_counter_reg(31 downto 28)
    );
\enc_counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[28]_i_1_n_6\,
      Q => enc_counter_reg(29),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[0]_i_3_n_5\,
      Q => enc_counter_reg(2),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[28]_i_1_n_5\,
      Q => enc_counter_reg(30),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[28]_i_1_n_4\,
      Q => enc_counter_reg(31),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[0]_i_3_n_4\,
      Q => enc_counter_reg(3),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[4]_i_1_n_7\,
      Q => enc_counter_reg(4),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \enc_counter_reg[0]_i_3_n_0\,
      CO(3) => \enc_counter_reg[4]_i_1_n_0\,
      CO(2) => \enc_counter_reg[4]_i_1_n_1\,
      CO(1) => \enc_counter_reg[4]_i_1_n_2\,
      CO(0) => \enc_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \enc_counter_reg[4]_i_1_n_4\,
      O(2) => \enc_counter_reg[4]_i_1_n_5\,
      O(1) => \enc_counter_reg[4]_i_1_n_6\,
      O(0) => \enc_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => enc_counter_reg(7 downto 4)
    );
\enc_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[4]_i_1_n_6\,
      Q => enc_counter_reg(5),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[4]_i_1_n_5\,
      Q => enc_counter_reg(6),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[4]_i_1_n_4\,
      Q => enc_counter_reg(7),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[8]_i_1_n_7\,
      Q => enc_counter_reg(8),
      R => \enc_counter[0]_i_1_n_0\
    );
\enc_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \enc_counter_reg[4]_i_1_n_0\,
      CO(3) => \enc_counter_reg[8]_i_1_n_0\,
      CO(2) => \enc_counter_reg[8]_i_1_n_1\,
      CO(1) => \enc_counter_reg[8]_i_1_n_2\,
      CO(0) => \enc_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \enc_counter_reg[8]_i_1_n_4\,
      O(2) => \enc_counter_reg[8]_i_1_n_5\,
      O(1) => \enc_counter_reg[8]_i_1_n_6\,
      O(0) => \enc_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => enc_counter_reg(11 downto 8)
    );
\enc_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \enc_counter[0]_i_2_n_0\,
      D => \enc_counter_reg[8]_i_1_n_6\,
      Q => enc_counter_reg(9),
      R => \enc_counter[0]_i_1_n_0\
    );
enc_l_state_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enc_in,
      Q => enc_l_state,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_motor_measure_control_0_0_motor_wrapper is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    motor_direction_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm : out STD_LOGIC;
    enc_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg3_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg0_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of embsys_motor_measure_control_0_0_motor_wrapper : entity is "motor_wrapper";
end embsys_motor_measure_control_0_0_motor_wrapper;

architecture STRUCTURE of embsys_motor_measure_control_0_0_motor_wrapper is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  SR(0) <= \^sr\(0);
motor_control: entity work.embsys_motor_measure_control_0_0_Motor_control
     port map (
      SR(0) => \^sr\(0),
      clk => clk,
      pwm => pwm,
      \slv_reg0_reg[7]\(7 downto 0) => \slv_reg0_reg[31]\(7 downto 0)
    );
motor_direction_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => motor_direction_out,
      R => '0'
    );
rpm_measure: entity work.embsys_motor_measure_control_0_0_RPM_measure
     port map (
      D(31 downto 0) => D(31 downto 0),
      Q(31 downto 0) => Q(31 downto 0),
      SR(0) => \^sr\(0),
      axi_araddr(1 downto 0) => axi_araddr(1 downto 0),
      clk => clk,
      enc_in => enc_in,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg0_reg[31]\(31 downto 0) => \slv_reg0_reg[31]\(31 downto 0),
      \slv_reg3_reg[31]\(31 downto 0) => \slv_reg3_reg[31]\(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_motor_measure_control_0_0_motor_measure_control_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    motor_direction_out : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    clk : in STD_LOGIC;
    enc_in : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of embsys_motor_measure_control_0_0_motor_measure_control_v1_0_S00_AXI : entity is "motor_measure_control_v1_0_S00_AXI";
end embsys_motor_measure_control_0_0_motor_measure_control_v1_0_S00_AXI;

architecture STRUCTURE of embsys_motor_measure_control_0_0_motor_measure_control_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg2[31]_i_2\ : label is "soft_lutpair6";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => clear
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
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
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => clear
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => clear
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
      R => clear
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => clear
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => clear
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => clear
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
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
      R => clear
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => clear
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => clear
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => clear
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => clear
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => clear
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => clear
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => clear
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => clear
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => clear
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => clear
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => clear
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => clear
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => clear
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => clear
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => clear
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => clear
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => clear
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => clear
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => clear
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => clear
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => clear
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => clear
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => clear
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => clear
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => clear
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => clear
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => clear
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => clear
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => clear
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => clear
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => clear
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => clear
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => clear
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => clear
    );
nolabel_line416: entity work.embsys_motor_measure_control_0_0_motor_wrapper
     port map (
      D(31 downto 0) => reg_data_out(31 downto 0),
      Q(31 downto 0) => slv_reg2(31 downto 0),
      SR(0) => clear,
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      clk => clk,
      enc_in => enc_in,
      motor_direction_out => motor_direction_out,
      pwm => pwm,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg0_reg[31]\(31 downto 0) => slv_reg0(31 downto 0),
      \slv_reg3_reg[31]\(31 downto 0) => slv_reg3(31 downto 0)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => clear
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => clear
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => clear
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => clear
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => clear
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => clear
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => clear
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => clear
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => clear
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => clear
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => clear
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => clear
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => clear
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => clear
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => clear
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => clear
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => clear
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => clear
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => clear
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => clear
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => clear
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => clear
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => clear
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => clear
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => clear
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => clear
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => clear
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => clear
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => clear
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => clear
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => clear
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => clear
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => clear
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => clear
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => clear
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => clear
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => clear
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => clear
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => clear
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => clear
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => clear
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => clear
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => clear
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => clear
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => clear
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => clear
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => clear
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => clear
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => clear
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => clear
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => clear
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => clear
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => clear
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => clear
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => clear
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => clear
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => clear
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => clear
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => clear
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => clear
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => clear
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => clear
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => clear
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => clear
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(31)
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => clear
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => clear
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => clear
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => clear
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => clear
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => clear
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => clear
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => clear
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => clear
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => clear
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => clear
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => clear
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => clear
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => clear
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => clear
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => clear
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => clear
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => clear
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => clear
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => clear
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => clear
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => clear
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => clear
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => clear
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => clear
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => clear
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => clear
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => clear
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => clear
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => clear
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => clear
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => clear
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_motor_measure_control_0_0_motor_measure_control_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    motor_direction_out : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    clk : in STD_LOGIC;
    enc_in : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of embsys_motor_measure_control_0_0_motor_measure_control_v1_0 : entity is "motor_measure_control_v1_0";
end embsys_motor_measure_control_0_0_motor_measure_control_v1_0;

architecture STRUCTURE of embsys_motor_measure_control_0_0_motor_measure_control_v1_0 is
begin
motor_measure_control_v1_0_S00_AXI_inst: entity work.embsys_motor_measure_control_0_0_motor_measure_control_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      clk => clk,
      enc_in => enc_in,
      motor_direction_out => motor_direction_out,
      pwm => pwm,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_motor_measure_control_0_0 is
  port (
    clk : in STD_LOGIC;
    pwm : out STD_LOGIC;
    enc_in : in STD_LOGIC;
    motor_direction_out : out STD_LOGIC;
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
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of embsys_motor_measure_control_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of embsys_motor_measure_control_0_0 : entity is "embsys_motor_measure_control_0_0,motor_measure_control_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of embsys_motor_measure_control_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of embsys_motor_measure_control_0_0 : entity is "motor_measure_control_v1_0,Vivado 2018.2";
end embsys_motor_measure_control_0_0;

architecture STRUCTURE of embsys_motor_measure_control_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.embsys_motor_measure_control_0_0_motor_measure_control_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      clk => clk,
      enc_in => enc_in,
      motor_direction_out => motor_direction_out,
      pwm => pwm,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
