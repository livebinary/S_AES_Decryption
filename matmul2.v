module matmul2(inq,outq);
input [15:0] inq;
wire[3:0] w1a,w2a,w3a,w4a,w5a,w6a,w7a,w8a,p,q,r,s;
output [15:0] outq; 

gf9 f1(inq[15:12],w1a);
gf2 f2(inq[11:8],w2a);
assign p = w1a ^ w2a;

gf9 f3(inq[11:8],w3a);
gf2 f4(inq[15:12],w4a);
assign q = w3a ^ w4a;


gf9 f5(inq[7:4],w5a);
gf2 f6(inq[3:0],w6a);
assign r = w5a ^ w6a;


gf2 f7(inq[7:4],w7a);
gf9 f8(inq[3:0],w8a);
assign s = w7a ^ w8a;

assign outq = {p,q,r,s};

endmodule

