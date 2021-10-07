transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/TareaBertha {C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/TareaBertha/Comparator.sv}
vlog -sv -work work +incdir+C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/TareaBertha {C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/TareaBertha/Counter.sv}
vlog -sv -work work +incdir+C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/TareaBertha {C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/TareaBertha/FSM.sv}
vlog -sv -work work +incdir+C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/TareaBertha {C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/TareaBertha/mantenimiento.sv}
vlog -sv -work work +incdir+C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/TareaBertha {C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/TareaBertha/Mux_2_to_1.sv}
vlog -sv -work work +incdir+C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/TareaBertha {C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/TareaBertha/Register.sv}
vlog -sv -work work +incdir+C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/TareaBertha {C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/TareaBertha/mantenimiento_tb.sv}

