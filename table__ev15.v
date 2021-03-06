module crctab_ev15
(
input  wire         clk,
input  wire         rstn,
input  wire [31:0]  addr,
output wire [31:0]  rdata
);
// ============================================================================
localparam  MEM_SIZE_BITS   = 8; // In 32-bit words
localparam  MEM_SIZE        = 1 << MEM_SIZE_BITS;
// ============================================================================
wire [MEM_SIZE_BITS-1:0]    mem_addr;
wire [31:0]                 mem_data;
reg  [31:0]                 mem[0:MEM_SIZE];
initial begin
    mem[8'h0] <= 32'h0 ;
    mem[8'h1] <= 32'h2fb7bf3a ;
    mem[8'h2] <= 32'h5f6f7e74 ;
    mem[8'h3] <= 32'h70d8c14e ;
    mem[8'h4] <= 32'hbedefce8 ;
    mem[8'h5] <= 32'h916943d2 ;
    mem[8'h6] <= 32'he1b1829c ;
    mem[8'h7] <= 32'hce063da6 ;
    mem[8'h8] <= 32'h797ce467 ;
    mem[8'h9] <= 32'h56cb5b5d ;
    mem[8'ha] <= 32'h26139a13 ;
    mem[8'hb] <= 32'h9a42529 ;
    mem[8'hc] <= 32'hc7a2188f ;
    mem[8'hd] <= 32'he815a7b5 ;
    mem[8'he] <= 32'h98cd66fb ;
    mem[8'hf] <= 32'hb77ad9c1 ;
    mem[8'h10] <= 32'hf2f9c8ce ;
    mem[8'h11] <= 32'hdd4e77f4 ;
    mem[8'h12] <= 32'had96b6ba ;
    mem[8'h13] <= 32'h82210980 ;
    mem[8'h14] <= 32'h4c273426 ;
    mem[8'h15] <= 32'h63908b1c ;
    mem[8'h16] <= 32'h13484a52 ;
    mem[8'h17] <= 32'h3cfff568 ;
    mem[8'h18] <= 32'h8b852ca9 ;
    mem[8'h19] <= 32'ha4329393 ;
    mem[8'h1a] <= 32'hd4ea52dd ;
    mem[8'h1b] <= 32'hfb5dede7 ;
    mem[8'h1c] <= 32'h355bd041 ;
    mem[8'h1d] <= 32'h1aec6f7b ;
    mem[8'h1e] <= 32'h6a34ae35 ;
    mem[8'h1f] <= 32'h4583110f ;
    mem[8'h20] <= 32'he1328c2b ;
    mem[8'h21] <= 32'hce853311 ;
    mem[8'h22] <= 32'hbe5df25f ;
    mem[8'h23] <= 32'h91ea4d65 ;
    mem[8'h24] <= 32'h5fec70c3 ;
    mem[8'h25] <= 32'h705bcff9 ;
    mem[8'h26] <= 32'h830eb7 ;
    mem[8'h27] <= 32'h2f34b18d ;
    mem[8'h28] <= 32'h984e684c ;
    mem[8'h29] <= 32'hb7f9d776 ;
    mem[8'h2a] <= 32'hc7211638 ;
    mem[8'h2b] <= 32'he896a902 ;
    mem[8'h2c] <= 32'h269094a4 ;
    mem[8'h2d] <= 32'h9272b9e ;
    mem[8'h2e] <= 32'h79ffead0 ;
    mem[8'h2f] <= 32'h564855ea ;
    mem[8'h30] <= 32'h13cb44e5 ;
    mem[8'h31] <= 32'h3c7cfbdf ;
    mem[8'h32] <= 32'h4ca43a91 ;
    mem[8'h33] <= 32'h631385ab ;
    mem[8'h34] <= 32'had15b80d ;
    mem[8'h35] <= 32'h82a20737 ;
    mem[8'h36] <= 32'hf27ac679 ;
    mem[8'h37] <= 32'hddcd7943 ;
    mem[8'h38] <= 32'h6ab7a082 ;
    mem[8'h39] <= 32'h45001fb8 ;
    mem[8'h3a] <= 32'h35d8def6 ;
    mem[8'h3b] <= 32'h1a6f61cc ;
    mem[8'h3c] <= 32'hd4695c6a ;
    mem[8'h3d] <= 32'hfbdee350 ;
    mem[8'h3e] <= 32'h8b06221e ;
    mem[8'h3f] <= 32'ha4b19d24 ;
    mem[8'h40] <= 32'hc6a405e1 ;
    mem[8'h41] <= 32'he913badb ;
    mem[8'h42] <= 32'h99cb7b95 ;
    mem[8'h43] <= 32'hb67cc4af ;
    mem[8'h44] <= 32'h787af909 ;
    mem[8'h45] <= 32'h57cd4633 ;
    mem[8'h46] <= 32'h2715877d ;
    mem[8'h47] <= 32'h8a23847 ;
    mem[8'h48] <= 32'hbfd8e186 ;
    mem[8'h49] <= 32'h906f5ebc ;
    mem[8'h4a] <= 32'he0b79ff2 ;
    mem[8'h4b] <= 32'hcf0020c8 ;
    mem[8'h4c] <= 32'h1061d6e ;
    mem[8'h4d] <= 32'h2eb1a254 ;
    mem[8'h4e] <= 32'h5e69631a ;
    mem[8'h4f] <= 32'h71dedc20 ;
    mem[8'h50] <= 32'h345dcd2f ;
    mem[8'h51] <= 32'h1bea7215 ;
    mem[8'h52] <= 32'h6b32b35b ;
    mem[8'h53] <= 32'h44850c61 ;
    mem[8'h54] <= 32'h8a8331c7 ;
    mem[8'h55] <= 32'ha5348efd ;
    mem[8'h56] <= 32'hd5ec4fb3 ;
    mem[8'h57] <= 32'hfa5bf089 ;
    mem[8'h58] <= 32'h4d212948 ;
    mem[8'h59] <= 32'h62969672 ;
    mem[8'h5a] <= 32'h124e573c ;
    mem[8'h5b] <= 32'h3df9e806 ;
    mem[8'h5c] <= 32'hf3ffd5a0 ;
    mem[8'h5d] <= 32'hdc486a9a ;
    mem[8'h5e] <= 32'hac90abd4 ;
    mem[8'h5f] <= 32'h832714ee ;
    mem[8'h60] <= 32'h279689ca ;
    mem[8'h61] <= 32'h82136f0 ;
    mem[8'h62] <= 32'h78f9f7be ;
    mem[8'h63] <= 32'h574e4884 ;
    mem[8'h64] <= 32'h99487522 ;
    mem[8'h65] <= 32'hb6ffca18 ;
    mem[8'h66] <= 32'hc6270b56 ;
    mem[8'h67] <= 32'he990b46c ;
    mem[8'h68] <= 32'h5eea6dad ;
    mem[8'h69] <= 32'h715dd297 ;
    mem[8'h6a] <= 32'h18513d9 ;
    mem[8'h6b] <= 32'h2e32ace3 ;
    mem[8'h6c] <= 32'he0349145 ;
    mem[8'h6d] <= 32'hcf832e7f ;
    mem[8'h6e] <= 32'hbf5bef31 ;
    mem[8'h6f] <= 32'h90ec500b ;
    mem[8'h70] <= 32'hd56f4104 ;
    mem[8'h71] <= 32'hfad8fe3e ;
    mem[8'h72] <= 32'h8a003f70 ;
    mem[8'h73] <= 32'ha5b7804a ;
    mem[8'h74] <= 32'h6bb1bdec ;
    mem[8'h75] <= 32'h440602d6 ;
    mem[8'h76] <= 32'h34dec398 ;
    mem[8'h77] <= 32'h1b697ca2 ;
    mem[8'h78] <= 32'hac13a563 ;
    mem[8'h79] <= 32'h83a41a59 ;
    mem[8'h7a] <= 32'hf37cdb17 ;
    mem[8'h7b] <= 32'hdccb642d ;
    mem[8'h7c] <= 32'h12cd598b ;
    mem[8'h7d] <= 32'h3d7ae6b1 ;
    mem[8'h7e] <= 32'h4da227ff ;
    mem[8'h7f] <= 32'h621598c5 ;
    mem[8'h80] <= 32'h89891675 ;
    mem[8'h81] <= 32'ha63ea94f ;
    mem[8'h82] <= 32'hd6e66801 ;
    mem[8'h83] <= 32'hf951d73b ;
    mem[8'h84] <= 32'h3757ea9d ;
    mem[8'h85] <= 32'h18e055a7 ;
    mem[8'h86] <= 32'h683894e9 ;
    mem[8'h87] <= 32'h478f2bd3 ;
    mem[8'h88] <= 32'hf0f5f212 ;
    mem[8'h89] <= 32'hdf424d28 ;
    mem[8'h8a] <= 32'haf9a8c66 ;
    mem[8'h8b] <= 32'h802d335c ;
    mem[8'h8c] <= 32'h4e2b0efa ;
    mem[8'h8d] <= 32'h619cb1c0 ;
    mem[8'h8e] <= 32'h1144708e ;
    mem[8'h8f] <= 32'h3ef3cfb4 ;
    mem[8'h90] <= 32'h7b70debb ;
    mem[8'h91] <= 32'h54c76181 ;
    mem[8'h92] <= 32'h241fa0cf ;
    mem[8'h93] <= 32'hba81ff5 ;
    mem[8'h94] <= 32'hc5ae2253 ;
    mem[8'h95] <= 32'hea199d69 ;
    mem[8'h96] <= 32'h9ac15c27 ;
    mem[8'h97] <= 32'hb576e31d ;
    mem[8'h98] <= 32'h20c3adc ;
    mem[8'h99] <= 32'h2dbb85e6 ;
    mem[8'h9a] <= 32'h5d6344a8 ;
    mem[8'h9b] <= 32'h72d4fb92 ;
    mem[8'h9c] <= 32'hbcd2c634 ;
    mem[8'h9d] <= 32'h9365790e ;
    mem[8'h9e] <= 32'he3bdb840 ;
    mem[8'h9f] <= 32'hcc0a077a ;
    mem[8'ha0] <= 32'h68bb9a5e ;
    mem[8'ha1] <= 32'h470c2564 ;
    mem[8'ha2] <= 32'h37d4e42a ;
    mem[8'ha3] <= 32'h18635b10 ;
    mem[8'ha4] <= 32'hd66566b6 ;
    mem[8'ha5] <= 32'hf9d2d98c ;
    mem[8'ha6] <= 32'h890a18c2 ;
    mem[8'ha7] <= 32'ha6bda7f8 ;
    mem[8'ha8] <= 32'h11c77e39 ;
    mem[8'ha9] <= 32'h3e70c103 ;
    mem[8'haa] <= 32'h4ea8004d ;
    mem[8'hab] <= 32'h611fbf77 ;
    mem[8'hac] <= 32'haf1982d1 ;
    mem[8'had] <= 32'h80ae3deb ;
    mem[8'hae] <= 32'hf076fca5 ;
    mem[8'haf] <= 32'hdfc1439f ;
    mem[8'hb0] <= 32'h9a425290 ;
    mem[8'hb1] <= 32'hb5f5edaa ;
    mem[8'hb2] <= 32'hc52d2ce4 ;
    mem[8'hb3] <= 32'hea9a93de ;
    mem[8'hb4] <= 32'h249cae78 ;
    mem[8'hb5] <= 32'hb2b1142 ;
    mem[8'hb6] <= 32'h7bf3d00c ;
    mem[8'hb7] <= 32'h54446f36 ;
    mem[8'hb8] <= 32'he33eb6f7 ;
    mem[8'hb9] <= 32'hcc8909cd ;
    mem[8'hba] <= 32'hbc51c883 ;
    mem[8'hbb] <= 32'h93e677b9 ;
    mem[8'hbc] <= 32'h5de04a1f ;
    mem[8'hbd] <= 32'h7257f525 ;
    mem[8'hbe] <= 32'h28f346b ;
    mem[8'hbf] <= 32'h2d388b51 ;
    mem[8'hc0] <= 32'h4f2d1394 ;
    mem[8'hc1] <= 32'h609aacae ;
    mem[8'hc2] <= 32'h10426de0 ;
    mem[8'hc3] <= 32'h3ff5d2da ;
    mem[8'hc4] <= 32'hf1f3ef7c ;
    mem[8'hc5] <= 32'hde445046 ;
    mem[8'hc6] <= 32'hae9c9108 ;
    mem[8'hc7] <= 32'h812b2e32 ;
    mem[8'hc8] <= 32'h3651f7f3 ;
    mem[8'hc9] <= 32'h19e648c9 ;
    mem[8'hca] <= 32'h693e8987 ;
    mem[8'hcb] <= 32'h468936bd ;
    mem[8'hcc] <= 32'h888f0b1b ;
    mem[8'hcd] <= 32'ha738b421 ;
    mem[8'hce] <= 32'hd7e0756f ;
    mem[8'hcf] <= 32'hf857ca55 ;
    mem[8'hd0] <= 32'hbdd4db5a ;
    mem[8'hd1] <= 32'h92636460 ;
    mem[8'hd2] <= 32'he2bba52e ;
    mem[8'hd3] <= 32'hcd0c1a14 ;
    mem[8'hd4] <= 32'h30a27b2 ;
    mem[8'hd5] <= 32'h2cbd9888 ;
    mem[8'hd6] <= 32'h5c6559c6 ;
    mem[8'hd7] <= 32'h73d2e6fc ;
    mem[8'hd8] <= 32'hc4a83f3d ;
    mem[8'hd9] <= 32'heb1f8007 ;
    mem[8'hda] <= 32'h9bc74149 ;
    mem[8'hdb] <= 32'hb470fe73 ;
    mem[8'hdc] <= 32'h7a76c3d5 ;
    mem[8'hdd] <= 32'h55c17cef ;
    mem[8'hde] <= 32'h2519bda1 ;
    mem[8'hdf] <= 32'haae029b ;
    mem[8'he0] <= 32'hae1f9fbf ;
    mem[8'he1] <= 32'h81a82085 ;
    mem[8'he2] <= 32'hf170e1cb ;
    mem[8'he3] <= 32'hdec75ef1 ;
    mem[8'he4] <= 32'h10c16357 ;
    mem[8'he5] <= 32'h3f76dc6d ;
    mem[8'he6] <= 32'h4fae1d23 ;
    mem[8'he7] <= 32'h6019a219 ;
    mem[8'he8] <= 32'hd7637bd8 ;
    mem[8'he9] <= 32'hf8d4c4e2 ;
    mem[8'hea] <= 32'h880c05ac ;
    mem[8'heb] <= 32'ha7bbba96 ;
    mem[8'hec] <= 32'h69bd8730 ;
    mem[8'hed] <= 32'h460a380a ;
    mem[8'hee] <= 32'h36d2f944 ;
    mem[8'hef] <= 32'h1965467e ;
    mem[8'hf0] <= 32'h5ce65771 ;
    mem[8'hf1] <= 32'h7351e84b ;
    mem[8'hf2] <= 32'h3892905 ;
    mem[8'hf3] <= 32'h2c3e963f ;
    mem[8'hf4] <= 32'he238ab99 ;
    mem[8'hf5] <= 32'hcd8f14a3 ;
    mem[8'hf6] <= 32'hbd57d5ed ;
    mem[8'hf7] <= 32'h92e06ad7 ;
    mem[8'hf8] <= 32'h259ab316 ;
    mem[8'hf9] <= 32'ha2d0c2c ;
    mem[8'hfa] <= 32'h7af5cd62 ;
    mem[8'hfb] <= 32'h55427258 ;
    mem[8'hfc] <= 32'h9b444ffe ;
    mem[8'hfd] <= 32'hb4f3f0c4 ;
    mem[8'hfe] <= 32'hc42b318a ;
    mem[8'hff] <= 32'heb9c8eb0 ;
end
assign mem_addr = addr[7:0];
// Output connectins
assign rdata    = mem_data;
assign mem_data = mem[mem_addr];
endmodule
