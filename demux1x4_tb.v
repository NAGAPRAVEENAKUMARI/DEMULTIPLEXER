`include "demux1x4.v"
module demux1x4_tb();
reg a, en;
reg [1:0]s;
wire [3:0]y;

demux1x4 dut(a,en,s,y);
initial begin
    $monitor("a=%b, en=%b, s=%b, y=%b", a,en,s,y);
    $dumpfile("demux1x4_tb.vcd");
    $dumpvars(0, demux1x4_tb);
    a=0;en=0; s=2'b00;
    #10;
    a=1; en=1; s=2'b00;
    #10; s=2'b01;
    #10; s=2'b10;
    #10; s=2'b11;
 end
endmodule