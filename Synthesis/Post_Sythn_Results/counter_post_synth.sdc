###################################################################

# Created by write_sdc on Thu Jul 31 18:12:02 2025

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_max_transition 0.075 [current_design]
set_max_fanout 20 [current_design]
create_clock [get_ports clk]  -name ideal_clock1  -period 0.3  -waveform {0 0.15}
set_input_delay -clock ideal_clock1  0.015  [get_ports clk]
set_input_delay -clock ideal_clock1  0.015  [get_ports rst]
set_output_delay -clock ideal_clock1  0.015  [get_ports {out[3]}]
set_output_delay -clock ideal_clock1  0.015  [get_ports {out[2]}]
set_output_delay -clock ideal_clock1  0.015  [get_ports {out[1]}]
set_output_delay -clock ideal_clock1  0.015  [get_ports {out[0]}]
