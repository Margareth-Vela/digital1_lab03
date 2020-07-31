module tabla03SOP();

    reg A, B, C, D;
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, out;

    not U1(w1, A);
    not U2(w2, B);
    not U3(w3, C);
    not U4(w4, D);
    and   U5(w5, w1, w2, w3, w4);
    and   U6(w6, w1, w2, w3, D);
    and   U7(w7, w1, w2, C, w4);
    and   U8(w8, w1, w2, C, D);
    and   U9(w9, A, w2, w3, w4);
    and   U10(w10, A, w2, C, w4);
    and   U11(w11, A, B, C, w4);
    or    U12(out, w5, w6, w7, w8, w9, w10, w11);

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
        $dumpfile("tabla03SOP_tb.vcd");
        $dumpvars(0, tabla03SOP);
      end

endmodule
