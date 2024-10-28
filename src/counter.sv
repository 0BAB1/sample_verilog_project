module counter (
    input logic clk,
    input logic rst,
    output logic [7:0] cnt
);

always @(posedge clk ) begin
    if(rst == 1) begin
        cnt <= 0;
    end else begin
        cnt <= cnt + 1;
    end
end
    
endmodule