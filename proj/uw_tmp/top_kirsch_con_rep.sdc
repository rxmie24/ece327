###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name hierarchy -value "preserve_interface_block_and_sub_blocks" /work/top_kirsch/main_XRTL -design rtl 

##################
# Clocks
##################
create_clock { clk } -domain ClockDomain0 -name clk -period 20.000000 -waveform { 0.000000 10.000000 } -design rtl 
