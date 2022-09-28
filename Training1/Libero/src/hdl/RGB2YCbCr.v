// ----------------------------------------------------------------------------
// LegUp High-Level Synthesis Tool Version 9.2
// Copyright (c) 2015-2021 Microchip Technology Inc. All Rights Reserved.
// For support, please contact: legup@microchip.com
// Date: Wed Apr  7 13:17:01 2021
// ----------------------------------------------------------------------------
`define MEMORY_CONTROLLER_ADDR_SIZE 32
`define MEM_INIT_DIR ""
/* synthesis translate_off */
// For Microsemi, the simulation directory is different from
// the synthesis directory for memory initialization files.
`undef MEM_INIT_DIR
`define MEM_INIT_DIR "../mem_init/"
/* synthesis translate_on */

`timescale 1 ns / 1 ns
module RGB2YCbCr_legup_top
(
	clk,
	reset,
	start,
	ready,
	finish,
	input_fifo_R,
	input_fifo_ready,
	input_fifo_valid,
	input_fifo_G,
	input_fifo_B,
	output_fifo_Y,
	output_fifo_ready,
	output_fifo_valid,
	output_fifo_Cb,
	output_fifo_Cr
);

input  clk;
input  reset;
input  start;
output reg  ready;
output reg  finish;
input [7:0] input_fifo_R;
output reg  input_fifo_ready;
input  input_fifo_valid;
input [7:0] input_fifo_G;
input [7:0] input_fifo_B;
output reg [7:0] output_fifo_Y;
input  output_fifo_ready;
output reg  output_fifo_valid;
output reg [7:0] output_fifo_Cb;
output reg [7:0] output_fifo_Cr;
reg  RGB2YCbCr_legup_inst_clk;
reg  RGB2YCbCr_legup_inst_reset;
reg  RGB2YCbCr_legup_inst_start;
wire  RGB2YCbCr_legup_inst_ready;
wire  RGB2YCbCr_legup_inst_finish;
reg [7:0] RGB2YCbCr_legup_inst_input_fifo_R;
wire  RGB2YCbCr_legup_inst_input_fifo_ready;
reg  RGB2YCbCr_legup_inst_input_fifo_valid;
reg [7:0] RGB2YCbCr_legup_inst_input_fifo_G;
reg [7:0] RGB2YCbCr_legup_inst_input_fifo_B;
wire [7:0] RGB2YCbCr_legup_inst_output_fifo_Y;
reg  RGB2YCbCr_legup_inst_output_fifo_ready;
wire  RGB2YCbCr_legup_inst_output_fifo_valid;
wire [7:0] RGB2YCbCr_legup_inst_output_fifo_Cb;
wire [7:0] RGB2YCbCr_legup_inst_output_fifo_Cr;
reg  RGB2YCbCr_legup_inst_finish_reg;


RGB2YCbCr_legup RGB2YCbCr_legup_inst (
	.clk (RGB2YCbCr_legup_inst_clk),
	.reset (RGB2YCbCr_legup_inst_reset),
	.start (RGB2YCbCr_legup_inst_start),
	.ready (RGB2YCbCr_legup_inst_ready),
	.finish (RGB2YCbCr_legup_inst_finish),
	.input_fifo_R (RGB2YCbCr_legup_inst_input_fifo_R),
	.input_fifo_ready (RGB2YCbCr_legup_inst_input_fifo_ready),
	.input_fifo_valid (RGB2YCbCr_legup_inst_input_fifo_valid),
	.input_fifo_G (RGB2YCbCr_legup_inst_input_fifo_G),
	.input_fifo_B (RGB2YCbCr_legup_inst_input_fifo_B),
	.output_fifo_Y (RGB2YCbCr_legup_inst_output_fifo_Y),
	.output_fifo_ready (RGB2YCbCr_legup_inst_output_fifo_ready),
	.output_fifo_valid (RGB2YCbCr_legup_inst_output_fifo_valid),
	.output_fifo_Cb (RGB2YCbCr_legup_inst_output_fifo_Cb),
	.output_fifo_Cr (RGB2YCbCr_legup_inst_output_fifo_Cr)
);



always @(*) begin
	RGB2YCbCr_legup_inst_clk = clk;
end
always @(*) begin
	RGB2YCbCr_legup_inst_reset = reset;
end
always @(*) begin
	RGB2YCbCr_legup_inst_start = start;
end
always @(*) begin
	RGB2YCbCr_legup_inst_input_fifo_R = input_fifo_R;
end
always @(*) begin
	RGB2YCbCr_legup_inst_input_fifo_valid = input_fifo_valid;
end
always @(*) begin
	RGB2YCbCr_legup_inst_input_fifo_G = input_fifo_G;
end
always @(*) begin
	RGB2YCbCr_legup_inst_input_fifo_B = input_fifo_B;
end
always @(*) begin
	RGB2YCbCr_legup_inst_output_fifo_ready = output_fifo_ready;
end
always @(posedge clk) begin
	if ((reset | RGB2YCbCr_legup_inst_start)) begin
		RGB2YCbCr_legup_inst_finish_reg <= 1'd0;
	end
	if (RGB2YCbCr_legup_inst_finish) begin
		RGB2YCbCr_legup_inst_finish_reg <= 1'd1;
	end
end
always @(*) begin
	ready = RGB2YCbCr_legup_inst_ready;
end
always @(*) begin
	finish = RGB2YCbCr_legup_inst_finish;
end
always @(*) begin
	input_fifo_ready = RGB2YCbCr_legup_inst_input_fifo_ready;
end
always @(*) begin
	output_fifo_Y = RGB2YCbCr_legup_inst_output_fifo_Y;
end
always @(*) begin
	output_fifo_valid = RGB2YCbCr_legup_inst_output_fifo_valid;
end
always @(*) begin
	output_fifo_Cb = RGB2YCbCr_legup_inst_output_fifo_Cb;
end
always @(*) begin
	output_fifo_Cr = RGB2YCbCr_legup_inst_output_fifo_Cr;
end

endmodule
`timescale 1 ns / 1 ns
module legup_split_mult_unsigned_26_16_42_2
(
	clock,
	aclr,
	clken,
	dataa,
	datab,
	result
);

parameter [4:0] widtha = 5'd26;
parameter [4:0] widthb = 5'd16;
parameter [5:0] widthp = 6'd42;
parameter [1:0] pipeline = 2'd2;
parameter  representation = "UNSIGNED";
parameter  preserve_module_hierarchy = 1'd0;

input  clock;
input  aclr;
input  clken;
input [25:0] dataa;
input [15:0] datab;
output reg [41:0] result;
reg [8:0] lhs_in_8_0;
reg [15:0] rhs_in_15_0;
reg [24:0] mul_0_wire;
reg [24:0] mul_0_reg_out;
reg [16:0] lhs_in_25_9;
reg [16:0] mul_1_wire;
reg [16:0] mul_1_reg_out;
reg [8:0] mul_result_slice_8_0;
reg [8:0] mul_result_slice_8_0_1;
reg [16:0] mul_result_slice_25_9;


always @(*) begin
	lhs_in_8_0 = dataa[8:0];
end
always @(*) begin
	rhs_in_15_0 = datab[15:0];
end
always @(*) begin
	mul_0_wire = (lhs_in_8_0 * rhs_in_15_0);
end
always @(posedge clock) begin
	if (aclr) begin
		mul_0_reg_out <= 'd0;
	end
	if ((~(aclr) & clken)) begin
		mul_0_reg_out <= mul_0_wire;
	end
end
always @(*) begin
	lhs_in_25_9 = dataa[25:9];
end
always @(*) begin
	mul_1_wire = (lhs_in_25_9 * rhs_in_15_0);
