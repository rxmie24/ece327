#--------------------------------------------------------------
# remove xrf files to prevent warning about moving them because
# they already exist

my_rm( ["uw_tmp/*.xrf", "uw_tmp/*.qsf"] )

my_mkdir( "LOG" )

#--------------------------------------------------------------
# run precision

xsys( "precision -shell -file uw_tmp/uw-logic-synth-precision_rtl.tcl" )

#--------------------------------------------------------------
# build shim architecture

# copy modelsim.ini to local directory
xsys( "vmap -c" )

xsys( "vlib work-msim")

# get synthesized entity (std_logic vector and no generics)
xsys( "vlog -novopt -work work-msim uw_tmp/top_kirsch_logic.v")

# fix up _logic.vhd file
vgencomp_to_arch( "top_kirsch", "logic", [] + [ "mem.vhd", "kirsch_synth_pkg.vhd", "kirsch.vhd", "lib_kirsch.vhd", "top_kirsch.vhd" ] )

my_mv( "uw_tmp/top_kirsch.edf", "uw_tmp/top_kirsch_logic.edf" )
my_rm( ["uw_tmp*_modelnotmatched.rep"] )
