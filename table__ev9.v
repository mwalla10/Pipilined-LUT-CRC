module crctab_ev9
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
    mem[8'h1] <= 32'h8090a067 ;
    mem[8'h2] <= 32'h5e05d79 ;
    mem[8'h3] <= 32'h8570fd1e ;
    mem[8'h4] <= 32'hbc0baf2 ;
    mem[8'h5] <= 32'h8b501a95 ;
    mem[8'h6] <= 32'he20e78b ;
    mem[8'h7] <= 32'h8eb047ec ;
    mem[8'h8] <= 32'h178175e4 ;
    mem[8'h9] <= 32'h9711d583 ;
    mem[8'ha] <= 32'h1261289d ;
    mem[8'hb] <= 32'h92f188fa ;
    mem[8'hc] <= 32'h1c41cf16 ;
    mem[8'hd] <= 32'h9cd16f71 ;
    mem[8'he] <= 32'h19a1926f ;
    mem[8'hf] <= 32'h99313208 ;
    mem[8'h10] <= 32'h2f02ebc8 ;
    mem[8'h11] <= 32'haf924baf ;
    mem[8'h12] <= 32'h2ae2b6b1 ;
    mem[8'h13] <= 32'haa7216d6 ;
    mem[8'h14] <= 32'h24c2513a ;
    mem[8'h15] <= 32'ha452f15d ;
    mem[8'h16] <= 32'h21220c43 ;
    mem[8'h17] <= 32'ha1b2ac24 ;
    mem[8'h18] <= 32'h38839e2c ;
    mem[8'h19] <= 32'hb8133e4b ;
    mem[8'h1a] <= 32'h3d63c355 ;
    mem[8'h1b] <= 32'hbdf36332 ;
    mem[8'h1c] <= 32'h334324de ;
    mem[8'h1d] <= 32'hb3d384b9 ;
    mem[8'h1e] <= 32'h36a379a7 ;
    mem[8'h1f] <= 32'hb633d9c0 ;
    mem[8'h20] <= 32'h5e05d790 ;
    mem[8'h21] <= 32'hde9577f7 ;
    mem[8'h22] <= 32'h5be58ae9 ;
    mem[8'h23] <= 32'hdb752a8e ;
    mem[8'h24] <= 32'h55c56d62 ;
    mem[8'h25] <= 32'hd555cd05 ;
    mem[8'h26] <= 32'h5025301b ;
    mem[8'h27] <= 32'hd0b5907c ;
    mem[8'h28] <= 32'h4984a274 ;
    mem[8'h29] <= 32'hc9140213 ;
    mem[8'h2a] <= 32'h4c64ff0d ;
    mem[8'h2b] <= 32'hccf45f6a ;
    mem[8'h2c] <= 32'h42441886 ;
    mem[8'h2d] <= 32'hc2d4b8e1 ;
    mem[8'h2e] <= 32'h47a445ff ;
    mem[8'h2f] <= 32'hc734e598 ;
    mem[8'h30] <= 32'h71073c58 ;
    mem[8'h31] <= 32'hf1979c3f ;
    mem[8'h32] <= 32'h74e76121 ;
    mem[8'h33] <= 32'hf477c146 ;
    mem[8'h34] <= 32'h7ac786aa ;
    mem[8'h35] <= 32'hfa5726cd ;
    mem[8'h36] <= 32'h7f27dbd3 ;
    mem[8'h37] <= 32'hffb77bb4 ;
    mem[8'h38] <= 32'h668649bc ;
    mem[8'h39] <= 32'he616e9db ;
    mem[8'h3a] <= 32'h636614c5 ;
    mem[8'h3b] <= 32'he3f6b4a2 ;
    mem[8'h3c] <= 32'h6d46f34e ;
    mem[8'h3d] <= 32'hedd65329 ;
    mem[8'h3e] <= 32'h68a6ae37 ;
    mem[8'h3f] <= 32'he8360e50 ;
    mem[8'h40] <= 32'hbc0baf20 ;
    mem[8'h41] <= 32'h3c9b0f47 ;
    mem[8'h42] <= 32'hb9ebf259 ;
    mem[8'h43] <= 32'h397b523e ;
    mem[8'h44] <= 32'hb7cb15d2 ;
    mem[8'h45] <= 32'h375bb5b5 ;
    mem[8'h46] <= 32'hb22b48ab ;
    mem[8'h47] <= 32'h32bbe8cc ;
    mem[8'h48] <= 32'hab8adac4 ;
    mem[8'h49] <= 32'h2b1a7aa3 ;
    mem[8'h4a] <= 32'hae6a87bd ;
    mem[8'h4b] <= 32'h2efa27da ;
    mem[8'h4c] <= 32'ha04a6036 ;
    mem[8'h4d] <= 32'h20dac051 ;
    mem[8'h4e] <= 32'ha5aa3d4f ;
    mem[8'h4f] <= 32'h253a9d28 ;
    mem[8'h50] <= 32'h930944e8 ;
    mem[8'h51] <= 32'h1399e48f ;
    mem[8'h52] <= 32'h96e91991 ;
    mem[8'h53] <= 32'h1679b9f6 ;
    mem[8'h54] <= 32'h98c9fe1a ;
    mem[8'h55] <= 32'h18595e7d ;
    mem[8'h56] <= 32'h9d29a363 ;
    mem[8'h57] <= 32'h1db90304 ;
    mem[8'h58] <= 32'h8488310c ;
    mem[8'h59] <= 32'h418916b ;
    mem[8'h5a] <= 32'h81686c75 ;
    mem[8'h5b] <= 32'h1f8cc12 ;
    mem[8'h5c] <= 32'h8f488bfe ;
    mem[8'h5d] <= 32'hfd82b99 ;
    mem[8'h5e] <= 32'h8aa8d687 ;
    mem[8'h5f] <= 32'ha3876e0 ;
    mem[8'h60] <= 32'he20e78b0 ;
    mem[8'h61] <= 32'h629ed8d7 ;
    mem[8'h62] <= 32'he7ee25c9 ;
    mem[8'h63] <= 32'h677e85ae ;
    mem[8'h64] <= 32'he9cec242 ;
    mem[8'h65] <= 32'h695e6225 ;
    mem[8'h66] <= 32'hec2e9f3b ;
    mem[8'h67] <= 32'h6cbe3f5c ;
    mem[8'h68] <= 32'hf58f0d54 ;
    mem[8'h69] <= 32'h751fad33 ;
    mem[8'h6a] <= 32'hf06f502d ;
    mem[8'h6b] <= 32'h70fff04a ;
    mem[8'h6c] <= 32'hfe4fb7a6 ;
    mem[8'h6d] <= 32'h7edf17c1 ;
    mem[8'h6e] <= 32'hfbafeadf ;
    mem[8'h6f] <= 32'h7b3f4ab8 ;
    mem[8'h70] <= 32'hcd0c9378 ;
    mem[8'h71] <= 32'h4d9c331f ;
    mem[8'h72] <= 32'hc8ecce01 ;
    mem[8'h73] <= 32'h487c6e66 ;
    mem[8'h74] <= 32'hc6cc298a ;
    mem[8'h75] <= 32'h465c89ed ;
    mem[8'h76] <= 32'hc32c74f3 ;
    mem[8'h77] <= 32'h43bcd494 ;
    mem[8'h78] <= 32'hda8de69c ;
    mem[8'h79] <= 32'h5a1d46fb ;
    mem[8'h7a] <= 32'hdf6dbbe5 ;
    mem[8'h7b] <= 32'h5ffd1b82 ;
    mem[8'h7c] <= 32'hd14d5c6e ;
    mem[8'h7d] <= 32'h51ddfc09 ;
    mem[8'h7e] <= 32'hd4ad0117 ;
    mem[8'h7f] <= 32'h543da170 ;
    mem[8'h80] <= 32'h7cd643f7 ;
    mem[8'h81] <= 32'hfc46e390 ;
    mem[8'h82] <= 32'h79361e8e ;
    mem[8'h83] <= 32'hf9a6bee9 ;
    mem[8'h84] <= 32'h7716f905 ;
    mem[8'h85] <= 32'hf7865962 ;
    mem[8'h86] <= 32'h72f6a47c ;
    mem[8'h87] <= 32'hf266041b ;
    mem[8'h88] <= 32'h6b573613 ;
    mem[8'h89] <= 32'hebc79674 ;
    mem[8'h8a] <= 32'h6eb76b6a ;
    mem[8'h8b] <= 32'hee27cb0d ;
    mem[8'h8c] <= 32'h60978ce1 ;
    mem[8'h8d] <= 32'he0072c86 ;
    mem[8'h8e] <= 32'h6577d198 ;
    mem[8'h8f] <= 32'he5e771ff ;
    mem[8'h90] <= 32'h53d4a83f ;
    mem[8'h91] <= 32'hd3440858 ;
    mem[8'h92] <= 32'h5634f546 ;
    mem[8'h93] <= 32'hd6a45521 ;
    mem[8'h94] <= 32'h581412cd ;
    mem[8'h95] <= 32'hd884b2aa ;
    mem[8'h96] <= 32'h5df44fb4 ;
    mem[8'h97] <= 32'hdd64efd3 ;
    mem[8'h98] <= 32'h4455dddb ;
    mem[8'h99] <= 32'hc4c57dbc ;
    mem[8'h9a] <= 32'h41b580a2 ;
    mem[8'h9b] <= 32'hc12520c5 ;
    mem[8'h9c] <= 32'h4f956729 ;
    mem[8'h9d] <= 32'hcf05c74e ;
    mem[8'h9e] <= 32'h4a753a50 ;
    mem[8'h9f] <= 32'hcae59a37 ;
    mem[8'ha0] <= 32'h22d39467 ;
    mem[8'ha1] <= 32'ha2433400 ;
    mem[8'ha2] <= 32'h2733c91e ;
    mem[8'ha3] <= 32'ha7a36979 ;
    mem[8'ha4] <= 32'h29132e95 ;
    mem[8'ha5] <= 32'ha9838ef2 ;
    mem[8'ha6] <= 32'h2cf373ec ;
    mem[8'ha7] <= 32'hac63d38b ;
    mem[8'ha8] <= 32'h3552e183 ;
    mem[8'ha9] <= 32'hb5c241e4 ;
    mem[8'haa] <= 32'h30b2bcfa ;
    mem[8'hab] <= 32'hb0221c9d ;
    mem[8'hac] <= 32'h3e925b71 ;
    mem[8'had] <= 32'hbe02fb16 ;
    mem[8'hae] <= 32'h3b720608 ;
    mem[8'haf] <= 32'hbbe2a66f ;
    mem[8'hb0] <= 32'hdd17faf ;
    mem[8'hb1] <= 32'h8d41dfc8 ;
    mem[8'hb2] <= 32'h83122d6 ;
    mem[8'hb3] <= 32'h88a182b1 ;
    mem[8'hb4] <= 32'h611c55d ;
    mem[8'hb5] <= 32'h8681653a ;
    mem[8'hb6] <= 32'h3f19824 ;
    mem[8'hb7] <= 32'h83613843 ;
    mem[8'hb8] <= 32'h1a500a4b ;
    mem[8'hb9] <= 32'h9ac0aa2c ;
    mem[8'hba] <= 32'h1fb05732 ;
    mem[8'hbb] <= 32'h9f20f755 ;
    mem[8'hbc] <= 32'h1190b0b9 ;
    mem[8'hbd] <= 32'h910010de ;
    mem[8'hbe] <= 32'h1470edc0 ;
    mem[8'hbf] <= 32'h94e04da7 ;
    mem[8'hc0] <= 32'hc0ddecd7 ;
    mem[8'hc1] <= 32'h404d4cb0 ;
    mem[8'hc2] <= 32'hc53db1ae ;
    mem[8'hc3] <= 32'h45ad11c9 ;
    mem[8'hc4] <= 32'hcb1d5625 ;
    mem[8'hc5] <= 32'h4b8df642 ;
    mem[8'hc6] <= 32'hcefd0b5c ;
    mem[8'hc7] <= 32'h4e6dab3b ;
    mem[8'hc8] <= 32'hd75c9933 ;
    mem[8'hc9] <= 32'h57cc3954 ;
    mem[8'hca] <= 32'hd2bcc44a ;
    mem[8'hcb] <= 32'h522c642d ;
    mem[8'hcc] <= 32'hdc9c23c1 ;
    mem[8'hcd] <= 32'h5c0c83a6 ;
    mem[8'hce] <= 32'hd97c7eb8 ;
    mem[8'hcf] <= 32'h59ecdedf ;
    mem[8'hd0] <= 32'hefdf071f ;
    mem[8'hd1] <= 32'h6f4fa778 ;
    mem[8'hd2] <= 32'hea3f5a66 ;
    mem[8'hd3] <= 32'h6aaffa01 ;
    mem[8'hd4] <= 32'he41fbded ;
    mem[8'hd5] <= 32'h648f1d8a ;
    mem[8'hd6] <= 32'he1ffe094 ;
    mem[8'hd7] <= 32'h616f40f3 ;
    mem[8'hd8] <= 32'hf85e72fb ;
    mem[8'hd9] <= 32'h78ced29c ;
    mem[8'hda] <= 32'hfdbe2f82 ;
    mem[8'hdb] <= 32'h7d2e8fe5 ;
    mem[8'hdc] <= 32'hf39ec809 ;
    mem[8'hdd] <= 32'h730e686e ;
    mem[8'hde] <= 32'hf67e9570 ;
    mem[8'hdf] <= 32'h76ee3517 ;
    mem[8'he0] <= 32'h9ed83b47 ;
    mem[8'he1] <= 32'h1e489b20 ;
    mem[8'he2] <= 32'h9b38663e ;
    mem[8'he3] <= 32'h1ba8c659 ;
    mem[8'he4] <= 32'h951881b5 ;
    mem[8'he5] <= 32'h158821d2 ;
    mem[8'he6] <= 32'h90f8dccc ;
    mem[8'he7] <= 32'h10687cab ;
    mem[8'he8] <= 32'h89594ea3 ;
    mem[8'he9] <= 32'h9c9eec4 ;
    mem[8'hea] <= 32'h8cb913da ;
    mem[8'heb] <= 32'hc29b3bd ;
    mem[8'hec] <= 32'h8299f451 ;
    mem[8'hed] <= 32'h2095436 ;
    mem[8'hee] <= 32'h8779a928 ;
    mem[8'hef] <= 32'h7e9094f ;
    mem[8'hf0] <= 32'hb1dad08f ;
    mem[8'hf1] <= 32'h314a70e8 ;
    mem[8'hf2] <= 32'hb43a8df6 ;
    mem[8'hf3] <= 32'h34aa2d91 ;
    mem[8'hf4] <= 32'hba1a6a7d ;
    mem[8'hf5] <= 32'h3a8aca1a ;
    mem[8'hf6] <= 32'hbffa3704 ;
    mem[8'hf7] <= 32'h3f6a9763 ;
    mem[8'hf8] <= 32'ha65ba56b ;
    mem[8'hf9] <= 32'h26cb050c ;
    mem[8'hfa] <= 32'ha3bbf812 ;
    mem[8'hfb] <= 32'h232b5875 ;
    mem[8'hfc] <= 32'had9b1f99 ;
    mem[8'hfd] <= 32'h2d0bbffe ;
    mem[8'hfe] <= 32'ha87b42e0 ;
    mem[8'hff] <= 32'h28ebe287 ;
end
assign mem_addr = addr[7:0];
// Output connectins
assign rdata    = mem_data;
assign mem_data = mem[mem_addr];
endmodule
