module tabla04POS();

    reg A, B, C, D;
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, out;

    not U1(w1, A);
    not U2(w2, B);
    not U3(w3, C);
    not U4(w4, D);
    or   U5(w5, A, B, C, w4);
    or   U6(w6, A, w2, C, D);
    or   U7(w7, A, w2, C, w4);
    or   U8(w8, w1, B, C, w4);
    or   U9(w9, w1, B, w3, w4);
    or   U10(w10, w1, w2, C, D);
    or   U11(w11, w1, w2, C, w4);
    or   U12(w12, w1, w2, w3, D);
    or   U13(w13, w1, w2, w3, w4);
    and   U14(out, w5, w6, w7, w8, w9, w10, w11, w12, w13);

    initial begin
        $display("A B C D | Y");
        $display("-------------");
        $monitor("%b %b %b %b | %b", A, B, C, D, out);
        A = 0; B = 0; C = 0; D = 0;
        #1 D = 1;
        #1 C = 1; D = 0;
        #1 D = 1;
        #1 B = 1; C = 0; D = 0;
        #1 D = 1;
        #1 C = 1; D = 0;
        #1 D = 1;
        #1 A =1; B = 0; C = 0; D = 0;
        #1 D = 1;
        #1 C = 1; D = 0;
        #1 D = 1;
        #1 B = 1; C = 0; D = 0;
        #1 D = 1;
        #1 C = 1; D = 0;
        #1 D = 1;
        #1 $finish;
    end

    initial
      begin
        $dumpfile("tabla04POS_tb.vcd");
        $dumpvars(0, tabla04POS);
      end

endmodule
