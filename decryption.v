module decryption(cip,ke0,ke1,ke2,plano);
input [15:0]cip,ke0,ke1,ke2;
output [15:0]plano;
wire [15:0] h1,h2,h3,h4,h5,h6;

 assign h1 = cip ^ ke2;
 
 
isbox xaq1(h1[15:12],h2[15:12]);
isbox xbq1(h1[11:8],h2[11:8]);
isbox xbqb1(h1[7:4],h2[7:4]);
isbox xabqb1(h1[3:0],h2[3:0]);
 
assign h3 = h2 ^ ke1;

matmul2 kn(h3,h4);

isbox xaqc1(h4[15:12],h5[15:12]);
isbox xbq1c(h4[11:8],h5[11:8]);
isbox xbqb1c(h4[7:4],h5[7:4]);
isbox xabqb1c(h4[3:0],h5[3:0]);

assign plano = h5 ^ ke0;
endmodule