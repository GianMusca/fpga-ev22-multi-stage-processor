transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/alero/Desktop/QUARTUS_GIAN/EV22-G1/example {C:/Users/alero/Desktop/QUARTUS_GIAN/EV22-G1/example/RAM_ALEX.v}
