module tabla02POS();

    reg A, B, C;
    wire w1, w2, w3, w4, w5, w6, w7, w8, out;

    not U1(w1, A);
    not U2(w2, B);
    not U3(w3, C);
    or  U4(w4, A, B, C);
    or  U5(w5, A, w2, C);
    or  U6(w6, A, w2, w3);
    or  U6(w7, w1, B, C);
    or  U6(w8, w1, B, w3);
    and U7(out, w4, w5, w6, w7, w8);

    initial begin
        $display("A B C | Y");
        $display("----------");
        $monitor("%b %b %b | %b", A, B, C, out);
        A = 0; B = 0; C = 0;
        #1 C = 1;
        #1 B = 1; C = 0;
        #1 C = 1;
        #1 A = 1; B = 0; C = 0;
        #1 C = 1;
        #1 B = 1; C = 0;
        #1 C = 1;
        #1 $finish;
    end

    initial
      begin
        $dumpfile("tabla02POS_tb.vcd");
        $dumpvars(0, tabla02POS);
      end

endmodule
