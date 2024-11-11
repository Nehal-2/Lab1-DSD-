`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 04:57:48 PM
// Design Name: 
// Module Name: tb_fulladder
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


module tb_fulladder;
    logic a, b, c_in;
    logic c_out, s;
    
    fulladder dut (
        .A(a),
        .B(b),
        .Cin(c_in),
        .Cout(c_out),
        .S(s)

    );
    initial begin
    // Display header
        $display("Time\t A\t B\t Cin\t S\t Cout");
        $display("-------------------------------------------");
        // Apply test vectors with $display statements
        a = 0; b = 0; c_in = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c_in, s, c_out);
        a = 0; b = 0; c_in = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c_in, s, c_out);
        a = 0; b = 1; c_in = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c_in, s, c_out);
        a = 0; b = 1; c_in = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c_in, s, c_out);
        a = 1; b = 0; c_in = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c_in, s, c_out);
        a = 1; b = 0; c_in = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c_in, s, c_out);
        a = 1; b = 1; c_in = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c_in, s, c_out);
        a = 1; b = 1; c_in = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c_in, s, c_out);
        
        // End simulation
            $finish;
    end
endmodule
