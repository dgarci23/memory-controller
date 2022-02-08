// sdram_controller.v

// Generated using ACDS version 20.1 720

`timescale 1 ps / 1 ps
module sdram_controller (
		input  wire        sdram_pll_ref_clk_clk,     //   sdram_pll_ref_clk.clk
		input  wire        sdram_pll_ref_reset_reset, // sdram_pll_ref_reset.reset
		output wire        sdram_pll_sdram_clk_clk,   // sdram_pll_sdram_clk.clk
		input  wire [21:0] sdram_s1_address,          //            sdram_s1.address
		input  wire [3:0]  sdram_s1_byteenable_n,     //                    .byteenable_n
		input  wire        sdram_s1_chipselect,       //                    .chipselect
		input  wire [31:0] sdram_s1_writedata,        //                    .writedata
		input  wire        sdram_s1_read_n,           //                    .read_n
		input  wire        sdram_s1_write_n,          //                    .write_n
		output wire [31:0] sdram_s1_readdata,         //                    .readdata
		output wire        sdram_s1_readdatavalid,    //                    .readdatavalid
		output wire        sdram_s1_waitrequest,      //                    .waitrequest
		output wire [11:0] sdram_wire_addr,           //          sdram_wire.addr
		output wire [1:0]  sdram_wire_ba,             //                    .ba
		output wire        sdram_wire_cas_n,          //                    .cas_n
		output wire        sdram_wire_cke,            //                    .cke
		output wire        sdram_wire_cs_n,           //                    .cs_n
		inout  wire [31:0] sdram_wire_dq,             //                    .dq
		output wire [3:0]  sdram_wire_dqm,            //                    .dqm
		output wire        sdram_wire_ras_n,          //                    .ras_n
		output wire        sdram_wire_we_n            //                    .we_n
	);

	wire    sdram_pll_sys_clk_clk;          // sdram_pll:sys_clk_clk -> [rst_controller:clk, sdram:clk]
	wire    rst_controller_reset_out_reset; // rst_controller:reset_out -> sdram:reset_n
	wire    sdram_pll_reset_source_reset;   // sdram_pll:reset_source_reset -> rst_controller:reset_in0

	sdram_controller_sdram sdram (
		.clk            (sdram_pll_sys_clk_clk),           //   clk.clk
		.reset_n        (~rst_controller_reset_out_reset), // reset.reset_n
		.az_addr        (sdram_s1_address),                //    s1.address
		.az_be_n        (sdram_s1_byteenable_n),           //      .byteenable_n
		.az_cs          (sdram_s1_chipselect),             //      .chipselect
		.az_data        (sdram_s1_writedata),              //      .writedata
		.az_rd_n        (sdram_s1_read_n),                 //      .read_n
		.az_wr_n        (sdram_s1_write_n),                //      .write_n
		.za_data        (sdram_s1_readdata),               //      .readdata
		.za_valid       (sdram_s1_readdatavalid),          //      .readdatavalid
		.za_waitrequest (sdram_s1_waitrequest),            //      .waitrequest
		.zs_addr        (sdram_wire_addr),                 //  wire.export
		.zs_ba          (sdram_wire_ba),                   //      .export
		.zs_cas_n       (sdram_wire_cas_n),                //      .export
		.zs_cke         (sdram_wire_cke),                  //      .export
		.zs_cs_n        (sdram_wire_cs_n),                 //      .export
		.zs_dq          (sdram_wire_dq),                   //      .export
		.zs_dqm         (sdram_wire_dqm),                  //      .export
		.zs_ras_n       (sdram_wire_ras_n),                //      .export
		.zs_we_n        (sdram_wire_we_n)                  //      .export
	);

	sdram_controller_sdram_pll sdram_pll (
		.ref_clk_clk        (sdram_pll_ref_clk_clk),        //      ref_clk.clk
		.ref_reset_reset    (sdram_pll_ref_reset_reset),    //    ref_reset.reset
		.sys_clk_clk        (sdram_pll_sys_clk_clk),        //      sys_clk.clk
		.sdram_clk_clk      (sdram_pll_sdram_clk_clk),      //    sdram_clk.clk
		.reset_source_reset (sdram_pll_reset_source_reset)  // reset_source.reset
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (sdram_pll_reset_source_reset),   // reset_in0.reset
		.clk            (sdram_pll_sys_clk_clk),          //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

endmodule