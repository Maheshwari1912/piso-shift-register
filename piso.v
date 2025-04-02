module piso(
  input clk,rst,load,
  input [3:0] in,
  output reg out);
  reg [3:0] shift_register;
  always@(posedge clk or posedge rst) begin
    if(rst)
      shift_register <= 4'b0000;
    else if (load==1)
      shift_register <= in;
    else begin
      out = shift_register[0];
      shift_register<=shift_register>>1;
    end
  end
endmodule
