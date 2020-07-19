module gf2(in1a,out1a);
input [3:0] in1a;
output [3:0] out1a;
reg [3:0]out1a;
always@(in1a)
begin
case(in1a)
4'b0000:out1a=4'h0;
4'b0001:out1a=4'h2;
4'b0010:out1a=4'h4;
4'b0011:out1a=4'h6;
4'b0100:out1a=4'h8;
4'b0101:out1a=4'ha;
4'b0110:out1a=4'hc;
4'b0111:out1a=4'he;
4'b1000:out1a=4'h3;
4'b1001:out1a=4'h1;
4'b1010:out1a=4'h7;
4'b1011:out1a=4'h5;
4'b1100:out1a=4'hb;
4'b1101:out1a=4'h9;
4'b1110:out1a=4'hf;
4'b1111:out1a=4'hd;
endcase
end
endmodule