module memory_controller


	(
		inout				[31:0]			SRAM_DQ,														// data
		output			[19:0]			SRAM_ADDR,
		output								SRAM_CE_N,
		output								SRAM_OE_N,
		output								SRAM_WE_N,
		output								SRAM_UB_N,
		output								SRAM_LB_N,
		input				[17:0]			SW,
		output			[17:0]			LEDR,
		input				[3:0]				KEY,
		input									CLOCK_50
	);
		
	sram_controller u0 (
		.sram_reset_reset             (1'b0),             //              sram_reset.reset
		.sram_clk_clk                 (CLOCK_50),                 //                sram_clk.clk
		.sram_external_interface_DQ   (SRAM_DQ),   // sram_external_interface.DQ
		.sram_external_interface_ADDR (SRAM_ADDR), //                        .ADDR
		.sram_external_interface_LB_N (SRAM_LB_N), //                        .LB_N
		.sram_external_interface_UB_N (SRAM_UB_N), //                        .UB_N
		.sram_external_interface_CE_N (SRAM_CE_N), //                        .CE_N
		.sram_external_interface_OE_N (SRAM_OE_N), //                        .OE_N
		.sram_external_interface_WE_N (SRAM_WE_N), //                        .WE_N
		.sram_avalon_sram_slave_address       (19'b0),       //  sram_avalon_sram_slave.address
		.sram_avalon_sram_slave_byteenable    (2'b11),    //                        .byteenable
		.sram_avalon_sram_slave_read          (KEY_DB[0]),          //                        .read
		.sram_avalon_sram_slave_write         (KEY_DB[1]),         //                        .write
		.sram_avalon_sram_slave_writedata     (SW[15:0]),     //                        .writedata
		.sram_avalon_sram_slave_readdata      (LEDR[15:0]),      //                        .readdata
		.sram_avalon_sram_slave_readdatavalid (LEDR[16])  //                        .readdatavalid
	);
	
	wire [1:0] KEY_DB;
	
	debouncer #(.SIZE(3)) debouncer (
		.in(~KEY),
		.out(KEY_DB),
		.clk(CLOCK_50)
	);
	
	/*edge_detector #(.SIZE(5)) edge_detector (
		.in(KEY_DB),
		.out(),
		.clk(CLOCK_50)
	);*/
	
	
endmodule