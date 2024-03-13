transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Full subtractor/Gates.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Full subtractor/DUT.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Full subtractor/XOR.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Full subtractor/OR.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Full subtractor/AND.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Full subtractor/FullSubtractor.vhdl}

vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Full subtractor/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
