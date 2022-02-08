module top_sdram_controller

	(
		input							CLOCK_50,
		inout			[31:0]		DRAM_DQ,
		output		[3:0]			DRAM_DQM,
		output						DRAM_CKE, DRAM_CLK, DRAM_WE_N, DRAM_CS_N, DRAM_CAS_N, DRAM_RAS_N,
		output		[1:0]			DRAM_BA,
		output		[12:0]		DRAM_ADDR,
		
		input			[17:0]		SW,
		input			[3:0]			KEY,
		output		[17:0]		LEDR,
		output		[7:0]			LEDG
	);
		
	wire [3:0]	KEY_DB;

	debouncer #(.SIZE(4)) debouncer (
		.in(KEY),
		.out(KEY_DB),
		.clk(CLOCK_50)
	);
		
		
	sdram_controller u0 (
		.sdram_s1_address          (13'b0),          //            sdram_s1.address
		.sdram_s1_byteenable_n     (4'b0001),     //                    .byteenable_n
		.sdram_s1_chipselect       (1'b1),       //                    .chipselect
		.sdram_s1_writedata        (SW),        //                    .writedata
		.sdram_s1_read_n           (KEY_DB[0]),           //                    .read_n
		.sdram_s1_write_n          (KEY_DB[1]),          //                    .write_n
		.sdram_s1_readdata         (LEDR),         //                    .readdata
		.sdram_s1_readdatavalid    (LEDG[0]),    //                    .readdatavalid
		.sdram_s1_waitrequest      (LEDG[1]),      //                    .waitrequest
		.sdram_wire_addr           (DRAM_ADDR),           //          sdram_wire.addr
		.sdram_wire_ba             (DRAM_BA),             //                    .ba
		.sdram_wire_cas_n          (DRAM_CAS_N),          //                    .cas_n
		.sdram_wire_cke            (DRAM_CKE),            //                    .cke
		.sdram_wire_cs_n           (DRAM_CS_N),           //                    .cs_n
		.sdram_wire_dq             (DRAM_DQ),             //                    .dq
		.sdram_wire_dqm            (DRAM_DQM),            //                    .dqm
		.sdram_wire_ras_n          (DRAM_RAS_N),          //                    .ras_n
		.sdram_wire_we_n           (DRAM_WE_N),           //                    .we_n
		.sdram_pll_ref_clk_clk     (CLOCK_50),     //   sdram_pll_ref_clk.clk
		.sdram_pll_sdram_clk_clk   (DRAM_CLK),   // sdram_pll_sdram_clk.clk
		.sdram_pll_ref_reset_reset (1'b0)  // sdram_pll_ref_reset.reset
	);
	
endmodule