module crctab_ev31
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
    mem[8'h1] <= 32'h12eed357 ;
    mem[8'h2] <= 32'h25dda6ae ;
    mem[8'h3] <= 32'h373375f9 ;
    mem[8'h4] <= 32'h4bbb4d5c ;
    mem[8'h5] <= 32'h59559e0b ;
    mem[8'h6] <= 32'h6e66ebf2 ;
    mem[8'h7] <= 32'h7c8838a5 ;
    mem[8'h8] <= 32'h97769ab8 ;
    mem[8'h9] <= 32'h859849ef ;
    mem[8'ha] <= 32'hb2ab3c16 ;
    mem[8'hb] <= 32'ha045ef41 ;
    mem[8'hc] <= 32'hdccdd7e4 ;
    mem[8'hd] <= 32'hce2304b3 ;
    mem[8'he] <= 32'hf910714a ;
    mem[8'hf] <= 32'hebfea21d ;
    mem[8'h10] <= 32'h2a2c28c7 ;
    mem[8'h11] <= 32'h38c2fb90 ;
    mem[8'h12] <= 32'hff18e69 ;
    mem[8'h13] <= 32'h1d1f5d3e ;
    mem[8'h14] <= 32'h6197659b ;
    mem[8'h15] <= 32'h7379b6cc ;
    mem[8'h16] <= 32'h444ac335 ;
    mem[8'h17] <= 32'h56a41062 ;
    mem[8'h18] <= 32'hbd5ab27f ;
    mem[8'h19] <= 32'hafb46128 ;
    mem[8'h1a] <= 32'h988714d1 ;
    mem[8'h1b] <= 32'h8a69c786 ;
    mem[8'h1c] <= 32'hf6e1ff23 ;
    mem[8'h1d] <= 32'he40f2c74 ;
    mem[8'h1e] <= 32'hd33c598d ;
    mem[8'h1f] <= 32'hc1d28ada ;
    mem[8'h20] <= 32'h5458518e ;
    mem[8'h21] <= 32'h46b682d9 ;
    mem[8'h22] <= 32'h7185f720 ;
    mem[8'h23] <= 32'h636b2477 ;
    mem[8'h24] <= 32'h1fe31cd2 ;
    mem[8'h25] <= 32'hd0dcf85 ;
    mem[8'h26] <= 32'h3a3eba7c ;
    mem[8'h27] <= 32'h28d0692b ;
    mem[8'h28] <= 32'hc32ecb36 ;
    mem[8'h29] <= 32'hd1c01861 ;
    mem[8'h2a] <= 32'he6f36d98 ;
    mem[8'h2b] <= 32'hf41dbecf ;
    mem[8'h2c] <= 32'h8895866a ;
    mem[8'h2d] <= 32'h9a7b553d ;
    mem[8'h2e] <= 32'had4820c4 ;
    mem[8'h2f] <= 32'hbfa6f393 ;
    mem[8'h30] <= 32'h7e747949 ;
    mem[8'h31] <= 32'h6c9aaa1e ;
    mem[8'h32] <= 32'h5ba9dfe7 ;
    mem[8'h33] <= 32'h49470cb0 ;
    mem[8'h34] <= 32'h35cf3415 ;
    mem[8'h35] <= 32'h2721e742 ;
    mem[8'h36] <= 32'h101292bb ;
    mem[8'h37] <= 32'h2fc41ec ;
    mem[8'h38] <= 32'he902e3f1 ;
    mem[8'h39] <= 32'hfbec30a6 ;
    mem[8'h3a] <= 32'hccdf455f ;
    mem[8'h3b] <= 32'hde319608 ;
    mem[8'h3c] <= 32'ha2b9aead ;
    mem[8'h3d] <= 32'hb0577dfa ;
    mem[8'h3e] <= 32'h87640803 ;
    mem[8'h3f] <= 32'h958adb54 ;
    mem[8'h40] <= 32'ha8b0a31c ;
    mem[8'h41] <= 32'hba5e704b ;
    mem[8'h42] <= 32'h8d6d05b2 ;
    mem[8'h43] <= 32'h9f83d6e5 ;
    mem[8'h44] <= 32'he30bee40 ;
    mem[8'h45] <= 32'hf1e53d17 ;
    mem[8'h46] <= 32'hc6d648ee ;
    mem[8'h47] <= 32'hd4389bb9 ;
    mem[8'h48] <= 32'h3fc639a4 ;
    mem[8'h49] <= 32'h2d28eaf3 ;
    mem[8'h4a] <= 32'h1a1b9f0a ;
    mem[8'h4b] <= 32'h8f54c5d ;
    mem[8'h4c] <= 32'h747d74f8 ;
    mem[8'h4d] <= 32'h6693a7af ;
    mem[8'h4e] <= 32'h51a0d256 ;
    mem[8'h4f] <= 32'h434e0101 ;
    mem[8'h50] <= 32'h829c8bdb ;
    mem[8'h51] <= 32'h9072588c ;
    mem[8'h52] <= 32'ha7412d75 ;
    mem[8'h53] <= 32'hb5affe22 ;
    mem[8'h54] <= 32'hc927c687 ;
    mem[8'h55] <= 32'hdbc915d0 ;
    mem[8'h56] <= 32'hecfa6029 ;
    mem[8'h57] <= 32'hfe14b37e ;
    mem[8'h58] <= 32'h15ea1163 ;
    mem[8'h59] <= 32'h704c234 ;
    mem[8'h5a] <= 32'h3037b7cd ;
    mem[8'h5b] <= 32'h22d9649a ;
    mem[8'h5c] <= 32'h5e515c3f ;
    mem[8'h5d] <= 32'h4cbf8f68 ;
    mem[8'h5e] <= 32'h7b8cfa91 ;
    mem[8'h5f] <= 32'h696229c6 ;
    mem[8'h60] <= 32'hfce8f292 ;
    mem[8'h61] <= 32'hee0621c5 ;
    mem[8'h62] <= 32'hd935543c ;
    mem[8'h63] <= 32'hcbdb876b ;
    mem[8'h64] <= 32'hb753bfce ;
    mem[8'h65] <= 32'ha5bd6c99 ;
    mem[8'h66] <= 32'h928e1960 ;
    mem[8'h67] <= 32'h8060ca37 ;
    mem[8'h68] <= 32'h6b9e682a ;
    mem[8'h69] <= 32'h7970bb7d ;
    mem[8'h6a] <= 32'h4e43ce84 ;
    mem[8'h6b] <= 32'h5cad1dd3 ;
    mem[8'h6c] <= 32'h20252576 ;
    mem[8'h6d] <= 32'h32cbf621 ;
    mem[8'h6e] <= 32'h5f883d8 ;
    mem[8'h6f] <= 32'h1716508f ;
    mem[8'h70] <= 32'hd6c4da55 ;
    mem[8'h71] <= 32'hc42a0902 ;
    mem[8'h72] <= 32'hf3197cfb ;
    mem[8'h73] <= 32'he1f7afac ;
    mem[8'h74] <= 32'h9d7f9709 ;
    mem[8'h75] <= 32'h8f91445e ;
    mem[8'h76] <= 32'hb8a231a7 ;
    mem[8'h77] <= 32'haa4ce2f0 ;
    mem[8'h78] <= 32'h41b240ed ;
    mem[8'h79] <= 32'h535c93ba ;
    mem[8'h7a] <= 32'h646fe643 ;
    mem[8'h7b] <= 32'h76813514 ;
    mem[8'h7c] <= 32'ha090db1 ;
    mem[8'h7d] <= 32'h18e7dee6 ;
    mem[8'h7e] <= 32'h2fd4ab1f ;
    mem[8'h7f] <= 32'h3d3a7848 ;
    mem[8'h80] <= 32'h55a05b8f ;
    mem[8'h81] <= 32'h474e88d8 ;
    mem[8'h82] <= 32'h707dfd21 ;
    mem[8'h83] <= 32'h62932e76 ;
    mem[8'h84] <= 32'h1e1b16d3 ;
    mem[8'h85] <= 32'hcf5c584 ;
    mem[8'h86] <= 32'h3bc6b07d ;
    mem[8'h87] <= 32'h2928632a ;
    mem[8'h88] <= 32'hc2d6c137 ;
    mem[8'h89] <= 32'hd0381260 ;
    mem[8'h8a] <= 32'he70b6799 ;
    mem[8'h8b] <= 32'hf5e5b4ce ;
    mem[8'h8c] <= 32'h896d8c6b ;
    mem[8'h8d] <= 32'h9b835f3c ;
    mem[8'h8e] <= 32'hacb02ac5 ;
    mem[8'h8f] <= 32'hbe5ef992 ;
    mem[8'h90] <= 32'h7f8c7348 ;
    mem[8'h91] <= 32'h6d62a01f ;
    mem[8'h92] <= 32'h5a51d5e6 ;
    mem[8'h93] <= 32'h48bf06b1 ;
    mem[8'h94] <= 32'h34373e14 ;
    mem[8'h95] <= 32'h26d9ed43 ;
    mem[8'h96] <= 32'h11ea98ba ;
    mem[8'h97] <= 32'h3044bed ;
    mem[8'h98] <= 32'he8fae9f0 ;
    mem[8'h99] <= 32'hfa143aa7 ;
    mem[8'h9a] <= 32'hcd274f5e ;
    mem[8'h9b] <= 32'hdfc99c09 ;
    mem[8'h9c] <= 32'ha341a4ac ;
    mem[8'h9d] <= 32'hb1af77fb ;
    mem[8'h9e] <= 32'h869c0202 ;
    mem[8'h9f] <= 32'h9472d155 ;
    mem[8'ha0] <= 32'h1f80a01 ;
    mem[8'ha1] <= 32'h1316d956 ;
    mem[8'ha2] <= 32'h2425acaf ;
    mem[8'ha3] <= 32'h36cb7ff8 ;
    mem[8'ha4] <= 32'h4a43475d ;
    mem[8'ha5] <= 32'h58ad940a ;
    mem[8'ha6] <= 32'h6f9ee1f3 ;
    mem[8'ha7] <= 32'h7d7032a4 ;
    mem[8'ha8] <= 32'h968e90b9 ;
    mem[8'ha9] <= 32'h846043ee ;
    mem[8'haa] <= 32'hb3533617 ;
    mem[8'hab] <= 32'ha1bde540 ;
    mem[8'hac] <= 32'hdd35dde5 ;
    mem[8'had] <= 32'hcfdb0eb2 ;
    mem[8'hae] <= 32'hf8e87b4b ;
    mem[8'haf] <= 32'hea06a81c ;
    mem[8'hb0] <= 32'h2bd422c6 ;
    mem[8'hb1] <= 32'h393af191 ;
    mem[8'hb2] <= 32'he098468 ;
    mem[8'hb3] <= 32'h1ce7573f ;
    mem[8'hb4] <= 32'h606f6f9a ;
    mem[8'hb5] <= 32'h7281bccd ;
    mem[8'hb6] <= 32'h45b2c934 ;
    mem[8'hb7] <= 32'h575c1a63 ;
    mem[8'hb8] <= 32'hbca2b87e ;
    mem[8'hb9] <= 32'hae4c6b29 ;
    mem[8'hba] <= 32'h997f1ed0 ;
    mem[8'hbb] <= 32'h8b91cd87 ;
    mem[8'hbc] <= 32'hf719f522 ;
    mem[8'hbd] <= 32'he5f72675 ;
    mem[8'hbe] <= 32'hd2c4538c ;
    mem[8'hbf] <= 32'hc02a80db ;
    mem[8'hc0] <= 32'hfd10f893 ;
    mem[8'hc1] <= 32'heffe2bc4 ;
    mem[8'hc2] <= 32'hd8cd5e3d ;
    mem[8'hc3] <= 32'hca238d6a ;
    mem[8'hc4] <= 32'hb6abb5cf ;
    mem[8'hc5] <= 32'ha4456698 ;
    mem[8'hc6] <= 32'h93761361 ;
    mem[8'hc7] <= 32'h8198c036 ;
    mem[8'hc8] <= 32'h6a66622b ;
    mem[8'hc9] <= 32'h7888b17c ;
    mem[8'hca] <= 32'h4fbbc485 ;
    mem[8'hcb] <= 32'h5d5517d2 ;
    mem[8'hcc] <= 32'h21dd2f77 ;
    mem[8'hcd] <= 32'h3333fc20 ;
    mem[8'hce] <= 32'h40089d9 ;
    mem[8'hcf] <= 32'h16ee5a8e ;
    mem[8'hd0] <= 32'hd73cd054 ;
    mem[8'hd1] <= 32'hc5d20303 ;
    mem[8'hd2] <= 32'hf2e176fa ;
    mem[8'hd3] <= 32'he00fa5ad ;
    mem[8'hd4] <= 32'h9c879d08 ;
    mem[8'hd5] <= 32'h8e694e5f ;
    mem[8'hd6] <= 32'hb95a3ba6 ;
    mem[8'hd7] <= 32'habb4e8f1 ;
    mem[8'hd8] <= 32'h404a4aec ;
    mem[8'hd9] <= 32'h52a499bb ;
    mem[8'hda] <= 32'h6597ec42 ;
    mem[8'hdb] <= 32'h77793f15 ;
    mem[8'hdc] <= 32'hbf107b0 ;
    mem[8'hdd] <= 32'h191fd4e7 ;
    mem[8'hde] <= 32'h2e2ca11e ;
    mem[8'hdf] <= 32'h3cc27249 ;
    mem[8'he0] <= 32'ha948a91d ;
    mem[8'he1] <= 32'hbba67a4a ;
    mem[8'he2] <= 32'h8c950fb3 ;
    mem[8'he3] <= 32'h9e7bdce4 ;
    mem[8'he4] <= 32'he2f3e441 ;
    mem[8'he5] <= 32'hf01d3716 ;
    mem[8'he6] <= 32'hc72e42ef ;
    mem[8'he7] <= 32'hd5c091b8 ;
    mem[8'he8] <= 32'h3e3e33a5 ;
    mem[8'he9] <= 32'h2cd0e0f2 ;
    mem[8'hea] <= 32'h1be3950b ;
    mem[8'heb] <= 32'h90d465c ;
    mem[8'hec] <= 32'h75857ef9 ;
    mem[8'hed] <= 32'h676badae ;
    mem[8'hee] <= 32'h5058d857 ;
    mem[8'hef] <= 32'h42b60b00 ;
    mem[8'hf0] <= 32'h836481da ;
    mem[8'hf1] <= 32'h918a528d ;
    mem[8'hf2] <= 32'ha6b92774 ;
    mem[8'hf3] <= 32'hb457f423 ;
    mem[8'hf4] <= 32'hc8dfcc86 ;
    mem[8'hf5] <= 32'hda311fd1 ;
    mem[8'hf6] <= 32'hed026a28 ;
    mem[8'hf7] <= 32'hffecb97f ;
    mem[8'hf8] <= 32'h14121b62 ;
    mem[8'hf9] <= 32'h6fcc835 ;
    mem[8'hfa] <= 32'h31cfbdcc ;
    mem[8'hfb] <= 32'h23216e9b ;
    mem[8'hfc] <= 32'h5fa9563e ;
    mem[8'hfd] <= 32'h4d478569 ;
    mem[8'hfe] <= 32'h7a74f090 ;
    mem[8'hff] <= 32'h689a23c7 ;
end
assign mem_addr = addr[7:0];
// Output connectins
assign rdata    = mem_data;
assign mem_data = mem[mem_addr];
endmodule
