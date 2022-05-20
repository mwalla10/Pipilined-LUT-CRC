module crctab_ev26
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
    mem[8'h1] <= 32'hd60a6c79 ;
    mem[8'h2] <= 32'ha8d5c545 ;
    mem[8'h3] <= 32'h7edfa93c ;
    mem[8'h4] <= 32'h556a973d ;
    mem[8'h5] <= 32'h8360fb44 ;
    mem[8'h6] <= 32'hfdbf5278 ;
    mem[8'h7] <= 32'h2bb53e01 ;
    mem[8'h8] <= 32'haad52e7a ;
    mem[8'h9] <= 32'h7cdf4203 ;
    mem[8'ha] <= 32'h200eb3f ;
    mem[8'hb] <= 32'hd40a8746 ;
    mem[8'hc] <= 32'hffbfb947 ;
    mem[8'hd] <= 32'h29b5d53e ;
    mem[8'he] <= 32'h576a7c02 ;
    mem[8'hf] <= 32'h8160107b ;
    mem[8'h10] <= 32'h516b4143 ;
    mem[8'h11] <= 32'h87612d3a ;
    mem[8'h12] <= 32'hf9be8406 ;
    mem[8'h13] <= 32'h2fb4e87f ;
    mem[8'h14] <= 32'h401d67e ;
    mem[8'h15] <= 32'hd20bba07 ;
    mem[8'h16] <= 32'hacd4133b ;
    mem[8'h17] <= 32'h7ade7f42 ;
    mem[8'h18] <= 32'hfbbe6f39 ;
    mem[8'h19] <= 32'h2db40340 ;
    mem[8'h1a] <= 32'h536baa7c ;
    mem[8'h1b] <= 32'h8561c605 ;
    mem[8'h1c] <= 32'haed4f804 ;
    mem[8'h1d] <= 32'h78de947d ;
    mem[8'h1e] <= 32'h6013d41 ;
    mem[8'h1f] <= 32'hd00b5138 ;
    mem[8'h20] <= 32'ha2d68286 ;
    mem[8'h21] <= 32'h74dceeff ;
    mem[8'h22] <= 32'ha0347c3 ;
    mem[8'h23] <= 32'hdc092bba ;
    mem[8'h24] <= 32'hf7bc15bb ;
    mem[8'h25] <= 32'h21b679c2 ;
    mem[8'h26] <= 32'h5f69d0fe ;
    mem[8'h27] <= 32'h8963bc87 ;
    mem[8'h28] <= 32'h803acfc ;
    mem[8'h29] <= 32'hde09c085 ;
    mem[8'h2a] <= 32'ha0d669b9 ;
    mem[8'h2b] <= 32'h76dc05c0 ;
    mem[8'h2c] <= 32'h5d693bc1 ;
    mem[8'h2d] <= 32'h8b6357b8 ;
    mem[8'h2e] <= 32'hf5bcfe84 ;
    mem[8'h2f] <= 32'h23b692fd ;
    mem[8'h30] <= 32'hf3bdc3c5 ;
    mem[8'h31] <= 32'h25b7afbc ;
    mem[8'h32] <= 32'h5b680680 ;
    mem[8'h33] <= 32'h8d626af9 ;
    mem[8'h34] <= 32'ha6d754f8 ;
    mem[8'h35] <= 32'h70dd3881 ;
    mem[8'h36] <= 32'he0291bd ;
    mem[8'h37] <= 32'hd808fdc4 ;
    mem[8'h38] <= 32'h5968edbf ;
    mem[8'h39] <= 32'h8f6281c6 ;
    mem[8'h3a] <= 32'hf1bd28fa ;
    mem[8'h3b] <= 32'h27b74483 ;
    mem[8'h3c] <= 32'hc027a82 ;
    mem[8'h3d] <= 32'hda0816fb ;
    mem[8'h3e] <= 32'ha4d7bfc7 ;
    mem[8'h3f] <= 32'h72ddd3be ;
    mem[8'h40] <= 32'h416c18bb ;
    mem[8'h41] <= 32'h976674c2 ;
    mem[8'h42] <= 32'he9b9ddfe ;
    mem[8'h43] <= 32'h3fb3b187 ;
    mem[8'h44] <= 32'h14068f86 ;
    mem[8'h45] <= 32'hc20ce3ff ;
    mem[8'h46] <= 32'hbcd34ac3 ;
    mem[8'h47] <= 32'h6ad926ba ;
    mem[8'h48] <= 32'hebb936c1 ;
    mem[8'h49] <= 32'h3db35ab8 ;
    mem[8'h4a] <= 32'h436cf384 ;
    mem[8'h4b] <= 32'h95669ffd ;
    mem[8'h4c] <= 32'hbed3a1fc ;
    mem[8'h4d] <= 32'h68d9cd85 ;
    mem[8'h4e] <= 32'h160664b9 ;
    mem[8'h4f] <= 32'hc00c08c0 ;
    mem[8'h50] <= 32'h100759f8 ;
    mem[8'h51] <= 32'hc60d3581 ;
    mem[8'h52] <= 32'hb8d29cbd ;
    mem[8'h53] <= 32'h6ed8f0c4 ;
    mem[8'h54] <= 32'h456dcec5 ;
    mem[8'h55] <= 32'h9367a2bc ;
    mem[8'h56] <= 32'hedb80b80 ;
    mem[8'h57] <= 32'h3bb267f9 ;
    mem[8'h58] <= 32'hbad27782 ;
    mem[8'h59] <= 32'h6cd81bfb ;
    mem[8'h5a] <= 32'h1207b2c7 ;
    mem[8'h5b] <= 32'hc40ddebe ;
    mem[8'h5c] <= 32'hefb8e0bf ;
    mem[8'h5d] <= 32'h39b28cc6 ;
    mem[8'h5e] <= 32'h476d25fa ;
    mem[8'h5f] <= 32'h91674983 ;
    mem[8'h60] <= 32'he3ba9a3d ;
    mem[8'h61] <= 32'h35b0f644 ;
    mem[8'h62] <= 32'h4b6f5f78 ;
    mem[8'h63] <= 32'h9d653301 ;
    mem[8'h64] <= 32'hb6d00d00 ;
    mem[8'h65] <= 32'h60da6179 ;
    mem[8'h66] <= 32'h1e05c845 ;
    mem[8'h67] <= 32'hc80fa43c ;
    mem[8'h68] <= 32'h496fb447 ;
    mem[8'h69] <= 32'h9f65d83e ;
    mem[8'h6a] <= 32'he1ba7102 ;
    mem[8'h6b] <= 32'h37b01d7b ;
    mem[8'h6c] <= 32'h1c05237a ;
    mem[8'h6d] <= 32'hca0f4f03 ;
    mem[8'h6e] <= 32'hb4d0e63f ;
    mem[8'h6f] <= 32'h62da8a46 ;
    mem[8'h70] <= 32'hb2d1db7e ;
    mem[8'h71] <= 32'h64dbb707 ;
    mem[8'h72] <= 32'h1a041e3b ;
    mem[8'h73] <= 32'hcc0e7242 ;
    mem[8'h74] <= 32'he7bb4c43 ;
    mem[8'h75] <= 32'h31b1203a ;
    mem[8'h76] <= 32'h4f6e8906 ;
    mem[8'h77] <= 32'h9964e57f ;
    mem[8'h78] <= 32'h1804f504 ;
    mem[8'h79] <= 32'hce0e997d ;
    mem[8'h7a] <= 32'hb0d13041 ;
    mem[8'h7b] <= 32'h66db5c38 ;
    mem[8'h7c] <= 32'h4d6e6239 ;
    mem[8'h7d] <= 32'h9b640e40 ;
    mem[8'h7e] <= 32'he5bba77c ;
    mem[8'h7f] <= 32'h33b1cb05 ;
    mem[8'h80] <= 32'h82d83176 ;
    mem[8'h81] <= 32'h54d25d0f ;
    mem[8'h82] <= 32'h2a0df433 ;
    mem[8'h83] <= 32'hfc07984a ;
    mem[8'h84] <= 32'hd7b2a64b ;
    mem[8'h85] <= 32'h1b8ca32 ;
    mem[8'h86] <= 32'h7f67630e ;
    mem[8'h87] <= 32'ha96d0f77 ;
    mem[8'h88] <= 32'h280d1f0c ;
    mem[8'h89] <= 32'hfe077375 ;
    mem[8'h8a] <= 32'h80d8da49 ;
    mem[8'h8b] <= 32'h56d2b630 ;
    mem[8'h8c] <= 32'h7d678831 ;
    mem[8'h8d] <= 32'hab6de448 ;
    mem[8'h8e] <= 32'hd5b24d74 ;
    mem[8'h8f] <= 32'h3b8210d ;
    mem[8'h90] <= 32'hd3b37035 ;
    mem[8'h91] <= 32'h5b91c4c ;
    mem[8'h92] <= 32'h7b66b570 ;
    mem[8'h93] <= 32'had6cd909 ;
    mem[8'h94] <= 32'h86d9e708 ;
    mem[8'h95] <= 32'h50d38b71 ;
    mem[8'h96] <= 32'h2e0c224d ;
    mem[8'h97] <= 32'hf8064e34 ;
    mem[8'h98] <= 32'h79665e4f ;
    mem[8'h99] <= 32'haf6c3236 ;
    mem[8'h9a] <= 32'hd1b39b0a ;
    mem[8'h9b] <= 32'h7b9f773 ;
    mem[8'h9c] <= 32'h2c0cc972 ;
    mem[8'h9d] <= 32'hfa06a50b ;
    mem[8'h9e] <= 32'h84d90c37 ;
    mem[8'h9f] <= 32'h52d3604e ;
    mem[8'ha0] <= 32'h200eb3f0 ;
    mem[8'ha1] <= 32'hf604df89 ;
    mem[8'ha2] <= 32'h88db76b5 ;
    mem[8'ha3] <= 32'h5ed11acc ;
    mem[8'ha4] <= 32'h756424cd ;
    mem[8'ha5] <= 32'ha36e48b4 ;
    mem[8'ha6] <= 32'hddb1e188 ;
    mem[8'ha7] <= 32'hbbb8df1 ;
    mem[8'ha8] <= 32'h8adb9d8a ;
    mem[8'ha9] <= 32'h5cd1f1f3 ;
    mem[8'haa] <= 32'h220e58cf ;
    mem[8'hab] <= 32'hf40434b6 ;
    mem[8'hac] <= 32'hdfb10ab7 ;
    mem[8'had] <= 32'h9bb66ce ;
    mem[8'hae] <= 32'h7764cff2 ;
    mem[8'haf] <= 32'ha16ea38b ;
    mem[8'hb0] <= 32'h7165f2b3 ;
    mem[8'hb1] <= 32'ha76f9eca ;
    mem[8'hb2] <= 32'hd9b037f6 ;
    mem[8'hb3] <= 32'hfba5b8f ;
    mem[8'hb4] <= 32'h240f658e ;
    mem[8'hb5] <= 32'hf20509f7 ;
    mem[8'hb6] <= 32'h8cdaa0cb ;
    mem[8'hb7] <= 32'h5ad0ccb2 ;
    mem[8'hb8] <= 32'hdbb0dcc9 ;
    mem[8'hb9] <= 32'hdbab0b0 ;
    mem[8'hba] <= 32'h7365198c ;
    mem[8'hbb] <= 32'ha56f75f5 ;
    mem[8'hbc] <= 32'h8eda4bf4 ;
    mem[8'hbd] <= 32'h58d0278d ;
    mem[8'hbe] <= 32'h260f8eb1 ;
    mem[8'hbf] <= 32'hf005e2c8 ;
    mem[8'hc0] <= 32'hc3b429cd ;
    mem[8'hc1] <= 32'h15be45b4 ;
    mem[8'hc2] <= 32'h6b61ec88 ;
    mem[8'hc3] <= 32'hbd6b80f1 ;
    mem[8'hc4] <= 32'h96debef0 ;
    mem[8'hc5] <= 32'h40d4d289 ;
    mem[8'hc6] <= 32'h3e0b7bb5 ;
    mem[8'hc7] <= 32'he80117cc ;
    mem[8'hc8] <= 32'h696107b7 ;
    mem[8'hc9] <= 32'hbf6b6bce ;
    mem[8'hca] <= 32'hc1b4c2f2 ;
    mem[8'hcb] <= 32'h17beae8b ;
    mem[8'hcc] <= 32'h3c0b908a ;
    mem[8'hcd] <= 32'hea01fcf3 ;
    mem[8'hce] <= 32'h94de55cf ;
    mem[8'hcf] <= 32'h42d439b6 ;
    mem[8'hd0] <= 32'h92df688e ;
    mem[8'hd1] <= 32'h44d504f7 ;
    mem[8'hd2] <= 32'h3a0aadcb ;
    mem[8'hd3] <= 32'hec00c1b2 ;
    mem[8'hd4] <= 32'hc7b5ffb3 ;
    mem[8'hd5] <= 32'h11bf93ca ;
    mem[8'hd6] <= 32'h6f603af6 ;
    mem[8'hd7] <= 32'hb96a568f ;
    mem[8'hd8] <= 32'h380a46f4 ;
    mem[8'hd9] <= 32'hee002a8d ;
    mem[8'hda] <= 32'h90df83b1 ;
    mem[8'hdb] <= 32'h46d5efc8 ;
    mem[8'hdc] <= 32'h6d60d1c9 ;
    mem[8'hdd] <= 32'hbb6abdb0 ;
    mem[8'hde] <= 32'hc5b5148c ;
    mem[8'hdf] <= 32'h13bf78f5 ;
    mem[8'he0] <= 32'h6162ab4b ;
    mem[8'he1] <= 32'hb768c732 ;
    mem[8'he2] <= 32'hc9b76e0e ;
    mem[8'he3] <= 32'h1fbd0277 ;
    mem[8'he4] <= 32'h34083c76 ;
    mem[8'he5] <= 32'he202500f ;
    mem[8'he6] <= 32'h9cddf933 ;
    mem[8'he7] <= 32'h4ad7954a ;
    mem[8'he8] <= 32'hcbb78531 ;
    mem[8'he9] <= 32'h1dbde948 ;
    mem[8'hea] <= 32'h63624074 ;
    mem[8'heb] <= 32'hb5682c0d ;
    mem[8'hec] <= 32'h9edd120c ;
    mem[8'hed] <= 32'h48d77e75 ;
    mem[8'hee] <= 32'h3608d749 ;
    mem[8'hef] <= 32'he002bb30 ;
    mem[8'hf0] <= 32'h3009ea08 ;
    mem[8'hf1] <= 32'he6038671 ;
    mem[8'hf2] <= 32'h98dc2f4d ;
    mem[8'hf3] <= 32'h4ed64334 ;
    mem[8'hf4] <= 32'h65637d35 ;
    mem[8'hf5] <= 32'hb369114c ;
    mem[8'hf6] <= 32'hcdb6b870 ;
    mem[8'hf7] <= 32'h1bbcd409 ;
    mem[8'hf8] <= 32'h9adcc472 ;
    mem[8'hf9] <= 32'h4cd6a80b ;
    mem[8'hfa] <= 32'h32090137 ;
    mem[8'hfb] <= 32'he4036d4e ;
    mem[8'hfc] <= 32'hcfb6534f ;
    mem[8'hfd] <= 32'h19bc3f36 ;
    mem[8'hfe] <= 32'h6763960a ;
    mem[8'hff] <= 32'hb169fa73 ;
end
assign mem_addr = addr[7:0];
// Output connectins
assign rdata    = mem_data;
assign mem_data = mem[mem_addr];
endmodule