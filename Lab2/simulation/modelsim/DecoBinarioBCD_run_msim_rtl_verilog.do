transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/berta/OneDrive/Documentos/TallerD/lab2 {C:/Users/berta/OneDrive/Documentos/TallerD/lab2/conversorBinarioBCD.sv}
vlog -sv -work work +incdir+C:/Users/berta/OneDrive/Documentos/TallerD/lab2 {C:/Users/berta/OneDrive/Documentos/TallerD/lab2/sevenseg.sv}
vlog -sv -work work +incdir+C:/Users/berta/OneDrive/Documentos/TallerD/lab2 {C:/Users/berta/OneDrive/Documentos/TallerD/lab2/compactDeco.sv}

