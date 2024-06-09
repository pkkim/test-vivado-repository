module tb;

reg rst,clk,a;
wire x;
  reg [1:0] addr;
  reg wr_en, rd_en;
  reg [7:0] wdata;
  reg [7:0] rdata;

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    a = 0;
    #20 rst = 0;
    #40 $finish;
   // #20 wr_en = 1;
   // wdata = 8'hAA;
   // #20 wr_en = 0;
   // #20 rd_en = 1;
  // #20 assert(rdata == 8'hAA);
end

  memory dut (
    .clk (clk),
    .reset (rst),
    .addr (addr),
    .wr_en (wr_en),
    .rd_en (rd_en),
    .wdata (wdata),
    .rdata (rdata)
  );
endmodule
