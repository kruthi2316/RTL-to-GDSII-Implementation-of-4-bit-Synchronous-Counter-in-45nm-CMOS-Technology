create_library_set -name libs_typical\
   -timing\
    [list ./nandgate/osu_soc/lib/files/gscl45nm.lib]
create_rc_corner -name typical\
   -cap_table ./nandgate/osu_soc/lib/files/gscl45nm.tlf\
   -pre_route_res 1\
   -post_route_res 1\
   -pre_route_cap 1\
   -post_route_cap 1\
   -post_route_cross_cap 1\
   -pre_route_clock_res 0\
   -pre_route_clock_cap 0\
   -temperature 25
create_constraint_mode -name constraints_default\
   -sdc_files\
    [list ./counter/Syn/Post_Sythn_Results/counter_post_synth.sdc]
