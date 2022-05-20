module crctab_ev2
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
    mem[8'h1] <= 32'h1d8ac87 ;
    mem[8'h2] <= 32'h3b1590e ;
    mem[8'h3] <= 32'h269f589 ;
    mem[8'h4] <= 32'h762b21c ;
    mem[8'h5] <= 32'h6ba1e9b ;
    mem[8'h6] <= 32'h4d3eb12 ;
    mem[8'h7] <= 32'h50b4795 ;
    mem[8'h8] <= 32'hec56438 ;
    mem[8'h9] <= 32'hf1dc8bf ;
    mem[8'ha] <= 32'hd743d36 ;
    mem[8'hb] <= 32'hcac91b1 ;
    mem[8'hc] <= 32'h9a7d624 ;
    mem[8'hd] <= 32'h87f7aa3 ;
    mem[8'he] <= 32'ha168f2a ;
    mem[8'hf] <= 32'hbce23ad ;
    mem[8'h10] <= 32'h1d8ac870 ;
    mem[8'h11] <= 32'h1c5264f7 ;
    mem[8'h12] <= 32'h1e3b917e ;
    mem[8'h13] <= 32'h1fe33df9 ;
    mem[8'h14] <= 32'h1ae87a6c ;
    mem[8'h15] <= 32'h1b30d6eb ;
    mem[8'h16] <= 32'h19592362 ;
    mem[8'h17] <= 32'h18818fe5 ;
    mem[8'h18] <= 32'h134fac48 ;
    mem[8'h19] <= 32'h129700cf ;
    mem[8'h1a] <= 32'h10fef546 ;
    mem[8'h1b] <= 32'h112659c1 ;
    mem[8'h1c] <= 32'h142d1e54 ;
    mem[8'h1d] <= 32'h15f5b2d3 ;
    mem[8'h1e] <= 32'h179c475a ;
    mem[8'h1f] <= 32'h1644ebdd ;
    mem[8'h20] <= 32'h3b1590e0 ;
    mem[8'h21] <= 32'h3acd3c67 ;
    mem[8'h22] <= 32'h38a4c9ee ;
    mem[8'h23] <= 32'h397c6569 ;
    mem[8'h24] <= 32'h3c7722fc ;
    mem[8'h25] <= 32'h3daf8e7b ;
    mem[8'h26] <= 32'h3fc67bf2 ;
    mem[8'h27] <= 32'h3e1ed775 ;
    mem[8'h28] <= 32'h35d0f4d8 ;
    mem[8'h29] <= 32'h3408585f ;
    mem[8'h2a] <= 32'h3661add6 ;
    mem[8'h2b] <= 32'h37b90151 ;
    mem[8'h2c] <= 32'h32b246c4 ;
    mem[8'h2d] <= 32'h336aea43 ;
    mem[8'h2e] <= 32'h31031fca ;
    mem[8'h2f] <= 32'h30dbb34d ;
    mem[8'h30] <= 32'h269f5890 ;
    mem[8'h31] <= 32'h2747f417 ;
    mem[8'h32] <= 32'h252e019e ;
    mem[8'h33] <= 32'h24f6ad19 ;
    mem[8'h34] <= 32'h21fdea8c ;
    mem[8'h35] <= 32'h2025460b ;
    mem[8'h36] <= 32'h224cb382 ;
    mem[8'h37] <= 32'h23941f05 ;
    mem[8'h38] <= 32'h285a3ca8 ;
    mem[8'h39] <= 32'h2982902f ;
    mem[8'h3a] <= 32'h2beb65a6 ;
    mem[8'h3b] <= 32'h2a33c921 ;
    mem[8'h3c] <= 32'h2f388eb4 ;
    mem[8'h3d] <= 32'h2ee02233 ;
    mem[8'h3e] <= 32'h2c89d7ba ;
    mem[8'h3f] <= 32'h2d517b3d ;
    mem[8'h40] <= 32'h762b21c0 ;
    mem[8'h41] <= 32'h77f38d47 ;
    mem[8'h42] <= 32'h759a78ce ;
    mem[8'h43] <= 32'h7442d449 ;
    mem[8'h44] <= 32'h714993dc ;
    mem[8'h45] <= 32'h70913f5b ;
    mem[8'h46] <= 32'h72f8cad2 ;
    mem[8'h47] <= 32'h73206655 ;
    mem[8'h48] <= 32'h78ee45f8 ;
    mem[8'h49] <= 32'h7936e97f ;
    mem[8'h4a] <= 32'h7b5f1cf6 ;
    mem[8'h4b] <= 32'h7a87b071 ;
    mem[8'h4c] <= 32'h7f8cf7e4 ;
    mem[8'h4d] <= 32'h7e545b63 ;
    mem[8'h4e] <= 32'h7c3daeea ;
    mem[8'h4f] <= 32'h7de5026d ;
    mem[8'h50] <= 32'h6ba1e9b0 ;
    mem[8'h51] <= 32'h6a794537 ;
    mem[8'h52] <= 32'h6810b0be ;
    mem[8'h53] <= 32'h69c81c39 ;
    mem[8'h54] <= 32'h6cc35bac ;
    mem[8'h55] <= 32'h6d1bf72b ;
    mem[8'h56] <= 32'h6f7202a2 ;
    mem[8'h57] <= 32'h6eaaae25 ;
    mem[8'h58] <= 32'h65648d88 ;
    mem[8'h59] <= 32'h64bc210f ;
    mem[8'h5a] <= 32'h66d5d486 ;
    mem[8'h5b] <= 32'h670d7801 ;
    mem[8'h5c] <= 32'h62063f94 ;
    mem[8'h5d] <= 32'h63de9313 ;
    mem[8'h5e] <= 32'h61b7669a ;
    mem[8'h5f] <= 32'h606fca1d ;
    mem[8'h60] <= 32'h4d3eb120 ;
    mem[8'h61] <= 32'h4ce61da7 ;
    mem[8'h62] <= 32'h4e8fe82e ;
    mem[8'h63] <= 32'h4f5744a9 ;
    mem[8'h64] <= 32'h4a5c033c ;
    mem[8'h65] <= 32'h4b84afbb ;
    mem[8'h66] <= 32'h49ed5a32 ;
    mem[8'h67] <= 32'h4835f6b5 ;
    mem[8'h68] <= 32'h43fbd518 ;
    mem[8'h69] <= 32'h4223799f ;
    mem[8'h6a] <= 32'h404a8c16 ;
    mem[8'h6b] <= 32'h41922091 ;
    mem[8'h6c] <= 32'h44996704 ;
    mem[8'h6d] <= 32'h4541cb83 ;
    mem[8'h6e] <= 32'h47283e0a ;
    mem[8'h6f] <= 32'h46f0928d ;
    mem[8'h70] <= 32'h50b47950 ;
    mem[8'h71] <= 32'h516cd5d7 ;
    mem[8'h72] <= 32'h5305205e ;
    mem[8'h73] <= 32'h52dd8cd9 ;
    mem[8'h74] <= 32'h57d6cb4c ;
    mem[8'h75] <= 32'h560e67cb ;
    mem[8'h76] <= 32'h54679242 ;
    mem[8'h77] <= 32'h55bf3ec5 ;
    mem[8'h78] <= 32'h5e711d68 ;
    mem[8'h79] <= 32'h5fa9b1ef ;
    mem[8'h7a] <= 32'h5dc04466 ;
    mem[8'h7b] <= 32'h5c18e8e1 ;
    mem[8'h7c] <= 32'h5913af74 ;
    mem[8'h7d] <= 32'h58cb03f3 ;
    mem[8'h7e] <= 32'h5aa2f67a ;
    mem[8'h7f] <= 32'h5b7a5afd ;
    mem[8'h80] <= 32'hec564380 ;
    mem[8'h81] <= 32'hed8eef07 ;
    mem[8'h82] <= 32'hefe71a8e ;
    mem[8'h83] <= 32'hee3fb609 ;
    mem[8'h84] <= 32'heb34f19c ;
    mem[8'h85] <= 32'heaec5d1b ;
    mem[8'h86] <= 32'he885a892 ;
    mem[8'h87] <= 32'he95d0415 ;
    mem[8'h88] <= 32'he29327b8 ;
    mem[8'h89] <= 32'he34b8b3f ;
    mem[8'h8a] <= 32'he1227eb6 ;
    mem[8'h8b] <= 32'he0fad231 ;
    mem[8'h8c] <= 32'he5f195a4 ;
    mem[8'h8d] <= 32'he4293923 ;
    mem[8'h8e] <= 32'he640ccaa ;
    mem[8'h8f] <= 32'he798602d ;
    mem[8'h90] <= 32'hf1dc8bf0 ;
    mem[8'h91] <= 32'hf0042777 ;
    mem[8'h92] <= 32'hf26dd2fe ;
    mem[8'h93] <= 32'hf3b57e79 ;
    mem[8'h94] <= 32'hf6be39ec ;
    mem[8'h95] <= 32'hf766956b ;
    mem[8'h96] <= 32'hf50f60e2 ;
    mem[8'h97] <= 32'hf4d7cc65 ;
    mem[8'h98] <= 32'hff19efc8 ;
    mem[8'h99] <= 32'hfec1434f ;
    mem[8'h9a] <= 32'hfca8b6c6 ;
    mem[8'h9b] <= 32'hfd701a41 ;
    mem[8'h9c] <= 32'hf87b5dd4 ;
    mem[8'h9d] <= 32'hf9a3f153 ;
    mem[8'h9e] <= 32'hfbca04da ;
    mem[8'h9f] <= 32'hfa12a85d ;
    mem[8'ha0] <= 32'hd743d360 ;
    mem[8'ha1] <= 32'hd69b7fe7 ;
    mem[8'ha2] <= 32'hd4f28a6e ;
    mem[8'ha3] <= 32'hd52a26e9 ;
    mem[8'ha4] <= 32'hd021617c ;
    mem[8'ha5] <= 32'hd1f9cdfb ;
    mem[8'ha6] <= 32'hd3903872 ;
    mem[8'ha7] <= 32'hd24894f5 ;
    mem[8'ha8] <= 32'hd986b758 ;
    mem[8'ha9] <= 32'hd85e1bdf ;
    mem[8'haa] <= 32'hda37ee56 ;
    mem[8'hab] <= 32'hdbef42d1 ;
    mem[8'hac] <= 32'hdee40544 ;
    mem[8'had] <= 32'hdf3ca9c3 ;
    mem[8'hae] <= 32'hdd555c4a ;
    mem[8'haf] <= 32'hdc8df0cd ;
    mem[8'hb0] <= 32'hcac91b10 ;
    mem[8'hb1] <= 32'hcb11b797 ;
    mem[8'hb2] <= 32'hc978421e ;
    mem[8'hb3] <= 32'hc8a0ee99 ;
    mem[8'hb4] <= 32'hcdaba90c ;
    mem[8'hb5] <= 32'hcc73058b ;
    mem[8'hb6] <= 32'hce1af002 ;
    mem[8'hb7] <= 32'hcfc25c85 ;
    mem[8'hb8] <= 32'hc40c7f28 ;
    mem[8'hb9] <= 32'hc5d4d3af ;
    mem[8'hba] <= 32'hc7bd2626 ;
    mem[8'hbb] <= 32'hc6658aa1 ;
    mem[8'hbc] <= 32'hc36ecd34 ;
    mem[8'hbd] <= 32'hc2b661b3 ;
    mem[8'hbe] <= 32'hc0df943a ;
    mem[8'hbf] <= 32'hc10738bd ;
    mem[8'hc0] <= 32'h9a7d6240 ;
    mem[8'hc1] <= 32'h9ba5cec7 ;
    mem[8'hc2] <= 32'h99cc3b4e ;
    mem[8'hc3] <= 32'h981497c9 ;
    mem[8'hc4] <= 32'h9d1fd05c ;
    mem[8'hc5] <= 32'h9cc77cdb ;
    mem[8'hc6] <= 32'h9eae8952 ;
    mem[8'hc7] <= 32'h9f7625d5 ;
    mem[8'hc8] <= 32'h94b80678 ;
    mem[8'hc9] <= 32'h9560aaff ;
    mem[8'hca] <= 32'h97095f76 ;
    mem[8'hcb] <= 32'h96d1f3f1 ;
    mem[8'hcc] <= 32'h93dab464 ;
    mem[8'hcd] <= 32'h920218e3 ;
    mem[8'hce] <= 32'h906bed6a ;
    mem[8'hcf] <= 32'h91b341ed ;
    mem[8'hd0] <= 32'h87f7aa30 ;
    mem[8'hd1] <= 32'h862f06b7 ;
    mem[8'hd2] <= 32'h8446f33e ;
    mem[8'hd3] <= 32'h859e5fb9 ;
    mem[8'hd4] <= 32'h8095182c ;
    mem[8'hd5] <= 32'h814db4ab ;
    mem[8'hd6] <= 32'h83244122 ;
    mem[8'hd7] <= 32'h82fceda5 ;
    mem[8'hd8] <= 32'h8932ce08 ;
    mem[8'hd9] <= 32'h88ea628f ;
    mem[8'hda] <= 32'h8a839706 ;
    mem[8'hdb] <= 32'h8b5b3b81 ;
    mem[8'hdc] <= 32'h8e507c14 ;
    mem[8'hdd] <= 32'h8f88d093 ;
    mem[8'hde] <= 32'h8de1251a ;
    mem[8'hdf] <= 32'h8c39899d ;
    mem[8'he0] <= 32'ha168f2a0 ;
    mem[8'he1] <= 32'ha0b05e27 ;
    mem[8'he2] <= 32'ha2d9abae ;
    mem[8'he3] <= 32'ha3010729 ;
    mem[8'he4] <= 32'ha60a40bc ;
    mem[8'he5] <= 32'ha7d2ec3b ;
    mem[8'he6] <= 32'ha5bb19b2 ;
    mem[8'he7] <= 32'ha463b535 ;
    mem[8'he8] <= 32'hafad9698 ;
    mem[8'he9] <= 32'hae753a1f ;
    mem[8'hea] <= 32'hac1ccf96 ;
    mem[8'heb] <= 32'hadc46311 ;
    mem[8'hec] <= 32'ha8cf2484 ;
    mem[8'hed] <= 32'ha9178803 ;
    mem[8'hee] <= 32'hab7e7d8a ;
    mem[8'hef] <= 32'haaa6d10d ;
    mem[8'hf0] <= 32'hbce23ad0 ;
    mem[8'hf1] <= 32'hbd3a9657 ;
    mem[8'hf2] <= 32'hbf5363de ;
    mem[8'hf3] <= 32'hbe8bcf59 ;
    mem[8'hf4] <= 32'hbb8088cc ;
    mem[8'hf5] <= 32'hba58244b ;
    mem[8'hf6] <= 32'hb831d1c2 ;
    mem[8'hf7] <= 32'hb9e97d45 ;
    mem[8'hf8] <= 32'hb2275ee8 ;
    mem[8'hf9] <= 32'hb3fff26f ;
    mem[8'hfa] <= 32'hb19607e6 ;
    mem[8'hfb] <= 32'hb04eab61 ;
    mem[8'hfc] <= 32'hb545ecf4 ;
    mem[8'hfd] <= 32'hb49d4073 ;
    mem[8'hfe] <= 32'hb6f4b5fa ;
    mem[8'hff] <= 32'hb72c197d ;
end
assign mem_addr = addr[7:0];
// Output connectins
assign rdata    = mem_data;
assign mem_data = mem[mem_addr];
endmodule