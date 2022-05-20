`timescale 1ns/100ps

module tb();
reg iclk;
reg areset_n;
reg [255:0] idata;
wire [255:0]  odata;
reg [4:0] itag;
wire [4:0] otag;
reg isop;
wire osop;
reg ieop;
wire oeop;

tcrc32 tcrc32_1(
	.i_clk(iclk),
	.i_areset_n(areset_n), 
	.i_data256(idata), 
	.i_tag(itag), 
	.i_sop(isop), 
	.i_eop(ieop),

	// output 
	.o_crc_valid(),
	.o_crc(),
	.o_data256(odata), 
	.o_tag(otag), 
	.o_sop(osop), 
	.o_eop(oeop)
	
);

initial
 begin
    $dumpfile("test.vcd");
    $dumpvars(0,tcrc32_1);
 end

initial begin
	areset_n <= 0;
	iclk <= 0;
	#301;
	areset_n <= 1;
end

always @(iclk) begin
	#2.5 iclk <= !iclk;
end

initial begin
	idata <= 0;
	itag <= 0;
	isop <= 0;
	ieop<= 0;

	#401 ;
	idata <= 256'h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;
	itag <= 5'b00000; // all valid
	isop <= 1;
	ieop <= 0;
	#5;
	idata <= 256'h200102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e00;
	itag <= 5'b00001; // 1 valid
	isop <= 0;
	ieop <= 1;
	#5;
	idata <= 256'h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;
	itag <= 5'b00000; // all valid
	isop <= 0;
	ieop <= 0;

	#100 $finish();

end

endmodule
