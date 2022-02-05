
module sram_controller (
	sram_reset_reset,
	sram_clk_clk,
	sram_external_interface_DQ,
	sram_external_interface_ADDR,
	sram_external_interface_LB_N,
	sram_external_interface_UB_N,
	sram_external_interface_CE_N,
	sram_external_interface_OE_N,
	sram_external_interface_WE_N,
	sram_avalon_sram_slave_address,
	sram_avalon_sram_slave_byteenable,
	sram_avalon_sram_slave_read,
	sram_avalon_sram_slave_write,
	sram_avalon_sram_slave_writedata,
	sram_avalon_sram_slave_readdata,
	sram_avalon_sram_slave_readdatavalid);	

	input		sram_reset_reset;
	input		sram_clk_clk;
	inout	[15:0]	sram_external_interface_DQ;
	output	[19:0]	sram_external_interface_ADDR;
	output		sram_external_interface_LB_N;
	output		sram_external_interface_UB_N;
	output		sram_external_interface_CE_N;
	output		sram_external_interface_OE_N;
	output		sram_external_interface_WE_N;
	input	[19:0]	sram_avalon_sram_slave_address;
	input	[1:0]	sram_avalon_sram_slave_byteenable;
	input		sram_avalon_sram_slave_read;
	input		sram_avalon_sram_slave_write;
	input	[15:0]	sram_avalon_sram_slave_writedata;
	output	[15:0]	sram_avalon_sram_slave_readdata;
	output		sram_avalon_sram_slave_readdatavalid;
endmodule
