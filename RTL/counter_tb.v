module counter_tb;
    reg clk;
    reg rst;
    wire [3:0] out;
    counter c0(.clk(clk),.rst(rst),.out(out));
    always #5 clk=~clk;
    initial 
    begin
        clk <=0;
        rst <=0;
        #20 rst<=1;
        #80 rst<=0;
        #50 rst<=1;
        #20 $finish;
    end
endmodule
