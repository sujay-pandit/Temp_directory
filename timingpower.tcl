# sdf example
read_liberty ./skywater_130nm.lib
read_verilog synth_core.yv
link_design mkccore_axi4
#read_verilog synth_alu.yv
#link_design module_fn_alu
create_clock -name clk -period 5000 {CLK}
#set_input_delay -clock clk 0 {in1 in2}
report_checks
report_power
