module crctab_ev11
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
    mem[8'h1] <= 32'h7f6e306 ;
    mem[8'h2] <= 32'hfedc60c ;
    mem[8'h3] <= 32'h81b250a ;
    mem[8'h4] <= 32'h1fdb8c18 ;
    mem[8'h5] <= 32'h182d6f1e ;
    mem[8'h6] <= 32'h10364a14 ;
    mem[8'h7] <= 32'h17c0a912 ;
    mem[8'h8] <= 32'h3fb71830 ;
    mem[8'h9] <= 32'h3841fb36 ;
    mem[8'ha] <= 32'h305ade3c ;
    mem[8'hb] <= 32'h37ac3d3a ;
    mem[8'hc] <= 32'h206c9428 ;
    mem[8'hd] <= 32'h279a772e ;
    mem[8'he] <= 32'h2f815224 ;
    mem[8'hf] <= 32'h2877b122 ;
    mem[8'h10] <= 32'h7f6e3060 ;
    mem[8'h11] <= 32'h7898d366 ;
    mem[8'h12] <= 32'h7083f66c ;
    mem[8'h13] <= 32'h7775156a ;
    mem[8'h14] <= 32'h60b5bc78 ;
    mem[8'h15] <= 32'h67435f7e ;
    mem[8'h16] <= 32'h6f587a74 ;
    mem[8'h17] <= 32'h68ae9972 ;
    mem[8'h18] <= 32'h40d92850 ;
    mem[8'h19] <= 32'h472fcb56 ;
    mem[8'h1a] <= 32'h4f34ee5c ;
    mem[8'h1b] <= 32'h48c20d5a ;
    mem[8'h1c] <= 32'h5f02a448 ;
    mem[8'h1d] <= 32'h58f4474e ;
    mem[8'h1e] <= 32'h50ef6244 ;
    mem[8'h1f] <= 32'h57198142 ;
    mem[8'h20] <= 32'hfedc60c0 ;
    mem[8'h21] <= 32'hf92a83c6 ;
    mem[8'h22] <= 32'hf131a6cc ;
    mem[8'h23] <= 32'hf6c745ca ;
    mem[8'h24] <= 32'he107ecd8 ;
    mem[8'h25] <= 32'he6f10fde ;
    mem[8'h26] <= 32'heeea2ad4 ;
    mem[8'h27] <= 32'he91cc9d2 ;
    mem[8'h28] <= 32'hc16b78f0 ;
    mem[8'h29] <= 32'hc69d9bf6 ;
    mem[8'h2a] <= 32'hce86befc ;
    mem[8'h2b] <= 32'hc9705dfa ;
    mem[8'h2c] <= 32'hdeb0f4e8 ;
    mem[8'h2d] <= 32'hd94617ee ;
    mem[8'h2e] <= 32'hd15d32e4 ;
    mem[8'h2f] <= 32'hd6abd1e2 ;
    mem[8'h30] <= 32'h81b250a0 ;
    mem[8'h31] <= 32'h8644b3a6 ;
    mem[8'h32] <= 32'h8e5f96ac ;
    mem[8'h33] <= 32'h89a975aa ;
    mem[8'h34] <= 32'h9e69dcb8 ;
    mem[8'h35] <= 32'h999f3fbe ;
    mem[8'h36] <= 32'h91841ab4 ;
    mem[8'h37] <= 32'h9672f9b2 ;
    mem[8'h38] <= 32'hbe054890 ;
    mem[8'h39] <= 32'hb9f3ab96 ;
    mem[8'h3a] <= 32'hb1e88e9c ;
    mem[8'h3b] <= 32'hb61e6d9a ;
    mem[8'h3c] <= 32'ha1dec488 ;
    mem[8'h3d] <= 32'ha628278e ;
    mem[8'h3e] <= 32'hae330284 ;
    mem[8'h3f] <= 32'ha9c5e182 ;
    mem[8'h40] <= 32'hf979dc37 ;
    mem[8'h41] <= 32'hfe8f3f31 ;
    mem[8'h42] <= 32'hf6941a3b ;
    mem[8'h43] <= 32'hf162f93d ;
    mem[8'h44] <= 32'he6a2502f ;
    mem[8'h45] <= 32'he154b329 ;
    mem[8'h46] <= 32'he94f9623 ;
    mem[8'h47] <= 32'heeb97525 ;
    mem[8'h48] <= 32'hc6cec407 ;
    mem[8'h49] <= 32'hc1382701 ;
    mem[8'h4a] <= 32'hc923020b ;
    mem[8'h4b] <= 32'hced5e10d ;
    mem[8'h4c] <= 32'hd915481f ;
    mem[8'h4d] <= 32'hdee3ab19 ;
    mem[8'h4e] <= 32'hd6f88e13 ;
    mem[8'h4f] <= 32'hd10e6d15 ;
    mem[8'h50] <= 32'h8617ec57 ;
    mem[8'h51] <= 32'h81e10f51 ;
    mem[8'h52] <= 32'h89fa2a5b ;
    mem[8'h53] <= 32'h8e0cc95d ;
    mem[8'h54] <= 32'h99cc604f ;
    mem[8'h55] <= 32'h9e3a8349 ;
    mem[8'h56] <= 32'h9621a643 ;
    mem[8'h57] <= 32'h91d74545 ;
    mem[8'h58] <= 32'hb9a0f467 ;
    mem[8'h59] <= 32'hbe561761 ;
    mem[8'h5a] <= 32'hb64d326b ;
    mem[8'h5b] <= 32'hb1bbd16d ;
    mem[8'h5c] <= 32'ha67b787f ;
    mem[8'h5d] <= 32'ha18d9b79 ;
    mem[8'h5e] <= 32'ha996be73 ;
    mem[8'h5f] <= 32'hae605d75 ;
    mem[8'h60] <= 32'h7a5bcf7 ;
    mem[8'h61] <= 32'h535ff1 ;
    mem[8'h62] <= 32'h8487afb ;
    mem[8'h63] <= 32'hfbe99fd ;
    mem[8'h64] <= 32'h187e30ef ;
    mem[8'h65] <= 32'h1f88d3e9 ;
    mem[8'h66] <= 32'h1793f6e3 ;
    mem[8'h67] <= 32'h106515e5 ;
    mem[8'h68] <= 32'h3812a4c7 ;
    mem[8'h69] <= 32'h3fe447c1 ;
    mem[8'h6a] <= 32'h37ff62cb ;
    mem[8'h6b] <= 32'h300981cd ;
    mem[8'h6c] <= 32'h27c928df ;
    mem[8'h6d] <= 32'h203fcbd9 ;
    mem[8'h6e] <= 32'h2824eed3 ;
    mem[8'h6f] <= 32'h2fd20dd5 ;
    mem[8'h70] <= 32'h78cb8c97 ;
    mem[8'h71] <= 32'h7f3d6f91 ;
    mem[8'h72] <= 32'h77264a9b ;
    mem[8'h73] <= 32'h70d0a99d ;
    mem[8'h74] <= 32'h6710008f ;
    mem[8'h75] <= 32'h60e6e389 ;
    mem[8'h76] <= 32'h68fdc683 ;
    mem[8'h77] <= 32'h6f0b2585 ;
    mem[8'h78] <= 32'h477c94a7 ;
    mem[8'h79] <= 32'h408a77a1 ;
    mem[8'h7a] <= 32'h489152ab ;
    mem[8'h7b] <= 32'h4f67b1ad ;
    mem[8'h7c] <= 32'h58a718bf ;
    mem[8'h7d] <= 32'h5f51fbb9 ;
    mem[8'h7e] <= 32'h574adeb3 ;
    mem[8'h7f] <= 32'h50bc3db5 ;
    mem[8'h80] <= 32'hf632a5d9 ;
    mem[8'h81] <= 32'hf1c446df ;
    mem[8'h82] <= 32'hf9df63d5 ;
    mem[8'h83] <= 32'hfe2980d3 ;
    mem[8'h84] <= 32'he9e929c1 ;
    mem[8'h85] <= 32'hee1fcac7 ;
    mem[8'h86] <= 32'he604efcd ;
    mem[8'h87] <= 32'he1f20ccb ;
    mem[8'h88] <= 32'hc985bde9 ;
    mem[8'h89] <= 32'hce735eef ;
    mem[8'h8a] <= 32'hc6687be5 ;
    mem[8'h8b] <= 32'hc19e98e3 ;
    mem[8'h8c] <= 32'hd65e31f1 ;
    mem[8'h8d] <= 32'hd1a8d2f7 ;
    mem[8'h8e] <= 32'hd9b3f7fd ;
    mem[8'h8f] <= 32'hde4514fb ;
    mem[8'h90] <= 32'h895c95b9 ;
    mem[8'h91] <= 32'h8eaa76bf ;
    mem[8'h92] <= 32'h86b153b5 ;
    mem[8'h93] <= 32'h8147b0b3 ;
    mem[8'h94] <= 32'h968719a1 ;
    mem[8'h95] <= 32'h9171faa7 ;
    mem[8'h96] <= 32'h996adfad ;
    mem[8'h97] <= 32'h9e9c3cab ;
    mem[8'h98] <= 32'hb6eb8d89 ;
    mem[8'h99] <= 32'hb11d6e8f ;
    mem[8'h9a] <= 32'hb9064b85 ;
    mem[8'h9b] <= 32'hbef0a883 ;
    mem[8'h9c] <= 32'ha9300191 ;
    mem[8'h9d] <= 32'haec6e297 ;
    mem[8'h9e] <= 32'ha6ddc79d ;
    mem[8'h9f] <= 32'ha12b249b ;
    mem[8'ha0] <= 32'h8eec519 ;
    mem[8'ha1] <= 32'hf18261f ;
    mem[8'ha2] <= 32'h7030315 ;
    mem[8'ha3] <= 32'hf5e013 ;
    mem[8'ha4] <= 32'h17354901 ;
    mem[8'ha5] <= 32'h10c3aa07 ;
    mem[8'ha6] <= 32'h18d88f0d ;
    mem[8'ha7] <= 32'h1f2e6c0b ;
    mem[8'ha8] <= 32'h3759dd29 ;
    mem[8'ha9] <= 32'h30af3e2f ;
    mem[8'haa] <= 32'h38b41b25 ;
    mem[8'hab] <= 32'h3f42f823 ;
    mem[8'hac] <= 32'h28825131 ;
    mem[8'had] <= 32'h2f74b237 ;
    mem[8'hae] <= 32'h276f973d ;
    mem[8'haf] <= 32'h2099743b ;
    mem[8'hb0] <= 32'h7780f579 ;
    mem[8'hb1] <= 32'h7076167f ;
    mem[8'hb2] <= 32'h786d3375 ;
    mem[8'hb3] <= 32'h7f9bd073 ;
    mem[8'hb4] <= 32'h685b7961 ;
    mem[8'hb5] <= 32'h6fad9a67 ;
    mem[8'hb6] <= 32'h67b6bf6d ;
    mem[8'hb7] <= 32'h60405c6b ;
    mem[8'hb8] <= 32'h4837ed49 ;
    mem[8'hb9] <= 32'h4fc10e4f ;
    mem[8'hba] <= 32'h47da2b45 ;
    mem[8'hbb] <= 32'h402cc843 ;
    mem[8'hbc] <= 32'h57ec6151 ;
    mem[8'hbd] <= 32'h501a8257 ;
    mem[8'hbe] <= 32'h5801a75d ;
    mem[8'hbf] <= 32'h5ff7445b ;
    mem[8'hc0] <= 32'hf4b79ee ;
    mem[8'hc1] <= 32'h8bd9ae8 ;
    mem[8'hc2] <= 32'ha6bfe2 ;
    mem[8'hc3] <= 32'h7505ce4 ;
    mem[8'hc4] <= 32'h1090f5f6 ;
    mem[8'hc5] <= 32'h176616f0 ;
    mem[8'hc6] <= 32'h1f7d33fa ;
    mem[8'hc7] <= 32'h188bd0fc ;
    mem[8'hc8] <= 32'h30fc61de ;
    mem[8'hc9] <= 32'h370a82d8 ;
    mem[8'hca] <= 32'h3f11a7d2 ;
    mem[8'hcb] <= 32'h38e744d4 ;
    mem[8'hcc] <= 32'h2f27edc6 ;
    mem[8'hcd] <= 32'h28d10ec0 ;
    mem[8'hce] <= 32'h20ca2bca ;
    mem[8'hcf] <= 32'h273cc8cc ;
    mem[8'hd0] <= 32'h7025498e ;
    mem[8'hd1] <= 32'h77d3aa88 ;
    mem[8'hd2] <= 32'h7fc88f82 ;
    mem[8'hd3] <= 32'h783e6c84 ;
    mem[8'hd4] <= 32'h6ffec596 ;
    mem[8'hd5] <= 32'h68082690 ;
    mem[8'hd6] <= 32'h6013039a ;
    mem[8'hd7] <= 32'h67e5e09c ;
    mem[8'hd8] <= 32'h4f9251be ;
    mem[8'hd9] <= 32'h4864b2b8 ;
    mem[8'hda] <= 32'h407f97b2 ;
    mem[8'hdb] <= 32'h478974b4 ;
    mem[8'hdc] <= 32'h5049dda6 ;
    mem[8'hdd] <= 32'h57bf3ea0 ;
    mem[8'hde] <= 32'h5fa41baa ;
    mem[8'hdf] <= 32'h5852f8ac ;
    mem[8'he0] <= 32'hf197192e ;
    mem[8'he1] <= 32'hf661fa28 ;
    mem[8'he2] <= 32'hfe7adf22 ;
    mem[8'he3] <= 32'hf98c3c24 ;
    mem[8'he4] <= 32'hee4c9536 ;
    mem[8'he5] <= 32'he9ba7630 ;
    mem[8'he6] <= 32'he1a1533a ;
    mem[8'he7] <= 32'he657b03c ;
    mem[8'he8] <= 32'hce20011e ;
    mem[8'he9] <= 32'hc9d6e218 ;
    mem[8'hea] <= 32'hc1cdc712 ;
    mem[8'heb] <= 32'hc63b2414 ;
    mem[8'hec] <= 32'hd1fb8d06 ;
    mem[8'hed] <= 32'hd60d6e00 ;
    mem[8'hee] <= 32'hde164b0a ;
    mem[8'hef] <= 32'hd9e0a80c ;
    mem[8'hf0] <= 32'h8ef9294e ;
    mem[8'hf1] <= 32'h890fca48 ;
    mem[8'hf2] <= 32'h8114ef42 ;
    mem[8'hf3] <= 32'h86e20c44 ;
    mem[8'hf4] <= 32'h9122a556 ;
    mem[8'hf5] <= 32'h96d44650 ;
    mem[8'hf6] <= 32'h9ecf635a ;
    mem[8'hf7] <= 32'h9939805c ;
    mem[8'hf8] <= 32'hb14e317e ;
    mem[8'hf9] <= 32'hb6b8d278 ;
    mem[8'hfa] <= 32'hbea3f772 ;
    mem[8'hfb] <= 32'hb9551474 ;
    mem[8'hfc] <= 32'hae95bd66 ;
    mem[8'hfd] <= 32'ha9635e60 ;
    mem[8'hfe] <= 32'ha1787b6a ;
    mem[8'hff] <= 32'ha68e986c ;
end
assign mem_addr = addr[7:0];
// Output connectins
assign rdata    = mem_data;
assign mem_data = mem[mem_addr];
endmodule
