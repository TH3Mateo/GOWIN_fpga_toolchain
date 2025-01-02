//~ `New testbench
`include "outputs/synth/counter_synth.sv"
`timescale  1ns / 1ps

module tb_counter;

// counter Parameters
parameter PERIOD  = 10;


// counter Inputs
reg   clk                                  = 0 ;
reg   rst                                  = 0 ;

// counter Outputs
wire  [3:0]  count                         ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst  =  0;
end

counter counter(
    .clk                     ( clk          ),
    .rst                     ( rst          ),

    .count                   ( count  [3:0] )
);

integer i;

initial begin
    $monitor("Time=%0t, clk=%b, rst=%b, count=%b", $time, clk, rst, count);
    $dumpfile("outputs/sim/counter_data.vcd");
    $dumpvars(0,counter,clk,rst);
        for (i = 0; i < 10*3; i = i + 1) begin
        #(PERIOD*10);
        if(i%3 == 0) begin 
            clk <= 0;
        end
        else begin
            clk = 1;
        end

        end

        rst <= 1;

        for (i = 0; i < 2*3; i = i + 1) begin
        #(PERIOD*10);
        if(i%3 == 0) begin 
            clk <= 0;
        end
        else begin
            clk = 1;
        end

        end

        rst <= 0;

        for(i=0;i<48;i=i+1) begin
            #(PERIOD*2);
            clk=~clk;
            
        end


    $finish;
end

endmodule