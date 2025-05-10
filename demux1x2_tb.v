`include "demux1x2.v"
module demux1x2_tb();
  reg a,s, en;
  wire [1:0] y;
  demux1x2 dut(a, s, en, y);

  initial begin 
    $monitor("Time=%0t: a=%b,  s=%b  ,en=%b, -> y=%b", $time, a, s,en, y);
    $dumpfile("demux1x2_tb.vcd");
    $dumpvars(0, demux1x2_tb);
    a=0; en=0; s=0;
    #10;a=0; en=1; s=0;
    #10;a=1; en=1; s=0;  
    #10;s=1;
#10;
 $finish;
  end
endmodule