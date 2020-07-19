module gf9(in,out);
input [3:0] in;
output [3:0] out;
reg [3:0]out;
always@(in)
begin
case(in)
4'b0000:out=4'h0;
4'b0001:out=4'h9;
4'b0010:out=4'h1;
4'b0011:out=4'h8;
4'b0100:out=4'h2;
4'b0101:out=4'hb;
4'b0110:out=4'h3;
4'b0111:out=4'ha;
4'b1000:out=4'h4;
4'b1001:out=4'hd;
4'b1010:out=4'h5;
4'b1011:out=4'hc;
4'b1100:out=4'h6;
4'b1101:out=4'hf;
4'b1110:out=4'h7;
4'b1111:out=4'he;
endcase
end
endmodule