module demux1x2(input a, s, en, output [1:0]y);
assign y[1]= a&en&s;
assign y[0]= a&en&~s;
endmodule


module demux1x2(input a, s, en, output reg [1:0]y);
always@(*)begin
    y=2'b00;
    if(en) begin
        if (s==0) 
        y[0]=a;
        else y[1]=a;
    end
end
endmodule