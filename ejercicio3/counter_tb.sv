//-- counter_tb.v
module counter_tb();
	 
//-- Registro para generar la señal de reloj
reg clk = 0;
reg rst = 1;
	 
//-- Datos de salida del contador
wire  data;

//-- Registro para comprobar si el contador cuenta correctamente
reg [5:0] counter_check = 0;
	 
//-- Instanciar el contador
counter #(5) C1(clk,rst, data);
	 
//-- Generador de reloj. Periodo 2 unidades
always #2 clk = ~clk;
	 
//-- Comprobacion del valor del contador
//-- En cada flanco de bajada se comprueba la salida del contador
//-- y se incrementa el valor esperado
	 
//-- Proceso al inicio
always @(negedge clk) begin 
	  $display("counter clk: %d. data: %d",counter_check, data); 
	  counter_check <= counter_check + 1;
	end
initial begin
	 
  //-- Fichero donde almacenar los resultados
  $dumpfile("counter_tb.vcd");
  $dumpvars(0, counter_tb);
	 
  //-- Comprobación del reset.
  # 0.5 if (data != 0)
			 $display("ERROR! Contador NO está a 0!");
		  else
			 $display("Contador inicializado. OK.");
  #40
  rst = 0;
  $display("Data",data);
  # 99 $display("FIN de la simulacion");
  # 100 $finish;
 end
 endmodule