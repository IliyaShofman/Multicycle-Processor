onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /multicycle_tb/reset
add wave -noupdate /multicycle_tb/clock
add wave -noupdate -divider {Registers}
add wave -position 3  -noupdate -radix decimal sim:/multicycle_tb/DUT/RF_block/k0
add wave -position 4  -noupdate -radix decimal sim:/multicycle_tb/DUT/RF_block/k1
add wave -position 5  -noupdate -radix decimal sim:/multicycle_tb/DUT/RF_block/k2
add wave -position 6  -noupdate -radix decimal sim:/multicycle_tb/DUT/RF_block/k3
add wave -noupdate -divider {Control}
add wave -noupdate -radix unsigned sim:/multicycle_tb/DUT/PC/data
add wave -noupdate -radix unsigned sim:/multicycle_tb/DUT/Control/state
add wave -noupdate -radix unsigned sim:/multicycle_tb/DUT/Control/count
add wave -noupdate -divider {Memory_Data}
add wave -noupdate -divider {Initial_(1,4,9,16)_vect}
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data(128)
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data(129)
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data(130)
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data(131)
add wave -noupdate -divider {writing_(3,5,7,9)_vect}
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data(64)
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data(65)
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data(66)
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data(67)
add wave -noupdate -divider {OUTPUT}
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data(100)
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data(101)
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data(102)
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data(103)
add wave -noupdate -divider {TEMP_REGISTERS}
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/T0/q
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/T1/q
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/T2/q
add wave -noupdate -radix decimal sim:/multicycle_tb/DUT/T3/q 
add wave -noupdate -divider {VECTOR_FILE_REGISTERS}
add wave -noupdate -radix hexadecimal sim:/multicycle_tb/DUT/VRF_block/v0
add wave -noupdate -radix hexadecimal sim:/multicycle_tb/DUT/VRF_block/v1
add wave -noupdate -radix hexadecimal sim:/multicycle_tb/DUT/VRF_block/v2
add wave -noupdate -radix hexadecimal sim:/multicycle_tb/DUT/VRF_block/v3
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2500 ns} 0}
configure wave -namecolwidth 227
configure wave -valuecolwidth 57
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {2500 ns}


