#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Oct 23 18:05:57 2023                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.13-s100_1 (64bit) 03/04/2022 14:32 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.13-s100_1 NR220220-0140/21_13-UB (database version 18.20.572) {superthreading v2.17}
#@(#)CDS: AAE 21.13-s034 (64bit) 03/04/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.13-s042_1 () Mar  4 2022 08:38:36 ( )
#@(#)CDS: SYNTECH 21.13-s014_1 () Feb 17 2022 23:50:03 ( )
#@(#)CDS: CPE v21.13-s074
#@(#)CDS: IQuantus/TQuantus 20.1.2-s656 (64bit) Tue Nov 9 23:11:16 PST 2021 (Linux 2.6.32-431.11.2.el6.x86_64)

#@ source physical/1_init.tcl
#@ Begin verbose source (pre): source physical/1_init.tcl
set_db init_power_nets {VDD vdd vdd!}
set_db init_ground_nets {VSS GND gnd gnd!}
#@ source layout/logical_busca_padrao.invs_setup.tcl
#@ Begin verbose source layout/logical_busca_padrao.invs_setup.tcl (pre)
namespace eval ::genus_innovus_version_check { 
        set minimum_version 21
        set maximum_version 22
        regexp {\d\d} [get_db program_version] this_version
        puts "Checking Innovus major version against Genus expectations ..."
        if { $this_version < $minimum_version || $this_version > $maximum_version } {
          error "**ERROR: this operation requires Innovus major version to be between '$minimum_version' and '$maximum_version'."
        }
      }
