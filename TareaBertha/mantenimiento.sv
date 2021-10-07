module mantenimiento (input clk, rst, M,
							output [7:0] status);
				
logic to, error, en_cont, rst_timer;			
logic [7:0] out_mant, out_mux, out_timer;
							
FSM control(clk, rst, M, to, error, en_cont, rst_timer);
Counter mante(clk, rst, en, out_mant);
Mux_2_to_1 mux21(out_mant, 8'hFF, error, out_mux);
Register state_reg(clk, rst, out_mux, status);
Counter timer(clk, rst | rst_timer, 1'b1, out_timer);
Comparator cmp(out_timer, 8'd200, to);

endmodule 