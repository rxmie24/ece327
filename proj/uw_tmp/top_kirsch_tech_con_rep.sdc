###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name HIERARCHY -value "preserve_interface_block" -instance u_uw_uart -design gatelevel 
set_attribute -name HIERARCHY -value "preserve_interface_block" -instance u_kirsch -design gatelevel 
set_attribute -name hierarchy -value "preserve_interface_block_and_sub_blocks" /work/top_kirsch/main -design gatelevel 
set_attribute -name KEEP_HIERARCHY -value "TRUE" /work/top_kirsch/main -design gatelevel 
set_attribute -name HIERARCHY -value "preserve_interface_block" -instance u_uw_uart/i_uarts -design gatelevel 
set_attribute -name HIERARCHY -value "preserve_interface_block" /work/uw_uart/main_unfold_1876 -design gatelevel 
set_attribute -name HIERARCHY -value "preserve_interface_block" /work/UARTS/RTL_unfold_1358 -design gatelevel 


set_attribute -name HIERARCHY -value "preserve_interface_block" /work/kirsch/main_unfold_1777 -design gatelevel 



##################
# Clocks
##################
create_clock { clk } -domain ClockDomain0 -name clk -period 20.000000 -waveform { 0.000000 10.000000 } -design gatelevel 
