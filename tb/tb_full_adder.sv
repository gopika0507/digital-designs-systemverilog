
`timescale 1ns/1ps

module tb_full_adder;

    logic a, b, cin;
    logic sum, cout;

    // Instantiate DUT
    full_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $display("Time | a b cin | sum cout");
        $monitor("%4t | %b %b  %b  |  %b    %b", $time, a, b, cin, sum, cout);

        // Apply test cases
        a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;

        $finish;
    end
endmodule
