module crctab_ev24
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
    mem[8'h1] <= 32'hcd8c54b5 ;
    mem[8'h2] <= 32'h9fd9b4dd ;
    mem[8'h3] <= 32'h5255e068 ;
    mem[8'h4] <= 32'h3b72740d ;
    mem[8'h5] <= 32'hf6fe20b8 ;
    mem[8'h6] <= 32'ha4abc0d0 ;
    mem[8'h7] <= 32'h69279465 ;
    mem[8'h8] <= 32'h76e4e81a ;
    mem[8'h9] <= 32'hbb68bcaf ;
    mem[8'ha] <= 32'he93d5cc7 ;
    mem[8'hb] <= 32'h24b10872 ;
    mem[8'hc] <= 32'h4d969c17 ;
    mem[8'hd] <= 32'h801ac8a2 ;
    mem[8'he] <= 32'hd24f28ca ;
    mem[8'hf] <= 32'h1fc37c7f ;
    mem[8'h10] <= 32'hedc9d034 ;
    mem[8'h11] <= 32'h20458481 ;
    mem[8'h12] <= 32'h721064e9 ;
    mem[8'h13] <= 32'hbf9c305c ;
    mem[8'h14] <= 32'hd6bba439 ;
    mem[8'h15] <= 32'h1b37f08c ;
    mem[8'h16] <= 32'h496210e4 ;
    mem[8'h17] <= 32'h84ee4451 ;
    mem[8'h18] <= 32'h9b2d382e ;
    mem[8'h19] <= 32'h56a16c9b ;
    mem[8'h1a] <= 32'h4f48cf3 ;
    mem[8'h1b] <= 32'hc978d846 ;
    mem[8'h1c] <= 32'ha05f4c23 ;
    mem[8'h1d] <= 32'h6dd31896 ;
    mem[8'h1e] <= 32'h3f86f8fe ;
    mem[8'h1f] <= 32'hf20aac4b ;
    mem[8'h20] <= 32'hdf52bddf ;
    mem[8'h21] <= 32'h12dee96a ;
    mem[8'h22] <= 32'h408b0902 ;
    mem[8'h23] <= 32'h8d075db7 ;
    mem[8'h24] <= 32'he420c9d2 ;
    mem[8'h25] <= 32'h29ac9d67 ;
    mem[8'h26] <= 32'h7bf97d0f ;
    mem[8'h27] <= 32'hb67529ba ;
    mem[8'h28] <= 32'ha9b655c5 ;
    mem[8'h29] <= 32'h643a0170 ;
    mem[8'h2a] <= 32'h366fe118 ;
    mem[8'h2b] <= 32'hfbe3b5ad ;
    mem[8'h2c] <= 32'h92c421c8 ;
    mem[8'h2d] <= 32'h5f48757d ;
    mem[8'h2e] <= 32'hd1d9515 ;
    mem[8'h2f] <= 32'hc091c1a0 ;
    mem[8'h30] <= 32'h329b6deb ;
    mem[8'h31] <= 32'hff17395e ;
    mem[8'h32] <= 32'had42d936 ;
    mem[8'h33] <= 32'h60ce8d83 ;
    mem[8'h34] <= 32'h9e919e6 ;
    mem[8'h35] <= 32'hc4654d53 ;
    mem[8'h36] <= 32'h9630ad3b ;
    mem[8'h37] <= 32'h5bbcf98e ;
    mem[8'h38] <= 32'h447f85f1 ;
    mem[8'h39] <= 32'h89f3d144 ;
    mem[8'h3a] <= 32'hdba6312c ;
    mem[8'h3b] <= 32'h162a6599 ;
    mem[8'h3c] <= 32'h7f0df1fc ;
    mem[8'h3d] <= 32'hb281a549 ;
    mem[8'h3e] <= 32'he0d44521 ;
    mem[8'h3f] <= 32'h2d581194 ;
    mem[8'h40] <= 32'hba646609 ;
    mem[8'h41] <= 32'h77e832bc ;
    mem[8'h42] <= 32'h25bdd2d4 ;
    mem[8'h43] <= 32'he8318661 ;
    mem[8'h44] <= 32'h81161204 ;
    mem[8'h45] <= 32'h4c9a46b1 ;
    mem[8'h46] <= 32'h1ecfa6d9 ;
    mem[8'h47] <= 32'hd343f26c ;
    mem[8'h48] <= 32'hcc808e13 ;
    mem[8'h49] <= 32'h10cdaa6 ;
    mem[8'h4a] <= 32'h53593ace ;
    mem[8'h4b] <= 32'h9ed56e7b ;
    mem[8'h4c] <= 32'hf7f2fa1e ;
    mem[8'h4d] <= 32'h3a7eaeab ;
    mem[8'h4e] <= 32'h682b4ec3 ;
    mem[8'h4f] <= 32'ha5a71a76 ;
    mem[8'h50] <= 32'h57adb63d ;
    mem[8'h51] <= 32'h9a21e288 ;
    mem[8'h52] <= 32'hc87402e0 ;
    mem[8'h53] <= 32'h5f85655 ;
    mem[8'h54] <= 32'h6cdfc230 ;
    mem[8'h55] <= 32'ha1539685 ;
    mem[8'h56] <= 32'hf30676ed ;
    mem[8'h57] <= 32'h3e8a2258 ;
    mem[8'h58] <= 32'h21495e27 ;
    mem[8'h59] <= 32'hecc50a92 ;
    mem[8'h5a] <= 32'hbe90eafa ;
    mem[8'h5b] <= 32'h731cbe4f ;
    mem[8'h5c] <= 32'h1a3b2a2a ;
    mem[8'h5d] <= 32'hd7b77e9f ;
    mem[8'h5e] <= 32'h85e29ef7 ;
    mem[8'h5f] <= 32'h486eca42 ;
    mem[8'h60] <= 32'h6536dbd6 ;
    mem[8'h61] <= 32'ha8ba8f63 ;
    mem[8'h62] <= 32'hfaef6f0b ;
    mem[8'h63] <= 32'h37633bbe ;
    mem[8'h64] <= 32'h5e44afdb ;
    mem[8'h65] <= 32'h93c8fb6e ;
    mem[8'h66] <= 32'hc19d1b06 ;
    mem[8'h67] <= 32'hc114fb3 ;
    mem[8'h68] <= 32'h13d233cc ;
    mem[8'h69] <= 32'hde5e6779 ;
    mem[8'h6a] <= 32'h8c0b8711 ;
    mem[8'h6b] <= 32'h4187d3a4 ;
    mem[8'h6c] <= 32'h28a047c1 ;
    mem[8'h6d] <= 32'he52c1374 ;
    mem[8'h6e] <= 32'hb779f31c ;
    mem[8'h6f] <= 32'h7af5a7a9 ;
    mem[8'h70] <= 32'h88ff0be2 ;
    mem[8'h71] <= 32'h45735f57 ;
    mem[8'h72] <= 32'h1726bf3f ;
    mem[8'h73] <= 32'hdaaaeb8a ;
    mem[8'h74] <= 32'hb38d7fef ;
    mem[8'h75] <= 32'h7e012b5a ;
    mem[8'h76] <= 32'h2c54cb32 ;
    mem[8'h77] <= 32'he1d89f87 ;
    mem[8'h78] <= 32'hfe1be3f8 ;
    mem[8'h79] <= 32'h3397b74d ;
    mem[8'h7a] <= 32'h61c25725 ;
    mem[8'h7b] <= 32'hac4e0390 ;
    mem[8'h7c] <= 32'hc56997f5 ;
    mem[8'h7d] <= 32'h8e5c340 ;
    mem[8'h7e] <= 32'h5ab02328 ;
    mem[8'h7f] <= 32'h973c779d ;
    mem[8'h80] <= 32'h7009d1a5 ;
    mem[8'h81] <= 32'hbd858510 ;
    mem[8'h82] <= 32'hefd06578 ;
    mem[8'h83] <= 32'h225c31cd ;
    mem[8'h84] <= 32'h4b7ba5a8 ;
    mem[8'h85] <= 32'h86f7f11d ;
    mem[8'h86] <= 32'hd4a21175 ;
    mem[8'h87] <= 32'h192e45c0 ;
    mem[8'h88] <= 32'h6ed39bf ;
    mem[8'h89] <= 32'hcb616d0a ;
    mem[8'h8a] <= 32'h99348d62 ;
    mem[8'h8b] <= 32'h54b8d9d7 ;
    mem[8'h8c] <= 32'h3d9f4db2 ;
    mem[8'h8d] <= 32'hf0131907 ;
    mem[8'h8e] <= 32'ha246f96f ;
    mem[8'h8f] <= 32'h6fcaadda ;
    mem[8'h90] <= 32'h9dc00191 ;
    mem[8'h91] <= 32'h504c5524 ;
    mem[8'h92] <= 32'h219b54c ;
    mem[8'h93] <= 32'hcf95e1f9 ;
    mem[8'h94] <= 32'ha6b2759c ;
    mem[8'h95] <= 32'h6b3e2129 ;
    mem[8'h96] <= 32'h396bc141 ;
    mem[8'h97] <= 32'hf4e795f4 ;
    mem[8'h98] <= 32'heb24e98b ;
    mem[8'h99] <= 32'h26a8bd3e ;
    mem[8'h9a] <= 32'h74fd5d56 ;
    mem[8'h9b] <= 32'hb97109e3 ;
    mem[8'h9c] <= 32'hd0569d86 ;
    mem[8'h9d] <= 32'h1ddac933 ;
    mem[8'h9e] <= 32'h4f8f295b ;
    mem[8'h9f] <= 32'h82037dee ;
    mem[8'ha0] <= 32'haf5b6c7a ;
    mem[8'ha1] <= 32'h62d738cf ;
    mem[8'ha2] <= 32'h3082d8a7 ;
    mem[8'ha3] <= 32'hfd0e8c12 ;
    mem[8'ha4] <= 32'h94291877 ;
    mem[8'ha5] <= 32'h59a54cc2 ;
    mem[8'ha6] <= 32'hbf0acaa ;
    mem[8'ha7] <= 32'hc67cf81f ;
    mem[8'ha8] <= 32'hd9bf8460 ;
    mem[8'ha9] <= 32'h1433d0d5 ;
    mem[8'haa] <= 32'h466630bd ;
    mem[8'hab] <= 32'h8bea6408 ;
    mem[8'hac] <= 32'he2cdf06d ;
    mem[8'had] <= 32'h2f41a4d8 ;
    mem[8'hae] <= 32'h7d1444b0 ;
    mem[8'haf] <= 32'hb0981005 ;
    mem[8'hb0] <= 32'h4292bc4e ;
    mem[8'hb1] <= 32'h8f1ee8fb ;
    mem[8'hb2] <= 32'hdd4b0893 ;
    mem[8'hb3] <= 32'h10c75c26 ;
    mem[8'hb4] <= 32'h79e0c843 ;
    mem[8'hb5] <= 32'hb46c9cf6 ;
    mem[8'hb6] <= 32'he6397c9e ;
    mem[8'hb7] <= 32'h2bb5282b ;
    mem[8'hb8] <= 32'h34765454 ;
    mem[8'hb9] <= 32'hf9fa00e1 ;
    mem[8'hba] <= 32'habafe089 ;
    mem[8'hbb] <= 32'h6623b43c ;
    mem[8'hbc] <= 32'hf042059 ;
    mem[8'hbd] <= 32'hc28874ec ;
    mem[8'hbe] <= 32'h90dd9484 ;
    mem[8'hbf] <= 32'h5d51c031 ;
    mem[8'hc0] <= 32'hca6db7ac ;
    mem[8'hc1] <= 32'h7e1e319 ;
    mem[8'hc2] <= 32'h55b40371 ;
    mem[8'hc3] <= 32'h983857c4 ;
    mem[8'hc4] <= 32'hf11fc3a1 ;
    mem[8'hc5] <= 32'h3c939714 ;
    mem[8'hc6] <= 32'h6ec6777c ;
    mem[8'hc7] <= 32'ha34a23c9 ;
    mem[8'hc8] <= 32'hbc895fb6 ;
    mem[8'hc9] <= 32'h71050b03 ;
    mem[8'hca] <= 32'h2350eb6b ;
    mem[8'hcb] <= 32'heedcbfde ;
    mem[8'hcc] <= 32'h87fb2bbb ;
    mem[8'hcd] <= 32'h4a777f0e ;
    mem[8'hce] <= 32'h18229f66 ;
    mem[8'hcf] <= 32'hd5aecbd3 ;
    mem[8'hd0] <= 32'h27a46798 ;
    mem[8'hd1] <= 32'hea28332d ;
    mem[8'hd2] <= 32'hb87dd345 ;
    mem[8'hd3] <= 32'h75f187f0 ;
    mem[8'hd4] <= 32'h1cd61395 ;
    mem[8'hd5] <= 32'hd15a4720 ;
    mem[8'hd6] <= 32'h830fa748 ;
    mem[8'hd7] <= 32'h4e83f3fd ;
    mem[8'hd8] <= 32'h51408f82 ;
    mem[8'hd9] <= 32'h9cccdb37 ;
    mem[8'hda] <= 32'hce993b5f ;
    mem[8'hdb] <= 32'h3156fea ;
    mem[8'hdc] <= 32'h6a32fb8f ;
    mem[8'hdd] <= 32'ha7beaf3a ;
    mem[8'hde] <= 32'hf5eb4f52 ;
    mem[8'hdf] <= 32'h38671be7 ;
    mem[8'he0] <= 32'h153f0a73 ;
    mem[8'he1] <= 32'hd8b35ec6 ;
    mem[8'he2] <= 32'h8ae6beae ;
    mem[8'he3] <= 32'h476aea1b ;
    mem[8'he4] <= 32'h2e4d7e7e ;
    mem[8'he5] <= 32'he3c12acb ;
    mem[8'he6] <= 32'hb194caa3 ;
    mem[8'he7] <= 32'h7c189e16 ;
    mem[8'he8] <= 32'h63dbe269 ;
    mem[8'he9] <= 32'hae57b6dc ;
    mem[8'hea] <= 32'hfc0256b4 ;
    mem[8'heb] <= 32'h318e0201 ;
    mem[8'hec] <= 32'h58a99664 ;
    mem[8'hed] <= 32'h9525c2d1 ;
    mem[8'hee] <= 32'hc77022b9 ;
    mem[8'hef] <= 32'hafc760c ;
    mem[8'hf0] <= 32'hf8f6da47 ;
    mem[8'hf1] <= 32'h357a8ef2 ;
    mem[8'hf2] <= 32'h672f6e9a ;
    mem[8'hf3] <= 32'haaa33a2f ;
    mem[8'hf4] <= 32'hc384ae4a ;
    mem[8'hf5] <= 32'he08faff ;
    mem[8'hf6] <= 32'h5c5d1a97 ;
    mem[8'hf7] <= 32'h91d14e22 ;
    mem[8'hf8] <= 32'h8e12325d ;
    mem[8'hf9] <= 32'h439e66e8 ;
    mem[8'hfa] <= 32'h11cb8680 ;
    mem[8'hfb] <= 32'hdc47d235 ;
    mem[8'hfc] <= 32'hb5604650 ;
    mem[8'hfd] <= 32'h78ec12e5 ;
    mem[8'hfe] <= 32'h2ab9f28d ;
    mem[8'hff] <= 32'he735a638 ;
end
assign mem_addr = addr[7:0];
// Output connectins
assign rdata    = mem_data;
assign mem_data = mem[mem_addr];
endmodule
