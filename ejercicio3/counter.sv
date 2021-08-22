module counter#(parameter N =16)(clk,rst, countout);
input clk;
input rst;
output [N-1:0] countout;

wire clk;
wire rst;

reg countout = 0;

always @(posedge clk or negedge rst)         
begin   
	if(rst ===0)
		countout <=0;
	else
		$display("Iniciando contador. Reloj: %d. Reset: %d",clk, rst);
		countout<= countout + 1;
		$display("Valor del contador: %d",countout);


end // Fin del bloque COUNTER
endmodule