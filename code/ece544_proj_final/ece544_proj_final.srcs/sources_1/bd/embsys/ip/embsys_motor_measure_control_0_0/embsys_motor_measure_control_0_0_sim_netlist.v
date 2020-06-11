// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun May 17 19:28:32 2020
// Host        : Pine-Ripper running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Projects/Code/ECE544_Proj_02/ece-544-project-2-thongd_abhiraja/code/ece544_project_02/ece544_project_02.srcs/sources_1/bd/embsys/ip/embsys_motor_measure_control_0_0/embsys_motor_measure_control_0_0_sim_netlist.v
// Design      : embsys_motor_measure_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "embsys_motor_measure_control_0_0,motor_measure_control_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "motor_measure_control_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module embsys_motor_measure_control_0_0
   (clk,
    pwm,
    enc_in,
    motor_direction_out,
    s00_axi_awaddr,
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
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1" *) input clk;
  output pwm;
  input enc_in;
  output motor_direction_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire clk;
  wire enc_in;
  wire motor_direction_out;
  wire pwm;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  embsys_motor_measure_control_0_0_motor_measure_control_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .clk(clk),
        .enc_in(enc_in),
        .motor_direction_out(motor_direction_out),
        .pwm(pwm),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "Motor_control" *) 
module embsys_motor_measure_control_0_0_Motor_control
   (pwm,
    \slv_reg0_reg[7] ,
    SR,
    clk);
  output pwm;
  input [7:0]\slv_reg0_reg[7] ;
  input [0:0]SR;
  input clk;

  wire [0:0]SR;
  wire clk;
  wire \clk_count[0]_i_1_n_0 ;
  wire \clk_count[7]_i_2_n_0 ;
  wire [7:0]clk_count_reg__0;
  wire [7:1]p_0_in__0;
  wire pwm;
  wire pwm_INST_0_i_1_n_0;
  wire pwm_INST_0_i_2_n_0;
  wire pwm_INST_0_i_3_n_0;
  wire pwm_INST_0_i_4_n_0;
  wire [7:0]\slv_reg0_reg[7] ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_count[0]_i_1 
       (.I0(clk_count_reg__0[0]),
        .O(\clk_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_count[1]_i_1 
       (.I0(clk_count_reg__0[0]),
        .I1(clk_count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_count[2]_i_1 
       (.I0(clk_count_reg__0[1]),
        .I1(clk_count_reg__0[0]),
        .I2(clk_count_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_count[3]_i_1 
       (.I0(clk_count_reg__0[2]),
        .I1(clk_count_reg__0[0]),
        .I2(clk_count_reg__0[1]),
        .I3(clk_count_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clk_count[4]_i_1 
       (.I0(clk_count_reg__0[3]),
        .I1(clk_count_reg__0[1]),
        .I2(clk_count_reg__0[0]),
        .I3(clk_count_reg__0[2]),
        .I4(clk_count_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clk_count[5]_i_1 
       (.I0(clk_count_reg__0[4]),
        .I1(clk_count_reg__0[2]),
        .I2(clk_count_reg__0[0]),
        .I3(clk_count_reg__0[1]),
        .I4(clk_count_reg__0[3]),
        .I5(clk_count_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_count[6]_i_1 
       (.I0(\clk_count[7]_i_2_n_0 ),
        .I1(clk_count_reg__0[4]),
        .I2(clk_count_reg__0[5]),
        .I3(clk_count_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clk_count[7]_i_1 
       (.I0(\clk_count[7]_i_2_n_0 ),
        .I1(clk_count_reg__0[6]),
        .I2(clk_count_reg__0[5]),
        .I3(clk_count_reg__0[4]),
        .I4(clk_count_reg__0[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \clk_count[7]_i_2 
       (.I0(clk_count_reg__0[2]),
        .I1(clk_count_reg__0[0]),
        .I2(clk_count_reg__0[1]),
        .I3(clk_count_reg__0[3]),
        .O(\clk_count[7]_i_2_n_0 ));
  FDRE \clk_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count[0]_i_1_n_0 ),
        .Q(clk_count_reg__0[0]),
        .R(SR));
  FDRE \clk_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(clk_count_reg__0[1]),
        .R(SR));
  FDRE \clk_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(clk_count_reg__0[2]),
        .R(SR));
  FDRE \clk_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(clk_count_reg__0[3]),
        .R(SR));
  FDRE \clk_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(clk_count_reg__0[4]),
        .R(SR));
  FDRE \clk_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(clk_count_reg__0[5]),
        .R(SR));
  FDRE \clk_count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(clk_count_reg__0[6]),
        .R(SR));
  FDRE \clk_count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(clk_count_reg__0[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hDF0DDF0DDF0D4F04)) 
    pwm_INST_0
       (.I0(clk_count_reg__0[6]),
        .I1(\slv_reg0_reg[7] [6]),
        .I2(clk_count_reg__0[7]),
        .I3(\slv_reg0_reg[7] [7]),
        .I4(pwm_INST_0_i_1_n_0),
        .I5(pwm_INST_0_i_2_n_0),
        .O(pwm));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    pwm_INST_0_i_1
       (.I0(\slv_reg0_reg[7] [5]),
        .I1(clk_count_reg__0[5]),
        .O(pwm_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hB2BB22B200000000)) 
    pwm_INST_0_i_2
       (.I0(\slv_reg0_reg[7] [4]),
        .I1(clk_count_reg__0[4]),
        .I2(\slv_reg0_reg[7] [3]),
        .I3(clk_count_reg__0[3]),
        .I4(pwm_INST_0_i_3_n_0),
        .I5(pwm_INST_0_i_4_n_0),
        .O(pwm_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hBF0BFFFF0000BF0B)) 
    pwm_INST_0_i_3
       (.I0(\slv_reg0_reg[7] [0]),
        .I1(clk_count_reg__0[0]),
        .I2(clk_count_reg__0[1]),
        .I3(\slv_reg0_reg[7] [1]),
        .I4(clk_count_reg__0[2]),
        .I5(\slv_reg0_reg[7] [2]),
        .O(pwm_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    pwm_INST_0_i_4
       (.I0(\slv_reg0_reg[7] [5]),
        .I1(clk_count_reg__0[5]),
        .O(pwm_INST_0_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "RPM_measure" *) 
module embsys_motor_measure_control_0_0_RPM_measure
   (SR,
    D,
    enc_in,
    clk,
    s00_axi_aresetn,
    \slv_reg3_reg[31] ,
    axi_araddr,
    Q,
    \slv_reg0_reg[31] );
  output [0:0]SR;
  output [31:0]D;
  input enc_in;
  input clk;
  input s00_axi_aresetn;
  input [31:0]\slv_reg3_reg[31] ;
  input [1:0]axi_araddr;
  input [31:0]Q;
  input [31:0]\slv_reg0_reg[31] ;

  wire [31:0]D;
  wire [31:0]Q;
  wire [0:0]SR;
  wire [1:0]axi_araddr;
  wire [31:0]calc_rpm;
  wire \calc_rpm[31]_i_1_n_0 ;
  wire clk;
  wire [31:0]clk_counter;
  wire clk_counter0_carry__0_n_0;
  wire clk_counter0_carry__0_n_1;
  wire clk_counter0_carry__0_n_2;
  wire clk_counter0_carry__0_n_3;
  wire clk_counter0_carry__1_n_0;
  wire clk_counter0_carry__1_n_1;
  wire clk_counter0_carry__1_n_2;
  wire clk_counter0_carry__1_n_3;
  wire clk_counter0_carry__2_n_0;
  wire clk_counter0_carry__2_n_1;
  wire clk_counter0_carry__2_n_2;
  wire clk_counter0_carry__2_n_3;
  wire clk_counter0_carry__3_n_0;
  wire clk_counter0_carry__3_n_1;
  wire clk_counter0_carry__3_n_2;
  wire clk_counter0_carry__3_n_3;
  wire clk_counter0_carry__4_n_0;
  wire clk_counter0_carry__4_n_1;
  wire clk_counter0_carry__4_n_2;
  wire clk_counter0_carry__4_n_3;
  wire clk_counter0_carry__5_n_0;
  wire clk_counter0_carry__5_n_1;
  wire clk_counter0_carry__5_n_2;
  wire clk_counter0_carry__5_n_3;
  wire clk_counter0_carry__6_n_2;
  wire clk_counter0_carry__6_n_3;
  wire clk_counter0_carry_n_0;
  wire clk_counter0_carry_n_1;
  wire clk_counter0_carry_n_2;
  wire clk_counter0_carry_n_3;
  wire \clk_counter[31]_i_2_n_0 ;
  wire \clk_counter[31]_i_3_n_0 ;
  wire \clk_counter[31]_i_4_n_0 ;
  wire \clk_counter[31]_i_5_n_0 ;
  wire \clk_counter[31]_i_6_n_0 ;
  wire \clk_counter[31]_i_7_n_0 ;
  wire \clk_counter[31]_i_8_n_0 ;
  wire \clk_counter[31]_i_9_n_0 ;
  wire [31:0]clk_counter_0;
  wire [31:1]data0;
  wire \enc_counter[0]_i_1_n_0 ;
  wire \enc_counter[0]_i_2_n_0 ;
  wire \enc_counter[0]_i_4_n_0 ;
  wire [31:0]enc_counter_reg;
  wire \enc_counter_reg[0]_i_3_n_0 ;
  wire \enc_counter_reg[0]_i_3_n_1 ;
  wire \enc_counter_reg[0]_i_3_n_2 ;
  wire \enc_counter_reg[0]_i_3_n_3 ;
  wire \enc_counter_reg[0]_i_3_n_4 ;
  wire \enc_counter_reg[0]_i_3_n_5 ;
  wire \enc_counter_reg[0]_i_3_n_6 ;
  wire \enc_counter_reg[0]_i_3_n_7 ;
  wire \enc_counter_reg[12]_i_1_n_0 ;
  wire \enc_counter_reg[12]_i_1_n_1 ;
  wire \enc_counter_reg[12]_i_1_n_2 ;
  wire \enc_counter_reg[12]_i_1_n_3 ;
  wire \enc_counter_reg[12]_i_1_n_4 ;
  wire \enc_counter_reg[12]_i_1_n_5 ;
  wire \enc_counter_reg[12]_i_1_n_6 ;
  wire \enc_counter_reg[12]_i_1_n_7 ;
  wire \enc_counter_reg[16]_i_1_n_0 ;
  wire \enc_counter_reg[16]_i_1_n_1 ;
  wire \enc_counter_reg[16]_i_1_n_2 ;
  wire \enc_counter_reg[16]_i_1_n_3 ;
  wire \enc_counter_reg[16]_i_1_n_4 ;
  wire \enc_counter_reg[16]_i_1_n_5 ;
  wire \enc_counter_reg[16]_i_1_n_6 ;
  wire \enc_counter_reg[16]_i_1_n_7 ;
  wire \enc_counter_reg[20]_i_1_n_0 ;
  wire \enc_counter_reg[20]_i_1_n_1 ;
  wire \enc_counter_reg[20]_i_1_n_2 ;
  wire \enc_counter_reg[20]_i_1_n_3 ;
  wire \enc_counter_reg[20]_i_1_n_4 ;
  wire \enc_counter_reg[20]_i_1_n_5 ;
  wire \enc_counter_reg[20]_i_1_n_6 ;
  wire \enc_counter_reg[20]_i_1_n_7 ;
  wire \enc_counter_reg[24]_i_1_n_0 ;
  wire \enc_counter_reg[24]_i_1_n_1 ;
  wire \enc_counter_reg[24]_i_1_n_2 ;
  wire \enc_counter_reg[24]_i_1_n_3 ;
  wire \enc_counter_reg[24]_i_1_n_4 ;
  wire \enc_counter_reg[24]_i_1_n_5 ;
  wire \enc_counter_reg[24]_i_1_n_6 ;
  wire \enc_counter_reg[24]_i_1_n_7 ;
  wire \enc_counter_reg[28]_i_1_n_1 ;
  wire \enc_counter_reg[28]_i_1_n_2 ;
  wire \enc_counter_reg[28]_i_1_n_3 ;
  wire \enc_counter_reg[28]_i_1_n_4 ;
  wire \enc_counter_reg[28]_i_1_n_5 ;
  wire \enc_counter_reg[28]_i_1_n_6 ;
  wire \enc_counter_reg[28]_i_1_n_7 ;
  wire \enc_counter_reg[4]_i_1_n_0 ;
  wire \enc_counter_reg[4]_i_1_n_1 ;
  wire \enc_counter_reg[4]_i_1_n_2 ;
  wire \enc_counter_reg[4]_i_1_n_3 ;
  wire \enc_counter_reg[4]_i_1_n_4 ;
  wire \enc_counter_reg[4]_i_1_n_5 ;
  wire \enc_counter_reg[4]_i_1_n_6 ;
  wire \enc_counter_reg[4]_i_1_n_7 ;
  wire \enc_counter_reg[8]_i_1_n_0 ;
  wire \enc_counter_reg[8]_i_1_n_1 ;
  wire \enc_counter_reg[8]_i_1_n_2 ;
  wire \enc_counter_reg[8]_i_1_n_3 ;
  wire \enc_counter_reg[8]_i_1_n_4 ;
  wire \enc_counter_reg[8]_i_1_n_5 ;
  wire \enc_counter_reg[8]_i_1_n_6 ;
  wire \enc_counter_reg[8]_i_1_n_7 ;
  wire enc_in;
  wire enc_l_state;
  wire s00_axi_aresetn;
  wire [31:0]\slv_reg0_reg[31] ;
  wire [31:0]\slv_reg3_reg[31] ;
  wire [3:2]NLW_clk_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_clk_counter0_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_enc_counter_reg[28]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[0]_i_1 
       (.I0(\slv_reg3_reg[31] [0]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[0]),
        .I4(calc_rpm[0]),
        .I5(\slv_reg0_reg[31] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[10]_i_1 
       (.I0(\slv_reg3_reg[31] [10]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[10]),
        .I4(calc_rpm[10]),
        .I5(\slv_reg0_reg[31] [10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[11]_i_1 
       (.I0(\slv_reg3_reg[31] [11]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[11]),
        .I4(calc_rpm[11]),
        .I5(\slv_reg0_reg[31] [11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_reg3_reg[31] [12]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[12]),
        .I4(calc_rpm[12]),
        .I5(\slv_reg0_reg[31] [12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg3_reg[31] [13]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[13]),
        .I4(calc_rpm[13]),
        .I5(\slv_reg0_reg[31] [13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_reg3_reg[31] [14]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[14]),
        .I4(calc_rpm[14]),
        .I5(\slv_reg0_reg[31] [14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[15]_i_1 
       (.I0(\slv_reg3_reg[31] [15]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[15]),
        .I4(calc_rpm[15]),
        .I5(\slv_reg0_reg[31] [15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[16]_i_1 
       (.I0(\slv_reg3_reg[31] [16]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[16]),
        .I4(calc_rpm[16]),
        .I5(\slv_reg0_reg[31] [16]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[17]_i_1 
       (.I0(\slv_reg3_reg[31] [17]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[17]),
        .I4(calc_rpm[17]),
        .I5(\slv_reg0_reg[31] [17]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg3_reg[31] [18]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[18]),
        .I4(calc_rpm[18]),
        .I5(\slv_reg0_reg[31] [18]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg3_reg[31] [19]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[19]),
        .I4(calc_rpm[19]),
        .I5(\slv_reg0_reg[31] [19]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[1]_i_1 
       (.I0(\slv_reg3_reg[31] [1]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[1]),
        .I4(calc_rpm[1]),
        .I5(\slv_reg0_reg[31] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg3_reg[31] [20]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[20]),
        .I4(calc_rpm[20]),
        .I5(\slv_reg0_reg[31] [20]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg3_reg[31] [21]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[21]),
        .I4(calc_rpm[21]),
        .I5(\slv_reg0_reg[31] [21]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg3_reg[31] [22]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[22]),
        .I4(calc_rpm[22]),
        .I5(\slv_reg0_reg[31] [22]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg3_reg[31] [23]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[23]),
        .I4(calc_rpm[23]),
        .I5(\slv_reg0_reg[31] [23]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg3_reg[31] [24]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[24]),
        .I4(calc_rpm[24]),
        .I5(\slv_reg0_reg[31] [24]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg3_reg[31] [25]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[25]),
        .I4(calc_rpm[25]),
        .I5(\slv_reg0_reg[31] [25]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg3_reg[31] [26]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[26]),
        .I4(calc_rpm[26]),
        .I5(\slv_reg0_reg[31] [26]),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg3_reg[31] [27]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[27]),
        .I4(calc_rpm[27]),
        .I5(\slv_reg0_reg[31] [27]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg3_reg[31] [28]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[28]),
        .I4(calc_rpm[28]),
        .I5(\slv_reg0_reg[31] [28]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg3_reg[31] [29]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[29]),
        .I4(calc_rpm[29]),
        .I5(\slv_reg0_reg[31] [29]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[2]_i_1 
       (.I0(\slv_reg3_reg[31] [2]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[2]),
        .I4(calc_rpm[2]),
        .I5(\slv_reg0_reg[31] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg3_reg[31] [30]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[30]),
        .I4(calc_rpm[30]),
        .I5(\slv_reg0_reg[31] [30]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[31]_i_1 
       (.I0(\slv_reg3_reg[31] [31]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[31]),
        .I4(calc_rpm[31]),
        .I5(\slv_reg0_reg[31] [31]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[3]_i_1 
       (.I0(\slv_reg3_reg[31] [3]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[3]),
        .I4(calc_rpm[3]),
        .I5(\slv_reg0_reg[31] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[4]_i_1 
       (.I0(\slv_reg3_reg[31] [4]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[4]),
        .I4(calc_rpm[4]),
        .I5(\slv_reg0_reg[31] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[5]_i_1 
       (.I0(\slv_reg3_reg[31] [5]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[5]),
        .I4(calc_rpm[5]),
        .I5(\slv_reg0_reg[31] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[6]_i_1 
       (.I0(\slv_reg3_reg[31] [6]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[6]),
        .I4(calc_rpm[6]),
        .I5(\slv_reg0_reg[31] [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[7]_i_1 
       (.I0(\slv_reg3_reg[31] [7]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[7]),
        .I4(calc_rpm[7]),
        .I5(\slv_reg0_reg[31] [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[8]_i_1 
       (.I0(\slv_reg3_reg[31] [8]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[8]),
        .I4(calc_rpm[8]),
        .I5(\slv_reg0_reg[31] [8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[9]_i_1 
       (.I0(\slv_reg3_reg[31] [9]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[9]),
        .I4(calc_rpm[9]),
        .I5(\slv_reg0_reg[31] [9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \calc_rpm[31]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(clk_counter[0]),
        .I2(\clk_counter[31]_i_2_n_0 ),
        .I3(\clk_counter[31]_i_3_n_0 ),
        .I4(\clk_counter[31]_i_4_n_0 ),
        .O(\calc_rpm[31]_i_1_n_0 ));
  FDRE \calc_rpm_reg[0] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[0]),
        .Q(calc_rpm[0]),
        .R(1'b0));
  FDRE \calc_rpm_reg[10] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[10]),
        .Q(calc_rpm[10]),
        .R(1'b0));
  FDRE \calc_rpm_reg[11] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[11]),
        .Q(calc_rpm[11]),
        .R(1'b0));
  FDRE \calc_rpm_reg[12] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[12]),
        .Q(calc_rpm[12]),
        .R(1'b0));
  FDRE \calc_rpm_reg[13] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[13]),
        .Q(calc_rpm[13]),
        .R(1'b0));
  FDRE \calc_rpm_reg[14] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[14]),
        .Q(calc_rpm[14]),
        .R(1'b0));
  FDRE \calc_rpm_reg[15] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[15]),
        .Q(calc_rpm[15]),
        .R(1'b0));
  FDRE \calc_rpm_reg[16] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[16]),
        .Q(calc_rpm[16]),
        .R(1'b0));
  FDRE \calc_rpm_reg[17] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[17]),
        .Q(calc_rpm[17]),
        .R(1'b0));
  FDRE \calc_rpm_reg[18] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[18]),
        .Q(calc_rpm[18]),
        .R(1'b0));
  FDRE \calc_rpm_reg[19] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[19]),
        .Q(calc_rpm[19]),
        .R(1'b0));
  FDRE \calc_rpm_reg[1] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[1]),
        .Q(calc_rpm[1]),
        .R(1'b0));
  FDRE \calc_rpm_reg[20] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[20]),
        .Q(calc_rpm[20]),
        .R(1'b0));
  FDRE \calc_rpm_reg[21] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[21]),
        .Q(calc_rpm[21]),
        .R(1'b0));
  FDRE \calc_rpm_reg[22] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[22]),
        .Q(calc_rpm[22]),
        .R(1'b0));
  FDRE \calc_rpm_reg[23] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[23]),
        .Q(calc_rpm[23]),
        .R(1'b0));
  FDRE \calc_rpm_reg[24] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[24]),
        .Q(calc_rpm[24]),
        .R(1'b0));
  FDRE \calc_rpm_reg[25] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[25]),
        .Q(calc_rpm[25]),
        .R(1'b0));
  FDRE \calc_rpm_reg[26] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[26]),
        .Q(calc_rpm[26]),
        .R(1'b0));
  FDRE \calc_rpm_reg[27] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[27]),
        .Q(calc_rpm[27]),
        .R(1'b0));
  FDRE \calc_rpm_reg[28] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[28]),
        .Q(calc_rpm[28]),
        .R(1'b0));
  FDRE \calc_rpm_reg[29] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[29]),
        .Q(calc_rpm[29]),
        .R(1'b0));
  FDRE \calc_rpm_reg[2] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[2]),
        .Q(calc_rpm[2]),
        .R(1'b0));
  FDRE \calc_rpm_reg[30] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[30]),
        .Q(calc_rpm[30]),
        .R(1'b0));
  FDRE \calc_rpm_reg[31] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[31]),
        .Q(calc_rpm[31]),
        .R(1'b0));
  FDRE \calc_rpm_reg[3] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[3]),
        .Q(calc_rpm[3]),
        .R(1'b0));
  FDRE \calc_rpm_reg[4] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[4]),
        .Q(calc_rpm[4]),
        .R(1'b0));
  FDRE \calc_rpm_reg[5] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[5]),
        .Q(calc_rpm[5]),
        .R(1'b0));
  FDRE \calc_rpm_reg[6] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[6]),
        .Q(calc_rpm[6]),
        .R(1'b0));
  FDRE \calc_rpm_reg[7] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[7]),
        .Q(calc_rpm[7]),
        .R(1'b0));
  FDRE \calc_rpm_reg[8] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[8]),
        .Q(calc_rpm[8]),
        .R(1'b0));
  FDRE \calc_rpm_reg[9] 
       (.C(clk),
        .CE(\calc_rpm[31]_i_1_n_0 ),
        .D(enc_counter_reg[9]),
        .Q(calc_rpm[9]),
        .R(1'b0));
  CARRY4 clk_counter0_carry
       (.CI(1'b0),
        .CO({clk_counter0_carry_n_0,clk_counter0_carry_n_1,clk_counter0_carry_n_2,clk_counter0_carry_n_3}),
        .CYINIT(clk_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(clk_counter[4:1]));
  CARRY4 clk_counter0_carry__0
       (.CI(clk_counter0_carry_n_0),
        .CO({clk_counter0_carry__0_n_0,clk_counter0_carry__0_n_1,clk_counter0_carry__0_n_2,clk_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(clk_counter[8:5]));
  CARRY4 clk_counter0_carry__1
       (.CI(clk_counter0_carry__0_n_0),
        .CO({clk_counter0_carry__1_n_0,clk_counter0_carry__1_n_1,clk_counter0_carry__1_n_2,clk_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(clk_counter[12:9]));
  CARRY4 clk_counter0_carry__2
       (.CI(clk_counter0_carry__1_n_0),
        .CO({clk_counter0_carry__2_n_0,clk_counter0_carry__2_n_1,clk_counter0_carry__2_n_2,clk_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(clk_counter[16:13]));
  CARRY4 clk_counter0_carry__3
       (.CI(clk_counter0_carry__2_n_0),
        .CO({clk_counter0_carry__3_n_0,clk_counter0_carry__3_n_1,clk_counter0_carry__3_n_2,clk_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(clk_counter[20:17]));
  CARRY4 clk_counter0_carry__4
       (.CI(clk_counter0_carry__3_n_0),
        .CO({clk_counter0_carry__4_n_0,clk_counter0_carry__4_n_1,clk_counter0_carry__4_n_2,clk_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(clk_counter[24:21]));
  CARRY4 clk_counter0_carry__5
       (.CI(clk_counter0_carry__4_n_0),
        .CO({clk_counter0_carry__5_n_0,clk_counter0_carry__5_n_1,clk_counter0_carry__5_n_2,clk_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(clk_counter[28:25]));
  CARRY4 clk_counter0_carry__6
       (.CI(clk_counter0_carry__5_n_0),
        .CO({NLW_clk_counter0_carry__6_CO_UNCONNECTED[3:2],clk_counter0_carry__6_n_2,clk_counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_clk_counter0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,clk_counter[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \clk_counter[0]_i_1 
       (.I0(\clk_counter[31]_i_4_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(\clk_counter[31]_i_2_n_0 ),
        .I3(clk_counter[0]),
        .O(clk_counter_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[10]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[10]),
        .O(clk_counter_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[11]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[11]),
        .O(clk_counter_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[12]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[12]),
        .O(clk_counter_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[13]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[13]),
        .O(clk_counter_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[14]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[14]),
        .O(clk_counter_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[15]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[15]),
        .O(clk_counter_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[16]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[16]),
        .O(clk_counter_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[17]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[17]),
        .O(clk_counter_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[18]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[18]),
        .O(clk_counter_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[19]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[19]),
        .O(clk_counter_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[1]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[1]),
        .O(clk_counter_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[20]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[20]),
        .O(clk_counter_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[21]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[21]),
        .O(clk_counter_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[22]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[22]),
        .O(clk_counter_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[23]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[23]),
        .O(clk_counter_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[24]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[24]),
        .O(clk_counter_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[25]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[25]),
        .O(clk_counter_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[26]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[26]),
        .O(clk_counter_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[27]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[27]),
        .O(clk_counter_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[28]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[28]),
        .O(clk_counter_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[29]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[29]),
        .O(clk_counter_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[2]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[2]),
        .O(clk_counter_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[30]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[30]),
        .O(clk_counter_0[30]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[31]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[31]),
        .O(clk_counter_0[31]));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \clk_counter[31]_i_2 
       (.I0(clk_counter[13]),
        .I1(clk_counter[12]),
        .I2(clk_counter[11]),
        .I3(clk_counter[10]),
        .I4(\clk_counter[31]_i_5_n_0 ),
        .O(\clk_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_counter[31]_i_3 
       (.I0(clk_counter[4]),
        .I1(clk_counter[5]),
        .I2(clk_counter[2]),
        .I3(clk_counter[3]),
        .I4(\clk_counter[31]_i_6_n_0 ),
        .O(\clk_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_counter[31]_i_4 
       (.I0(\clk_counter[31]_i_7_n_0 ),
        .I1(\clk_counter[31]_i_8_n_0 ),
        .I2(clk_counter[31]),
        .I3(clk_counter[30]),
        .I4(clk_counter[1]),
        .I5(\clk_counter[31]_i_9_n_0 ),
        .O(\clk_counter[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_counter[31]_i_5 
       (.I0(clk_counter[15]),
        .I1(clk_counter[14]),
        .I2(clk_counter[17]),
        .I3(clk_counter[16]),
        .O(\clk_counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \clk_counter[31]_i_6 
       (.I0(clk_counter[7]),
        .I1(clk_counter[6]),
        .I2(clk_counter[9]),
        .I3(clk_counter[8]),
        .O(\clk_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_counter[31]_i_7 
       (.I0(clk_counter[23]),
        .I1(clk_counter[22]),
        .I2(clk_counter[25]),
        .I3(clk_counter[24]),
        .O(\clk_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \clk_counter[31]_i_8 
       (.I0(clk_counter[19]),
        .I1(clk_counter[18]),
        .I2(clk_counter[20]),
        .I3(clk_counter[21]),
        .O(\clk_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_counter[31]_i_9 
       (.I0(clk_counter[27]),
        .I1(clk_counter[26]),
        .I2(clk_counter[29]),
        .I3(clk_counter[28]),
        .O(\clk_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[3]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[3]),
        .O(clk_counter_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[4]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[4]),
        .O(clk_counter_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[5]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[5]),
        .O(clk_counter_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[6]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[6]),
        .O(clk_counter_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[7]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[7]),
        .O(clk_counter_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[8]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[8]),
        .O(clk_counter_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[9]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(data0[9]),
        .O(clk_counter_0[9]));
  FDRE \clk_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[0]),
        .Q(clk_counter[0]),
        .R(SR));
  FDRE \clk_counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[10]),
        .Q(clk_counter[10]),
        .R(SR));
  FDRE \clk_counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[11]),
        .Q(clk_counter[11]),
        .R(SR));
  FDRE \clk_counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[12]),
        .Q(clk_counter[12]),
        .R(SR));
  FDRE \clk_counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[13]),
        .Q(clk_counter[13]),
        .R(SR));
  FDRE \clk_counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[14]),
        .Q(clk_counter[14]),
        .R(SR));
  FDRE \clk_counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[15]),
        .Q(clk_counter[15]),
        .R(SR));
  FDRE \clk_counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[16]),
        .Q(clk_counter[16]),
        .R(SR));
  FDRE \clk_counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[17]),
        .Q(clk_counter[17]),
        .R(SR));
  FDRE \clk_counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[18]),
        .Q(clk_counter[18]),
        .R(SR));
  FDRE \clk_counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[19]),
        .Q(clk_counter[19]),
        .R(SR));
  FDRE \clk_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[1]),
        .Q(clk_counter[1]),
        .R(SR));
  FDRE \clk_counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[20]),
        .Q(clk_counter[20]),
        .R(SR));
  FDRE \clk_counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[21]),
        .Q(clk_counter[21]),
        .R(SR));
  FDRE \clk_counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[22]),
        .Q(clk_counter[22]),
        .R(SR));
  FDRE \clk_counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[23]),
        .Q(clk_counter[23]),
        .R(SR));
  FDRE \clk_counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[24]),
        .Q(clk_counter[24]),
        .R(SR));
  FDRE \clk_counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[25]),
        .Q(clk_counter[25]),
        .R(SR));
  FDRE \clk_counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[26]),
        .Q(clk_counter[26]),
        .R(SR));
  FDRE \clk_counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[27]),
        .Q(clk_counter[27]),
        .R(SR));
  FDRE \clk_counter_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[28]),
        .Q(clk_counter[28]),
        .R(SR));
  FDRE \clk_counter_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[29]),
        .Q(clk_counter[29]),
        .R(SR));
  FDRE \clk_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[2]),
        .Q(clk_counter[2]),
        .R(SR));
  FDRE \clk_counter_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[30]),
        .Q(clk_counter[30]),
        .R(SR));
  FDRE \clk_counter_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[31]),
        .Q(clk_counter[31]),
        .R(SR));
  FDRE \clk_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[3]),
        .Q(clk_counter[3]),
        .R(SR));
  FDRE \clk_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[4]),
        .Q(clk_counter[4]),
        .R(SR));
  FDRE \clk_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[5]),
        .Q(clk_counter[5]),
        .R(SR));
  FDRE \clk_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[6]),
        .Q(clk_counter[6]),
        .R(SR));
  FDRE \clk_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[7]),
        .Q(clk_counter[7]),
        .R(SR));
  FDRE \clk_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[8]),
        .Q(clk_counter[8]),
        .R(SR));
  FDRE \clk_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter_0[9]),
        .Q(clk_counter[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \enc_counter[0]_i_1 
       (.I0(clk_counter[0]),
        .I1(\clk_counter[31]_i_2_n_0 ),
        .I2(\clk_counter[31]_i_3_n_0 ),
        .I3(\clk_counter[31]_i_4_n_0 ),
        .I4(s00_axi_aresetn),
        .O(\enc_counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \enc_counter[0]_i_2 
       (.I0(enc_in),
        .I1(enc_l_state),
        .O(\enc_counter[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \enc_counter[0]_i_4 
       (.I0(enc_counter_reg[0]),
        .O(\enc_counter[0]_i_4_n_0 ));
  FDRE \enc_counter_reg[0] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[0]_i_3_n_7 ),
        .Q(enc_counter_reg[0]),
        .R(\enc_counter[0]_i_1_n_0 ));
  CARRY4 \enc_counter_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\enc_counter_reg[0]_i_3_n_0 ,\enc_counter_reg[0]_i_3_n_1 ,\enc_counter_reg[0]_i_3_n_2 ,\enc_counter_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\enc_counter_reg[0]_i_3_n_4 ,\enc_counter_reg[0]_i_3_n_5 ,\enc_counter_reg[0]_i_3_n_6 ,\enc_counter_reg[0]_i_3_n_7 }),
        .S({enc_counter_reg[3:1],\enc_counter[0]_i_4_n_0 }));
  FDRE \enc_counter_reg[10] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[8]_i_1_n_5 ),
        .Q(enc_counter_reg[10]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[11] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[8]_i_1_n_4 ),
        .Q(enc_counter_reg[11]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[12] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[12]_i_1_n_7 ),
        .Q(enc_counter_reg[12]),
        .R(\enc_counter[0]_i_1_n_0 ));
  CARRY4 \enc_counter_reg[12]_i_1 
       (.CI(\enc_counter_reg[8]_i_1_n_0 ),
        .CO({\enc_counter_reg[12]_i_1_n_0 ,\enc_counter_reg[12]_i_1_n_1 ,\enc_counter_reg[12]_i_1_n_2 ,\enc_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\enc_counter_reg[12]_i_1_n_4 ,\enc_counter_reg[12]_i_1_n_5 ,\enc_counter_reg[12]_i_1_n_6 ,\enc_counter_reg[12]_i_1_n_7 }),
        .S(enc_counter_reg[15:12]));
  FDRE \enc_counter_reg[13] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[12]_i_1_n_6 ),
        .Q(enc_counter_reg[13]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[14] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[12]_i_1_n_5 ),
        .Q(enc_counter_reg[14]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[15] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[12]_i_1_n_4 ),
        .Q(enc_counter_reg[15]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[16] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[16]_i_1_n_7 ),
        .Q(enc_counter_reg[16]),
        .R(\enc_counter[0]_i_1_n_0 ));
  CARRY4 \enc_counter_reg[16]_i_1 
       (.CI(\enc_counter_reg[12]_i_1_n_0 ),
        .CO({\enc_counter_reg[16]_i_1_n_0 ,\enc_counter_reg[16]_i_1_n_1 ,\enc_counter_reg[16]_i_1_n_2 ,\enc_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\enc_counter_reg[16]_i_1_n_4 ,\enc_counter_reg[16]_i_1_n_5 ,\enc_counter_reg[16]_i_1_n_6 ,\enc_counter_reg[16]_i_1_n_7 }),
        .S(enc_counter_reg[19:16]));
  FDRE \enc_counter_reg[17] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[16]_i_1_n_6 ),
        .Q(enc_counter_reg[17]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[18] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[16]_i_1_n_5 ),
        .Q(enc_counter_reg[18]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[19] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[16]_i_1_n_4 ),
        .Q(enc_counter_reg[19]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[1] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[0]_i_3_n_6 ),
        .Q(enc_counter_reg[1]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[20] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[20]_i_1_n_7 ),
        .Q(enc_counter_reg[20]),
        .R(\enc_counter[0]_i_1_n_0 ));
  CARRY4 \enc_counter_reg[20]_i_1 
       (.CI(\enc_counter_reg[16]_i_1_n_0 ),
        .CO({\enc_counter_reg[20]_i_1_n_0 ,\enc_counter_reg[20]_i_1_n_1 ,\enc_counter_reg[20]_i_1_n_2 ,\enc_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\enc_counter_reg[20]_i_1_n_4 ,\enc_counter_reg[20]_i_1_n_5 ,\enc_counter_reg[20]_i_1_n_6 ,\enc_counter_reg[20]_i_1_n_7 }),
        .S(enc_counter_reg[23:20]));
  FDRE \enc_counter_reg[21] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[20]_i_1_n_6 ),
        .Q(enc_counter_reg[21]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[22] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[20]_i_1_n_5 ),
        .Q(enc_counter_reg[22]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[23] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[20]_i_1_n_4 ),
        .Q(enc_counter_reg[23]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[24] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[24]_i_1_n_7 ),
        .Q(enc_counter_reg[24]),
        .R(\enc_counter[0]_i_1_n_0 ));
  CARRY4 \enc_counter_reg[24]_i_1 
       (.CI(\enc_counter_reg[20]_i_1_n_0 ),
        .CO({\enc_counter_reg[24]_i_1_n_0 ,\enc_counter_reg[24]_i_1_n_1 ,\enc_counter_reg[24]_i_1_n_2 ,\enc_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\enc_counter_reg[24]_i_1_n_4 ,\enc_counter_reg[24]_i_1_n_5 ,\enc_counter_reg[24]_i_1_n_6 ,\enc_counter_reg[24]_i_1_n_7 }),
        .S(enc_counter_reg[27:24]));
  FDRE \enc_counter_reg[25] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[24]_i_1_n_6 ),
        .Q(enc_counter_reg[25]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[26] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[24]_i_1_n_5 ),
        .Q(enc_counter_reg[26]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[27] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[24]_i_1_n_4 ),
        .Q(enc_counter_reg[27]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[28] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[28]_i_1_n_7 ),
        .Q(enc_counter_reg[28]),
        .R(\enc_counter[0]_i_1_n_0 ));
  CARRY4 \enc_counter_reg[28]_i_1 
       (.CI(\enc_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_enc_counter_reg[28]_i_1_CO_UNCONNECTED [3],\enc_counter_reg[28]_i_1_n_1 ,\enc_counter_reg[28]_i_1_n_2 ,\enc_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\enc_counter_reg[28]_i_1_n_4 ,\enc_counter_reg[28]_i_1_n_5 ,\enc_counter_reg[28]_i_1_n_6 ,\enc_counter_reg[28]_i_1_n_7 }),
        .S(enc_counter_reg[31:28]));
  FDRE \enc_counter_reg[29] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[28]_i_1_n_6 ),
        .Q(enc_counter_reg[29]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[2] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[0]_i_3_n_5 ),
        .Q(enc_counter_reg[2]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[30] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[28]_i_1_n_5 ),
        .Q(enc_counter_reg[30]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[31] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[28]_i_1_n_4 ),
        .Q(enc_counter_reg[31]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[3] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[0]_i_3_n_4 ),
        .Q(enc_counter_reg[3]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[4] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[4]_i_1_n_7 ),
        .Q(enc_counter_reg[4]),
        .R(\enc_counter[0]_i_1_n_0 ));
  CARRY4 \enc_counter_reg[4]_i_1 
       (.CI(\enc_counter_reg[0]_i_3_n_0 ),
        .CO({\enc_counter_reg[4]_i_1_n_0 ,\enc_counter_reg[4]_i_1_n_1 ,\enc_counter_reg[4]_i_1_n_2 ,\enc_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\enc_counter_reg[4]_i_1_n_4 ,\enc_counter_reg[4]_i_1_n_5 ,\enc_counter_reg[4]_i_1_n_6 ,\enc_counter_reg[4]_i_1_n_7 }),
        .S(enc_counter_reg[7:4]));
  FDRE \enc_counter_reg[5] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[4]_i_1_n_6 ),
        .Q(enc_counter_reg[5]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[6] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[4]_i_1_n_5 ),
        .Q(enc_counter_reg[6]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[7] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[4]_i_1_n_4 ),
        .Q(enc_counter_reg[7]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE \enc_counter_reg[8] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[8]_i_1_n_7 ),
        .Q(enc_counter_reg[8]),
        .R(\enc_counter[0]_i_1_n_0 ));
  CARRY4 \enc_counter_reg[8]_i_1 
       (.CI(\enc_counter_reg[4]_i_1_n_0 ),
        .CO({\enc_counter_reg[8]_i_1_n_0 ,\enc_counter_reg[8]_i_1_n_1 ,\enc_counter_reg[8]_i_1_n_2 ,\enc_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\enc_counter_reg[8]_i_1_n_4 ,\enc_counter_reg[8]_i_1_n_5 ,\enc_counter_reg[8]_i_1_n_6 ,\enc_counter_reg[8]_i_1_n_7 }),
        .S(enc_counter_reg[11:8]));
  FDRE \enc_counter_reg[9] 
       (.C(clk),
        .CE(\enc_counter[0]_i_2_n_0 ),
        .D(\enc_counter_reg[8]_i_1_n_6 ),
        .Q(enc_counter_reg[9]),
        .R(\enc_counter[0]_i_1_n_0 ));
  FDRE enc_l_state_reg
       (.C(clk),
        .CE(1'b1),
        .D(enc_in),
        .Q(enc_l_state),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "motor_measure_control_v1_0" *) 
module embsys_motor_measure_control_0_0_motor_measure_control_v1_0
   (S_AXI_AWREADY,
    motor_direction_out,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    pwm,
    s00_axi_rvalid,
    s00_axi_bvalid,
    clk,
    enc_in,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output motor_direction_out;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output pwm;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input clk;
  input enc_in;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire clk;
  wire enc_in;
  wire motor_direction_out;
  wire pwm;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  embsys_motor_measure_control_0_0_motor_measure_control_v1_0_S00_AXI motor_measure_control_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .clk(clk),
        .enc_in(enc_in),
        .motor_direction_out(motor_direction_out),
        .pwm(pwm),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "motor_measure_control_v1_0_S00_AXI" *) 
module embsys_motor_measure_control_0_0_motor_measure_control_v1_0_S00_AXI
   (S_AXI_AWREADY,
    motor_direction_out,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    pwm,
    s00_axi_rvalid,
    s00_axi_bvalid,
    clk,
    enc_in,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output motor_direction_out;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output pwm;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input clk;
  input enc_in;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire clear;
  wire clk;
  wire enc_in;
  wire motor_direction_out;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire pwm;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(clear));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(clear));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
        .R(clear));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(clear));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(clear));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(clear));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(clear));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(clear));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(clear));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(clear));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(clear));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(clear));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(clear));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(clear));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(clear));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(clear));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(clear));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(clear));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(clear));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(clear));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(clear));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(clear));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(clear));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(clear));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(clear));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(clear));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(clear));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(clear));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(clear));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(clear));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(clear));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(clear));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(clear));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(clear));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(clear));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(clear));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(clear));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(clear));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(clear));
  embsys_motor_measure_control_0_0_motor_wrapper nolabel_line416
       (.D(reg_data_out),
        .Q(slv_reg2),
        .SR(clear),
        .axi_araddr(axi_araddr),
        .clk(clk),
        .enc_in(enc_in),
        .motor_direction_out(motor_direction_out),
        .pwm(pwm),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\slv_reg0_reg[31] (slv_reg0),
        .\slv_reg3_reg[31] (slv_reg3));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(clear));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(clear));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(clear));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(clear));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(clear));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(clear));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(clear));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(clear));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(clear));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(clear));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(clear));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(clear));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(clear));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(clear));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(clear));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(clear));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(clear));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(clear));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(clear));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(clear));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(clear));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(clear));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(clear));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(clear));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(clear));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(clear));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(clear));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(clear));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(clear));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(clear));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(clear));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(clear));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(clear));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(clear));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(clear));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(clear));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(clear));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(clear));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(clear));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(clear));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(clear));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(clear));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(clear));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(clear));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(clear));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(clear));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(clear));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(clear));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(clear));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(clear));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(clear));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(clear));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(clear));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(clear));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(clear));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(clear));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(clear));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(clear));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(clear));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(clear));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(clear));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(clear));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(clear));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(clear));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(clear));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(clear));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(clear));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(clear));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(clear));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(clear));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(clear));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(clear));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(clear));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(clear));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(clear));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(clear));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(clear));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(clear));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(clear));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(clear));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(clear));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(clear));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(clear));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(clear));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(clear));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(clear));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(clear));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(clear));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(clear));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(clear));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(clear));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(clear));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(clear));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(clear));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(clear));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(clear));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "motor_wrapper" *) 
