transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/Lab3/ALU.1 {C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/Lab3/ALU.1/method_subtraction.sv}
vlog -sv -work work +incdir+C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/Lab3/ALU.1 {C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/Lab3/ALU.1/method_sub_2_tb.sv}
