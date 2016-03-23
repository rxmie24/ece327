###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name hierarchy -value "preserve_interface_block_and_sub_blocks" /work/kirsch/main -design gatelevel 
set_attribute -name KEEP_HIERARCHY -value "TRUE" /work/kirsch/main -design gatelevel 


##################
# Clocks
##################
create_clock  -domain Design_Clock -name Design_Clock -period 20.000000 -waveform { 0.000000 10.000000 } -design gatelevel 
