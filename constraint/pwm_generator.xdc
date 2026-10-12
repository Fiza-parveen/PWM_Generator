
## ==========================================
## Variable PWM Generator - PYNQ-Z2
## ==========================================

## 125 MHz onboard clock
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports {clk}]
create_clock -name sys_clk_pin -period 8.000 [get_ports {clk}]

## Reset: Push Button 0
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports {reset}]

## PWM output: LED 0
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports {pwmout}]

## Dutycycle[6:0]: Arduino digital pins
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports {Dutycycle[0]}]
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {Dutycycle[1]}]
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports {Dutycycle[2]}]
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports {Dutycycle[3]}]
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {Dutycycle[4]}]
set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports {Dutycycle[5]}]
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports {Dutycycle[6]}]

## Counter[6:0]: PMOD A outputs
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {counter[0]}]
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {counter[1]}]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {counter[2]}]
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports {counter[3]}]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {counter[4]}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {counter[5]}]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {counter[6]}]
