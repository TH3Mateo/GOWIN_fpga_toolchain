`include "src/modules/waves.sv"
module wave_LED(
    input wire rst,
    input wire clk,
    input reg[2:0] signal,
    input wire start_sequence,
    output reg [5:0] LED
);
parameter CLK_FRE = 50000000;
parameter led_refresh_s = 0.2;
reg[15:0] display_counter= 0;
parameter integer display_clk_max = CLK_FRE * led_refresh_s;
reg display_clk;

wire [5:0] l_out;
wire [5:0] r_out;
wire [5:0] u_out;
wire [5:0] d_out;

wave_left l_inst(.clk(display_clk),.rst(start_sequence),.LED(l_out));
wave_right r_inst(.clk(display_clk),.rst(start_sequence),.LED(r_out));
wave_up u_inst(.clk(display_clk),.rst(start_sequence),.LED(u_out));
wave_down d_inst(.clk(display_clk),.rst(start_sequence),.LED(d_out));


always @(posedge clk) begin
//make the LED counter tick every led_refresh_s seconds

    if(display_counter == display_clk_max) begin
        display_clk <= 1;
        display_counter<=0;
    end
    else begin
        display_counter = display_counter + 1;
        display_clk <= 0;
    end

end



reg [2:0] signal_reg;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        signal_reg <= 3'b000;
        LED <= 6'b000000;
    end else begin
        signal_reg <= signal;
    end
end

always @(*) begin
    case (signal_reg) 
        3'b001: LED <= l_out;
        3'b010: LED <= r_out;
        3'b011: LED <= u_out;
        3'b100: LED <= d_out;
        default: LED <= 6'b000000;
    endcase
end

endmodule