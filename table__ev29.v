module crctab_ev29
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
    mem[8'h1] <= 32'h4937c18c ;
    mem[8'h2] <= 32'h926f8318 ;
    mem[8'h3] <= 32'hdb584294 ;
    mem[8'h4] <= 32'h201e1b87 ;
    mem[8'h5] <= 32'h6929da0b ;
    mem[8'h6] <= 32'hb271989f ;
    mem[8'h7] <= 32'hfb465913 ;
    mem[8'h8] <= 32'h403c370e ;
    mem[8'h9] <= 32'h90bf682 ;
    mem[8'ha] <= 32'hd253b416 ;
    mem[8'hb] <= 32'h9b64759a ;
    mem[8'hc] <= 32'h60222c89 ;
    mem[8'hd] <= 32'h2915ed05 ;
    mem[8'he] <= 32'hf24daf91 ;
    mem[8'hf] <= 32'hbb7a6e1d ;
    mem[8'h10] <= 32'h80786e1c ;
    mem[8'h11] <= 32'hc94faf90 ;
    mem[8'h12] <= 32'h1217ed04 ;
    mem[8'h13] <= 32'h5b202c88 ;
    mem[8'h14] <= 32'ha066759b ;
    mem[8'h15] <= 32'he951b417 ;
    mem[8'h16] <= 32'h3209f683 ;
    mem[8'h17] <= 32'h7b3e370f ;
    mem[8'h18] <= 32'hc0445912 ;
    mem[8'h19] <= 32'h8973989e ;
    mem[8'h1a] <= 32'h522bda0a ;
    mem[8'h1b] <= 32'h1b1c1b86 ;
    mem[8'h1c] <= 32'he05a4295 ;
    mem[8'h1d] <= 32'ha96d8319 ;
    mem[8'h1e] <= 32'h7235c18d ;
    mem[8'h1f] <= 32'h3b020001 ;
    mem[8'h20] <= 32'h431c18f ;
    mem[8'h21] <= 32'h4d060003 ;
    mem[8'h22] <= 32'h965e4297 ;
    mem[8'h23] <= 32'hdf69831b ;
    mem[8'h24] <= 32'h242fda08 ;
    mem[8'h25] <= 32'h6d181b84 ;
    mem[8'h26] <= 32'hb6405910 ;
    mem[8'h27] <= 32'hff77989c ;
    mem[8'h28] <= 32'h440df681 ;
    mem[8'h29] <= 32'hd3a370d ;
    mem[8'h2a] <= 32'hd6627599 ;
    mem[8'h2b] <= 32'h9f55b415 ;
    mem[8'h2c] <= 32'h6413ed06 ;
    mem[8'h2d] <= 32'h2d242c8a ;
    mem[8'h2e] <= 32'hf67c6e1e ;
    mem[8'h2f] <= 32'hbf4baf92 ;
    mem[8'h30] <= 32'h8449af93 ;
    mem[8'h31] <= 32'hcd7e6e1f ;
    mem[8'h32] <= 32'h16262c8b ;
    mem[8'h33] <= 32'h5f11ed07 ;
    mem[8'h34] <= 32'ha457b414 ;
    mem[8'h35] <= 32'hed607598 ;
    mem[8'h36] <= 32'h3638370c ;
    mem[8'h37] <= 32'h7f0ff680 ;
    mem[8'h38] <= 32'hc475989d ;
    mem[8'h39] <= 32'h8d425911 ;
    mem[8'h3a] <= 32'h561a1b85 ;
    mem[8'h3b] <= 32'h1f2dda09 ;
    mem[8'h3c] <= 32'he46b831a ;
    mem[8'h3d] <= 32'had5c4296 ;
    mem[8'h3e] <= 32'h76040002 ;
    mem[8'h3f] <= 32'h3f33c18e ;
    mem[8'h40] <= 32'h863831e ;
    mem[8'h41] <= 32'h41544292 ;
    mem[8'h42] <= 32'h9a0c0006 ;
    mem[8'h43] <= 32'hd33bc18a ;
    mem[8'h44] <= 32'h287d9899 ;
    mem[8'h45] <= 32'h614a5915 ;
    mem[8'h46] <= 32'hba121b81 ;
    mem[8'h47] <= 32'hf325da0d ;
    mem[8'h48] <= 32'h485fb410 ;
    mem[8'h49] <= 32'h168759c ;
    mem[8'h4a] <= 32'hda303708 ;
    mem[8'h4b] <= 32'h9307f684 ;
    mem[8'h4c] <= 32'h6841af97 ;
    mem[8'h4d] <= 32'h21766e1b ;
    mem[8'h4e] <= 32'hfa2e2c8f ;
    mem[8'h4f] <= 32'hb319ed03 ;
    mem[8'h50] <= 32'h881bed02 ;
    mem[8'h51] <= 32'hc12c2c8e ;
    mem[8'h52] <= 32'h1a746e1a ;
    mem[8'h53] <= 32'h5343af96 ;
    mem[8'h54] <= 32'ha805f685 ;
    mem[8'h55] <= 32'he1323709 ;
    mem[8'h56] <= 32'h3a6a759d ;
    mem[8'h57] <= 32'h735db411 ;
    mem[8'h58] <= 32'hc827da0c ;
    mem[8'h59] <= 32'h81101b80 ;
    mem[8'h5a] <= 32'h5a485914 ;
    mem[8'h5b] <= 32'h137f9898 ;
    mem[8'h5c] <= 32'he839c18b ;
    mem[8'h5d] <= 32'ha10e0007 ;
    mem[8'h5e] <= 32'h7a564293 ;
    mem[8'h5f] <= 32'h3361831f ;
    mem[8'h60] <= 32'hc524291 ;
    mem[8'h61] <= 32'h4565831d ;
    mem[8'h62] <= 32'h9e3dc189 ;
    mem[8'h63] <= 32'hd70a0005 ;
    mem[8'h64] <= 32'h2c4c5916 ;
    mem[8'h65] <= 32'h657b989a ;
    mem[8'h66] <= 32'hbe23da0e ;
    mem[8'h67] <= 32'hf7141b82 ;
    mem[8'h68] <= 32'h4c6e759f ;
    mem[8'h69] <= 32'h559b413 ;
    mem[8'h6a] <= 32'hde01f687 ;
    mem[8'h6b] <= 32'h9736370b ;
    mem[8'h6c] <= 32'h6c706e18 ;
    mem[8'h6d] <= 32'h2547af94 ;
    mem[8'h6e] <= 32'hfe1fed00 ;
    mem[8'h6f] <= 32'hb7282c8c ;
    mem[8'h70] <= 32'h8c2a2c8d ;
    mem[8'h71] <= 32'hc51ded01 ;
    mem[8'h72] <= 32'h1e45af95 ;
    mem[8'h73] <= 32'h57726e19 ;
    mem[8'h74] <= 32'hac34370a ;
    mem[8'h75] <= 32'he503f686 ;
    mem[8'h76] <= 32'h3e5bb412 ;
    mem[8'h77] <= 32'h776c759e ;
    mem[8'h78] <= 32'hcc161b83 ;
    mem[8'h79] <= 32'h8521da0f ;
    mem[8'h7a] <= 32'h5e79989b ;
    mem[8'h7b] <= 32'h174e5917 ;
    mem[8'h7c] <= 32'hec080004 ;
    mem[8'h7d] <= 32'ha53fc188 ;
    mem[8'h7e] <= 32'h7e67831c ;
    mem[8'h7f] <= 32'h37504290 ;
    mem[8'h80] <= 32'h10c7063c ;
    mem[8'h81] <= 32'h59f0c7b0 ;
    mem[8'h82] <= 32'h82a88524 ;
    mem[8'h83] <= 32'hcb9f44a8 ;
    mem[8'h84] <= 32'h30d91dbb ;
    mem[8'h85] <= 32'h79eedc37 ;
    mem[8'h86] <= 32'ha2b69ea3 ;
    mem[8'h87] <= 32'heb815f2f ;
    mem[8'h88] <= 32'h50fb3132 ;
    mem[8'h89] <= 32'h19ccf0be ;
    mem[8'h8a] <= 32'hc294b22a ;
    mem[8'h8b] <= 32'h8ba373a6 ;
    mem[8'h8c] <= 32'h70e52ab5 ;
    mem[8'h8d] <= 32'h39d2eb39 ;
    mem[8'h8e] <= 32'he28aa9ad ;
    mem[8'h8f] <= 32'habbd6821 ;
    mem[8'h90] <= 32'h90bf6820 ;
    mem[8'h91] <= 32'hd988a9ac ;
    mem[8'h92] <= 32'h2d0eb38 ;
    mem[8'h93] <= 32'h4be72ab4 ;
    mem[8'h94] <= 32'hb0a173a7 ;
    mem[8'h95] <= 32'hf996b22b ;
    mem[8'h96] <= 32'h22cef0bf ;
    mem[8'h97] <= 32'h6bf93133 ;
    mem[8'h98] <= 32'hd0835f2e ;
    mem[8'h99] <= 32'h99b49ea2 ;
    mem[8'h9a] <= 32'h42ecdc36 ;
    mem[8'h9b] <= 32'hbdb1dba ;
    mem[8'h9c] <= 32'hf09d44a9 ;
    mem[8'h9d] <= 32'hb9aa8525 ;
    mem[8'h9e] <= 32'h62f2c7b1 ;
    mem[8'h9f] <= 32'h2bc5063d ;
    mem[8'ha0] <= 32'h14f6c7b3 ;
    mem[8'ha1] <= 32'h5dc1063f ;
    mem[8'ha2] <= 32'h869944ab ;
    mem[8'ha3] <= 32'hcfae8527 ;
    mem[8'ha4] <= 32'h34e8dc34 ;
    mem[8'ha5] <= 32'h7ddf1db8 ;
    mem[8'ha6] <= 32'ha6875f2c ;
    mem[8'ha7] <= 32'hefb09ea0 ;
    mem[8'ha8] <= 32'h54caf0bd ;
    mem[8'ha9] <= 32'h1dfd3131 ;
    mem[8'haa] <= 32'hc6a573a5 ;
    mem[8'hab] <= 32'h8f92b229 ;
    mem[8'hac] <= 32'h74d4eb3a ;
    mem[8'had] <= 32'h3de32ab6 ;
    mem[8'hae] <= 32'he6bb6822 ;
    mem[8'haf] <= 32'haf8ca9ae ;
    mem[8'hb0] <= 32'h948ea9af ;
    mem[8'hb1] <= 32'hddb96823 ;
    mem[8'hb2] <= 32'h6e12ab7 ;
    mem[8'hb3] <= 32'h4fd6eb3b ;
    mem[8'hb4] <= 32'hb490b228 ;
    mem[8'hb5] <= 32'hfda773a4 ;
    mem[8'hb6] <= 32'h26ff3130 ;
    mem[8'hb7] <= 32'h6fc8f0bc ;
    mem[8'hb8] <= 32'hd4b29ea1 ;
    mem[8'hb9] <= 32'h9d855f2d ;
    mem[8'hba] <= 32'h46dd1db9 ;
    mem[8'hbb] <= 32'hfeadc35 ;
    mem[8'hbc] <= 32'hf4ac8526 ;
    mem[8'hbd] <= 32'hbd9b44aa ;
    mem[8'hbe] <= 32'h66c3063e ;
    mem[8'hbf] <= 32'h2ff4c7b2 ;
    mem[8'hc0] <= 32'h18a48522 ;
    mem[8'hc1] <= 32'h519344ae ;
    mem[8'hc2] <= 32'h8acb063a ;
    mem[8'hc3] <= 32'hc3fcc7b6 ;
    mem[8'hc4] <= 32'h38ba9ea5 ;
    mem[8'hc5] <= 32'h718d5f29 ;
    mem[8'hc6] <= 32'haad51dbd ;
    mem[8'hc7] <= 32'he3e2dc31 ;
    mem[8'hc8] <= 32'h5898b22c ;
    mem[8'hc9] <= 32'h11af73a0 ;
    mem[8'hca] <= 32'hcaf73134 ;
    mem[8'hcb] <= 32'h83c0f0b8 ;
    mem[8'hcc] <= 32'h7886a9ab ;
    mem[8'hcd] <= 32'h31b16827 ;
    mem[8'hce] <= 32'heae92ab3 ;
    mem[8'hcf] <= 32'ha3deeb3f ;
    mem[8'hd0] <= 32'h98dceb3e ;
    mem[8'hd1] <= 32'hd1eb2ab2 ;
    mem[8'hd2] <= 32'hab36826 ;
    mem[8'hd3] <= 32'h4384a9aa ;
    mem[8'hd4] <= 32'hb8c2f0b9 ;
    mem[8'hd5] <= 32'hf1f53135 ;
    mem[8'hd6] <= 32'h2aad73a1 ;
    mem[8'hd7] <= 32'h639ab22d ;
    mem[8'hd8] <= 32'hd8e0dc30 ;
    mem[8'hd9] <= 32'h91d71dbc ;
    mem[8'hda] <= 32'h4a8f5f28 ;
    mem[8'hdb] <= 32'h3b89ea4 ;
    mem[8'hdc] <= 32'hf8fec7b7 ;
    mem[8'hdd] <= 32'hb1c9063b ;
    mem[8'hde] <= 32'h6a9144af ;
    mem[8'hdf] <= 32'h23a68523 ;
    mem[8'he0] <= 32'h1c9544ad ;
    mem[8'he1] <= 32'h55a28521 ;
    mem[8'he2] <= 32'h8efac7b5 ;
    mem[8'he3] <= 32'hc7cd0639 ;
    mem[8'he4] <= 32'h3c8b5f2a ;
    mem[8'he5] <= 32'h75bc9ea6 ;
    mem[8'he6] <= 32'haee4dc32 ;
    mem[8'he7] <= 32'he7d31dbe ;
    mem[8'he8] <= 32'h5ca973a3 ;
    mem[8'he9] <= 32'h159eb22f ;
    mem[8'hea] <= 32'hcec6f0bb ;
    mem[8'heb] <= 32'h87f13137 ;
    mem[8'hec] <= 32'h7cb76824 ;
    mem[8'hed] <= 32'h3580a9a8 ;
    mem[8'hee] <= 32'heed8eb3c ;
    mem[8'hef] <= 32'ha7ef2ab0 ;
    mem[8'hf0] <= 32'h9ced2ab1 ;
    mem[8'hf1] <= 32'hd5daeb3d ;
    mem[8'hf2] <= 32'he82a9a9 ;
    mem[8'hf3] <= 32'h47b56825 ;
    mem[8'hf4] <= 32'hbcf33136 ;
    mem[8'hf5] <= 32'hf5c4f0ba ;
    mem[8'hf6] <= 32'h2e9cb22e ;
    mem[8'hf7] <= 32'h67ab73a2 ;
    mem[8'hf8] <= 32'hdcd11dbf ;
    mem[8'hf9] <= 32'h95e6dc33 ;
    mem[8'hfa] <= 32'h4ebe9ea7 ;
    mem[8'hfb] <= 32'h7895f2b ;
    mem[8'hfc] <= 32'hfccf0638 ;
    mem[8'hfd] <= 32'hb5f8c7b4 ;
    mem[8'hfe] <= 32'h6ea08520 ;
    mem[8'hff] <= 32'h279744ac ;
end
assign mem_addr = addr[7:0];
// Output connectins
assign rdata    = mem_data;
assign mem_data = mem[mem_addr];
endmodule
