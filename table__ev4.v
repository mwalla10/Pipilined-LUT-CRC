module crctab_ev4
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
    mem[8'h1] <= 32'h490d678d ;
    mem[8'h2] <= 32'h921acf1a ;
    mem[8'h3] <= 32'hdb17a897 ;
    mem[8'h4] <= 32'h20f48383 ;
    mem[8'h5] <= 32'h69f9e40e ;
    mem[8'h6] <= 32'hb2ee4c99 ;
    mem[8'h7] <= 32'hfbe32b14 ;
    mem[8'h8] <= 32'h41e90706 ;
    mem[8'h9] <= 32'h8e4608b ;
    mem[8'ha] <= 32'hd3f3c81c ;
    mem[8'hb] <= 32'h9afeaf91 ;
    mem[8'hc] <= 32'h611d8485 ;
    mem[8'hd] <= 32'h2810e308 ;
    mem[8'he] <= 32'hf3074b9f ;
    mem[8'hf] <= 32'hba0a2c12 ;
    mem[8'h10] <= 32'h83d20e0c ;
    mem[8'h11] <= 32'hcadf6981 ;
    mem[8'h12] <= 32'h11c8c116 ;
    mem[8'h13] <= 32'h58c5a69b ;
    mem[8'h14] <= 32'ha3268d8f ;
    mem[8'h15] <= 32'hea2bea02 ;
    mem[8'h16] <= 32'h313c4295 ;
    mem[8'h17] <= 32'h78312518 ;
    mem[8'h18] <= 32'hc23b090a ;
    mem[8'h19] <= 32'h8b366e87 ;
    mem[8'h1a] <= 32'h5021c610 ;
    mem[8'h1b] <= 32'h192ca19d ;
    mem[8'h1c] <= 32'he2cf8a89 ;
    mem[8'h1d] <= 32'habc2ed04 ;
    mem[8'h1e] <= 32'h70d54593 ;
    mem[8'h1f] <= 32'h39d8221e ;
    mem[8'h20] <= 32'h36501af ;
    mem[8'h21] <= 32'h4a686622 ;
    mem[8'h22] <= 32'h917fceb5 ;
    mem[8'h23] <= 32'hd872a938 ;
    mem[8'h24] <= 32'h2391822c ;
    mem[8'h25] <= 32'h6a9ce5a1 ;
    mem[8'h26] <= 32'hb18b4d36 ;
    mem[8'h27] <= 32'hf8862abb ;
    mem[8'h28] <= 32'h428c06a9 ;
    mem[8'h29] <= 32'hb816124 ;
    mem[8'h2a] <= 32'hd096c9b3 ;
    mem[8'h2b] <= 32'h999bae3e ;
    mem[8'h2c] <= 32'h6278852a ;
    mem[8'h2d] <= 32'h2b75e2a7 ;
    mem[8'h2e] <= 32'hf0624a30 ;
    mem[8'h2f] <= 32'hb96f2dbd ;
    mem[8'h30] <= 32'h80b70fa3 ;
    mem[8'h31] <= 32'hc9ba682e ;
    mem[8'h32] <= 32'h12adc0b9 ;
    mem[8'h33] <= 32'h5ba0a734 ;
    mem[8'h34] <= 32'ha0438c20 ;
    mem[8'h35] <= 32'he94eebad ;
    mem[8'h36] <= 32'h3259433a ;
    mem[8'h37] <= 32'h7b5424b7 ;
    mem[8'h38] <= 32'hc15e08a5 ;
    mem[8'h39] <= 32'h88536f28 ;
    mem[8'h3a] <= 32'h5344c7bf ;
    mem[8'h3b] <= 32'h1a49a032 ;
    mem[8'h3c] <= 32'he1aa8b26 ;
    mem[8'h3d] <= 32'ha8a7ecab ;
    mem[8'h3e] <= 32'h73b0443c ;
    mem[8'h3f] <= 32'h3abd23b1 ;
    mem[8'h40] <= 32'h6ca035e ;
    mem[8'h41] <= 32'h4fc764d3 ;
    mem[8'h42] <= 32'h94d0cc44 ;
    mem[8'h43] <= 32'hddddabc9 ;
    mem[8'h44] <= 32'h263e80dd ;
    mem[8'h45] <= 32'h6f33e750 ;
    mem[8'h46] <= 32'hb4244fc7 ;
    mem[8'h47] <= 32'hfd29284a ;
    mem[8'h48] <= 32'h47230458 ;
    mem[8'h49] <= 32'he2e63d5 ;
    mem[8'h4a] <= 32'hd539cb42 ;
    mem[8'h4b] <= 32'h9c34accf ;
    mem[8'h4c] <= 32'h67d787db ;
    mem[8'h4d] <= 32'h2edae056 ;
    mem[8'h4e] <= 32'hf5cd48c1 ;
    mem[8'h4f] <= 32'hbcc02f4c ;
    mem[8'h50] <= 32'h85180d52 ;
    mem[8'h51] <= 32'hcc156adf ;
    mem[8'h52] <= 32'h1702c248 ;
    mem[8'h53] <= 32'h5e0fa5c5 ;
    mem[8'h54] <= 32'ha5ec8ed1 ;
    mem[8'h55] <= 32'hece1e95c ;
    mem[8'h56] <= 32'h37f641cb ;
    mem[8'h57] <= 32'h7efb2646 ;
    mem[8'h58] <= 32'hc4f10a54 ;
    mem[8'h59] <= 32'h8dfc6dd9 ;
    mem[8'h5a] <= 32'h56ebc54e ;
    mem[8'h5b] <= 32'h1fe6a2c3 ;
    mem[8'h5c] <= 32'he40589d7 ;
    mem[8'h5d] <= 32'had08ee5a ;
    mem[8'h5e] <= 32'h761f46cd ;
    mem[8'h5f] <= 32'h3f122140 ;
    mem[8'h60] <= 32'h5af02f1 ;
    mem[8'h61] <= 32'h4ca2657c ;
    mem[8'h62] <= 32'h97b5cdeb ;
    mem[8'h63] <= 32'hdeb8aa66 ;
    mem[8'h64] <= 32'h255b8172 ;
    mem[8'h65] <= 32'h6c56e6ff ;
    mem[8'h66] <= 32'hb7414e68 ;
    mem[8'h67] <= 32'hfe4c29e5 ;
    mem[8'h68] <= 32'h444605f7 ;
    mem[8'h69] <= 32'hd4b627a ;
    mem[8'h6a] <= 32'hd65ccaed ;
    mem[8'h6b] <= 32'h9f51ad60 ;
    mem[8'h6c] <= 32'h64b28674 ;
    mem[8'h6d] <= 32'h2dbfe1f9 ;
    mem[8'h6e] <= 32'hf6a8496e ;
    mem[8'h6f] <= 32'hbfa52ee3 ;
    mem[8'h70] <= 32'h867d0cfd ;
    mem[8'h71] <= 32'hcf706b70 ;
    mem[8'h72] <= 32'h1467c3e7 ;
    mem[8'h73] <= 32'h5d6aa46a ;
    mem[8'h74] <= 32'ha6898f7e ;
    mem[8'h75] <= 32'hef84e8f3 ;
    mem[8'h76] <= 32'h34934064 ;
    mem[8'h77] <= 32'h7d9e27e9 ;
    mem[8'h78] <= 32'hc7940bfb ;
    mem[8'h79] <= 32'h8e996c76 ;
    mem[8'h7a] <= 32'h558ec4e1 ;
    mem[8'h7b] <= 32'h1c83a36c ;
    mem[8'h7c] <= 32'he7608878 ;
    mem[8'h7d] <= 32'hae6deff5 ;
    mem[8'h7e] <= 32'h757a4762 ;
    mem[8'h7f] <= 32'h3c7720ef ;
    mem[8'h80] <= 32'hd9406bc ;
    mem[8'h81] <= 32'h44996131 ;
    mem[8'h82] <= 32'h9f8ec9a6 ;
    mem[8'h83] <= 32'hd683ae2b ;
    mem[8'h84] <= 32'h2d60853f ;
    mem[8'h85] <= 32'h646de2b2 ;
    mem[8'h86] <= 32'hbf7a4a25 ;
    mem[8'h87] <= 32'hf6772da8 ;
    mem[8'h88] <= 32'h4c7d01ba ;
    mem[8'h89] <= 32'h5706637 ;
    mem[8'h8a] <= 32'hde67cea0 ;
    mem[8'h8b] <= 32'h976aa92d ;
    mem[8'h8c] <= 32'h6c898239 ;
    mem[8'h8d] <= 32'h2584e5b4 ;
    mem[8'h8e] <= 32'hfe934d23 ;
    mem[8'h8f] <= 32'hb79e2aae ;
    mem[8'h90] <= 32'h8e4608b0 ;
    mem[8'h91] <= 32'hc74b6f3d ;
    mem[8'h92] <= 32'h1c5cc7aa ;
    mem[8'h93] <= 32'h5551a027 ;
    mem[8'h94] <= 32'haeb28b33 ;
    mem[8'h95] <= 32'he7bfecbe ;
    mem[8'h96] <= 32'h3ca84429 ;
    mem[8'h97] <= 32'h75a523a4 ;
    mem[8'h98] <= 32'hcfaf0fb6 ;
    mem[8'h99] <= 32'h86a2683b ;
    mem[8'h9a] <= 32'h5db5c0ac ;
    mem[8'h9b] <= 32'h14b8a721 ;
    mem[8'h9c] <= 32'hef5b8c35 ;
    mem[8'h9d] <= 32'ha656ebb8 ;
    mem[8'h9e] <= 32'h7d41432f ;
    mem[8'h9f] <= 32'h344c24a2 ;
    mem[8'ha0] <= 32'hef10713 ;
    mem[8'ha1] <= 32'h47fc609e ;
    mem[8'ha2] <= 32'h9cebc809 ;
    mem[8'ha3] <= 32'hd5e6af84 ;
    mem[8'ha4] <= 32'h2e058490 ;
    mem[8'ha5] <= 32'h6708e31d ;
    mem[8'ha6] <= 32'hbc1f4b8a ;
    mem[8'ha7] <= 32'hf5122c07 ;
    mem[8'ha8] <= 32'h4f180015 ;
    mem[8'ha9] <= 32'h6156798 ;
    mem[8'haa] <= 32'hdd02cf0f ;
    mem[8'hab] <= 32'h940fa882 ;
    mem[8'hac] <= 32'h6fec8396 ;
    mem[8'had] <= 32'h26e1e41b ;
    mem[8'hae] <= 32'hfdf64c8c ;
    mem[8'haf] <= 32'hb4fb2b01 ;
    mem[8'hb0] <= 32'h8d23091f ;
    mem[8'hb1] <= 32'hc42e6e92 ;
    mem[8'hb2] <= 32'h1f39c605 ;
    mem[8'hb3] <= 32'h5634a188 ;
    mem[8'hb4] <= 32'hadd78a9c ;
    mem[8'hb5] <= 32'he4daed11 ;
    mem[8'hb6] <= 32'h3fcd4586 ;
    mem[8'hb7] <= 32'h76c0220b ;
    mem[8'hb8] <= 32'hccca0e19 ;
    mem[8'hb9] <= 32'h85c76994 ;
    mem[8'hba] <= 32'h5ed0c103 ;
    mem[8'hbb] <= 32'h17dda68e ;
    mem[8'hbc] <= 32'hec3e8d9a ;
    mem[8'hbd] <= 32'ha533ea17 ;
    mem[8'hbe] <= 32'h7e244280 ;
    mem[8'hbf] <= 32'h3729250d ;
    mem[8'hc0] <= 32'hb5e05e2 ;
    mem[8'hc1] <= 32'h4253626f ;
    mem[8'hc2] <= 32'h9944caf8 ;
    mem[8'hc3] <= 32'hd049ad75 ;
    mem[8'hc4] <= 32'h2baa8661 ;
    mem[8'hc5] <= 32'h62a7e1ec ;
    mem[8'hc6] <= 32'hb9b0497b ;
    mem[8'hc7] <= 32'hf0bd2ef6 ;
    mem[8'hc8] <= 32'h4ab702e4 ;
    mem[8'hc9] <= 32'h3ba6569 ;
    mem[8'hca] <= 32'hd8adcdfe ;
    mem[8'hcb] <= 32'h91a0aa73 ;
    mem[8'hcc] <= 32'h6a438167 ;
    mem[8'hcd] <= 32'h234ee6ea ;
    mem[8'hce] <= 32'hf8594e7d ;
    mem[8'hcf] <= 32'hb15429f0 ;
    mem[8'hd0] <= 32'h888c0bee ;
    mem[8'hd1] <= 32'hc1816c63 ;
    mem[8'hd2] <= 32'h1a96c4f4 ;
    mem[8'hd3] <= 32'h539ba379 ;
    mem[8'hd4] <= 32'ha878886d ;
    mem[8'hd5] <= 32'he175efe0 ;
    mem[8'hd6] <= 32'h3a624777 ;
    mem[8'hd7] <= 32'h736f20fa ;
    mem[8'hd8] <= 32'hc9650ce8 ;
    mem[8'hd9] <= 32'h80686b65 ;
    mem[8'hda] <= 32'h5b7fc3f2 ;
    mem[8'hdb] <= 32'h1272a47f ;
    mem[8'hdc] <= 32'he9918f6b ;
    mem[8'hdd] <= 32'ha09ce8e6 ;
    mem[8'hde] <= 32'h7b8b4071 ;
    mem[8'hdf] <= 32'h328627fc ;
    mem[8'he0] <= 32'h83b044d ;
    mem[8'he1] <= 32'h413663c0 ;
    mem[8'he2] <= 32'h9a21cb57 ;
    mem[8'he3] <= 32'hd32cacda ;
    mem[8'he4] <= 32'h28cf87ce ;
    mem[8'he5] <= 32'h61c2e043 ;
    mem[8'he6] <= 32'hbad548d4 ;
    mem[8'he7] <= 32'hf3d82f59 ;
    mem[8'he8] <= 32'h49d2034b ;
    mem[8'he9] <= 32'hdf64c6 ;
    mem[8'hea] <= 32'hdbc8cc51 ;
    mem[8'heb] <= 32'h92c5abdc ;
    mem[8'hec] <= 32'h692680c8 ;
    mem[8'hed] <= 32'h202be745 ;
    mem[8'hee] <= 32'hfb3c4fd2 ;
    mem[8'hef] <= 32'hb231285f ;
    mem[8'hf0] <= 32'h8be90a41 ;
    mem[8'hf1] <= 32'hc2e46dcc ;
    mem[8'hf2] <= 32'h19f3c55b ;
    mem[8'hf3] <= 32'h50fea2d6 ;
    mem[8'hf4] <= 32'hab1d89c2 ;
    mem[8'hf5] <= 32'he210ee4f ;
    mem[8'hf6] <= 32'h390746d8 ;
    mem[8'hf7] <= 32'h700a2155 ;
    mem[8'hf8] <= 32'hca000d47 ;
    mem[8'hf9] <= 32'h830d6aca ;
    mem[8'hfa] <= 32'h581ac25d ;
    mem[8'hfb] <= 32'h1117a5d0 ;
    mem[8'hfc] <= 32'heaf48ec4 ;
    mem[8'hfd] <= 32'ha3f9e949 ;
    mem[8'hfe] <= 32'h78ee41de ;
    mem[8'hff] <= 32'h31e32653 ;
end
assign mem_addr = addr[7:0];
// Output connectins
assign rdata    = mem_data;
assign mem_data = mem[mem_addr];
endmodule