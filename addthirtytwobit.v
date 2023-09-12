`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2023 07:01:36
// Design Name: 
// Module Name: addthirtytwobit
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


module addthirtytwobit(a,b, cin, sum,cout);
input [31:0] a,b;
input cin;
output [31:0] sum;
output cout;
wire C1;
addeight cla1 (.a(a[15:0]), .b(b[15:0]), .cin(cin), .sum(sum[15:0]), .cout(C1));
addeight cla2 (.a(a[31:16]), .b(b[31:16]), .cin(C1), .sum(sum[31:16]), .cout(cout));


    
endmodule
