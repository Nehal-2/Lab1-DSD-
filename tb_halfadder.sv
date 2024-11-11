`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 04:13:35 PM
// Design Name: 
// Module Name: tb_halfadder
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


module tb_halfadder;
    logic a, b;
    logic c, s;
    
    halfadder dut (
        .A(a),
        .B(b),
        .S(s),
        .C(c)
    );
    initial begin
        // Display header
        $display("Time\t A\t B\t S\t C");
        $display("-------------------------------------------");
        // Apply test vectors with $display statements
        a = 0; b = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b", $time, a, b, s, c);
        a = 0; b = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b", $time, a, b, s, c);
        a = 1; b = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b", $time, a, b, s, c);
        a = 1; b = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b", $time, a, b, s, c);
        
        // End simulation
            $finish;
    end
endmodule