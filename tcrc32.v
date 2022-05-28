`timescale 1ns/100 ps

module tcrc32(
	input 			i_clk,
	input 			i_areset_n, 
	input [255:0] 		i_data256, 
	input [4:0] 		i_tag, 
	input 			i_sop, 
	input 			i_eop,
	// output 
	output                  o_crc_valid,
	output wire [31:0]	o_crc,
	output reg [255:0] 	o_data256, 
	output reg [4:0] 	o_tag, 
	output reg 		o_sop, 
	output reg 		o_eop
	
);

reg [255:0] 	s1_data256;
reg  		s1_eop;
reg		s1_sop;
reg [4:0]	s1_tag;
reg [255:0] 	s2_data256;
reg [255:0] 	s3_data256;
reg [255:0] 	s4_data256;
reg [255:0] 	s5_data256;
reg [255:0] 	s6_data256;
reg  		s2_eop;
reg		s2_sop;
reg [4:0]	s2_tag;
reg  		s3_eop;
reg		s3_sop;
reg [4:0]	s3_tag;
reg  		s4_eop;
reg		s4_sop;
reg [4:0]	s4_tag;
reg  		s5_eop;
reg		s5_sop;
reg [4:0]	s5_tag;
reg  		s6_eop;
reg		s6_sop;
reg [4:0]	s6_tag;
reg [255:0]    s0_data256;
wire [31:0]    s1c_data_crc_0;
wire [31:0]    s1c_data_crc_1;
wire [31:0]    s1c_data_crc_2;
wire [31:0]    s1c_data_crc_3;
wire [31:0]    s1c_data_crc_4;
wire [31:0]    s1c_data_crc_5;
wire [31:0]    s1c_data_crc_6;
wire [31:0]    s1c_data_crc_7;
wire [31:0]    s1c_data_crc_8;
wire [31:0]    s1c_data_crc_9;
wire [31:0]    s1c_data_crc_10;
wire [31:0]    s1c_data_crc_11;
wire [31:0]    s1c_data_crc_12;
wire [31:0]    s1c_data_crc_13;
wire [31:0]    s1c_data_crc_14;
wire [31:0]    s1c_data_crc_15;
wire [31:0]    s1c_data_crc_16;
wire [31:0]    s1c_data_crc_17;
wire [31:0]    s1c_data_crc_18;
wire [31:0]    s1c_data_crc_19;
wire [31:0]    s1c_data_crc_20;
wire [31:0]    s1c_data_crc_21;
wire [31:0]    s1c_data_crc_22;
wire [31:0]    s1c_data_crc_23;
wire [31:0]    s1c_data_crc_24;
wire [31:0]    s1c_data_crc_25;
wire [31:0]    s1c_data_crc_26;
wire [31:0]    s1c_data_crc_27;
wire [31:0]    s1c_data_crc_28;
wire [31:0]    s1c_data_crc_29;
wire [31:0]    s1c_data_crc_30;
wire [31:0]    s1c_data_crc_31;
reg [31:0]     s2_data_crc_0;
reg [31:0]     s2_data_crc_1;
reg [31:0]     s2_data_crc_2;
reg [31:0]     s2_data_crc_3;
reg [31:0]     s2_data_crc_4;
reg [31:0]     s2_data_crc_5;
reg [31:0]     s2_data_crc_6;
reg [31:0]     s2_data_crc_7;
reg [31:0]     s2_data_crc_8;
reg [31:0]     s2_data_crc_9;
reg [31:0]     s2_data_crc_10;
reg [31:0]     s2_data_crc_11;
reg [31:0]     s2_data_crc_12;
reg [31:0]     s2_data_crc_13;
reg [31:0]     s2_data_crc_14;
reg [31:0]     s2_data_crc_15;
reg [31:0]     s2_data_crc_16;
reg [31:0]     s2_data_crc_17;
reg [31:0]     s2_data_crc_18;
reg [31:0]     s2_data_crc_19;
reg [31:0]     s2_data_crc_20;
reg [31:0]     s2_data_crc_21;
reg [31:0]     s2_data_crc_22;
reg [31:0]     s2_data_crc_23;
reg [31:0]     s2_data_crc_24;
reg [31:0]     s2_data_crc_25;
reg [31:0]     s2_data_crc_26;
reg [31:0]     s2_data_crc_27;
reg [31:0]     s2_data_crc_28;
reg [31:0]     s2_data_crc_29;
reg [31:0]     s2_data_crc_30;
reg [31:0]     s2_data_crc_31;
reg [31:0]     s3_data_crc_a;
reg [31:0]     s3_data_crc_b;
reg [31:0]     s4_data_crc;
wire [31:0]    s4c_crc_data;
wire [31:0]    s4c_crc_0;
wire [31:0]    s4c_crc_1;
wire [31:0]    s4c_crc_2;
wire [31:0]    s4c_crc_3;
reg  [31:0]    s5_crc;
wire [4:0]     s4c_crctag;
reg  [4:0]     s5_crctag;

// stage 2 signals
reg [31:0] 	s5_crc_n_1;
reg [31:0] 	s5_crc_data;
reg [255:0] 	s5c_crcdata256;
reg [31:0] 	s5c_remainder;
reg  [255:0] 	s6_crcdata256;
reg [31:0] 	s6_remainder;
reg [31:0]	s6_crc_data; // from data portion

// lookup signals 
reg [31:0] s7_crccrc_0 ;
wire [31:0] s6c_crccrc_0;
reg [31:0] s7_crccrc_1 ;
wire [31:0] s6c_crccrc_1;
reg [31:0] s7_crccrc_2 ;
wire [31:0] s6c_crccrc_2;
reg [31:0] s7_crccrc_3 ;
wire [31:0] s6c_crccrc_3;
reg [31:0] s7_crccrc_4 ;
wire [31:0] s6c_crccrc_4;
reg [31:0] s7_crccrc_5 ;
wire [31:0] s6c_crccrc_5;
reg [31:0] s7_crccrc_6 ;
wire [31:0] s6c_crccrc_6;
reg [31:0] s7_crccrc_7 ;
wire [31:0] s6c_crccrc_7;
reg [31:0] s7_crccrc_8 ;
wire [31:0] s6c_crccrc_8;
reg [31:0] s7_crccrc_9 ;
wire [31:0] s6c_crccrc_9;
reg [31:0] s7_crccrc_10 ;
wire [31:0] s6c_crccrc_10;
reg [31:0] s7_crccrc_11 ;
wire [31:0] s6c_crccrc_11;
reg [31:0] s7_crccrc_12 ;
wire [31:0] s6c_crccrc_12;
reg [31:0] s7_crccrc_13 ;
wire [31:0] s6c_crccrc_13;
reg [31:0] s7_crccrc_14 ;
wire [31:0] s6c_crccrc_14;
reg [31:0] s7_crccrc_15 ;
wire [31:0] s6c_crccrc_15;
reg [31:0] s7_crccrc_16 ;
wire [31:0] s6c_crccrc_16;
reg [31:0] s7_crccrc_17 ;
wire [31:0] s6c_crccrc_17;
reg [31:0] s7_crccrc_18 ;
wire [31:0] s6c_crccrc_18;
reg [31:0] s7_crccrc_19 ;
wire [31:0] s6c_crccrc_19;
reg [31:0] s7_crccrc_20 ;
wire [31:0] s6c_crccrc_20;
reg [31:0] s7_crccrc_21 ;
wire [31:0] s6c_crccrc_21;
reg [31:0] s7_crccrc_22 ;
wire [31:0] s6c_crccrc_22;
reg [31:0] s7_crccrc_23 ;
wire [31:0] s6c_crccrc_23;
reg [31:0] s7_crccrc_24 ;
wire [31:0] s6c_crccrc_24;
reg [31:0] s7_crccrc_25 ;
wire [31:0] s6c_crccrc_25;
reg [31:0] s7_crccrc_26 ;
wire [31:0] s6c_crccrc_26;
reg [31:0] s7_crccrc_27 ;
wire [31:0] s6c_crccrc_27;
reg [31:0] s7_crccrc_28 ;
wire [31:0] s6c_crccrc_28;
reg [31:0] s7_crccrc_29 ;
wire [31:0] s6c_crccrc_29;
reg [31:0] s7_crccrc_30 ;
wire [31:0] s6c_crccrc_30;
reg [31:0] s7_crccrc_31 ;
wire [31:0] s6c_crccrc_31;

reg [31:0] s8_crccrc_a, s8_crccrc_b, s8_remainder, s8_crc_data;
reg [31:0] s9_finalcrc ;
reg [31:0] s7_remainder;
reg [31:0] s7_crc_data;
wire  s4c_crcvalid;
reg   s5_crcvalid;
reg   s6_crcvalid;
reg   s7_crcvalid;
reg   s8_crcvalid;
reg   s9_crcvalid;


assign o_crc_valid = s9_crcvalid;
assign o_crc = s9_finalcrc;

// just simple data flopping 
// MUX STAGE input data  
always @(*) begin
	case (i_tag)
                5'd0: s0_data256 = i_data256;
                5'd1: s0_data256 = i_data256[255:248];
                5'd2: s0_data256 = i_data256[255:240];
                5'd3: s0_data256 = i_data256[255:232];
                5'd4: s0_data256 = i_data256[255:224];
                5'd5: s0_data256 = i_data256[255:216];
                5'd6: s0_data256 = i_data256[255:208];
                5'd7: s0_data256 = i_data256[255:200];
                5'd8: s0_data256 = i_data256[255:192];
                5'd9: s0_data256 = i_data256[255:184];
                5'd10: s0_data256 = i_data256[255:176];
                5'd11: s0_data256 = i_data256[255:168];
                5'd12: s0_data256 = i_data256[255:160];
                5'd13: s0_data256 = i_data256[255:152];
                5'd14: s0_data256 = i_data256[255:144];
                5'd15: s0_data256 = i_data256[255:136];
                5'd16: s0_data256 = i_data256[255:128];
                5'd17: s0_data256 = i_data256[255:120];
                5'd18: s0_data256 = i_data256[255:112];
                5'd19: s0_data256 = i_data256[255:104];
                5'd20: s0_data256 = i_data256[255:96];
                5'd21: s0_data256 = i_data256[255:88];
                5'd22: s0_data256 = i_data256[255:80];
                5'd23: s0_data256 = i_data256[255:72];
                5'd24: s0_data256 = i_data256[255:64];
                5'd25: s0_data256 = i_data256[255:56];
                5'd26: s0_data256 = i_data256[255:48];
                5'd27: s0_data256 = i_data256[255:40];
                5'd28: s0_data256 = i_data256[255:32];
                5'd29: s0_data256 = i_data256[255:24];
                5'd30: s0_data256 = i_data256[255:16];
                5'd31: s0_data256 = i_data256[255:8];
	endcase
end

always @(posedge i_clk)
begin
      if (!i_areset_n) begin
            s1_data256 <= {256{1'b0}};
	      s1_sop <= 1'b0;
	      s1_eop <= 1'b0;
	      s1_tag <= 5'b00000;
      end else begin
            s1_data256 <= s0_data256;
	      s1_sop <= i_sop;
	      s1_eop <= i_eop;
	      s1_tag <= i_tag;
      end
	
end



// INPUT lookup stage for CRC stables 
always @(posedge i_clk)
begin
	o_data256 <= s2_data256;
	o_sop <= s2_sop;
	o_eop <= s2_eop;
	o_tag <= s2_tag;
	// s2 control signals
	s2_sop <= s1_sop;
	s2_eop <= s1_eop;
	s2_tag <= s1_tag;
	s2_data256 <= s1_data256;
	s3_data256 <= s2_data256;
	s4_data256 <= s3_data256;
	s5_data256 <= s4_data256;
	s6_data256 <= s5_data256;
	s3_sop <= s2_sop;
	s3_eop <= s2_eop;
	s3_tag <= s2_tag;
	s4_sop <= s3_sop;
	s4_eop <= s3_eop;
	s4_tag <= s3_tag;
	s5_sop <= s4_sop;
	s5_eop <= s4_eop;
	s5_tag <= s4_tag;
	s6_sop <= s5_sop;
	s6_eop <= s5_eop;
	s6_tag <= s5_tag;

	s2_data_crc_0 <= s1c_data_crc_0;
	s2_data_crc_1 <= s1c_data_crc_1;
	s2_data_crc_2 <= s1c_data_crc_2;
	s2_data_crc_3 <= s1c_data_crc_3;
	s2_data_crc_4 <= s1c_data_crc_4;
	s2_data_crc_5 <= s1c_data_crc_5;
	s2_data_crc_6 <= s1c_data_crc_6;
	s2_data_crc_7 <= s1c_data_crc_7;
	s2_data_crc_8 <= s1c_data_crc_8;
	s2_data_crc_9 <= s1c_data_crc_9;
	s2_data_crc_10 <= s1c_data_crc_10;
	s2_data_crc_11 <= s1c_data_crc_11;
	s2_data_crc_12 <= s1c_data_crc_12;
	s2_data_crc_13 <= s1c_data_crc_13;
	s2_data_crc_14 <= s1c_data_crc_14;
	s2_data_crc_15 <= s1c_data_crc_15;
	s2_data_crc_16 <= s1c_data_crc_16;
	s2_data_crc_17 <= s1c_data_crc_17;
	s2_data_crc_18 <= s1c_data_crc_18;
	s2_data_crc_19 <= s1c_data_crc_19;
	s2_data_crc_20 <= s1c_data_crc_20;
	s2_data_crc_21 <= s1c_data_crc_21;
	s2_data_crc_22 <= s1c_data_crc_22;
	s2_data_crc_23 <= s1c_data_crc_23;
	s2_data_crc_24 <= s1c_data_crc_24;
	s2_data_crc_25 <= s1c_data_crc_25;
	s2_data_crc_26 <= s1c_data_crc_26;
	s2_data_crc_27 <= s1c_data_crc_27;
	s2_data_crc_28 <= s1c_data_crc_28;
	s2_data_crc_29 <= s1c_data_crc_29;
	s2_data_crc_30 <= s1c_data_crc_30;
	s2_data_crc_31 <= s1c_data_crc_31;

	s3_data_crc_a <= s2_data_crc_0 ^ s2_data_crc_1 ^ s2_data_crc_2 ^ s2_data_crc_3 ^ s2_data_crc_4 ^ s2_data_crc_5 ^ 
		s2_data_crc_6 ^ s2_data_crc_7 ^ s2_data_crc_8 ^ s2_data_crc_9 ^ s2_data_crc_10 ^ s2_data_crc_11 ^ s2_data_crc_12 ^ 
		s2_data_crc_13 ^ s2_data_crc_14 ^ s2_data_crc_15 ; 

	s3_data_crc_b <= 
		s2_data_crc_16 ^ s2_data_crc_17 ^ s2_data_crc_18 ^ s2_data_crc_19 ^ s2_data_crc_20 ^ s2_data_crc_21 ^ s2_data_crc_22 ^ 
		s2_data_crc_23 ^ s2_data_crc_24 ^ s2_data_crc_25 ^ s2_data_crc_26 ^ s2_data_crc_27 ^ s2_data_crc_28 ^ s2_data_crc_29 ^ 
		s2_data_crc_30 ^ s2_data_crc_31 ; 

	s4_data_crc <= s3_data_crc_a ^ s3_data_crc_b ; 
	// FINAL STAGE 1 CRC IS ........
	s5_crc <= s4_data_crc ^ s4c_crc_3 ^ s4c_crc_2 ^ s4c_crc_1 ^ s4c_crc_0; 

	// on last cycle capture data crc but N-1 clock CRC as we will
	// recompute N cycle CRC differently and recombine 
	// in pipelined way 
	s5_crctag <= s4c_crctag;
	s5_crc_n_1 <= s4c_crc_data ;  // last clock CRC before EOP
	s5_crc_data <= s4_data_crc ;  // last data comp at EOP

      s5_crcvalid <= s4c_crcvalid;
      s6_crcvalid <= s5_crcvalid;
      s7_crcvalid <= s6_crcvalid;
      s8_crcvalid <= s7_crcvalid;
      s9_crcvalid <= s8_crcvalid;
end



assign s4c_crc_data = (s4_sop) ? 32'hffffffff : s5_crc;
assign s4c_crctag = (s4_eop) ?  s4_tag: 5'b00000;
assign s4c_crcvalid = (s4_eop) ?  1'b1: 1'b0;


// STAGE 2 CRC CALCULATOR 
// unwind the feedback loop for CRC N-1  calculation 
always @(*)
begin
	case (s5_crctag)
              5'd0: begin
                    s5c_crcdata256 <= {s5_crc_n_1,{28{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd1: begin
                    s5c_crcdata256 <= {{31{8'h00}},s5_crc_n_1[31:24]};
                    s5c_remainder <= {s5_crc_n_1[24:0],8'h00};
              end
              5'd2: begin
                    s5c_crcdata256 <= {{30{8'h00}},s5_crc_n_1[31:16]};
                    s5c_remainder <= {s5_crc_n_1[15:0],16'h0000};
              end
              5'd3: begin
                    s5c_crcdata256 <= {{29{8'h00}},s5_crc_n_1[31:8]};
                    s5c_remainder <= {s5_crc_n_1[7:0],24'h000000};
              end
              5'd4: begin
                    s5c_crcdata256 <= {{28{8'h00}},s5_crc_n_1};
                    s5c_remainder <= 32'h00000000;
              end
              5'd5: begin
                    s5c_crcdata256 <= {{27{8'h00}},s5_crc_n_1,{1{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd6: begin
                    s5c_crcdata256 <= {{26{8'h00}},s5_crc_n_1,{2{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd7: begin
                    s5c_crcdata256 <= {{25{8'h00}},s5_crc_n_1,{3{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd8: begin
                    s5c_crcdata256 <= {{24{8'h00}},s5_crc_n_1,{4{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd9: begin
                    s5c_crcdata256 <= {{23{8'h00}},s5_crc_n_1,{5{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd10: begin
                    s5c_crcdata256 <= {{22{8'h00}},s5_crc_n_1,{6{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd11: begin
                    s5c_crcdata256 <= {{21{8'h00}},s5_crc_n_1,{7{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd12: begin
                    s5c_crcdata256 <= {{20{8'h00}},s5_crc_n_1,{8{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd13: begin
                    s5c_crcdata256 <= {{19{8'h00}},s5_crc_n_1,{9{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd14: begin
                    s5c_crcdata256 <= {{18{8'h00}},s5_crc_n_1,{10{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd15: begin
                    s5c_crcdata256 <= {{17{8'h00}},s5_crc_n_1,{11{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd16: begin
                    s5c_crcdata256 <= {{16{8'h00}},s5_crc_n_1,{12{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd17: begin
                    s5c_crcdata256 <= {{15{8'h00}},s5_crc_n_1,{13{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd18: begin
                    s5c_crcdata256 <= {{14{8'h00}},s5_crc_n_1,{14{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd19: begin
                    s5c_crcdata256 <= {{13{8'h00}},s5_crc_n_1,{15{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd20: begin
                    s5c_crcdata256 <= {{12{8'h00}},s5_crc_n_1,{16{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd21: begin
                    s5c_crcdata256 <= {{11{8'h00}},s5_crc_n_1,{17{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd22: begin
                    s5c_crcdata256 <= {{10{8'h00}},s5_crc_n_1,{18{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd23: begin
                    s5c_crcdata256 <= {{9{8'h00}},s5_crc_n_1,{19{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd24: begin
                    s5c_crcdata256 <= {{8{8'h00}},s5_crc_n_1,{20{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd25: begin
                    s5c_crcdata256 <= {{7{8'h00}},s5_crc_n_1,{21{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd26: begin
                    s5c_crcdata256 <= {{6{8'h00}},s5_crc_n_1,{22{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd27: begin
                    s5c_crcdata256 <= {{5{8'h00}},s5_crc_n_1,{23{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd28: begin
                    s5c_crcdata256 <= {{4{8'h00}},s5_crc_n_1,{24{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd29: begin
                    s5c_crcdata256 <= {{3{8'h00}},s5_crc_n_1,{25{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd30: begin
                    s5c_crcdata256 <= {{2{8'h00}},s5_crc_n_1,{26{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
              5'd31: begin
                    s5c_crcdata256 <= {{1{8'h00}},s5_crc_n_1,{27{8'h00}}};
                    s5c_remainder <= 32'h00000000;
              end
	endcase
end


always @(posedge i_clk)
begin
	s6_crcdata256 <= s5c_crcdata256; // 256 bit CRC expansion for stage 2 
	s6_remainder <= s5c_remainder; // remainder XOR part of CRC 
	s6_crc_data <= s5_crc_data; // from data portion of Stage 1 
      
      s7_crccrc_0 <= s6c_crccrc_0;
      s7_crccrc_1 <= s6c_crccrc_1;
      s7_crccrc_2 <= s6c_crccrc_2;
      s7_crccrc_3 <= s6c_crccrc_3;
      s7_crccrc_4 <= s6c_crccrc_4;
      s7_crccrc_5 <= s6c_crccrc_5;
      s7_crccrc_6 <= s6c_crccrc_6;
      s7_crccrc_7 <= s6c_crccrc_7;
      s7_crccrc_8 <= s6c_crccrc_8;
      s7_crccrc_9 <= s6c_crccrc_9;
      s7_crccrc_10 <= s6c_crccrc_10;
      s7_crccrc_11 <= s6c_crccrc_11;
      s7_crccrc_12 <= s6c_crccrc_12;
      s7_crccrc_13 <= s6c_crccrc_13;
      s7_crccrc_14 <= s6c_crccrc_14;
      s7_crccrc_15 <= s6c_crccrc_15;
      s7_crccrc_16 <= s6c_crccrc_16;
      s7_crccrc_17 <= s6c_crccrc_17;
      s7_crccrc_18 <= s6c_crccrc_18;
      s7_crccrc_19 <= s6c_crccrc_19;
      s7_crccrc_20 <= s6c_crccrc_20;
      s7_crccrc_21 <= s6c_crccrc_21;
      s7_crccrc_22 <= s6c_crccrc_22;
      s7_crccrc_23 <= s6c_crccrc_23;
      s7_crccrc_24 <= s6c_crccrc_24;
      s7_crccrc_25 <= s6c_crccrc_25;
      s7_crccrc_26 <= s6c_crccrc_26;
      s7_crccrc_27 <= s6c_crccrc_27;
      s7_crccrc_28 <= s6c_crccrc_28;
      s7_crccrc_29 <= s6c_crccrc_29;
      s7_crccrc_30 <= s6c_crccrc_30;
      s7_crccrc_31 <= s6c_crccrc_31;

      // combiner stage s2 
      
      s8_crccrc_a <=
                s7_crccrc_0
              ^ s7_crccrc_1
              ^ s7_crccrc_2
              ^ s7_crccrc_3
              ^ s7_crccrc_4
              ^ s7_crccrc_5
              ^ s7_crccrc_6
              ^ s7_crccrc_7
              ^ s7_crccrc_8
              ^ s7_crccrc_9
              ^ s7_crccrc_10
              ^ s7_crccrc_11
              ^ s7_crccrc_12
              ^ s7_crccrc_13
              ^ s7_crccrc_14
              ^ s7_crccrc_15
      ;
      s8_crccrc_b <=
                s7_crccrc_16
              ^ s7_crccrc_17
              ^ s7_crccrc_18
              ^ s7_crccrc_19
              ^ s7_crccrc_20
              ^ s7_crccrc_21
              ^ s7_crccrc_22
              ^ s7_crccrc_23
              ^ s7_crccrc_24
              ^ s7_crccrc_25
              ^ s7_crccrc_26
              ^ s7_crccrc_27
              ^ s7_crccrc_28
              ^ s7_crccrc_29
              ^ s7_crccrc_30
              ^ s7_crccrc_31
      ;

      

      s7_remainder <= s6_remainder; // remainder XOR part of CRC 
	s7_crc_data <= s6_crc_data; // from data portion of Stage 1
      s8_remainder <= s7_remainder; // remainder XOR part of CRC 
	s8_crc_data <= s7_crc_data; // from data portion of Stage 1
      s9_finalcrc <= s8_crccrc_a ^ s8_crccrc_b ^ s8_remainder ^ s8_crc_data;

end

//assign s4c_crc_data = (s4_sop) ? 32'h00000000 : s5_crc;
// No mirroring 
crctab_ev31 lookupcrc_3
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s4c_crc_data[31:24] ),
.rdata(s4c_crc_3[31:0])
);

crctab_ev30 lookupcrc_2
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s4c_crc_data[23:16] ),
.rdata(s4c_crc_2[31:0])
);

crctab_ev29 lookupcrc_1
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s4c_crc_data[15:8] ),
.rdata(s4c_crc_1[31:0])
);

crctab_ev28 lookupcrc_0
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s4c_crc_data[7:0] ),
.rdata(s4c_crc_0[31:0])
);

// DATA TABLES  - (287) lines auto generated 
crctab_ev0 lookup1_0
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[0], s1_data256[1],  s1_data256[2],  s1_data256[3],  s1_data256[4], s1_data256[5],  s1_data256[6],  s1_data256[7]} ),
.rdata(s1c_data_crc_0[31:0])
);


crctab_ev1 lookup1_1
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[8], s1_data256[9],  s1_data256[10],  s1_data256[11],  s1_data256[12], s1_data256[13],  s1_data256[14],  s1_data256[15]} ),
.rdata(s1c_data_crc_1[31:0])
);


crctab_ev2 lookup1_2
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[16], s1_data256[17],  s1_data256[18],  s1_data256[19],  s1_data256[20], s1_data256[21],  s1_data256[22],  s1_data256[23]} ),
.rdata(s1c_data_crc_2[31:0])
);


crctab_ev3 lookup1_3
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[24], s1_data256[25],  s1_data256[26],  s1_data256[27],  s1_data256[28], s1_data256[29],  s1_data256[30],  s1_data256[31]} ),
.rdata(s1c_data_crc_3[31:0])
);


crctab_ev4 lookup1_4
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[32], s1_data256[33],  s1_data256[34],  s1_data256[35],  s1_data256[36], s1_data256[37],  s1_data256[38],  s1_data256[39]} ),
.rdata(s1c_data_crc_4[31:0])
);


crctab_ev5 lookup1_5
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[40], s1_data256[41],  s1_data256[42],  s1_data256[43],  s1_data256[44], s1_data256[45],  s1_data256[46],  s1_data256[47]} ),
.rdata(s1c_data_crc_5[31:0])
);


crctab_ev6 lookup1_6
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[48], s1_data256[49],  s1_data256[50],  s1_data256[51],  s1_data256[52], s1_data256[53],  s1_data256[54],  s1_data256[55]} ),
.rdata(s1c_data_crc_6[31:0])
);


crctab_ev7 lookup1_7
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[56], s1_data256[57],  s1_data256[58],  s1_data256[59],  s1_data256[60], s1_data256[61],  s1_data256[62],  s1_data256[63]} ),
.rdata(s1c_data_crc_7[31:0])
);


crctab_ev8 lookup1_8
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[64], s1_data256[65],  s1_data256[66],  s1_data256[67],  s1_data256[68], s1_data256[69],  s1_data256[70],  s1_data256[71]} ),
.rdata(s1c_data_crc_8[31:0])
);


crctab_ev9 lookup1_9
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[72], s1_data256[73],  s1_data256[74],  s1_data256[75],  s1_data256[76], s1_data256[77],  s1_data256[78],  s1_data256[79]} ),
.rdata(s1c_data_crc_9[31:0])
);


crctab_ev10 lookup1_10
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[80], s1_data256[81],  s1_data256[82],  s1_data256[83],  s1_data256[84], s1_data256[85],  s1_data256[86],  s1_data256[87]} ),
.rdata(s1c_data_crc_10[31:0])
);


crctab_ev11 lookup1_11
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[88], s1_data256[89],  s1_data256[90],  s1_data256[91],  s1_data256[92], s1_data256[93],  s1_data256[94],  s1_data256[95]} ),
.rdata(s1c_data_crc_11[31:0])
);


crctab_ev12 lookup1_12
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[96], s1_data256[97],  s1_data256[98],  s1_data256[99],  s1_data256[100], s1_data256[101],  s1_data256[102],  s1_data256[103]} ),
.rdata(s1c_data_crc_12[31:0])
);


crctab_ev13 lookup1_13
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[104], s1_data256[105],  s1_data256[106],  s1_data256[107],  s1_data256[108], s1_data256[109],  s1_data256[110],  s1_data256[111]} ),
.rdata(s1c_data_crc_13[31:0])
);


crctab_ev14 lookup1_14
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[112], s1_data256[113],  s1_data256[114],  s1_data256[115],  s1_data256[116], s1_data256[117],  s1_data256[118],  s1_data256[119]} ),
.rdata(s1c_data_crc_14[31:0])
);


crctab_ev15 lookup1_15
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[120], s1_data256[121],  s1_data256[122],  s1_data256[123],  s1_data256[124], s1_data256[125],  s1_data256[126],  s1_data256[127]} ),
.rdata(s1c_data_crc_15[31:0])
);


crctab_ev16 lookup1_16
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[128], s1_data256[129],  s1_data256[130],  s1_data256[131],  s1_data256[132], s1_data256[133],  s1_data256[134],  s1_data256[135]} ),
.rdata(s1c_data_crc_16[31:0])
);


crctab_ev17 lookup1_17
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[136], s1_data256[137],  s1_data256[138],  s1_data256[139],  s1_data256[140], s1_data256[141],  s1_data256[142],  s1_data256[143]} ),
.rdata(s1c_data_crc_17[31:0])
);


crctab_ev18 lookup1_18
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[144], s1_data256[145],  s1_data256[146],  s1_data256[147],  s1_data256[148], s1_data256[149],  s1_data256[150],  s1_data256[151]} ),
.rdata(s1c_data_crc_18[31:0])
);


crctab_ev19 lookup1_19
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[152], s1_data256[153],  s1_data256[154],  s1_data256[155],  s1_data256[156], s1_data256[157],  s1_data256[158],  s1_data256[159]} ),
.rdata(s1c_data_crc_19[31:0])
);


crctab_ev20 lookup1_20
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[160], s1_data256[161],  s1_data256[162],  s1_data256[163],  s1_data256[164], s1_data256[165],  s1_data256[166],  s1_data256[167]} ),
.rdata(s1c_data_crc_20[31:0])
);


crctab_ev21 lookup1_21
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[168], s1_data256[169],  s1_data256[170],  s1_data256[171],  s1_data256[172], s1_data256[173],  s1_data256[174],  s1_data256[175]} ),
.rdata(s1c_data_crc_21[31:0])
);


crctab_ev22 lookup1_22
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[176], s1_data256[177],  s1_data256[178],  s1_data256[179],  s1_data256[180], s1_data256[181],  s1_data256[182],  s1_data256[183]} ),
.rdata(s1c_data_crc_22[31:0])
);


crctab_ev23 lookup1_23
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[184], s1_data256[185],  s1_data256[186],  s1_data256[187],  s1_data256[188], s1_data256[189],  s1_data256[190],  s1_data256[191]} ),
.rdata(s1c_data_crc_23[31:0])
);


crctab_ev24 lookup1_24
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[192], s1_data256[193],  s1_data256[194],  s1_data256[195],  s1_data256[196], s1_data256[197],  s1_data256[198],  s1_data256[199]} ),
.rdata(s1c_data_crc_24[31:0])
);


crctab_ev25 lookup1_25
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[200], s1_data256[201],  s1_data256[202],  s1_data256[203],  s1_data256[204], s1_data256[205],  s1_data256[206],  s1_data256[207]} ),
.rdata(s1c_data_crc_25[31:0])
);


crctab_ev26 lookup1_26
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[208], s1_data256[209],  s1_data256[210],  s1_data256[211],  s1_data256[212], s1_data256[213],  s1_data256[214],  s1_data256[215]} ),
.rdata(s1c_data_crc_26[31:0])
);


crctab_ev27 lookup1_27
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[216], s1_data256[217],  s1_data256[218],  s1_data256[219],  s1_data256[220], s1_data256[221],  s1_data256[222],  s1_data256[223]} ),
.rdata(s1c_data_crc_27[31:0])
);


crctab_ev28 lookup1_28
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[224], s1_data256[225],  s1_data256[226],  s1_data256[227],  s1_data256[228], s1_data256[229],  s1_data256[230],  s1_data256[231]} ),
.rdata(s1c_data_crc_28[31:0])
);


crctab_ev29 lookup1_29
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[232], s1_data256[233],  s1_data256[234],  s1_data256[235],  s1_data256[236], s1_data256[237],  s1_data256[238],  s1_data256[239]} ),
.rdata(s1c_data_crc_29[31:0])
);


crctab_ev30 lookup1_30
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[240], s1_data256[241],  s1_data256[242],  s1_data256[243],  s1_data256[244], s1_data256[245],  s1_data256[246],  s1_data256[247]} ),
.rdata(s1c_data_crc_30[31:0])
);


crctab_ev31 lookup1_31
(
.clk(i_clk),
.rstn(i_areset_n),
.addr({s1_data256[248], s1_data256[249],  s1_data256[250],  s1_data256[251],  s1_data256[252], s1_data256[253],  s1_data256[254],  s1_data256[255]} ),
.rdata(s1c_data_crc_31[31:0])
);


// STAGE 2 (225 lines) 32 instances of lookup
crctab_ev0 s2lookup_0
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[7:0]),
.rdata(s6c_crccrc_0)
);
crctab_ev0 s2lookup_1
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[15:8]),
.rdata(s6c_crccrc_1)
);
crctab_ev0 s2lookup_2
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[23:16]),
.rdata(s6c_crccrc_2)
);
crctab_ev0 s2lookup_3
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[31:24]),
.rdata(s6c_crccrc_3)
);
crctab_ev0 s2lookup_4
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[39:32]),
.rdata(s6c_crccrc_4)
);
crctab_ev0 s2lookup_5
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[47:40]),
.rdata(s6c_crccrc_5)
);
crctab_ev0 s2lookup_6
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[55:48]),
.rdata(s6c_crccrc_6)
);
crctab_ev0 s2lookup_7
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[63:56]),
.rdata(s6c_crccrc_7)
);
crctab_ev0 s2lookup_8
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[71:64]),
.rdata(s6c_crccrc_8)
);
crctab_ev0 s2lookup_9
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[79:72]),
.rdata(s6c_crccrc_9)
);
crctab_ev0 s2lookup_10
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[87:80]),
.rdata(s6c_crccrc_10)
);
crctab_ev0 s2lookup_11
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[95:88]),
.rdata(s6c_crccrc_11)
);
crctab_ev0 s2lookup_12
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[103:96]),
.rdata(s6c_crccrc_12)
);
crctab_ev0 s2lookup_13
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[111:104]),
.rdata(s6c_crccrc_13)
);
crctab_ev0 s2lookup_14
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[119:112]),
.rdata(s6c_crccrc_14)
);
crctab_ev0 s2lookup_15
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[127:120]),
.rdata(s6c_crccrc_15)
);
crctab_ev0 s2lookup_16
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[135:128]),
.rdata(s6c_crccrc_16)
);
crctab_ev0 s2lookup_17
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[143:136]),
.rdata(s6c_crccrc_17)
);
crctab_ev0 s2lookup_18
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[151:144]),
.rdata(s6c_crccrc_18)
);
crctab_ev0 s2lookup_19
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[159:152]),
.rdata(s6c_crccrc_19)
);
crctab_ev0 s2lookup_20
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[167:160]),
.rdata(s6c_crccrc_20)
);
crctab_ev0 s2lookup_21
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[175:168]),
.rdata(s6c_crccrc_21)
);
crctab_ev0 s2lookup_22
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[183:176]),
.rdata(s6c_crccrc_22)
);
crctab_ev0 s2lookup_23
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[191:184]),
.rdata(s6c_crccrc_23)
);
crctab_ev0 s2lookup_24
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[199:192]),
.rdata(s6c_crccrc_24)
);
crctab_ev0 s2lookup_25
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[207:200]),
.rdata(s6c_crccrc_25)
);
crctab_ev0 s2lookup_26
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[215:208]),
.rdata(s6c_crccrc_26)
);
crctab_ev0 s2lookup_27
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[223:216]),
.rdata(s6c_crccrc_27)
);
crctab_ev0 s2lookup_28
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[231:224]),
.rdata(s6c_crccrc_28)
);
crctab_ev0 s2lookup_29
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[239:232]),
.rdata(s6c_crccrc_29)
);
crctab_ev0 s2lookup_30
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[247:240]),
.rdata(s6c_crccrc_30)
);
crctab_ev0 s2lookup_31
(
.clk(i_clk),
.rstn(i_areset_n),
.addr(s6_crcdata256[255:248]),
.rdata(s6c_crccrc_31)
);




endmodule 
