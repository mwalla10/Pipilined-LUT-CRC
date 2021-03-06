module crctab_ev18
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
    mem[8'h1] <= 32'ha1b8859 ;
    mem[8'h2] <= 32'h143710b2 ;
    mem[8'h3] <= 32'h1e2c98eb ;
    mem[8'h4] <= 32'h286e2164 ;
    mem[8'h5] <= 32'h2275a93d ;
    mem[8'h6] <= 32'h3c5931d6 ;
    mem[8'h7] <= 32'h3642b98f ;
    mem[8'h8] <= 32'h50dc42c8 ;
    mem[8'h9] <= 32'h5ac7ca91 ;
    mem[8'ha] <= 32'h44eb527a ;
    mem[8'hb] <= 32'h4ef0da23 ;
    mem[8'hc] <= 32'h78b263ac ;
    mem[8'hd] <= 32'h72a9ebf5 ;
    mem[8'he] <= 32'h6c85731e ;
    mem[8'hf] <= 32'h669efb47 ;
    mem[8'h10] <= 32'ha1b88590 ;
    mem[8'h11] <= 32'haba30dc9 ;
    mem[8'h12] <= 32'hb58f9522 ;
    mem[8'h13] <= 32'hbf941d7b ;
    mem[8'h14] <= 32'h89d6a4f4 ;
    mem[8'h15] <= 32'h83cd2cad ;
    mem[8'h16] <= 32'h9de1b446 ;
    mem[8'h17] <= 32'h97fa3c1f ;
    mem[8'h18] <= 32'hf164c758 ;
    mem[8'h19] <= 32'hfb7f4f01 ;
    mem[8'h1a] <= 32'he553d7ea ;
    mem[8'h1b] <= 32'hef485fb3 ;
    mem[8'h1c] <= 32'hd90ae63c ;
    mem[8'h1d] <= 32'hd3116e65 ;
    mem[8'h1e] <= 32'hcd3df68e ;
    mem[8'h1f] <= 32'hc7267ed7 ;
    mem[8'h20] <= 32'h47b01697 ;
    mem[8'h21] <= 32'h4dab9ece ;
    mem[8'h22] <= 32'h53870625 ;
    mem[8'h23] <= 32'h599c8e7c ;
    mem[8'h24] <= 32'h6fde37f3 ;
    mem[8'h25] <= 32'h65c5bfaa ;
    mem[8'h26] <= 32'h7be92741 ;
    mem[8'h27] <= 32'h71f2af18 ;
    mem[8'h28] <= 32'h176c545f ;
    mem[8'h29] <= 32'h1d77dc06 ;
    mem[8'h2a] <= 32'h35b44ed ;
    mem[8'h2b] <= 32'h940ccb4 ;
    mem[8'h2c] <= 32'h3f02753b ;
    mem[8'h2d] <= 32'h3519fd62 ;
    mem[8'h2e] <= 32'h2b356589 ;
    mem[8'h2f] <= 32'h212eedd0 ;
    mem[8'h30] <= 32'he6089307 ;
    mem[8'h31] <= 32'hec131b5e ;
    mem[8'h32] <= 32'hf23f83b5 ;
    mem[8'h33] <= 32'hf8240bec ;
    mem[8'h34] <= 32'hce66b263 ;
    mem[8'h35] <= 32'hc47d3a3a ;
    mem[8'h36] <= 32'hda51a2d1 ;
    mem[8'h37] <= 32'hd04a2a88 ;
    mem[8'h38] <= 32'hb6d4d1cf ;
    mem[8'h39] <= 32'hbccf5996 ;
    mem[8'h3a] <= 32'ha2e3c17d ;
    mem[8'h3b] <= 32'ha8f84924 ;
    mem[8'h3c] <= 32'h9ebaf0ab ;
    mem[8'h3d] <= 32'h94a178f2 ;
    mem[8'h3e] <= 32'h8a8de019 ;
    mem[8'h3f] <= 32'h80966840 ;
    mem[8'h40] <= 32'h8f602d2e ;
    mem[8'h41] <= 32'h857ba577 ;
    mem[8'h42] <= 32'h9b573d9c ;
    mem[8'h43] <= 32'h914cb5c5 ;
    mem[8'h44] <= 32'ha70e0c4a ;
    mem[8'h45] <= 32'had158413 ;
    mem[8'h46] <= 32'hb3391cf8 ;
    mem[8'h47] <= 32'hb92294a1 ;
    mem[8'h48] <= 32'hdfbc6fe6 ;
    mem[8'h49] <= 32'hd5a7e7bf ;
    mem[8'h4a] <= 32'hcb8b7f54 ;
    mem[8'h4b] <= 32'hc190f70d ;
    mem[8'h4c] <= 32'hf7d24e82 ;
    mem[8'h4d] <= 32'hfdc9c6db ;
    mem[8'h4e] <= 32'he3e55e30 ;
    mem[8'h4f] <= 32'he9fed669 ;
    mem[8'h50] <= 32'h2ed8a8be ;
    mem[8'h51] <= 32'h24c320e7 ;
    mem[8'h52] <= 32'h3aefb80c ;
    mem[8'h53] <= 32'h30f43055 ;
    mem[8'h54] <= 32'h6b689da ;
    mem[8'h55] <= 32'hcad0183 ;
    mem[8'h56] <= 32'h12819968 ;
    mem[8'h57] <= 32'h189a1131 ;
    mem[8'h58] <= 32'h7e04ea76 ;
    mem[8'h59] <= 32'h741f622f ;
    mem[8'h5a] <= 32'h6a33fac4 ;
    mem[8'h5b] <= 32'h6028729d ;
    mem[8'h5c] <= 32'h566acb12 ;
    mem[8'h5d] <= 32'h5c71434b ;
    mem[8'h5e] <= 32'h425ddba0 ;
    mem[8'h5f] <= 32'h484653f9 ;
    mem[8'h60] <= 32'hc8d03bb9 ;
    mem[8'h61] <= 32'hc2cbb3e0 ;
    mem[8'h62] <= 32'hdce72b0b ;
    mem[8'h63] <= 32'hd6fca352 ;
    mem[8'h64] <= 32'he0be1add ;
    mem[8'h65] <= 32'heaa59284 ;
    mem[8'h66] <= 32'hf4890a6f ;
    mem[8'h67] <= 32'hfe928236 ;
    mem[8'h68] <= 32'h980c7971 ;
    mem[8'h69] <= 32'h9217f128 ;
    mem[8'h6a] <= 32'h8c3b69c3 ;
    mem[8'h6b] <= 32'h8620e19a ;
    mem[8'h6c] <= 32'hb0625815 ;
    mem[8'h6d] <= 32'hba79d04c ;
    mem[8'h6e] <= 32'ha45548a7 ;
    mem[8'h6f] <= 32'hae4ec0fe ;
    mem[8'h70] <= 32'h6968be29 ;
    mem[8'h71] <= 32'h63733670 ;
    mem[8'h72] <= 32'h7d5fae9b ;
    mem[8'h73] <= 32'h774426c2 ;
    mem[8'h74] <= 32'h41069f4d ;
    mem[8'h75] <= 32'h4b1d1714 ;
    mem[8'h76] <= 32'h55318fff ;
    mem[8'h77] <= 32'h5f2a07a6 ;
    mem[8'h78] <= 32'h39b4fce1 ;
    mem[8'h79] <= 32'h33af74b8 ;
    mem[8'h7a] <= 32'h2d83ec53 ;
    mem[8'h7b] <= 32'h2798640a ;
    mem[8'h7c] <= 32'h11dadd85 ;
    mem[8'h7d] <= 32'h1bc155dc ;
    mem[8'h7e] <= 32'h5edcd37 ;
    mem[8'h7f] <= 32'hff6456e ;
    mem[8'h80] <= 32'h1a0147eb ;
    mem[8'h81] <= 32'h101acfb2 ;
    mem[8'h82] <= 32'he365759 ;
    mem[8'h83] <= 32'h42ddf00 ;
    mem[8'h84] <= 32'h326f668f ;
    mem[8'h85] <= 32'h3874eed6 ;
    mem[8'h86] <= 32'h2658763d ;
    mem[8'h87] <= 32'h2c43fe64 ;
    mem[8'h88] <= 32'h4add0523 ;
    mem[8'h89] <= 32'h40c68d7a ;
    mem[8'h8a] <= 32'h5eea1591 ;
    mem[8'h8b] <= 32'h54f19dc8 ;
    mem[8'h8c] <= 32'h62b32447 ;
    mem[8'h8d] <= 32'h68a8ac1e ;
    mem[8'h8e] <= 32'h768434f5 ;
    mem[8'h8f] <= 32'h7c9fbcac ;
    mem[8'h90] <= 32'hbbb9c27b ;
    mem[8'h91] <= 32'hb1a24a22 ;
    mem[8'h92] <= 32'haf8ed2c9 ;
    mem[8'h93] <= 32'ha5955a90 ;
    mem[8'h94] <= 32'h93d7e31f ;
    mem[8'h95] <= 32'h99cc6b46 ;
    mem[8'h96] <= 32'h87e0f3ad ;
    mem[8'h97] <= 32'h8dfb7bf4 ;
    mem[8'h98] <= 32'heb6580b3 ;
    mem[8'h99] <= 32'he17e08ea ;
    mem[8'h9a] <= 32'hff529001 ;
    mem[8'h9b] <= 32'hf5491858 ;
    mem[8'h9c] <= 32'hc30ba1d7 ;
    mem[8'h9d] <= 32'hc910298e ;
    mem[8'h9e] <= 32'hd73cb165 ;
    mem[8'h9f] <= 32'hdd27393c ;
    mem[8'ha0] <= 32'h5db1517c ;
    mem[8'ha1] <= 32'h57aad925 ;
    mem[8'ha2] <= 32'h498641ce ;
    mem[8'ha3] <= 32'h439dc997 ;
    mem[8'ha4] <= 32'h75df7018 ;
    mem[8'ha5] <= 32'h7fc4f841 ;
    mem[8'ha6] <= 32'h61e860aa ;
    mem[8'ha7] <= 32'h6bf3e8f3 ;
    mem[8'ha8] <= 32'hd6d13b4 ;
    mem[8'ha9] <= 32'h7769bed ;
    mem[8'haa] <= 32'h195a0306 ;
    mem[8'hab] <= 32'h13418b5f ;
    mem[8'hac] <= 32'h250332d0 ;
    mem[8'had] <= 32'h2f18ba89 ;
    mem[8'hae] <= 32'h31342262 ;
    mem[8'haf] <= 32'h3b2faa3b ;
    mem[8'hb0] <= 32'hfc09d4ec ;
    mem[8'hb1] <= 32'hf6125cb5 ;
    mem[8'hb2] <= 32'he83ec45e ;
    mem[8'hb3] <= 32'he2254c07 ;
    mem[8'hb4] <= 32'hd467f588 ;
    mem[8'hb5] <= 32'hde7c7dd1 ;
    mem[8'hb6] <= 32'hc050e53a ;
    mem[8'hb7] <= 32'hca4b6d63 ;
    mem[8'hb8] <= 32'hacd59624 ;
    mem[8'hb9] <= 32'ha6ce1e7d ;
    mem[8'hba] <= 32'hb8e28696 ;
    mem[8'hbb] <= 32'hb2f90ecf ;
    mem[8'hbc] <= 32'h84bbb740 ;
    mem[8'hbd] <= 32'h8ea03f19 ;
    mem[8'hbe] <= 32'h908ca7f2 ;
    mem[8'hbf] <= 32'h9a972fab ;
    mem[8'hc0] <= 32'h95616ac5 ;
    mem[8'hc1] <= 32'h9f7ae29c ;
    mem[8'hc2] <= 32'h81567a77 ;
    mem[8'hc3] <= 32'h8b4df22e ;
    mem[8'hc4] <= 32'hbd0f4ba1 ;
    mem[8'hc5] <= 32'hb714c3f8 ;
    mem[8'hc6] <= 32'ha9385b13 ;
    mem[8'hc7] <= 32'ha323d34a ;
    mem[8'hc8] <= 32'hc5bd280d ;
    mem[8'hc9] <= 32'hcfa6a054 ;
    mem[8'hca] <= 32'hd18a38bf ;
    mem[8'hcb] <= 32'hdb91b0e6 ;
    mem[8'hcc] <= 32'hedd30969 ;
    mem[8'hcd] <= 32'he7c88130 ;
    mem[8'hce] <= 32'hf9e419db ;
    mem[8'hcf] <= 32'hf3ff9182 ;
    mem[8'hd0] <= 32'h34d9ef55 ;
    mem[8'hd1] <= 32'h3ec2670c ;
    mem[8'hd2] <= 32'h20eeffe7 ;
    mem[8'hd3] <= 32'h2af577be ;
    mem[8'hd4] <= 32'h1cb7ce31 ;
    mem[8'hd5] <= 32'h16ac4668 ;
    mem[8'hd6] <= 32'h880de83 ;
    mem[8'hd7] <= 32'h29b56da ;
    mem[8'hd8] <= 32'h6405ad9d ;
    mem[8'hd9] <= 32'h6e1e25c4 ;
    mem[8'hda] <= 32'h7032bd2f ;
    mem[8'hdb] <= 32'h7a293576 ;
    mem[8'hdc] <= 32'h4c6b8cf9 ;
    mem[8'hdd] <= 32'h467004a0 ;
    mem[8'hde] <= 32'h585c9c4b ;
    mem[8'hdf] <= 32'h52471412 ;
    mem[8'he0] <= 32'hd2d17c52 ;
    mem[8'he1] <= 32'hd8caf40b ;
    mem[8'he2] <= 32'hc6e66ce0 ;
    mem[8'he3] <= 32'hccfde4b9 ;
    mem[8'he4] <= 32'hfabf5d36 ;
    mem[8'he5] <= 32'hf0a4d56f ;
    mem[8'he6] <= 32'hee884d84 ;
    mem[8'he7] <= 32'he493c5dd ;
    mem[8'he8] <= 32'h820d3e9a ;
    mem[8'he9] <= 32'h8816b6c3 ;
    mem[8'hea] <= 32'h963a2e28 ;
    mem[8'heb] <= 32'h9c21a671 ;
    mem[8'hec] <= 32'haa631ffe ;
    mem[8'hed] <= 32'ha07897a7 ;
    mem[8'hee] <= 32'hbe540f4c ;
    mem[8'hef] <= 32'hb44f8715 ;
    mem[8'hf0] <= 32'h7369f9c2 ;
    mem[8'hf1] <= 32'h7972719b ;
    mem[8'hf2] <= 32'h675ee970 ;
    mem[8'hf3] <= 32'h6d456129 ;
    mem[8'hf4] <= 32'h5b07d8a6 ;
    mem[8'hf5] <= 32'h511c50ff ;
    mem[8'hf6] <= 32'h4f30c814 ;
    mem[8'hf7] <= 32'h452b404d ;
    mem[8'hf8] <= 32'h23b5bb0a ;
    mem[8'hf9] <= 32'h29ae3353 ;
    mem[8'hfa] <= 32'h3782abb8 ;
    mem[8'hfb] <= 32'h3d9923e1 ;
    mem[8'hfc] <= 32'hbdb9a6e ;
    mem[8'hfd] <= 32'h1c01237 ;
    mem[8'hfe] <= 32'h1fec8adc ;
    mem[8'hff] <= 32'h15f70285 ;
end
assign mem_addr = addr[7:0];
// Output connectins
assign rdata    = mem_data;
assign mem_data = mem[mem_addr];
endmodule