module embsys_motor_measure_control_0_0_motor_wrapper
   (SR,
    motor_direction_out,
    D,
    pwm,
    enc_in,
    clk,
    Q,
    s00_axi_aresetn,
    \slv_reg3_reg[31] ,
    axi_araddr,
    \slv_reg0_reg[31] );
  output [0:0]SR;
  output motor_direction_out;
  output [31:0]D;
  output pwm;
  input enc_in;
  input clk;
  input [31:0]Q;
  input s00_axi_aresetn;
  input [31:0]\slv_reg3_reg[31] ;
  input [1:0]axi_araddr;
  input [31:0]\slv_reg0_reg[31] ;

  wire [31:0]D;
  wire [31:0]Q;
  wire [0:0]SR;
  wire [1:0]axi_araddr;
  wire clk;
  wire enc_in;
  wire motor_direction_out;
  wire pwm;
  wire s00_axi_aresetn;
  wire [31:0]\slv_reg0_reg[31] ;
  wire [31:0]\slv_reg3_reg[31] ;

  embsys_motor_measure_control_0_0_Motor_control motor_control
       (.SR(SR),
        .clk(clk),
        .pwm(pwm),
        .\slv_reg0_reg[7] (\slv_reg0_reg[31] [7:0]));
  FDRE motor_direction_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(motor_direction_out),
        .R(1'b0));
  embsys_motor_measure_control_0_0_RPM_measure rpm_measure
       (.D(D),
        .Q(Q),
        .SR(SR),
        .axi_araddr(axi_araddr),
        .clk(clk),
        .enc_in(enc_in),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\slv_reg0_reg[31] (\slv_reg0_reg[31] ),
        .\slv_reg3_reg[31] (\slv_reg3_reg[31] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
