set_host_options -max_cores 16
set dir [pwd]
set_app_var search_path $dir
set target_library "[glob $dir/db/saed32*.db]"
set_app_var link_library $target_library
create_lib -ref_libs "/home/shtp/ShareData/0-Server/AECAYKHE/DCNXT_RM_LAB_BITCOIN_debug/data/lib/stdcell_hvt/ndms/saed32hvt_v125c.ndm \
	/home/shtp/ShareData/0-Server/AECAYKHE/FLAVOR2/data/lib/stdcell_lvt/ndms/saed32lvt_tt_v125c.ndm \
	/home/shtp/ShareData/0-Server/AECAYKHE/FLAVOR1/data/lib/stdcell_rvt/ndms/saed32rvt_tt_v125c.ndm" \
	-technology /home/shtp/ShareData/0-Server/AECAYKHE/DCNXT_RM_LAB_BITCOIN_debug/data/tech/milkyway/saed32nm_1p9m_mw.tf Test1.ndm

create_block read_verilog
open_block read_verilog
current_block
read_verilog ./mapped.v

link_design Test1
source ./contraint.tcl
save_block -as read_verilog
close_block -force
list_block

open_block read_verilog
initialize_floorplan -side_ratio {1 1} -core_offset {2} -core_utilization 0.5

save_block -as compile
close_block -force
list_block

open_block compile
place_pins -self

create_net VDD -power
create_net VSS -ground
connect_pg_net -automatic
create_pg_mesh_pattern mesh_pattern -layers { {{vertical_layer:M8 } {width: 2} {pitch: 100} {spacing: interleaving}} {{horizontal_layer: M9} {width: 2.4} {pitch: 100} {spacing: interleaving}} }
set_pg_strategy mesh_strategy -core -pattern {{pattern: mesh_pattern}{nets: {VDD VSS}}} -blockage {macros:all}
create_pg_std_cell_conn_pattern std_cell_pattern
set_pg_strategy std_cell_strategy -core -pattern {{pattern: std_cell_pattern}{nets: {VDD VSS}}}
compile_pg -ignore_via_drc
create_terminal -of_object [get_shapes -of_objects [get_nets VSS]]
create_terminal -of_object [get_shapes -of_objects [get_nets VDD]]

save_block -as pg_mesh
close_block -force

open_block pg_mesh

source ./mcmm.tcl
set_app_options -name place.coarse.fix_hard_macros -value false
set_app_options -name plan.place.auto_create_blockages -value auto
place_opt
save_block -as place_opt
close_block -force




open_block place_opt
clock_opt
save_block -as clock_opt


open_block clock_opt
route_auto
save_block -as route_auto

open_block route_auto
route_opt
save_block -as route_opt


open_block route_opt
check_lvs
report_global_timing
report_qor
write_verilog -hierarchy all mapped.v
set_app_options -name signoff.check_drc.runset -value /home/shtp/ShareData/0-Server/rocket_project/ref/icv_runsets/saed32nm_1p9m_drc_rules.rs
signoff_check_drc


write_lef -design route_opt Test1.lef
write_def -design route_opt Test1.def -include_physical_status all
write_gds write_data.gds
save_block -as write_data

write_gds -verbose Test1.gds


