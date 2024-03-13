transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Midsem/Gates.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Midsem/DUT.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Midsem/XOR.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Midsem/OR.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Midsem/FullAdder.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Midsem/AND.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Midsem/Adder-Subtractor.vhdl}
vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Midsem/Midsem.vhdl}

vcom -93 -work work {C:/Users/Hardik Gohil/OneDrive - Indian Institute of Technology Bombay/Study/Digital Lab/Practice/Midsem/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
