module counter (
    input wire clk,
    input wire rst,
    output reg [3:0] count
);

    logic [3:0] temp;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            temp <= 4'b0000;
        end else begin
            temp <= temp + 1;
        end
    end

    always @(*) begin
        count = ~temp;
    end
    
endmodule


