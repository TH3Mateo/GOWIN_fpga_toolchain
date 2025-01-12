// `include "outputs/synth/wave_LED_synth.sv"
`include "src/modules/wave_LED.sv"
`timescale 1us/ 1ns

module wave_LED_tb();
    reg clk =0;
    reg [2:0] signal;
    wire [5:0] LED;
    reg start_sequence;
    wave_LED wave_LED_inst(
        .clk(clk),
        .signal(signal),
        .LED(LED),
        .start_sequence(start_sequence)
    );

    initial
    begin
        forever #1  clk=~clk;
    end

    initial begin
    $monitor("Time=%0t, clk=%b, signal=%b, LED=%b", $time, clk, signal, LED,wave_LED_inst.start_sequence,wave_LED_inst.display_clk);
    $dumpfile("outputs/sim/wave_LED_data.vcd");
    $dumpvars(0,clk,signal,LED,wave_LED_inst.start_sequence,wave_LED_inst.display_clk,wave_LED_inst.l_out);
        signal = 0;
        start_sequence=0;
        #5
        signal = 1;
        start_sequence=1;
        #25
        start_sequence=0;
        #5
        start_sequence=1;
        #5
        start_sequence=0;
        #3
        signal = 2;
        #2
        start_sequence=1;
        #30
        start_sequence=0;
        signal = 3;
        #2
        start_sequence=1;
        #1
        start_sequence=0;

        #100
        $finish;
    end

endmodule