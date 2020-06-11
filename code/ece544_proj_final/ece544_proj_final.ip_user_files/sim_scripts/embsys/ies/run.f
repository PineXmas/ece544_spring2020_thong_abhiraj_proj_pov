-makelib ies_lib/xil_defaultlib -sv \
  "D:/Programs/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Programs/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Programs/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Programs/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/microblaze_v10_0_7 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b649/hdl/microblaze_v10_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_microblaze_0_0/sim/embsys_microblaze_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/5bf9/src/rgbpwm.v" \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/5bf9/src/sevensegment.v" \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/5bf9/src/debounce.v" \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/5bf9/hdl/nexys4IO_v2_0_S00_AXI.v" \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/5bf9/hdl/nexys4IO_v2_0.v" \
  "../../../bd/embsys/ip/embsys_nexys4IO_0_0/sim/embsys_nexys4IO_0_0.v" \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_pmod_bridge_0_0/src/pmod_concat.v" \
  "../../../bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_pmod_bridge_0_0/sim/PmodENC_pmod_bridge_0_0.v" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_axi_gpio_0_0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_axi_gpio_0_0/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_axi_gpio_0_0/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_19 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_axi_gpio_0_0/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_axi_gpio_0_0/sim/PmodENC_axi_gpio_0_0.vhd" \
-endlib
-makelib ies_lib/xlslice_v1_0_1 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_xlslice_0_0/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_xlslice_0_0/sim/PmodENC_xlslice_0_0.v" \
  "../../../bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_xlslice_0_1/sim/PmodENC_xlslice_0_1.v" \
  "../../../bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_xlslice_0_2/sim/PmodENC_xlslice_0_2.v" \
  "../../../bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_xlslice_t_0_0/sim/PmodENC_xlslice_t_0_0.v" \
-endlib
-makelib ies_lib/xlconcat_v2_1_1 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_xlconcat_0_0/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_xlconcat_0_0/sim/PmodENC_xlconcat_0_0.v" \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/4239/src/PmodENC.v" \
  "../../../bd/embsys/ip/embsys_PmodENC_0_0/sim/embsys_PmodENC_0_0.v" \
-endlib
-makelib ies_lib/dist_mem_gen_v8_0_12 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_11 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_quad_spi_v3_2_16 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/axi_quad_spi_v3_2_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/sim/PmodOLEDrgb_axi_quad_spi_0_0.vhd" \
  "../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_gpio_0_1/sim/PmodOLEDrgb_axi_gpio_0_1.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_pmod_bridge_0_0/sim/PmodOLEDrgb_pmod_bridge_0_0.v" \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/d9e9/hdl/PmodOLEDrgb_v1_0.v" \
  "../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/sim/embsys_PmodOLEDrgb_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_axi_gpio_0_0/sim/embsys_axi_gpio_0_0.vhd" \
-endlib
-makelib ies_lib/axi_timer_v2_0_19 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/0a2c/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_axi_timer_0_0/sim/embsys_axi_timer_0_0.vhd" \
-endlib
-makelib ies_lib/axi_uartlite_v2_0_21 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/a15e/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_axi_uartlite_0_0/sim/embsys_axi_uartlite_0_0.vhd" \
-endlib
-makelib ies_lib/axi_intc_v4_1_11 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/2fec/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_microblaze_0_axi_intc_0/sim/embsys_microblaze_0_axi_intc_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_microblaze_0_xlconcat_0/sim/embsys_microblaze_0_xlconcat_0.v" \
-endlib
-makelib ies_lib/mdm_v3_2_14 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/5125/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_mdm_1_0/sim/embsys_mdm_1_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0.v" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_rst_clk_wiz_1_100M_0/sim/embsys_rst_clk_wiz_1_100M_0.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_17 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_16 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_18 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_xbar_0/sim/embsys_xbar_0.v" \
-endlib
-makelib ies_lib/lmb_v10_v3_0_9 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_dlmb_v10_0/sim/embsys_dlmb_v10_0.vhd" \
  "../../../bd/embsys/ip/embsys_ilmb_v10_0/sim/embsys_ilmb_v10_0.vhd" \
-endlib
-makelib ies_lib/lmb_bram_if_cntlr_v4_0_15 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_dlmb_bram_if_cntlr_0/sim/embsys_dlmb_bram_if_cntlr_0.vhd" \
  "../../../bd/embsys/ip/embsys_ilmb_bram_if_cntlr_0/sim/embsys_ilmb_bram_if_cntlr_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_1 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_lmb_bram_0/sim/embsys_lmb_bram_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_axi_gpio_1_0/sim/embsys_axi_gpio_1_0.vhd" \
  "../../../bd/embsys/ip/embsys_axi_timer_1_0/sim/embsys_axi_timer_1_0.vhd" \
-endlib
-makelib ies_lib/axi_timebase_wdt_v3_0_9 \
  "../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/1118/hdl/axi_timebase_wdt_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_axi_timebase_wdt_0_0/sim/embsys_axi_timebase_wdt_0_0.vhd" \
  "../../../bd/embsys/ip/embsys_axi_gpio_2_0/sim/embsys_axi_gpio_2_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ipshared/6264/hdl/motor_measure_control_v1_0_S00_AXI.v" \
  "../../../bd/embsys/ipshared/6264/src/Motor_control.v" \
  "../../../bd/embsys/ipshared/6264/src/RPM_measure.v" \
  "../../../bd/embsys/ipshared/6264/src/motor_wrapper.v" \
  "../../../bd/embsys/ipshared/6264/hdl/motor_measure_control_v1_0.v" \
  "../../../bd/embsys/ip/embsys_motor_measure_control_0_0/sim/embsys_motor_measure_control_0_0.v" \
  "../../../bd/embsys/sim/embsys.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embsys/ip/embsys_axi_uartlite_1_0/sim/embsys_axi_uartlite_1_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

