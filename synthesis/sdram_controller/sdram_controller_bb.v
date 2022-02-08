
module sdram_controller (
	sdram_s1_address,
	sdram_s1_byteenable_n,
	sdram_s1_chipselect,
	sdram_s1_writedata,
	sdram_s1_read_n,
	sdram_s1_write_n,
	sdram_s1_readdata,
	sdram_s1_readdatavalid,
	sdram_s1_waitrequest,
	sdram_wire_addr,
	sdram_wire_ba,
	sdram_wire_cas_n,
	sdram_wire_cke,
	sdram_wire_cs_n,
	sdram_wire_dq,
	sdram_wire_dqm,
	sdram_wire_ras_n,
	sdram_wire_we_n,
	sdram_pll_ref_clk_clk,
	sdram_pll_sdram_clk_clk,
	sdram_pll_ref_reset_reset);	

	input	[21:0]	sdram_s1_address;
	input	[3:0]	sdram_s1_byteenable_n;
	input		sdram_s1_chipselect;
	input	[31:0]	sdram_s1_writedata;
	input		sdram_s1_read_n;
	input		sdram_s1_write_n;
	output	[31:0]	sdram_s1_readdata;
	output		sdram_s1_readdatavalid;
	output		sdram_s1_waitrequest;
	output	[11:0]	sdram_wire_addr;
	output	[1:0]	sdram_wire_ba;
	output		sdram_wire_cas_n;
	output		sdram_wire_cke;
	output		sdram_wire_cs_n;
	inout	[31:0]	sdram_wire_dq;
	output	[3:0]	sdram_wire_dqm;
	output		sdram_wire_ras_n;
	output		sdram_wire_we_n;
	input		sdram_pll_ref_clk_clk;
	output		sdram_pll_sdram_clk_clk;
	input		sdram_pll_ref_reset_reset;
endmodule
