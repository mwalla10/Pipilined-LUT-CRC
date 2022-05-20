module crctab_ev14
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
    mem[8'h1] <= 32'hdd0fe172 ;
    mem[8'h2] <= 32'hbededf53 ;
    mem[8'h3] <= 32'h63d13e21 ;
    mem[8'h4] <= 32'h797ca311 ;
    mem[8'h5] <= 32'ha4734263 ;
    mem[8'h6] <= 32'hc7a27c42 ;
    mem[8'h7] <= 32'h1aad9d30 ;
    mem[8'h8] <= 32'hf2f94622 ;
    mem[8'h9] <= 32'h2ff6a750 ;
    mem[8'ha] <= 32'h4c279971 ;
    mem[8'hb] <= 32'h91287803 ;
    mem[8'hc] <= 32'h8b85e533 ;
    mem[8'hd] <= 32'h568a0441 ;
    mem[8'he] <= 32'h355b3a60 ;
    mem[8'hf] <= 32'he854db12 ;
    mem[8'h10] <= 32'he13391f3 ;
    mem[8'h11] <= 32'h3c3c7081 ;
    mem[8'h12] <= 32'h5fed4ea0 ;
    mem[8'h13] <= 32'h82e2afd2 ;
    mem[8'h14] <= 32'h984f32e2 ;
    mem[8'h15] <= 32'h4540d390 ;
    mem[8'h16] <= 32'h2691edb1 ;
    mem[8'h17] <= 32'hfb9e0cc3 ;
    mem[8'h18] <= 32'h13cad7d1 ;
    mem[8'h19] <= 32'hcec536a3 ;
    mem[8'h1a] <= 32'had140882 ;
    mem[8'h1b] <= 32'h701be9f0 ;
    mem[8'h1c] <= 32'h6ab674c0 ;
    mem[8'h1d] <= 32'hb7b995b2 ;
    mem[8'h1e] <= 32'hd468ab93 ;
    mem[8'h1f] <= 32'h9674ae1 ;
    mem[8'h20] <= 32'hc6a63e51 ;
    mem[8'h21] <= 32'h1ba9df23 ;
    mem[8'h22] <= 32'h7878e102 ;
    mem[8'h23] <= 32'ha5770070 ;
    mem[8'h24] <= 32'hbfda9d40 ;
    mem[8'h25] <= 32'h62d57c32 ;
    mem[8'h26] <= 32'h1044213 ;
    mem[8'h27] <= 32'hdc0ba361 ;
    mem[8'h28] <= 32'h345f7873 ;
    mem[8'h29] <= 32'he9509901 ;
    mem[8'h2a] <= 32'h8a81a720 ;
    mem[8'h2b] <= 32'h578e4652 ;
    mem[8'h2c] <= 32'h4d23db62 ;
    mem[8'h2d] <= 32'h902c3a10 ;
    mem[8'h2e] <= 32'hf3fd0431 ;
    mem[8'h2f] <= 32'h2ef2e543 ;
    mem[8'h30] <= 32'h2795afa2 ;
    mem[8'h31] <= 32'hfa9a4ed0 ;
    mem[8'h32] <= 32'h994b70f1 ;
    mem[8'h33] <= 32'h44449183 ;
    mem[8'h34] <= 32'h5ee90cb3 ;
    mem[8'h35] <= 32'h83e6edc1 ;
    mem[8'h36] <= 32'he037d3e0 ;
    mem[8'h37] <= 32'h3d383292 ;
    mem[8'h38] <= 32'hd56ce980 ;
    mem[8'h39] <= 32'h86308f2 ;
    mem[8'h3a] <= 32'h6bb236d3 ;
    mem[8'h3b] <= 32'hb6bdd7a1 ;
    mem[8'h3c] <= 32'hac104a91 ;
    mem[8'h3d] <= 32'h711fabe3 ;
    mem[8'h3e] <= 32'h12ce95c2 ;
    mem[8'h3f] <= 32'hcfc174b0 ;
    mem[8'h40] <= 32'h898d6115 ;
    mem[8'h41] <= 32'h54828067 ;
    mem[8'h42] <= 32'h3753be46 ;
    mem[8'h43] <= 32'hea5c5f34 ;
    mem[8'h44] <= 32'hf0f1c204 ;
    mem[8'h45] <= 32'h2dfe2376 ;
    mem[8'h46] <= 32'h4e2f1d57 ;
    mem[8'h47] <= 32'h9320fc25 ;
    mem[8'h48] <= 32'h7b742737 ;
    mem[8'h49] <= 32'ha67bc645 ;
    mem[8'h4a] <= 32'hc5aaf864 ;
    mem[8'h4b] <= 32'h18a51916 ;
    mem[8'h4c] <= 32'h2088426 ;
    mem[8'h4d] <= 32'hdf076554 ;
    mem[8'h4e] <= 32'hbcd65b75 ;
    mem[8'h4f] <= 32'h61d9ba07 ;
    mem[8'h50] <= 32'h68bef0e6 ;
    mem[8'h51] <= 32'hb5b11194 ;
    mem[8'h52] <= 32'hd6602fb5 ;
    mem[8'h53] <= 32'hb6fcec7 ;
    mem[8'h54] <= 32'h11c253f7 ;
    mem[8'h55] <= 32'hcccdb285 ;
    mem[8'h56] <= 32'haf1c8ca4 ;
    mem[8'h57] <= 32'h72136dd6 ;
    mem[8'h58] <= 32'h9a47b6c4 ;
    mem[8'h59] <= 32'h474857b6 ;
    mem[8'h5a] <= 32'h24996997 ;
    mem[8'h5b] <= 32'hf99688e5 ;
    mem[8'h5c] <= 32'he33b15d5 ;
    mem[8'h5d] <= 32'h3e34f4a7 ;
    mem[8'h5e] <= 32'h5de5ca86 ;
    mem[8'h5f] <= 32'h80ea2bf4 ;
    mem[8'h60] <= 32'h4f2b5f44 ;
    mem[8'h61] <= 32'h9224be36 ;
    mem[8'h62] <= 32'hf1f58017 ;
    mem[8'h63] <= 32'h2cfa6165 ;
    mem[8'h64] <= 32'h3657fc55 ;
    mem[8'h65] <= 32'heb581d27 ;
    mem[8'h66] <= 32'h88892306 ;
    mem[8'h67] <= 32'h5586c274 ;
    mem[8'h68] <= 32'hbdd21966 ;
    mem[8'h69] <= 32'h60ddf814 ;
    mem[8'h6a] <= 32'h30cc635 ;
    mem[8'h6b] <= 32'hde032747 ;
    mem[8'h6c] <= 32'hc4aeba77 ;
    mem[8'h6d] <= 32'h19a15b05 ;
    mem[8'h6e] <= 32'h7a706524 ;
    mem[8'h6f] <= 32'ha77f8456 ;
    mem[8'h70] <= 32'hae18ceb7 ;
    mem[8'h71] <= 32'h73172fc5 ;
    mem[8'h72] <= 32'h10c611e4 ;
    mem[8'h73] <= 32'hcdc9f096 ;
    mem[8'h74] <= 32'hd7646da6 ;
    mem[8'h75] <= 32'ha6b8cd4 ;
    mem[8'h76] <= 32'h69bab2f5 ;
    mem[8'h77] <= 32'hb4b55387 ;
    mem[8'h78] <= 32'h5ce18895 ;
    mem[8'h79] <= 32'h81ee69e7 ;
    mem[8'h7a] <= 32'he23f57c6 ;
    mem[8'h7b] <= 32'h3f30b6b4 ;
    mem[8'h7c] <= 32'h259d2b84 ;
    mem[8'h7d] <= 32'hf892caf6 ;
    mem[8'h7e] <= 32'h9b43f4d7 ;
    mem[8'h7f] <= 32'h464c15a5 ;
    mem[8'h80] <= 32'h17dbdf9d ;
    mem[8'h81] <= 32'hcad43eef ;
    mem[8'h82] <= 32'ha90500ce ;
    mem[8'h83] <= 32'h740ae1bc ;
    mem[8'h84] <= 32'h6ea77c8c ;
    mem[8'h85] <= 32'hb3a89dfe ;
    mem[8'h86] <= 32'hd079a3df ;
    mem[8'h87] <= 32'hd7642ad ;
    mem[8'h88] <= 32'he52299bf ;
    mem[8'h89] <= 32'h382d78cd ;
    mem[8'h8a] <= 32'h5bfc46ec ;
    mem[8'h8b] <= 32'h86f3a79e ;
    mem[8'h8c] <= 32'h9c5e3aae ;
    mem[8'h8d] <= 32'h4151dbdc ;
    mem[8'h8e] <= 32'h2280e5fd ;
    mem[8'h8f] <= 32'hff8f048f ;
    mem[8'h90] <= 32'hf6e84e6e ;
    mem[8'h91] <= 32'h2be7af1c ;
    mem[8'h92] <= 32'h4836913d ;
    mem[8'h93] <= 32'h9539704f ;
    mem[8'h94] <= 32'h8f94ed7f ;
    mem[8'h95] <= 32'h529b0c0d ;
    mem[8'h96] <= 32'h314a322c ;
    mem[8'h97] <= 32'hec45d35e ;
    mem[8'h98] <= 32'h411084c ;
    mem[8'h99] <= 32'hd91ee93e ;
    mem[8'h9a] <= 32'hbacfd71f ;
    mem[8'h9b] <= 32'h67c0366d ;
    mem[8'h9c] <= 32'h7d6dab5d ;
    mem[8'h9d] <= 32'ha0624a2f ;
    mem[8'h9e] <= 32'hc3b3740e ;
    mem[8'h9f] <= 32'h1ebc957c ;
    mem[8'ha0] <= 32'hd17de1cc ;
    mem[8'ha1] <= 32'hc7200be ;
    mem[8'ha2] <= 32'h6fa33e9f ;
    mem[8'ha3] <= 32'hb2acdfed ;
    mem[8'ha4] <= 32'ha80142dd ;
    mem[8'ha5] <= 32'h750ea3af ;
    mem[8'ha6] <= 32'h16df9d8e ;
    mem[8'ha7] <= 32'hcbd07cfc ;
    mem[8'ha8] <= 32'h2384a7ee ;
    mem[8'ha9] <= 32'hfe8b469c ;
    mem[8'haa] <= 32'h9d5a78bd ;
    mem[8'hab] <= 32'h405599cf ;
    mem[8'hac] <= 32'h5af804ff ;
    mem[8'had] <= 32'h87f7e58d ;
    mem[8'hae] <= 32'he426dbac ;
    mem[8'haf] <= 32'h39293ade ;
    mem[8'hb0] <= 32'h304e703f ;
    mem[8'hb1] <= 32'hed41914d ;
    mem[8'hb2] <= 32'h8e90af6c ;
    mem[8'hb3] <= 32'h539f4e1e ;
    mem[8'hb4] <= 32'h4932d32e ;
    mem[8'hb5] <= 32'h943d325c ;
    mem[8'hb6] <= 32'hf7ec0c7d ;
    mem[8'hb7] <= 32'h2ae3ed0f ;
    mem[8'hb8] <= 32'hc2b7361d ;
    mem[8'hb9] <= 32'h1fb8d76f ;
    mem[8'hba] <= 32'h7c69e94e ;
    mem[8'hbb] <= 32'ha166083c ;
    mem[8'hbc] <= 32'hbbcb950c ;
    mem[8'hbd] <= 32'h66c4747e ;
    mem[8'hbe] <= 32'h5154a5f ;
    mem[8'hbf] <= 32'hd81aab2d ;
    mem[8'hc0] <= 32'h9e56be88 ;
    mem[8'hc1] <= 32'h43595ffa ;
    mem[8'hc2] <= 32'h208861db ;
    mem[8'hc3] <= 32'hfd8780a9 ;
    mem[8'hc4] <= 32'he72a1d99 ;
    mem[8'hc5] <= 32'h3a25fceb ;
    mem[8'hc6] <= 32'h59f4c2ca ;
    mem[8'hc7] <= 32'h84fb23b8 ;
    mem[8'hc8] <= 32'h6caff8aa ;
    mem[8'hc9] <= 32'hb1a019d8 ;
    mem[8'hca] <= 32'hd27127f9 ;
    mem[8'hcb] <= 32'hf7ec68b ;
    mem[8'hcc] <= 32'h15d35bbb ;
    mem[8'hcd] <= 32'hc8dcbac9 ;
    mem[8'hce] <= 32'hab0d84e8 ;
    mem[8'hcf] <= 32'h7602659a ;
    mem[8'hd0] <= 32'h7f652f7b ;
    mem[8'hd1] <= 32'ha26ace09 ;
    mem[8'hd2] <= 32'hc1bbf028 ;
    mem[8'hd3] <= 32'h1cb4115a ;
    mem[8'hd4] <= 32'h6198c6a ;
    mem[8'hd5] <= 32'hdb166d18 ;
    mem[8'hd6] <= 32'hb8c75339 ;
    mem[8'hd7] <= 32'h65c8b24b ;
    mem[8'hd8] <= 32'h8d9c6959 ;
    mem[8'hd9] <= 32'h5093882b ;
    mem[8'hda] <= 32'h3342b60a ;
    mem[8'hdb] <= 32'hee4d5778 ;
    mem[8'hdc] <= 32'hf4e0ca48 ;
    mem[8'hdd] <= 32'h29ef2b3a ;
    mem[8'hde] <= 32'h4a3e151b ;
    mem[8'hdf] <= 32'h9731f469 ;
    mem[8'he0] <= 32'h58f080d9 ;
    mem[8'he1] <= 32'h85ff61ab ;
    mem[8'he2] <= 32'he62e5f8a ;
    mem[8'he3] <= 32'h3b21bef8 ;
    mem[8'he4] <= 32'h218c23c8 ;
    mem[8'he5] <= 32'hfc83c2ba ;
    mem[8'he6] <= 32'h9f52fc9b ;
    mem[8'he7] <= 32'h425d1de9 ;
    mem[8'he8] <= 32'haa09c6fb ;
    mem[8'he9] <= 32'h77062789 ;
    mem[8'hea] <= 32'h14d719a8 ;
    mem[8'heb] <= 32'hc9d8f8da ;
    mem[8'hec] <= 32'hd37565ea ;
    mem[8'hed] <= 32'he7a8498 ;
    mem[8'hee] <= 32'h6dabbab9 ;
    mem[8'hef] <= 32'hb0a45bcb ;
    mem[8'hf0] <= 32'hb9c3112a ;
    mem[8'hf1] <= 32'h64ccf058 ;
    mem[8'hf2] <= 32'h71dce79 ;
    mem[8'hf3] <= 32'hda122f0b ;
    mem[8'hf4] <= 32'hc0bfb23b ;
    mem[8'hf5] <= 32'h1db05349 ;
    mem[8'hf6] <= 32'h7e616d68 ;
    mem[8'hf7] <= 32'ha36e8c1a ;
    mem[8'hf8] <= 32'h4b3a5708 ;
    mem[8'hf9] <= 32'h9635b67a ;
    mem[8'hfa] <= 32'hf5e4885b ;
    mem[8'hfb] <= 32'h28eb6929 ;
    mem[8'hfc] <= 32'h3246f419 ;
    mem[8'hfd] <= 32'hef49156b ;
    mem[8'hfe] <= 32'h8c982b4a ;
    mem[8'hff] <= 32'h5197ca38 ;
end
assign mem_addr = addr[7:0];
// Output connectins
assign rdata    = mem_data;
assign mem_data = mem[mem_addr];
endmodule
