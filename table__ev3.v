module crctab_ev3
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
    mem[8'h1] <= 32'hdc6d9ab7 ;
    mem[8'h2] <= 32'hbc1a28d9 ;
    mem[8'h3] <= 32'h6077b26e ;
    mem[8'h4] <= 32'h7cf54c05 ;
    mem[8'h5] <= 32'ha098d6b2 ;
    mem[8'h6] <= 32'hc0ef64dc ;
    mem[8'h7] <= 32'h1c82fe6b ;
    mem[8'h8] <= 32'hf9ea980a ;
    mem[8'h9] <= 32'h258702bd ;
    mem[8'ha] <= 32'h45f0b0d3 ;
    mem[8'hb] <= 32'h999d2a64 ;
    mem[8'hc] <= 32'h851fd40f ;
    mem[8'hd] <= 32'h59724eb8 ;
    mem[8'he] <= 32'h3905fcd6 ;
    mem[8'hf] <= 32'he5686661 ;
    mem[8'h10] <= 32'hf7142da3 ;
    mem[8'h11] <= 32'h2b79b714 ;
    mem[8'h12] <= 32'h4b0e057a ;
    mem[8'h13] <= 32'h97639fcd ;
    mem[8'h14] <= 32'h8be161a6 ;
    mem[8'h15] <= 32'h578cfb11 ;
    mem[8'h16] <= 32'h37fb497f ;
    mem[8'h17] <= 32'heb96d3c8 ;
    mem[8'h18] <= 32'hefeb5a9 ;
    mem[8'h19] <= 32'hd2932f1e ;
    mem[8'h1a] <= 32'hb2e49d70 ;
    mem[8'h1b] <= 32'h6e8907c7 ;
    mem[8'h1c] <= 32'h720bf9ac ;
    mem[8'h1d] <= 32'hae66631b ;
    mem[8'h1e] <= 32'hce11d175 ;
    mem[8'h1f] <= 32'h127c4bc2 ;
    mem[8'h20] <= 32'heae946f1 ;
    mem[8'h21] <= 32'h3684dc46 ;
    mem[8'h22] <= 32'h56f36e28 ;
    mem[8'h23] <= 32'h8a9ef49f ;
    mem[8'h24] <= 32'h961c0af4 ;
    mem[8'h25] <= 32'h4a719043 ;
    mem[8'h26] <= 32'h2a06222d ;
    mem[8'h27] <= 32'hf66bb89a ;
    mem[8'h28] <= 32'h1303defb ;
    mem[8'h29] <= 32'hcf6e444c ;
    mem[8'h2a] <= 32'haf19f622 ;
    mem[8'h2b] <= 32'h73746c95 ;
    mem[8'h2c] <= 32'h6ff692fe ;
    mem[8'h2d] <= 32'hb39b0849 ;
    mem[8'h2e] <= 32'hd3ecba27 ;
    mem[8'h2f] <= 32'hf812090 ;
    mem[8'h30] <= 32'h1dfd6b52 ;
    mem[8'h31] <= 32'hc190f1e5 ;
    mem[8'h32] <= 32'ha1e7438b ;
    mem[8'h33] <= 32'h7d8ad93c ;
    mem[8'h34] <= 32'h61082757 ;
    mem[8'h35] <= 32'hbd65bde0 ;
    mem[8'h36] <= 32'hdd120f8e ;
    mem[8'h37] <= 32'h17f9539 ;
    mem[8'h38] <= 32'he417f358 ;
    mem[8'h39] <= 32'h387a69ef ;
    mem[8'h3a] <= 32'h580ddb81 ;
    mem[8'h3b] <= 32'h84604136 ;
    mem[8'h3c] <= 32'h98e2bf5d ;
    mem[8'h3d] <= 32'h448f25ea ;
    mem[8'h3e] <= 32'h24f89784 ;
    mem[8'h3f] <= 32'hf8950d33 ;
    mem[8'h40] <= 32'hd1139055 ;
    mem[8'h41] <= 32'hd7e0ae2 ;
    mem[8'h42] <= 32'h6d09b88c ;
    mem[8'h43] <= 32'hb164223b ;
    mem[8'h44] <= 32'hade6dc50 ;
    mem[8'h45] <= 32'h718b46e7 ;
    mem[8'h46] <= 32'h11fcf489 ;
    mem[8'h47] <= 32'hcd916e3e ;
    mem[8'h48] <= 32'h28f9085f ;
    mem[8'h49] <= 32'hf49492e8 ;
    mem[8'h4a] <= 32'h94e32086 ;
    mem[8'h4b] <= 32'h488eba31 ;
    mem[8'h4c] <= 32'h540c445a ;
    mem[8'h4d] <= 32'h8861deed ;
    mem[8'h4e] <= 32'he8166c83 ;
    mem[8'h4f] <= 32'h347bf634 ;
    mem[8'h50] <= 32'h2607bdf6 ;
    mem[8'h51] <= 32'hfa6a2741 ;
    mem[8'h52] <= 32'h9a1d952f ;
    mem[8'h53] <= 32'h46700f98 ;
    mem[8'h54] <= 32'h5af2f1f3 ;
    mem[8'h55] <= 32'h869f6b44 ;
    mem[8'h56] <= 32'he6e8d92a ;
    mem[8'h57] <= 32'h3a85439d ;
    mem[8'h58] <= 32'hdfed25fc ;
    mem[8'h59] <= 32'h380bf4b ;
    mem[8'h5a] <= 32'h63f70d25 ;
    mem[8'h5b] <= 32'hbf9a9792 ;
    mem[8'h5c] <= 32'ha31869f9 ;
    mem[8'h5d] <= 32'h7f75f34e ;
    mem[8'h5e] <= 32'h1f024120 ;
    mem[8'h5f] <= 32'hc36fdb97 ;
    mem[8'h60] <= 32'h3bfad6a4 ;
    mem[8'h61] <= 32'he7974c13 ;
    mem[8'h62] <= 32'h87e0fe7d ;
    mem[8'h63] <= 32'h5b8d64ca ;
    mem[8'h64] <= 32'h470f9aa1 ;
    mem[8'h65] <= 32'h9b620016 ;
    mem[8'h66] <= 32'hfb15b278 ;
    mem[8'h67] <= 32'h277828cf ;
    mem[8'h68] <= 32'hc2104eae ;
    mem[8'h69] <= 32'h1e7dd419 ;
    mem[8'h6a] <= 32'h7e0a6677 ;
    mem[8'h6b] <= 32'ha267fcc0 ;
    mem[8'h6c] <= 32'hbee502ab ;
    mem[8'h6d] <= 32'h6288981c ;
    mem[8'h6e] <= 32'h2ff2a72 ;
    mem[8'h6f] <= 32'hde92b0c5 ;
    mem[8'h70] <= 32'hcceefb07 ;
    mem[8'h71] <= 32'h108361b0 ;
    mem[8'h72] <= 32'h70f4d3de ;
    mem[8'h73] <= 32'hac994969 ;
    mem[8'h74] <= 32'hb01bb702 ;
    mem[8'h75] <= 32'h6c762db5 ;
    mem[8'h76] <= 32'hc019fdb ;
    mem[8'h77] <= 32'hd06c056c ;
    mem[8'h78] <= 32'h3504630d ;
    mem[8'h79] <= 32'he969f9ba ;
    mem[8'h7a] <= 32'h891e4bd4 ;
    mem[8'h7b] <= 32'h5573d163 ;
    mem[8'h7c] <= 32'h49f12f08 ;
    mem[8'h7d] <= 32'h959cb5bf ;
    mem[8'h7e] <= 32'hf5eb07d1 ;
    mem[8'h7f] <= 32'h29869d66 ;
    mem[8'h80] <= 32'ha6e63d1d ;
    mem[8'h81] <= 32'h7a8ba7aa ;
    mem[8'h82] <= 32'h1afc15c4 ;
    mem[8'h83] <= 32'hc6918f73 ;
    mem[8'h84] <= 32'hda137118 ;
    mem[8'h85] <= 32'h67eebaf ;
    mem[8'h86] <= 32'h660959c1 ;
    mem[8'h87] <= 32'hba64c376 ;
    mem[8'h88] <= 32'h5f0ca517 ;
    mem[8'h89] <= 32'h83613fa0 ;
    mem[8'h8a] <= 32'he3168dce ;
    mem[8'h8b] <= 32'h3f7b1779 ;
    mem[8'h8c] <= 32'h23f9e912 ;
    mem[8'h8d] <= 32'hff9473a5 ;
    mem[8'h8e] <= 32'h9fe3c1cb ;
    mem[8'h8f] <= 32'h438e5b7c ;
    mem[8'h90] <= 32'h51f210be ;
    mem[8'h91] <= 32'h8d9f8a09 ;
    mem[8'h92] <= 32'hede83867 ;
    mem[8'h93] <= 32'h3185a2d0 ;
    mem[8'h94] <= 32'h2d075cbb ;
    mem[8'h95] <= 32'hf16ac60c ;
    mem[8'h96] <= 32'h911d7462 ;
    mem[8'h97] <= 32'h4d70eed5 ;
    mem[8'h98] <= 32'ha81888b4 ;
    mem[8'h99] <= 32'h74751203 ;
    mem[8'h9a] <= 32'h1402a06d ;
    mem[8'h9b] <= 32'hc86f3ada ;
    mem[8'h9c] <= 32'hd4edc4b1 ;
    mem[8'h9d] <= 32'h8805e06 ;
    mem[8'h9e] <= 32'h68f7ec68 ;
    mem[8'h9f] <= 32'hb49a76df ;
    mem[8'ha0] <= 32'h4c0f7bec ;
    mem[8'ha1] <= 32'h9062e15b ;
    mem[8'ha2] <= 32'hf0155335 ;
    mem[8'ha3] <= 32'h2c78c982 ;
    mem[8'ha4] <= 32'h30fa37e9 ;
    mem[8'ha5] <= 32'hec97ad5e ;
    mem[8'ha6] <= 32'h8ce01f30 ;
    mem[8'ha7] <= 32'h508d8587 ;
    mem[8'ha8] <= 32'hb5e5e3e6 ;
    mem[8'ha9] <= 32'h69887951 ;
    mem[8'haa] <= 32'h9ffcb3f ;
    mem[8'hab] <= 32'hd5925188 ;
    mem[8'hac] <= 32'hc910afe3 ;
    mem[8'had] <= 32'h157d3554 ;
    mem[8'hae] <= 32'h750a873a ;
    mem[8'haf] <= 32'ha9671d8d ;
    mem[8'hb0] <= 32'hbb1b564f ;
    mem[8'hb1] <= 32'h6776ccf8 ;
    mem[8'hb2] <= 32'h7017e96 ;
    mem[8'hb3] <= 32'hdb6ce421 ;
    mem[8'hb4] <= 32'hc7ee1a4a ;
    mem[8'hb5] <= 32'h1b8380fd ;
    mem[8'hb6] <= 32'h7bf43293 ;
    mem[8'hb7] <= 32'ha799a824 ;
    mem[8'hb8] <= 32'h42f1ce45 ;
    mem[8'hb9] <= 32'h9e9c54f2 ;
    mem[8'hba] <= 32'hfeebe69c ;
    mem[8'hbb] <= 32'h22867c2b ;
    mem[8'hbc] <= 32'h3e048240 ;
    mem[8'hbd] <= 32'he26918f7 ;
    mem[8'hbe] <= 32'h821eaa99 ;
    mem[8'hbf] <= 32'h5e73302e ;
    mem[8'hc0] <= 32'h77f5ad48 ;
    mem[8'hc1] <= 32'hab9837ff ;
    mem[8'hc2] <= 32'hcbef8591 ;
    mem[8'hc3] <= 32'h17821f26 ;
    mem[8'hc4] <= 32'hb00e14d ;
    mem[8'hc5] <= 32'hd76d7bfa ;
    mem[8'hc6] <= 32'hb71ac994 ;
    mem[8'hc7] <= 32'h6b775323 ;
    mem[8'hc8] <= 32'h8e1f3542 ;
    mem[8'hc9] <= 32'h5272aff5 ;
    mem[8'hca] <= 32'h32051d9b ;
    mem[8'hcb] <= 32'hee68872c ;
    mem[8'hcc] <= 32'hf2ea7947 ;
    mem[8'hcd] <= 32'h2e87e3f0 ;
    mem[8'hce] <= 32'h4ef0519e ;
    mem[8'hcf] <= 32'h929dcb29 ;
    mem[8'hd0] <= 32'h80e180eb ;
    mem[8'hd1] <= 32'h5c8c1a5c ;
    mem[8'hd2] <= 32'h3cfba832 ;
    mem[8'hd3] <= 32'he0963285 ;
    mem[8'hd4] <= 32'hfc14ccee ;
    mem[8'hd5] <= 32'h20795659 ;
    mem[8'hd6] <= 32'h400ee437 ;
    mem[8'hd7] <= 32'h9c637e80 ;
    mem[8'hd8] <= 32'h790b18e1 ;
    mem[8'hd9] <= 32'ha5668256 ;
    mem[8'hda] <= 32'hc5113038 ;
    mem[8'hdb] <= 32'h197caa8f ;
    mem[8'hdc] <= 32'h5fe54e4 ;
    mem[8'hdd] <= 32'hd993ce53 ;
    mem[8'hde] <= 32'hb9e47c3d ;
    mem[8'hdf] <= 32'h6589e68a ;
    mem[8'he0] <= 32'h9d1cebb9 ;
    mem[8'he1] <= 32'h4171710e ;
    mem[8'he2] <= 32'h2106c360 ;
    mem[8'he3] <= 32'hfd6b59d7 ;
    mem[8'he4] <= 32'he1e9a7bc ;
    mem[8'he5] <= 32'h3d843d0b ;
    mem[8'he6] <= 32'h5df38f65 ;
    mem[8'he7] <= 32'h819e15d2 ;
    mem[8'he8] <= 32'h64f673b3 ;
    mem[8'he9] <= 32'hb89be904 ;
    mem[8'hea] <= 32'hd8ec5b6a ;
    mem[8'heb] <= 32'h481c1dd ;
    mem[8'hec] <= 32'h18033fb6 ;
    mem[8'hed] <= 32'hc46ea501 ;
    mem[8'hee] <= 32'ha419176f ;
    mem[8'hef] <= 32'h78748dd8 ;
    mem[8'hf0] <= 32'h6a08c61a ;
    mem[8'hf1] <= 32'hb6655cad ;
    mem[8'hf2] <= 32'hd612eec3 ;
    mem[8'hf3] <= 32'ha7f7474 ;
    mem[8'hf4] <= 32'h16fd8a1f ;
    mem[8'hf5] <= 32'hca9010a8 ;
    mem[8'hf6] <= 32'haae7a2c6 ;
    mem[8'hf7] <= 32'h768a3871 ;
    mem[8'hf8] <= 32'h93e25e10 ;
    mem[8'hf9] <= 32'h4f8fc4a7 ;
    mem[8'hfa] <= 32'h2ff876c9 ;
    mem[8'hfb] <= 32'hf395ec7e ;
    mem[8'hfc] <= 32'hef171215 ;
    mem[8'hfd] <= 32'h337a88a2 ;
    mem[8'hfe] <= 32'h530d3acc ;
    mem[8'hff] <= 32'h8f60a07b ;
end
assign mem_addr = addr[7:0];
// Output connectins
assign rdata    = mem_data;
assign mem_data = mem[mem_addr];
endmodule
