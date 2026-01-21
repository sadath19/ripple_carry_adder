module fa(a,b,cin,s,cout);
    input a,b,cin;
    output s,cout;

    assign cout = (a&b)|(b&cin)|(a&cin);
    assign s = (a^b^cin);
    
endmodule