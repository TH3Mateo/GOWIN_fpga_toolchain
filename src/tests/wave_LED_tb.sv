// `include "outputs/synth/wave_LED_synth.sv"
// `include "src/modules/wave_LED.sv"
`timescale 1us/ 1ns

module wave_LED_tb();
    reg clk =0;
    reg [2:0] signal;
    wire [5:0] LED;

    wave_LED wave_LED_inst(
        .clk(clk),
        .signal(signal),
        .LED(LED)
    );

    initial
    begin
        forever #1  clk=~clk;
    end

    initial begin
    $monitor("Time=%0t, clk=%b, signal=%b, LED=%b", $time, clk, signal, LED,wave_LED_inst.start_sequence,wave_LED_inst.display_clk,wave_LED_inst.l_inst);
    $dumpfile("outputs/sim/wave_LED_data.vcd");
    $dumpvars(0,clk,signal,LED,wave_LED_inst.start_sequence,wave_LED_inst.display_clk);
        signal = 0;
        #5
        signal = 1;
        #20
        #100
        $finish;
    end

endmodule