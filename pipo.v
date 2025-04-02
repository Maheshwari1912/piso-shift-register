module pipo(
  input clk,rst,
  input [3:0] in,
  input load,
  output reg [3:0] out);
  always@(posedge clk or posedge rst) begin
    if(rst)
      out<=4'b0;
    else if(load) begin
      out<=in;
    end
  end
endmodule
