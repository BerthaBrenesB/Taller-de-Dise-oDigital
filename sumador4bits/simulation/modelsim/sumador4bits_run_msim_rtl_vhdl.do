transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/sumador4bits/sumador1bit.vhd}
vcom -93 -work work {C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/sumador4bits/sumador4bits.vhd}
vcom -93 -work work {C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/sumador4bits/seven_seg_decoder.vhd}
vcom -93 -work work {C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/sumador4bits/compacto.vhd}

vcom -93 -work work {C:/Users/berta/OneDrive/Documentos/GitHub/Taller-de-Dise-oDigital/sumador4bits/sumador4bits_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  sumador4bits_tb

add wave *
view structure
view signals
run -all
