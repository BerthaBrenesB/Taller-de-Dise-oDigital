//`timescale 10us/1us

module control(input logic clk, rst,
					input logic [2:0] seleccion,
					output logic agua, cafe, leche, chocolate, azucar, finish,output logic [1:0]segundos);  // estas señales van a las "electroválvulas" (los leds en la fpga)7
//hay que agregar los inputs de los botones (monedas / selección) y el output de la cantidad de dinero 



// Control de FSM preparadora de bebidas
logic [1:0] t_agua, t_cafe, t_leche, t_chocolate, t_azucar;
logic [2:0] bebida;

logic rst_segundos;

Registro_bebida reg_bebida(clk,rst, finish, seleccion, bebida);
mux_tiempos mux_t(bebida, t_agua, t_cafe, t_leche, t_chocolate, t_azucar);
slow_counter#(.N(2), .clk_half_period(10)) counter_segundos (clk, rst_segundos, ~finish, segundos);
FSM_Preparadora preparadora (bebida, clk, rst, segundos, t_agua, t_cafe, t_leche, t_chocolate, t_azucar, agua, cafe, leche, chocolate, azucar, rst_segundos, finish);


endmodule
