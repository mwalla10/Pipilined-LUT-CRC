module crctab_ev10
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
    mem[8'h1] <= 32'hf9ac87ee ;
    mem[8'h2] <= 32'hf798126b ;
    mem[8'h3] <= 32'he349585 ;
    mem[8'h4] <= 32'hebf13961 ;
    mem[8'h5] <= 32'h125dbe8f ;
    mem[8'h6] <= 32'h1c692b0a ;
    mem[8'h7] <= 32'he5c5ace4 ;
    mem[8'h8] <= 32'hd3236f75 ;
    mem[8'h9] <= 32'h2a8fe89b ;
    mem[8'ha] <= 32'h24bb7d1e ;
    mem[8'hb] <= 32'hdd17faf0 ;
    mem[8'hc] <= 32'h38d25614 ;
    mem[8'hd] <= 32'hc17ed1fa ;
    mem[8'he] <= 32'hcf4a447f ;
    mem[8'hf] <= 32'h36e6c391 ;
    mem[8'h10] <= 32'ha287c35d ;
    mem[8'h11] <= 32'h5b2b44b3 ;
    mem[8'h12] <= 32'h551fd136 ;
    mem[8'h13] <= 32'hacb356d8 ;
    mem[8'h14] <= 32'h4976fa3c ;
    mem[8'h15] <= 32'hb0da7dd2 ;
    mem[8'h16] <= 32'hbeeee857 ;
    mem[8'h17] <= 32'h47426fb9 ;
    mem[8'h18] <= 32'h71a4ac28 ;
    mem[8'h19] <= 32'h88082bc6 ;
    mem[8'h1a] <= 32'h863cbe43 ;
    mem[8'h1b] <= 32'h7f9039ad ;
    mem[8'h1c] <= 32'h9a559549 ;
    mem[8'h1d] <= 32'h63f912a7 ;
    mem[8'h1e] <= 32'h6dcd8722 ;
    mem[8'h1f] <= 32'h946100cc ;
    mem[8'h20] <= 32'h41ce9b0d ;
    mem[8'h21] <= 32'hb8621ce3 ;
    mem[8'h22] <= 32'hb6568966 ;
    mem[8'h23] <= 32'h4ffa0e88 ;
    mem[8'h24] <= 32'haa3fa26c ;
    mem[8'h25] <= 32'h53932582 ;
    mem[8'h26] <= 32'h5da7b007 ;
    mem[8'h27] <= 32'ha40b37e9 ;
    mem[8'h28] <= 32'h92edf478 ;
    mem[8'h29] <= 32'h6b417396 ;
    mem[8'h2a] <= 32'h6575e613 ;
    mem[8'h2b] <= 32'h9cd961fd ;
    mem[8'h2c] <= 32'h791ccd19 ;
    mem[8'h2d] <= 32'h80b04af7 ;
    mem[8'h2e] <= 32'h8e84df72 ;
    mem[8'h2f] <= 32'h7728589c ;
    mem[8'h30] <= 32'he3495850 ;
    mem[8'h31] <= 32'h1ae5dfbe ;
    mem[8'h32] <= 32'h14d14a3b ;
    mem[8'h33] <= 32'hed7dcdd5 ;
    mem[8'h34] <= 32'h8b86131 ;
    mem[8'h35] <= 32'hf114e6df ;
    mem[8'h36] <= 32'hff20735a ;
    mem[8'h37] <= 32'h68cf4b4 ;
    mem[8'h38] <= 32'h306a3725 ;
    mem[8'h39] <= 32'hc9c6b0cb ;
    mem[8'h3a] <= 32'hc7f2254e ;
    mem[8'h3b] <= 32'h3e5ea2a0 ;
    mem[8'h3c] <= 32'hdb9b0e44 ;
    mem[8'h3d] <= 32'h223789aa ;
    mem[8'h3e] <= 32'h2c031c2f ;
    mem[8'h3f] <= 32'hd5af9bc1 ;
    mem[8'h40] <= 32'h839d361a ;
    mem[8'h41] <= 32'h7a31b1f4 ;
    mem[8'h42] <= 32'h74052471 ;
    mem[8'h43] <= 32'h8da9a39f ;
    mem[8'h44] <= 32'h686c0f7b ;
    mem[8'h45] <= 32'h91c08895 ;
    mem[8'h46] <= 32'h9ff41d10 ;
    mem[8'h47] <= 32'h66589afe ;
    mem[8'h48] <= 32'h50be596f ;
    mem[8'h49] <= 32'ha912de81 ;
    mem[8'h4a] <= 32'ha7264b04 ;
    mem[8'h4b] <= 32'h5e8accea ;
    mem[8'h4c] <= 32'hbb4f600e ;
    mem[8'h4d] <= 32'h42e3e7e0 ;
    mem[8'h4e] <= 32'h4cd77265 ;
    mem[8'h4f] <= 32'hb57bf58b ;
    mem[8'h50] <= 32'h211af547 ;
    mem[8'h51] <= 32'hd8b672a9 ;
    mem[8'h52] <= 32'hd682e72c ;
    mem[8'h53] <= 32'h2f2e60c2 ;
    mem[8'h54] <= 32'hcaebcc26 ;
    mem[8'h55] <= 32'h33474bc8 ;
    mem[8'h56] <= 32'h3d73de4d ;
    mem[8'h57] <= 32'hc4df59a3 ;
    mem[8'h58] <= 32'hf2399a32 ;
    mem[8'h59] <= 32'hb951ddc ;
    mem[8'h5a] <= 32'h5a18859 ;
    mem[8'h5b] <= 32'hfc0d0fb7 ;
    mem[8'h5c] <= 32'h19c8a353 ;
    mem[8'h5d] <= 32'he06424bd ;
    mem[8'h5e] <= 32'hee50b138 ;
    mem[8'h5f] <= 32'h17fc36d6 ;
    mem[8'h60] <= 32'hc253ad17 ;
    mem[8'h61] <= 32'h3bff2af9 ;
    mem[8'h62] <= 32'h35cbbf7c ;
    mem[8'h63] <= 32'hcc673892 ;
    mem[8'h64] <= 32'h29a29476 ;
    mem[8'h65] <= 32'hd00e1398 ;
    mem[8'h66] <= 32'hde3a861d ;
    mem[8'h67] <= 32'h279601f3 ;
    mem[8'h68] <= 32'h1170c262 ;
    mem[8'h69] <= 32'he8dc458c ;
    mem[8'h6a] <= 32'he6e8d009 ;
    mem[8'h6b] <= 32'h1f4457e7 ;
    mem[8'h6c] <= 32'hfa81fb03 ;
    mem[8'h6d] <= 32'h32d7ced ;
    mem[8'h6e] <= 32'hd19e968 ;
    mem[8'h6f] <= 32'hf4b56e86 ;
    mem[8'h70] <= 32'h60d46e4a ;
    mem[8'h71] <= 32'h9978e9a4 ;
    mem[8'h72] <= 32'h974c7c21 ;
    mem[8'h73] <= 32'h6ee0fbcf ;
    mem[8'h74] <= 32'h8b25572b ;
    mem[8'h75] <= 32'h7289d0c5 ;
    mem[8'h76] <= 32'h7cbd4540 ;
    mem[8'h77] <= 32'h8511c2ae ;
    mem[8'h78] <= 32'hb3f7013f ;
    mem[8'h79] <= 32'h4a5b86d1 ;
    mem[8'h7a] <= 32'h446f1354 ;
    mem[8'h7b] <= 32'hbdc394ba ;
    mem[8'h7c] <= 32'h5806385e ;
    mem[8'h7d] <= 32'ha1aabfb0 ;
    mem[8'h7e] <= 32'haf9e2a35 ;
    mem[8'h7f] <= 32'h5632addb ;
    mem[8'h80] <= 32'h3fb7183 ;
    mem[8'h81] <= 32'hfa57f66d ;
    mem[8'h82] <= 32'hf46363e8 ;
    mem[8'h83] <= 32'hdcfe406 ;
    mem[8'h84] <= 32'he80a48e2 ;
    mem[8'h85] <= 32'h11a6cf0c ;
    mem[8'h86] <= 32'h1f925a89 ;
    mem[8'h87] <= 32'he63edd67 ;
    mem[8'h88] <= 32'hd0d81ef6 ;
    mem[8'h89] <= 32'h29749918 ;
    mem[8'h8a] <= 32'h27400c9d ;
    mem[8'h8b] <= 32'hdeec8b73 ;
    mem[8'h8c] <= 32'h3b292797 ;
    mem[8'h8d] <= 32'hc285a079 ;
    mem[8'h8e] <= 32'hccb135fc ;
    mem[8'h8f] <= 32'h351db212 ;
    mem[8'h90] <= 32'ha17cb2de ;
    mem[8'h91] <= 32'h58d03530 ;
    mem[8'h92] <= 32'h56e4a0b5 ;
    mem[8'h93] <= 32'haf48275b ;
    mem[8'h94] <= 32'h4a8d8bbf ;
    mem[8'h95] <= 32'hb3210c51 ;
    mem[8'h96] <= 32'hbd1599d4 ;
    mem[8'h97] <= 32'h44b91e3a ;
    mem[8'h98] <= 32'h725fddab ;
    mem[8'h99] <= 32'h8bf35a45 ;
    mem[8'h9a] <= 32'h85c7cfc0 ;
    mem[8'h9b] <= 32'h7c6b482e ;
    mem[8'h9c] <= 32'h99aee4ca ;
    mem[8'h9d] <= 32'h60026324 ;
    mem[8'h9e] <= 32'h6e36f6a1 ;
    mem[8'h9f] <= 32'h979a714f ;
    mem[8'ha0] <= 32'h4235ea8e ;
    mem[8'ha1] <= 32'hbb996d60 ;
    mem[8'ha2] <= 32'hb5adf8e5 ;
    mem[8'ha3] <= 32'h4c017f0b ;
    mem[8'ha4] <= 32'ha9c4d3ef ;
    mem[8'ha5] <= 32'h50685401 ;
    mem[8'ha6] <= 32'h5e5cc184 ;
    mem[8'ha7] <= 32'ha7f0466a ;
    mem[8'ha8] <= 32'h911685fb ;
    mem[8'ha9] <= 32'h68ba0215 ;
    mem[8'haa] <= 32'h668e9790 ;
    mem[8'hab] <= 32'h9f22107e ;
    mem[8'hac] <= 32'h7ae7bc9a ;
    mem[8'had] <= 32'h834b3b74 ;
    mem[8'hae] <= 32'h8d7faef1 ;
    mem[8'haf] <= 32'h74d3291f ;
    mem[8'hb0] <= 32'he0b229d3 ;
    mem[8'hb1] <= 32'h191eae3d ;
    mem[8'hb2] <= 32'h172a3bb8 ;
    mem[8'hb3] <= 32'hee86bc56 ;
    mem[8'hb4] <= 32'hb4310b2 ;
    mem[8'hb5] <= 32'hf2ef975c ;
    mem[8'hb6] <= 32'hfcdb02d9 ;
    mem[8'hb7] <= 32'h5778537 ;
    mem[8'hb8] <= 32'h339146a6 ;
    mem[8'hb9] <= 32'hca3dc148 ;
    mem[8'hba] <= 32'hc40954cd ;
    mem[8'hbb] <= 32'h3da5d323 ;
    mem[8'hbc] <= 32'hd8607fc7 ;
    mem[8'hbd] <= 32'h21ccf829 ;
    mem[8'hbe] <= 32'h2ff86dac ;
    mem[8'hbf] <= 32'hd654ea42 ;
    mem[8'hc0] <= 32'h80664799 ;
    mem[8'hc1] <= 32'h79cac077 ;
    mem[8'hc2] <= 32'h77fe55f2 ;
    mem[8'hc3] <= 32'h8e52d21c ;
    mem[8'hc4] <= 32'h6b977ef8 ;
    mem[8'hc5] <= 32'h923bf916 ;
    mem[8'hc6] <= 32'h9c0f6c93 ;
    mem[8'hc7] <= 32'h65a3eb7d ;
    mem[8'hc8] <= 32'h534528ec ;
    mem[8'hc9] <= 32'haae9af02 ;
    mem[8'hca] <= 32'ha4dd3a87 ;
    mem[8'hcb] <= 32'h5d71bd69 ;
    mem[8'hcc] <= 32'hb8b4118d ;
    mem[8'hcd] <= 32'h41189663 ;
    mem[8'hce] <= 32'h4f2c03e6 ;
    mem[8'hcf] <= 32'hb6808408 ;
    mem[8'hd0] <= 32'h22e184c4 ;
    mem[8'hd1] <= 32'hdb4d032a ;
    mem[8'hd2] <= 32'hd57996af ;
    mem[8'hd3] <= 32'h2cd51141 ;
    mem[8'hd4] <= 32'hc910bda5 ;
    mem[8'hd5] <= 32'h30bc3a4b ;
    mem[8'hd6] <= 32'h3e88afce ;
    mem[8'hd7] <= 32'hc7242820 ;
    mem[8'hd8] <= 32'hf1c2ebb1 ;
    mem[8'hd9] <= 32'h86e6c5f ;
    mem[8'hda] <= 32'h65af9da ;
    mem[8'hdb] <= 32'hfff67e34 ;
    mem[8'hdc] <= 32'h1a33d2d0 ;
    mem[8'hdd] <= 32'he39f553e ;
    mem[8'hde] <= 32'hedabc0bb ;
    mem[8'hdf] <= 32'h14074755 ;
    mem[8'he0] <= 32'hc1a8dc94 ;
    mem[8'he1] <= 32'h38045b7a ;
    mem[8'he2] <= 32'h3630ceff ;
    mem[8'he3] <= 32'hcf9c4911 ;
    mem[8'he4] <= 32'h2a59e5f5 ;
    mem[8'he5] <= 32'hd3f5621b ;
    mem[8'he6] <= 32'hddc1f79e ;
    mem[8'he7] <= 32'h246d7070 ;
    mem[8'he8] <= 32'h128bb3e1 ;
    mem[8'he9] <= 32'heb27340f ;
    mem[8'hea] <= 32'he513a18a ;
    mem[8'heb] <= 32'h1cbf2664 ;
    mem[8'hec] <= 32'hf97a8a80 ;
    mem[8'hed] <= 32'hd60d6e ;
    mem[8'hee] <= 32'hee298eb ;
    mem[8'hef] <= 32'hf74e1f05 ;
    mem[8'hf0] <= 32'h632f1fc9 ;
    mem[8'hf1] <= 32'h9a839827 ;
    mem[8'hf2] <= 32'h94b70da2 ;
    mem[8'hf3] <= 32'h6d1b8a4c ;
    mem[8'hf4] <= 32'h88de26a8 ;
    mem[8'hf5] <= 32'h7172a146 ;
    mem[8'hf6] <= 32'h7f4634c3 ;
    mem[8'hf7] <= 32'h86eab32d ;
    mem[8'hf8] <= 32'hb00c70bc ;
    mem[8'hf9] <= 32'h49a0f752 ;
    mem[8'hfa] <= 32'h479462d7 ;
    mem[8'hfb] <= 32'hbe38e539 ;
    mem[8'hfc] <= 32'h5bfd49dd ;
    mem[8'hfd] <= 32'ha251ce33 ;
    mem[8'hfe] <= 32'hac655bb6 ;
    mem[8'hff] <= 32'h55c9dc58 ;
end
assign mem_addr = addr[7:0];
// Output connectins
assign rdata    = mem_data;
assign mem_data = mem[mem_addr];
endmodule
