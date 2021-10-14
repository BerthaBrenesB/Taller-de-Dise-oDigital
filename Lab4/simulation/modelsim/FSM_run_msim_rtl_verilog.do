transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/igna/Documents/U/Semestre\ 6/Taller\ Digital/Taller-de-Dise-oDigital/Lab4 {/home/igna/Documents/U/Semestre 6/Taller Digital/Taller-de-Dise-oDigital/Lab4/method_substractor.sv}
vlog -sv -work work +incdir+/home/igna/Documents/U/Semestre\ 6/Taller\ Digital/Taller-de-Dise-oDigital/Lab4 {/home/igna/Documents/U/Semestre 6/Taller Digital/Taller-de-Dise-oDigital/Lab4/mux_tiempos.sv}
vlog -sv -work work +incdir+/home/igna/Documents/U/Semestre\ 6/Taller\ Digital/Taller-de-Dise-oDigital/Lab4 {/home/igna/Documents/U/Semestre 6/Taller Digital/Taller-de-Dise-oDigital/Lab4/control.sv}
vlog -sv -work work +incdir+/home/igna/Documents/U/Semestre\ 6/Taller\ Digital/Taller-de-Dise-oDigital/Lab4 {/home/igna/Documents/U/Semestre 6/Taller Digital/Taller-de-Dise-oDigital/Lab4/slow_counter.sv}
vlog -sv -work work +incdir+/home/igna/Documents/U/Semestre\ 6/Taller\ Digital/Taller-de-Dise-oDigital/Lab4 {/home/igna/Documents/U/Semestre 6/Taller Digital/Taller-de-Dise-oDigital/Lab4/FSMCompleta.sv}
vlog -sv -work work +incdir+/home/igna/Documents/U/Semestre\ 6/Taller\ Digital/Taller-de-Dise-oDigital/Lab4 {/home/igna/Documents/U/Semestre 6/Taller Digital/Taller-de-Dise-oDigital/Lab4/Counter_coins.sv}
vlog -sv -work work +incdir+/home/igna/Documents/U/Semestre\ 6/Taller\ Digital/Taller-de-Dise-oDigital/Lab4 {/home/igna/Documents/U/Semestre 6/Taller Digital/Taller-de-Dise-oDigital/Lab4/Comparator_coins.sv}
vlog -sv -work work +incdir+/home/igna/Documents/U/Semestre\ 6/Taller\ Digital/Taller-de-Dise-oDigital/Lab4 {/home/igna/Documents/U/Semestre 6/Taller Digital/Taller-de-Dise-oDigital/Lab4/Register.sv}
vlog -sv -work work +incdir+/home/igna/Documents/U/Semestre\ 6/Taller\ Digital/Taller-de-Dise-oDigital/Lab4 {/home/igna/Documents/U/Semestre 6/Taller Digital/Taller-de-Dise-oDigital/Lab4/FSM_Preparadora.sv}
vlog -sv -work work +incdir+/home/igna/Documents/U/Semestre\ 6/Taller\ Digital/Taller-de-Dise-oDigital/Lab4 {/home/igna/Documents/U/Semestre 6/Taller Digital/Taller-de-Dise-oDigital/Lab4/lab_compact.sv}
vlog -sv -work work +incdir+/home/igna/Documents/U/Semestre\ 6/Taller\ Digital/Taller-de-Dise-oDigital/Lab4 {/home/igna/Documents/U/Semestre 6/Taller Digital/Taller-de-Dise-oDigital/Lab4/Registro_bebida.sv}
vlog -sv -work work +incdir+/home/igna/Documents/U/Semestre\ 6/Taller\ Digital/Taller-de-Dise-oDigital/Lab4 {/home/igna/Documents/U/Semestre 6/Taller Digital/Taller-de-Dise-oDigital/Lab4/mux_precio.sv}
vlog -sv -work work +incdir+/home/igna/Documents/U/Semestre\ 6/Taller\ Digital/Taller-de-Dise-oDigital/Lab4 {/home/igna/Documents/U/Semestre 6/Taller Digital/Taller-de-Dise-oDigital/Lab4/Register_vuelto.sv}
vlog -sv -work work +incdir+/home/igna/Documents/U/Semestre\ 6/Taller\ Digital/Taller-de-Dise-oDigital/Lab4 {/home/igna/Documents/U/Semestre 6/Taller Digital/Taller-de-Dise-oDigital/Lab4/Register_vuelto_permanente.sv}

vlog -sv -work work +incdir+/home/igna/Documents/U/Semestre\ 6/Taller\ Digital/Taller-de-Dise-oDigital/Lab4 {/home/igna/Documents/U/Semestre 6/Taller Digital/Taller-de-Dise-oDigital/Lab4/lab_compac_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  lab_compac_tb

add wave *
view structure
view signals
run 10 sec