end
always @(posedge clock) begin
	if (aclr) begin
		mul_1_reg_out <= 'd0;
	end
	if ((~(aclr) & clken)) begin
		mul_1_reg_out <= mul_1_wire;
	end
end
always @(*) begin
	mul_result_slice_8_0 = mul_0_reg_out[8:0];
end
always @(posedge clock) begin
	if (aclr) begin
		mul_result_slice_8_0_1 <= 'd0;
	end
	if ((~(aclr) & clken)) begin
		mul_result_slice_8_0_1 <= mul_result_slice_8_0;
	end
end
always @(posedge clock) begin
	if (aclr) begin
		mul_result_slice_25_9 <= 'd0;
	end
	if ((~(aclr) & clken)) begin
		mul_result_slice_25_9 <= (mul_0_reg_out[24:9] + mul_1_reg_out);
	end
end
always @(*) begin
	result = {mul_result_slice_25_9, mul_result_slice_8_0_1};
end
/*   %3 = mul i26 %bit_concat46, 16828, !dbg !5887, !MSB !5886, !LSB !5889, !extendFrom !5886, !legup.pipeline.start_time !5884, !legup.pipeline.avail_time !5889, !legup.pipeline.stage !5884*/
endmodule
`timescale 1 ns / 1 ns
module legup_split_mult_unsigned_26_15_41_2
(
	clock,
	aclr,
	clken,
	dataa,
	datab,
	result
);

parameter [4:0] widtha = 5'd26;
parameter [3:0] widthb = 4'd15;
parameter [5:0] widthp = 6'd41;
parameter [1:0] pipeline = 2'd2;
parameter  representation = "UNSIGNED";
parameter  preserve_module_hierarchy = 1'd0;

input  clock;
input  aclr;
input  clken;
input [25:0] dataa;
input [14:0] datab;
output reg [40:0] result;
reg [8:0] lhs_in_8_0;
reg [14:0] rhs_in_14_0;
reg [23:0] mul_0_wire;
reg [23:0] mul_0_reg_out;
reg [16:0] lhs_in_25_9;
reg [16:0] mul_1_wire;
reg [16:0] mul_1_reg_out;
reg [8:0] mul_result_slice_8_0;
reg [8:0] mul_result_slice_8_0_1;
reg [16:0] mul_result_slice_25_9;


always @(*) begin
	lhs_in_8_0 = dataa[8:0];
end
always @(*) begin
	rhs_in_14_0 = datab[14:0];
end
always @(*) begin
	mul_0_wire = (lhs_in_8_0 * rhs_in_14_0);
end
always @(posedge clock) begin
	if (aclr) begin
		mul_0_reg_out <= 'd0;
	end
	if ((~(aclr) & clken)) begin
		mul_0_reg_out <= mul_0_wire;
	end
end
always @(*) begin
	lhs_in_25_9 = dataa[25:9];
end
always @(*) begin
	mul_1_wire = (lhs_in_25_9 * rhs_in_14_0);
end
always @(posedge clock) begin
	if (aclr) begin
		mul_1_reg_out <= 'd0;
	end
	if ((~(aclr) & clken)) begin
		mul_1_reg_out <= mul_1_wire;
	end
end
always @(*) begin
	mul_result_slice_8_0 = mul_0_reg_out[8:0];
end
always @(posedge clock) begin
	if (aclr) begin
		mul_result_slice_8_0_1 <= 'd0;
	end
	if ((~(aclr) & clken)) begin
		mul_result_slice_8_0_1 <= mul_result_slice_8_0;
	end
end
always @(posedge clock) begin
	if (aclr) begin
		mul_result_slice_25_9 <= 'd0;
	end
	if ((~(aclr) & clken)) begin
		mul_result_slice_25_9 <= (mul_0_reg_out[23:9] + mul_1_reg_out);
	end
end
always @(*) begin
	result = {mul_result_slice_25_9, mul_result_slice_8_0_1};
end
/*   %9 = mul i26 %bit_concat46, 9713, !dbg !5916, !MSB !5886, !LSB !5884, !extendFrom !5886, !legup.pipeline.start_time !5884, !legup.pipeline.avail_time !5889, !legup.pipeline.stage !5884*/
endmodule
`timescale 1 ns / 1 ns
module RGB2YCbCr_legup
(
	clk,
	reset,
	start,
	ready,
	finish,
	input_fifo_R,
	input_fifo_ready,
	input_fifo_valid,
	input_fifo_G,
	input_fifo_B,
	output_fifo_Y,
	output_fifo_ready,
	output_fifo_valid,
	output_fifo_Cb,
	output_fifo_Cr
);

