	sram_controller u0 (
		.sram_reset_reset                     (<connected-to-sram_reset_reset>),                     //              sram_reset.reset
		.sram_clk_clk                         (<connected-to-sram_clk_clk>),                         //                sram_clk.clk
		.sram_external_interface_DQ           (<connected-to-sram_external_interface_DQ>),           // sram_external_interface.DQ
		.sram_external_interface_ADDR         (<connected-to-sram_external_interface_ADDR>),         //                        .ADDR
		.sram_external_interface_LB_N         (<connected-to-sram_external_interface_LB_N>),         //                        .LB_N
		.sram_external_interface_UB_N         (<connected-to-sram_external_interface_UB_N>),         //                        .UB_N
		.sram_external_interface_CE_N         (<connected-to-sram_external_interface_CE_N>),         //                        .CE_N
		.sram_external_interface_OE_N         (<connected-to-sram_external_interface_OE_N>),         //                        .OE_N
		.sram_external_interface_WE_N         (<connected-to-sram_external_interface_WE_N>),         //                        .WE_N
		.sram_avalon_sram_slave_address       (<connected-to-sram_avalon_sram_slave_address>),       //  sram_avalon_sram_slave.address
		.sram_avalon_sram_slave_byteenable    (<connected-to-sram_avalon_sram_slave_byteenable>),    //                        .byteenable
		.sram_avalon_sram_slave_read          (<connected-to-sram_avalon_sram_slave_read>),          //                        .read
		.sram_avalon_sram_slave_write         (<connected-to-sram_avalon_sram_slave_write>),         //                        .write
		.sram_avalon_sram_slave_writedata     (<connected-to-sram_avalon_sram_slave_writedata>),     //                        .writedata
		.sram_avalon_sram_slave_readdata      (<connected-to-sram_avalon_sram_slave_readdata>),      //                        .readdata
		.sram_avalon_sram_slave_readdatavalid (<connected-to-sram_avalon_sram_slave_readdatavalid>)  //                        .readdatavalid
	);

