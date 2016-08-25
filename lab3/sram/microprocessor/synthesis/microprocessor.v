// microprocessor.v

// Generated using ACDS version 15.1 189

`timescale 1 ps / 1 ps
module microprocessor (
		output wire [7:0] address_export, // address.export
		input  wire       clk_clk,        //     clk.clk
		input  wire [7:0] data_in_port,   //    data.in_port
		output wire [7:0] data_out_port,  //        .out_port
		output wire [7:0] leds_export,    //    leds.export
		output wire       oe_export,      //      oe.export
		input  wire       reset_reset_n,  //   reset.reset_n
		output wire       we_export       //      we.export
	);

	wire  [31:0] nios2_sram_data_master_readdata;                           // mm_interconnect_0:nios2_sram_data_master_readdata -> nios2_sram:d_readdata
	wire         nios2_sram_data_master_waitrequest;                        // mm_interconnect_0:nios2_sram_data_master_waitrequest -> nios2_sram:d_waitrequest
	wire         nios2_sram_data_master_debugaccess;                        // nios2_sram:debug_mem_slave_debugaccess_to_roms -> mm_interconnect_0:nios2_sram_data_master_debugaccess
	wire  [13:0] nios2_sram_data_master_address;                            // nios2_sram:d_address -> mm_interconnect_0:nios2_sram_data_master_address
	wire   [3:0] nios2_sram_data_master_byteenable;                         // nios2_sram:d_byteenable -> mm_interconnect_0:nios2_sram_data_master_byteenable
	wire         nios2_sram_data_master_read;                               // nios2_sram:d_read -> mm_interconnect_0:nios2_sram_data_master_read
	wire         nios2_sram_data_master_write;                              // nios2_sram:d_write -> mm_interconnect_0:nios2_sram_data_master_write
	wire  [31:0] nios2_sram_data_master_writedata;                          // nios2_sram:d_writedata -> mm_interconnect_0:nios2_sram_data_master_writedata
	wire  [31:0] nios2_sram_instruction_master_readdata;                    // mm_interconnect_0:nios2_sram_instruction_master_readdata -> nios2_sram:i_readdata
	wire         nios2_sram_instruction_master_waitrequest;                 // mm_interconnect_0:nios2_sram_instruction_master_waitrequest -> nios2_sram:i_waitrequest
	wire  [13:0] nios2_sram_instruction_master_address;                     // nios2_sram:i_address -> mm_interconnect_0:nios2_sram_instruction_master_address
	wire         nios2_sram_instruction_master_read;                        // nios2_sram:i_read -> mm_interconnect_0:nios2_sram_instruction_master_read
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_chipselect;  // mm_interconnect_0:jtag_uart_avalon_jtag_slave_chipselect -> jtag_uart:av_chipselect
	wire  [31:0] mm_interconnect_0_jtag_uart_avalon_jtag_slave_readdata;    // jtag_uart:av_readdata -> mm_interconnect_0:jtag_uart_avalon_jtag_slave_readdata
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_waitrequest; // jtag_uart:av_waitrequest -> mm_interconnect_0:jtag_uart_avalon_jtag_slave_waitrequest
	wire   [0:0] mm_interconnect_0_jtag_uart_avalon_jtag_slave_address;     // mm_interconnect_0:jtag_uart_avalon_jtag_slave_address -> jtag_uart:av_address
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_read;        // mm_interconnect_0:jtag_uart_avalon_jtag_slave_read -> jtag_uart:av_read_n
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_write;       // mm_interconnect_0:jtag_uart_avalon_jtag_slave_write -> jtag_uart:av_write_n
	wire  [31:0] mm_interconnect_0_jtag_uart_avalon_jtag_slave_writedata;   // mm_interconnect_0:jtag_uart_avalon_jtag_slave_writedata -> jtag_uart:av_writedata
	wire  [31:0] mm_interconnect_0_nios2_sram_debug_mem_slave_readdata;     // nios2_sram:debug_mem_slave_readdata -> mm_interconnect_0:nios2_sram_debug_mem_slave_readdata
	wire         mm_interconnect_0_nios2_sram_debug_mem_slave_waitrequest;  // nios2_sram:debug_mem_slave_waitrequest -> mm_interconnect_0:nios2_sram_debug_mem_slave_waitrequest
	wire         mm_interconnect_0_nios2_sram_debug_mem_slave_debugaccess;  // mm_interconnect_0:nios2_sram_debug_mem_slave_debugaccess -> nios2_sram:debug_mem_slave_debugaccess
	wire   [8:0] mm_interconnect_0_nios2_sram_debug_mem_slave_address;      // mm_interconnect_0:nios2_sram_debug_mem_slave_address -> nios2_sram:debug_mem_slave_address
	wire         mm_interconnect_0_nios2_sram_debug_mem_slave_read;         // mm_interconnect_0:nios2_sram_debug_mem_slave_read -> nios2_sram:debug_mem_slave_read
	wire   [3:0] mm_interconnect_0_nios2_sram_debug_mem_slave_byteenable;   // mm_interconnect_0:nios2_sram_debug_mem_slave_byteenable -> nios2_sram:debug_mem_slave_byteenable
	wire         mm_interconnect_0_nios2_sram_debug_mem_slave_write;        // mm_interconnect_0:nios2_sram_debug_mem_slave_write -> nios2_sram:debug_mem_slave_write
	wire  [31:0] mm_interconnect_0_nios2_sram_debug_mem_slave_writedata;    // mm_interconnect_0:nios2_sram_debug_mem_slave_writedata -> nios2_sram:debug_mem_slave_writedata
	wire         mm_interconnect_0_onchip_memory_s1_chipselect;             // mm_interconnect_0:onchip_memory_s1_chipselect -> onchip_memory:chipselect
	wire  [31:0] mm_interconnect_0_onchip_memory_s1_readdata;               // onchip_memory:readdata -> mm_interconnect_0:onchip_memory_s1_readdata
	wire   [9:0] mm_interconnect_0_onchip_memory_s1_address;                // mm_interconnect_0:onchip_memory_s1_address -> onchip_memory:address
	wire   [3:0] mm_interconnect_0_onchip_memory_s1_byteenable;             // mm_interconnect_0:onchip_memory_s1_byteenable -> onchip_memory:byteenable
	wire         mm_interconnect_0_onchip_memory_s1_write;                  // mm_interconnect_0:onchip_memory_s1_write -> onchip_memory:write
	wire  [31:0] mm_interconnect_0_onchip_memory_s1_writedata;              // mm_interconnect_0:onchip_memory_s1_writedata -> onchip_memory:writedata
	wire         mm_interconnect_0_onchip_memory_s1_clken;                  // mm_interconnect_0:onchip_memory_s1_clken -> onchip_memory:clken
	wire         mm_interconnect_0_leds_s1_chipselect;                      // mm_interconnect_0:LEDs_s1_chipselect -> LEDs:chipselect
	wire  [31:0] mm_interconnect_0_leds_s1_readdata;                        // LEDs:readdata -> mm_interconnect_0:LEDs_s1_readdata
	wire   [1:0] mm_interconnect_0_leds_s1_address;                         // mm_interconnect_0:LEDs_s1_address -> LEDs:address
	wire         mm_interconnect_0_leds_s1_write;                           // mm_interconnect_0:LEDs_s1_write -> LEDs:write_n
	wire  [31:0] mm_interconnect_0_leds_s1_writedata;                       // mm_interconnect_0:LEDs_s1_writedata -> LEDs:writedata
	wire         mm_interconnect_0_data_s1_chipselect;                      // mm_interconnect_0:data_s1_chipselect -> data:chipselect
	wire  [31:0] mm_interconnect_0_data_s1_readdata;                        // data:readdata -> mm_interconnect_0:data_s1_readdata
	wire   [1:0] mm_interconnect_0_data_s1_address;                         // mm_interconnect_0:data_s1_address -> data:address
	wire         mm_interconnect_0_data_s1_write;                           // mm_interconnect_0:data_s1_write -> data:write_n
	wire  [31:0] mm_interconnect_0_data_s1_writedata;                       // mm_interconnect_0:data_s1_writedata -> data:writedata
	wire         mm_interconnect_0_address_s1_chipselect;                   // mm_interconnect_0:address_s1_chipselect -> address:chipselect
	wire  [31:0] mm_interconnect_0_address_s1_readdata;                     // address:readdata -> mm_interconnect_0:address_s1_readdata
	wire   [1:0] mm_interconnect_0_address_s1_address;                      // mm_interconnect_0:address_s1_address -> address:address
	wire         mm_interconnect_0_address_s1_write;                        // mm_interconnect_0:address_s1_write -> address:write_n
	wire  [31:0] mm_interconnect_0_address_s1_writedata;                    // mm_interconnect_0:address_s1_writedata -> address:writedata
	wire         mm_interconnect_0_oe_s1_chipselect;                        // mm_interconnect_0:oe_s1_chipselect -> oe:chipselect
	wire  [31:0] mm_interconnect_0_oe_s1_readdata;                          // oe:readdata -> mm_interconnect_0:oe_s1_readdata
	wire   [1:0] mm_interconnect_0_oe_s1_address;                           // mm_interconnect_0:oe_s1_address -> oe:address
	wire         mm_interconnect_0_oe_s1_write;                             // mm_interconnect_0:oe_s1_write -> oe:write_n
	wire  [31:0] mm_interconnect_0_oe_s1_writedata;                         // mm_interconnect_0:oe_s1_writedata -> oe:writedata
	wire         mm_interconnect_0_we_s1_chipselect;                        // mm_interconnect_0:we_s1_chipselect -> we:chipselect
	wire  [31:0] mm_interconnect_0_we_s1_readdata;                          // we:readdata -> mm_interconnect_0:we_s1_readdata
	wire   [1:0] mm_interconnect_0_we_s1_address;                           // mm_interconnect_0:we_s1_address -> we:address
	wire         mm_interconnect_0_we_s1_write;                             // mm_interconnect_0:we_s1_write -> we:write_n
	wire  [31:0] mm_interconnect_0_we_s1_writedata;                         // mm_interconnect_0:we_s1_writedata -> we:writedata
	wire         irq_mapper_receiver0_irq;                                  // jtag_uart:av_irq -> irq_mapper:receiver0_irq
	wire  [31:0] nios2_sram_irq_irq;                                        // irq_mapper:sender_irq -> nios2_sram:irq
	wire         rst_controller_reset_out_reset;                            // rst_controller:reset_out -> [LEDs:reset_n, address:reset_n, data:reset_n, irq_mapper:reset, jtag_uart:rst_n, mm_interconnect_0:nios2_sram_reset_reset_bridge_in_reset_reset, nios2_sram:reset_n, oe:reset_n, onchip_memory:reset, rst_translator:in_reset, we:reset_n]
	wire         rst_controller_reset_out_reset_req;                        // rst_controller:reset_req -> [nios2_sram:reset_req, onchip_memory:reset_req, rst_translator:reset_req_in]
	wire         nios2_sram_debug_reset_request_reset;                      // nios2_sram:debug_reset_request -> rst_controller:reset_in1

	microprocessor_LEDs leds (
		.clk        (clk_clk),                              //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),      //               reset.reset_n
		.address    (mm_interconnect_0_leds_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_leds_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_leds_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_leds_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_leds_s1_readdata),   //                    .readdata
		.out_port   (leds_export)                           // external_connection.export
	);

	microprocessor_LEDs address (
		.clk        (clk_clk),                                 //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),         //               reset.reset_n
		.address    (mm_interconnect_0_address_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_address_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_address_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_address_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_address_s1_readdata),   //                    .readdata
		.out_port   (address_export)                           // external_connection.export
	);

	microprocessor_data data (
		.clk        (clk_clk),                              //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),      //               reset.reset_n
		.address    (mm_interconnect_0_data_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_data_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_data_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_data_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_data_s1_readdata),   //                    .readdata
		.in_port    (data_in_port),                         // external_connection.export
		.out_port   (data_out_port)                         //                    .export
	);

	microprocessor_jtag_uart jtag_uart (
		.clk            (clk_clk),                                                   //               clk.clk
		.rst_n          (~rst_controller_reset_out_reset),                           //             reset.reset_n
		.av_chipselect  (mm_interconnect_0_jtag_uart_avalon_jtag_slave_chipselect),  // avalon_jtag_slave.chipselect
		.av_address     (mm_interconnect_0_jtag_uart_avalon_jtag_slave_address),     //                  .address
		.av_read_n      (~mm_interconnect_0_jtag_uart_avalon_jtag_slave_read),       //                  .read_n
		.av_readdata    (mm_interconnect_0_jtag_uart_avalon_jtag_slave_readdata),    //                  .readdata
		.av_write_n     (~mm_interconnect_0_jtag_uart_avalon_jtag_slave_write),      //                  .write_n
		.av_writedata   (mm_interconnect_0_jtag_uart_avalon_jtag_slave_writedata),   //                  .writedata
		.av_waitrequest (mm_interconnect_0_jtag_uart_avalon_jtag_slave_waitrequest), //                  .waitrequest
		.av_irq         (irq_mapper_receiver0_irq)                                   //               irq.irq
	);

	microprocessor_nios2_sram nios2_sram (
		.clk                                 (clk_clk),                                                  //                       clk.clk
		.reset_n                             (~rst_controller_reset_out_reset),                          //                     reset.reset_n
		.reset_req                           (rst_controller_reset_out_reset_req),                       //                          .reset_req
		.d_address                           (nios2_sram_data_master_address),                           //               data_master.address
		.d_byteenable                        (nios2_sram_data_master_byteenable),                        //                          .byteenable
		.d_read                              (nios2_sram_data_master_read),                              //                          .read
		.d_readdata                          (nios2_sram_data_master_readdata),                          //                          .readdata
		.d_waitrequest                       (nios2_sram_data_master_waitrequest),                       //                          .waitrequest
		.d_write                             (nios2_sram_data_master_write),                             //                          .write
		.d_writedata                         (nios2_sram_data_master_writedata),                         //                          .writedata
		.debug_mem_slave_debugaccess_to_roms (nios2_sram_data_master_debugaccess),                       //                          .debugaccess
		.i_address                           (nios2_sram_instruction_master_address),                    //        instruction_master.address
		.i_read                              (nios2_sram_instruction_master_read),                       //                          .read
		.i_readdata                          (nios2_sram_instruction_master_readdata),                   //                          .readdata
		.i_waitrequest                       (nios2_sram_instruction_master_waitrequest),                //                          .waitrequest
		.irq                                 (nios2_sram_irq_irq),                                       //                       irq.irq
		.debug_reset_request                 (nios2_sram_debug_reset_request_reset),                     //       debug_reset_request.reset
		.debug_mem_slave_address             (mm_interconnect_0_nios2_sram_debug_mem_slave_address),     //           debug_mem_slave.address
		.debug_mem_slave_byteenable          (mm_interconnect_0_nios2_sram_debug_mem_slave_byteenable),  //                          .byteenable
		.debug_mem_slave_debugaccess         (mm_interconnect_0_nios2_sram_debug_mem_slave_debugaccess), //                          .debugaccess
		.debug_mem_slave_read                (mm_interconnect_0_nios2_sram_debug_mem_slave_read),        //                          .read
		.debug_mem_slave_readdata            (mm_interconnect_0_nios2_sram_debug_mem_slave_readdata),    //                          .readdata
		.debug_mem_slave_waitrequest         (mm_interconnect_0_nios2_sram_debug_mem_slave_waitrequest), //                          .waitrequest
		.debug_mem_slave_write               (mm_interconnect_0_nios2_sram_debug_mem_slave_write),       //                          .write
		.debug_mem_slave_writedata           (mm_interconnect_0_nios2_sram_debug_mem_slave_writedata),   //                          .writedata
		.dummy_ci_port                       ()                                                          // custom_instruction_master.readra
	);

	microprocessor_oe oe (
		.clk        (clk_clk),                            //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),    //               reset.reset_n
		.address    (mm_interconnect_0_oe_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_oe_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_oe_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_oe_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_oe_s1_readdata),   //                    .readdata
		.out_port   (oe_export)                           // external_connection.export
	);

	microprocessor_onchip_memory onchip_memory (
		.clk        (clk_clk),                                       //   clk1.clk
		.address    (mm_interconnect_0_onchip_memory_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_onchip_memory_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_onchip_memory_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_onchip_memory_s1_write),      //       .write
		.readdata   (mm_interconnect_0_onchip_memory_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_onchip_memory_s1_writedata),  //       .writedata
		.byteenable (mm_interconnect_0_onchip_memory_s1_byteenable), //       .byteenable
		.reset      (rst_controller_reset_out_reset),                // reset1.reset
		.reset_req  (rst_controller_reset_out_reset_req)             //       .reset_req
	);

	microprocessor_oe we (
		.clk        (clk_clk),                            //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),    //               reset.reset_n
		.address    (mm_interconnect_0_we_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_we_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_we_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_we_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_we_s1_readdata),   //                    .readdata
		.out_port   (we_export)                           // external_connection.export
	);

	microprocessor_mm_interconnect_0 mm_interconnect_0 (
		.clk_0_clk_clk                                (clk_clk),                                                   //                              clk_0_clk.clk
		.nios2_sram_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                            // nios2_sram_reset_reset_bridge_in_reset.reset
		.nios2_sram_data_master_address               (nios2_sram_data_master_address),                            //                 nios2_sram_data_master.address
		.nios2_sram_data_master_waitrequest           (nios2_sram_data_master_waitrequest),                        //                                       .waitrequest
		.nios2_sram_data_master_byteenable            (nios2_sram_data_master_byteenable),                         //                                       .byteenable
		.nios2_sram_data_master_read                  (nios2_sram_data_master_read),                               //                                       .read
		.nios2_sram_data_master_readdata              (nios2_sram_data_master_readdata),                           //                                       .readdata
		.nios2_sram_data_master_write                 (nios2_sram_data_master_write),                              //                                       .write
		.nios2_sram_data_master_writedata             (nios2_sram_data_master_writedata),                          //                                       .writedata
		.nios2_sram_data_master_debugaccess           (nios2_sram_data_master_debugaccess),                        //                                       .debugaccess
		.nios2_sram_instruction_master_address        (nios2_sram_instruction_master_address),                     //          nios2_sram_instruction_master.address
		.nios2_sram_instruction_master_waitrequest    (nios2_sram_instruction_master_waitrequest),                 //                                       .waitrequest
		.nios2_sram_instruction_master_read           (nios2_sram_instruction_master_read),                        //                                       .read
		.nios2_sram_instruction_master_readdata       (nios2_sram_instruction_master_readdata),                    //                                       .readdata
		.address_s1_address                           (mm_interconnect_0_address_s1_address),                      //                             address_s1.address
		.address_s1_write                             (mm_interconnect_0_address_s1_write),                        //                                       .write
		.address_s1_readdata                          (mm_interconnect_0_address_s1_readdata),                     //                                       .readdata
		.address_s1_writedata                         (mm_interconnect_0_address_s1_writedata),                    //                                       .writedata
		.address_s1_chipselect                        (mm_interconnect_0_address_s1_chipselect),                   //                                       .chipselect
		.data_s1_address                              (mm_interconnect_0_data_s1_address),                         //                                data_s1.address
		.data_s1_write                                (mm_interconnect_0_data_s1_write),                           //                                       .write
		.data_s1_readdata                             (mm_interconnect_0_data_s1_readdata),                        //                                       .readdata
		.data_s1_writedata                            (mm_interconnect_0_data_s1_writedata),                       //                                       .writedata
		.data_s1_chipselect                           (mm_interconnect_0_data_s1_chipselect),                      //                                       .chipselect
		.jtag_uart_avalon_jtag_slave_address          (mm_interconnect_0_jtag_uart_avalon_jtag_slave_address),     //            jtag_uart_avalon_jtag_slave.address
		.jtag_uart_avalon_jtag_slave_write            (mm_interconnect_0_jtag_uart_avalon_jtag_slave_write),       //                                       .write
		.jtag_uart_avalon_jtag_slave_read             (mm_interconnect_0_jtag_uart_avalon_jtag_slave_read),        //                                       .read
		.jtag_uart_avalon_jtag_slave_readdata         (mm_interconnect_0_jtag_uart_avalon_jtag_slave_readdata),    //                                       .readdata
		.jtag_uart_avalon_jtag_slave_writedata        (mm_interconnect_0_jtag_uart_avalon_jtag_slave_writedata),   //                                       .writedata
		.jtag_uart_avalon_jtag_slave_waitrequest      (mm_interconnect_0_jtag_uart_avalon_jtag_slave_waitrequest), //                                       .waitrequest
		.jtag_uart_avalon_jtag_slave_chipselect       (mm_interconnect_0_jtag_uart_avalon_jtag_slave_chipselect),  //                                       .chipselect
		.LEDs_s1_address                              (mm_interconnect_0_leds_s1_address),                         //                                LEDs_s1.address
		.LEDs_s1_write                                (mm_interconnect_0_leds_s1_write),                           //                                       .write
		.LEDs_s1_readdata                             (mm_interconnect_0_leds_s1_readdata),                        //                                       .readdata
		.LEDs_s1_writedata                            (mm_interconnect_0_leds_s1_writedata),                       //                                       .writedata
		.LEDs_s1_chipselect                           (mm_interconnect_0_leds_s1_chipselect),                      //                                       .chipselect
		.nios2_sram_debug_mem_slave_address           (mm_interconnect_0_nios2_sram_debug_mem_slave_address),      //             nios2_sram_debug_mem_slave.address
		.nios2_sram_debug_mem_slave_write             (mm_interconnect_0_nios2_sram_debug_mem_slave_write),        //                                       .write
		.nios2_sram_debug_mem_slave_read              (mm_interconnect_0_nios2_sram_debug_mem_slave_read),         //                                       .read
		.nios2_sram_debug_mem_slave_readdata          (mm_interconnect_0_nios2_sram_debug_mem_slave_readdata),     //                                       .readdata
		.nios2_sram_debug_mem_slave_writedata         (mm_interconnect_0_nios2_sram_debug_mem_slave_writedata),    //                                       .writedata
		.nios2_sram_debug_mem_slave_byteenable        (mm_interconnect_0_nios2_sram_debug_mem_slave_byteenable),   //                                       .byteenable
		.nios2_sram_debug_mem_slave_waitrequest       (mm_interconnect_0_nios2_sram_debug_mem_slave_waitrequest),  //                                       .waitrequest
		.nios2_sram_debug_mem_slave_debugaccess       (mm_interconnect_0_nios2_sram_debug_mem_slave_debugaccess),  //                                       .debugaccess
		.oe_s1_address                                (mm_interconnect_0_oe_s1_address),                           //                                  oe_s1.address
		.oe_s1_write                                  (mm_interconnect_0_oe_s1_write),                             //                                       .write
		.oe_s1_readdata                               (mm_interconnect_0_oe_s1_readdata),                          //                                       .readdata
		.oe_s1_writedata                              (mm_interconnect_0_oe_s1_writedata),                         //                                       .writedata
		.oe_s1_chipselect                             (mm_interconnect_0_oe_s1_chipselect),                        //                                       .chipselect
		.onchip_memory_s1_address                     (mm_interconnect_0_onchip_memory_s1_address),                //                       onchip_memory_s1.address
		.onchip_memory_s1_write                       (mm_interconnect_0_onchip_memory_s1_write),                  //                                       .write
		.onchip_memory_s1_readdata                    (mm_interconnect_0_onchip_memory_s1_readdata),               //                                       .readdata
		.onchip_memory_s1_writedata                   (mm_interconnect_0_onchip_memory_s1_writedata),              //                                       .writedata
		.onchip_memory_s1_byteenable                  (mm_interconnect_0_onchip_memory_s1_byteenable),             //                                       .byteenable
		.onchip_memory_s1_chipselect                  (mm_interconnect_0_onchip_memory_s1_chipselect),             //                                       .chipselect
		.onchip_memory_s1_clken                       (mm_interconnect_0_onchip_memory_s1_clken),                  //                                       .clken
		.we_s1_address                                (mm_interconnect_0_we_s1_address),                           //                                  we_s1.address
		.we_s1_write                                  (mm_interconnect_0_we_s1_write),                             //                                       .write
		.we_s1_readdata                               (mm_interconnect_0_we_s1_readdata),                          //                                       .readdata
		.we_s1_writedata                              (mm_interconnect_0_we_s1_writedata),                         //                                       .writedata
		.we_s1_chipselect                             (mm_interconnect_0_we_s1_chipselect)                         //                                       .chipselect
	);

	microprocessor_irq_mapper irq_mapper (
		.clk           (clk_clk),                        //       clk.clk
		.reset         (rst_controller_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_receiver0_irq),       // receiver0.irq
		.sender_irq    (nios2_sram_irq_irq)              //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
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
		.reset_in0      (~reset_reset_n),                       // reset_in0.reset
		.reset_in1      (nios2_sram_debug_reset_request_reset), // reset_in1.reset
		.clk            (clk_clk),                              //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),       // reset_out.reset
		.reset_req      (rst_controller_reset_out_reset_req),   //          .reset_req
		.reset_req_in0  (1'b0),                                 // (terminated)
		.reset_req_in1  (1'b0),                                 // (terminated)
		.reset_in2      (1'b0),                                 // (terminated)
		.reset_req_in2  (1'b0),                                 // (terminated)
		.reset_in3      (1'b0),                                 // (terminated)
		.reset_req_in3  (1'b0),                                 // (terminated)
		.reset_in4      (1'b0),                                 // (terminated)
		.reset_req_in4  (1'b0),                                 // (terminated)
		.reset_in5      (1'b0),                                 // (terminated)
		.reset_req_in5  (1'b0),                                 // (terminated)
		.reset_in6      (1'b0),                                 // (terminated)
		.reset_req_in6  (1'b0),                                 // (terminated)
		.reset_in7      (1'b0),                                 // (terminated)
		.reset_req_in7  (1'b0),                                 // (terminated)
		.reset_in8      (1'b0),                                 // (terminated)
		.reset_req_in8  (1'b0),                                 // (terminated)
		.reset_in9      (1'b0),                                 // (terminated)
		.reset_req_in9  (1'b0),                                 // (terminated)
		.reset_in10     (1'b0),                                 // (terminated)
		.reset_req_in10 (1'b0),                                 // (terminated)
		.reset_in11     (1'b0),                                 // (terminated)
		.reset_req_in11 (1'b0),                                 // (terminated)
		.reset_in12     (1'b0),                                 // (terminated)
		.reset_req_in12 (1'b0),                                 // (terminated)
		.reset_in13     (1'b0),                                 // (terminated)
		.reset_req_in13 (1'b0),                                 // (terminated)
		.reset_in14     (1'b0),                                 // (terminated)
		.reset_req_in14 (1'b0),                                 // (terminated)
		.reset_in15     (1'b0),                                 // (terminated)
		.reset_req_in15 (1'b0)                                  // (terminated)
	);

endmodule