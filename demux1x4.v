module demux1x4(input a,input en, input  [1:0]s, output [3:0] y);
assign y[0] =en&~s[0]&~s[1]&a;
assign y[1]= en&~s[0]& s[1]&a;
assign y[2]=en&s[0]&~s[1]&a;
assign y[3]=en&s[0]&s[1]&a;
endmodule

module demux1x4(input a,input en, input  [1:0]s, output reg [3:0]  y);
always@(*)
begin 
y=4'b0000;
if(en) begin
case (s) 
2'b00 :  y[0]=a;
2'b01 :  y[1]=a;
2'b10 :  y[2]=a;
2'b11 :  y[3]=a;
endcase
end
end
endmodule