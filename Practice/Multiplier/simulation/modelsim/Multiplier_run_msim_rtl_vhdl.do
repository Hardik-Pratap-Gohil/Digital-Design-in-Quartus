transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Multiplier/Gates.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Multiplier/DUT.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Multiplier/XOR.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Multiplier/OR.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Multiplier/AND.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Multiplier/FullAdder.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Multiplier/Multiplier.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Multiplier/6bitadder.vhdl}

vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Multiplier/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all