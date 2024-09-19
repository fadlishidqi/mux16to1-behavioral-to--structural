// Fadli Shidqi Firdaus
// 21120122140166
// SDL C

`include "mux16to1behavioral.v"
`include "mux2to1gate.v"
`include "mux4to1gate.v"
`include "mux16to1structural.v"

module mux16to1testbench;
    reg [15:0] in;
    reg [3:0] sel;
    wire out_behavioral;
    wire out_structural;
    
    // Instance of behavioral MUX
    mux16to1behavioral uut_behavioral (.in(in), .sel(sel), .out(out_behavioral));
    
    // Instance of structural MUX
    mux16to1structural uut_structural (.in(in), .sel(sel), .y(out_structural));
    
    initial begin
        // Initialize inputs
        in = 16'b1010101010101010;
        sel = 4'b0000;
        
        // Simulate different selection inputs
        #10 sel = 4'b0001;
        #10 sel = 4'b0010;
        #10 sel = 4'b0011;
        #10 sel = 4'b0100;
        #10 sel = 4'b0101;
        #10 sel = 4'b0110;
        #10 sel = 4'b0111;
        #10 sel = 4'b1000;
        #10 sel = 4'b1001;
        #10 sel = 4'b1010;
        #10 sel = 4'b1011;
        #10 sel = 4'b1100;
        #10 sel = 4'b1101;
        #10 sel = 4'b1110;
        #10 sel = 4'b1111;
        
        // End simulation
        #10 $finish;
    end

    initial begin
        $dumpfile("mux16to1testbench.vcd");
        $dumpvars(0, mux16to1testbench);
    end
endmodule
