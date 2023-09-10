`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2023 22:12:16
// Design Name: 
// Module Name: pipemulti
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pipemulti(result, clk, a, b);

output [15:0]result;
input clk;
input [7:0] a;
input [7:0] b;

reg	[7:0] a_reg;
reg	[7:0] b_reg;
reg	[15:0] result;
wire [15:0]	mult_out;

mux8bit uut(.a(a_reg),.b(b_reg),.result(result));

always@(posedge clk)
begin
	a_reg <= a;
	b_reg <= b;
	result <= mult_out;
end

endmodule
