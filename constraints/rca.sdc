# Create the virtual clock (used for I/O timing reference)
create_clock -name VCLK -period 8.0

# Set input delay relative to virtual clock
set_input_delay -max 0.8 -clock VCLK [all_inputs]

# Set input transition time
set_input_transition 0.1 [all_inputs]

# Set output delay relative to virtual clock
set_output_delay -max 0.8 -clock VCLK [all_outputs]

# Clock uncertainty
set_clock_uncertainty -setup 0.20 [get_clocks VCLK]
set_clock_uncertainty -hold  0.10 [get_clocks VCLK]

# Max transition constraint
set_max_transition 0.2 [current_design]