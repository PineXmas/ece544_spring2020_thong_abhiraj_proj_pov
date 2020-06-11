vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/microblaze_v10_0_7
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_19
vlib activehdl/xlslice_v1_0_1
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/dist_mem_gen_v8_0_12
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/fifo_generator_v13_2_2
vlib activehdl/lib_fifo_v1_0_11
vlib activehdl/axi_quad_spi_v3_2_16
vlib activehdl/axi_timer_v2_0_19
vlib activehdl/axi_uartlite_v2_0_21
vlib activehdl/axi_intc_v4_1_11
vlib activehdl/mdm_v3_2_14
vlib activehdl/proc_sys_reset_v5_0_12
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_17
vlib activehdl/axi_data_fifo_v2_1_16
vlib activehdl/axi_crossbar_v2_1_18
vlib activehdl/lmb_v10_v3_0_9
vlib activehdl/lmb_bram_if_cntlr_v4_0_15
vlib activehdl/blk_mem_gen_v8_4_1
vlib activehdl/axi_timebase_wdt_v3_0_9

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap microblaze_v10_0_7 activehdl/microblaze_v10_0_7
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_19 activehdl/axi_gpio_v2_0_19
vmap xlslice_v1_0_1 activehdl/xlslice_v1_0_1
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap dist_mem_gen_v8_0_12 activehdl/dist_mem_gen_v8_0_12
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap fifo_generator_v13_2_2 activehdl/fifo_generator_v13_2_2
vmap lib_fifo_v1_0_11 activehdl/lib_fifo_v1_0_11
vmap axi_quad_spi_v3_2_16 activehdl/axi_quad_spi_v3_2_16
vmap axi_timer_v2_0_19 activehdl/axi_timer_v2_0_19
vmap axi_uartlite_v2_0_21 activehdl/axi_uartlite_v2_0_21
vmap axi_intc_v4_1_11 activehdl/axi_intc_v4_1_11
vmap mdm_v3_2_14 activehdl/mdm_v3_2_14
vmap proc_sys_reset_v5_0_12 activehdl/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_17 activehdl/axi_register_slice_v2_1_17
vmap axi_data_fifo_v2_1_16 activehdl/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 activehdl/axi_crossbar_v2_1_18
vmap lmb_v10_v3_0_9 activehdl/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 activehdl/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_1 activehdl/blk_mem_gen_v8_4_1
vmap axi_timebase_wdt_v3_0_9 activehdl/axi_timebase_wdt_v3_0_9

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"D:/Programs/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Programs/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Programs/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Programs/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v10_0_7 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b649/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_microblaze_0_0/sim/embsys_microblaze_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/5bf9/src/rgbpwm.v" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/5bf9/src/sevensegment.v" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/5bf9/src/debounce.v" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/5bf9/hdl/nexys4IO_v2_0_S00_AXI.v" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/5bf9/hdl/nexys4IO_v2_0.v" \
"../../../bd/embsys/ip/embsys_nexys4IO_0_0/sim/embsys_nexys4IO_0_0.v" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_pmod_bridge_0_0/src/pmod_concat.v" \
"../../../bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_pmod_bridge_0_0/sim/PmodENC_pmod_bridge_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_axi_gpio_0_0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_axi_gpio_0_0/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_axi_gpio_0_0/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_19 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_axi_gpio_0_0/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_axi_gpio_0_0/sim/PmodENC_axi_gpio_0_0.vhd" \

vlog -work xlslice_v1_0_1  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_xlslice_0_0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_xlslice_0_0/sim/PmodENC_xlslice_0_0.v" \
"../../../bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_xlslice_0_1/sim/PmodENC_xlslice_0_1.v" \
"../../../bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_xlslice_0_2/sim/PmodENC_xlslice_0_2.v" \
"../../../bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_xlslice_t_0_0/sim/PmodENC_xlslice_t_0_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_xlconcat_0_0/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_PmodENC_0_0/src/PmodENC_xlconcat_0_0/sim/PmodENC_xlconcat_0_0.v" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/4239/src/PmodENC.v" \
"../../../bd/embsys/ip/embsys_PmodENC_0_0/sim/embsys_PmodENC_0_0.v" \

vlog -work dist_mem_gen_v8_0_12  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_11 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_16 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/sim/PmodOLEDrgb_axi_quad_spi_0_0.vhd" \
"../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_gpio_0_1/sim/PmodOLEDrgb_axi_gpio_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_pmod_bridge_0_0/sim/PmodOLEDrgb_pmod_bridge_0_0.v" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/d9e9/hdl/PmodOLEDrgb_v1_0.v" \
"../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/sim/embsys_PmodOLEDrgb_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_axi_gpio_0_0/sim/embsys_axi_gpio_0_0.vhd" \

vcom -work axi_timer_v2_0_19 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/0a2c/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_axi_timer_0_0/sim/embsys_axi_timer_0_0.vhd" \

vcom -work axi_uartlite_v2_0_21 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/a15e/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_axi_uartlite_0_0/sim/embsys_axi_uartlite_0_0.vhd" \

vcom -work axi_intc_v4_1_11 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/2fec/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_microblaze_0_axi_intc_0/sim/embsys_microblaze_0_axi_intc_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_microblaze_0_xlconcat_0/sim/embsys_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_14 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/5125/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_mdm_1_0/sim/embsys_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0.v" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_rst_clk_wiz_1_100M_0/sim/embsys_rst_clk_wiz_1_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_16  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_xbar_0/sim/embsys_xbar_0.v" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_dlmb_v10_0/sim/embsys_dlmb_v10_0.vhd" \
"../../../bd/embsys/ip/embsys_ilmb_v10_0/sim/embsys_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_dlmb_bram_if_cntlr_0/sim/embsys_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/embsys/ip/embsys_ilmb_bram_if_cntlr_0/sim/embsys_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_lmb_bram_0/sim/embsys_lmb_bram_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_axi_gpio_1_0/sim/embsys_axi_gpio_1_0.vhd" \
"../../../bd/embsys/ip/embsys_axi_timer_1_0/sim/embsys_axi_timer_1_0.vhd" \

vcom -work axi_timebase_wdt_v3_0_9 -93 \
"../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/1118/hdl/axi_timebase_wdt_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_axi_timebase_wdt_0_0/sim/embsys_axi_timebase_wdt_0_0.vhd" \
"../../../bd/embsys/ip/embsys_axi_gpio_2_0/sim/embsys_axi_gpio_2_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../ece544_proj_final.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ipshared/6264/hdl/motor_measure_control_v1_0_S00_AXI.v" \
"../../../bd/embsys/ipshared/6264/src/Motor_control.v" \
"../../../bd/embsys/ipshared/6264/src/RPM_measure.v" \
"../../../bd/embsys/ipshared/6264/src/motor_wrapper.v" \
"../../../bd/embsys/ipshared/6264/hdl/motor_measure_control_v1_0.v" \
"../../../bd/embsys/ip/embsys_motor_measure_control_0_0/sim/embsys_motor_measure_control_0_0.v" \
"../../../bd/embsys/sim/embsys.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_axi_uartlite_1_0/sim/embsys_axi_uartlite_1_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

