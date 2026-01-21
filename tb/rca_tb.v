module rca_tb();

reg [3:0] a,b;
reg cin;
wire [3:0] s;
wire cout;

rca dut(

.a(a),
.b(b),
.cin(cin),
.s(s),
.cout(cout)
);

initial 
begin
    $fsdbDumpfile("rca.fsdb");
    $fsdbDumpvars(0,rca_tb);
end
initial 
begin
    $monitor("%0b %0b %0b %0b %0b", a,b,cin,s,cout);

a= 1;b=0;cin=0;#5;
a= 1;b=0;cin=1;#5;
a= 0;b=1;cin=0;#5;
a= 0;b=0;cin=1;#5;
a= 1;b=0;cin=0;#5;
a= 1;b=0;cin=1;#5;
a= 0;b=1;cin=0;#5;
a= 0;b=0;cin=1;#5;
a= 1;b=0;cin=0;#5;
a= 1;b=0;cin=1;#5;
a= 0;b=1;cin=0;#5;
a= 0;b=0;cin=1;#5;
$finish;
end

endmodule