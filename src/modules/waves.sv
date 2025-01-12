
module wave_right(
    input wire clk,
    input wire rst,
    output reg[5:0]  LED =6'b000000
);  

reg [2:0] state = 3'b111;

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
                state <= 3'b011;
                LED <= 6'b001000;
            end
            3'b011: begin
                state <= 3'b100;
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
    output reg[5:0]  LED=6'b000000
);
reg [2:0] state = 3'b111;

always @(posedge rst) begin state <= 3'b000; end

always @(posedge clk) begin
        case (state)
            3'b000: begin
                state <= 3'b001;
                LED = 6'b000001;
            end
            3'b001: begin
                state <= 3'b010;
                LED <= 6'b000010;
            end
            3'b010: begin
                state <= 3'b011;
                LED <= 6'b000100;
            end
            3'b011: begin
                state <= 3'b100;
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
endmodule

module wave_up(
    input wire clk,
    input wire rst,
    output reg[5:0]  LED
);
reg [2:0] state = 3'b111;
always @(posedge rst) begin state <= 3'b000; end

always @(posedge clk) begin
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
endmodule

module wave_down(
    input wire clk,
    input wire rst,
    output reg[5:0]  LED
);
reg [2:0] state = 3'b111;
always @(posedge rst) begin state <= 3'b000; end

always @(posedge clk) begin
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
endmodule