module SR(
    input S,
    input R,
  input clk,
    output reg Q,
    output reg Qbar
    );
    reg M,N;
always@ posedge(clk) begin
M <= S & clk;
N <= R & clk;
Q <= M & Qbar;
Qbar <= N & Q;
end
