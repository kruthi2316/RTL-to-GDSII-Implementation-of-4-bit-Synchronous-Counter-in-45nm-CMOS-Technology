
set_app_var link_library [list ./nandgate/osu_soc/lib/files/gscl45nm.db]
set_app_var target_library [list ./nandgate/osu_soc/lib/files/gscl45nm.db]


analyze -format verilog {counter/RTL/counter.v}
elaborate counter


create_clock clk -name ideal_clock1 -period 0.3
set_input_delay -clock ideal_clock1 [expr 0.3*0.05] [all_inputs]
set_output_delay -clock ideal_clock1 [expr 0.3*0.05] [all_outputs]
set_max_fanout 20 counter
set_max_transition [expr 0.25*0.3] counter


check_design
compile

write -format verilog -hierarchy -output counter_post_synth.v
write -format ddc -hierarchy -output counter_post_synth.ddc
write_sdc -nosplit counter_post_synth.sdc

report_timing -nosplit -transition_time -nets -attributes > counter_report_timing.rpt
report_area -nosplit > counter_report_area.rpt
report_power -nosplit > counter_report_power.rpt

