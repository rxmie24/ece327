set_results_dir "uw_tmp/"

# first setup_design must set *only* technology info
setup_design \
  -manufacturer Altera \
  -family {Cyclone II} \
  -part EP2C35F672C \
  -speed 7 
#----------------------------------------------------------------------
setup_design -edif -vhdl
setup_design \
  -frequency 50 \
  -design top_kirsch
setup_design \
  -addio=false
if { {main} != {} } {
  setup_design -architecture main
  puts "USING DESIGN ARCH"
}
setup_design -overrides {  }


#!!MDA: doesn't work for technologies that we use
# setup_design \
#   -compile_for_timing 

# setup_design -2004c_compile_mode  !!MDA: breaks when run quartus

#----------------------------------------------------------------------


# add_input_file -search_path $VHDL_PATH
# add_input_file [list [concat {  } { mem.vhd kirsch_synth_pkg.vhd kirsch.vhd lib_kirsch.vhd top_kirsch.vhd }] ]
foreach file [concat {  } { mem.vhd kirsch_synth_pkg.vhd kirsch.vhd lib_kirsch.vhd top_kirsch.vhd }] {
  add_input_file $file
}  

compile

set_attribute \
  -name hierarchy \
  -value preserve_interface_block_and_sub_blocks


auto_write uw_tmp/top_kirsch_gate.vhd

# verilog needed for vgencomp_to_arch
auto_write uw_tmp/top_kirsch_logic.v

report_area \
   -hierarchy \
   RPT/area_gate.rpt

#----------------------------------------------------------------------
# synthesize
#----------------------------------------------------------------------

synthesize

#----------------------------------------------------------------------

report_area \
  -hierarchy \
  RPT/area_logic.rpt

set clocks [ find_clocks ]
set has_timing_constraint [expr ! [ string equal "" "20" ] ]
set is_comb               [string equal "" "$clocks" ]

if { $has_timing_constraint } {
  #------------------------------------------------------------
  # have timing constraints
  
  set synth_clk_period 20
  
  if { $is_comb } then {
    #--------------------------------------------------
    # purely combinational --- use virtual clock to contrain timing
    #
    create_clock -name VIRT_CLK -period $synth_clk_period
    set_input_delay  0 -clock VIRT_CLK [all_inputs]
    set_output_delay 0 -clock VIRT_CLK [all_outputs]
    #--------------------------------------------------
  } else {  
    #--------------------------------------------------
    # clocked design
  
    set clock [ lindex $clocks 0 ]
    # create_clock -period $synth_clk_period $clock
    set_input_delay 0 [ all_inputs ] -clock $clock
    set_output_delay 0 [ all_outputs ] -clock $clock
  }

  report_timing \
    -num_paths 5 \
    -clock_frequency \
    RPT/timing_logic.rpt
      
  # this does not work as intended
  # set timing_srcs [all_inputs]
  # lappend timing_srcs [all_registers -output_pins]
  # 
  # set timing_dsts [all_outputs]
  # lappend timing_dsts [all_registers -data_pins]
  # 
  # report_timing \
  #  -from $timing_srcs \
  #   -to $timing_dsts \
  #   -num_paths 5 \
  #   -clock_frequency \
  #  RPT/timing_logic2.rpt
      
}

#----------------------------------------------------------------------

# edf is written by synthesize command above


#----------------------------------------------------------------------
# the end
#----------------------------------------------------------------------

puts "*** logic synthesis succeeded ***"

# no need to test for False to control exit,
# because Precision automatically exits when run with -file <scriptname>