set _t0 [clock seconds]
puts [format  {%%%s Begin Genus to Innovus Setup (%s)} \# [clock format $_t0 -format {%m/%d %H:%M:%S}]]
set_db read_physical_allow_multiple_port_pin_without_must_join true
set_db must_join_all_ports true
set_db timing_cap_unit 1pf
set_db timing_time_unit 1ns
source -quiet /soft64/cadence/ferramentas/GENUS211/tools.lnx86/lib/cdn/rc/edi/innovus_procs_common_ui.tcl
#@ source layout/logical_busca_padrao.flowkit_settings.tcl
#@ Begin verbose source layout/logical_busca_padrao.flowkit_settings.tcl (pre)
if {[is_attribute flow_edit_end_steps -obj_type root]} {
set_db flow_edit_end_steps {}
}
if {[is_attribute flow_edit_start_steps -obj_type root]} {
set_db flow_edit_start_steps {}
}
if {[is_attribute flow_footer_tcl -obj_type root]} {
set_db flow_footer_tcl {}
}
if {[is_attribute flow_header_tcl -obj_type root]} {
set_db flow_header_tcl {}
}
if {[is_attribute flow_metadata -obj_type root]} {
set_db flow_metadata {}
}
if {[is_attribute flow_setup_config -obj_type root]} {
set_db flow_setup_config {HUDDLE {!!map {}}}
}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {
set_db flow_step_begin_tcl {}
}
if {[is_attribute flow_step_check_tcl -obj_type root]} {
set_db flow_step_check_tcl {}
}
if {[is_attribute flow_step_end_tcl -obj_type root]} {
set_db flow_step_end_tcl {}
}
if {[is_attribute flow_step_order -obj_type root]} {
set_db flow_step_order {}
}
if {[is_attribute flow_summary_tcl -obj_type root]} {
set_db flow_summary_tcl {}
}
if {[is_attribute flow_template_feature_definition -obj_type root]} {
set_db flow_template_feature_definition {}
}
if {[is_attribute flow_template_type -obj_type root]} {
set_db flow_template_type {}
}
if {[is_attribute flow_template_tools -obj_type root]} {
set_db flow_template_tools {}
}
if {[is_attribute flow_template_version -obj_type root]} {
set_db flow_template_version {}
}
if {[is_attribute flow_user_templates -obj_type root]} {
set_db flow_user_templates {}
}
if {[is_attribute flow_user_templates -obj_type root]} {
set_db flow_user_templates {}
}
if {[is_attribute flow_plugin_steps -obj_type root]} {
set_db flow_plugin_steps {}
}
if {[is_attribute flow_template_type -obj_type root]} {
set_db flow_template_type {}
}
if {[is_attribute flow_template_tools -obj_type root]} {
set_db flow_template_tools {}
}
if {[is_attribute flow_template_version -obj_type root]} {
set_db flow_template_version {}
}
if {[is_attribute flow_template_feature_definition -obj_type root]} {
set_db flow_template_feature_definition {}
}
if {[is_attribute flow_remark -obj_type root]} {
set_db flow_remark {}
}
if {[is_attribute flow_features -obj_type root]} {
set_db flow_features {}
}
if {[is_attribute flow_feature_values -obj_type root]} {
set_db flow_feature_values {}
}
if {[is_attribute flow_write_db_args -obj_type root]} {
set_db flow_write_db_args {}
}
if {[is_attribute flow_write_db_sdc -obj_type root]} {
set_db flow_write_db_sdc true
}
if {[is_attribute flow_write_db_common -obj_type root]} {
set_db flow_write_db_common false
}
if {[is_attribute flow_post_db_overwrite -obj_type root]} {
set_db flow_post_db_overwrite {}
}
if {[is_attribute flow_step_order -obj_type root]} {
set_db flow_step_order {}
}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {
set_db flow_step_begin_tcl {}
}
if {[is_attribute flow_step_end_tcl -obj_type root]} {
set_db flow_step_end_tcl {}
}
if {[is_attribute flow_step_last -obj_type root]} {
set_db flow_step_last {}
}
if {[is_attribute flow_step_current -obj_type root]} {
set_db flow_step_current {}
}
if {[is_attribute flow_step_canonical_current -obj_type root]} {
set_db flow_step_canonical_current {}
}
if {[is_attribute flow_step_next -obj_type root]} {
set_db flow_step_next {}
}
if {[is_attribute flow_working_directory -obj_type root]} {
set_db flow_working_directory .
}
if {[is_attribute flow_branch -obj_type root]} {
set_db flow_branch {}
}
if {[is_attribute flow_caller_data -obj_type root]} {
set_db flow_caller_data {}
}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {
set_db flow_metrics_snapshot_uuid d88e1a6a-05c1-41b0-87af-762635e0beda
}
if {[is_attribute flow_starting_db -obj_type root]} {
set_db flow_starting_db {}
}
if {[is_attribute flow_db_directory -obj_type root]} {
set_db flow_db_directory dbs
}
if {[is_attribute flow_report_directory -obj_type root]} {
set_db flow_report_directory reports
}
if {[is_attribute flow_log_directory -obj_type root]} {
set_db flow_log_directory logs
}
if {[is_attribute flow_mail_to -obj_type root]} {
set_db flow_mail_to {}
}
if {[is_attribute flow_exit_when_done -obj_type root]} {
set_db flow_exit_when_done false
}
if {[is_attribute flow_mail_on_error -obj_type root]} {
set_db flow_mail_on_error false
}
if {[is_attribute flow_summary_tcl -obj_type root]} {
set_db flow_summary_tcl {}
}
if {[is_attribute flow_history -obj_type root]} {
set_db flow_history {}
}
if {[is_attribute flow_step_last_status -obj_type root]} {
set_db flow_step_last_status not_run
}
if {[is_attribute flow_step_last_msg -obj_type root]} {
set_db flow_step_last_msg {}
}
if {[is_attribute flow_run_tag -obj_type root]} {
set_db flow_run_tag {}
}
if {[is_attribute flow_current_cache -obj_type root]} {
set_db flow_current_cache {}
}
if {[is_attribute flow_step_order_cache -obj_type root]} {
set_db flow_step_order_cache {}
}
if {[is_attribute flow_step_results_cache -obj_type root]} {
set_db flow_step_results_cache {}
}
if {[is_attribute flow_metadata -obj_type root]} {
set_db flow_metadata {}
}
if {[is_attribute flow_execute_in_global -obj_type root]} {
set_db flow_execute_in_global true
}
if {[is_attribute flow_overwrite_db -obj_type root]} {
set_db flow_overwrite_db false
}
if {[is_attribute flow_print_run_information -obj_type root]} {
set_db flow_print_run_information false
}
if {[is_attribute flow_verbose -obj_type root]} {
set_db flow_verbose true
}
if {[is_attribute flow_print_run_information_full -obj_type root]} {
set_db flow_print_run_information_full false
}
if {[is_attribute flow_header_tcl -obj_type root]} {
set_db flow_header_tcl {}
}
if {[is_attribute flow_footer_tcl -obj_type root]} {
set_db flow_footer_tcl {}
}
if {[is_attribute flow_init_header_tcl -obj_type root]} {
set_db flow_init_header_tcl {}
}
if {[is_attribute flow_init_footer_tcl -obj_type root]} {
set_db flow_init_footer_tcl {}
}
if {[is_attribute flow_edit_start_steps -obj_type root]} {
set_db flow_edit_start_steps {}
}
if {[is_attribute flow_edit_end_steps -obj_type root]} {
set_db flow_edit_end_steps {}
}
if {[is_attribute flow_step_last_number -obj_type root]} {
set_db flow_step_last_number 0
}
if {[is_attribute flow_autoload_applets -obj_type root]} {
set_db flow_autoload_applets false
}
if {[is_attribute flow_autoload_dir -obj_type root]} {
set_db flow_autoload_dir error
}
if {[is_attribute flow_skip_auto_db_save -obj_type root]} {
set_db flow_skip_auto_db_save true
}
if {[is_attribute flow_skip_auto_generate_metrics -obj_type root]} {
set_db flow_skip_auto_generate_metrics false
}
if {[is_attribute flow_top -obj_type root]} {
set_db flow_top {}
}
if {[is_attribute flow_hier_path -obj_type root]} {
set_db flow_hier_path {}
}
if {[is_attribute flow_schedule -obj_type root]} {
set_db flow_schedule {}
}
if {[is_attribute flow_step_check_tcl -obj_type root]} {
set_db flow_step_check_tcl {}
}
if {[is_attribute flow_script -obj_type root]} {
set_db flow_script {}
}
if {[is_attribute flow_yaml_script -obj_type root]} {
set_db flow_yaml_script {}
}
if {[is_attribute flow_cla_enabled_features -obj_type root]} {
set_db flow_cla_enabled_features {}
}
if {[is_attribute flow_cla_inject_tcl -obj_type root]} {
set_db flow_cla_inject_tcl {}
}
if {[is_attribute flow_error_message -obj_type root]} {
set_db flow_error_message {}
}
if {[is_attribute flow_error_errorinfo -obj_type root]} {
set_db flow_error_errorinfo {}
}
if {[is_attribute flow_exclude_time_for_init_flow -obj_type root]} {
set_db flow_exclude_time_for_init_flow false
}
if {[is_attribute flow_error_write_db -obj_type root]} {
set_db flow_error_write_db true
}
if {[is_attribute flow_advanced_metric_isolation -obj_type root]} {
set_db flow_advanced_metric_isolation flow
}
if {[is_attribute flow_yaml_root -obj_type root]} {
set_db flow_yaml_root {}
}
if {[is_attribute flow_yaml_root_dir -obj_type root]} {
set_db flow_yaml_root_dir {}
}
if {[is_attribute flow_setup_config -obj_type root]} {
set_db flow_setup_config {HUDDLE {!!map {}}}
}
#@ End verbose source layout/logical_busca_padrao.flowkit_settings.tcl
#@ source layout/logical_busca_padrao.invs_init.tcl
#@ Begin verbose source layout/logical_busca_padrao.invs_init.tcl (pre)
if { ![is_common_ui_mode] } {...}
read_mmmc layout/logical_busca_padrao.mmmc.tcl
#@ Begin verbose source layout/logical_busca_padrao.mmmc.tcl (pre)
create_library_set -name default_emulate_libset_max \
    -timing { /soft64/design-kits/stm/65nm-cmos065_536/CORE65GPSVT_5.1/libs/CORE65GPSVT_nom_1.00V_25C.lib \
              /soft64/design-kits/stm/65nm-cmos065_536/CLOCK65GPSVT_3.1/libs/CLOCK65GPSVT_nom_1.00V_25C.lib \
              /soft64/design-kits/stm/65nm-cmos065_536/IO65LPHVT_SF_1V8_50A_7M4X0Y2Z_7.0/libs/IO65LPHVT_SF_1V8_50A_7M4X0Y2Z_nom_1.00V_1.80V_25C.lib }
create_opcond -name default_emulate_opcond \
    -process 1.0 \
    -voltage 1.0 \
    -temperature 25.0
create_timing_condition -name default_emulate_timing_cond_max \
    -opcond default_emulate_opcond \
    -library_sets { default_emulate_libset_max }
create_rc_corner -name default_emulate_rc_corner \
    -temperature 25.0 \
    -cap_table /soft64/design-kits/stm/65nm-cmos065_536/EncounterTechnoKit_cmos065_7m4x0y2z_AP@5.3.1/TECH/cmos065_7m4x0y2z_AP_Worst.captable \
    -pre_route_res 1.0 \
    -pre_route_cap 1.0 \
    -pre_route_clock_res 0.0 \
    -pre_route_clock_cap 0.0 \
    -post_route_res {1.0 1.0 1.0} \
    -post_route_cap {1.0 1.0 1.0} \
    -post_route_cross_cap {1.0 1.0 1.0} \
    -post_route_clock_res {1.0 1.0 1.0} \
    -post_route_clock_cap {1.0 1.0 1.0}
create_delay_corner -name default_emulate_delay_corner \
    -early_timing_condition { default_emulate_timing_cond_max } \
    -late_timing_condition { default_emulate_timing_cond_max } \
    -early_rc_corner default_emulate_rc_corner \
    -late_rc_corner default_emulate_rc_corner
create_constraint_mode -name default_emulate_constraint_mode \
    -sdc_files { layout/logical_busca_padrao.default_emulate_constraint_mode.sdc }
create_analysis_view -name default_emulate_view \
    -constraint_mode default_emulate_constraint_mode \
    -delay_corner default_emulate_delay_corner
set_analysis_view -setup { default_emulate_view } \
                  -hold { default_emulate_view }
#@ End verbose source layout/logical_busca_padrao.mmmc.tcl
read_physical -lef {/soft64/design-kits/stm/65nm-cmos065_536/EncounterTechnoKit_cmos065_7m4x0y2z_AP@5.3.1/TECH/cmos065_7m4x0y2z_AP_Worst.lef /soft64/design-kits/stm/65nm-cmos065_536/PRHS65_7.0.a/CADENCE/LEF/PRHS65_soc.lef /soft64/design-kits/stm/65nm-cmos065_536/CORE65GPSVT_5.1/CADENCE/LEF/CORE65GPSVT_soc.lef /soft64/design-kits/stm/65nm-cmos065_536/CLOCK65GPSVT_3.1/CADENCE/LEF/CLOCK65GPSVT_soc.lef /soft64/design-kits/stm/65nm-cmos065_536/IO65LPHVT_SF_1V8_50A_7M4X0Y2Z_7.0/CADENCE/LEF/IO65LPHVT_SF_1V8_50A_7M4X0Y2Z_soc.lef /soft64/design-kits/stm/65nm-cmos065_536/IO65LPHVT_CORESUPPLY_50A_7M4X0Y2Z@7.0.c.UD5357/CADENCE/LEF/IO65LPHVT_CORESUPPLY_50A_7M4X0Y2Z_gaph.lef /soft64/design-kits/stm/65nm-cmos065_536/IO65LP_SF_BASIC_50A_ST_7M4X0Y2Z_7.2/CADENCE/LEF/IO65LP_SF_BASIC_50A_ST_7M4X0Y2Z_soc.lef}
read_netlist layout/logical_busca_padrao.v.gz
init_design
#@ End verbose source layout/logical_busca_padrao.invs_init.tcl
read_metric -id current layout/logical_busca_padrao.metrics.json
pqos_eval {rcp::read_taf layout/logical_busca_padrao.mode_attributes.taf.gz}
source -quiet layout/logical_busca_padrao.preserve.tcl
read_def /home/moraes/testa_padrao_scan/synthesis/layout/logical_busca_padrao.scan.def.gz
#@ source layout/logical_busca_padrao.mode
#@ Begin verbose source layout/logical_busca_padrao.mode (pre)
set_db timing_apply_default_primary_input_assertion false
set_db timing_analysis_async_checks no_async
set_db extract_rc_layer_independent 1
#@ End verbose source layout/logical_busca_padrao.mode
if { [is_attribute -obj_type port original_name] &&           [is_attribute -obj_type pin original_name] &&           [is_attribute -obj_type pin is_phase_inverted]} {
#@ source layout/logical_busca_padrao.wnm_attrs.tcl
#@ Begin verbose source layout/logical_busca_padrao.wnm_attrs.tcl (pre)
set_db port:busca_padrao/Bus2IP_Clk .original_name {Bus2IP_Clk}
set_db port:busca_padrao/Bus2IP_Reset .original_name {Bus2IP_Reset}
set_db {port:busca_padrao/Bus2IP_Data[7]} .original_name {Bus2IP_Data[7]}
set_db {port:busca_padrao/Bus2IP_Data[6]} .original_name {Bus2IP_Data[6]}
set_db {port:busca_padrao/Bus2IP_Data[5]} .original_name {Bus2IP_Data[5]}
set_db {port:busca_padrao/Bus2IP_Data[4]} .original_name {Bus2IP_Data[4]}
set_db {port:busca_padrao/Bus2IP_Data[3]} .original_name {Bus2IP_Data[3]}
set_db {port:busca_padrao/Bus2IP_Data[2]} .original_name {Bus2IP_Data[2]}
set_db {port:busca_padrao/Bus2IP_Data[1]} .original_name {Bus2IP_Data[1]}
set_db {port:busca_padrao/Bus2IP_Data[0]} .original_name {Bus2IP_Data[0]}
set_db {port:busca_padrao/Bus2IP_RdCE[0]} .original_name {Bus2IP_RdCE[0]}
set_db {port:busca_padrao/Bus2IP_RdCE[1]} .original_name {Bus2IP_RdCE[1]}
set_db {port:busca_padrao/Bus2IP_RdCE[2]} .original_name {Bus2IP_RdCE[2]}
set_db {port:busca_padrao/Bus2IP_RdCE[3]} .original_name {Bus2IP_RdCE[3]}
set_db {port:busca_padrao/Bus2IP_RdCE[4]} .original_name {Bus2IP_RdCE[4]}
set_db {port:busca_padrao/Bus2IP_RdCE[5]} .original_name {Bus2IP_RdCE[5]}
set_db {port:busca_padrao/Bus2IP_RdCE[6]} .original_name {Bus2IP_RdCE[6]}
set_db {port:busca_padrao/Bus2IP_RdCE[7]} .original_name {Bus2IP_RdCE[7]}
set_db {port:busca_padrao/Bus2IP_RdCE[8]} .original_name {Bus2IP_RdCE[8]}
set_db {port:busca_padrao/Bus2IP_RdCE[9]} .original_name {Bus2IP_RdCE[9]}
set_db {port:busca_padrao/Bus2IP_RdCE[10]} .original_name {Bus2IP_RdCE[10]}
set_db {port:busca_padrao/Bus2IP_RdCE[11]} .original_name {Bus2IP_RdCE[11]}
set_db {port:busca_padrao/Bus2IP_RdCE[12]} .original_name {Bus2IP_RdCE[12]}
set_db {port:busca_padrao/Bus2IP_RdCE[13]} .original_name {Bus2IP_RdCE[13]}
set_db {port:busca_padrao/Bus2IP_RdCE[14]} .original_name {Bus2IP_RdCE[14]}
set_db {port:busca_padrao/Bus2IP_WrCE[0]} .original_name {Bus2IP_WrCE[0]}
set_db {port:busca_padrao/Bus2IP_WrCE[1]} .original_name {Bus2IP_WrCE[1]}
set_db {port:busca_padrao/Bus2IP_WrCE[2]} .original_name {Bus2IP_WrCE[2]}
set_db {port:busca_padrao/Bus2IP_WrCE[3]} .original_name {Bus2IP_WrCE[3]}
set_db {port:busca_padrao/Bus2IP_WrCE[4]} .original_name {Bus2IP_WrCE[4]}
set_db {port:busca_padrao/Bus2IP_WrCE[5]} .original_name {Bus2IP_WrCE[5]}
set_db {port:busca_padrao/Bus2IP_WrCE[6]} .original_name {Bus2IP_WrCE[6]}
set_db {port:busca_padrao/Bus2IP_WrCE[7]} .original_name {Bus2IP_WrCE[7]}
set_db {port:busca_padrao/Bus2IP_WrCE[8]} .original_name {Bus2IP_WrCE[8]}
set_db {port:busca_padrao/Bus2IP_WrCE[9]} .original_name {Bus2IP_WrCE[9]}
set_db {port:busca_padrao/Bus2IP_WrCE[10]} .original_name {Bus2IP_WrCE[10]}
set_db {port:busca_padrao/Bus2IP_WrCE[11]} .original_name {Bus2IP_WrCE[11]}
set_db {port:busca_padrao/Bus2IP_WrCE[12]} .original_name {Bus2IP_WrCE[12]}
set_db {port:busca_padrao/Bus2IP_WrCE[13]} .original_name {Bus2IP_WrCE[13]}
set_db {port:busca_padrao/Bus2IP_WrCE[14]} .original_name {Bus2IP_WrCE[14]}
set_db {port:busca_padrao/IP2Bus_Data[7]} .original_name {IP2Bus_Data[7]}
set_db {port:busca_padrao/IP2Bus_Data[6]} .original_name {IP2Bus_Data[6]}
set_db {port:busca_padrao/IP2Bus_Data[5]} .original_name {IP2Bus_Data[5]}
set_db {port:busca_padrao/IP2Bus_Data[4]} .original_name {IP2Bus_Data[4]}
set_db {port:busca_padrao/IP2Bus_Data[3]} .original_name {IP2Bus_Data[3]}
set_db {port:busca_padrao/IP2Bus_Data[2]} .original_name {IP2Bus_Data[2]}
set_db {port:busca_padrao/IP2Bus_Data[1]} .original_name {IP2Bus_Data[1]}
set_db {port:busca_padrao/IP2Bus_Data[0]} .original_name {IP2Bus_Data[0]}
set_db port:busca_padrao/user_int .original_name {user_int}
set_db pin:busca_padrao/slv_reg_reg_4_2/Q .original_name {slv_reg[4][2]/q}
set_db pin:busca_padrao/slv_reg_reg_6_5/Q .original_name {slv_reg[6][5]/q}
set_db pin:busca_padrao/slv_reg_reg_5_1/Q .original_name {slv_reg[5][1]/q}
set_db pin:busca_padrao/slv_reg_reg_6_7/Q .original_name {slv_reg[6][7]/q}
set_db pin:busca_padrao/slv_reg_reg_4_3/Q .original_name {slv_reg[4][3]/q}
set_db pin:busca_padrao/slv_reg_reg_4_1/Q .original_name {slv_reg[4][1]/q}
set_db pin:busca_padrao/slv_reg_reg_5_5/Q .original_name {slv_reg[5][5]/q}
set_db pin:busca_padrao/slv_reg_reg_9_0/Q .original_name {slv_reg[9][0]/q}
set_db pin:busca_padrao/slv_reg_reg_4_0/Q .original_name {slv_reg[4][0]/q}
set_db pin:busca_padrao/slv_reg_reg_4_6/Q .original_name {slv_reg[4][6]/q}
set_db pin:busca_padrao/slv_reg_reg_4_7/Q .original_name {slv_reg[4][7]/q}
set_db pin:busca_padrao/slv_reg_reg_4_5/Q .original_name {slv_reg[4][5]/q}
set_db pin:busca_padrao/slv_reg_reg_6_1/Q .original_name {slv_reg[6][1]/q}
set_db pin:busca_padrao/slv_reg_reg_5_0/Q .original_name {slv_reg[5][0]/q}
set_db pin:busca_padrao/slv_reg_reg_7_0/Q .original_name {slv_reg[7][0]/q}
set_db pin:busca_padrao/slv_reg_reg_7_5/Q .original_name {slv_reg[7][5]/q}
set_db pin:busca_padrao/slv_reg_reg_7_6/Q .original_name {slv_reg[7][6]/q}
set_db pin:busca_padrao/slv_reg_reg_7_7/Q .original_name {slv_reg[7][7]/q}
set_db pin:busca_padrao/slv_reg_reg_7_4/Q .original_name {slv_reg[7][4]/q}
set_db pin:busca_padrao/slv_reg_reg_5_2/Q .original_name {slv_reg[5][2]/q}
set_db pin:busca_padrao/slv_reg_reg_4_4/Q .original_name {slv_reg[4][4]/q}
set_db pin:busca_padrao/slv_reg_reg_7_1/Q .original_name {slv_reg[7][1]/q}
set_db pin:busca_padrao/slv_reg_reg_5_6/Q .original_name {slv_reg[5][6]/q}
set_db pin:busca_padrao/slv_reg_reg_5_7/Q .original_name {slv_reg[5][7]/q}
set_db pin:busca_padrao/slv_reg_reg_6_0/Q .original_name {slv_reg[6][0]/q}
set_db pin:busca_padrao/slv_reg_reg_6_2/Q .original_name {slv_reg[6][2]/q}
set_db pin:busca_padrao/slv_reg_reg_6_3/Q .original_name {slv_reg[6][3]/q}
set_db pin:busca_padrao/slv_reg_reg_6_4/Q .original_name {slv_reg[6][4]/q}
set_db pin:busca_padrao/slv_reg_reg_6_6/Q .original_name {slv_reg[6][6]/q}
set_db pin:busca_padrao/slv_reg_reg_7_2/Q .original_name {slv_reg[7][2]/q}
set_db pin:busca_padrao/slv_reg_reg_7_3/Q .original_name {slv_reg[7][3]/q}
set_db pin:busca_padrao/slv_reg_reg_5_4/Q .original_name {slv_reg[5][4]/q}
set_db pin:busca_padrao/slv_reg_reg_5_3/Q .original_name {slv_reg[5][3]/q}
set_db pin:busca_padrao/slv_reg_reg_3_1/Q .original_name {slv_reg[3][1]/q}
set_db pin:busca_padrao/slv_reg_reg_2_1/Q .original_name {slv_reg[2][1]/q}
set_db pin:busca_padrao/slv_reg_reg_0_5/Q .original_name {slv_reg[0][5]/q}
set_db pin:busca_padrao/slv_reg_reg_1_3/Q .original_name {slv_reg[1][3]/q}
set_db pin:busca_padrao/slv_reg_reg_3_5/Q .original_name {slv_reg[3][5]/q}
set_db pin:busca_padrao/slv_reg_reg_1_0/Q .original_name {slv_reg[1][0]/q}
set_db pin:busca_padrao/slv_reg_reg_1_1/Q .original_name {slv_reg[1][1]/q}
set_db pin:busca_padrao/slv_reg_reg_0_1/Q .original_name {slv_reg[0][1]/q}
set_db pin:busca_padrao/slv_reg_reg_0_7/Q .original_name {slv_reg[0][7]/q}
set_db pin:busca_padrao/slv_reg_reg_2_2/Q .original_name {slv_reg[2][2]/q}
set_db pin:busca_padrao/slv_reg_reg_0_0/Q .original_name {slv_reg[0][0]/q}
set_db pin:busca_padrao/slv_reg_reg_0_2/Q .original_name {slv_reg[0][2]/q}
set_db pin:busca_padrao/slv_reg_reg_0_3/Q .original_name {slv_reg[0][3]/q}
set_db pin:busca_padrao/slv_reg_reg_0_6/Q .original_name {slv_reg[0][6]/q}
set_db pin:busca_padrao/slv_reg_reg_0_4/Q .original_name {slv_reg[0][4]/q}
set_db pin:busca_padrao/slv_reg_reg_1_5/Q .original_name {slv_reg[1][5]/q}
set_db pin:busca_padrao/slv_reg_reg_3_7/Q .original_name {slv_reg[3][7]/q}
set_db pin:busca_padrao/slv_reg_reg_2_3/Q .original_name {slv_reg[2][3]/q}
set_db pin:busca_padrao/slv_reg_reg_2_6/Q .original_name {slv_reg[2][6]/q}
set_db pin:busca_padrao/slv_reg_reg_2_7/Q .original_name {slv_reg[2][7]/q}
set_db pin:busca_padrao/slv_reg_reg_1_2/Q .original_name {slv_reg[1][2]/q}
set_db pin:busca_padrao/slv_reg_reg_3_2/Q .original_name {slv_reg[3][2]/q}
set_db pin:busca_padrao/slv_reg_reg_2_0/Q .original_name {slv_reg[2][0]/q}
set_db pin:busca_padrao/slv_reg_reg_1_7/Q .original_name {slv_reg[1][7]/q}
set_db pin:busca_padrao/slv_reg_reg_2_5/Q .original_name {slv_reg[2][5]/q}
set_db pin:busca_padrao/slv_reg_reg_3_6/Q .original_name {slv_reg[3][6]/q}
set_db pin:busca_padrao/slv_reg_reg_1_4/Q .original_name {slv_reg[1][4]/q}
set_db pin:busca_padrao/slv_reg_reg_1_6/Q .original_name {slv_reg[1][6]/q}
set_db pin:busca_padrao/slv_reg_reg_2_4/Q .original_name {slv_reg[2][4]/q}
set_db pin:busca_padrao/slv_reg_reg_3_3/Q .original_name {slv_reg[3][3]/q}
set_db pin:busca_padrao/slv_reg_reg_3_4/Q .original_name {slv_reg[3][4]/q}
set_db pin:busca_padrao/slv_reg_reg_3_0/Q .original_name {slv_reg[3][0]/q}
set_db pin:busca_padrao/slv_reg_reg_10_4/Q .original_name {slv_reg[10][4]/q}
set_db pin:busca_padrao/slv_reg_reg_10_3/Q .original_name {slv_reg[10][3]/q}
set_db pin:busca_padrao/slv_reg_reg_13_1/Q .original_name {slv_reg[13][1]/q}
set_db pin:busca_padrao/slv_reg_reg_13_2/Q .original_name {slv_reg[13][2]/q}
set_db pin:busca_padrao/endy_reg_1/Q .original_name {endy[1]/q}
set_db pin:busca_padrao/slv_reg_reg_14_1/Q .original_name {slv_reg[14][1]/q}
set_db pin:busca_padrao/slv_reg_reg_14_2/Q .original_name {slv_reg[14][2]/q}
set_db pin:busca_padrao/slv_reg_reg_14_3/Q .original_name {slv_reg[14][3]/q}
set_db pin:busca_padrao/slv_reg_reg_13_0/Q .original_name {slv_reg[13][0]/q}
set_db pin:busca_padrao/slv_reg_reg_14_0/Q .original_name {slv_reg[14][0]/q}
set_db pin:busca_padrao/slv_reg_reg_13_3/Q .original_name {slv_reg[13][3]/q}
set_db pin:busca_padrao/endy_reg_2/Q .original_name {endy[2]/q}
set_db pin:busca_padrao/endy_reg_0/Q .original_name {endy[0]/q}
set_db pin:busca_padrao/endy_reg_3/Q .original_name {endy[3]/q}
set_db pin:busca_padrao/slv_reg_reg_12_3/Q .original_name {slv_reg[12][3]/q}
set_db pin:busca_padrao/slv_reg_reg_11_1/Q .original_name {slv_reg[11][1]/q}
set_db pin:busca_padrao/slv_reg_reg_12_0/Q .original_name {slv_reg[12][0]/q}
set_db pin:busca_padrao/slv_reg_reg_12_1/Q .original_name {slv_reg[12][1]/q}
set_db pin:busca_padrao/slv_reg_reg_12_2/Q .original_name {slv_reg[12][2]/q}
set_db pin:busca_padrao/slv_reg_reg_11_3/Q .original_name {slv_reg[11][3]/q}
set_db pin:busca_padrao/slv_reg_reg_11_2/Q .original_name {slv_reg[11][2]/q}
set_db pin:busca_padrao/slv_reg_reg_11_0/Q .original_name {slv_reg[11][0]/q}
set_db pin:busca_padrao/slv_reg_reg_10_2/Q .original_name {slv_reg[10][2]/q}
set_db pin:busca_padrao/slv_reg_reg_10_0/Q .original_name {slv_reg[10][0]/q}
set_db pin:busca_padrao/slv_reg_reg_10_1/Q .original_name {slv_reg[10][1]/q}
set_db pin:busca_padrao/EA_reg_3/Q .original_name {EA[3]/q}
set_db pin:busca_padrao/EA_reg_1/Q .original_name {EA[1]/q}
set_db pin:busca_padrao/EA_reg_2/Q .original_name {EA[2]/q}
set_db pin:busca_padrao/EA_reg_0/Q .original_name {EA[0]/q}
set_db pin:busca_padrao/address_reg_7/QN .original_name {address[7]/q}
set_db pin:busca_padrao/address_reg_3/QN .original_name {address[3]/q}
set_db pin:busca_padrao/address_reg_0/QN .original_name {address[0]/q}
set_db pin:busca_padrao/address_reg_1/QN .original_name {address[1]/q}
set_db pin:busca_padrao/address_reg_2/QN .original_name {address[2]/q}
set_db pin:busca_padrao/address_reg_4/QN .original_name {address[4]/q}
set_db pin:busca_padrao/address_reg_6/Q .original_name {address[6]/q}
set_db pin:busca_padrao/address_reg_5/QN .original_name {address[5]/q}
set_db pin:busca_padrao/user_int_reg/Q .original_name {user_int/q}
set_db pin:busca_padrao/reseta_bit_slv_reg0_reg/Q .original_name {reseta_bit_slv_reg0/q}
set_db pin:busca_padrao/endx_reg_0/Q .original_name {endx[0]/q}
set_db pin:busca_padrao/slv_reg_reg_8_1/Q .original_name {slv_reg[8][1]/q}
set_db pin:busca_padrao/slv_reg_reg_8_7/Q .original_name {slv_reg[8][7]/q}
set_db pin:busca_padrao/slv_reg_reg_8_6/Q .original_name {slv_reg[8][6]/q}
set_db pin:busca_padrao/slv_reg_reg_8_4/Q .original_name {slv_reg[8][4]/q}
set_db pin:busca_padrao/slv_reg_reg_8_2/Q .original_name {slv_reg[8][2]/q}
set_db pin:busca_padrao/slv_reg_reg_8_0/Q .original_name {slv_reg[8][0]/q}
set_db pin:busca_padrao/slv_reg_reg_8_5/Q .original_name {slv_reg[8][5]/q}
set_db pin:busca_padrao/slv_reg_reg_8_3/Q .original_name {slv_reg[8][3]/q}
set_db pin:busca_padrao/endx_reg_3/Q .original_name {endx[3]/q}
set_db pin:busca_padrao/endx_reg_1/Q .original_name {endx[1]/q}
set_db pin:busca_padrao/endx_reg_2/Q .original_name {endx[2]/q}
#@ End verbose source layout/logical_busca_padrao.wnm_attrs.tcl
}
#@ source layout/logical_busca_padrao.ndr.tcl
#@ Begin verbose source layout/logical_busca_padrao.ndr.tcl (pre)
eval_legacy {
}
#@ End verbose source layout/logical_busca_padrao.ndr.tcl
pqos_eval { rcp::read_taf layout/logical_busca_padrao.inst_attributes.taf.gz}
eval_legacy {gpsPrivate::readMinLayerCstr -file layout/logical_busca_padrao.min_layer} 
eval_legacy {set edi_pe::pegConsiderMacroLayersUnblocked 1}
eval_legacy {set edi_pe::pegPreRouteWireWidthBasedDensityCalModel 1}
set _t1 [clock seconds]
puts [format  {%%%s End Genus to Innovus Setup (%s, real=%s)} \# [clock format $_t1 -format {%m/%d %H:%M:%S}] [clock format [expr {28800 + $_t1 - $_t0}] -format {%H:%M:%S}]]
#@ End verbose source layout/logical_busca_padrao.invs_setup.tcl
create_floorplan -site CORE12T -core_density_size 1 0.85 3 3 3 3 
#@ End verbose source physical/1_init.tcl
gui_select -point {0.04600 0.02700}
gui_select -point {52.94100 31.65500}
#@ source physical/2_power_plan.tcl
#@ Begin verbose source (pre): source physical/2_power_plan.tcl
=
#@ End verbose source physical/2_power_plan.tcl
#@ source physical/2_power_plan.tcl 
#@ Begin verbose source (pre): source physical/2_power_plan.tcl 
=
#@ End verbose source physical/2_power_plan.tcl
#@ source physical/2_power_plan.tcl 
#@ Begin verbose source (pre): source physical/2_power_plan.tcl 
add_rings -spacing 0.25 -width 0.5 -layer {top M1 bottom M1 left M2 right M2} -jog_distance 2.5 -offset 1.5 -nets {gnd vdd} -threshold 2.5
route_special -connect {block_pin core_pin pad_pin pad_ring floating_stripe} -layer_change_range {M1 AP} -block_pin_target {nearest_target} -pad_pin_port_connect {all_port one_geom} -block_pin {use_lef} -allow_jogging 1  -crossover_via_layer_range {M1 AP} -allow_layer_change 1 -target_via_layer_range {M1 AP} -nets {gnd vdd}
add_well_taps -cell HS65_GS_FILLERNPWPFP3 -cell_interval 20 -fixed_gap -prefix WELLTAP -in_row_offset 2.0
add_stripes -block_ring_top_layer_limit M3 -max_same_layer_jog_length 6 -pad_core_ring_bottom_layer_limit M1 -set_to_set_distance 25 -pad_core_ring_top_layer_limit M3 -spacing 5 -merge_stripes_value 2.5 -layer M2 -block_ring_bottom_layer_limit M1 -width 0.5 -nets {gnd vdd}
gui_fit
#@ End verbose source: physical/2_power_plan.tcl
gui_select -point {40.55900 27.95200}
gui_select -point {40.44300 27.14200}
gui_select -rect {-2.72200 74.82000 80.25100 -0.97800}
delete_selected_from_floorplan
gui_select -point {12.55400 8.74200}
add_rings -spacing 0.25 -width 0.5 -layer {top M1 bottom M1 left M2 right M2} -jog_distance 2.5 -offset 1.5 -nets {gnd vdd} -threshold 2.5
add_rings -spacing 0.25 -width 0.5 -layer {top M1 bottom M1 left M2 right M2} -jog_distance 2.5 -offset 1.5 -nets {gnd vdd} -threshold 2.5
add_rings -spacing 0.5 -width 0.5 -layer {top M1 bottom M1 left M2 right M2} -jog_distance 2.5 -offset 1.5 -nets {gnd vdd} -threshold 2.5
#@ source physical/1_init.tcl
#@ Begin verbose source (pre): source physical/1_init.tcl
set_db init_power_nets {VDD vdd vdd!}
set_db init_ground_nets {VSS GND gnd gnd!}
#@ source layout/logical_busca_padrao.invs_setup.tcl
#@ Begin verbose source layout/logical_busca_padrao.invs_setup.tcl (pre)
namespace eval ::genus_innovus_version_check { 
        set minimum_version 21
        set maximum_version 22
        regexp {\d\d} [get_db program_version] this_version
        puts "Checking Innovus major version against Genus expectations ..."
        if { $this_version < $minimum_version || $this_version > $maximum_version } {
          error "**ERROR: this operation requires Innovus major version to be between '$minimum_version' and '$maximum_version'."
        }
      }
set _t0 [clock seconds]
puts [format  {%%%s Begin Genus to Innovus Setup (%s)} \# [clock format $_t0 -format {%m/%d %H:%M:%S}]]
set_db read_physical_allow_multiple_port_pin_without_must_join true
set_db must_join_all_ports true
set_db timing_cap_unit 1pf
set_db timing_time_unit 1ns
source -quiet /soft64/cadence/ferramentas/GENUS211/tools.lnx86/lib/cdn/rc/edi/innovus_procs_common_ui.tcl
#@ source layout/logical_busca_padrao.flowkit_settings.tcl
#@ Begin verbose source layout/logical_busca_padrao.flowkit_settings.tcl (pre)
if {[is_attribute flow_edit_end_steps -obj_type root]} {
set_db flow_edit_end_steps {}
}
if {[is_attribute flow_edit_start_steps -obj_type root]} {
set_db flow_edit_start_steps {}
}
if {[is_attribute flow_footer_tcl -obj_type root]} {
set_db flow_footer_tcl {}
}
if {[is_attribute flow_header_tcl -obj_type root]} {
set_db flow_header_tcl {}
}
if {[is_attribute flow_metadata -obj_type root]} {
set_db flow_metadata {}
}
if {[is_attribute flow_setup_config -obj_type root]} {
set_db flow_setup_config {HUDDLE {!!map {}}}
}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {
set_db flow_step_begin_tcl {}
}
if {[is_attribute flow_step_check_tcl -obj_type root]} {
set_db flow_step_check_tcl {}
}
if {[is_attribute flow_step_end_tcl -obj_type root]} {
set_db flow_step_end_tcl {}
}
if {[is_attribute flow_step_order -obj_type root]} {
set_db flow_step_order {}
}
if {[is_attribute flow_summary_tcl -obj_type root]} {
set_db flow_summary_tcl {}
}
if {[is_attribute flow_template_feature_definition -obj_type root]} {
set_db flow_template_feature_definition {}
}
if {[is_attribute flow_template_type -obj_type root]} {
set_db flow_template_type {}
}
if {[is_attribute flow_template_tools -obj_type root]} {
set_db flow_template_tools {}
}
if {[is_attribute flow_template_version -obj_type root]} {
set_db flow_template_version {}
}
if {[is_attribute flow_user_templates -obj_type root]} {
set_db flow_user_templates {}
}
if {[is_attribute flow_user_templates -obj_type root]} {
set_db flow_user_templates {}
}
if {[is_attribute flow_plugin_steps -obj_type root]} {
set_db flow_plugin_steps {}
}
if {[is_attribute flow_template_type -obj_type root]} {
set_db flow_template_type {}
}
if {[is_attribute flow_template_tools -obj_type root]} {
set_db flow_template_tools {}
}
if {[is_attribute flow_template_version -obj_type root]} {
set_db flow_template_version {}
}
if {[is_attribute flow_template_feature_definition -obj_type root]} {
set_db flow_template_feature_definition {}
}
if {[is_attribute flow_remark -obj_type root]} {
set_db flow_remark {}
}
if {[is_attribute flow_features -obj_type root]} {
set_db flow_features {}
}
if {[is_attribute flow_feature_values -obj_type root]} {
set_db flow_feature_values {}
}
if {[is_attribute flow_write_db_args -obj_type root]} {
set_db flow_write_db_args {}
}
if {[is_attribute flow_write_db_sdc -obj_type root]} {
set_db flow_write_db_sdc true
}
if {[is_attribute flow_write_db_common -obj_type root]} {
set_db flow_write_db_common false
}
if {[is_attribute flow_post_db_overwrite -obj_type root]} {
set_db flow_post_db_overwrite {}
}
if {[is_attribute flow_step_order -obj_type root]} {
set_db flow_step_order {}
}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {
set_db flow_step_begin_tcl {}
}
if {[is_attribute flow_step_end_tcl -obj_type root]} {
set_db flow_step_end_tcl {}
}
if {[is_attribute flow_step_last -obj_type root]} {
set_db flow_step_last {}
}
if {[is_attribute flow_step_current -obj_type root]} {
set_db flow_step_current {}
}
if {[is_attribute flow_step_canonical_current -obj_type root]} {
set_db flow_step_canonical_current {}
}
if {[is_attribute flow_step_next -obj_type root]} {
set_db flow_step_next {}
}
if {[is_attribute flow_working_directory -obj_type root]} {
set_db flow_working_directory .
}
if {[is_attribute flow_branch -obj_type root]} {
set_db flow_branch {}
}
if {[is_attribute flow_caller_data -obj_type root]} {
set_db flow_caller_data {}
}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {
set_db flow_metrics_snapshot_uuid d88e1a6a-05c1-41b0-87af-762635e0beda
}
if {[is_attribute flow_starting_db -obj_type root]} {
set_db flow_starting_db {}
}
if {[is_attribute flow_db_directory -obj_type root]} {
set_db flow_db_directory dbs
}
if {[is_attribute flow_report_directory -obj_type root]} {
set_db flow_report_directory reports
}
if {[is_attribute flow_log_directory -obj_type root]} {
set_db flow_log_directory logs
}
if {[is_attribute flow_mail_to -obj_type root]} {
set_db flow_mail_to {}
}
if {[is_attribute flow_exit_when_done -obj_type root]} {
set_db flow_exit_when_done false
}
if {[is_attribute flow_mail_on_error -obj_type root]} {
set_db flow_mail_on_error false
}
if {[is_attribute flow_summary_tcl -obj_type root]} {
set_db flow_summary_tcl {}
}
if {[is_attribute flow_history -obj_type root]} {
set_db flow_history {}
}
if {[is_attribute flow_step_last_status -obj_type root]} {
set_db flow_step_last_status not_run
}
if {[is_attribute flow_step_last_msg -obj_type root]} {
set_db flow_step_last_msg {}
}
if {[is_attribute flow_run_tag -obj_type root]} {
set_db flow_run_tag {}
}
if {[is_attribute flow_current_cache -obj_type root]} {
set_db flow_current_cache {}
}
if {[is_attribute flow_step_order_cache -obj_type root]} {
set_db flow_step_order_cache {}
}
if {[is_attribute flow_step_results_cache -obj_type root]} {
set_db flow_step_results_cache {}
}
if {[is_attribute flow_metadata -obj_type root]} {
set_db flow_metadata {}
}
if {[is_attribute flow_execute_in_global -obj_type root]} {
set_db flow_execute_in_global true
}
if {[is_attribute flow_overwrite_db -obj_type root]} {
set_db flow_overwrite_db false
}
if {[is_attribute flow_print_run_information -obj_type root]} {
set_db flow_print_run_information false
}
if {[is_attribute flow_verbose -obj_type root]} {
set_db flow_verbose true
}
if {[is_attribute flow_print_run_information_full -obj_type root]} {
set_db flow_print_run_information_full false
}
if {[is_attribute flow_header_tcl -obj_type root]} {
set_db flow_header_tcl {}
}
if {[is_attribute flow_footer_tcl -obj_type root]} {
set_db flow_footer_tcl {}
}
if {[is_attribute flow_init_header_tcl -obj_type root]} {
set_db flow_init_header_tcl {}
}
if {[is_attribute flow_init_footer_tcl -obj_type root]} {
set_db flow_init_footer_tcl {}
}
if {[is_attribute flow_edit_start_steps -obj_type root]} {
set_db flow_edit_start_steps {}
}
if {[is_attribute flow_edit_end_steps -obj_type root]} {
set_db flow_edit_end_steps {}
}
if {[is_attribute flow_step_last_number -obj_type root]} {
set_db flow_step_last_number 0
}
if {[is_attribute flow_autoload_applets -obj_type root]} {
set_db flow_autoload_applets false
}
if {[is_attribute flow_autoload_dir -obj_type root]} {
set_db flow_autoload_dir error
}
if {[is_attribute flow_skip_auto_db_save -obj_type root]} {
set_db flow_skip_auto_db_save true
}
if {[is_attribute flow_skip_auto_generate_metrics -obj_type root]} {
set_db flow_skip_auto_generate_metrics false
}
if {[is_attribute flow_top -obj_type root]} {
set_db flow_top {}
}
if {[is_attribute flow_hier_path -obj_type root]} {
set_db flow_hier_path {}
}
if {[is_attribute flow_schedule -obj_type root]} {
set_db flow_schedule {}
}
if {[is_attribute flow_step_check_tcl -obj_type root]} {
set_db flow_step_check_tcl {}
}
if {[is_attribute flow_script -obj_type root]} {
set_db flow_script {}
}
if {[is_attribute flow_yaml_script -obj_type root]} {
set_db flow_yaml_script {}
}
if {[is_attribute flow_cla_enabled_features -obj_type root]} {
set_db flow_cla_enabled_features {}
}
if {[is_attribute flow_cla_inject_tcl -obj_type root]} {
set_db flow_cla_inject_tcl {}
}
if {[is_attribute flow_error_message -obj_type root]} {
set_db flow_error_message {}
}
if {[is_attribute flow_error_errorinfo -obj_type root]} {
set_db flow_error_errorinfo {}
}
if {[is_attribute flow_exclude_time_for_init_flow -obj_type root]} {
set_db flow_exclude_time_for_init_flow false
}
if {[is_attribute flow_error_write_db -obj_type root]} {
set_db flow_error_write_db true
}
if {[is_attribute flow_advanced_metric_isolation -obj_type root]} {
set_db flow_advanced_metric_isolation flow
}
if {[is_attribute flow_yaml_root -obj_type root]} {
set_db flow_yaml_root {}
}
if {[is_attribute flow_yaml_root_dir -obj_type root]} {
set_db flow_yaml_root_dir {}
}
if {[is_attribute flow_setup_config -obj_type root]} {
set_db flow_setup_config {HUDDLE {!!map {}}}
}
#@ End verbose source layout/logical_busca_padrao.flowkit_settings.tcl
#@ source layout/logical_busca_padrao.invs_init.tcl
#@ Begin verbose source layout/logical_busca_padrao.invs_init.tcl (pre)
if { ![is_common_ui_mode] } {...}
read_mmmc layout/logical_busca_padrao.mmmc.tcl
#@ End verbose source layout/logical_busca_padrao.invs_init.tcl
#@ End verbose source layout/logical_busca_padrao.invs_setup.tcl
#@ End verbose source physical/1_init.tcl
gui_select -point {22.73700 29.22500}
#@ source physical/2_power_plan.tcl 
#@ Begin verbose source (pre): source physical/2_power_plan.tcl 
add_rings -spacing 0.25 -width 0.5 -layer {top M1 bottom M1 left M2 right M2} -jog_distance 2.5 -offset 1.5 -nets {gnd vdd} -threshold 2.5
route_special -connect {block_pin core_pin pad_pin pad_ring floating_stripe} -layer_change_range {M1 AP} -block_pin_target {nearest_target} -pad_pin_port_connect {all_port one_geom} -block_pin {use_lef} -allow_jogging 1  -crossover_via_layer_range {M1 AP} -allow_layer_change 1 -target_via_layer_range {M1 AP} -nets {gnd vdd}
add_well_taps -cell HS65_GS_FILLERNPWPFP3 -cell_interval 20 -fixed_gap -prefix WELLTAP -in_row_offset 2.0
add_stripes -block_ring_top_layer_limit M3 -max_same_layer_jog_length 6 -pad_core_ring_bottom_layer_limit M1 -set_to_set_distance 25 -pad_core_ring_top_layer_limit M3 -spacing 5 -merge_stripes_value 2.5 -layer M2 -block_ring_bottom_layer_limit M1 -width 0.5 -nets {gnd vdd}
gui_fit
#@ End verbose source: physical/2_power_plan.tcl
#@ source physical/2_power_plan.tcl 
#@ Begin verbose source (pre): source physical/2_power_plan.tcl 
add_rings -spacing 0.25 -width 0.5 -layer {top M1 bottom M1 left M2 right M2} -jog_distance 2.5 -offset 1.5 -nets {gnd vdd} -threshold 2.5
route_special -connect {block_pin core_pin pad_pin pad_ring floating_stripe} -layer_change_range {M1 AP} -block_pin_target {nearest_target} -pad_pin_port_connect {all_port one_geom} -block_pin {use_lef} -allow_jogging 1  -crossover_via_layer_range {M1 AP} -allow_layer_change 1 -target_via_layer_range {M1 AP} -nets {gnd vdd}
add_well_taps -cell HS65_GS_FILLERNPWPFP3 -cell_interval 20 -fixed_gap -prefix WELLTAP -in_row_offset 2.0
add_stripes -block_ring_top_layer_limit M3 -max_same_layer_jog_length 6 -pad_core_ring_bottom_layer_limit M1 -set_to_set_distance 25 -pad_core_ring_top_layer_limit M3 -spacing 5 -merge_stripes_value 2.5 -layer M2 -block_ring_bottom_layer_limit M1 -width 0.5 -nets {gnd vdd}
#@ End verbose source: physical/2_power_plan.tcl
gui_select -point {50.62600 43.34300}
#@ source physical/1_init.tcl
#@ Begin verbose source (pre): source physical/1_init.tcl
set_db init_power_nets {VDD vdd vdd!}
set_db init_ground_nets {VSS GND gnd gnd!}
#@ source layout/busca_padrao.invs_setup.tcl
#@ End verbose source physical/1_init.tcl
#@ source physical/2_power_plan.tcl 
#@ Begin verbose source (pre): source physical/2_power_plan.tcl 
delete_global_net_connections
connect_global_net vdd -type pg_pin -pin_base_name vdd -inst_base_name *
connect_global_net gnd -type pg_pin -pin_base_name gnd -inst_base_name *
connect_global_net vdd -type tie_hi -inst_base_name *
connect_global_net gnd -type tie_lo -inst_base_name *
add_rings -spacing 0.25 -width 0.5 -layer {top M1 bottom M1 left M2 right M2} -jog_distance 2.5 -offset 1.5 -nets {gnd vdd} -threshold 2.5
route_special -connect {block_pin core_pin pad_pin pad_ring floating_stripe} -layer_change_range {M1 AP} -block_pin_target {nearest_target} -pad_pin_port_connect {all_port one_geom} -block_pin {use_lef} -allow_jogging 1  -crossover_via_layer_range {M1 AP} -allow_layer_change 1 -target_via_layer_range {M1 AP} -nets {gnd vdd}
add_well_taps -cell HS65_GS_FILLERNPWPFP3 -cell_interval 20 -fixed_gap -prefix WELLTAP -in_row_offset 2.0
add_stripes -block_ring_top_layer_limit M3 -max_same_layer_jog_length 6 -pad_core_ring_bottom_layer_limit M1 -set_to_set_distance 25 -pad_core_ring_top_layer_limit M3 -spacing 5 -merge_stripes_value 2.5 -layer M2 -block_ring_bottom_layer_limit M1 -width 0.5 -nets {gnd vdd}
#@ End verbose source: physical/2_power_plan.tcl
