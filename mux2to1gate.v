// Fadli Shidqi Firdaus
// 21120122140166
// SDL C

module mux2to1gate (input a, input b, input sel, output y);
    wire sel_not, a_and, b_and;

    not (sel_not, sel);
    and (a_and, a, sel_not);
    and (b_and, b, sel);
    or (y, a_and, b_and);
endmodule