input  clk;
input  reset;
input  start;
output reg  ready;
output reg  finish;
input [7:0] input_fifo_R;
output reg  input_fifo_ready;
input  input_fifo_valid;
input [7:0] input_fifo_G;
input [7:0] input_fifo_B;
output reg [7:0] output_fifo_Y;
input  output_fifo_ready;
output reg  output_fifo_valid;
output reg [7:0] output_fifo_Cb;
output reg [7:0] output_fifo_Cr;
reg [7:0] RGB2YCbCr_legup_EEERKT3_exit91_0;
reg [7:0] RGB2YCbCr_legup_EEERKT3_exit91_1;
reg [7:0] RGB2YCbCr_legup_EEERKT3_exit91_2;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat46;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_3;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat45;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_negate;
reg [24:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_select43;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat44;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat42;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat41;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat40;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add6;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add5;
reg [26:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat39;
reg [26:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat38;
reg [26:0] RGB2YCbCr_legup_EEERKT3_exit91_4;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat37;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat36;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat35;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat34;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat33;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add11;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add13;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add14;
reg [26:0] RGB2YCbCr_legup_EEERKT3_exit91_5;
reg [27:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat32;
reg [27:0] RGB2YCbCr_legup_EEERKT3_exit91_6;
reg [19:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_select30;
reg [28:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat31;
reg [28:0] RGB2YCbCr_legup_EEERKT3_exit91_7;
reg [29:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat29;
reg [29:0] RGB2YCbCr_legup_EEERKT3_exit91_8;
reg [7:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_select28;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_9;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_10;
reg [26:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat27;
reg [26:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat26;
reg [26:0] RGB2YCbCr_legup_EEERKT3_exit91_11;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_negate13;
reg [21:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_select24;
reg [13:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_select21;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat25;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat23;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat22;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat20;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add18;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add19;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add20;
reg [26:0] RGB2YCbCr_legup_EEERKT3_exit91_12;
reg [27:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat19;
reg [27:0] RGB2YCbCr_legup_EEERKT3_exit91_13;
reg [19:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_select17;
reg [28:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat18;
reg [28:0] RGB2YCbCr_legup_EEERKT3_exit91_addconv;
reg [7:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_select16;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_negate21;
reg [21:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_select14;
reg [13:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_select11;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat15;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat13;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat12;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat10;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add26;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add27;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add28;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_14;
reg [26:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat9;
reg [26:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat8;
reg [26:0] RGB2YCbCr_legup_EEERKT3_exit91_15;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat7;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat6;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat5;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat4;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add22;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add23;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add24;
reg [26:0] RGB2YCbCr_legup_EEERKT3_exit91_16;
reg [27:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat3;
reg [27:0] RGB2YCbCr_legup_EEERKT3_exit91_17;
reg [19:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_select1;
reg [28:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat2;
reg [28:0] RGB2YCbCr_legup_EEERKT3_exit91_18;
reg [29:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat;
reg [29:0] RGB2YCbCr_legup_EEERKT3_exit91_19;
reg [7:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_select;
reg  RGB2YCbCr_legup_valid_bit_0;
reg  RGB2YCbCr_legup_state_stall_0;
reg  RGB2YCbCr_legup_state_enable_0;
reg  RGB2YCbCr_legup_valid_bit_1;
reg  RGB2YCbCr_legup_state_stall_1;
reg  RGB2YCbCr_legup_state_enable_1;
reg  RGB2YCbCr_legup_valid_bit_2;
reg  RGB2YCbCr_legup_state_stall_2;
reg  RGB2YCbCr_legup_state_enable_2;
reg  RGB2YCbCr_legup_valid_bit_3;
reg  RGB2YCbCr_legup_state_stall_3;
reg  RGB2YCbCr_legup_state_enable_3;
reg  RGB2YCbCr_legup_II_counter;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add_reg_stage1;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add6_reg_stage1;
reg [26:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat38_reg_stage2;
reg [27:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat32_reg_stage1;
reg [27:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat32_reg_stage2;
reg [28:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat31_reg_stage3;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add18_reg_stage1;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add19_reg_stage1;
reg [27:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat19_reg_stage2;
reg [28:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat18_reg_stage3;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add26_reg_stage1;
reg [25:0] RGB2YCbCr_legup_EEERKT3_exit91_sr_add27_reg_stage1;
reg [26:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat9_reg_stage2;
reg [27:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat3_reg_stage1;
reg [27:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat3_reg_stage2;
reg [28:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat2_reg_stage3;
reg  input_fifo_R_consumed_valid;
reg [7:0] input_fifo_R_consumed_data;
reg  input_fifo_R_consumed_taken;
reg  input_fifo_G_consumed_valid;
reg [7:0] input_fifo_G_consumed_data;
reg  input_fifo_G_consumed_taken;
reg  input_fifo_B_consumed_valid;
reg [7:0] input_fifo_B_consumed_data;
reg  input_fifo_B_consumed_taken;
wire [17:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat46_bit_select_operand_0;
reg  legup_split_mult_unsigned_26_16_42_20_clock;
reg  legup_split_mult_unsigned_26_16_42_20_aclr;
reg  legup_split_mult_unsigned_26_16_42_20_clken;
reg [25:0] legup_split_mult_unsigned_26_16_42_20_dataa;
wire [15:0] legup_split_mult_unsigned_26_16_42_20_datab;
wire [41:0] legup_split_mult_unsigned_26_16_42_20_result;
reg [41:0] legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_3_out_actual;
reg [25:0] legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_3_out;
reg  legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_3_en;
reg  legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_3_en_pipeline_cond;
wire [17:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat45_bit_select_operand_0;
wire  RGB2YCbCr_legup_EEERKT3_exit91_bit_concat44_bit_select_operand_2;
wire [13:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat42_bit_select_operand_0;
wire [3:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat42_bit_select_operand_4;
wire [9:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat41_bit_select_operand_0;
wire [7:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat41_bit_select_operand_4;
wire [2:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat40_bit_select_operand_0;
wire [14:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat40_bit_select_operand_4;
wire  RGB2YCbCr_legup_EEERKT3_exit91_bit_concat39_bit_select_operand_0;
wire  RGB2YCbCr_legup_EEERKT3_exit91_bit_concat38_bit_select_operand_0;
wire [17:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat37_bit_select_operand_0;
wire [13:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat36_bit_select_operand_0;
wire [3:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat36_bit_select_operand_4;
wire [9:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat35_bit_select_operand_0;
wire [7:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat35_bit_select_operand_4;
wire [6:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat34_bit_select_operand_0;
wire [10:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat34_bit_select_operand_4;
wire [5:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat33_bit_select_operand_0;
wire [11:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat33_bit_select_operand_4;
wire [1:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat32_bit_select_operand_0;
wire [8:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat31_bit_select_operand_0;
wire  RGB2YCbCr_legup_EEERKT3_exit91_bit_concat29_bit_select_operand_0;
reg  legup_split_mult_unsigned_26_15_41_21_clock;
reg  legup_split_mult_unsigned_26_15_41_21_aclr;
reg  legup_split_mult_unsigned_26_15_41_21_clken;
reg [25:0] legup_split_mult_unsigned_26_15_41_21_dataa;
wire [14:0] legup_split_mult_unsigned_26_15_41_21_datab;
wire [40:0] legup_split_mult_unsigned_26_15_41_21_result;
reg [40:0] legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_9_out_actual;
reg [25:0] legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_9_out;
reg  legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_9_en;
reg  legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_9_en_pipeline_cond;
reg  legup_split_mult_unsigned_26_16_42_22_clock;
reg  legup_split_mult_unsigned_26_16_42_22_aclr;
reg  legup_split_mult_unsigned_26_16_42_22_clken;
reg [25:0] legup_split_mult_unsigned_26_16_42_22_dataa;
wire [15:0] legup_split_mult_unsigned_26_16_42_22_datab;
wire [41:0] legup_split_mult_unsigned_26_16_42_22_result;
reg [41:0] legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_10_out_actual;
reg [25:0] legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_10_out;
reg  legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_10_en;
reg  legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_10_en_pipeline_cond;
wire  RGB2YCbCr_legup_EEERKT3_exit91_bit_concat27_bit_select_operand_0;
wire  RGB2YCbCr_legup_EEERKT3_exit91_bit_concat26_bit_select_operand_0;
wire [3:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat25_bit_select_operand_2;
wire [10:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat23_bit_select_operand_0;
wire [6:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat23_bit_select_operand_4;
wire [11:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat22_bit_select_operand_2;
wire [2:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat20_bit_select_operand_0;
wire [14:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat20_bit_select_operand_4;
wire [1:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat19_bit_select_operand_0;
wire [8:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat18_bit_select_operand_0;
wire [3:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat15_bit_select_operand_2;
wire [10:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat13_bit_select_operand_0;
wire [6:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat13_bit_select_operand_4;
wire [11:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat12_bit_select_operand_2;
wire [2:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat10_bit_select_operand_0;
wire [14:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat10_bit_select_operand_4;
reg  legup_split_mult_unsigned_26_16_42_23_clock;
reg  legup_split_mult_unsigned_26_16_42_23_aclr;
reg  legup_split_mult_unsigned_26_16_42_23_clken;
reg [25:0] legup_split_mult_unsigned_26_16_42_23_dataa;
wire [15:0] legup_split_mult_unsigned_26_16_42_23_datab;
wire [41:0] legup_split_mult_unsigned_26_16_42_23_result;
reg [41:0] legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_14_out_actual;
reg [25:0] legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_14_out;
reg  legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_14_en;
reg  legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_14_en_pipeline_cond;
wire  RGB2YCbCr_legup_EEERKT3_exit91_bit_concat9_bit_select_operand_0;
wire  RGB2YCbCr_legup_EEERKT3_exit91_bit_concat8_bit_select_operand_0;
wire [14:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat7_bit_select_operand_0;
wire [2:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat7_bit_select_operand_4;
wire [11:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat6_bit_select_operand_0;
wire [5:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat6_bit_select_operand_4;
wire [8:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat5_bit_select_operand_0;
wire [8:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat5_bit_select_operand_4;
wire [5:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat4_bit_select_operand_0;
wire [11:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat4_bit_select_operand_4;
wire [1:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat3_bit_select_operand_0;
wire [8:0] RGB2YCbCr_legup_EEERKT3_exit91_bit_concat2_bit_select_operand_0;
wire  RGB2YCbCr_legup_EEERKT3_exit91_bit_concat_bit_select_operand_0;
reg  output_fifo_Y_RGB2YCbCr_legup_state_3_not_accessed_due_to_stall_a;
reg  output_fifo_Y_RGB2YCbCr_legup_state_3_stalln_reg;
reg  output_fifo_Y_RGB2YCbCr_legup_state_3_enable_cond_a;
reg  output_fifo_Cb_RGB2YCbCr_legup_state_3_not_accessed_due_to_stall_a;
reg  output_fifo_Cb_RGB2YCbCr_legup_state_3_stalln_reg;
reg  output_fifo_Cb_RGB2YCbCr_legup_state_3_enable_cond_a;
reg  output_fifo_Cr_RGB2YCbCr_legup_state_3_not_accessed_due_to_stall_a;
reg  output_fifo_Cr_RGB2YCbCr_legup_state_3_stalln_reg;
reg  output_fifo_Cr_RGB2YCbCr_legup_state_3_enable_cond_a;

/*   %3 = mul i26 %bit_concat46, 16828, !dbg !5887, !MSB !5886, !LSB !5889, !extendFrom !5886, !legup.pipeline.start_time !5884, !legup.pipeline.avail_time !5889, !legup.pipeline.stage !5884*/
legup_split_mult_unsigned_26_16_42_2 legup_split_mult_unsigned_26_16_42_20 (
	.clock (legup_split_mult_unsigned_26_16_42_20_clock),
	.aclr (legup_split_mult_unsigned_26_16_42_20_aclr),
	.clken (legup_split_mult_unsigned_26_16_42_20_clken),
	.dataa (legup_split_mult_unsigned_26_16_42_20_dataa),
	.datab (legup_split_mult_unsigned_26_16_42_20_datab),
	.result (legup_split_mult_unsigned_26_16_42_20_result)
);

defparam
	legup_split_mult_unsigned_26_16_42_20.widtha = 26,
	legup_split_mult_unsigned_26_16_42_20.widthb = 16,
	legup_split_mult_unsigned_26_16_42_20.widthp = 42,
	legup_split_mult_unsigned_26_16_42_20.pipeline = 2,
	legup_split_mult_unsigned_26_16_42_20.representation = "UNSIGNED",
	legup_split_mult_unsigned_26_16_42_20.preserve_module_hierarchy = 0;

/*   %9 = mul i26 %bit_concat46, 9713, !dbg !5916, !MSB !5886, !LSB !5884, !extendFrom !5886, !legup.pipeline.start_time !5884, !legup.pipeline.avail_time !5889, !legup.pipeline.stage !5884*/
legup_split_mult_unsigned_26_15_41_2 legup_split_mult_unsigned_26_15_41_21 (
	.clock (legup_split_mult_unsigned_26_15_41_21_clock),
	.aclr (legup_split_mult_unsigned_26_15_41_21_aclr),
	.clken (legup_split_mult_unsigned_26_15_41_21_clken),
	.dataa (legup_split_mult_unsigned_26_15_41_21_dataa),
	.datab (legup_split_mult_unsigned_26_15_41_21_datab),
	.result (legup_split_mult_unsigned_26_15_41_21_result)
);

defparam
	legup_split_mult_unsigned_26_15_41_21.widtha = 26,
	legup_split_mult_unsigned_26_15_41_21.widthb = 15,
	legup_split_mult_unsigned_26_15_41_21.widthp = 41,
	legup_split_mult_unsigned_26_15_41_21.pipeline = 2,
	legup_split_mult_unsigned_26_15_41_21.representation = "UNSIGNED",
	legup_split_mult_unsigned_26_15_41_21.preserve_module_hierarchy = 0;

/*   %10 = mul i26 %bit_concat45, 19070, !dbg !5918, !MSB !5886, !LSB !5891, !extendFrom !5886, !legup.pipeline.start_time !5884, !legup.pipeline.avail_time !5889, !legup.pipeline.stage !5884*/
legup_split_mult_unsigned_26_16_42_2 legup_split_mult_unsigned_26_16_42_22 (
	.clock (legup_split_mult_unsigned_26_16_42_22_clock),
	.aclr (legup_split_mult_unsigned_26_16_42_22_aclr),
	.clken (legup_split_mult_unsigned_26_16_42_22_clken),
	.dataa (legup_split_mult_unsigned_26_16_42_22_dataa),
	.datab (legup_split_mult_unsigned_26_16_42_22_datab),
	.result (legup_split_mult_unsigned_26_16_42_22_result)
);

defparam
	legup_split_mult_unsigned_26_16_42_22.widtha = 26,
	legup_split_mult_unsigned_26_16_42_22.widthb = 16,
	legup_split_mult_unsigned_26_16_42_22.widthp = 42,
	legup_split_mult_unsigned_26_16_42_22.pipeline = 2,
	legup_split_mult_unsigned_26_16_42_22.representation = "UNSIGNED",
	legup_split_mult_unsigned_26_16_42_22.preserve_module_hierarchy = 0;

/*   %14 = mul i26 %bit_concat45, 24103, !dbg !5937, !MSB !5886, !LSB !5884, !extendFrom !5886, !legup.pipeline.start_time !5884, !legup.pipeline.avail_time !5889, !legup.pipeline.stage !5884*/
legup_split_mult_unsigned_26_16_42_2 legup_split_mult_unsigned_26_16_42_23 (
	.clock (legup_split_mult_unsigned_26_16_42_23_clock),
	.aclr (legup_split_mult_unsigned_26_16_42_23_aclr),
	.clken (legup_split_mult_unsigned_26_16_42_23_clken),
	.dataa (legup_split_mult_unsigned_26_16_42_23_dataa),
	.datab (legup_split_mult_unsigned_26_16_42_23_datab),
	.result (legup_split_mult_unsigned_26_16_42_23_result)
);

defparam
	legup_split_mult_unsigned_26_16_42_23.widtha = 26,
	legup_split_mult_unsigned_26_16_42_23.widthb = 16,
	legup_split_mult_unsigned_26_16_42_23.widthp = 42,
	legup_split_mult_unsigned_26_16_42_23.pipeline = 2,
	legup_split_mult_unsigned_26_16_42_23.representation = "UNSIGNED",
	legup_split_mult_unsigned_26_16_42_23.preserve_module_hierarchy = 0;


always @(*) begin
	RGB2YCbCr_legup_EEERKT3_exit91_0 = input_fifo_R_consumed_data;
end
always @(*) begin
	RGB2YCbCr_legup_EEERKT3_exit91_1 = input_fifo_G_consumed_data;
end
always @(*) begin
	RGB2YCbCr_legup_EEERKT3_exit91_2 = input_fifo_B_consumed_data;
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat46 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat46_bit_select_operand_0[17:0], RGB2YCbCr_legup_EEERKT3_exit91_0[7:0]};
end
always @(*) begin
	RGB2YCbCr_legup_EEERKT3_exit91_3 = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_3_out;
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat45 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat45_bit_select_operand_0[17:0], RGB2YCbCr_legup_EEERKT3_exit91_1[7:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_negate = (26'd0 - RGB2YCbCr_legup_EEERKT3_exit91_bit_concat45);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_select43 = RGB2YCbCr_legup_EEERKT3_exit91_sr_negate[24:0];
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat44 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_select43[24:0], RGB2YCbCr_legup_EEERKT3_exit91_bit_concat44_bit_select_operand_2};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat42 = {{RGB2YCbCr_legup_EEERKT3_exit91_bit_concat42_bit_select_operand_0[13:0], RGB2YCbCr_legup_EEERKT3_exit91_1[7:0]}, RGB2YCbCr_legup_EEERKT3_exit91_bit_concat42_bit_select_operand_4[3:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat44 + RGB2YCbCr_legup_EEERKT3_exit91_bit_concat42);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat41 = {{RGB2YCbCr_legup_EEERKT3_exit91_bit_concat41_bit_select_operand_0[9:0], RGB2YCbCr_legup_EEERKT3_exit91_1[7:0]}, RGB2YCbCr_legup_EEERKT3_exit91_bit_concat41_bit_select_operand_4[7:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat40 = {{RGB2YCbCr_legup_EEERKT3_exit91_bit_concat40_bit_select_operand_0[2:0], RGB2YCbCr_legup_EEERKT3_exit91_1[7:0]}, RGB2YCbCr_legup_EEERKT3_exit91_bit_concat40_bit_select_operand_4[14:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add6 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat41 + RGB2YCbCr_legup_EEERKT3_exit91_bit_concat40);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add5 = (RGB2YCbCr_legup_EEERKT3_exit91_sr_add_reg_stage1 + RGB2YCbCr_legup_EEERKT3_exit91_sr_add6_reg_stage1);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat39 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat39_bit_select_operand_0, RGB2YCbCr_legup_EEERKT3_exit91_3[25:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat38 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat38_bit_select_operand_0, RGB2YCbCr_legup_EEERKT3_exit91_sr_add5[25:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_4 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat38_reg_stage2 + RGB2YCbCr_legup_EEERKT3_exit91_bit_concat39);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat37 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat37_bit_select_operand_0[17:0], RGB2YCbCr_legup_EEERKT3_exit91_2[7:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat36 = {{RGB2YCbCr_legup_EEERKT3_exit91_bit_concat36_bit_select_operand_0[13:0], RGB2YCbCr_legup_EEERKT3_exit91_2[7:0]}, RGB2YCbCr_legup_EEERKT3_exit91_bit_concat36_bit_select_operand_4[3:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat35 = {{RGB2YCbCr_legup_EEERKT3_exit91_bit_concat35_bit_select_operand_0[9:0], RGB2YCbCr_legup_EEERKT3_exit91_2[7:0]}, RGB2YCbCr_legup_EEERKT3_exit91_bit_concat35_bit_select_operand_4[7:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat34 = {{RGB2YCbCr_legup_EEERKT3_exit91_bit_concat34_bit_select_operand_0[6:0], RGB2YCbCr_legup_EEERKT3_exit91_2[7:0]}, RGB2YCbCr_legup_EEERKT3_exit91_bit_concat34_bit_select_operand_4[10:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat33 = {{RGB2YCbCr_legup_EEERKT3_exit91_bit_concat33_bit_select_operand_0[5:0], RGB2YCbCr_legup_EEERKT3_exit91_2[7:0]}, RGB2YCbCr_legup_EEERKT3_exit91_bit_concat33_bit_select_operand_4[11:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add11 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat36 + RGB2YCbCr_legup_EEERKT3_exit91_bit_concat35);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add13 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat34 + RGB2YCbCr_legup_EEERKT3_exit91_bit_concat33);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add14 = (RGB2YCbCr_legup_EEERKT3_exit91_sr_add11 + RGB2YCbCr_legup_EEERKT3_exit91_sr_add13);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_5 = $signed(RGB2YCbCr_legup_EEERKT3_exit91_4);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat32 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat32_bit_select_operand_0[1:0], RGB2YCbCr_legup_EEERKT3_exit91_sr_add14[25:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_6 = ($signed({{1{RGB2YCbCr_legup_EEERKT3_exit91_5[26]}},RGB2YCbCr_legup_EEERKT3_exit91_5}) + RGB2YCbCr_legup_EEERKT3_exit91_bit_concat32_reg_stage2);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_select30 = RGB2YCbCr_legup_EEERKT3_exit91_6[27:8];
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat31 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat31_bit_select_operand_0[8:0], RGB2YCbCr_legup_EEERKT3_exit91_bit_select30[19:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_7 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat31_reg_stage3 + 29'd4096);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat29 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat29_bit_select_operand_0, RGB2YCbCr_legup_EEERKT3_exit91_7[28:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_8 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat29 + 30'd128);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_select28 = RGB2YCbCr_legup_EEERKT3_exit91_8[15:8];
end
always @(*) begin
	RGB2YCbCr_legup_EEERKT3_exit91_9 = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_9_out;
end
always @(*) begin
	RGB2YCbCr_legup_EEERKT3_exit91_10 = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_10_out;
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat27 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat27_bit_select_operand_0, RGB2YCbCr_legup_EEERKT3_exit91_9[25:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat26 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat26_bit_select_operand_0, RGB2YCbCr_legup_EEERKT3_exit91_10[25:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_11 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat26 + RGB2YCbCr_legup_EEERKT3_exit91_bit_concat27);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_negate13 = (26'd0 - RGB2YCbCr_legup_EEERKT3_exit91_bit_concat37);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_select24 = RGB2YCbCr_legup_EEERKT3_exit91_sr_negate13[21:0];
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_select21 = RGB2YCbCr_legup_EEERKT3_exit91_sr_negate13[13:0];
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat25 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_select24[21:0], RGB2YCbCr_legup_EEERKT3_exit91_bit_concat25_bit_select_operand_2[3:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat23 = {{RGB2YCbCr_legup_EEERKT3_exit91_bit_concat23_bit_select_operand_0[10:0], RGB2YCbCr_legup_EEERKT3_exit91_2[7:0]}, RGB2YCbCr_legup_EEERKT3_exit91_bit_concat23_bit_select_operand_4[6:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat22 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_select21[13:0], RGB2YCbCr_legup_EEERKT3_exit91_bit_concat22_bit_select_operand_2[11:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat20 = {{RGB2YCbCr_legup_EEERKT3_exit91_bit_concat20_bit_select_operand_0[2:0], RGB2YCbCr_legup_EEERKT3_exit91_2[7:0]}, RGB2YCbCr_legup_EEERKT3_exit91_bit_concat20_bit_select_operand_4[14:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add18 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat25 + RGB2YCbCr_legup_EEERKT3_exit91_bit_concat23);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add19 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat22 + RGB2YCbCr_legup_EEERKT3_exit91_bit_concat20);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add20 = (RGB2YCbCr_legup_EEERKT3_exit91_sr_add18_reg_stage1 + RGB2YCbCr_legup_EEERKT3_exit91_sr_add19_reg_stage1);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_12 = $signed(RGB2YCbCr_legup_EEERKT3_exit91_11);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat19 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat19_bit_select_operand_0[1:0], RGB2YCbCr_legup_EEERKT3_exit91_sr_add20[25:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_13 = ($signed({{1{RGB2YCbCr_legup_EEERKT3_exit91_12[26]}},RGB2YCbCr_legup_EEERKT3_exit91_12}) - RGB2YCbCr_legup_EEERKT3_exit91_bit_concat19_reg_stage2);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_select17 = RGB2YCbCr_legup_EEERKT3_exit91_13[27:8];
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat18 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat18_bit_select_operand_0[8:0], RGB2YCbCr_legup_EEERKT3_exit91_bit_select17[19:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_addconv = (29'd32896 - RGB2YCbCr_legup_EEERKT3_exit91_bit_concat18_reg_stage3);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_select16 = RGB2YCbCr_legup_EEERKT3_exit91_addconv[15:8];
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_negate21 = (26'd0 - RGB2YCbCr_legup_EEERKT3_exit91_bit_concat46);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_select14 = RGB2YCbCr_legup_EEERKT3_exit91_sr_negate21[21:0];
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_select11 = RGB2YCbCr_legup_EEERKT3_exit91_sr_negate21[13:0];
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat15 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_select14[21:0], RGB2YCbCr_legup_EEERKT3_exit91_bit_concat15_bit_select_operand_2[3:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat13 = {{RGB2YCbCr_legup_EEERKT3_exit91_bit_concat13_bit_select_operand_0[10:0], RGB2YCbCr_legup_EEERKT3_exit91_0[7:0]}, RGB2YCbCr_legup_EEERKT3_exit91_bit_concat13_bit_select_operand_4[6:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat12 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_select11[13:0], RGB2YCbCr_legup_EEERKT3_exit91_bit_concat12_bit_select_operand_2[11:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat10 = {{RGB2YCbCr_legup_EEERKT3_exit91_bit_concat10_bit_select_operand_0[2:0], RGB2YCbCr_legup_EEERKT3_exit91_0[7:0]}, RGB2YCbCr_legup_EEERKT3_exit91_bit_concat10_bit_select_operand_4[14:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add26 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat15 + RGB2YCbCr_legup_EEERKT3_exit91_bit_concat13);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add27 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat12 + RGB2YCbCr_legup_EEERKT3_exit91_bit_concat10);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add28 = (RGB2YCbCr_legup_EEERKT3_exit91_sr_add26_reg_stage1 + RGB2YCbCr_legup_EEERKT3_exit91_sr_add27_reg_stage1);
end
always @(*) begin
	RGB2YCbCr_legup_EEERKT3_exit91_14 = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_14_out;
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat9 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat9_bit_select_operand_0, RGB2YCbCr_legup_EEERKT3_exit91_sr_add28[25:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat8 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat8_bit_select_operand_0, RGB2YCbCr_legup_EEERKT3_exit91_14[25:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_15 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat9_reg_stage2 - RGB2YCbCr_legup_EEERKT3_exit91_bit_concat8);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat7 = {{RGB2YCbCr_legup_EEERKT3_exit91_bit_concat7_bit_select_operand_0[14:0], RGB2YCbCr_legup_EEERKT3_exit91_2[7:0]}, RGB2YCbCr_legup_EEERKT3_exit91_bit_concat7_bit_select_operand_4[2:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat6 = {{RGB2YCbCr_legup_EEERKT3_exit91_bit_concat6_bit_select_operand_0[11:0], RGB2YCbCr_legup_EEERKT3_exit91_2[7:0]}, RGB2YCbCr_legup_EEERKT3_exit91_bit_concat6_bit_select_operand_4[5:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat5 = {{RGB2YCbCr_legup_EEERKT3_exit91_bit_concat5_bit_select_operand_0[8:0], RGB2YCbCr_legup_EEERKT3_exit91_2[7:0]}, RGB2YCbCr_legup_EEERKT3_exit91_bit_concat5_bit_select_operand_4[8:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat4 = {{RGB2YCbCr_legup_EEERKT3_exit91_bit_concat4_bit_select_operand_0[5:0], RGB2YCbCr_legup_EEERKT3_exit91_2[7:0]}, RGB2YCbCr_legup_EEERKT3_exit91_bit_concat4_bit_select_operand_4[11:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add22 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat7 + RGB2YCbCr_legup_EEERKT3_exit91_bit_concat6);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add23 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat5 + RGB2YCbCr_legup_EEERKT3_exit91_bit_concat4);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add24 = (RGB2YCbCr_legup_EEERKT3_exit91_sr_add22 + RGB2YCbCr_legup_EEERKT3_exit91_sr_add23);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_16 = $signed(RGB2YCbCr_legup_EEERKT3_exit91_15);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat3 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat3_bit_select_operand_0[1:0], RGB2YCbCr_legup_EEERKT3_exit91_sr_add24[25:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_17 = ($signed({{1{RGB2YCbCr_legup_EEERKT3_exit91_16[26]}},RGB2YCbCr_legup_EEERKT3_exit91_16}) - RGB2YCbCr_legup_EEERKT3_exit91_bit_concat3_reg_stage2);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_select1 = RGB2YCbCr_legup_EEERKT3_exit91_17[27:8];
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat2 = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat2_bit_select_operand_0[8:0], RGB2YCbCr_legup_EEERKT3_exit91_bit_select1[19:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_18 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat2_reg_stage3 + 29'd32768);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat = {RGB2YCbCr_legup_EEERKT3_exit91_bit_concat_bit_select_operand_0, RGB2YCbCr_legup_EEERKT3_exit91_18[28:0]};
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_19 = (RGB2YCbCr_legup_EEERKT3_exit91_bit_concat + 30'd128);
end
always @(*) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_select = RGB2YCbCr_legup_EEERKT3_exit91_19[15:8];
end
always @(posedge clk) begin
	if (~(RGB2YCbCr_legup_state_stall_0)) begin
		RGB2YCbCr_legup_valid_bit_0 <= (RGB2YCbCr_legup_II_counter & start);
	end
	if (reset) begin
		RGB2YCbCr_legup_valid_bit_0 <= 1'd0;
	end
end
always @(*) begin
	RGB2YCbCr_legup_state_stall_0 = 1'd0;
	if (RGB2YCbCr_legup_state_stall_1) begin
		RGB2YCbCr_legup_state_stall_0 = 1'd1;
	end
	if ((RGB2YCbCr_legup_valid_bit_0 & ~(input_fifo_R_consumed_valid))) begin
		RGB2YCbCr_legup_state_stall_0 = 1'd1;
	end
	if ((RGB2YCbCr_legup_valid_bit_0 & ~(input_fifo_G_consumed_valid))) begin
		RGB2YCbCr_legup_state_stall_0 = 1'd1;
	end
	if ((RGB2YCbCr_legup_valid_bit_0 & ~(input_fifo_B_consumed_valid))) begin
		RGB2YCbCr_legup_state_stall_0 = 1'd1;
	end
end
always @(*) begin
	RGB2YCbCr_legup_state_enable_0 = (RGB2YCbCr_legup_valid_bit_0 & ~(RGB2YCbCr_legup_state_stall_0));
end
always @(posedge clk) begin
	if (~(RGB2YCbCr_legup_state_stall_1)) begin
		RGB2YCbCr_legup_valid_bit_1 <= RGB2YCbCr_legup_state_enable_0;
	end
	if (reset) begin
		RGB2YCbCr_legup_valid_bit_1 <= 1'd0;
	end
end
always @(*) begin
	RGB2YCbCr_legup_state_stall_1 = 1'd0;
	if (RGB2YCbCr_legup_state_stall_2) begin
		RGB2YCbCr_legup_state_stall_1 = 1'd1;
	end
end
always @(*) begin
	RGB2YCbCr_legup_state_enable_1 = (RGB2YCbCr_legup_valid_bit_1 & ~(RGB2YCbCr_legup_state_stall_1));
end
always @(posedge clk) begin
	if (~(RGB2YCbCr_legup_state_stall_2)) begin
		RGB2YCbCr_legup_valid_bit_2 <= RGB2YCbCr_legup_state_enable_1;
	end
	if (reset) begin
		RGB2YCbCr_legup_valid_bit_2 <= 1'd0;
	end
end
always @(*) begin
	RGB2YCbCr_legup_state_stall_2 = 1'd0;
	if (RGB2YCbCr_legup_state_stall_3) begin
		RGB2YCbCr_legup_state_stall_2 = 1'd1;
	end
end
always @(*) begin
	RGB2YCbCr_legup_state_enable_2 = (RGB2YCbCr_legup_valid_bit_2 & ~(RGB2YCbCr_legup_state_stall_2));
end
always @(posedge clk) begin
	if (~(RGB2YCbCr_legup_state_stall_3)) begin
		RGB2YCbCr_legup_valid_bit_3 <= RGB2YCbCr_legup_state_enable_2;
	end
	if (reset) begin
		RGB2YCbCr_legup_valid_bit_3 <= 1'd0;
	end
end
always @(*) begin
	RGB2YCbCr_legup_state_stall_3 = 1'd0;
	if ((((RGB2YCbCr_legup_valid_bit_3 & output_fifo_valid) & ~(output_fifo_ready)) & (output_fifo_Y_RGB2YCbCr_legup_state_3_not_accessed_due_to_stall_a | output_fifo_Y_RGB2YCbCr_legup_state_3_stalln_reg))) begin
		RGB2YCbCr_legup_state_stall_3 = 1'd1;
	end
	if ((((RGB2YCbCr_legup_valid_bit_3 & output_fifo_valid) & ~(output_fifo_ready)) & (output_fifo_Cb_RGB2YCbCr_legup_state_3_not_accessed_due_to_stall_a | output_fifo_Cb_RGB2YCbCr_legup_state_3_stalln_reg))) begin
		RGB2YCbCr_legup_state_stall_3 = 1'd1;
	end
	if ((((RGB2YCbCr_legup_valid_bit_3 & output_fifo_valid) & ~(output_fifo_ready)) & (output_fifo_Cr_RGB2YCbCr_legup_state_3_not_accessed_due_to_stall_a | output_fifo_Cr_RGB2YCbCr_legup_state_3_stalln_reg))) begin
		RGB2YCbCr_legup_state_stall_3 = 1'd1;
	end
end
always @(*) begin
	RGB2YCbCr_legup_state_enable_3 = (RGB2YCbCr_legup_valid_bit_3 & ~(RGB2YCbCr_legup_state_stall_3));
end
always @(posedge clk) begin
	RGB2YCbCr_legup_II_counter <= 1'd1;
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_0) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add_reg_stage1 <= RGB2YCbCr_legup_EEERKT3_exit91_sr_add;
	end
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_0) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add6_reg_stage1 <= RGB2YCbCr_legup_EEERKT3_exit91_sr_add6;
	end
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_1) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat38_reg_stage2 <= RGB2YCbCr_legup_EEERKT3_exit91_bit_concat38;
	end
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_0) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat32_reg_stage1 <= RGB2YCbCr_legup_EEERKT3_exit91_bit_concat32;
	end
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_1) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat32_reg_stage2 <= RGB2YCbCr_legup_EEERKT3_exit91_bit_concat32_reg_stage1;
	end
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_2) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat31_reg_stage3 <= RGB2YCbCr_legup_EEERKT3_exit91_bit_concat31;
	end
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_0) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add18_reg_stage1 <= RGB2YCbCr_legup_EEERKT3_exit91_sr_add18;
	end
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_0) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add19_reg_stage1 <= RGB2YCbCr_legup_EEERKT3_exit91_sr_add19;
	end
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_1) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat19_reg_stage2 <= RGB2YCbCr_legup_EEERKT3_exit91_bit_concat19;
	end
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_2) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat18_reg_stage3 <= RGB2YCbCr_legup_EEERKT3_exit91_bit_concat18;
	end
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_0) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add26_reg_stage1 <= RGB2YCbCr_legup_EEERKT3_exit91_sr_add26;
	end
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_0) begin
		RGB2YCbCr_legup_EEERKT3_exit91_sr_add27_reg_stage1 <= RGB2YCbCr_legup_EEERKT3_exit91_sr_add27;
	end
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_1) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat9_reg_stage2 <= RGB2YCbCr_legup_EEERKT3_exit91_bit_concat9;
	end
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_0) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat3_reg_stage1 <= RGB2YCbCr_legup_EEERKT3_exit91_bit_concat3;
	end
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_1) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat3_reg_stage2 <= RGB2YCbCr_legup_EEERKT3_exit91_bit_concat3_reg_stage1;
	end
end
always @(posedge clk) begin
	if (RGB2YCbCr_legup_state_enable_2) begin
		RGB2YCbCr_legup_EEERKT3_exit91_bit_concat2_reg_stage3 <= RGB2YCbCr_legup_EEERKT3_exit91_bit_concat2;
	end
end
always @(posedge clk) begin
	if (input_fifo_R_consumed_taken) begin
		input_fifo_R_consumed_valid <= 1'd0;
	end
	if ((input_fifo_ready & input_fifo_valid)) begin
		input_fifo_R_consumed_valid <= 1'd1;
	end
	if (reset) begin
		input_fifo_R_consumed_valid <= 1'd0;
	end
end
always @(posedge clk) begin
	if ((input_fifo_ready & input_fifo_valid)) begin
		input_fifo_R_consumed_data <= input_fifo_R;
	end
	if (reset) begin
		input_fifo_R_consumed_data <= 1'd0;
	end
end
always @(*) begin
	input_fifo_R_consumed_taken = 1'd0;
	if (RGB2YCbCr_legup_valid_bit_0) begin
		input_fifo_R_consumed_taken = ~(RGB2YCbCr_legup_state_stall_0);
	end
end
always @(posedge clk) begin
	if (input_fifo_G_consumed_taken) begin
		input_fifo_G_consumed_valid <= 1'd0;
	end
	if ((input_fifo_ready & input_fifo_valid)) begin
		input_fifo_G_consumed_valid <= 1'd1;
	end
	if (reset) begin
		input_fifo_G_consumed_valid <= 1'd0;
	end
end
always @(posedge clk) begin
	if ((input_fifo_ready & input_fifo_valid)) begin
		input_fifo_G_consumed_data <= input_fifo_G;
	end
	if (reset) begin
		input_fifo_G_consumed_data <= 1'd0;
	end
end
always @(*) begin
	input_fifo_G_consumed_taken = 1'd0;
	if (RGB2YCbCr_legup_valid_bit_0) begin
		input_fifo_G_consumed_taken = ~(RGB2YCbCr_legup_state_stall_0);
	end
end
always @(posedge clk) begin
	if (input_fifo_B_consumed_taken) begin
		input_fifo_B_consumed_valid <= 1'd0;
	end
	if ((input_fifo_ready & input_fifo_valid)) begin
		input_fifo_B_consumed_valid <= 1'd1;
	end
	if (reset) begin
		input_fifo_B_consumed_valid <= 1'd0;
	end
end
always @(posedge clk) begin
	if ((input_fifo_ready & input_fifo_valid)) begin
		input_fifo_B_consumed_data <= input_fifo_B;
	end
	if (reset) begin
		input_fifo_B_consumed_data <= 1'd0;
	end
end
always @(*) begin
	input_fifo_B_consumed_taken = 1'd0;
	if (RGB2YCbCr_legup_valid_bit_0) begin
		input_fifo_B_consumed_taken = ~(RGB2YCbCr_legup_state_stall_0);
	end
end
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat46_bit_select_operand_0 = 18'd0;
always @(*) begin
	legup_split_mult_unsigned_26_16_42_20_clock = clk;
end
always @(*) begin
	legup_split_mult_unsigned_26_16_42_20_aclr = reset;
end
always @(*) begin
	legup_split_mult_unsigned_26_16_42_20_clken = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_3_en;
end
always @(*) begin
	legup_split_mult_unsigned_26_16_42_20_dataa = RGB2YCbCr_legup_EEERKT3_exit91_bit_concat46;
end
assign legup_split_mult_unsigned_26_16_42_20_datab = 26'd16828;
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_3_out_actual = legup_split_mult_unsigned_26_16_42_20_result;
end
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_3_out = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_3_out_actual[25:0];
end
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_3_en = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_3_en_pipeline_cond;
end
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_3_en_pipeline_cond = ~(RGB2YCbCr_legup_state_stall_2);
end
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat45_bit_select_operand_0 = 18'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat44_bit_select_operand_2 = 1'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat42_bit_select_operand_0 = 14'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat42_bit_select_operand_4 = 4'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat41_bit_select_operand_0 = 10'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat41_bit_select_operand_4 = 8'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat40_bit_select_operand_0 = 3'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat40_bit_select_operand_4 = 15'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat39_bit_select_operand_0 = 1'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat38_bit_select_operand_0 = 1'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat37_bit_select_operand_0 = 18'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat36_bit_select_operand_0 = 14'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat36_bit_select_operand_4 = 4'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat35_bit_select_operand_0 = 10'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat35_bit_select_operand_4 = 8'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat34_bit_select_operand_0 = 7'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat34_bit_select_operand_4 = 11'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat33_bit_select_operand_0 = 6'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat33_bit_select_operand_4 = 12'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat32_bit_select_operand_0 = 2'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat31_bit_select_operand_0 = 9'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat29_bit_select_operand_0 = 1'd0;
always @(*) begin
	legup_split_mult_unsigned_26_15_41_21_clock = clk;
end
always @(*) begin
	legup_split_mult_unsigned_26_15_41_21_aclr = reset;
end
always @(*) begin
	legup_split_mult_unsigned_26_15_41_21_clken = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_9_en;
end
always @(*) begin
	legup_split_mult_unsigned_26_15_41_21_dataa = RGB2YCbCr_legup_EEERKT3_exit91_bit_concat46;
end
assign legup_split_mult_unsigned_26_15_41_21_datab = 26'd9713;
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_9_out_actual = legup_split_mult_unsigned_26_15_41_21_result;
end
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_9_out = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_9_out_actual[25:0];
end
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_9_en = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_9_en_pipeline_cond;
end
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_9_en_pipeline_cond = ~(RGB2YCbCr_legup_state_stall_2);
end
always @(*) begin
	legup_split_mult_unsigned_26_16_42_22_clock = clk;
end
always @(*) begin
	legup_split_mult_unsigned_26_16_42_22_aclr = reset;
end
always @(*) begin
	legup_split_mult_unsigned_26_16_42_22_clken = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_10_en;
end
always @(*) begin
	legup_split_mult_unsigned_26_16_42_22_dataa = RGB2YCbCr_legup_EEERKT3_exit91_bit_concat45;
end
assign legup_split_mult_unsigned_26_16_42_22_datab = 26'd19070;
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_10_out_actual = legup_split_mult_unsigned_26_16_42_22_result;
end
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_10_out = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_10_out_actual[25:0];
end
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_10_en = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_10_en_pipeline_cond;
end
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_10_en_pipeline_cond = ~(RGB2YCbCr_legup_state_stall_2);
end
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat27_bit_select_operand_0 = 1'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat26_bit_select_operand_0 = 1'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat25_bit_select_operand_2 = 4'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat23_bit_select_operand_0 = 11'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat23_bit_select_operand_4 = 7'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat22_bit_select_operand_2 = 12'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat20_bit_select_operand_0 = 3'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat20_bit_select_operand_4 = 15'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat19_bit_select_operand_0 = 2'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat18_bit_select_operand_0 = 9'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat15_bit_select_operand_2 = 4'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat13_bit_select_operand_0 = 11'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat13_bit_select_operand_4 = 7'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat12_bit_select_operand_2 = 12'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat10_bit_select_operand_0 = 3'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat10_bit_select_operand_4 = 15'd0;
always @(*) begin
	legup_split_mult_unsigned_26_16_42_23_clock = clk;
end
always @(*) begin
	legup_split_mult_unsigned_26_16_42_23_aclr = reset;
end
always @(*) begin
	legup_split_mult_unsigned_26_16_42_23_clken = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_14_en;
end
always @(*) begin
	legup_split_mult_unsigned_26_16_42_23_dataa = RGB2YCbCr_legup_EEERKT3_exit91_bit_concat45;
end
assign legup_split_mult_unsigned_26_16_42_23_datab = 26'd24103;
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_14_out_actual = legup_split_mult_unsigned_26_16_42_23_result;
end
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_14_out = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_14_out_actual[25:0];
end
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_14_en = legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_14_en_pipeline_cond;
end
always @(*) begin
	legup_mult_RGB2YCbCr_legup_EEERKT3_exit91_14_en_pipeline_cond = ~(RGB2YCbCr_legup_state_stall_2);
end
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat9_bit_select_operand_0 = 1'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat8_bit_select_operand_0 = 1'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat7_bit_select_operand_0 = 15'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat7_bit_select_operand_4 = 3'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat6_bit_select_operand_0 = 12'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat6_bit_select_operand_4 = 6'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat5_bit_select_operand_0 = 9'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat5_bit_select_operand_4 = 9'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat4_bit_select_operand_0 = 6'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat4_bit_select_operand_4 = 12'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat3_bit_select_operand_0 = 2'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat2_bit_select_operand_0 = 9'd0;
assign RGB2YCbCr_legup_EEERKT3_exit91_bit_concat_bit_select_operand_0 = 1'd0;
always @(posedge clk) begin
	output_fifo_Y_RGB2YCbCr_legup_state_3_not_accessed_due_to_stall_a <= ((RGB2YCbCr_legup_state_stall_3 & output_fifo_valid) & ~(output_fifo_ready));
end
always @(posedge clk) begin
	output_fifo_Y_RGB2YCbCr_legup_state_3_stalln_reg <= ~(RGB2YCbCr_legup_state_stall_3);
end
always @(*) begin
	output_fifo_Y_RGB2YCbCr_legup_state_3_enable_cond_a = (RGB2YCbCr_legup_valid_bit_3 & (output_fifo_Y_RGB2YCbCr_legup_state_3_not_accessed_due_to_stall_a | output_fifo_Y_RGB2YCbCr_legup_state_3_stalln_reg));
end
always @(posedge clk) begin
	output_fifo_Cb_RGB2YCbCr_legup_state_3_not_accessed_due_to_stall_a <= ((RGB2YCbCr_legup_state_stall_3 & output_fifo_valid) & ~(output_fifo_ready));
end
always @(posedge clk) begin
	output_fifo_Cb_RGB2YCbCr_legup_state_3_stalln_reg <= ~(RGB2YCbCr_legup_state_stall_3);
end
always @(*) begin
	output_fifo_Cb_RGB2YCbCr_legup_state_3_enable_cond_a = (RGB2YCbCr_legup_valid_bit_3 & (output_fifo_Cb_RGB2YCbCr_legup_state_3_not_accessed_due_to_stall_a | output_fifo_Cb_RGB2YCbCr_legup_state_3_stalln_reg));
end
always @(posedge clk) begin
	output_fifo_Cr_RGB2YCbCr_legup_state_3_not_accessed_due_to_stall_a <= ((RGB2YCbCr_legup_state_stall_3 & output_fifo_valid) & ~(output_fifo_ready));
end
always @(posedge clk) begin
	output_fifo_Cr_RGB2YCbCr_legup_state_3_stalln_reg <= ~(RGB2YCbCr_legup_state_stall_3);
end
always @(*) begin
	output_fifo_Cr_RGB2YCbCr_legup_state_3_enable_cond_a = (RGB2YCbCr_legup_valid_bit_3 & (output_fifo_Cr_RGB2YCbCr_legup_state_3_not_accessed_due_to_stall_a | output_fifo_Cr_RGB2YCbCr_legup_state_3_stalln_reg));
end
always @(*) begin
	ready = ~(RGB2YCbCr_legup_state_stall_0);
end
always @(posedge clk) begin
	finish <= RGB2YCbCr_legup_state_enable_3;
end
always @(*) begin
	input_fifo_ready = (~(input_fifo_B_consumed_valid) | input_fifo_B_consumed_taken);
	if (reset) begin
		input_fifo_ready = 1'd0;
	end
	if (reset) begin
		input_fifo_ready = 1'd0;
	end
	if (reset) begin
		input_fifo_ready = 1'd0;
	end
end
always @(*) begin
		output_fifo_Y = RGB2YCbCr_legup_EEERKT3_exit91_bit_select28;
end
always @(*) begin
	output_fifo_valid = 1'd0;
	if (output_fifo_Y_RGB2YCbCr_legup_state_3_enable_cond_a) begin
		output_fifo_valid = 1'd1;
	end
	if (output_fifo_Cb_RGB2YCbCr_legup_state_3_enable_cond_a) begin
		output_fifo_valid = 1'd1;
	end
	if (output_fifo_Cr_RGB2YCbCr_legup_state_3_enable_cond_a) begin
		output_fifo_valid = 1'd1;
	end
end
always @(*) begin
		output_fifo_Cb = RGB2YCbCr_legup_EEERKT3_exit91_bit_select16;
end
always @(*) begin
		output_fifo_Cr = RGB2YCbCr_legup_EEERKT3_exit91_bit_select;
end

endmodule
