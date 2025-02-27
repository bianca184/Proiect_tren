# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/bianc/Desktop/Tren/Tren.cache/wt [current_project]
set_property parent.project_path C:/Users/bianc/Desktop/Tren/Tren.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/bianc/Desktop/Tren/Tren.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/bianc/Desktop/ProiectTrenV3/CFR_Calatori/CFR_Calatori.srcs/sources_1/new/CasaDeBani.vhd
  C:/Users/bianc/Desktop/ProiectTrenV3/CFR_Calatori/CFR_Calatori.srcs/sources_1/new/SelectareRuta.vhd
  C:/Users/bianc/Desktop/ProiectTrenV3/CFR_Calatori/CFR_Calatori.srcs/sources_1/new/Afisor.vhd
  C:/Users/bianc/Desktop/ProiectTrenV3/CFR_Calatori/CFR_Calatori.srcs/sources_1/new/Debouncer.vhd
  C:/Users/bianc/Desktop/ProiectTrenV3/CFR_Calatori/CFR_Calatori.srcs/sources_1/new/ModPlata.vhd
  C:/Users/bianc/Desktop/ProiectTrenV3/CFR_Calatori/CFR_Calatori.srcs/sources_1/new/Decodificator.vhd
  C:/Users/bianc/Desktop/ProiectTrenV3/CFR_Calatori/CFR_Calatori.srcs/sources_1/new/MAIN.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/bianc/Desktop/ProiectTrenV3/CFR_Calatori/CFR_Calatori.srcs/constrs_1/new/Constrains.xdc
set_property used_in_implementation false [get_files C:/Users/bianc/Desktop/ProiectTrenV3/CFR_Calatori/CFR_Calatori.srcs/constrs_1/new/Constrains.xdc]


synth_design -top MAIN -part xc7a35tcpg236-1


write_checkpoint -force -noxdef MAIN.dcp

catch { report_utilization -file MAIN_utilization_synth.rpt -pb MAIN_utilization_synth.pb }
