`include "src/modules/waves.sv"
`timescale 1us/1ns
module wave_right_tb;

    reg clk=0;
    reg rst=0;
    wire [5:0] LED;

    wave_right dut (
        .clk(clk),
        .rst(rst),
        .LED(LED)
    );

    initial begin
        forever #2 clk=~clk;
    end

    initial begin
        $monitor(dut.state, dut.clk, dut.LED );
        $dumpfile("outputs/sim/waves_data.vcd");
        $dumpvars(dut.state, dut.clk,clk, dut.LED,LED,dut.rst,rst);

        #6
        rst=1;
        #40
        rst=0;
        #10
        rst=1;
        #20
        rst=0;
        #70;
        $finish;

        // Apply clock cycles

    end

endmodule