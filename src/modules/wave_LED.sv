module wave_LED(
    input wire clk,
    input reg[2:0] signal,
    output reg [5:0] LED
);
parameter CLK_FRE = 50000000;
parameter led_refresh_s = 0.2;
reg[15:0] display_counter= 0;
parameter display_clk_max = CLK_FRE * led_refresh_s;
reg display_clk;
reg start_sequence;

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
    display_counter <= display_counter + 1;
    if(display_counter == display_clk_max) begin
        display_clk <= 1;
    end
    else begin
        display_clk <= 0;
    end

end

always @(signal) begin
    if(signal == 3'b000) begin
        start_sequence <= 0;
    end
    else begin
        start_sequence <= 1;

        case (signal)
        3'b000: begin
            LED <= 6'b000000;
        end
            
        default: LED <= 6'b000000;
        endcase
    end
end
        

endmodule


module wave_right(
    input wire clk,
    input wire rst,
    output reg[5:0]  LED
);  

reg [2:0] state = 3'b000;

always @(posedge rst) begin state <= 3'b000; end

always @(posedge clk) begin
        case (state)
            3'b000: begin
                state <= 3'b001;
                LED <= 6'b100000;
            end
            3'b001: begin
                state <= 3'b010;
                LED <= 6'b010000;
            end
            3'b010: begin
                state <= 3'b100;
                LED <= 6'b001000;
            end
            3'b011: begin
                state <= 3'b000;
                LED <= 6'b000100;
            end
            3'b100: begin
                state <= 3'b101;
                LED <= 6'b000010;
            end
            3'b101: begin
                state <= 3'b110;
                LED <= 6'b000001;
            end
            3'b110: begin
                state <= 3'b111;
                LED <= 6'b000000;
            end

            default: begin
            end
        endcase
    end

endmodule


module wave_left(
    input wire clk,
    input wire rst,
    output reg[5:0]  LED
);
reg [2:0] state = 3'b000;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= 3'b000;
    end else begin
        case (state)
            3'b000: begin
                state <= 3'b001;
                LED <= 6'b000001;
            end
            3'b001: begin
                state <= 3'b010;
                LED <= 6'b000010;
            end
            3'b010: begin
                state <= 3'b100;
                LED <= 6'b000100;
            end
            3'b011: begin
                state <= 3'b000;
                LED <= 6'b001000;
            end
            3'b100: begin
                state <= 3'b101;
                LED <= 6'b010000;
            end
            3'b101: begin
                state <= 3'b110;
                LED <= 6'b100000;
            end
            3'b110: begin
                state <= 3'b111;
                LED <= 6'b000000;
            end

            default: begin
            end
        endcase
    end
end
endmodule

module wave_up(
    input wire clk,
    input wire rst,
    output reg[5:0]  LED
);
reg [2:0] state = 3'b000;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= 3'b000;
    end else begin
        case (state)
            3'b000: begin
                state <= 3'b001;
                LED <= 6'b001100;
            end
            3'b001:state <= 3'b010;
            3'b010: begin
                state <= 3'b011;
                LED <= 6'b010010;
            end
            3'b011: state <= 3'b100;
            3'b100: begin
                state <= 3'b101;
                LED <= 6'b100001;
            end
            3'b101: state <= 3'b110;
            3'b110: begin
                state <= 3'b111;
                LED <= 6'b000000;
            end
            default: begin
            end
        endcase
    end
end
endmodule

module wave_down(
    input wire clk,
    input wire rst,
    output reg[5:0]  LED
);
reg [2:0] state = 3'b000;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= 3'b000;
    end else begin
        case (state)
            3'b000: begin
                state <= 3'b001;
                LED <= 6'b000000;
            end
            3'b001:state <= 3'b010;
            3'b010: begin
                state <= 3'b011;
                LED <= 6'b100001;
            end
            3'b011: state <= 3'b100;
            3'b100: begin
                state <= 3'b101;
                LED <= 6'b010010;
            end
            3'b101: state <= 3'b110;
            3'b110: begin
                state <= 3'b111;
                LED <= 6'b001100;
            end
            default: begin
            end
        endcase
    end
end
endmodule