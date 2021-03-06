module crctab_ev23
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
    mem[8'h1] <= 32'h56af9db2 ;
    mem[8'h2] <= 32'had5f3b64 ;
    mem[8'h3] <= 32'hfbf0a6d6 ;
    mem[8'h4] <= 32'h5e7f6b7f ;
    mem[8'h5] <= 32'h8d0f6cd ;
    mem[8'h6] <= 32'hf320501b ;
    mem[8'h7] <= 32'ha58fcda9 ;
    mem[8'h8] <= 32'hbcfed6fe ;
    mem[8'h9] <= 32'hea514b4c ;
    mem[8'ha] <= 32'h11a1ed9a ;
    mem[8'hb] <= 32'h470e7028 ;
    mem[8'hc] <= 32'he281bd81 ;
    mem[8'hd] <= 32'hb42e2033 ;
    mem[8'he] <= 32'h4fde86e5 ;
    mem[8'hf] <= 32'h19711b57 ;
    mem[8'h10] <= 32'h7d3cb04b ;
    mem[8'h11] <= 32'h2b932df9 ;
    mem[8'h12] <= 32'hd0638b2f ;
    mem[8'h13] <= 32'h86cc169d ;
    mem[8'h14] <= 32'h2343db34 ;
    mem[8'h15] <= 32'h75ec4686 ;
    mem[8'h16] <= 32'h8e1ce050 ;
    mem[8'h17] <= 32'hd8b37de2 ;
    mem[8'h18] <= 32'hc1c266b5 ;
    mem[8'h19] <= 32'h976dfb07 ;
    mem[8'h1a] <= 32'h6c9d5dd1 ;
    mem[8'h1b] <= 32'h3a32c063 ;
    mem[8'h1c] <= 32'h9fbd0dca ;
    mem[8'h1d] <= 32'hc9129078 ;
    mem[8'h1e] <= 32'h32e236ae ;
    mem[8'h1f] <= 32'h644dab1c ;
    mem[8'h20] <= 32'hfa796096 ;
    mem[8'h21] <= 32'hacd6fd24 ;
    mem[8'h22] <= 32'h57265bf2 ;
    mem[8'h23] <= 32'h189c640 ;
    mem[8'h24] <= 32'ha4060be9 ;
    mem[8'h25] <= 32'hf2a9965b ;
    mem[8'h26] <= 32'h959308d ;
    mem[8'h27] <= 32'h5ff6ad3f ;
    mem[8'h28] <= 32'h4687b668 ;
    mem[8'h29] <= 32'h10282bda ;
    mem[8'h2a] <= 32'hebd88d0c ;
    mem[8'h2b] <= 32'hbd7710be ;
    mem[8'h2c] <= 32'h18f8dd17 ;
    mem[8'h2d] <= 32'h4e5740a5 ;
    mem[8'h2e] <= 32'hb5a7e673 ;
    mem[8'h2f] <= 32'he3087bc1 ;
    mem[8'h30] <= 32'h8745d0dd ;
    mem[8'h31] <= 32'hd1ea4d6f ;
    mem[8'h32] <= 32'h2a1aebb9 ;
    mem[8'h33] <= 32'h7cb5760b ;
    mem[8'h34] <= 32'hd93abba2 ;
    mem[8'h35] <= 32'h8f952610 ;
    mem[8'h36] <= 32'h746580c6 ;
    mem[8'h37] <= 32'h22ca1d74 ;
    mem[8'h38] <= 32'h3bbb0623 ;
    mem[8'h39] <= 32'h6d149b91 ;
    mem[8'h3a] <= 32'h96e43d47 ;
    mem[8'h3b] <= 32'hc04ba0f5 ;
    mem[8'h3c] <= 32'h65c46d5c ;
    mem[8'h3d] <= 32'h336bf0ee ;
    mem[8'h3e] <= 32'hc89b5638 ;
    mem[8'h3f] <= 32'h9e34cb8a ;
    mem[8'h40] <= 32'hf033dc9b ;
    mem[8'h41] <= 32'ha69c4129 ;
    mem[8'h42] <= 32'h5d6ce7ff ;
    mem[8'h43] <= 32'hbc37a4d ;
    mem[8'h44] <= 32'hae4cb7e4 ;
    mem[8'h45] <= 32'hf8e32a56 ;
    mem[8'h46] <= 32'h3138c80 ;
    mem[8'h47] <= 32'h55bc1132 ;
    mem[8'h48] <= 32'h4ccd0a65 ;
    mem[8'h49] <= 32'h1a6297d7 ;
    mem[8'h4a] <= 32'he1923101 ;
    mem[8'h4b] <= 32'hb73dacb3 ;
    mem[8'h4c] <= 32'h12b2611a ;
    mem[8'h4d] <= 32'h441dfca8 ;
    mem[8'h4e] <= 32'hbfed5a7e ;
    mem[8'h4f] <= 32'he942c7cc ;
    mem[8'h50] <= 32'h8d0f6cd0 ;
    mem[8'h51] <= 32'hdba0f162 ;
    mem[8'h52] <= 32'h205057b4 ;
    mem[8'h53] <= 32'h76ffca06 ;
    mem[8'h54] <= 32'hd37007af ;
    mem[8'h55] <= 32'h85df9a1d ;
    mem[8'h56] <= 32'h7e2f3ccb ;
    mem[8'h57] <= 32'h2880a179 ;
    mem[8'h58] <= 32'h31f1ba2e ;
    mem[8'h59] <= 32'h675e279c ;
    mem[8'h5a] <= 32'h9cae814a ;
    mem[8'h5b] <= 32'hca011cf8 ;
    mem[8'h5c] <= 32'h6f8ed151 ;
    mem[8'h5d] <= 32'h39214ce3 ;
    mem[8'h5e] <= 32'hc2d1ea35 ;
    mem[8'h5f] <= 32'h947e7787 ;
    mem[8'h60] <= 32'ha4abc0d ;
    mem[8'h61] <= 32'h5ce521bf ;
    mem[8'h62] <= 32'ha7158769 ;
    mem[8'h63] <= 32'hf1ba1adb ;
    mem[8'h64] <= 32'h5435d772 ;
    mem[8'h65] <= 32'h29a4ac0 ;
    mem[8'h66] <= 32'hf96aec16 ;
    mem[8'h67] <= 32'hafc571a4 ;
    mem[8'h68] <= 32'hb6b46af3 ;
    mem[8'h69] <= 32'he01bf741 ;
    mem[8'h6a] <= 32'h1beb5197 ;
    mem[8'h6b] <= 32'h4d44cc25 ;
    mem[8'h6c] <= 32'he8cb018c ;
    mem[8'h6d] <= 32'hbe649c3e ;
    mem[8'h6e] <= 32'h45943ae8 ;
    mem[8'h6f] <= 32'h133ba75a ;
    mem[8'h70] <= 32'h77760c46 ;
    mem[8'h71] <= 32'h21d991f4 ;
    mem[8'h72] <= 32'hda293722 ;
    mem[8'h73] <= 32'h8c86aa90 ;
    mem[8'h74] <= 32'h29096739 ;
    mem[8'h75] <= 32'h7fa6fa8b ;
    mem[8'h76] <= 32'h84565c5d ;
    mem[8'h77] <= 32'hd2f9c1ef ;
    mem[8'h78] <= 32'hcb88dab8 ;
    mem[8'h79] <= 32'h9d27470a ;
    mem[8'h7a] <= 32'h66d7e1dc ;
    mem[8'h7b] <= 32'h30787c6e ;
    mem[8'h7c] <= 32'h95f7b1c7 ;
    mem[8'h7d] <= 32'hc3582c75 ;
    mem[8'h7e] <= 32'h38a88aa3 ;
    mem[8'h7f] <= 32'h6e071711 ;
    mem[8'h80] <= 32'he4a6a481 ;
    mem[8'h81] <= 32'hb2093933 ;
    mem[8'h82] <= 32'h49f99fe5 ;
    mem[8'h83] <= 32'h1f560257 ;
    mem[8'h84] <= 32'hbad9cffe ;
    mem[8'h85] <= 32'hec76524c ;
    mem[8'h86] <= 32'h1786f49a ;
    mem[8'h87] <= 32'h41296928 ;
    mem[8'h88] <= 32'h5858727f ;
    mem[8'h89] <= 32'hef7efcd ;
    mem[8'h8a] <= 32'hf507491b ;
    mem[8'h8b] <= 32'ha3a8d4a9 ;
    mem[8'h8c] <= 32'h6271900 ;
    mem[8'h8d] <= 32'h508884b2 ;
    mem[8'h8e] <= 32'hab782264 ;
    mem[8'h8f] <= 32'hfdd7bfd6 ;
    mem[8'h90] <= 32'h999a14ca ;
    mem[8'h91] <= 32'hcf358978 ;
    mem[8'h92] <= 32'h34c52fae ;
    mem[8'h93] <= 32'h626ab21c ;
    mem[8'h94] <= 32'hc7e57fb5 ;
    mem[8'h95] <= 32'h914ae207 ;
    mem[8'h96] <= 32'h6aba44d1 ;
    mem[8'h97] <= 32'h3c15d963 ;
    mem[8'h98] <= 32'h2564c234 ;
    mem[8'h99] <= 32'h73cb5f86 ;
    mem[8'h9a] <= 32'h883bf950 ;
    mem[8'h9b] <= 32'hde9464e2 ;
    mem[8'h9c] <= 32'h7b1ba94b ;
    mem[8'h9d] <= 32'h2db434f9 ;
    mem[8'h9e] <= 32'hd644922f ;
    mem[8'h9f] <= 32'h80eb0f9d ;
    mem[8'ha0] <= 32'h1edfc417 ;
    mem[8'ha1] <= 32'h487059a5 ;
    mem[8'ha2] <= 32'hb380ff73 ;
    mem[8'ha3] <= 32'he52f62c1 ;
    mem[8'ha4] <= 32'h40a0af68 ;
    mem[8'ha5] <= 32'h160f32da ;
    mem[8'ha6] <= 32'hedff940c ;
    mem[8'ha7] <= 32'hbb5009be ;
    mem[8'ha8] <= 32'ha22112e9 ;
    mem[8'ha9] <= 32'hf48e8f5b ;
    mem[8'haa] <= 32'hf7e298d ;
    mem[8'hab] <= 32'h59d1b43f ;
    mem[8'hac] <= 32'hfc5e7996 ;
    mem[8'had] <= 32'haaf1e424 ;
    mem[8'hae] <= 32'h510142f2 ;
    mem[8'haf] <= 32'h7aedf40 ;
    mem[8'hb0] <= 32'h63e3745c ;
    mem[8'hb1] <= 32'h354ce9ee ;
    mem[8'hb2] <= 32'hcebc4f38 ;
    mem[8'hb3] <= 32'h9813d28a ;
    mem[8'hb4] <= 32'h3d9c1f23 ;
    mem[8'hb5] <= 32'h6b338291 ;
    mem[8'hb6] <= 32'h90c32447 ;
    mem[8'hb7] <= 32'hc66cb9f5 ;
    mem[8'hb8] <= 32'hdf1da2a2 ;
    mem[8'hb9] <= 32'h89b23f10 ;
    mem[8'hba] <= 32'h724299c6 ;
    mem[8'hbb] <= 32'h24ed0474 ;
    mem[8'hbc] <= 32'h8162c9dd ;
    mem[8'hbd] <= 32'hd7cd546f ;
    mem[8'hbe] <= 32'h2c3df2b9 ;
    mem[8'hbf] <= 32'h7a926f0b ;
    mem[8'hc0] <= 32'h1495781a ;
    mem[8'hc1] <= 32'h423ae5a8 ;
    mem[8'hc2] <= 32'hb9ca437e ;
    mem[8'hc3] <= 32'hef65decc ;
    mem[8'hc4] <= 32'h4aea1365 ;
    mem[8'hc5] <= 32'h1c458ed7 ;
    mem[8'hc6] <= 32'he7b52801 ;
    mem[8'hc7] <= 32'hb11ab5b3 ;
    mem[8'hc8] <= 32'ha86baee4 ;
    mem[8'hc9] <= 32'hfec43356 ;
    mem[8'hca] <= 32'h5349580 ;
    mem[8'hcb] <= 32'h539b0832 ;
    mem[8'hcc] <= 32'hf614c59b ;
    mem[8'hcd] <= 32'ha0bb5829 ;
    mem[8'hce] <= 32'h5b4bfeff ;
    mem[8'hcf] <= 32'hde4634d ;
    mem[8'hd0] <= 32'h69a9c851 ;
    mem[8'hd1] <= 32'h3f0655e3 ;
    mem[8'hd2] <= 32'hc4f6f335 ;
    mem[8'hd3] <= 32'h92596e87 ;
    mem[8'hd4] <= 32'h37d6a32e ;
    mem[8'hd5] <= 32'h61793e9c ;
    mem[8'hd6] <= 32'h9a89984a ;
    mem[8'hd7] <= 32'hcc2605f8 ;
    mem[8'hd8] <= 32'hd5571eaf ;
    mem[8'hd9] <= 32'h83f8831d ;
    mem[8'hda] <= 32'h780825cb ;
    mem[8'hdb] <= 32'h2ea7b879 ;
    mem[8'hdc] <= 32'h8b2875d0 ;
    mem[8'hdd] <= 32'hdd87e862 ;
    mem[8'hde] <= 32'h26774eb4 ;
    mem[8'hdf] <= 32'h70d8d306 ;
    mem[8'he0] <= 32'heeec188c ;
    mem[8'he1] <= 32'hb843853e ;
    mem[8'he2] <= 32'h43b323e8 ;
    mem[8'he3] <= 32'h151cbe5a ;
    mem[8'he4] <= 32'hb09373f3 ;
    mem[8'he5] <= 32'he63cee41 ;
    mem[8'he6] <= 32'h1dcc4897 ;
    mem[8'he7] <= 32'h4b63d525 ;
    mem[8'he8] <= 32'h5212ce72 ;
    mem[8'he9] <= 32'h4bd53c0 ;
    mem[8'hea] <= 32'hff4df516 ;
    mem[8'heb] <= 32'ha9e268a4 ;
    mem[8'hec] <= 32'hc6da50d ;
    mem[8'hed] <= 32'h5ac238bf ;
    mem[8'hee] <= 32'ha1329e69 ;
    mem[8'hef] <= 32'hf79d03db ;
    mem[8'hf0] <= 32'h93d0a8c7 ;
    mem[8'hf1] <= 32'hc57f3575 ;
    mem[8'hf2] <= 32'h3e8f93a3 ;
    mem[8'hf3] <= 32'h68200e11 ;
    mem[8'hf4] <= 32'hcdafc3b8 ;
    mem[8'hf5] <= 32'h9b005e0a ;
    mem[8'hf6] <= 32'h60f0f8dc ;
    mem[8'hf7] <= 32'h365f656e ;
    mem[8'hf8] <= 32'h2f2e7e39 ;
    mem[8'hf9] <= 32'h7981e38b ;
    mem[8'hfa] <= 32'h8271455d ;
    mem[8'hfb] <= 32'hd4ded8ef ;
    mem[8'hfc] <= 32'h71511546 ;
    mem[8'hfd] <= 32'h27fe88f4 ;
    mem[8'hfe] <= 32'hdc0e2e22 ;
    mem[8'hff] <= 32'h8aa1b390 ;
end
assign mem_addr = addr[7:0];
// Output connectins
assign rdata    = mem_data;
assign mem_data = mem[mem_addr];
endmodule
