module crctab_ev27
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
    mem[8'h1] <= 32'h1717f5b ;
    mem[8'h2] <= 32'h2e2feb6 ;
    mem[8'h3] <= 32'h39381ed ;
    mem[8'h4] <= 32'h5c5fd6c ;
    mem[8'h5] <= 32'h4b48237 ;
    mem[8'h6] <= 32'h72703da ;
    mem[8'h7] <= 32'h6567c81 ;
    mem[8'h8] <= 32'hb8bfad8 ;
    mem[8'h9] <= 32'hafa8583 ;
    mem[8'ha] <= 32'h969046e ;
    mem[8'hb] <= 32'h8187b35 ;
    mem[8'hc] <= 32'he4e07b4 ;
    mem[8'hd] <= 32'hf3f78ef ;
    mem[8'he] <= 32'hcacf902 ;
    mem[8'hf] <= 32'hddd8659 ;
    mem[8'h10] <= 32'h1717f5b0 ;
    mem[8'h11] <= 32'h16668aeb ;
    mem[8'h12] <= 32'h15f50b06 ;
    mem[8'h13] <= 32'h1484745d ;
    mem[8'h14] <= 32'h12d208dc ;
    mem[8'h15] <= 32'h13a37787 ;
    mem[8'h16] <= 32'h1030f66a ;
    mem[8'h17] <= 32'h11418931 ;
    mem[8'h18] <= 32'h1c9c0f68 ;
    mem[8'h19] <= 32'h1ded7033 ;
    mem[8'h1a] <= 32'h1e7ef1de ;
    mem[8'h1b] <= 32'h1f0f8e85 ;
    mem[8'h1c] <= 32'h1959f204 ;
    mem[8'h1d] <= 32'h18288d5f ;
    mem[8'h1e] <= 32'h1bbb0cb2 ;
    mem[8'h1f] <= 32'h1aca73e9 ;
    mem[8'h20] <= 32'h2e2feb60 ;
    mem[8'h21] <= 32'h2f5e943b ;
    mem[8'h22] <= 32'h2ccd15d6 ;
    mem[8'h23] <= 32'h2dbc6a8d ;
    mem[8'h24] <= 32'h2bea160c ;
    mem[8'h25] <= 32'h2a9b6957 ;
    mem[8'h26] <= 32'h2908e8ba ;
    mem[8'h27] <= 32'h287997e1 ;
    mem[8'h28] <= 32'h25a411b8 ;
    mem[8'h29] <= 32'h24d56ee3 ;
    mem[8'h2a] <= 32'h2746ef0e ;
    mem[8'h2b] <= 32'h26379055 ;
    mem[8'h2c] <= 32'h2061ecd4 ;
    mem[8'h2d] <= 32'h2110938f ;
    mem[8'h2e] <= 32'h22831262 ;
    mem[8'h2f] <= 32'h23f26d39 ;
    mem[8'h30] <= 32'h39381ed0 ;
    mem[8'h31] <= 32'h3849618b ;
    mem[8'h32] <= 32'h3bdae066 ;
    mem[8'h33] <= 32'h3aab9f3d ;
    mem[8'h34] <= 32'h3cfde3bc ;
    mem[8'h35] <= 32'h3d8c9ce7 ;
    mem[8'h36] <= 32'h3e1f1d0a ;
    mem[8'h37] <= 32'h3f6e6251 ;
    mem[8'h38] <= 32'h32b3e408 ;
    mem[8'h39] <= 32'h33c29b53 ;
    mem[8'h3a] <= 32'h30511abe ;
    mem[8'h3b] <= 32'h312065e5 ;
    mem[8'h3c] <= 32'h37761964 ;
    mem[8'h3d] <= 32'h3607663f ;
    mem[8'h3e] <= 32'h3594e7d2 ;
    mem[8'h3f] <= 32'h34e59889 ;
    mem[8'h40] <= 32'h5c5fd6c0 ;
    mem[8'h41] <= 32'h5d2ea99b ;
    mem[8'h42] <= 32'h5ebd2876 ;
    mem[8'h43] <= 32'h5fcc572d ;
    mem[8'h44] <= 32'h599a2bac ;
    mem[8'h45] <= 32'h58eb54f7 ;
    mem[8'h46] <= 32'h5b78d51a ;
    mem[8'h47] <= 32'h5a09aa41 ;
    mem[8'h48] <= 32'h57d42c18 ;
    mem[8'h49] <= 32'h56a55343 ;
    mem[8'h4a] <= 32'h5536d2ae ;
    mem[8'h4b] <= 32'h5447adf5 ;
    mem[8'h4c] <= 32'h5211d174 ;
    mem[8'h4d] <= 32'h5360ae2f ;
    mem[8'h4e] <= 32'h50f32fc2 ;
    mem[8'h4f] <= 32'h51825099 ;
    mem[8'h50] <= 32'h4b482370 ;
    mem[8'h51] <= 32'h4a395c2b ;
    mem[8'h52] <= 32'h49aaddc6 ;
    mem[8'h53] <= 32'h48dba29d ;
    mem[8'h54] <= 32'h4e8dde1c ;
    mem[8'h55] <= 32'h4ffca147 ;
    mem[8'h56] <= 32'h4c6f20aa ;
    mem[8'h57] <= 32'h4d1e5ff1 ;
    mem[8'h58] <= 32'h40c3d9a8 ;
    mem[8'h59] <= 32'h41b2a6f3 ;
    mem[8'h5a] <= 32'h4221271e ;
    mem[8'h5b] <= 32'h43505845 ;
    mem[8'h5c] <= 32'h450624c4 ;
    mem[8'h5d] <= 32'h44775b9f ;
    mem[8'h5e] <= 32'h47e4da72 ;
    mem[8'h5f] <= 32'h4695a529 ;
    mem[8'h60] <= 32'h72703da0 ;
    mem[8'h61] <= 32'h730142fb ;
    mem[8'h62] <= 32'h7092c316 ;
    mem[8'h63] <= 32'h71e3bc4d ;
    mem[8'h64] <= 32'h77b5c0cc ;
    mem[8'h65] <= 32'h76c4bf97 ;
    mem[8'h66] <= 32'h75573e7a ;
    mem[8'h67] <= 32'h74264121 ;
    mem[8'h68] <= 32'h79fbc778 ;
    mem[8'h69] <= 32'h788ab823 ;
    mem[8'h6a] <= 32'h7b1939ce ;
    mem[8'h6b] <= 32'h7a684695 ;
    mem[8'h6c] <= 32'h7c3e3a14 ;
    mem[8'h6d] <= 32'h7d4f454f ;
    mem[8'h6e] <= 32'h7edcc4a2 ;
    mem[8'h6f] <= 32'h7fadbbf9 ;
    mem[8'h70] <= 32'h6567c810 ;
    mem[8'h71] <= 32'h6416b74b ;
    mem[8'h72] <= 32'h678536a6 ;
    mem[8'h73] <= 32'h66f449fd ;
    mem[8'h74] <= 32'h60a2357c ;
    mem[8'h75] <= 32'h61d34a27 ;
    mem[8'h76] <= 32'h6240cbca ;
    mem[8'h77] <= 32'h6331b491 ;
    mem[8'h78] <= 32'h6eec32c8 ;
    mem[8'h79] <= 32'h6f9d4d93 ;
    mem[8'h7a] <= 32'h6c0ecc7e ;
    mem[8'h7b] <= 32'h6d7fb325 ;
    mem[8'h7c] <= 32'h6b29cfa4 ;
    mem[8'h7d] <= 32'h6a58b0ff ;
    mem[8'h7e] <= 32'h69cb3112 ;
    mem[8'h7f] <= 32'h68ba4e49 ;
    mem[8'h80] <= 32'hb8bfad80 ;
    mem[8'h81] <= 32'hb9ced2db ;
    mem[8'h82] <= 32'hba5d5336 ;
    mem[8'h83] <= 32'hbb2c2c6d ;
    mem[8'h84] <= 32'hbd7a50ec ;
    mem[8'h85] <= 32'hbc0b2fb7 ;
    mem[8'h86] <= 32'hbf98ae5a ;
    mem[8'h87] <= 32'hbee9d101 ;
    mem[8'h88] <= 32'hb3345758 ;
    mem[8'h89] <= 32'hb2452803 ;
    mem[8'h8a] <= 32'hb1d6a9ee ;
    mem[8'h8b] <= 32'hb0a7d6b5 ;
    mem[8'h8c] <= 32'hb6f1aa34 ;
    mem[8'h8d] <= 32'hb780d56f ;
    mem[8'h8e] <= 32'hb4135482 ;
    mem[8'h8f] <= 32'hb5622bd9 ;
    mem[8'h90] <= 32'hafa85830 ;
    mem[8'h91] <= 32'haed9276b ;
    mem[8'h92] <= 32'had4aa686 ;
    mem[8'h93] <= 32'hac3bd9dd ;
    mem[8'h94] <= 32'haa6da55c ;
    mem[8'h95] <= 32'hab1cda07 ;
    mem[8'h96] <= 32'ha88f5bea ;
    mem[8'h97] <= 32'ha9fe24b1 ;
    mem[8'h98] <= 32'ha423a2e8 ;
    mem[8'h99] <= 32'ha552ddb3 ;
    mem[8'h9a] <= 32'ha6c15c5e ;
    mem[8'h9b] <= 32'ha7b02305 ;
    mem[8'h9c] <= 32'ha1e65f84 ;
    mem[8'h9d] <= 32'ha09720df ;
    mem[8'h9e] <= 32'ha304a132 ;
    mem[8'h9f] <= 32'ha275de69 ;
    mem[8'ha0] <= 32'h969046e0 ;
    mem[8'ha1] <= 32'h97e139bb ;
    mem[8'ha2] <= 32'h9472b856 ;
    mem[8'ha3] <= 32'h9503c70d ;
    mem[8'ha4] <= 32'h9355bb8c ;
    mem[8'ha5] <= 32'h9224c4d7 ;
    mem[8'ha6] <= 32'h91b7453a ;
    mem[8'ha7] <= 32'h90c63a61 ;
    mem[8'ha8] <= 32'h9d1bbc38 ;
    mem[8'ha9] <= 32'h9c6ac363 ;
    mem[8'haa] <= 32'h9ff9428e ;
    mem[8'hab] <= 32'h9e883dd5 ;
    mem[8'hac] <= 32'h98de4154 ;
    mem[8'had] <= 32'h99af3e0f ;
    mem[8'hae] <= 32'h9a3cbfe2 ;
    mem[8'haf] <= 32'h9b4dc0b9 ;
    mem[8'hb0] <= 32'h8187b350 ;
    mem[8'hb1] <= 32'h80f6cc0b ;
    mem[8'hb2] <= 32'h83654de6 ;
    mem[8'hb3] <= 32'h821432bd ;
    mem[8'hb4] <= 32'h84424e3c ;
    mem[8'hb5] <= 32'h85333167 ;
    mem[8'hb6] <= 32'h86a0b08a ;
    mem[8'hb7] <= 32'h87d1cfd1 ;
    mem[8'hb8] <= 32'h8a0c4988 ;
    mem[8'hb9] <= 32'h8b7d36d3 ;
    mem[8'hba] <= 32'h88eeb73e ;
    mem[8'hbb] <= 32'h899fc865 ;
    mem[8'hbc] <= 32'h8fc9b4e4 ;
    mem[8'hbd] <= 32'h8eb8cbbf ;
    mem[8'hbe] <= 32'h8d2b4a52 ;
    mem[8'hbf] <= 32'h8c5a3509 ;
    mem[8'hc0] <= 32'he4e07b40 ;
    mem[8'hc1] <= 32'he591041b ;
    mem[8'hc2] <= 32'he60285f6 ;
    mem[8'hc3] <= 32'he773faad ;
    mem[8'hc4] <= 32'he125862c ;
    mem[8'hc5] <= 32'he054f977 ;
    mem[8'hc6] <= 32'he3c7789a ;
    mem[8'hc7] <= 32'he2b607c1 ;
    mem[8'hc8] <= 32'hef6b8198 ;
    mem[8'hc9] <= 32'hee1afec3 ;
    mem[8'hca] <= 32'hed897f2e ;
    mem[8'hcb] <= 32'hecf80075 ;
    mem[8'hcc] <= 32'heaae7cf4 ;
    mem[8'hcd] <= 32'hebdf03af ;
    mem[8'hce] <= 32'he84c8242 ;
    mem[8'hcf] <= 32'he93dfd19 ;
    mem[8'hd0] <= 32'hf3f78ef0 ;
    mem[8'hd1] <= 32'hf286f1ab ;
    mem[8'hd2] <= 32'hf1157046 ;
    mem[8'hd3] <= 32'hf0640f1d ;
    mem[8'hd4] <= 32'hf632739c ;
    mem[8'hd5] <= 32'hf7430cc7 ;
    mem[8'hd6] <= 32'hf4d08d2a ;
    mem[8'hd7] <= 32'hf5a1f271 ;
    mem[8'hd8] <= 32'hf87c7428 ;
    mem[8'hd9] <= 32'hf90d0b73 ;
    mem[8'hda] <= 32'hfa9e8a9e ;
    mem[8'hdb] <= 32'hfbeff5c5 ;
    mem[8'hdc] <= 32'hfdb98944 ;
    mem[8'hdd] <= 32'hfcc8f61f ;
    mem[8'hde] <= 32'hff5b77f2 ;
    mem[8'hdf] <= 32'hfe2a08a9 ;
    mem[8'he0] <= 32'hcacf9020 ;
    mem[8'he1] <= 32'hcbbeef7b ;
    mem[8'he2] <= 32'hc82d6e96 ;
    mem[8'he3] <= 32'hc95c11cd ;
    mem[8'he4] <= 32'hcf0a6d4c ;
    mem[8'he5] <= 32'hce7b1217 ;
    mem[8'he6] <= 32'hcde893fa ;
    mem[8'he7] <= 32'hcc99eca1 ;
    mem[8'he8] <= 32'hc1446af8 ;
    mem[8'he9] <= 32'hc03515a3 ;
    mem[8'hea] <= 32'hc3a6944e ;
    mem[8'heb] <= 32'hc2d7eb15 ;
    mem[8'hec] <= 32'hc4819794 ;
    mem[8'hed] <= 32'hc5f0e8cf ;
    mem[8'hee] <= 32'hc6636922 ;
    mem[8'hef] <= 32'hc7121679 ;
    mem[8'hf0] <= 32'hddd86590 ;
    mem[8'hf1] <= 32'hdca91acb ;
    mem[8'hf2] <= 32'hdf3a9b26 ;
    mem[8'hf3] <= 32'hde4be47d ;
    mem[8'hf4] <= 32'hd81d98fc ;
    mem[8'hf5] <= 32'hd96ce7a7 ;
    mem[8'hf6] <= 32'hdaff664a ;
    mem[8'hf7] <= 32'hdb8e1911 ;
    mem[8'hf8] <= 32'hd6539f48 ;
    mem[8'hf9] <= 32'hd722e013 ;
    mem[8'hfa] <= 32'hd4b161fe ;
    mem[8'hfb] <= 32'hd5c01ea5 ;
    mem[8'hfc] <= 32'hd3966224 ;
    mem[8'hfd] <= 32'hd2e71d7f ;
    mem[8'hfe] <= 32'hd1749c92 ;
    mem[8'hff] <= 32'hd005e3c9 ;
end
assign mem_addr = addr[7:0];
// Output connectins
assign rdata    = mem_data;
assign mem_data = mem[mem_addr];
endmodule
