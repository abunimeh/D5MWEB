############################################################################
##
##  Xilinx, Inc. 2006            www.xilinx.com
############################################################################
##  File name :       ps7_constraints.xdc
##
##  Details :     Constraints file
##                    FPGA family:       zynq
##                    FPGA:              xc7z020clg484-1
##                    Device Size:        xc7z020
##                    Package:            clg484
##                    Speedgrade:         -1
##
##
############################################################################
############################################################################
############################################################################
# Clock constraints                                                        #
############################################################################
create_clock -name clk_fpga_2 -period "12.999" [get_pins "PS7_i/FCLKCLK[2]"]
set_input_jitter clk_fpga_2 0.38997
#The clocks are asynchronous, user should constrain them appropriately.#
create_clock -name clk_fpga_1 -period "10" [get_pins "PS7_i/FCLKCLK[1]"]
set_input_jitter clk_fpga_1 0.3
#The clocks are asynchronous, user should constrain them appropriately.#
create_clock -name clk_fpga_0 -period "7" [get_pins "PS7_i/FCLKCLK[0]"]
set_input_jitter clk_fpga_0 0.21
#The clocks are asynchronous, user should constrain them appropriately.#


############################################################################
# I/O STANDARDS and Location Constraints                                   #
############################################################################

#  Enet 0 / mdio / MIO[53]
set_property iostandard "LVCMOS18" [get_ports "MIO[53]"]
set_property PACKAGE_PIN "C12" [get_ports "MIO[53]"]
set_property slew "slow" [get_ports "MIO[53]"]
set_property drive "8" [get_ports "MIO[53]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[53]"]
#  Enet 0 / mdc / MIO[52]
set_property iostandard "LVCMOS18" [get_ports "MIO[52]"]
set_property PACKAGE_PIN "D10" [get_ports "MIO[52]"]
set_property slew "slow" [get_ports "MIO[52]"]
set_property drive "8" [get_ports "MIO[52]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[52]"]
#  GPIO / gpio[51] / MIO[51]
set_property iostandard "LVCMOS18" [get_ports "MIO[51]"]
set_property PACKAGE_PIN "C10" [get_ports "MIO[51]"]
set_property slew "slow" [get_ports "MIO[51]"]
set_property drive "8" [get_ports "MIO[51]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[51]"]
#  GPIO / gpio[50] / MIO[50]
set_property iostandard "LVCMOS18" [get_ports "MIO[50]"]
set_property PACKAGE_PIN "D13" [get_ports "MIO[50]"]
set_property slew "slow" [get_ports "MIO[50]"]
set_property drive "8" [get_ports "MIO[50]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[50]"]
#  UART 1 / rx / MIO[49]
set_property iostandard "LVCMOS18" [get_ports "MIO[49]"]
set_property PACKAGE_PIN "C14" [get_ports "MIO[49]"]
set_property slew "slow" [get_ports "MIO[49]"]
set_property drive "8" [get_ports "MIO[49]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[49]"]
#  UART 1 / tx / MIO[48]
set_property iostandard "LVCMOS18" [get_ports "MIO[48]"]
set_property PACKAGE_PIN "D11" [get_ports "MIO[48]"]
set_property slew "slow" [get_ports "MIO[48]"]
set_property drive "8" [get_ports "MIO[48]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[48]"]
#  SD 0 / cd / MIO[47]
set_property iostandard "LVCMOS18" [get_ports "MIO[47]"]
set_property PACKAGE_PIN "B10" [get_ports "MIO[47]"]
set_property slew "slow" [get_ports "MIO[47]"]
set_property drive "8" [get_ports "MIO[47]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[47]"]
#  SD 0 / wp / MIO[46]
set_property iostandard "LVCMOS18" [get_ports "MIO[46]"]
set_property PACKAGE_PIN "D12" [get_ports "MIO[46]"]
set_property slew "slow" [get_ports "MIO[46]"]
set_property drive "8" [get_ports "MIO[46]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[46]"]
#  SD 0 / data[3] / MIO[45]
set_property iostandard "LVCMOS18" [get_ports "MIO[45]"]
set_property PACKAGE_PIN "B9" [get_ports "MIO[45]"]
set_property slew "fast" [get_ports "MIO[45]"]
set_property drive "8" [get_ports "MIO[45]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[45]"]
#  SD 0 / data[2] / MIO[44]
set_property iostandard "LVCMOS18" [get_ports "MIO[44]"]
set_property PACKAGE_PIN "E13" [get_ports "MIO[44]"]
set_property slew "fast" [get_ports "MIO[44]"]
set_property drive "8" [get_ports "MIO[44]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[44]"]
#  SD 0 / data[1] / MIO[43]
set_property iostandard "LVCMOS18" [get_ports "MIO[43]"]
set_property PACKAGE_PIN "B11" [get_ports "MIO[43]"]
set_property slew "fast" [get_ports "MIO[43]"]
set_property drive "8" [get_ports "MIO[43]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[43]"]
#  SD 0 / data[0] / MIO[42]
set_property iostandard "LVCMOS18" [get_ports "MIO[42]"]
set_property PACKAGE_PIN "D8" [get_ports "MIO[42]"]
set_property slew "fast" [get_ports "MIO[42]"]
set_property drive "8" [get_ports "MIO[42]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[42]"]
#  SD 0 / cmd / MIO[41]
set_property iostandard "LVCMOS18" [get_ports "MIO[41]"]
set_property PACKAGE_PIN "C8" [get_ports "MIO[41]"]
set_property slew "fast" [get_ports "MIO[41]"]
set_property drive "8" [get_ports "MIO[41]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[41]"]
#  SD 0 / clk / MIO[40]
set_property iostandard "LVCMOS18" [get_ports "MIO[40]"]
set_property PACKAGE_PIN "E14" [get_ports "MIO[40]"]
set_property slew "fast" [get_ports "MIO[40]"]
set_property drive "8" [get_ports "MIO[40]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[40]"]
#  GPIO / gpio[39] / MIO[39]
set_property iostandard "LVCMOS18" [get_ports "MIO[39]"]
set_property PACKAGE_PIN "C13" [get_ports "MIO[39]"]
set_property slew "fast" [get_ports "MIO[39]"]
set_property drive "8" [get_ports "MIO[39]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[39]"]
#  GPIO / gpio[38] / MIO[38]
set_property iostandard "LVCMOS18" [get_ports "MIO[38]"]
set_property PACKAGE_PIN "F13" [get_ports "MIO[38]"]
set_property slew "fast" [get_ports "MIO[38]"]
set_property drive "8" [get_ports "MIO[38]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[38]"]
#  GPIO / gpio[37] / MIO[37]
set_property iostandard "LVCMOS18" [get_ports "MIO[37]"]
set_property PACKAGE_PIN "B14" [get_ports "MIO[37]"]
set_property slew "fast" [get_ports "MIO[37]"]
set_property drive "8" [get_ports "MIO[37]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[37]"]
#  GPIO / gpio[36] / MIO[36]
set_property iostandard "LVCMOS18" [get_ports "MIO[36]"]
set_property PACKAGE_PIN "A9" [get_ports "MIO[36]"]
set_property slew "fast" [get_ports "MIO[36]"]
set_property drive "8" [get_ports "MIO[36]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[36]"]
#  GPIO / gpio[35] / MIO[35]
set_property iostandard "LVCMOS18" [get_ports "MIO[35]"]
set_property PACKAGE_PIN "F14" [get_ports "MIO[35]"]
set_property slew "fast" [get_ports "MIO[35]"]
set_property drive "8" [get_ports "MIO[35]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[35]"]
#  GPIO / gpio[34] / MIO[34]
set_property iostandard "LVCMOS18" [get_ports "MIO[34]"]
set_property PACKAGE_PIN "B12" [get_ports "MIO[34]"]
set_property slew "fast" [get_ports "MIO[34]"]
set_property drive "8" [get_ports "MIO[34]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[34]"]
#  GPIO / gpio[33] / MIO[33]
set_property iostandard "LVCMOS18" [get_ports "MIO[33]"]
set_property PACKAGE_PIN "G13" [get_ports "MIO[33]"]
set_property slew "fast" [get_ports "MIO[33]"]
set_property drive "8" [get_ports "MIO[33]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[33]"]
#  GPIO / gpio[32] / MIO[32]
set_property iostandard "LVCMOS18" [get_ports "MIO[32]"]
set_property PACKAGE_PIN "C7" [get_ports "MIO[32]"]
set_property slew "fast" [get_ports "MIO[32]"]
set_property drive "8" [get_ports "MIO[32]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[32]"]
#  GPIO / gpio[31] / MIO[31]
set_property iostandard "LVCMOS18" [get_ports "MIO[31]"]
set_property PACKAGE_PIN "F9" [get_ports "MIO[31]"]
set_property slew "fast" [get_ports "MIO[31]"]
set_property drive "8" [get_ports "MIO[31]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[31]"]
#  GPIO / gpio[30] / MIO[30]
set_property iostandard "LVCMOS18" [get_ports "MIO[30]"]
set_property PACKAGE_PIN "A11" [get_ports "MIO[30]"]
set_property slew "fast" [get_ports "MIO[30]"]
set_property drive "8" [get_ports "MIO[30]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[30]"]
#  GPIO / gpio[29] / MIO[29]
set_property iostandard "LVCMOS18" [get_ports "MIO[29]"]
set_property PACKAGE_PIN "E8" [get_ports "MIO[29]"]
set_property slew "fast" [get_ports "MIO[29]"]
set_property drive "8" [get_ports "MIO[29]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[29]"]
#  GPIO / gpio[28] / MIO[28]
set_property iostandard "LVCMOS18" [get_ports "MIO[28]"]
set_property PACKAGE_PIN "A12" [get_ports "MIO[28]"]
set_property slew "fast" [get_ports "MIO[28]"]
set_property drive "8" [get_ports "MIO[28]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[28]"]
#  Enet 0 / rx_ctl / MIO[27]
set_property iostandard "LVCMOS18" [get_ports "MIO[27]"]
set_property PACKAGE_PIN "D7" [get_ports "MIO[27]"]
set_property slew "fast" [get_ports "MIO[27]"]
set_property drive "8" [get_ports "MIO[27]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[27]"]
#  Enet 0 / rxd[3] / MIO[26]
set_property iostandard "LVCMOS18" [get_ports "MIO[26]"]
set_property PACKAGE_PIN "A13" [get_ports "MIO[26]"]
set_property slew "fast" [get_ports "MIO[26]"]
set_property drive "8" [get_ports "MIO[26]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[26]"]
#  Enet 0 / rxd[2] / MIO[25]
set_property iostandard "LVCMOS18" [get_ports "MIO[25]"]
set_property PACKAGE_PIN "F12" [get_ports "MIO[25]"]
set_property slew "fast" [get_ports "MIO[25]"]
set_property drive "8" [get_ports "MIO[25]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[25]"]
#  Enet 0 / rxd[1] / MIO[24]
set_property iostandard "LVCMOS18" [get_ports "MIO[24]"]
set_property PACKAGE_PIN "B7" [get_ports "MIO[24]"]
set_property slew "fast" [get_ports "MIO[24]"]
set_property drive "8" [get_ports "MIO[24]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[24]"]
#  Enet 0 / rxd[0] / MIO[23]
set_property iostandard "LVCMOS18" [get_ports "MIO[23]"]
set_property PACKAGE_PIN "E11" [get_ports "MIO[23]"]
set_property slew "fast" [get_ports "MIO[23]"]
set_property drive "8" [get_ports "MIO[23]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[23]"]
#  Enet 0 / rx_clk / MIO[22]
set_property iostandard "LVCMOS18" [get_ports "MIO[22]"]
set_property PACKAGE_PIN "A14" [get_ports "MIO[22]"]
set_property slew "fast" [get_ports "MIO[22]"]
set_property drive "8" [get_ports "MIO[22]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[22]"]
#  Enet 0 / tx_ctl / MIO[21]
set_property iostandard "LVCMOS18" [get_ports "MIO[21]"]
set_property PACKAGE_PIN "F11" [get_ports "MIO[21]"]
set_property slew "fast" [get_ports "MIO[21]"]
set_property drive "8" [get_ports "MIO[21]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[21]"]
#  Enet 0 / txd[3] / MIO[20]
set_property iostandard "LVCMOS18" [get_ports "MIO[20]"]
set_property PACKAGE_PIN "A8" [get_ports "MIO[20]"]
set_property slew "fast" [get_ports "MIO[20]"]
set_property drive "8" [get_ports "MIO[20]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[20]"]
#  Enet 0 / txd[2] / MIO[19]
set_property iostandard "LVCMOS18" [get_ports "MIO[19]"]
set_property PACKAGE_PIN "E10" [get_ports "MIO[19]"]
set_property slew "fast" [get_ports "MIO[19]"]
set_property drive "8" [get_ports "MIO[19]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[19]"]
#  Enet 0 / txd[1] / MIO[18]
set_property iostandard "LVCMOS18" [get_ports "MIO[18]"]
set_property PACKAGE_PIN "A7" [get_ports "MIO[18]"]
set_property slew "fast" [get_ports "MIO[18]"]
set_property drive "8" [get_ports "MIO[18]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[18]"]
#  Enet 0 / txd[0] / MIO[17]
set_property iostandard "LVCMOS18" [get_ports "MIO[17]"]
set_property PACKAGE_PIN "E9" [get_ports "MIO[17]"]
set_property slew "fast" [get_ports "MIO[17]"]
set_property drive "8" [get_ports "MIO[17]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[17]"]
#  Enet 0 / tx_clk / MIO[16]
set_property iostandard "LVCMOS18" [get_ports "MIO[16]"]
set_property PACKAGE_PIN "D6" [get_ports "MIO[16]"]
set_property slew "fast" [get_ports "MIO[16]"]
set_property drive "8" [get_ports "MIO[16]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[16]"]
#  GPIO / gpio[15] / MIO[15]
set_property iostandard "LVCMOS33" [get_ports "MIO[15]"]
set_property PACKAGE_PIN "E6" [get_ports "MIO[15]"]
set_property slew "slow" [get_ports "MIO[15]"]
set_property drive "8" [get_ports "MIO[15]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[15]"]
#  GPIO / gpio[14] / MIO[14]
set_property iostandard "LVCMOS33" [get_ports "MIO[14]"]
set_property PACKAGE_PIN "B6" [get_ports "MIO[14]"]
set_property slew "slow" [get_ports "MIO[14]"]
set_property drive "8" [get_ports "MIO[14]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[14]"]
#  GPIO / gpio[13] / MIO[13]
set_property iostandard "LVCMOS33" [get_ports "MIO[13]"]
set_property PACKAGE_PIN "A6" [get_ports "MIO[13]"]
set_property slew "slow" [get_ports "MIO[13]"]
set_property drive "8" [get_ports "MIO[13]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[13]"]
#  GPIO / gpio[12] / MIO[12]
set_property iostandard "LVCMOS33" [get_ports "MIO[12]"]
set_property PACKAGE_PIN "C5" [get_ports "MIO[12]"]
set_property slew "slow" [get_ports "MIO[12]"]
set_property drive "8" [get_ports "MIO[12]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[12]"]
#  GPIO / gpio[11] / MIO[11]
set_property iostandard "LVCMOS33" [get_ports "MIO[11]"]
set_property PACKAGE_PIN "B4" [get_ports "MIO[11]"]
set_property slew "slow" [get_ports "MIO[11]"]
set_property drive "8" [get_ports "MIO[11]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[11]"]
#  GPIO / gpio[10] / MIO[10]
set_property iostandard "LVCMOS33" [get_ports "MIO[10]"]
set_property PACKAGE_PIN "G7" [get_ports "MIO[10]"]
set_property slew "slow" [get_ports "MIO[10]"]
set_property drive "8" [get_ports "MIO[10]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[10]"]
#  GPIO / gpio[9] / MIO[9]
set_property iostandard "LVCMOS33" [get_ports "MIO[9]"]
set_property PACKAGE_PIN "C4" [get_ports "MIO[9]"]
set_property slew "slow" [get_ports "MIO[9]"]
set_property drive "8" [get_ports "MIO[9]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[9]"]
#  GPIO / gpio[8] / MIO[8]
set_property iostandard "LVCMOS33" [get_ports "MIO[8]"]
set_property PACKAGE_PIN "E5" [get_ports "MIO[8]"]
set_property slew "fast" [get_ports "MIO[8]"]
set_property drive "8" [get_ports "MIO[8]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[8]"]
#  GPIO / gpio[7] / MIO[7]
set_property iostandard "LVCMOS33" [get_ports "MIO[7]"]
set_property PACKAGE_PIN "D5" [get_ports "MIO[7]"]
set_property slew "slow" [get_ports "MIO[7]"]
set_property drive "8" [get_ports "MIO[7]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[7]"]
#  Quad SPI Flash / qspi0_sclk / MIO[6]
set_property iostandard "LVCMOS33" [get_ports "MIO[6]"]
set_property PACKAGE_PIN "A4" [get_ports "MIO[6]"]
set_property slew "fast" [get_ports "MIO[6]"]
set_property drive "8" [get_ports "MIO[6]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[6]"]
#  Quad SPI Flash / qspi0_io[3] / MIO[5]
set_property iostandard "LVCMOS33" [get_ports "MIO[5]"]
set_property PACKAGE_PIN "A3" [get_ports "MIO[5]"]
set_property slew "fast" [get_ports "MIO[5]"]
set_property drive "8" [get_ports "MIO[5]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[5]"]
#  Quad SPI Flash / qspi0_io[2] / MIO[4]
set_property iostandard "LVCMOS33" [get_ports "MIO[4]"]
set_property PACKAGE_PIN "E4" [get_ports "MIO[4]"]
set_property slew "fast" [get_ports "MIO[4]"]
set_property drive "8" [get_ports "MIO[4]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[4]"]
#  Quad SPI Flash / qspi0_io[1] / MIO[3]
set_property iostandard "LVCMOS33" [get_ports "MIO[3]"]
set_property PACKAGE_PIN "F6" [get_ports "MIO[3]"]
set_property slew "fast" [get_ports "MIO[3]"]
set_property drive "8" [get_ports "MIO[3]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[3]"]
#  Quad SPI Flash / qspi0_io[0] / MIO[2]
set_property iostandard "LVCMOS33" [get_ports "MIO[2]"]
set_property PACKAGE_PIN "A2" [get_ports "MIO[2]"]
set_property slew "fast" [get_ports "MIO[2]"]
set_property drive "8" [get_ports "MIO[2]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[2]"]
#  Quad SPI Flash / qspi0_ss_b / MIO[1]
set_property iostandard "LVCMOS33" [get_ports "MIO[1]"]
set_property PACKAGE_PIN "A1" [get_ports "MIO[1]"]
set_property slew "fast" [get_ports "MIO[1]"]
set_property drive "8" [get_ports "MIO[1]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[1]"]
#  GPIO / gpio[0] / MIO[0]
set_property iostandard "LVCMOS33" [get_ports "MIO[0]"]
set_property PACKAGE_PIN "G6" [get_ports "MIO[0]"]
set_property slew "slow" [get_ports "MIO[0]"]
set_property drive "8" [get_ports "MIO[0]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[0]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_VRP"]
set_property PACKAGE_PIN "N7" [get_ports "DDR_VRP"]
set_property slew "FAST" [get_ports "DDR_VRP"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_VRP"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_VRN"]
set_property PACKAGE_PIN "M7" [get_ports "DDR_VRN"]
set_property slew "FAST" [get_ports "DDR_VRN"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_VRN"]
set_property iostandard "SSTL15" [get_ports "DDR_WEB"]
set_property PACKAGE_PIN "R4" [get_ports "DDR_WEB"]
set_property slew "SLOW" [get_ports "DDR_WEB"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_WEB"]
set_property iostandard "SSTL15" [get_ports "DDR_RAS_n"]
set_property PACKAGE_PIN "R5" [get_ports "DDR_RAS_n"]
set_property slew "SLOW" [get_ports "DDR_RAS_n"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_RAS_n"]
set_property iostandard "SSTL15" [get_ports "DDR_ODT"]
set_property PACKAGE_PIN "P5" [get_ports "DDR_ODT"]
set_property slew "SLOW" [get_ports "DDR_ODT"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_ODT"]
set_property iostandard "SSTL15" [get_ports "DDR_DRSTB"]
set_property PACKAGE_PIN "F3" [get_ports "DDR_DRSTB"]
set_property slew "FAST" [get_ports "DDR_DRSTB"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DRSTB"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS[3]"]
set_property PACKAGE_PIN "V2" [get_ports "DDR_DQS[3]"]
set_property slew "FAST" [get_ports "DDR_DQS[3]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS[3]"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS[2]"]
set_property PACKAGE_PIN "N2" [get_ports "DDR_DQS[2]"]
set_property slew "FAST" [get_ports "DDR_DQS[2]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS[2]"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS[1]"]
set_property PACKAGE_PIN "H2" [get_ports "DDR_DQS[1]"]
set_property slew "FAST" [get_ports "DDR_DQS[1]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS[1]"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS[0]"]
set_property PACKAGE_PIN "C2" [get_ports "DDR_DQS[0]"]
set_property slew "FAST" [get_ports "DDR_DQS[0]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS[0]"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS_n[3]"]
set_property PACKAGE_PIN "W2" [get_ports "DDR_DQS_n[3]"]
set_property slew "FAST" [get_ports "DDR_DQS_n[3]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS_n[3]"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS_n[2]"]
set_property PACKAGE_PIN "P2" [get_ports "DDR_DQS_n[2]"]
set_property slew "FAST" [get_ports "DDR_DQS_n[2]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS_n[2]"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS_n[1]"]
set_property PACKAGE_PIN "J2" [get_ports "DDR_DQS_n[1]"]
set_property slew "FAST" [get_ports "DDR_DQS_n[1]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS_n[1]"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS_n[0]"]
set_property PACKAGE_PIN "D2" [get_ports "DDR_DQS_n[0]"]
set_property slew "FAST" [get_ports "DDR_DQS_n[0]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS_n[0]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[9]"]
set_property PACKAGE_PIN "G1" [get_ports "DDR_DQ[9]"]
set_property slew "FAST" [get_ports "DDR_DQ[9]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[9]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[8]"]
set_property PACKAGE_PIN "G2" [get_ports "DDR_DQ[8]"]
set_property slew "FAST" [get_ports "DDR_DQ[8]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[8]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[7]"]
set_property PACKAGE_PIN "F1" [get_ports "DDR_DQ[7]"]
set_property slew "FAST" [get_ports "DDR_DQ[7]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[7]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[6]"]
set_property PACKAGE_PIN "F2" [get_ports "DDR_DQ[6]"]
set_property slew "FAST" [get_ports "DDR_DQ[6]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[6]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[5]"]
set_property PACKAGE_PIN "E1" [get_ports "DDR_DQ[5]"]
set_property slew "FAST" [get_ports "DDR_DQ[5]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[5]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[4]"]
set_property PACKAGE_PIN "E3" [get_ports "DDR_DQ[4]"]
set_property slew "FAST" [get_ports "DDR_DQ[4]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[4]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[3]"]
set_property PACKAGE_PIN "D3" [get_ports "DDR_DQ[3]"]
set_property slew "FAST" [get_ports "DDR_DQ[3]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[3]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[31]"]
set_property PACKAGE_PIN "Y1" [get_ports "DDR_DQ[31]"]
set_property slew "FAST" [get_ports "DDR_DQ[31]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[31]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[30]"]
set_property PACKAGE_PIN "W3" [get_ports "DDR_DQ[30]"]
set_property slew "FAST" [get_ports "DDR_DQ[30]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[30]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[2]"]
set_property PACKAGE_PIN "B2" [get_ports "DDR_DQ[2]"]
set_property slew "FAST" [get_ports "DDR_DQ[2]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[2]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[29]"]
set_property PACKAGE_PIN "Y3" [get_ports "DDR_DQ[29]"]
set_property slew "FAST" [get_ports "DDR_DQ[29]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[29]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[28]"]
set_property PACKAGE_PIN "W1" [get_ports "DDR_DQ[28]"]
set_property slew "FAST" [get_ports "DDR_DQ[28]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[28]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[27]"]
set_property PACKAGE_PIN "U2" [get_ports "DDR_DQ[27]"]
set_property slew "FAST" [get_ports "DDR_DQ[27]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[27]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[26]"]
set_property PACKAGE_PIN "AA1" [get_ports "DDR_DQ[26]"]
set_property slew "FAST" [get_ports "DDR_DQ[26]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[26]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[25]"]
set_property PACKAGE_PIN "U1" [get_ports "DDR_DQ[25]"]
set_property slew "FAST" [get_ports "DDR_DQ[25]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[25]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[24]"]
set_property PACKAGE_PIN "AA3" [get_ports "DDR_DQ[24]"]
set_property slew "FAST" [get_ports "DDR_DQ[24]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[24]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[23]"]
set_property PACKAGE_PIN "R1" [get_ports "DDR_DQ[23]"]
set_property slew "FAST" [get_ports "DDR_DQ[23]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[23]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[22]"]
set_property PACKAGE_PIN "M2" [get_ports "DDR_DQ[22]"]
set_property slew "FAST" [get_ports "DDR_DQ[22]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[22]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[21]"]
set_property PACKAGE_PIN "T2" [get_ports "DDR_DQ[21]"]
set_property slew "FAST" [get_ports "DDR_DQ[21]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[21]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[20]"]
set_property PACKAGE_PIN "R3" [get_ports "DDR_DQ[20]"]
set_property slew "FAST" [get_ports "DDR_DQ[20]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[20]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[1]"]
set_property PACKAGE_PIN "C3" [get_ports "DDR_DQ[1]"]
set_property slew "FAST" [get_ports "DDR_DQ[1]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[1]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[19]"]
set_property PACKAGE_PIN "T1" [get_ports "DDR_DQ[19]"]
set_property slew "FAST" [get_ports "DDR_DQ[19]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[19]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[18]"]
set_property PACKAGE_PIN "N3" [get_ports "DDR_DQ[18]"]
set_property slew "FAST" [get_ports "DDR_DQ[18]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[18]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[17]"]
set_property PACKAGE_PIN "T3" [get_ports "DDR_DQ[17]"]
set_property slew "FAST" [get_ports "DDR_DQ[17]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[17]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[16]"]
set_property PACKAGE_PIN "M1" [get_ports "DDR_DQ[16]"]
set_property slew "FAST" [get_ports "DDR_DQ[16]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[16]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[15]"]
set_property PACKAGE_PIN "K3" [get_ports "DDR_DQ[15]"]
set_property slew "FAST" [get_ports "DDR_DQ[15]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[15]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[14]"]
set_property PACKAGE_PIN "J1" [get_ports "DDR_DQ[14]"]
set_property slew "FAST" [get_ports "DDR_DQ[14]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[14]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[13]"]
set_property PACKAGE_PIN "K1" [get_ports "DDR_DQ[13]"]
set_property slew "FAST" [get_ports "DDR_DQ[13]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[13]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[12]"]
set_property PACKAGE_PIN "L3" [get_ports "DDR_DQ[12]"]
set_property slew "FAST" [get_ports "DDR_DQ[12]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[12]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[11]"]
set_property PACKAGE_PIN "L2" [get_ports "DDR_DQ[11]"]
set_property slew "FAST" [get_ports "DDR_DQ[11]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[11]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[10]"]
set_property PACKAGE_PIN "L1" [get_ports "DDR_DQ[10]"]
set_property slew "FAST" [get_ports "DDR_DQ[10]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[10]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[0]"]
set_property PACKAGE_PIN "D1" [get_ports "DDR_DQ[0]"]
set_property slew "FAST" [get_ports "DDR_DQ[0]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[0]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DM[3]"]
set_property PACKAGE_PIN "AA2" [get_ports "DDR_DM[3]"]
set_property slew "FAST" [get_ports "DDR_DM[3]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DM[3]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DM[2]"]
set_property PACKAGE_PIN "P1" [get_ports "DDR_DM[2]"]
set_property slew "FAST" [get_ports "DDR_DM[2]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DM[2]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DM[1]"]
set_property PACKAGE_PIN "H3" [get_ports "DDR_DM[1]"]
set_property slew "FAST" [get_ports "DDR_DM[1]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DM[1]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DM[0]"]
set_property PACKAGE_PIN "B1" [get_ports "DDR_DM[0]"]
set_property slew "FAST" [get_ports "DDR_DM[0]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DM[0]"]
set_property iostandard "SSTL15" [get_ports "DDR_CS_n"]
set_property PACKAGE_PIN "P6" [get_ports "DDR_CS_n"]
set_property slew "SLOW" [get_ports "DDR_CS_n"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_CS_n"]
set_property iostandard "SSTL15" [get_ports "DDR_CKE"]
set_property PACKAGE_PIN "V3" [get_ports "DDR_CKE"]
set_property slew "SLOW" [get_ports "DDR_CKE"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_CKE"]
set_property iostandard "DIFF_SSTL15" [get_ports "DDR_Clk"]
set_property PACKAGE_PIN "N4" [get_ports "DDR_Clk"]
set_property slew "FAST" [get_ports "DDR_Clk"]
set_property PIO_DIRECTION "INPUT" [get_ports "DDR_Clk"]
set_property iostandard "DIFF_SSTL15" [get_ports "DDR_Clk_n"]
set_property PACKAGE_PIN "N5" [get_ports "DDR_Clk_n"]
set_property slew "FAST" [get_ports "DDR_Clk_n"]
set_property PIO_DIRECTION "INPUT" [get_ports "DDR_Clk_n"]
set_property iostandard "SSTL15" [get_ports "DDR_CAS_n"]
set_property PACKAGE_PIN "P3" [get_ports "DDR_CAS_n"]
set_property slew "SLOW" [get_ports "DDR_CAS_n"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_CAS_n"]
set_property iostandard "SSTL15" [get_ports "DDR_BankAddr[2]"]
set_property PACKAGE_PIN "M6" [get_ports "DDR_BankAddr[2]"]
set_property slew "SLOW" [get_ports "DDR_BankAddr[2]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_BankAddr[2]"]
set_property iostandard "SSTL15" [get_ports "DDR_BankAddr[1]"]
set_property PACKAGE_PIN "L6" [get_ports "DDR_BankAddr[1]"]
set_property slew "SLOW" [get_ports "DDR_BankAddr[1]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_BankAddr[1]"]
set_property iostandard "SSTL15" [get_ports "DDR_BankAddr[0]"]
set_property PACKAGE_PIN "L7" [get_ports "DDR_BankAddr[0]"]
set_property slew "SLOW" [get_ports "DDR_BankAddr[0]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_BankAddr[0]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[9]"]
set_property PACKAGE_PIN "H5" [get_ports "DDR_Addr[9]"]
set_property slew "SLOW" [get_ports "DDR_Addr[9]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[9]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[8]"]
set_property PACKAGE_PIN "J5" [get_ports "DDR_Addr[8]"]
set_property slew "SLOW" [get_ports "DDR_Addr[8]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[8]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[7]"]
set_property PACKAGE_PIN "J6" [get_ports "DDR_Addr[7]"]
set_property slew "SLOW" [get_ports "DDR_Addr[7]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[7]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[6]"]
set_property PACKAGE_PIN "J7" [get_ports "DDR_Addr[6]"]
set_property slew "SLOW" [get_ports "DDR_Addr[6]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[6]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[5]"]
set_property PACKAGE_PIN "K5" [get_ports "DDR_Addr[5]"]
set_property slew "SLOW" [get_ports "DDR_Addr[5]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[5]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[4]"]
set_property PACKAGE_PIN "K6" [get_ports "DDR_Addr[4]"]
set_property slew "SLOW" [get_ports "DDR_Addr[4]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[4]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[3]"]
set_property PACKAGE_PIN "L4" [get_ports "DDR_Addr[3]"]
set_property slew "SLOW" [get_ports "DDR_Addr[3]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[3]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[2]"]
set_property PACKAGE_PIN "K4" [get_ports "DDR_Addr[2]"]
set_property slew "SLOW" [get_ports "DDR_Addr[2]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[2]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[1]"]
set_property PACKAGE_PIN "M5" [get_ports "DDR_Addr[1]"]
set_property slew "SLOW" [get_ports "DDR_Addr[1]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[1]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[14]"]
set_property PACKAGE_PIN "G4" [get_ports "DDR_Addr[14]"]
set_property slew "SLOW" [get_ports "DDR_Addr[14]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[14]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[13]"]
set_property PACKAGE_PIN "F4" [get_ports "DDR_Addr[13]"]
set_property slew "SLOW" [get_ports "DDR_Addr[13]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[13]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[12]"]
set_property PACKAGE_PIN "H4" [get_ports "DDR_Addr[12]"]
set_property slew "SLOW" [get_ports "DDR_Addr[12]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[12]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[11]"]
set_property PACKAGE_PIN "G5" [get_ports "DDR_Addr[11]"]
set_property slew "SLOW" [get_ports "DDR_Addr[11]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[11]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[10]"]
set_property PACKAGE_PIN "J3" [get_ports "DDR_Addr[10]"]
set_property slew "SLOW" [get_ports "DDR_Addr[10]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[10]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[0]"]
set_property PACKAGE_PIN "M4" [get_ports "DDR_Addr[0]"]
set_property slew "SLOW" [get_ports "DDR_Addr[0]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[0]"]
set_property iostandard "LVCMOS33" [get_ports "PS_PORB"]
set_property PACKAGE_PIN "B5" [get_ports "PS_PORB"]
set_property slew "fast" [get_ports "PS_PORB"]
set_property iostandard "LVCMOS18" [get_ports "PS_SRSTB"]
set_property PACKAGE_PIN "C9" [get_ports "PS_SRSTB"]
set_property slew "fast" [get_ports "PS_SRSTB"]
set_property iostandard "LVCMOS33" [get_ports "PS_CLK"]
set_property PACKAGE_PIN "F7" [get_ports "PS_CLK"]
set_property slew "fast" [get_ports "PS_CLK"]

