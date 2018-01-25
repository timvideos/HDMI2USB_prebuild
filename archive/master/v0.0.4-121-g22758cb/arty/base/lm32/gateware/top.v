/* Machine-generated using LiteX gen */
module top(
	output reg serial_tx,
	input serial_rx,
	input clk100,
	input cpu_reset,
	output eth_ref_clk,
	output reg spiflash_1x_cs_n,
	output reg spiflash_1x_mosi,
	input spiflash_1x_miso,
	output spiflash_1x_wp,
	output spiflash_1x_hold,
	output [13:0] ddram_a,
	output [2:0] ddram_ba,
	output ddram_ras_n,
	output ddram_cas_n,
	output ddram_we_n,
	output ddram_cs_n,
	output [1:0] ddram_dm,
	inout [15:0] ddram_dq,
	output [1:0] ddram_dqs_p,
	output [1:0] ddram_dqs_n,
	output ddram_clk_p,
	output ddram_clk_n,
	output ddram_cke,
	output ddram_odt,
	output ddram_reset_n
);

wire [29:0] basesoc_ibus_adr;
wire [31:0] basesoc_ibus_dat_w;
wire [31:0] basesoc_ibus_dat_r;
wire [3:0] basesoc_ibus_sel;
wire basesoc_ibus_cyc;
wire basesoc_ibus_stb;
wire basesoc_ibus_ack;
wire basesoc_ibus_we;
wire [2:0] basesoc_ibus_cti;
wire [1:0] basesoc_ibus_bte;
wire basesoc_ibus_err;
wire [29:0] basesoc_dbus_adr;
wire [31:0] basesoc_dbus_dat_w;
wire [31:0] basesoc_dbus_dat_r;
wire [3:0] basesoc_dbus_sel;
wire basesoc_dbus_cyc;
wire basesoc_dbus_stb;
wire basesoc_dbus_ack;
wire basesoc_dbus_we;
wire [2:0] basesoc_dbus_cti;
wire [1:0] basesoc_dbus_bte;
wire basesoc_dbus_err;
reg [31:0] basesoc_interrupt = 32'd0;
wire [31:0] basesoc_i_adr_o;
wire [31:0] basesoc_d_adr_o;
wire [29:0] basesoc_rom_bus_adr;
wire [31:0] basesoc_rom_bus_dat_w;
wire [31:0] basesoc_rom_bus_dat_r;
wire [3:0] basesoc_rom_bus_sel;
wire basesoc_rom_bus_cyc;
wire basesoc_rom_bus_stb;
reg basesoc_rom_bus_ack = 1'd0;
wire basesoc_rom_bus_we;
wire [2:0] basesoc_rom_bus_cti;
wire [1:0] basesoc_rom_bus_bte;
reg basesoc_rom_bus_err = 1'd0;
wire [12:0] basesoc_rom_adr;
wire [31:0] basesoc_rom_dat_r;
wire [29:0] basesoc_sram_bus_adr0;
wire [31:0] basesoc_sram_bus_dat_w0;
wire [31:0] basesoc_sram_bus_dat_r0;
wire [3:0] basesoc_sram_bus_sel;
wire basesoc_sram_bus_cyc;
wire basesoc_sram_bus_stb;
reg basesoc_sram_bus_ack = 1'd0;
wire basesoc_sram_bus_we0;
wire [2:0] basesoc_sram_bus_cti;
wire [1:0] basesoc_sram_bus_bte;
reg basesoc_sram_bus_err = 1'd0;
wire [12:0] basesoc_sram_adr;
wire [31:0] basesoc_sram_dat_r;
reg [3:0] basesoc_sram_we = 4'd0;
wire [31:0] basesoc_sram_dat_w;
reg [13:0] basesoc_interface_adr = 14'd0;
reg basesoc_interface_we = 1'd0;
reg [7:0] basesoc_interface_dat_w = 8'd0;
wire [7:0] basesoc_interface_dat_r;
wire [29:0] basesoc_bus_wishbone_adr;
wire [31:0] basesoc_bus_wishbone_dat_w;
reg [31:0] basesoc_bus_wishbone_dat_r = 32'd0;
wire [3:0] basesoc_bus_wishbone_sel;
wire basesoc_bus_wishbone_cyc;
wire basesoc_bus_wishbone_stb;
reg basesoc_bus_wishbone_ack = 1'd0;
wire basesoc_bus_wishbone_we;
wire [2:0] basesoc_bus_wishbone_cti;
wire [1:0] basesoc_bus_wishbone_bte;
reg basesoc_bus_wishbone_err = 1'd0;
reg [1:0] basesoc_counter = 2'd0;
reg [31:0] basesoc_uart_phy_storage_full = 32'd4947802;
wire [31:0] basesoc_uart_phy_storage;
reg basesoc_uart_phy_re = 1'd0;
wire basesoc_uart_phy_sink_valid;
reg basesoc_uart_phy_sink_ready = 1'd0;
wire basesoc_uart_phy_sink_first;
wire basesoc_uart_phy_sink_last;
wire [7:0] basesoc_uart_phy_sink_payload_data;
reg basesoc_uart_phy_uart_clk_txen = 1'd0;
reg [31:0] basesoc_uart_phy_phase_accumulator_tx = 32'd0;
reg [7:0] basesoc_uart_phy_tx_reg = 8'd0;
reg [3:0] basesoc_uart_phy_tx_bitcount = 4'd0;
reg basesoc_uart_phy_tx_busy = 1'd0;
reg basesoc_uart_phy_source_valid = 1'd0;
wire basesoc_uart_phy_source_ready;
reg basesoc_uart_phy_source_first = 1'd0;
reg basesoc_uart_phy_source_last = 1'd0;
reg [7:0] basesoc_uart_phy_source_payload_data = 8'd0;
reg basesoc_uart_phy_uart_clk_rxen = 1'd0;
reg [31:0] basesoc_uart_phy_phase_accumulator_rx = 32'd0;
wire basesoc_uart_phy_rx;
reg basesoc_uart_phy_rx_r = 1'd0;
reg [7:0] basesoc_uart_phy_rx_reg = 8'd0;
reg [3:0] basesoc_uart_phy_rx_bitcount = 4'd0;
reg basesoc_uart_phy_rx_busy = 1'd0;
wire basesoc_uart_rxtx_re;
wire [7:0] basesoc_uart_rxtx_r;
wire [7:0] basesoc_uart_rxtx_w;
wire basesoc_uart_txfull_status;
wire basesoc_uart_rxempty_status;
wire basesoc_uart_irq;
wire basesoc_uart_tx_status;
reg basesoc_uart_tx_pending = 1'd0;
wire basesoc_uart_tx_trigger;
reg basesoc_uart_tx_clear = 1'd0;
reg basesoc_uart_tx_old_trigger = 1'd0;
wire basesoc_uart_rx_status;
reg basesoc_uart_rx_pending = 1'd0;
wire basesoc_uart_rx_trigger;
reg basesoc_uart_rx_clear = 1'd0;
reg basesoc_uart_rx_old_trigger = 1'd0;
wire basesoc_uart_status_re;
wire [1:0] basesoc_uart_status_r;
reg [1:0] basesoc_uart_status_w = 2'd0;
wire basesoc_uart_pending_re;
wire [1:0] basesoc_uart_pending_r;
reg [1:0] basesoc_uart_pending_w = 2'd0;
reg [1:0] basesoc_uart_storage_full = 2'd0;
wire [1:0] basesoc_uart_storage;
reg basesoc_uart_re = 1'd0;
wire basesoc_uart_tx_fifo_sink_valid;
wire basesoc_uart_tx_fifo_sink_ready;
reg basesoc_uart_tx_fifo_sink_first = 1'd0;
reg basesoc_uart_tx_fifo_sink_last = 1'd0;
wire [7:0] basesoc_uart_tx_fifo_sink_payload_data;
wire basesoc_uart_tx_fifo_source_valid;
wire basesoc_uart_tx_fifo_source_ready;
wire basesoc_uart_tx_fifo_source_first;
wire basesoc_uart_tx_fifo_source_last;
wire [7:0] basesoc_uart_tx_fifo_source_payload_data;
wire basesoc_uart_tx_fifo_syncfifo_we;
wire basesoc_uart_tx_fifo_syncfifo_writable;
wire basesoc_uart_tx_fifo_syncfifo_re;
wire basesoc_uart_tx_fifo_syncfifo_readable;
wire [9:0] basesoc_uart_tx_fifo_syncfifo_din;
wire [9:0] basesoc_uart_tx_fifo_syncfifo_dout;
reg [4:0] basesoc_uart_tx_fifo_level = 5'd0;
reg basesoc_uart_tx_fifo_replace = 1'd0;
reg [3:0] basesoc_uart_tx_fifo_produce = 4'd0;
reg [3:0] basesoc_uart_tx_fifo_consume = 4'd0;
reg [3:0] basesoc_uart_tx_fifo_wrport_adr = 4'd0;
wire [9:0] basesoc_uart_tx_fifo_wrport_dat_r;
wire basesoc_uart_tx_fifo_wrport_we;
wire [9:0] basesoc_uart_tx_fifo_wrport_dat_w;
wire basesoc_uart_tx_fifo_do_read;
wire [3:0] basesoc_uart_tx_fifo_rdport_adr;
wire [9:0] basesoc_uart_tx_fifo_rdport_dat_r;
wire [7:0] basesoc_uart_tx_fifo_fifo_in_payload_data;
wire basesoc_uart_tx_fifo_fifo_in_first;
wire basesoc_uart_tx_fifo_fifo_in_last;
wire [7:0] basesoc_uart_tx_fifo_fifo_out_payload_data;
wire basesoc_uart_tx_fifo_fifo_out_first;
wire basesoc_uart_tx_fifo_fifo_out_last;
wire basesoc_uart_rx_fifo_sink_valid;
wire basesoc_uart_rx_fifo_sink_ready;
wire basesoc_uart_rx_fifo_sink_first;
wire basesoc_uart_rx_fifo_sink_last;
wire [7:0] basesoc_uart_rx_fifo_sink_payload_data;
wire basesoc_uart_rx_fifo_source_valid;
wire basesoc_uart_rx_fifo_source_ready;
wire basesoc_uart_rx_fifo_source_first;
wire basesoc_uart_rx_fifo_source_last;
wire [7:0] basesoc_uart_rx_fifo_source_payload_data;
wire basesoc_uart_rx_fifo_syncfifo_we;
wire basesoc_uart_rx_fifo_syncfifo_writable;
wire basesoc_uart_rx_fifo_syncfifo_re;
wire basesoc_uart_rx_fifo_syncfifo_readable;
wire [9:0] basesoc_uart_rx_fifo_syncfifo_din;
wire [9:0] basesoc_uart_rx_fifo_syncfifo_dout;
reg [4:0] basesoc_uart_rx_fifo_level = 5'd0;
reg basesoc_uart_rx_fifo_replace = 1'd0;
reg [3:0] basesoc_uart_rx_fifo_produce = 4'd0;
reg [3:0] basesoc_uart_rx_fifo_consume = 4'd0;
reg [3:0] basesoc_uart_rx_fifo_wrport_adr = 4'd0;
wire [9:0] basesoc_uart_rx_fifo_wrport_dat_r;
wire basesoc_uart_rx_fifo_wrport_we;
wire [9:0] basesoc_uart_rx_fifo_wrport_dat_w;
wire basesoc_uart_rx_fifo_do_read;
wire [3:0] basesoc_uart_rx_fifo_rdport_adr;
wire [9:0] basesoc_uart_rx_fifo_rdport_dat_r;
wire [7:0] basesoc_uart_rx_fifo_fifo_in_payload_data;
wire basesoc_uart_rx_fifo_fifo_in_first;
wire basesoc_uart_rx_fifo_fifo_in_last;
wire [7:0] basesoc_uart_rx_fifo_fifo_out_payload_data;
wire basesoc_uart_rx_fifo_fifo_out_first;
wire basesoc_uart_rx_fifo_fifo_out_last;
reg [31:0] basesoc_timer0_load_storage_full = 32'd0;
wire [31:0] basesoc_timer0_load_storage;
reg basesoc_timer0_load_re = 1'd0;
reg [31:0] basesoc_timer0_reload_storage_full = 32'd0;
wire [31:0] basesoc_timer0_reload_storage;
reg basesoc_timer0_reload_re = 1'd0;
reg basesoc_timer0_en_storage_full = 1'd0;
wire basesoc_timer0_en_storage;
reg basesoc_timer0_en_re = 1'd0;
wire basesoc_timer0_update_value_re;
wire basesoc_timer0_update_value_r;
reg basesoc_timer0_update_value_w = 1'd0;
reg [31:0] basesoc_timer0_value_status = 32'd0;
wire basesoc_timer0_irq;
wire basesoc_timer0_zero_status;
reg basesoc_timer0_zero_pending = 1'd0;
wire basesoc_timer0_zero_trigger;
reg basesoc_timer0_zero_clear = 1'd0;
reg basesoc_timer0_zero_old_trigger = 1'd0;
wire basesoc_timer0_eventmanager_status_re;
wire basesoc_timer0_eventmanager_status_r;
wire basesoc_timer0_eventmanager_status_w;
wire basesoc_timer0_eventmanager_pending_re;
wire basesoc_timer0_eventmanager_pending_r;
wire basesoc_timer0_eventmanager_pending_w;
reg basesoc_timer0_eventmanager_storage_full = 1'd0;
wire basesoc_timer0_eventmanager_storage;
reg basesoc_timer0_eventmanager_re = 1'd0;
reg [31:0] basesoc_timer0_value = 32'd0;
wire [29:0] interface0_wb_sdram_adr;
wire [31:0] interface0_wb_sdram_dat_w;
reg [31:0] interface0_wb_sdram_dat_r = 32'd0;
wire [3:0] interface0_wb_sdram_sel;
wire interface0_wb_sdram_cyc;
wire interface0_wb_sdram_stb;
reg interface0_wb_sdram_ack = 1'd0;
wire interface0_wb_sdram_we;
wire [2:0] interface0_wb_sdram_cti;
wire [1:0] interface0_wb_sdram_bte;
reg interface0_wb_sdram_err = 1'd0;
(* dont_touch = "true" *) wire sys_clk;
wire sys_rst;
wire sys4x_clk;
wire sys4x_dqs_clk;
wire clk200_clk;
wire clk200_rst;
wire clk50_clk;
wire clk50_rst;
wire pll_locked;
wire pll_fb;
wire pll_sys;
wire pll_sys4x;
wire pll_sys4x_dqs;
wire pll_clk200;
wire pll_clk50;
reg [3:0] reset_counter = 4'd15;
reg ic_reset = 1'd1;
wire eth_clk;
reg [56:0] dna_status = 57'd0;
wire dna_do;
reg [6:0] dna_cnt = 7'd0;
wire [159:0] git_status;
wire [63:0] platform_status;
wire [63:0] target_status;
reg [11:0] temperature_status = 12'd0;
reg [11:0] vccint_status = 12'd0;
reg [11:0] vccaux_status = 12'd0;
reg [11:0] vccbram_status = 12'd0;
wire [7:0] alarm;
wire ot;
wire busy;
wire [6:0] channel;
wire eoc;
wire eos;
wire [15:0] data;
wire drdy;
reg clk0 = 1'd0;
wire [29:0] bus_adr;
wire [31:0] bus_dat_w;
wire [31:0] bus_dat_r;
wire [3:0] bus_sel;
wire bus_cyc;
wire bus_stb;
reg bus_ack = 1'd0;
wire bus_we;
wire [2:0] bus_cti;
wire [1:0] bus_bte;
reg bus_err = 1'd0;
reg [3:0] bitbang_storage_full = 4'd0;
wire [3:0] bitbang_storage;
reg bitbang_re = 1'd0;
reg miso_status = 1'd0;
reg bitbang_en_storage_full = 1'd0;
wire bitbang_en_storage;
reg bitbang_en_re = 1'd0;
reg cs_n = 1'd1;
reg clk1 = 1'd0;
reg [31:0] sr = 32'd0;
reg i = 1'd0;
reg miso = 1'd0;
reg [7:0] counter = 8'd0;
reg [1:0] storage_full = 2'd0;
wire [1:0] storage;
reg re = 1'd0;
wire rdly_dq_rst_re;
wire rdly_dq_rst_r;
reg rdly_dq_rst_w = 1'd0;
wire rdly_dq_inc_re;
wire rdly_dq_inc_r;
reg rdly_dq_inc_w = 1'd0;
wire rdly_dq_bitslip_re;
wire rdly_dq_bitslip_r;
reg rdly_dq_bitslip_w = 1'd0;
wire [13:0] dfi_p0_address;
wire [2:0] dfi_p0_bank;
wire dfi_p0_cas_n;
wire dfi_p0_cs_n;
wire dfi_p0_ras_n;
wire dfi_p0_we_n;
wire dfi_p0_cke;
wire dfi_p0_odt;
wire dfi_p0_reset_n;
wire [31:0] dfi_p0_wrdata;
wire dfi_p0_wrdata_en;
wire [3:0] dfi_p0_wrdata_mask;
wire dfi_p0_rddata_en;
wire [31:0] dfi_p0_rddata;
reg dfi_p0_rddata_valid = 1'd0;
wire [13:0] dfi_p1_address;
wire [2:0] dfi_p1_bank;
wire dfi_p1_cas_n;
wire dfi_p1_cs_n;
wire dfi_p1_ras_n;
wire dfi_p1_we_n;
wire dfi_p1_cke;
wire dfi_p1_odt;
wire dfi_p1_reset_n;
wire [31:0] dfi_p1_wrdata;
wire dfi_p1_wrdata_en;
wire [3:0] dfi_p1_wrdata_mask;
wire dfi_p1_rddata_en;
wire [31:0] dfi_p1_rddata;
reg dfi_p1_rddata_valid = 1'd0;
wire [13:0] dfi_p2_address;
wire [2:0] dfi_p2_bank;
wire dfi_p2_cas_n;
wire dfi_p2_cs_n;
wire dfi_p2_ras_n;
wire dfi_p2_we_n;
wire dfi_p2_cke;
wire dfi_p2_odt;
wire dfi_p2_reset_n;
wire [31:0] dfi_p2_wrdata;
wire dfi_p2_wrdata_en;
wire [3:0] dfi_p2_wrdata_mask;
wire dfi_p2_rddata_en;
wire [31:0] dfi_p2_rddata;
reg dfi_p2_rddata_valid = 1'd0;
wire [13:0] dfi_p3_address;
wire [2:0] dfi_p3_bank;
wire dfi_p3_cas_n;
wire dfi_p3_cs_n;
wire dfi_p3_ras_n;
wire dfi_p3_we_n;
wire dfi_p3_cke;
wire dfi_p3_odt;
wire dfi_p3_reset_n;
wire [31:0] dfi_p3_wrdata;
wire dfi_p3_wrdata_en;
wire [3:0] dfi_p3_wrdata_mask;
wire dfi_p3_rddata_en;
wire [31:0] dfi_p3_rddata;
reg dfi_p3_rddata_valid = 1'd0;
wire sd_clk_se;
reg oe_dqs = 1'd0;
reg [7:0] dqs_serdes_pattern = 8'd85;
wire dqs0;
wire dqs_t0;
wire dqs1;
wire dqs_t1;
reg oe_dq = 1'd0;
wire dq_o0;
wire dq_i_nodelay0;
wire dq_i_delayed0;
wire dq_t0;
wire dq_o1;
wire dq_i_nodelay1;
wire dq_i_delayed1;
wire dq_t1;
wire dq_o2;
wire dq_i_nodelay2;
wire dq_i_delayed2;
wire dq_t2;
wire dq_o3;
wire dq_i_nodelay3;
wire dq_i_delayed3;
wire dq_t3;
wire dq_o4;
wire dq_i_nodelay4;
wire dq_i_delayed4;
wire dq_t4;
wire dq_o5;
wire dq_i_nodelay5;
wire dq_i_delayed5;
wire dq_t5;
wire dq_o6;
wire dq_i_nodelay6;
wire dq_i_delayed6;
wire dq_t6;
wire dq_o7;
wire dq_i_nodelay7;
wire dq_i_delayed7;
wire dq_t7;
wire dq_o8;
wire dq_i_nodelay8;
wire dq_i_delayed8;
wire dq_t8;
wire dq_o9;
wire dq_i_nodelay9;
wire dq_i_delayed9;
wire dq_t9;
wire dq_o10;
wire dq_i_nodelay10;
wire dq_i_delayed10;
wire dq_t10;
wire dq_o11;
wire dq_i_nodelay11;
wire dq_i_delayed11;
wire dq_t11;
wire dq_o12;
wire dq_i_nodelay12;
wire dq_i_delayed12;
wire dq_t12;
wire dq_o13;
wire dq_i_nodelay13;
wire dq_i_delayed13;
wire dq_t13;
wire dq_o14;
wire dq_i_nodelay14;
wire dq_i_delayed14;
wire dq_t14;
wire dq_o15;
wire dq_i_nodelay15;
wire dq_i_delayed15;
wire dq_t15;
reg n_rddata_en0 = 1'd0;
reg n_rddata_en1 = 1'd0;
reg n_rddata_en2 = 1'd0;
reg n_rddata_en3 = 1'd0;
reg n_rddata_en4 = 1'd0;
wire oe;
reg [3:0] last_wrdata_en = 4'd0;
wire [13:0] sdram_inti_p0_address;
wire [2:0] sdram_inti_p0_bank;
reg sdram_inti_p0_cas_n = 1'd1;
reg sdram_inti_p0_cs_n = 1'd1;
reg sdram_inti_p0_ras_n = 1'd1;
reg sdram_inti_p0_we_n = 1'd1;
wire sdram_inti_p0_cke;
wire sdram_inti_p0_odt;
wire sdram_inti_p0_reset_n;
wire [31:0] sdram_inti_p0_wrdata;
wire sdram_inti_p0_wrdata_en;
wire [3:0] sdram_inti_p0_wrdata_mask;
wire sdram_inti_p0_rddata_en;
reg [31:0] sdram_inti_p0_rddata = 32'd0;
reg sdram_inti_p0_rddata_valid = 1'd0;
wire [13:0] sdram_inti_p1_address;
wire [2:0] sdram_inti_p1_bank;
reg sdram_inti_p1_cas_n = 1'd1;
reg sdram_inti_p1_cs_n = 1'd1;
reg sdram_inti_p1_ras_n = 1'd1;
reg sdram_inti_p1_we_n = 1'd1;
wire sdram_inti_p1_cke;
wire sdram_inti_p1_odt;
wire sdram_inti_p1_reset_n;
wire [31:0] sdram_inti_p1_wrdata;
wire sdram_inti_p1_wrdata_en;
wire [3:0] sdram_inti_p1_wrdata_mask;
wire sdram_inti_p1_rddata_en;
reg [31:0] sdram_inti_p1_rddata = 32'd0;
reg sdram_inti_p1_rddata_valid = 1'd0;
wire [13:0] sdram_inti_p2_address;
wire [2:0] sdram_inti_p2_bank;
reg sdram_inti_p2_cas_n = 1'd1;
reg sdram_inti_p2_cs_n = 1'd1;
reg sdram_inti_p2_ras_n = 1'd1;
reg sdram_inti_p2_we_n = 1'd1;
wire sdram_inti_p2_cke;
wire sdram_inti_p2_odt;
wire sdram_inti_p2_reset_n;
wire [31:0] sdram_inti_p2_wrdata;
wire sdram_inti_p2_wrdata_en;
wire [3:0] sdram_inti_p2_wrdata_mask;
wire sdram_inti_p2_rddata_en;
reg [31:0] sdram_inti_p2_rddata = 32'd0;
reg sdram_inti_p2_rddata_valid = 1'd0;
wire [13:0] sdram_inti_p3_address;
wire [2:0] sdram_inti_p3_bank;
reg sdram_inti_p3_cas_n = 1'd1;
reg sdram_inti_p3_cs_n = 1'd1;
reg sdram_inti_p3_ras_n = 1'd1;
reg sdram_inti_p3_we_n = 1'd1;
wire sdram_inti_p3_cke;
wire sdram_inti_p3_odt;
wire sdram_inti_p3_reset_n;
wire [31:0] sdram_inti_p3_wrdata;
wire sdram_inti_p3_wrdata_en;
wire [3:0] sdram_inti_p3_wrdata_mask;
wire sdram_inti_p3_rddata_en;
reg [31:0] sdram_inti_p3_rddata = 32'd0;
reg sdram_inti_p3_rddata_valid = 1'd0;
wire [13:0] sdram_slave_p0_address;
wire [2:0] sdram_slave_p0_bank;
wire sdram_slave_p0_cas_n;
wire sdram_slave_p0_cs_n;
wire sdram_slave_p0_ras_n;
wire sdram_slave_p0_we_n;
wire sdram_slave_p0_cke;
wire sdram_slave_p0_odt;
wire sdram_slave_p0_reset_n;
wire [31:0] sdram_slave_p0_wrdata;
wire sdram_slave_p0_wrdata_en;
wire [3:0] sdram_slave_p0_wrdata_mask;
wire sdram_slave_p0_rddata_en;
reg [31:0] sdram_slave_p0_rddata = 32'd0;
reg sdram_slave_p0_rddata_valid = 1'd0;
wire [13:0] sdram_slave_p1_address;
wire [2:0] sdram_slave_p1_bank;
wire sdram_slave_p1_cas_n;
wire sdram_slave_p1_cs_n;
wire sdram_slave_p1_ras_n;
wire sdram_slave_p1_we_n;
wire sdram_slave_p1_cke;
wire sdram_slave_p1_odt;
wire sdram_slave_p1_reset_n;
wire [31:0] sdram_slave_p1_wrdata;
wire sdram_slave_p1_wrdata_en;
wire [3:0] sdram_slave_p1_wrdata_mask;
wire sdram_slave_p1_rddata_en;
reg [31:0] sdram_slave_p1_rddata = 32'd0;
reg sdram_slave_p1_rddata_valid = 1'd0;
wire [13:0] sdram_slave_p2_address;
wire [2:0] sdram_slave_p2_bank;
wire sdram_slave_p2_cas_n;
wire sdram_slave_p2_cs_n;
wire sdram_slave_p2_ras_n;
wire sdram_slave_p2_we_n;
wire sdram_slave_p2_cke;
wire sdram_slave_p2_odt;
wire sdram_slave_p2_reset_n;
wire [31:0] sdram_slave_p2_wrdata;
wire sdram_slave_p2_wrdata_en;
wire [3:0] sdram_slave_p2_wrdata_mask;
wire sdram_slave_p2_rddata_en;
reg [31:0] sdram_slave_p2_rddata = 32'd0;
reg sdram_slave_p2_rddata_valid = 1'd0;
wire [13:0] sdram_slave_p3_address;
wire [2:0] sdram_slave_p3_bank;
wire sdram_slave_p3_cas_n;
wire sdram_slave_p3_cs_n;
wire sdram_slave_p3_ras_n;
wire sdram_slave_p3_we_n;
wire sdram_slave_p3_cke;
wire sdram_slave_p3_odt;
wire sdram_slave_p3_reset_n;
wire [31:0] sdram_slave_p3_wrdata;
wire sdram_slave_p3_wrdata_en;
wire [3:0] sdram_slave_p3_wrdata_mask;
wire sdram_slave_p3_rddata_en;
reg [31:0] sdram_slave_p3_rddata = 32'd0;
reg sdram_slave_p3_rddata_valid = 1'd0;
reg [13:0] sdram_master_p0_address = 14'd0;
reg [2:0] sdram_master_p0_bank = 3'd0;
reg sdram_master_p0_cas_n = 1'd1;
reg sdram_master_p0_cs_n = 1'd1;
reg sdram_master_p0_ras_n = 1'd1;
reg sdram_master_p0_we_n = 1'd1;
reg sdram_master_p0_cke = 1'd0;
reg sdram_master_p0_odt = 1'd0;
reg sdram_master_p0_reset_n = 1'd0;
reg [31:0] sdram_master_p0_wrdata = 32'd0;
reg sdram_master_p0_wrdata_en = 1'd0;
reg [3:0] sdram_master_p0_wrdata_mask = 4'd0;
reg sdram_master_p0_rddata_en = 1'd0;
wire [31:0] sdram_master_p0_rddata;
wire sdram_master_p0_rddata_valid;
reg [13:0] sdram_master_p1_address = 14'd0;
reg [2:0] sdram_master_p1_bank = 3'd0;
reg sdram_master_p1_cas_n = 1'd1;
reg sdram_master_p1_cs_n = 1'd1;
reg sdram_master_p1_ras_n = 1'd1;
reg sdram_master_p1_we_n = 1'd1;
reg sdram_master_p1_cke = 1'd0;
reg sdram_master_p1_odt = 1'd0;
reg sdram_master_p1_reset_n = 1'd0;
reg [31:0] sdram_master_p1_wrdata = 32'd0;
reg sdram_master_p1_wrdata_en = 1'd0;
reg [3:0] sdram_master_p1_wrdata_mask = 4'd0;
reg sdram_master_p1_rddata_en = 1'd0;
wire [31:0] sdram_master_p1_rddata;
wire sdram_master_p1_rddata_valid;
reg [13:0] sdram_master_p2_address = 14'd0;
reg [2:0] sdram_master_p2_bank = 3'd0;
reg sdram_master_p2_cas_n = 1'd1;
reg sdram_master_p2_cs_n = 1'd1;
reg sdram_master_p2_ras_n = 1'd1;
reg sdram_master_p2_we_n = 1'd1;
reg sdram_master_p2_cke = 1'd0;
reg sdram_master_p2_odt = 1'd0;
reg sdram_master_p2_reset_n = 1'd0;
reg [31:0] sdram_master_p2_wrdata = 32'd0;
reg sdram_master_p2_wrdata_en = 1'd0;
reg [3:0] sdram_master_p2_wrdata_mask = 4'd0;
reg sdram_master_p2_rddata_en = 1'd0;
wire [31:0] sdram_master_p2_rddata;
wire sdram_master_p2_rddata_valid;
reg [13:0] sdram_master_p3_address = 14'd0;
reg [2:0] sdram_master_p3_bank = 3'd0;
reg sdram_master_p3_cas_n = 1'd1;
reg sdram_master_p3_cs_n = 1'd1;
reg sdram_master_p3_ras_n = 1'd1;
reg sdram_master_p3_we_n = 1'd1;
reg sdram_master_p3_cke = 1'd0;
reg sdram_master_p3_odt = 1'd0;
reg sdram_master_p3_reset_n = 1'd0;
reg [31:0] sdram_master_p3_wrdata = 32'd0;
reg sdram_master_p3_wrdata_en = 1'd0;
reg [3:0] sdram_master_p3_wrdata_mask = 4'd0;
reg sdram_master_p3_rddata_en = 1'd0;
wire [31:0] sdram_master_p3_rddata;
wire sdram_master_p3_rddata_valid;
reg [3:0] sdram_storage_full = 4'd0;
wire [3:0] sdram_storage;
reg sdram_re = 1'd0;
reg [5:0] sdram_phaseinjector0_command_storage_full = 6'd0;
wire [5:0] sdram_phaseinjector0_command_storage;
reg sdram_phaseinjector0_command_re = 1'd0;
wire sdram_phaseinjector0_command_issue_re;
wire sdram_phaseinjector0_command_issue_r;
reg sdram_phaseinjector0_command_issue_w = 1'd0;
reg [13:0] sdram_phaseinjector0_address_storage_full = 14'd0;
wire [13:0] sdram_phaseinjector0_address_storage;
reg sdram_phaseinjector0_address_re = 1'd0;
reg [2:0] sdram_phaseinjector0_baddress_storage_full = 3'd0;
wire [2:0] sdram_phaseinjector0_baddress_storage;
reg sdram_phaseinjector0_baddress_re = 1'd0;
reg [31:0] sdram_phaseinjector0_wrdata_storage_full = 32'd0;
wire [31:0] sdram_phaseinjector0_wrdata_storage;
reg sdram_phaseinjector0_wrdata_re = 1'd0;
reg [31:0] sdram_phaseinjector0_status = 32'd0;
reg [5:0] sdram_phaseinjector1_command_storage_full = 6'd0;
wire [5:0] sdram_phaseinjector1_command_storage;
reg sdram_phaseinjector1_command_re = 1'd0;
wire sdram_phaseinjector1_command_issue_re;
wire sdram_phaseinjector1_command_issue_r;
reg sdram_phaseinjector1_command_issue_w = 1'd0;
reg [13:0] sdram_phaseinjector1_address_storage_full = 14'd0;
wire [13:0] sdram_phaseinjector1_address_storage;
reg sdram_phaseinjector1_address_re = 1'd0;
reg [2:0] sdram_phaseinjector1_baddress_storage_full = 3'd0;
wire [2:0] sdram_phaseinjector1_baddress_storage;
reg sdram_phaseinjector1_baddress_re = 1'd0;
reg [31:0] sdram_phaseinjector1_wrdata_storage_full = 32'd0;
wire [31:0] sdram_phaseinjector1_wrdata_storage;
reg sdram_phaseinjector1_wrdata_re = 1'd0;
reg [31:0] sdram_phaseinjector1_status = 32'd0;
reg [5:0] sdram_phaseinjector2_command_storage_full = 6'd0;
wire [5:0] sdram_phaseinjector2_command_storage;
reg sdram_phaseinjector2_command_re = 1'd0;
wire sdram_phaseinjector2_command_issue_re;
wire sdram_phaseinjector2_command_issue_r;
reg sdram_phaseinjector2_command_issue_w = 1'd0;
reg [13:0] sdram_phaseinjector2_address_storage_full = 14'd0;
wire [13:0] sdram_phaseinjector2_address_storage;
reg sdram_phaseinjector2_address_re = 1'd0;
reg [2:0] sdram_phaseinjector2_baddress_storage_full = 3'd0;
wire [2:0] sdram_phaseinjector2_baddress_storage;
reg sdram_phaseinjector2_baddress_re = 1'd0;
reg [31:0] sdram_phaseinjector2_wrdata_storage_full = 32'd0;
wire [31:0] sdram_phaseinjector2_wrdata_storage;
reg sdram_phaseinjector2_wrdata_re = 1'd0;
reg [31:0] sdram_phaseinjector2_status = 32'd0;
reg [5:0] sdram_phaseinjector3_command_storage_full = 6'd0;
wire [5:0] sdram_phaseinjector3_command_storage;
reg sdram_phaseinjector3_command_re = 1'd0;
wire sdram_phaseinjector3_command_issue_re;
wire sdram_phaseinjector3_command_issue_r;
reg sdram_phaseinjector3_command_issue_w = 1'd0;
reg [13:0] sdram_phaseinjector3_address_storage_full = 14'd0;
wire [13:0] sdram_phaseinjector3_address_storage;
reg sdram_phaseinjector3_address_re = 1'd0;
reg [2:0] sdram_phaseinjector3_baddress_storage_full = 3'd0;
wire [2:0] sdram_phaseinjector3_baddress_storage;
reg sdram_phaseinjector3_baddress_re = 1'd0;
reg [31:0] sdram_phaseinjector3_wrdata_storage_full = 32'd0;
wire [31:0] sdram_phaseinjector3_wrdata_storage;
reg sdram_phaseinjector3_wrdata_re = 1'd0;
reg [31:0] sdram_phaseinjector3_status = 32'd0;
reg [13:0] sdram_dfi_p0_address = 14'd0;
reg [2:0] sdram_dfi_p0_bank = 3'd0;
reg sdram_dfi_p0_cas_n = 1'd1;
wire sdram_dfi_p0_cs_n;
reg sdram_dfi_p0_ras_n = 1'd1;
reg sdram_dfi_p0_we_n = 1'd1;
wire sdram_dfi_p0_cke;
wire sdram_dfi_p0_odt;
wire sdram_dfi_p0_reset_n;
wire [31:0] sdram_dfi_p0_wrdata;
reg sdram_dfi_p0_wrdata_en = 1'd0;
wire [3:0] sdram_dfi_p0_wrdata_mask;
reg sdram_dfi_p0_rddata_en = 1'd0;
wire [31:0] sdram_dfi_p0_rddata;
wire sdram_dfi_p0_rddata_valid;
reg [13:0] sdram_dfi_p1_address = 14'd0;
reg [2:0] sdram_dfi_p1_bank = 3'd0;
reg sdram_dfi_p1_cas_n = 1'd1;
wire sdram_dfi_p1_cs_n;
reg sdram_dfi_p1_ras_n = 1'd1;
reg sdram_dfi_p1_we_n = 1'd1;
wire sdram_dfi_p1_cke;
wire sdram_dfi_p1_odt;
wire sdram_dfi_p1_reset_n;
wire [31:0] sdram_dfi_p1_wrdata;
reg sdram_dfi_p1_wrdata_en = 1'd0;
wire [3:0] sdram_dfi_p1_wrdata_mask;
reg sdram_dfi_p1_rddata_en = 1'd0;
wire [31:0] sdram_dfi_p1_rddata;
wire sdram_dfi_p1_rddata_valid;
reg [13:0] sdram_dfi_p2_address = 14'd0;
reg [2:0] sdram_dfi_p2_bank = 3'd0;
reg sdram_dfi_p2_cas_n = 1'd1;
wire sdram_dfi_p2_cs_n;
reg sdram_dfi_p2_ras_n = 1'd1;
reg sdram_dfi_p2_we_n = 1'd1;
wire sdram_dfi_p2_cke;
wire sdram_dfi_p2_odt;
wire sdram_dfi_p2_reset_n;
wire [31:0] sdram_dfi_p2_wrdata;
reg sdram_dfi_p2_wrdata_en = 1'd0;
wire [3:0] sdram_dfi_p2_wrdata_mask;
reg sdram_dfi_p2_rddata_en = 1'd0;
wire [31:0] sdram_dfi_p2_rddata;
wire sdram_dfi_p2_rddata_valid;
reg [13:0] sdram_dfi_p3_address = 14'd0;
reg [2:0] sdram_dfi_p3_bank = 3'd0;
reg sdram_dfi_p3_cas_n = 1'd1;
wire sdram_dfi_p3_cs_n;
reg sdram_dfi_p3_ras_n = 1'd1;
reg sdram_dfi_p3_we_n = 1'd1;
wire sdram_dfi_p3_cke;
wire sdram_dfi_p3_odt;
wire sdram_dfi_p3_reset_n;
wire [31:0] sdram_dfi_p3_wrdata;
reg sdram_dfi_p3_wrdata_en = 1'd0;
wire [3:0] sdram_dfi_p3_wrdata_mask;
reg sdram_dfi_p3_rddata_en = 1'd0;
wire [31:0] sdram_dfi_p3_rddata;
wire sdram_dfi_p3_rddata_valid;
wire sdram_interface_bank0_valid;
wire sdram_interface_bank0_ready;
wire sdram_interface_bank0_we;
wire [20:0] sdram_interface_bank0_adr;
wire sdram_interface_bank0_lock;
wire sdram_interface_bank0_wdata_ready;
wire sdram_interface_bank0_rdata_valid;
wire sdram_interface_bank1_valid;
wire sdram_interface_bank1_ready;
wire sdram_interface_bank1_we;
wire [20:0] sdram_interface_bank1_adr;
wire sdram_interface_bank1_lock;
wire sdram_interface_bank1_wdata_ready;
wire sdram_interface_bank1_rdata_valid;
wire sdram_interface_bank2_valid;
wire sdram_interface_bank2_ready;
wire sdram_interface_bank2_we;
wire [20:0] sdram_interface_bank2_adr;
wire sdram_interface_bank2_lock;
wire sdram_interface_bank2_wdata_ready;
wire sdram_interface_bank2_rdata_valid;
wire sdram_interface_bank3_valid;
wire sdram_interface_bank3_ready;
wire sdram_interface_bank3_we;
wire [20:0] sdram_interface_bank3_adr;
wire sdram_interface_bank3_lock;
wire sdram_interface_bank3_wdata_ready;
wire sdram_interface_bank3_rdata_valid;
wire sdram_interface_bank4_valid;
wire sdram_interface_bank4_ready;
wire sdram_interface_bank4_we;
wire [20:0] sdram_interface_bank4_adr;
wire sdram_interface_bank4_lock;
wire sdram_interface_bank4_wdata_ready;
wire sdram_interface_bank4_rdata_valid;
wire sdram_interface_bank5_valid;
wire sdram_interface_bank5_ready;
wire sdram_interface_bank5_we;
wire [20:0] sdram_interface_bank5_adr;
wire sdram_interface_bank5_lock;
wire sdram_interface_bank5_wdata_ready;
wire sdram_interface_bank5_rdata_valid;
wire sdram_interface_bank6_valid;
wire sdram_interface_bank6_ready;
wire sdram_interface_bank6_we;
wire [20:0] sdram_interface_bank6_adr;
wire sdram_interface_bank6_lock;
wire sdram_interface_bank6_wdata_ready;
wire sdram_interface_bank6_rdata_valid;
wire sdram_interface_bank7_valid;
wire sdram_interface_bank7_ready;
wire sdram_interface_bank7_we;
wire [20:0] sdram_interface_bank7_adr;
wire sdram_interface_bank7_lock;
wire sdram_interface_bank7_wdata_ready;
wire sdram_interface_bank7_rdata_valid;
reg [127:0] sdram_interface_wdata = 128'd0;
reg [15:0] sdram_interface_wdata_we = 16'd0;
wire [127:0] sdram_interface_rdata;
reg sdram_cmd_valid = 1'd0;
reg sdram_cmd_ready = 1'd0;
reg sdram_cmd_last = 1'd0;
reg [13:0] sdram_cmd_payload_a = 14'd0;
reg [2:0] sdram_cmd_payload_ba = 3'd0;
reg sdram_cmd_payload_cas = 1'd0;
reg sdram_cmd_payload_ras = 1'd0;
reg sdram_cmd_payload_we = 1'd0;
reg sdram_cmd_payload_is_read = 1'd0;
reg sdram_cmd_payload_is_write = 1'd0;
reg sdram_seq_start = 1'd0;
reg sdram_seq_done = 1'd0;
reg [4:0] sdram_counter = 5'd0;
wire sdram_wait;
wire sdram_done;
reg [9:0] sdram_count = 10'd782;
wire sdram_bankmachine0_req_valid;
wire sdram_bankmachine0_req_ready;
wire sdram_bankmachine0_req_we;
wire [20:0] sdram_bankmachine0_req_adr;
wire sdram_bankmachine0_req_lock;
reg sdram_bankmachine0_req_wdata_ready = 1'd0;
reg sdram_bankmachine0_req_rdata_valid = 1'd0;
wire sdram_bankmachine0_refresh_req;
reg sdram_bankmachine0_refresh_gnt = 1'd0;
reg sdram_bankmachine0_cmd_valid = 1'd0;
reg sdram_bankmachine0_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine0_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine0_cmd_payload_ba;
reg sdram_bankmachine0_cmd_payload_cas = 1'd0;
reg sdram_bankmachine0_cmd_payload_ras = 1'd0;
reg sdram_bankmachine0_cmd_payload_we = 1'd0;
reg sdram_bankmachine0_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine0_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine0_cmd_payload_is_write = 1'd0;
wire sdram_bankmachine0_sink_valid;
wire sdram_bankmachine0_sink_ready;
reg sdram_bankmachine0_sink_first = 1'd0;
reg sdram_bankmachine0_sink_last = 1'd0;
wire sdram_bankmachine0_sink_payload_we;
wire [20:0] sdram_bankmachine0_sink_payload_adr;
wire sdram_bankmachine0_source_valid;
wire sdram_bankmachine0_source_ready;
wire sdram_bankmachine0_source_first;
wire sdram_bankmachine0_source_last;
wire sdram_bankmachine0_source_payload_we;
wire [20:0] sdram_bankmachine0_source_payload_adr;
wire sdram_bankmachine0_syncfifo0_we;
wire sdram_bankmachine0_syncfifo0_writable;
wire sdram_bankmachine0_syncfifo0_re;
wire sdram_bankmachine0_syncfifo0_readable;
wire [23:0] sdram_bankmachine0_syncfifo0_din;
wire [23:0] sdram_bankmachine0_syncfifo0_dout;
reg [3:0] sdram_bankmachine0_level = 4'd0;
reg sdram_bankmachine0_replace = 1'd0;
reg [2:0] sdram_bankmachine0_produce = 3'd0;
reg [2:0] sdram_bankmachine0_consume = 3'd0;
reg [2:0] sdram_bankmachine0_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine0_wrport_dat_r;
wire sdram_bankmachine0_wrport_we;
wire [23:0] sdram_bankmachine0_wrport_dat_w;
wire sdram_bankmachine0_do_read;
wire [2:0] sdram_bankmachine0_rdport_adr;
wire [23:0] sdram_bankmachine0_rdport_dat_r;
wire sdram_bankmachine0_fifo_in_payload_we;
wire [20:0] sdram_bankmachine0_fifo_in_payload_adr;
wire sdram_bankmachine0_fifo_in_first;
wire sdram_bankmachine0_fifo_in_last;
wire sdram_bankmachine0_fifo_out_payload_we;
wire [20:0] sdram_bankmachine0_fifo_out_payload_adr;
wire sdram_bankmachine0_fifo_out_first;
wire sdram_bankmachine0_fifo_out_last;
reg sdram_bankmachine0_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine0_openrow = 14'd0;
wire sdram_bankmachine0_hit;
reg sdram_bankmachine0_track_open = 1'd0;
reg sdram_bankmachine0_track_close = 1'd0;
reg sdram_bankmachine0_sel_row_adr = 1'd0;
wire sdram_bankmachine0_wait;
wire sdram_bankmachine0_done;
reg [2:0] sdram_bankmachine0_count = 3'd5;
wire sdram_bankmachine1_req_valid;
wire sdram_bankmachine1_req_ready;
wire sdram_bankmachine1_req_we;
wire [20:0] sdram_bankmachine1_req_adr;
wire sdram_bankmachine1_req_lock;
reg sdram_bankmachine1_req_wdata_ready = 1'd0;
reg sdram_bankmachine1_req_rdata_valid = 1'd0;
wire sdram_bankmachine1_refresh_req;
reg sdram_bankmachine1_refresh_gnt = 1'd0;
reg sdram_bankmachine1_cmd_valid = 1'd0;
reg sdram_bankmachine1_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine1_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine1_cmd_payload_ba;
reg sdram_bankmachine1_cmd_payload_cas = 1'd0;
reg sdram_bankmachine1_cmd_payload_ras = 1'd0;
reg sdram_bankmachine1_cmd_payload_we = 1'd0;
reg sdram_bankmachine1_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine1_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine1_cmd_payload_is_write = 1'd0;
wire sdram_bankmachine1_sink_valid;
wire sdram_bankmachine1_sink_ready;
reg sdram_bankmachine1_sink_first = 1'd0;
reg sdram_bankmachine1_sink_last = 1'd0;
wire sdram_bankmachine1_sink_payload_we;
wire [20:0] sdram_bankmachine1_sink_payload_adr;
wire sdram_bankmachine1_source_valid;
wire sdram_bankmachine1_source_ready;
wire sdram_bankmachine1_source_first;
wire sdram_bankmachine1_source_last;
wire sdram_bankmachine1_source_payload_we;
wire [20:0] sdram_bankmachine1_source_payload_adr;
wire sdram_bankmachine1_syncfifo1_we;
wire sdram_bankmachine1_syncfifo1_writable;
wire sdram_bankmachine1_syncfifo1_re;
wire sdram_bankmachine1_syncfifo1_readable;
wire [23:0] sdram_bankmachine1_syncfifo1_din;
wire [23:0] sdram_bankmachine1_syncfifo1_dout;
reg [3:0] sdram_bankmachine1_level = 4'd0;
reg sdram_bankmachine1_replace = 1'd0;
reg [2:0] sdram_bankmachine1_produce = 3'd0;
reg [2:0] sdram_bankmachine1_consume = 3'd0;
reg [2:0] sdram_bankmachine1_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine1_wrport_dat_r;
wire sdram_bankmachine1_wrport_we;
wire [23:0] sdram_bankmachine1_wrport_dat_w;
wire sdram_bankmachine1_do_read;
wire [2:0] sdram_bankmachine1_rdport_adr;
wire [23:0] sdram_bankmachine1_rdport_dat_r;
wire sdram_bankmachine1_fifo_in_payload_we;
wire [20:0] sdram_bankmachine1_fifo_in_payload_adr;
wire sdram_bankmachine1_fifo_in_first;
wire sdram_bankmachine1_fifo_in_last;
wire sdram_bankmachine1_fifo_out_payload_we;
wire [20:0] sdram_bankmachine1_fifo_out_payload_adr;
wire sdram_bankmachine1_fifo_out_first;
wire sdram_bankmachine1_fifo_out_last;
reg sdram_bankmachine1_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine1_openrow = 14'd0;
wire sdram_bankmachine1_hit;
reg sdram_bankmachine1_track_open = 1'd0;
reg sdram_bankmachine1_track_close = 1'd0;
reg sdram_bankmachine1_sel_row_adr = 1'd0;
wire sdram_bankmachine1_wait;
wire sdram_bankmachine1_done;
reg [2:0] sdram_bankmachine1_count = 3'd5;
wire sdram_bankmachine2_req_valid;
wire sdram_bankmachine2_req_ready;
wire sdram_bankmachine2_req_we;
wire [20:0] sdram_bankmachine2_req_adr;
wire sdram_bankmachine2_req_lock;
reg sdram_bankmachine2_req_wdata_ready = 1'd0;
reg sdram_bankmachine2_req_rdata_valid = 1'd0;
wire sdram_bankmachine2_refresh_req;
reg sdram_bankmachine2_refresh_gnt = 1'd0;
reg sdram_bankmachine2_cmd_valid = 1'd0;
reg sdram_bankmachine2_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine2_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine2_cmd_payload_ba;
reg sdram_bankmachine2_cmd_payload_cas = 1'd0;
reg sdram_bankmachine2_cmd_payload_ras = 1'd0;
reg sdram_bankmachine2_cmd_payload_we = 1'd0;
reg sdram_bankmachine2_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine2_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine2_cmd_payload_is_write = 1'd0;
wire sdram_bankmachine2_sink_valid;
wire sdram_bankmachine2_sink_ready;
reg sdram_bankmachine2_sink_first = 1'd0;
reg sdram_bankmachine2_sink_last = 1'd0;
wire sdram_bankmachine2_sink_payload_we;
wire [20:0] sdram_bankmachine2_sink_payload_adr;
wire sdram_bankmachine2_source_valid;
wire sdram_bankmachine2_source_ready;
wire sdram_bankmachine2_source_first;
wire sdram_bankmachine2_source_last;
wire sdram_bankmachine2_source_payload_we;
wire [20:0] sdram_bankmachine2_source_payload_adr;
wire sdram_bankmachine2_syncfifo2_we;
wire sdram_bankmachine2_syncfifo2_writable;
wire sdram_bankmachine2_syncfifo2_re;
wire sdram_bankmachine2_syncfifo2_readable;
wire [23:0] sdram_bankmachine2_syncfifo2_din;
wire [23:0] sdram_bankmachine2_syncfifo2_dout;
reg [3:0] sdram_bankmachine2_level = 4'd0;
reg sdram_bankmachine2_replace = 1'd0;
reg [2:0] sdram_bankmachine2_produce = 3'd0;
reg [2:0] sdram_bankmachine2_consume = 3'd0;
reg [2:0] sdram_bankmachine2_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine2_wrport_dat_r;
wire sdram_bankmachine2_wrport_we;
wire [23:0] sdram_bankmachine2_wrport_dat_w;
wire sdram_bankmachine2_do_read;
wire [2:0] sdram_bankmachine2_rdport_adr;
wire [23:0] sdram_bankmachine2_rdport_dat_r;
wire sdram_bankmachine2_fifo_in_payload_we;
wire [20:0] sdram_bankmachine2_fifo_in_payload_adr;
wire sdram_bankmachine2_fifo_in_first;
wire sdram_bankmachine2_fifo_in_last;
wire sdram_bankmachine2_fifo_out_payload_we;
wire [20:0] sdram_bankmachine2_fifo_out_payload_adr;
wire sdram_bankmachine2_fifo_out_first;
wire sdram_bankmachine2_fifo_out_last;
reg sdram_bankmachine2_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine2_openrow = 14'd0;
wire sdram_bankmachine2_hit;
reg sdram_bankmachine2_track_open = 1'd0;
reg sdram_bankmachine2_track_close = 1'd0;
reg sdram_bankmachine2_sel_row_adr = 1'd0;
wire sdram_bankmachine2_wait;
wire sdram_bankmachine2_done;
reg [2:0] sdram_bankmachine2_count = 3'd5;
wire sdram_bankmachine3_req_valid;
wire sdram_bankmachine3_req_ready;
wire sdram_bankmachine3_req_we;
wire [20:0] sdram_bankmachine3_req_adr;
wire sdram_bankmachine3_req_lock;
reg sdram_bankmachine3_req_wdata_ready = 1'd0;
reg sdram_bankmachine3_req_rdata_valid = 1'd0;
wire sdram_bankmachine3_refresh_req;
reg sdram_bankmachine3_refresh_gnt = 1'd0;
reg sdram_bankmachine3_cmd_valid = 1'd0;
reg sdram_bankmachine3_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine3_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine3_cmd_payload_ba;
reg sdram_bankmachine3_cmd_payload_cas = 1'd0;
reg sdram_bankmachine3_cmd_payload_ras = 1'd0;
reg sdram_bankmachine3_cmd_payload_we = 1'd0;
reg sdram_bankmachine3_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine3_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine3_cmd_payload_is_write = 1'd0;
wire sdram_bankmachine3_sink_valid;
wire sdram_bankmachine3_sink_ready;
reg sdram_bankmachine3_sink_first = 1'd0;
reg sdram_bankmachine3_sink_last = 1'd0;
wire sdram_bankmachine3_sink_payload_we;
wire [20:0] sdram_bankmachine3_sink_payload_adr;
wire sdram_bankmachine3_source_valid;
wire sdram_bankmachine3_source_ready;
wire sdram_bankmachine3_source_first;
wire sdram_bankmachine3_source_last;
wire sdram_bankmachine3_source_payload_we;
wire [20:0] sdram_bankmachine3_source_payload_adr;
wire sdram_bankmachine3_syncfifo3_we;
wire sdram_bankmachine3_syncfifo3_writable;
wire sdram_bankmachine3_syncfifo3_re;
wire sdram_bankmachine3_syncfifo3_readable;
wire [23:0] sdram_bankmachine3_syncfifo3_din;
wire [23:0] sdram_bankmachine3_syncfifo3_dout;
reg [3:0] sdram_bankmachine3_level = 4'd0;
reg sdram_bankmachine3_replace = 1'd0;
reg [2:0] sdram_bankmachine3_produce = 3'd0;
reg [2:0] sdram_bankmachine3_consume = 3'd0;
reg [2:0] sdram_bankmachine3_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine3_wrport_dat_r;
wire sdram_bankmachine3_wrport_we;
wire [23:0] sdram_bankmachine3_wrport_dat_w;
wire sdram_bankmachine3_do_read;
wire [2:0] sdram_bankmachine3_rdport_adr;
wire [23:0] sdram_bankmachine3_rdport_dat_r;
wire sdram_bankmachine3_fifo_in_payload_we;
wire [20:0] sdram_bankmachine3_fifo_in_payload_adr;
wire sdram_bankmachine3_fifo_in_first;
wire sdram_bankmachine3_fifo_in_last;
wire sdram_bankmachine3_fifo_out_payload_we;
wire [20:0] sdram_bankmachine3_fifo_out_payload_adr;
wire sdram_bankmachine3_fifo_out_first;
wire sdram_bankmachine3_fifo_out_last;
reg sdram_bankmachine3_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine3_openrow = 14'd0;
wire sdram_bankmachine3_hit;
reg sdram_bankmachine3_track_open = 1'd0;
reg sdram_bankmachine3_track_close = 1'd0;
reg sdram_bankmachine3_sel_row_adr = 1'd0;
wire sdram_bankmachine3_wait;
wire sdram_bankmachine3_done;
reg [2:0] sdram_bankmachine3_count = 3'd5;
wire sdram_bankmachine4_req_valid;
wire sdram_bankmachine4_req_ready;
wire sdram_bankmachine4_req_we;
wire [20:0] sdram_bankmachine4_req_adr;
wire sdram_bankmachine4_req_lock;
reg sdram_bankmachine4_req_wdata_ready = 1'd0;
reg sdram_bankmachine4_req_rdata_valid = 1'd0;
wire sdram_bankmachine4_refresh_req;
reg sdram_bankmachine4_refresh_gnt = 1'd0;
reg sdram_bankmachine4_cmd_valid = 1'd0;
reg sdram_bankmachine4_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine4_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine4_cmd_payload_ba;
reg sdram_bankmachine4_cmd_payload_cas = 1'd0;
reg sdram_bankmachine4_cmd_payload_ras = 1'd0;
reg sdram_bankmachine4_cmd_payload_we = 1'd0;
reg sdram_bankmachine4_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine4_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine4_cmd_payload_is_write = 1'd0;
wire sdram_bankmachine4_sink_valid;
wire sdram_bankmachine4_sink_ready;
reg sdram_bankmachine4_sink_first = 1'd0;
reg sdram_bankmachine4_sink_last = 1'd0;
wire sdram_bankmachine4_sink_payload_we;
wire [20:0] sdram_bankmachine4_sink_payload_adr;
wire sdram_bankmachine4_source_valid;
wire sdram_bankmachine4_source_ready;
wire sdram_bankmachine4_source_first;
wire sdram_bankmachine4_source_last;
wire sdram_bankmachine4_source_payload_we;
wire [20:0] sdram_bankmachine4_source_payload_adr;
wire sdram_bankmachine4_syncfifo4_we;
wire sdram_bankmachine4_syncfifo4_writable;
wire sdram_bankmachine4_syncfifo4_re;
wire sdram_bankmachine4_syncfifo4_readable;
wire [23:0] sdram_bankmachine4_syncfifo4_din;
wire [23:0] sdram_bankmachine4_syncfifo4_dout;
reg [3:0] sdram_bankmachine4_level = 4'd0;
reg sdram_bankmachine4_replace = 1'd0;
reg [2:0] sdram_bankmachine4_produce = 3'd0;
reg [2:0] sdram_bankmachine4_consume = 3'd0;
reg [2:0] sdram_bankmachine4_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine4_wrport_dat_r;
wire sdram_bankmachine4_wrport_we;
wire [23:0] sdram_bankmachine4_wrport_dat_w;
wire sdram_bankmachine4_do_read;
wire [2:0] sdram_bankmachine4_rdport_adr;
wire [23:0] sdram_bankmachine4_rdport_dat_r;
wire sdram_bankmachine4_fifo_in_payload_we;
wire [20:0] sdram_bankmachine4_fifo_in_payload_adr;
wire sdram_bankmachine4_fifo_in_first;
wire sdram_bankmachine4_fifo_in_last;
wire sdram_bankmachine4_fifo_out_payload_we;
wire [20:0] sdram_bankmachine4_fifo_out_payload_adr;
wire sdram_bankmachine4_fifo_out_first;
wire sdram_bankmachine4_fifo_out_last;
reg sdram_bankmachine4_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine4_openrow = 14'd0;
wire sdram_bankmachine4_hit;
reg sdram_bankmachine4_track_open = 1'd0;
reg sdram_bankmachine4_track_close = 1'd0;
reg sdram_bankmachine4_sel_row_adr = 1'd0;
wire sdram_bankmachine4_wait;
wire sdram_bankmachine4_done;
reg [2:0] sdram_bankmachine4_count = 3'd5;
wire sdram_bankmachine5_req_valid;
wire sdram_bankmachine5_req_ready;
wire sdram_bankmachine5_req_we;
wire [20:0] sdram_bankmachine5_req_adr;
wire sdram_bankmachine5_req_lock;
reg sdram_bankmachine5_req_wdata_ready = 1'd0;
reg sdram_bankmachine5_req_rdata_valid = 1'd0;
wire sdram_bankmachine5_refresh_req;
reg sdram_bankmachine5_refresh_gnt = 1'd0;
reg sdram_bankmachine5_cmd_valid = 1'd0;
reg sdram_bankmachine5_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine5_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine5_cmd_payload_ba;
reg sdram_bankmachine5_cmd_payload_cas = 1'd0;
reg sdram_bankmachine5_cmd_payload_ras = 1'd0;
reg sdram_bankmachine5_cmd_payload_we = 1'd0;
reg sdram_bankmachine5_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine5_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine5_cmd_payload_is_write = 1'd0;
wire sdram_bankmachine5_sink_valid;
wire sdram_bankmachine5_sink_ready;
reg sdram_bankmachine5_sink_first = 1'd0;
reg sdram_bankmachine5_sink_last = 1'd0;
wire sdram_bankmachine5_sink_payload_we;
wire [20:0] sdram_bankmachine5_sink_payload_adr;
wire sdram_bankmachine5_source_valid;
wire sdram_bankmachine5_source_ready;
wire sdram_bankmachine5_source_first;
wire sdram_bankmachine5_source_last;
wire sdram_bankmachine5_source_payload_we;
wire [20:0] sdram_bankmachine5_source_payload_adr;
wire sdram_bankmachine5_syncfifo5_we;
wire sdram_bankmachine5_syncfifo5_writable;
wire sdram_bankmachine5_syncfifo5_re;
wire sdram_bankmachine5_syncfifo5_readable;
wire [23:0] sdram_bankmachine5_syncfifo5_din;
wire [23:0] sdram_bankmachine5_syncfifo5_dout;
reg [3:0] sdram_bankmachine5_level = 4'd0;
reg sdram_bankmachine5_replace = 1'd0;
reg [2:0] sdram_bankmachine5_produce = 3'd0;
reg [2:0] sdram_bankmachine5_consume = 3'd0;
reg [2:0] sdram_bankmachine5_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine5_wrport_dat_r;
wire sdram_bankmachine5_wrport_we;
wire [23:0] sdram_bankmachine5_wrport_dat_w;
wire sdram_bankmachine5_do_read;
wire [2:0] sdram_bankmachine5_rdport_adr;
wire [23:0] sdram_bankmachine5_rdport_dat_r;
wire sdram_bankmachine5_fifo_in_payload_we;
wire [20:0] sdram_bankmachine5_fifo_in_payload_adr;
wire sdram_bankmachine5_fifo_in_first;
wire sdram_bankmachine5_fifo_in_last;
wire sdram_bankmachine5_fifo_out_payload_we;
wire [20:0] sdram_bankmachine5_fifo_out_payload_adr;
wire sdram_bankmachine5_fifo_out_first;
wire sdram_bankmachine5_fifo_out_last;
reg sdram_bankmachine5_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine5_openrow = 14'd0;
wire sdram_bankmachine5_hit;
reg sdram_bankmachine5_track_open = 1'd0;
reg sdram_bankmachine5_track_close = 1'd0;
reg sdram_bankmachine5_sel_row_adr = 1'd0;
wire sdram_bankmachine5_wait;
wire sdram_bankmachine5_done;
reg [2:0] sdram_bankmachine5_count = 3'd5;
wire sdram_bankmachine6_req_valid;
wire sdram_bankmachine6_req_ready;
wire sdram_bankmachine6_req_we;
wire [20:0] sdram_bankmachine6_req_adr;
wire sdram_bankmachine6_req_lock;
reg sdram_bankmachine6_req_wdata_ready = 1'd0;
reg sdram_bankmachine6_req_rdata_valid = 1'd0;
wire sdram_bankmachine6_refresh_req;
reg sdram_bankmachine6_refresh_gnt = 1'd0;
reg sdram_bankmachine6_cmd_valid = 1'd0;
reg sdram_bankmachine6_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine6_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine6_cmd_payload_ba;
reg sdram_bankmachine6_cmd_payload_cas = 1'd0;
reg sdram_bankmachine6_cmd_payload_ras = 1'd0;
reg sdram_bankmachine6_cmd_payload_we = 1'd0;
reg sdram_bankmachine6_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine6_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine6_cmd_payload_is_write = 1'd0;
wire sdram_bankmachine6_sink_valid;
wire sdram_bankmachine6_sink_ready;
reg sdram_bankmachine6_sink_first = 1'd0;
reg sdram_bankmachine6_sink_last = 1'd0;
wire sdram_bankmachine6_sink_payload_we;
wire [20:0] sdram_bankmachine6_sink_payload_adr;
wire sdram_bankmachine6_source_valid;
wire sdram_bankmachine6_source_ready;
wire sdram_bankmachine6_source_first;
wire sdram_bankmachine6_source_last;
wire sdram_bankmachine6_source_payload_we;
wire [20:0] sdram_bankmachine6_source_payload_adr;
wire sdram_bankmachine6_syncfifo6_we;
wire sdram_bankmachine6_syncfifo6_writable;
wire sdram_bankmachine6_syncfifo6_re;
wire sdram_bankmachine6_syncfifo6_readable;
wire [23:0] sdram_bankmachine6_syncfifo6_din;
wire [23:0] sdram_bankmachine6_syncfifo6_dout;
reg [3:0] sdram_bankmachine6_level = 4'd0;
reg sdram_bankmachine6_replace = 1'd0;
reg [2:0] sdram_bankmachine6_produce = 3'd0;
reg [2:0] sdram_bankmachine6_consume = 3'd0;
reg [2:0] sdram_bankmachine6_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine6_wrport_dat_r;
wire sdram_bankmachine6_wrport_we;
wire [23:0] sdram_bankmachine6_wrport_dat_w;
wire sdram_bankmachine6_do_read;
wire [2:0] sdram_bankmachine6_rdport_adr;
wire [23:0] sdram_bankmachine6_rdport_dat_r;
wire sdram_bankmachine6_fifo_in_payload_we;
wire [20:0] sdram_bankmachine6_fifo_in_payload_adr;
wire sdram_bankmachine6_fifo_in_first;
wire sdram_bankmachine6_fifo_in_last;
wire sdram_bankmachine6_fifo_out_payload_we;
wire [20:0] sdram_bankmachine6_fifo_out_payload_adr;
wire sdram_bankmachine6_fifo_out_first;
wire sdram_bankmachine6_fifo_out_last;
reg sdram_bankmachine6_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine6_openrow = 14'd0;
wire sdram_bankmachine6_hit;
reg sdram_bankmachine6_track_open = 1'd0;
reg sdram_bankmachine6_track_close = 1'd0;
reg sdram_bankmachine6_sel_row_adr = 1'd0;
wire sdram_bankmachine6_wait;
wire sdram_bankmachine6_done;
reg [2:0] sdram_bankmachine6_count = 3'd5;
wire sdram_bankmachine7_req_valid;
wire sdram_bankmachine7_req_ready;
wire sdram_bankmachine7_req_we;
wire [20:0] sdram_bankmachine7_req_adr;
wire sdram_bankmachine7_req_lock;
reg sdram_bankmachine7_req_wdata_ready = 1'd0;
reg sdram_bankmachine7_req_rdata_valid = 1'd0;
wire sdram_bankmachine7_refresh_req;
reg sdram_bankmachine7_refresh_gnt = 1'd0;
reg sdram_bankmachine7_cmd_valid = 1'd0;
reg sdram_bankmachine7_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine7_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine7_cmd_payload_ba;
reg sdram_bankmachine7_cmd_payload_cas = 1'd0;
reg sdram_bankmachine7_cmd_payload_ras = 1'd0;
reg sdram_bankmachine7_cmd_payload_we = 1'd0;
reg sdram_bankmachine7_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine7_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine7_cmd_payload_is_write = 1'd0;
wire sdram_bankmachine7_sink_valid;
wire sdram_bankmachine7_sink_ready;
reg sdram_bankmachine7_sink_first = 1'd0;
reg sdram_bankmachine7_sink_last = 1'd0;
wire sdram_bankmachine7_sink_payload_we;
wire [20:0] sdram_bankmachine7_sink_payload_adr;
wire sdram_bankmachine7_source_valid;
wire sdram_bankmachine7_source_ready;
wire sdram_bankmachine7_source_first;
wire sdram_bankmachine7_source_last;
wire sdram_bankmachine7_source_payload_we;
wire [20:0] sdram_bankmachine7_source_payload_adr;
wire sdram_bankmachine7_syncfifo7_we;
wire sdram_bankmachine7_syncfifo7_writable;
wire sdram_bankmachine7_syncfifo7_re;
wire sdram_bankmachine7_syncfifo7_readable;
wire [23:0] sdram_bankmachine7_syncfifo7_din;
wire [23:0] sdram_bankmachine7_syncfifo7_dout;
reg [3:0] sdram_bankmachine7_level = 4'd0;
reg sdram_bankmachine7_replace = 1'd0;
reg [2:0] sdram_bankmachine7_produce = 3'd0;
reg [2:0] sdram_bankmachine7_consume = 3'd0;
reg [2:0] sdram_bankmachine7_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine7_wrport_dat_r;
wire sdram_bankmachine7_wrport_we;
wire [23:0] sdram_bankmachine7_wrport_dat_w;
wire sdram_bankmachine7_do_read;
wire [2:0] sdram_bankmachine7_rdport_adr;
wire [23:0] sdram_bankmachine7_rdport_dat_r;
wire sdram_bankmachine7_fifo_in_payload_we;
wire [20:0] sdram_bankmachine7_fifo_in_payload_adr;
wire sdram_bankmachine7_fifo_in_first;
wire sdram_bankmachine7_fifo_in_last;
wire sdram_bankmachine7_fifo_out_payload_we;
wire [20:0] sdram_bankmachine7_fifo_out_payload_adr;
wire sdram_bankmachine7_fifo_out_first;
wire sdram_bankmachine7_fifo_out_last;
reg sdram_bankmachine7_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine7_openrow = 14'd0;
wire sdram_bankmachine7_hit;
reg sdram_bankmachine7_track_open = 1'd0;
reg sdram_bankmachine7_track_close = 1'd0;
reg sdram_bankmachine7_sel_row_adr = 1'd0;
wire sdram_bankmachine7_wait;
wire sdram_bankmachine7_done;
reg [2:0] sdram_bankmachine7_count = 3'd5;
reg sdram_choose_cmd_want_reads = 1'd0;
reg sdram_choose_cmd_want_writes = 1'd0;
reg sdram_choose_cmd_want_cmds = 1'd0;
wire sdram_choose_cmd_cmd_valid;
reg sdram_choose_cmd_cmd_ready = 1'd0;
wire [13:0] sdram_choose_cmd_cmd_payload_a;
wire [2:0] sdram_choose_cmd_cmd_payload_ba;
reg sdram_choose_cmd_cmd_payload_cas = 1'd0;
reg sdram_choose_cmd_cmd_payload_ras = 1'd0;
reg sdram_choose_cmd_cmd_payload_we = 1'd0;
wire sdram_choose_cmd_cmd_payload_is_cmd;
wire sdram_choose_cmd_cmd_payload_is_read;
wire sdram_choose_cmd_cmd_payload_is_write;
reg [7:0] sdram_choose_cmd_valids = 8'd0;
wire [7:0] sdram_choose_cmd_request;
reg [2:0] sdram_choose_cmd_grant = 3'd0;
wire sdram_choose_cmd_ce;
reg sdram_choose_req_want_reads = 1'd0;
reg sdram_choose_req_want_writes = 1'd0;
reg sdram_choose_req_want_cmds = 1'd0;
wire sdram_choose_req_cmd_valid;
reg sdram_choose_req_cmd_ready = 1'd0;
wire [13:0] sdram_choose_req_cmd_payload_a;
wire [2:0] sdram_choose_req_cmd_payload_ba;
reg sdram_choose_req_cmd_payload_cas = 1'd0;
reg sdram_choose_req_cmd_payload_ras = 1'd0;
reg sdram_choose_req_cmd_payload_we = 1'd0;
wire sdram_choose_req_cmd_payload_is_cmd;
wire sdram_choose_req_cmd_payload_is_read;
wire sdram_choose_req_cmd_payload_is_write;
reg [7:0] sdram_choose_req_valids = 8'd0;
wire [7:0] sdram_choose_req_request;
reg [2:0] sdram_choose_req_grant = 3'd0;
wire sdram_choose_req_ce;
reg [13:0] sdram_nop_a = 14'd0;
reg [2:0] sdram_nop_ba = 3'd0;
reg sdram_nop_cas = 1'd0;
reg sdram_nop_ras = 1'd0;
reg sdram_nop_we = 1'd0;
reg [1:0] sdram_sel0 = 2'd0;
reg [1:0] sdram_sel1 = 2'd0;
reg [1:0] sdram_sel2 = 2'd0;
reg [1:0] sdram_sel3 = 2'd0;
wire sdram_read_available;
wire sdram_write_available;
reg sdram_en0 = 1'd0;
wire sdram_max_time0;
reg [4:0] sdram_time0 = 5'd0;
reg sdram_en1 = 1'd0;
wire sdram_max_time1;
reg [3:0] sdram_time1 = 4'd0;
wire sdram_go_to_refresh;
wire sdram_bandwidth_update_re;
wire sdram_bandwidth_update_r;
reg sdram_bandwidth_update_w = 1'd0;
reg [23:0] sdram_bandwidth_nreads_status = 24'd0;
reg [23:0] sdram_bandwidth_nwrites_status = 24'd0;
reg [7:0] sdram_bandwidth_data_width_status = 8'd128;
reg sdram_bandwidth_cmd_valid = 1'd0;
reg sdram_bandwidth_cmd_ready = 1'd0;
reg sdram_bandwidth_cmd_is_read = 1'd0;
reg sdram_bandwidth_cmd_is_write = 1'd0;
reg [23:0] sdram_bandwidth_counter = 24'd0;
reg sdram_bandwidth_period = 1'd0;
reg [23:0] sdram_bandwidth_nreads = 24'd0;
reg [23:0] sdram_bandwidth_nwrites = 24'd0;
reg [23:0] sdram_bandwidth_nreads_r = 24'd0;
reg [23:0] sdram_bandwidth_nwrites_r = 24'd0;
wire [29:0] interface1_wb_sdram_adr;
wire [31:0] interface1_wb_sdram_dat_w;
wire [31:0] interface1_wb_sdram_dat_r;
wire [3:0] interface1_wb_sdram_sel;
wire interface1_wb_sdram_cyc;
wire interface1_wb_sdram_stb;
wire interface1_wb_sdram_ack;
wire interface1_wb_sdram_we;
wire [2:0] interface1_wb_sdram_cti;
wire [1:0] interface1_wb_sdram_bte;
wire interface1_wb_sdram_err;
reg port_cmd_valid = 1'd0;
wire port_cmd_ready;
reg port_cmd_payload_we = 1'd0;
wire [23:0] port_cmd_payload_adr;
reg port_wdata_valid = 1'd0;
wire port_wdata_ready;
wire [127:0] port_wdata_payload_data;
wire [15:0] port_wdata_payload_we;
wire port_rdata_valid;
reg port_rdata_ready = 1'd0;
wire [127:0] port_rdata_payload_data;
wire [29:0] interface_adr;
wire [127:0] interface_dat_w;
wire [127:0] interface_dat_r;
wire [15:0] interface_sel;
reg interface_cyc = 1'd0;
reg interface_stb = 1'd0;
reg interface_ack = 1'd0;
reg interface_we = 1'd0;
wire [8:0] data_port_adr;
wire [127:0] data_port_dat_r;
reg [15:0] data_port_we = 16'd0;
reg [127:0] data_port_dat_w = 128'd0;
reg write_from_slave = 1'd0;
reg [1:0] adr_offset_r = 2'd0;
wire [8:0] tag_port_adr;
wire [23:0] tag_port_dat_r;
reg tag_port_we = 1'd0;
wire [23:0] tag_port_dat_w;
wire [22:0] tag_do_tag;
wire tag_do_dirty;
wire [22:0] tag_di_tag;
reg tag_di_dirty = 1'd0;
reg word_clr = 1'd0;
reg word_inc = 1'd0;
reg [1:0] refresher_state = 2'd0;
reg [1:0] refresher_next_state = 2'd0;
reg [2:0] bankmachine0_state = 3'd0;
reg [2:0] bankmachine0_next_state = 3'd0;
reg [2:0] bankmachine1_state = 3'd0;
reg [2:0] bankmachine1_next_state = 3'd0;
reg [2:0] bankmachine2_state = 3'd0;
reg [2:0] bankmachine2_next_state = 3'd0;
reg [2:0] bankmachine3_state = 3'd0;
reg [2:0] bankmachine3_next_state = 3'd0;
reg [2:0] bankmachine4_state = 3'd0;
reg [2:0] bankmachine4_next_state = 3'd0;
reg [2:0] bankmachine5_state = 3'd0;
reg [2:0] bankmachine5_next_state = 3'd0;
reg [2:0] bankmachine6_state = 3'd0;
reg [2:0] bankmachine6_next_state = 3'd0;
reg [2:0] bankmachine7_state = 3'd0;
reg [2:0] bankmachine7_next_state = 3'd0;
reg [3:0] multiplexer_state = 4'd0;
reg [3:0] multiplexer_next_state = 4'd0;
wire [2:0] cba;
wire [20:0] rca;
wire roundrobin0_request;
wire roundrobin0_grant;
wire roundrobin0_ce;
wire roundrobin1_request;
wire roundrobin1_grant;
wire roundrobin1_ce;
wire roundrobin2_request;
wire roundrobin2_grant;
wire roundrobin2_ce;
wire roundrobin3_request;
wire roundrobin3_grant;
wire roundrobin3_ce;
wire roundrobin4_request;
wire roundrobin4_grant;
wire roundrobin4_ce;
wire roundrobin5_request;
wire roundrobin5_grant;
wire roundrobin5_ce;
wire roundrobin6_request;
wire roundrobin6_grant;
wire roundrobin6_ce;
wire roundrobin7_request;
wire roundrobin7_grant;
wire roundrobin7_ce;
reg new_master_wdata_ready0 = 1'd0;
reg new_master_wdata_ready1 = 1'd0;
reg new_master_wdata_ready2 = 1'd0;
reg new_master_rdata_valid0 = 1'd0;
reg new_master_rdata_valid1 = 1'd0;
reg new_master_rdata_valid2 = 1'd0;
reg new_master_rdata_valid3 = 1'd0;
reg new_master_rdata_valid4 = 1'd0;
reg new_master_rdata_valid5 = 1'd0;
reg new_master_rdata_valid6 = 1'd0;
reg [2:0] fullmemorywe_state = 3'd0;
reg [2:0] fullmemorywe_next_state = 3'd0;
reg [1:0] litedramwishbonebridge_state = 2'd0;
reg [1:0] litedramwishbonebridge_next_state = 2'd0;
wire wb_sdram_con_request;
wire wb_sdram_con_grant;
wire [29:0] basesoc_shared_adr;
wire [31:0] basesoc_shared_dat_w;
wire [31:0] basesoc_shared_dat_r;
wire [3:0] basesoc_shared_sel;
wire basesoc_shared_cyc;
wire basesoc_shared_stb;
wire basesoc_shared_ack;
wire basesoc_shared_we;
wire [2:0] basesoc_shared_cti;
wire [1:0] basesoc_shared_bte;
wire basesoc_shared_err;
wire [1:0] basesoc_request;
reg basesoc_grant = 1'd0;
reg [4:0] basesoc_slave_sel = 5'd0;
reg [4:0] basesoc_slave_sel_r = 5'd0;
wire [13:0] basesoc_interface0_bank_bus_adr;
wire basesoc_interface0_bank_bus_we;
wire [7:0] basesoc_interface0_bank_bus_dat_w;
reg [7:0] basesoc_interface0_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank0_dly_sel0_re;
wire [1:0] basesoc_csrbank0_dly_sel0_r;
wire [1:0] basesoc_csrbank0_dly_sel0_w;
wire basesoc_csrbank0_sel;
wire [13:0] basesoc_sram_bus_adr1;
wire basesoc_sram_bus_we1;
wire [7:0] basesoc_sram_bus_dat_w1;
reg [7:0] basesoc_sram_bus_dat_r1 = 8'd0;
wire [2:0] basesoc_adr;
wire [7:0] basesoc_dat_r;
wire basesoc_sel;
reg basesoc_sel_r = 1'd0;
wire [13:0] basesoc_interface1_bank_bus_adr;
wire basesoc_interface1_bank_bus_we;
wire [7:0] basesoc_interface1_bank_bus_dat_w;
reg [7:0] basesoc_interface1_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank1_dna_id7_re;
wire basesoc_csrbank1_dna_id7_r;
wire basesoc_csrbank1_dna_id7_w;
wire basesoc_csrbank1_dna_id6_re;
wire [7:0] basesoc_csrbank1_dna_id6_r;
wire [7:0] basesoc_csrbank1_dna_id6_w;
wire basesoc_csrbank1_dna_id5_re;
wire [7:0] basesoc_csrbank1_dna_id5_r;
wire [7:0] basesoc_csrbank1_dna_id5_w;
wire basesoc_csrbank1_dna_id4_re;
wire [7:0] basesoc_csrbank1_dna_id4_r;
wire [7:0] basesoc_csrbank1_dna_id4_w;
wire basesoc_csrbank1_dna_id3_re;
wire [7:0] basesoc_csrbank1_dna_id3_r;
wire [7:0] basesoc_csrbank1_dna_id3_w;
wire basesoc_csrbank1_dna_id2_re;
wire [7:0] basesoc_csrbank1_dna_id2_r;
wire [7:0] basesoc_csrbank1_dna_id2_w;
wire basesoc_csrbank1_dna_id1_re;
wire [7:0] basesoc_csrbank1_dna_id1_r;
wire [7:0] basesoc_csrbank1_dna_id1_w;
wire basesoc_csrbank1_dna_id0_re;
wire [7:0] basesoc_csrbank1_dna_id0_r;
wire [7:0] basesoc_csrbank1_dna_id0_w;
wire basesoc_csrbank1_git_commit19_re;
wire [7:0] basesoc_csrbank1_git_commit19_r;
wire [7:0] basesoc_csrbank1_git_commit19_w;
wire basesoc_csrbank1_git_commit18_re;
wire [7:0] basesoc_csrbank1_git_commit18_r;
wire [7:0] basesoc_csrbank1_git_commit18_w;
wire basesoc_csrbank1_git_commit17_re;
wire [7:0] basesoc_csrbank1_git_commit17_r;
wire [7:0] basesoc_csrbank1_git_commit17_w;
wire basesoc_csrbank1_git_commit16_re;
wire [7:0] basesoc_csrbank1_git_commit16_r;
wire [7:0] basesoc_csrbank1_git_commit16_w;
wire basesoc_csrbank1_git_commit15_re;
wire [7:0] basesoc_csrbank1_git_commit15_r;
wire [7:0] basesoc_csrbank1_git_commit15_w;
wire basesoc_csrbank1_git_commit14_re;
wire [7:0] basesoc_csrbank1_git_commit14_r;
wire [7:0] basesoc_csrbank1_git_commit14_w;
wire basesoc_csrbank1_git_commit13_re;
wire [7:0] basesoc_csrbank1_git_commit13_r;
wire [7:0] basesoc_csrbank1_git_commit13_w;
wire basesoc_csrbank1_git_commit12_re;
wire [7:0] basesoc_csrbank1_git_commit12_r;
wire [7:0] basesoc_csrbank1_git_commit12_w;
wire basesoc_csrbank1_git_commit11_re;
wire [7:0] basesoc_csrbank1_git_commit11_r;
wire [7:0] basesoc_csrbank1_git_commit11_w;
wire basesoc_csrbank1_git_commit10_re;
wire [7:0] basesoc_csrbank1_git_commit10_r;
wire [7:0] basesoc_csrbank1_git_commit10_w;
wire basesoc_csrbank1_git_commit9_re;
wire [7:0] basesoc_csrbank1_git_commit9_r;
wire [7:0] basesoc_csrbank1_git_commit9_w;
wire basesoc_csrbank1_git_commit8_re;
wire [7:0] basesoc_csrbank1_git_commit8_r;
wire [7:0] basesoc_csrbank1_git_commit8_w;
wire basesoc_csrbank1_git_commit7_re;
wire [7:0] basesoc_csrbank1_git_commit7_r;
wire [7:0] basesoc_csrbank1_git_commit7_w;
wire basesoc_csrbank1_git_commit6_re;
wire [7:0] basesoc_csrbank1_git_commit6_r;
wire [7:0] basesoc_csrbank1_git_commit6_w;
wire basesoc_csrbank1_git_commit5_re;
wire [7:0] basesoc_csrbank1_git_commit5_r;
wire [7:0] basesoc_csrbank1_git_commit5_w;
wire basesoc_csrbank1_git_commit4_re;
wire [7:0] basesoc_csrbank1_git_commit4_r;
wire [7:0] basesoc_csrbank1_git_commit4_w;
wire basesoc_csrbank1_git_commit3_re;
wire [7:0] basesoc_csrbank1_git_commit3_r;
wire [7:0] basesoc_csrbank1_git_commit3_w;
wire basesoc_csrbank1_git_commit2_re;
wire [7:0] basesoc_csrbank1_git_commit2_r;
wire [7:0] basesoc_csrbank1_git_commit2_w;
wire basesoc_csrbank1_git_commit1_re;
wire [7:0] basesoc_csrbank1_git_commit1_r;
wire [7:0] basesoc_csrbank1_git_commit1_w;
wire basesoc_csrbank1_git_commit0_re;
wire [7:0] basesoc_csrbank1_git_commit0_r;
wire [7:0] basesoc_csrbank1_git_commit0_w;
wire basesoc_csrbank1_platform_platform7_re;
wire [7:0] basesoc_csrbank1_platform_platform7_r;
wire [7:0] basesoc_csrbank1_platform_platform7_w;
wire basesoc_csrbank1_platform_platform6_re;
wire [7:0] basesoc_csrbank1_platform_platform6_r;
wire [7:0] basesoc_csrbank1_platform_platform6_w;
wire basesoc_csrbank1_platform_platform5_re;
wire [7:0] basesoc_csrbank1_platform_platform5_r;
wire [7:0] basesoc_csrbank1_platform_platform5_w;
wire basesoc_csrbank1_platform_platform4_re;
wire [7:0] basesoc_csrbank1_platform_platform4_r;
wire [7:0] basesoc_csrbank1_platform_platform4_w;
wire basesoc_csrbank1_platform_platform3_re;
wire [7:0] basesoc_csrbank1_platform_platform3_r;
wire [7:0] basesoc_csrbank1_platform_platform3_w;
wire basesoc_csrbank1_platform_platform2_re;
wire [7:0] basesoc_csrbank1_platform_platform2_r;
wire [7:0] basesoc_csrbank1_platform_platform2_w;
wire basesoc_csrbank1_platform_platform1_re;
wire [7:0] basesoc_csrbank1_platform_platform1_r;
wire [7:0] basesoc_csrbank1_platform_platform1_w;
wire basesoc_csrbank1_platform_platform0_re;
wire [7:0] basesoc_csrbank1_platform_platform0_r;
wire [7:0] basesoc_csrbank1_platform_platform0_w;
wire basesoc_csrbank1_platform_target7_re;
wire [7:0] basesoc_csrbank1_platform_target7_r;
wire [7:0] basesoc_csrbank1_platform_target7_w;
wire basesoc_csrbank1_platform_target6_re;
wire [7:0] basesoc_csrbank1_platform_target6_r;
wire [7:0] basesoc_csrbank1_platform_target6_w;
wire basesoc_csrbank1_platform_target5_re;
wire [7:0] basesoc_csrbank1_platform_target5_r;
wire [7:0] basesoc_csrbank1_platform_target5_w;
wire basesoc_csrbank1_platform_target4_re;
wire [7:0] basesoc_csrbank1_platform_target4_r;
wire [7:0] basesoc_csrbank1_platform_target4_w;
wire basesoc_csrbank1_platform_target3_re;
wire [7:0] basesoc_csrbank1_platform_target3_r;
wire [7:0] basesoc_csrbank1_platform_target3_w;
wire basesoc_csrbank1_platform_target2_re;
wire [7:0] basesoc_csrbank1_platform_target2_r;
wire [7:0] basesoc_csrbank1_platform_target2_w;
wire basesoc_csrbank1_platform_target1_re;
wire [7:0] basesoc_csrbank1_platform_target1_r;
wire [7:0] basesoc_csrbank1_platform_target1_w;
wire basesoc_csrbank1_platform_target0_re;
wire [7:0] basesoc_csrbank1_platform_target0_r;
wire [7:0] basesoc_csrbank1_platform_target0_w;
wire basesoc_csrbank1_xadc_temperature1_re;
wire [3:0] basesoc_csrbank1_xadc_temperature1_r;
wire [3:0] basesoc_csrbank1_xadc_temperature1_w;
wire basesoc_csrbank1_xadc_temperature0_re;
wire [7:0] basesoc_csrbank1_xadc_temperature0_r;
wire [7:0] basesoc_csrbank1_xadc_temperature0_w;
wire basesoc_csrbank1_xadc_vccint1_re;
wire [3:0] basesoc_csrbank1_xadc_vccint1_r;
wire [3:0] basesoc_csrbank1_xadc_vccint1_w;
wire basesoc_csrbank1_xadc_vccint0_re;
wire [7:0] basesoc_csrbank1_xadc_vccint0_r;
wire [7:0] basesoc_csrbank1_xadc_vccint0_w;
wire basesoc_csrbank1_xadc_vccaux1_re;
wire [3:0] basesoc_csrbank1_xadc_vccaux1_r;
wire [3:0] basesoc_csrbank1_xadc_vccaux1_w;
wire basesoc_csrbank1_xadc_vccaux0_re;
wire [7:0] basesoc_csrbank1_xadc_vccaux0_r;
wire [7:0] basesoc_csrbank1_xadc_vccaux0_w;
wire basesoc_csrbank1_xadc_vccbram1_re;
wire [3:0] basesoc_csrbank1_xadc_vccbram1_r;
wire [3:0] basesoc_csrbank1_xadc_vccbram1_w;
wire basesoc_csrbank1_xadc_vccbram0_re;
wire [7:0] basesoc_csrbank1_xadc_vccbram0_r;
wire [7:0] basesoc_csrbank1_xadc_vccbram0_w;
wire basesoc_csrbank1_sel;
wire [13:0] basesoc_interface2_bank_bus_adr;
wire basesoc_interface2_bank_bus_we;
wire [7:0] basesoc_interface2_bank_bus_dat_w;
reg [7:0] basesoc_interface2_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank2_dfii_control0_re;
wire [3:0] basesoc_csrbank2_dfii_control0_r;
wire [3:0] basesoc_csrbank2_dfii_control0_w;
wire basesoc_csrbank2_dfii_pi0_command0_re;
wire [5:0] basesoc_csrbank2_dfii_pi0_command0_r;
wire [5:0] basesoc_csrbank2_dfii_pi0_command0_w;
wire basesoc_csrbank2_dfii_pi0_address1_re;
wire [5:0] basesoc_csrbank2_dfii_pi0_address1_r;
wire [5:0] basesoc_csrbank2_dfii_pi0_address1_w;
wire basesoc_csrbank2_dfii_pi0_address0_re;
wire [7:0] basesoc_csrbank2_dfii_pi0_address0_r;
wire [7:0] basesoc_csrbank2_dfii_pi0_address0_w;
wire basesoc_csrbank2_dfii_pi0_baddress0_re;
wire [2:0] basesoc_csrbank2_dfii_pi0_baddress0_r;
wire [2:0] basesoc_csrbank2_dfii_pi0_baddress0_w;
wire basesoc_csrbank2_dfii_pi0_wrdata3_re;
wire [7:0] basesoc_csrbank2_dfii_pi0_wrdata3_r;
wire [7:0] basesoc_csrbank2_dfii_pi0_wrdata3_w;
wire basesoc_csrbank2_dfii_pi0_wrdata2_re;
wire [7:0] basesoc_csrbank2_dfii_pi0_wrdata2_r;
wire [7:0] basesoc_csrbank2_dfii_pi0_wrdata2_w;
wire basesoc_csrbank2_dfii_pi0_wrdata1_re;
wire [7:0] basesoc_csrbank2_dfii_pi0_wrdata1_r;
wire [7:0] basesoc_csrbank2_dfii_pi0_wrdata1_w;
wire basesoc_csrbank2_dfii_pi0_wrdata0_re;
wire [7:0] basesoc_csrbank2_dfii_pi0_wrdata0_r;
wire [7:0] basesoc_csrbank2_dfii_pi0_wrdata0_w;
wire basesoc_csrbank2_dfii_pi0_rddata3_re;
wire [7:0] basesoc_csrbank2_dfii_pi0_rddata3_r;
wire [7:0] basesoc_csrbank2_dfii_pi0_rddata3_w;
wire basesoc_csrbank2_dfii_pi0_rddata2_re;
wire [7:0] basesoc_csrbank2_dfii_pi0_rddata2_r;
wire [7:0] basesoc_csrbank2_dfii_pi0_rddata2_w;
wire basesoc_csrbank2_dfii_pi0_rddata1_re;
wire [7:0] basesoc_csrbank2_dfii_pi0_rddata1_r;
wire [7:0] basesoc_csrbank2_dfii_pi0_rddata1_w;
wire basesoc_csrbank2_dfii_pi0_rddata0_re;
wire [7:0] basesoc_csrbank2_dfii_pi0_rddata0_r;
wire [7:0] basesoc_csrbank2_dfii_pi0_rddata0_w;
wire basesoc_csrbank2_dfii_pi1_command0_re;
wire [5:0] basesoc_csrbank2_dfii_pi1_command0_r;
wire [5:0] basesoc_csrbank2_dfii_pi1_command0_w;
wire basesoc_csrbank2_dfii_pi1_address1_re;
wire [5:0] basesoc_csrbank2_dfii_pi1_address1_r;
wire [5:0] basesoc_csrbank2_dfii_pi1_address1_w;
wire basesoc_csrbank2_dfii_pi1_address0_re;
wire [7:0] basesoc_csrbank2_dfii_pi1_address0_r;
wire [7:0] basesoc_csrbank2_dfii_pi1_address0_w;
wire basesoc_csrbank2_dfii_pi1_baddress0_re;
wire [2:0] basesoc_csrbank2_dfii_pi1_baddress0_r;
wire [2:0] basesoc_csrbank2_dfii_pi1_baddress0_w;
wire basesoc_csrbank2_dfii_pi1_wrdata3_re;
wire [7:0] basesoc_csrbank2_dfii_pi1_wrdata3_r;
wire [7:0] basesoc_csrbank2_dfii_pi1_wrdata3_w;
wire basesoc_csrbank2_dfii_pi1_wrdata2_re;
wire [7:0] basesoc_csrbank2_dfii_pi1_wrdata2_r;
wire [7:0] basesoc_csrbank2_dfii_pi1_wrdata2_w;
wire basesoc_csrbank2_dfii_pi1_wrdata1_re;
wire [7:0] basesoc_csrbank2_dfii_pi1_wrdata1_r;
wire [7:0] basesoc_csrbank2_dfii_pi1_wrdata1_w;
wire basesoc_csrbank2_dfii_pi1_wrdata0_re;
wire [7:0] basesoc_csrbank2_dfii_pi1_wrdata0_r;
wire [7:0] basesoc_csrbank2_dfii_pi1_wrdata0_w;
wire basesoc_csrbank2_dfii_pi1_rddata3_re;
wire [7:0] basesoc_csrbank2_dfii_pi1_rddata3_r;
wire [7:0] basesoc_csrbank2_dfii_pi1_rddata3_w;
wire basesoc_csrbank2_dfii_pi1_rddata2_re;
wire [7:0] basesoc_csrbank2_dfii_pi1_rddata2_r;
wire [7:0] basesoc_csrbank2_dfii_pi1_rddata2_w;
wire basesoc_csrbank2_dfii_pi1_rddata1_re;
wire [7:0] basesoc_csrbank2_dfii_pi1_rddata1_r;
wire [7:0] basesoc_csrbank2_dfii_pi1_rddata1_w;
wire basesoc_csrbank2_dfii_pi1_rddata0_re;
wire [7:0] basesoc_csrbank2_dfii_pi1_rddata0_r;
wire [7:0] basesoc_csrbank2_dfii_pi1_rddata0_w;
wire basesoc_csrbank2_dfii_pi2_command0_re;
wire [5:0] basesoc_csrbank2_dfii_pi2_command0_r;
wire [5:0] basesoc_csrbank2_dfii_pi2_command0_w;
wire basesoc_csrbank2_dfii_pi2_address1_re;
wire [5:0] basesoc_csrbank2_dfii_pi2_address1_r;
wire [5:0] basesoc_csrbank2_dfii_pi2_address1_w;
wire basesoc_csrbank2_dfii_pi2_address0_re;
wire [7:0] basesoc_csrbank2_dfii_pi2_address0_r;
wire [7:0] basesoc_csrbank2_dfii_pi2_address0_w;
wire basesoc_csrbank2_dfii_pi2_baddress0_re;
wire [2:0] basesoc_csrbank2_dfii_pi2_baddress0_r;
wire [2:0] basesoc_csrbank2_dfii_pi2_baddress0_w;
wire basesoc_csrbank2_dfii_pi2_wrdata3_re;
wire [7:0] basesoc_csrbank2_dfii_pi2_wrdata3_r;
wire [7:0] basesoc_csrbank2_dfii_pi2_wrdata3_w;
wire basesoc_csrbank2_dfii_pi2_wrdata2_re;
wire [7:0] basesoc_csrbank2_dfii_pi2_wrdata2_r;
wire [7:0] basesoc_csrbank2_dfii_pi2_wrdata2_w;
wire basesoc_csrbank2_dfii_pi2_wrdata1_re;
wire [7:0] basesoc_csrbank2_dfii_pi2_wrdata1_r;
wire [7:0] basesoc_csrbank2_dfii_pi2_wrdata1_w;
wire basesoc_csrbank2_dfii_pi2_wrdata0_re;
wire [7:0] basesoc_csrbank2_dfii_pi2_wrdata0_r;
wire [7:0] basesoc_csrbank2_dfii_pi2_wrdata0_w;
wire basesoc_csrbank2_dfii_pi2_rddata3_re;
wire [7:0] basesoc_csrbank2_dfii_pi2_rddata3_r;
wire [7:0] basesoc_csrbank2_dfii_pi2_rddata3_w;
wire basesoc_csrbank2_dfii_pi2_rddata2_re;
wire [7:0] basesoc_csrbank2_dfii_pi2_rddata2_r;
wire [7:0] basesoc_csrbank2_dfii_pi2_rddata2_w;
wire basesoc_csrbank2_dfii_pi2_rddata1_re;
wire [7:0] basesoc_csrbank2_dfii_pi2_rddata1_r;
wire [7:0] basesoc_csrbank2_dfii_pi2_rddata1_w;
wire basesoc_csrbank2_dfii_pi2_rddata0_re;
wire [7:0] basesoc_csrbank2_dfii_pi2_rddata0_r;
wire [7:0] basesoc_csrbank2_dfii_pi2_rddata0_w;
wire basesoc_csrbank2_dfii_pi3_command0_re;
wire [5:0] basesoc_csrbank2_dfii_pi3_command0_r;
wire [5:0] basesoc_csrbank2_dfii_pi3_command0_w;
wire basesoc_csrbank2_dfii_pi3_address1_re;
wire [5:0] basesoc_csrbank2_dfii_pi3_address1_r;
wire [5:0] basesoc_csrbank2_dfii_pi3_address1_w;
wire basesoc_csrbank2_dfii_pi3_address0_re;
wire [7:0] basesoc_csrbank2_dfii_pi3_address0_r;
wire [7:0] basesoc_csrbank2_dfii_pi3_address0_w;
wire basesoc_csrbank2_dfii_pi3_baddress0_re;
wire [2:0] basesoc_csrbank2_dfii_pi3_baddress0_r;
wire [2:0] basesoc_csrbank2_dfii_pi3_baddress0_w;
wire basesoc_csrbank2_dfii_pi3_wrdata3_re;
wire [7:0] basesoc_csrbank2_dfii_pi3_wrdata3_r;
wire [7:0] basesoc_csrbank2_dfii_pi3_wrdata3_w;
wire basesoc_csrbank2_dfii_pi3_wrdata2_re;
wire [7:0] basesoc_csrbank2_dfii_pi3_wrdata2_r;
wire [7:0] basesoc_csrbank2_dfii_pi3_wrdata2_w;
wire basesoc_csrbank2_dfii_pi3_wrdata1_re;
wire [7:0] basesoc_csrbank2_dfii_pi3_wrdata1_r;
wire [7:0] basesoc_csrbank2_dfii_pi3_wrdata1_w;
wire basesoc_csrbank2_dfii_pi3_wrdata0_re;
wire [7:0] basesoc_csrbank2_dfii_pi3_wrdata0_r;
wire [7:0] basesoc_csrbank2_dfii_pi3_wrdata0_w;
wire basesoc_csrbank2_dfii_pi3_rddata3_re;
wire [7:0] basesoc_csrbank2_dfii_pi3_rddata3_r;
wire [7:0] basesoc_csrbank2_dfii_pi3_rddata3_w;
wire basesoc_csrbank2_dfii_pi3_rddata2_re;
wire [7:0] basesoc_csrbank2_dfii_pi3_rddata2_r;
wire [7:0] basesoc_csrbank2_dfii_pi3_rddata2_w;
wire basesoc_csrbank2_dfii_pi3_rddata1_re;
wire [7:0] basesoc_csrbank2_dfii_pi3_rddata1_r;
wire [7:0] basesoc_csrbank2_dfii_pi3_rddata1_w;
wire basesoc_csrbank2_dfii_pi3_rddata0_re;
wire [7:0] basesoc_csrbank2_dfii_pi3_rddata0_r;
wire [7:0] basesoc_csrbank2_dfii_pi3_rddata0_w;
wire basesoc_csrbank2_controller_bandwidth_nreads2_re;
wire [7:0] basesoc_csrbank2_controller_bandwidth_nreads2_r;
wire [7:0] basesoc_csrbank2_controller_bandwidth_nreads2_w;
wire basesoc_csrbank2_controller_bandwidth_nreads1_re;
wire [7:0] basesoc_csrbank2_controller_bandwidth_nreads1_r;
wire [7:0] basesoc_csrbank2_controller_bandwidth_nreads1_w;
wire basesoc_csrbank2_controller_bandwidth_nreads0_re;
wire [7:0] basesoc_csrbank2_controller_bandwidth_nreads0_r;
wire [7:0] basesoc_csrbank2_controller_bandwidth_nreads0_w;
wire basesoc_csrbank2_controller_bandwidth_nwrites2_re;
wire [7:0] basesoc_csrbank2_controller_bandwidth_nwrites2_r;
wire [7:0] basesoc_csrbank2_controller_bandwidth_nwrites2_w;
wire basesoc_csrbank2_controller_bandwidth_nwrites1_re;
wire [7:0] basesoc_csrbank2_controller_bandwidth_nwrites1_r;
wire [7:0] basesoc_csrbank2_controller_bandwidth_nwrites1_w;
wire basesoc_csrbank2_controller_bandwidth_nwrites0_re;
wire [7:0] basesoc_csrbank2_controller_bandwidth_nwrites0_r;
wire [7:0] basesoc_csrbank2_controller_bandwidth_nwrites0_w;
wire basesoc_csrbank2_controller_bandwidth_data_width_re;
wire [7:0] basesoc_csrbank2_controller_bandwidth_data_width_r;
wire [7:0] basesoc_csrbank2_controller_bandwidth_data_width_w;
wire basesoc_csrbank2_sel;
wire [13:0] basesoc_interface3_bank_bus_adr;
wire basesoc_interface3_bank_bus_we;
wire [7:0] basesoc_interface3_bank_bus_dat_w;
reg [7:0] basesoc_interface3_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank3_bitbang0_re;
wire [3:0] basesoc_csrbank3_bitbang0_r;
wire [3:0] basesoc_csrbank3_bitbang0_w;
wire basesoc_csrbank3_miso_re;
wire basesoc_csrbank3_miso_r;
wire basesoc_csrbank3_miso_w;
wire basesoc_csrbank3_bitbang_en0_re;
wire basesoc_csrbank3_bitbang_en0_r;
wire basesoc_csrbank3_bitbang_en0_w;
wire basesoc_csrbank3_sel;
wire [13:0] basesoc_interface4_bank_bus_adr;
wire basesoc_interface4_bank_bus_we;
wire [7:0] basesoc_interface4_bank_bus_dat_w;
reg [7:0] basesoc_interface4_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank4_load3_re;
wire [7:0] basesoc_csrbank4_load3_r;
wire [7:0] basesoc_csrbank4_load3_w;
wire basesoc_csrbank4_load2_re;
wire [7:0] basesoc_csrbank4_load2_r;
wire [7:0] basesoc_csrbank4_load2_w;
wire basesoc_csrbank4_load1_re;
wire [7:0] basesoc_csrbank4_load1_r;
wire [7:0] basesoc_csrbank4_load1_w;
wire basesoc_csrbank4_load0_re;
wire [7:0] basesoc_csrbank4_load0_r;
wire [7:0] basesoc_csrbank4_load0_w;
wire basesoc_csrbank4_reload3_re;
wire [7:0] basesoc_csrbank4_reload3_r;
wire [7:0] basesoc_csrbank4_reload3_w;
wire basesoc_csrbank4_reload2_re;
wire [7:0] basesoc_csrbank4_reload2_r;
wire [7:0] basesoc_csrbank4_reload2_w;
wire basesoc_csrbank4_reload1_re;
wire [7:0] basesoc_csrbank4_reload1_r;
wire [7:0] basesoc_csrbank4_reload1_w;
wire basesoc_csrbank4_reload0_re;
wire [7:0] basesoc_csrbank4_reload0_r;
wire [7:0] basesoc_csrbank4_reload0_w;
wire basesoc_csrbank4_en0_re;
wire basesoc_csrbank4_en0_r;
wire basesoc_csrbank4_en0_w;
wire basesoc_csrbank4_value3_re;
wire [7:0] basesoc_csrbank4_value3_r;
wire [7:0] basesoc_csrbank4_value3_w;
wire basesoc_csrbank4_value2_re;
wire [7:0] basesoc_csrbank4_value2_r;
wire [7:0] basesoc_csrbank4_value2_w;
wire basesoc_csrbank4_value1_re;
wire [7:0] basesoc_csrbank4_value1_r;
wire [7:0] basesoc_csrbank4_value1_w;
wire basesoc_csrbank4_value0_re;
wire [7:0] basesoc_csrbank4_value0_r;
wire [7:0] basesoc_csrbank4_value0_w;
wire basesoc_csrbank4_ev_enable0_re;
wire basesoc_csrbank4_ev_enable0_r;
wire basesoc_csrbank4_ev_enable0_w;
wire basesoc_csrbank4_sel;
wire [13:0] basesoc_interface5_bank_bus_adr;
wire basesoc_interface5_bank_bus_we;
wire [7:0] basesoc_interface5_bank_bus_dat_w;
reg [7:0] basesoc_interface5_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank5_txfull_re;
wire basesoc_csrbank5_txfull_r;
wire basesoc_csrbank5_txfull_w;
wire basesoc_csrbank5_rxempty_re;
wire basesoc_csrbank5_rxempty_r;
wire basesoc_csrbank5_rxempty_w;
wire basesoc_csrbank5_ev_enable0_re;
wire [1:0] basesoc_csrbank5_ev_enable0_r;
wire [1:0] basesoc_csrbank5_ev_enable0_w;
wire basesoc_csrbank5_sel;
wire [13:0] basesoc_interface6_bank_bus_adr;
wire basesoc_interface6_bank_bus_we;
wire [7:0] basesoc_interface6_bank_bus_dat_w;
reg [7:0] basesoc_interface6_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank6_tuning_word3_re;
wire [7:0] basesoc_csrbank6_tuning_word3_r;
wire [7:0] basesoc_csrbank6_tuning_word3_w;
wire basesoc_csrbank6_tuning_word2_re;
wire [7:0] basesoc_csrbank6_tuning_word2_r;
wire [7:0] basesoc_csrbank6_tuning_word2_w;
wire basesoc_csrbank6_tuning_word1_re;
wire [7:0] basesoc_csrbank6_tuning_word1_r;
wire [7:0] basesoc_csrbank6_tuning_word1_w;
wire basesoc_csrbank6_tuning_word0_re;
wire [7:0] basesoc_csrbank6_tuning_word0_r;
wire [7:0] basesoc_csrbank6_tuning_word0_w;
wire basesoc_csrbank6_sel;
reg rhs_array_muxed0 = 1'd0;
reg [13:0] rhs_array_muxed1 = 14'd0;
reg [2:0] rhs_array_muxed2 = 3'd0;
reg rhs_array_muxed3 = 1'd0;
reg rhs_array_muxed4 = 1'd0;
reg rhs_array_muxed5 = 1'd0;
reg t_array_muxed0 = 1'd0;
reg t_array_muxed1 = 1'd0;
reg t_array_muxed2 = 1'd0;
reg rhs_array_muxed6 = 1'd0;
reg [13:0] rhs_array_muxed7 = 14'd0;
reg [2:0] rhs_array_muxed8 = 3'd0;
reg rhs_array_muxed9 = 1'd0;
reg rhs_array_muxed10 = 1'd0;
reg rhs_array_muxed11 = 1'd0;
reg t_array_muxed3 = 1'd0;
reg t_array_muxed4 = 1'd0;
reg t_array_muxed5 = 1'd0;
reg [20:0] rhs_array_muxed12 = 21'd0;
reg rhs_array_muxed13 = 1'd0;
reg rhs_array_muxed14 = 1'd0;
reg [20:0] rhs_array_muxed15 = 21'd0;
reg rhs_array_muxed16 = 1'd0;
reg rhs_array_muxed17 = 1'd0;
reg [20:0] rhs_array_muxed18 = 21'd0;
reg rhs_array_muxed19 = 1'd0;
reg rhs_array_muxed20 = 1'd0;
reg [20:0] rhs_array_muxed21 = 21'd0;
reg rhs_array_muxed22 = 1'd0;
reg rhs_array_muxed23 = 1'd0;
reg [20:0] rhs_array_muxed24 = 21'd0;
reg rhs_array_muxed25 = 1'd0;
reg rhs_array_muxed26 = 1'd0;
reg [20:0] rhs_array_muxed27 = 21'd0;
reg rhs_array_muxed28 = 1'd0;
reg rhs_array_muxed29 = 1'd0;
reg [20:0] rhs_array_muxed30 = 21'd0;
reg rhs_array_muxed31 = 1'd0;
reg rhs_array_muxed32 = 1'd0;
reg [20:0] rhs_array_muxed33 = 21'd0;
reg rhs_array_muxed34 = 1'd0;
reg rhs_array_muxed35 = 1'd0;
reg [29:0] rhs_array_muxed36 = 30'd0;
reg [31:0] rhs_array_muxed37 = 32'd0;
reg [3:0] rhs_array_muxed38 = 4'd0;
reg rhs_array_muxed39 = 1'd0;
reg rhs_array_muxed40 = 1'd0;
reg rhs_array_muxed41 = 1'd0;
reg [2:0] rhs_array_muxed42 = 3'd0;
reg [1:0] rhs_array_muxed43 = 2'd0;
reg [29:0] rhs_array_muxed44 = 30'd0;
reg [31:0] rhs_array_muxed45 = 32'd0;
reg [3:0] rhs_array_muxed46 = 4'd0;
reg rhs_array_muxed47 = 1'd0;
reg rhs_array_muxed48 = 1'd0;
reg rhs_array_muxed49 = 1'd0;
reg [2:0] rhs_array_muxed50 = 3'd0;
reg [1:0] rhs_array_muxed51 = 2'd0;
reg [13:0] array_muxed0 = 14'd0;
reg [2:0] array_muxed1 = 3'd0;
reg array_muxed2 = 1'd0;
reg array_muxed3 = 1'd0;
reg array_muxed4 = 1'd0;
reg array_muxed5 = 1'd0;
reg array_muxed6 = 1'd0;
reg [13:0] array_muxed7 = 14'd0;
reg [2:0] array_muxed8 = 3'd0;
reg array_muxed9 = 1'd0;
reg array_muxed10 = 1'd0;
reg array_muxed11 = 1'd0;
reg array_muxed12 = 1'd0;
reg array_muxed13 = 1'd0;
reg [13:0] array_muxed14 = 14'd0;
reg [2:0] array_muxed15 = 3'd0;
reg array_muxed16 = 1'd0;
reg array_muxed17 = 1'd0;
reg array_muxed18 = 1'd0;
reg array_muxed19 = 1'd0;
reg array_muxed20 = 1'd0;
reg [13:0] array_muxed21 = 14'd0;
reg [2:0] array_muxed22 = 3'd0;
reg array_muxed23 = 1'd0;
reg array_muxed24 = 1'd0;
reg array_muxed25 = 1'd0;
reg array_muxed26 = 1'd0;
reg array_muxed27 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg regs0 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg regs1 = 1'd0;
(* ars_false_path = "true" *) wire xilinxasyncresetsynchronizerimpl0;
wire xilinxasyncresetsynchronizerimpl0_rst_meta;
(* ars_false_path = "true" *) wire xilinxasyncresetsynchronizerimpl1;
wire xilinxasyncresetsynchronizerimpl1_rst_meta;
(* ars_false_path = "true" *) wire xilinxasyncresetsynchronizerimpl2;
wire xilinxasyncresetsynchronizerimpl2_rst_meta;

always @(*) begin
	basesoc_interrupt <= 32'd0;
	basesoc_interrupt[1] <= basesoc_timer0_irq;
	basesoc_interrupt[2] <= basesoc_uart_irq;
end
assign basesoc_ibus_adr = basesoc_i_adr_o[31:2];
assign basesoc_dbus_adr = basesoc_d_adr_o[31:2];
assign basesoc_rom_adr = basesoc_rom_bus_adr[12:0];
assign basesoc_rom_bus_dat_r = basesoc_rom_dat_r;
always @(*) begin
	basesoc_sram_we <= 4'd0;
	basesoc_sram_we[0] <= (((basesoc_sram_bus_cyc & basesoc_sram_bus_stb) & basesoc_sram_bus_we0) & basesoc_sram_bus_sel[0]);
	basesoc_sram_we[1] <= (((basesoc_sram_bus_cyc & basesoc_sram_bus_stb) & basesoc_sram_bus_we0) & basesoc_sram_bus_sel[1]);
	basesoc_sram_we[2] <= (((basesoc_sram_bus_cyc & basesoc_sram_bus_stb) & basesoc_sram_bus_we0) & basesoc_sram_bus_sel[2]);
	basesoc_sram_we[3] <= (((basesoc_sram_bus_cyc & basesoc_sram_bus_stb) & basesoc_sram_bus_we0) & basesoc_sram_bus_sel[3]);
end
assign basesoc_sram_adr = basesoc_sram_bus_adr0[12:0];
assign basesoc_sram_bus_dat_r0 = basesoc_sram_dat_r;
assign basesoc_sram_dat_w = basesoc_sram_bus_dat_w0;
assign basesoc_uart_tx_fifo_sink_valid = basesoc_uart_rxtx_re;
assign basesoc_uart_tx_fifo_sink_payload_data = basesoc_uart_rxtx_r;
assign basesoc_uart_txfull_status = (~basesoc_uart_tx_fifo_sink_ready);
assign basesoc_uart_phy_sink_valid = basesoc_uart_tx_fifo_source_valid;
assign basesoc_uart_tx_fifo_source_ready = basesoc_uart_phy_sink_ready;
assign basesoc_uart_phy_sink_first = basesoc_uart_tx_fifo_source_first;
assign basesoc_uart_phy_sink_last = basesoc_uart_tx_fifo_source_last;
assign basesoc_uart_phy_sink_payload_data = basesoc_uart_tx_fifo_source_payload_data;
assign basesoc_uart_tx_trigger = (~basesoc_uart_tx_fifo_sink_ready);
assign basesoc_uart_rx_fifo_sink_valid = basesoc_uart_phy_source_valid;
assign basesoc_uart_phy_source_ready = basesoc_uart_rx_fifo_sink_ready;
assign basesoc_uart_rx_fifo_sink_first = basesoc_uart_phy_source_first;
assign basesoc_uart_rx_fifo_sink_last = basesoc_uart_phy_source_last;
assign basesoc_uart_rx_fifo_sink_payload_data = basesoc_uart_phy_source_payload_data;
assign basesoc_uart_rxempty_status = (~basesoc_uart_rx_fifo_source_valid);
assign basesoc_uart_rxtx_w = basesoc_uart_rx_fifo_source_payload_data;
assign basesoc_uart_rx_fifo_source_ready = basesoc_uart_rx_clear;
assign basesoc_uart_rx_trigger = (~basesoc_uart_rx_fifo_source_valid);
always @(*) begin
	basesoc_uart_tx_clear <= 1'd0;
	if ((basesoc_uart_pending_re & basesoc_uart_pending_r[0])) begin
		basesoc_uart_tx_clear <= 1'd1;
	end
end
always @(*) begin
	basesoc_uart_status_w <= 2'd0;
	basesoc_uart_status_w[0] <= basesoc_uart_tx_status;
	basesoc_uart_status_w[1] <= basesoc_uart_rx_status;
end
always @(*) begin
	basesoc_uart_rx_clear <= 1'd0;
	if ((basesoc_uart_pending_re & basesoc_uart_pending_r[1])) begin
		basesoc_uart_rx_clear <= 1'd1;
	end
end
always @(*) begin
	basesoc_uart_pending_w <= 2'd0;
	basesoc_uart_pending_w[0] <= basesoc_uart_tx_pending;
	basesoc_uart_pending_w[1] <= basesoc_uart_rx_pending;
end
assign basesoc_uart_irq = ((basesoc_uart_pending_w[0] & basesoc_uart_storage[0]) | (basesoc_uart_pending_w[1] & basesoc_uart_storage[1]));
assign basesoc_uart_tx_status = basesoc_uart_tx_trigger;
assign basesoc_uart_rx_status = basesoc_uart_rx_trigger;
assign basesoc_uart_tx_fifo_syncfifo_din = {basesoc_uart_tx_fifo_fifo_in_last, basesoc_uart_tx_fifo_fifo_in_first, basesoc_uart_tx_fifo_fifo_in_payload_data};
assign {basesoc_uart_tx_fifo_fifo_out_last, basesoc_uart_tx_fifo_fifo_out_first, basesoc_uart_tx_fifo_fifo_out_payload_data} = basesoc_uart_tx_fifo_syncfifo_dout;
assign basesoc_uart_tx_fifo_sink_ready = basesoc_uart_tx_fifo_syncfifo_writable;
assign basesoc_uart_tx_fifo_syncfifo_we = basesoc_uart_tx_fifo_sink_valid;
assign basesoc_uart_tx_fifo_fifo_in_first = basesoc_uart_tx_fifo_sink_first;
assign basesoc_uart_tx_fifo_fifo_in_last = basesoc_uart_tx_fifo_sink_last;
assign basesoc_uart_tx_fifo_fifo_in_payload_data = basesoc_uart_tx_fifo_sink_payload_data;
assign basesoc_uart_tx_fifo_source_valid = basesoc_uart_tx_fifo_syncfifo_readable;
assign basesoc_uart_tx_fifo_source_first = basesoc_uart_tx_fifo_fifo_out_first;
assign basesoc_uart_tx_fifo_source_last = basesoc_uart_tx_fifo_fifo_out_last;
assign basesoc_uart_tx_fifo_source_payload_data = basesoc_uart_tx_fifo_fifo_out_payload_data;
assign basesoc_uart_tx_fifo_syncfifo_re = basesoc_uart_tx_fifo_source_ready;
always @(*) begin
	basesoc_uart_tx_fifo_wrport_adr <= 4'd0;
	if (basesoc_uart_tx_fifo_replace) begin
		basesoc_uart_tx_fifo_wrport_adr <= (basesoc_uart_tx_fifo_produce - 1'd1);
	end else begin
		basesoc_uart_tx_fifo_wrport_adr <= basesoc_uart_tx_fifo_produce;
	end
end
assign basesoc_uart_tx_fifo_wrport_dat_w = basesoc_uart_tx_fifo_syncfifo_din;
assign basesoc_uart_tx_fifo_wrport_we = (basesoc_uart_tx_fifo_syncfifo_we & (basesoc_uart_tx_fifo_syncfifo_writable | basesoc_uart_tx_fifo_replace));
assign basesoc_uart_tx_fifo_do_read = (basesoc_uart_tx_fifo_syncfifo_readable & basesoc_uart_tx_fifo_syncfifo_re);
assign basesoc_uart_tx_fifo_rdport_adr = basesoc_uart_tx_fifo_consume;
assign basesoc_uart_tx_fifo_syncfifo_dout = basesoc_uart_tx_fifo_rdport_dat_r;
assign basesoc_uart_tx_fifo_syncfifo_writable = (basesoc_uart_tx_fifo_level != 5'd16);
assign basesoc_uart_tx_fifo_syncfifo_readable = (basesoc_uart_tx_fifo_level != 1'd0);
assign basesoc_uart_rx_fifo_syncfifo_din = {basesoc_uart_rx_fifo_fifo_in_last, basesoc_uart_rx_fifo_fifo_in_first, basesoc_uart_rx_fifo_fifo_in_payload_data};
assign {basesoc_uart_rx_fifo_fifo_out_last, basesoc_uart_rx_fifo_fifo_out_first, basesoc_uart_rx_fifo_fifo_out_payload_data} = basesoc_uart_rx_fifo_syncfifo_dout;
assign basesoc_uart_rx_fifo_sink_ready = basesoc_uart_rx_fifo_syncfifo_writable;
assign basesoc_uart_rx_fifo_syncfifo_we = basesoc_uart_rx_fifo_sink_valid;
assign basesoc_uart_rx_fifo_fifo_in_first = basesoc_uart_rx_fifo_sink_first;
assign basesoc_uart_rx_fifo_fifo_in_last = basesoc_uart_rx_fifo_sink_last;
assign basesoc_uart_rx_fifo_fifo_in_payload_data = basesoc_uart_rx_fifo_sink_payload_data;
assign basesoc_uart_rx_fifo_source_valid = basesoc_uart_rx_fifo_syncfifo_readable;
assign basesoc_uart_rx_fifo_source_first = basesoc_uart_rx_fifo_fifo_out_first;
assign basesoc_uart_rx_fifo_source_last = basesoc_uart_rx_fifo_fifo_out_last;
assign basesoc_uart_rx_fifo_source_payload_data = basesoc_uart_rx_fifo_fifo_out_payload_data;
assign basesoc_uart_rx_fifo_syncfifo_re = basesoc_uart_rx_fifo_source_ready;
always @(*) begin
	basesoc_uart_rx_fifo_wrport_adr <= 4'd0;
	if (basesoc_uart_rx_fifo_replace) begin
		basesoc_uart_rx_fifo_wrport_adr <= (basesoc_uart_rx_fifo_produce - 1'd1);
	end else begin
		basesoc_uart_rx_fifo_wrport_adr <= basesoc_uart_rx_fifo_produce;
	end
end
assign basesoc_uart_rx_fifo_wrport_dat_w = basesoc_uart_rx_fifo_syncfifo_din;
assign basesoc_uart_rx_fifo_wrport_we = (basesoc_uart_rx_fifo_syncfifo_we & (basesoc_uart_rx_fifo_syncfifo_writable | basesoc_uart_rx_fifo_replace));
assign basesoc_uart_rx_fifo_do_read = (basesoc_uart_rx_fifo_syncfifo_readable & basesoc_uart_rx_fifo_syncfifo_re);
assign basesoc_uart_rx_fifo_rdport_adr = basesoc_uart_rx_fifo_consume;
assign basesoc_uart_rx_fifo_syncfifo_dout = basesoc_uart_rx_fifo_rdport_dat_r;
assign basesoc_uart_rx_fifo_syncfifo_writable = (basesoc_uart_rx_fifo_level != 5'd16);
assign basesoc_uart_rx_fifo_syncfifo_readable = (basesoc_uart_rx_fifo_level != 1'd0);
assign basesoc_timer0_zero_trigger = (basesoc_timer0_value != 1'd0);
assign basesoc_timer0_eventmanager_status_w = basesoc_timer0_zero_status;
always @(*) begin
	basesoc_timer0_zero_clear <= 1'd0;
	if ((basesoc_timer0_eventmanager_pending_re & basesoc_timer0_eventmanager_pending_r)) begin
		basesoc_timer0_zero_clear <= 1'd1;
	end
end
assign basesoc_timer0_eventmanager_pending_w = basesoc_timer0_zero_pending;
assign basesoc_timer0_irq = (basesoc_timer0_eventmanager_pending_w & basesoc_timer0_eventmanager_storage);
assign basesoc_timer0_zero_status = basesoc_timer0_zero_trigger;
assign git_status = 158'd196727129044017410568991434403204831257101353795;
assign platform_status = 63'd7021802832063889408;
assign target_status = 63'd7089074166086762496;
assign spiflash_1x_wp = 1'd1;
assign spiflash_1x_hold = 1'd1;
assign bus_dat_r = sr;
always @(*) begin
	clk0 <= 1'd0;
	miso_status <= 1'd0;
	spiflash_1x_mosi <= 1'd0;
	spiflash_1x_cs_n <= 1'd0;
	if (bitbang_en_storage) begin
		clk0 <= bitbang_storage[1];
		spiflash_1x_cs_n <= bitbang_storage[2];
		if (bitbang_storage[1]) begin
			miso_status <= spiflash_1x_miso;
		end
		spiflash_1x_mosi <= bitbang_storage[0];
	end else begin
		clk0 <= clk1;
		spiflash_1x_cs_n <= cs_n;
		spiflash_1x_mosi <= sr[31];
	end
end
assign oe = ((last_wrdata_en[1] | last_wrdata_en[2]) | last_wrdata_en[3]);
assign dfi_p0_address = sdram_master_p0_address;
assign dfi_p0_bank = sdram_master_p0_bank;
assign dfi_p0_cas_n = sdram_master_p0_cas_n;
assign dfi_p0_cs_n = sdram_master_p0_cs_n;
assign dfi_p0_ras_n = sdram_master_p0_ras_n;
assign dfi_p0_we_n = sdram_master_p0_we_n;
assign dfi_p0_cke = sdram_master_p0_cke;
assign dfi_p0_odt = sdram_master_p0_odt;
assign dfi_p0_reset_n = sdram_master_p0_reset_n;
assign dfi_p0_wrdata = sdram_master_p0_wrdata;
assign dfi_p0_wrdata_en = sdram_master_p0_wrdata_en;
assign dfi_p0_wrdata_mask = sdram_master_p0_wrdata_mask;
assign dfi_p0_rddata_en = sdram_master_p0_rddata_en;
assign sdram_master_p0_rddata = dfi_p0_rddata;
assign sdram_master_p0_rddata_valid = dfi_p0_rddata_valid;
assign dfi_p1_address = sdram_master_p1_address;
assign dfi_p1_bank = sdram_master_p1_bank;
assign dfi_p1_cas_n = sdram_master_p1_cas_n;
assign dfi_p1_cs_n = sdram_master_p1_cs_n;
assign dfi_p1_ras_n = sdram_master_p1_ras_n;
assign dfi_p1_we_n = sdram_master_p1_we_n;
assign dfi_p1_cke = sdram_master_p1_cke;
assign dfi_p1_odt = sdram_master_p1_odt;
assign dfi_p1_reset_n = sdram_master_p1_reset_n;
assign dfi_p1_wrdata = sdram_master_p1_wrdata;
assign dfi_p1_wrdata_en = sdram_master_p1_wrdata_en;
assign dfi_p1_wrdata_mask = sdram_master_p1_wrdata_mask;
assign dfi_p1_rddata_en = sdram_master_p1_rddata_en;
assign sdram_master_p1_rddata = dfi_p1_rddata;
assign sdram_master_p1_rddata_valid = dfi_p1_rddata_valid;
assign dfi_p2_address = sdram_master_p2_address;
assign dfi_p2_bank = sdram_master_p2_bank;
assign dfi_p2_cas_n = sdram_master_p2_cas_n;
assign dfi_p2_cs_n = sdram_master_p2_cs_n;
assign dfi_p2_ras_n = sdram_master_p2_ras_n;
assign dfi_p2_we_n = sdram_master_p2_we_n;
assign dfi_p2_cke = sdram_master_p2_cke;
assign dfi_p2_odt = sdram_master_p2_odt;
assign dfi_p2_reset_n = sdram_master_p2_reset_n;
assign dfi_p2_wrdata = sdram_master_p2_wrdata;
assign dfi_p2_wrdata_en = sdram_master_p2_wrdata_en;
assign dfi_p2_wrdata_mask = sdram_master_p2_wrdata_mask;
assign dfi_p2_rddata_en = sdram_master_p2_rddata_en;
assign sdram_master_p2_rddata = dfi_p2_rddata;
assign sdram_master_p2_rddata_valid = dfi_p2_rddata_valid;
assign dfi_p3_address = sdram_master_p3_address;
assign dfi_p3_bank = sdram_master_p3_bank;
assign dfi_p3_cas_n = sdram_master_p3_cas_n;
assign dfi_p3_cs_n = sdram_master_p3_cs_n;
assign dfi_p3_ras_n = sdram_master_p3_ras_n;
assign dfi_p3_we_n = sdram_master_p3_we_n;
assign dfi_p3_cke = sdram_master_p3_cke;
assign dfi_p3_odt = sdram_master_p3_odt;
assign dfi_p3_reset_n = sdram_master_p3_reset_n;
assign dfi_p3_wrdata = sdram_master_p3_wrdata;
assign dfi_p3_wrdata_en = sdram_master_p3_wrdata_en;
assign dfi_p3_wrdata_mask = sdram_master_p3_wrdata_mask;
assign dfi_p3_rddata_en = sdram_master_p3_rddata_en;
assign sdram_master_p3_rddata = dfi_p3_rddata;
assign sdram_master_p3_rddata_valid = dfi_p3_rddata_valid;
assign sdram_slave_p0_address = sdram_dfi_p0_address;
assign sdram_slave_p0_bank = sdram_dfi_p0_bank;
assign sdram_slave_p0_cas_n = sdram_dfi_p0_cas_n;
assign sdram_slave_p0_cs_n = sdram_dfi_p0_cs_n;
assign sdram_slave_p0_ras_n = sdram_dfi_p0_ras_n;
assign sdram_slave_p0_we_n = sdram_dfi_p0_we_n;
assign sdram_slave_p0_cke = sdram_dfi_p0_cke;
assign sdram_slave_p0_odt = sdram_dfi_p0_odt;
assign sdram_slave_p0_reset_n = sdram_dfi_p0_reset_n;
assign sdram_slave_p0_wrdata = sdram_dfi_p0_wrdata;
assign sdram_slave_p0_wrdata_en = sdram_dfi_p0_wrdata_en;
assign sdram_slave_p0_wrdata_mask = sdram_dfi_p0_wrdata_mask;
assign sdram_slave_p0_rddata_en = sdram_dfi_p0_rddata_en;
assign sdram_dfi_p0_rddata = sdram_slave_p0_rddata;
assign sdram_dfi_p0_rddata_valid = sdram_slave_p0_rddata_valid;
assign sdram_slave_p1_address = sdram_dfi_p1_address;
assign sdram_slave_p1_bank = sdram_dfi_p1_bank;
assign sdram_slave_p1_cas_n = sdram_dfi_p1_cas_n;
assign sdram_slave_p1_cs_n = sdram_dfi_p1_cs_n;
assign sdram_slave_p1_ras_n = sdram_dfi_p1_ras_n;
assign sdram_slave_p1_we_n = sdram_dfi_p1_we_n;
assign sdram_slave_p1_cke = sdram_dfi_p1_cke;
assign sdram_slave_p1_odt = sdram_dfi_p1_odt;
assign sdram_slave_p1_reset_n = sdram_dfi_p1_reset_n;
assign sdram_slave_p1_wrdata = sdram_dfi_p1_wrdata;
assign sdram_slave_p1_wrdata_en = sdram_dfi_p1_wrdata_en;
assign sdram_slave_p1_wrdata_mask = sdram_dfi_p1_wrdata_mask;
assign sdram_slave_p1_rddata_en = sdram_dfi_p1_rddata_en;
assign sdram_dfi_p1_rddata = sdram_slave_p1_rddata;
assign sdram_dfi_p1_rddata_valid = sdram_slave_p1_rddata_valid;
assign sdram_slave_p2_address = sdram_dfi_p2_address;
assign sdram_slave_p2_bank = sdram_dfi_p2_bank;
assign sdram_slave_p2_cas_n = sdram_dfi_p2_cas_n;
assign sdram_slave_p2_cs_n = sdram_dfi_p2_cs_n;
assign sdram_slave_p2_ras_n = sdram_dfi_p2_ras_n;
assign sdram_slave_p2_we_n = sdram_dfi_p2_we_n;
assign sdram_slave_p2_cke = sdram_dfi_p2_cke;
assign sdram_slave_p2_odt = sdram_dfi_p2_odt;
assign sdram_slave_p2_reset_n = sdram_dfi_p2_reset_n;
assign sdram_slave_p2_wrdata = sdram_dfi_p2_wrdata;
assign sdram_slave_p2_wrdata_en = sdram_dfi_p2_wrdata_en;
assign sdram_slave_p2_wrdata_mask = sdram_dfi_p2_wrdata_mask;
assign sdram_slave_p2_rddata_en = sdram_dfi_p2_rddata_en;
assign sdram_dfi_p2_rddata = sdram_slave_p2_rddata;
assign sdram_dfi_p2_rddata_valid = sdram_slave_p2_rddata_valid;
assign sdram_slave_p3_address = sdram_dfi_p3_address;
assign sdram_slave_p3_bank = sdram_dfi_p3_bank;
assign sdram_slave_p3_cas_n = sdram_dfi_p3_cas_n;
assign sdram_slave_p3_cs_n = sdram_dfi_p3_cs_n;
assign sdram_slave_p3_ras_n = sdram_dfi_p3_ras_n;
assign sdram_slave_p3_we_n = sdram_dfi_p3_we_n;
assign sdram_slave_p3_cke = sdram_dfi_p3_cke;
assign sdram_slave_p3_odt = sdram_dfi_p3_odt;
assign sdram_slave_p3_reset_n = sdram_dfi_p3_reset_n;
assign sdram_slave_p3_wrdata = sdram_dfi_p3_wrdata;
assign sdram_slave_p3_wrdata_en = sdram_dfi_p3_wrdata_en;
assign sdram_slave_p3_wrdata_mask = sdram_dfi_p3_wrdata_mask;
assign sdram_slave_p3_rddata_en = sdram_dfi_p3_rddata_en;
assign sdram_dfi_p3_rddata = sdram_slave_p3_rddata;
assign sdram_dfi_p3_rddata_valid = sdram_slave_p3_rddata_valid;
always @(*) begin
	sdram_slave_p3_rddata <= 32'd0;
	sdram_slave_p3_rddata_valid <= 1'd0;
	sdram_master_p0_address <= 14'd0;
	sdram_master_p0_bank <= 3'd0;
	sdram_master_p0_cas_n <= 1'd1;
	sdram_master_p0_cs_n <= 1'd1;
	sdram_master_p0_ras_n <= 1'd1;
	sdram_master_p0_we_n <= 1'd1;
	sdram_inti_p0_rddata <= 32'd0;
	sdram_master_p0_cke <= 1'd0;
	sdram_inti_p0_rddata_valid <= 1'd0;
	sdram_master_p0_odt <= 1'd0;
	sdram_master_p0_reset_n <= 1'd0;
	sdram_master_p0_wrdata <= 32'd0;
	sdram_master_p0_wrdata_en <= 1'd0;
	sdram_master_p0_wrdata_mask <= 4'd0;
	sdram_master_p0_rddata_en <= 1'd0;
	sdram_master_p1_address <= 14'd0;
	sdram_master_p1_bank <= 3'd0;
	sdram_master_p1_cas_n <= 1'd1;
	sdram_master_p1_cs_n <= 1'd1;
	sdram_master_p1_ras_n <= 1'd1;
	sdram_master_p1_we_n <= 1'd1;
	sdram_inti_p1_rddata <= 32'd0;
	sdram_master_p1_cke <= 1'd0;
	sdram_inti_p1_rddata_valid <= 1'd0;
	sdram_master_p1_odt <= 1'd0;
	sdram_master_p1_reset_n <= 1'd0;
	sdram_master_p1_wrdata <= 32'd0;
	sdram_master_p1_wrdata_en <= 1'd0;
	sdram_master_p1_wrdata_mask <= 4'd0;
	sdram_master_p1_rddata_en <= 1'd0;
	sdram_master_p2_address <= 14'd0;
	sdram_master_p2_bank <= 3'd0;
	sdram_master_p2_cas_n <= 1'd1;
	sdram_master_p2_cs_n <= 1'd1;
	sdram_master_p2_ras_n <= 1'd1;
	sdram_master_p2_we_n <= 1'd1;
	sdram_inti_p2_rddata <= 32'd0;
	sdram_master_p2_cke <= 1'd0;
	sdram_inti_p2_rddata_valid <= 1'd0;
	sdram_master_p2_odt <= 1'd0;
	sdram_master_p2_reset_n <= 1'd0;
	sdram_master_p2_wrdata <= 32'd0;
	sdram_master_p2_wrdata_en <= 1'd0;
	sdram_master_p2_wrdata_mask <= 4'd0;
	sdram_master_p2_rddata_en <= 1'd0;
	sdram_master_p3_address <= 14'd0;
	sdram_master_p3_bank <= 3'd0;
	sdram_master_p3_cas_n <= 1'd1;
	sdram_master_p3_cs_n <= 1'd1;
	sdram_master_p3_ras_n <= 1'd1;
	sdram_master_p3_we_n <= 1'd1;
	sdram_inti_p3_rddata <= 32'd0;
	sdram_master_p3_cke <= 1'd0;
	sdram_inti_p3_rddata_valid <= 1'd0;
	sdram_master_p3_odt <= 1'd0;
	sdram_master_p3_reset_n <= 1'd0;
	sdram_master_p3_wrdata <= 32'd0;
	sdram_master_p3_wrdata_en <= 1'd0;
	sdram_master_p3_wrdata_mask <= 4'd0;
	sdram_master_p3_rddata_en <= 1'd0;
	sdram_slave_p0_rddata <= 32'd0;
	sdram_slave_p0_rddata_valid <= 1'd0;
	sdram_slave_p1_rddata <= 32'd0;
	sdram_slave_p1_rddata_valid <= 1'd0;
	sdram_slave_p2_rddata <= 32'd0;
	sdram_slave_p2_rddata_valid <= 1'd0;
	if (sdram_storage[0]) begin
		sdram_master_p0_address <= sdram_slave_p0_address;
		sdram_master_p0_bank <= sdram_slave_p0_bank;
		sdram_master_p0_cas_n <= sdram_slave_p0_cas_n;
		sdram_master_p0_cs_n <= sdram_slave_p0_cs_n;
		sdram_master_p0_ras_n <= sdram_slave_p0_ras_n;
		sdram_master_p0_we_n <= sdram_slave_p0_we_n;
		sdram_master_p0_cke <= sdram_slave_p0_cke;
		sdram_master_p0_odt <= sdram_slave_p0_odt;
		sdram_master_p0_reset_n <= sdram_slave_p0_reset_n;
		sdram_master_p0_wrdata <= sdram_slave_p0_wrdata;
		sdram_master_p0_wrdata_en <= sdram_slave_p0_wrdata_en;
		sdram_master_p0_wrdata_mask <= sdram_slave_p0_wrdata_mask;
		sdram_master_p0_rddata_en <= sdram_slave_p0_rddata_en;
		sdram_slave_p0_rddata <= sdram_master_p0_rddata;
		sdram_slave_p0_rddata_valid <= sdram_master_p0_rddata_valid;
		sdram_master_p1_address <= sdram_slave_p1_address;
		sdram_master_p1_bank <= sdram_slave_p1_bank;
		sdram_master_p1_cas_n <= sdram_slave_p1_cas_n;
		sdram_master_p1_cs_n <= sdram_slave_p1_cs_n;
		sdram_master_p1_ras_n <= sdram_slave_p1_ras_n;
		sdram_master_p1_we_n <= sdram_slave_p1_we_n;
		sdram_master_p1_cke <= sdram_slave_p1_cke;
		sdram_master_p1_odt <= sdram_slave_p1_odt;
		sdram_master_p1_reset_n <= sdram_slave_p1_reset_n;
		sdram_master_p1_wrdata <= sdram_slave_p1_wrdata;
		sdram_master_p1_wrdata_en <= sdram_slave_p1_wrdata_en;
		sdram_master_p1_wrdata_mask <= sdram_slave_p1_wrdata_mask;
		sdram_master_p1_rddata_en <= sdram_slave_p1_rddata_en;
		sdram_slave_p1_rddata <= sdram_master_p1_rddata;
		sdram_slave_p1_rddata_valid <= sdram_master_p1_rddata_valid;
		sdram_master_p2_address <= sdram_slave_p2_address;
		sdram_master_p2_bank <= sdram_slave_p2_bank;
		sdram_master_p2_cas_n <= sdram_slave_p2_cas_n;
		sdram_master_p2_cs_n <= sdram_slave_p2_cs_n;
		sdram_master_p2_ras_n <= sdram_slave_p2_ras_n;
		sdram_master_p2_we_n <= sdram_slave_p2_we_n;
		sdram_master_p2_cke <= sdram_slave_p2_cke;
		sdram_master_p2_odt <= sdram_slave_p2_odt;
		sdram_master_p2_reset_n <= sdram_slave_p2_reset_n;
		sdram_master_p2_wrdata <= sdram_slave_p2_wrdata;
		sdram_master_p2_wrdata_en <= sdram_slave_p2_wrdata_en;
		sdram_master_p2_wrdata_mask <= sdram_slave_p2_wrdata_mask;
		sdram_master_p2_rddata_en <= sdram_slave_p2_rddata_en;
		sdram_slave_p2_rddata <= sdram_master_p2_rddata;
		sdram_slave_p2_rddata_valid <= sdram_master_p2_rddata_valid;
		sdram_master_p3_address <= sdram_slave_p3_address;
		sdram_master_p3_bank <= sdram_slave_p3_bank;
		sdram_master_p3_cas_n <= sdram_slave_p3_cas_n;
		sdram_master_p3_cs_n <= sdram_slave_p3_cs_n;
		sdram_master_p3_ras_n <= sdram_slave_p3_ras_n;
		sdram_master_p3_we_n <= sdram_slave_p3_we_n;
		sdram_master_p3_cke <= sdram_slave_p3_cke;
		sdram_master_p3_odt <= sdram_slave_p3_odt;
		sdram_master_p3_reset_n <= sdram_slave_p3_reset_n;
		sdram_master_p3_wrdata <= sdram_slave_p3_wrdata;
		sdram_master_p3_wrdata_en <= sdram_slave_p3_wrdata_en;
		sdram_master_p3_wrdata_mask <= sdram_slave_p3_wrdata_mask;
		sdram_master_p3_rddata_en <= sdram_slave_p3_rddata_en;
		sdram_slave_p3_rddata <= sdram_master_p3_rddata;
		sdram_slave_p3_rddata_valid <= sdram_master_p3_rddata_valid;
	end else begin
		sdram_master_p0_address <= sdram_inti_p0_address;
		sdram_master_p0_bank <= sdram_inti_p0_bank;
		sdram_master_p0_cas_n <= sdram_inti_p0_cas_n;
		sdram_master_p0_cs_n <= sdram_inti_p0_cs_n;
		sdram_master_p0_ras_n <= sdram_inti_p0_ras_n;
		sdram_master_p0_we_n <= sdram_inti_p0_we_n;
		sdram_master_p0_cke <= sdram_inti_p0_cke;
		sdram_master_p0_odt <= sdram_inti_p0_odt;
		sdram_master_p0_reset_n <= sdram_inti_p0_reset_n;
		sdram_master_p0_wrdata <= sdram_inti_p0_wrdata;
		sdram_master_p0_wrdata_en <= sdram_inti_p0_wrdata_en;
		sdram_master_p0_wrdata_mask <= sdram_inti_p0_wrdata_mask;
		sdram_master_p0_rddata_en <= sdram_inti_p0_rddata_en;
		sdram_inti_p0_rddata <= sdram_master_p0_rddata;
		sdram_inti_p0_rddata_valid <= sdram_master_p0_rddata_valid;
		sdram_master_p1_address <= sdram_inti_p1_address;
		sdram_master_p1_bank <= sdram_inti_p1_bank;
		sdram_master_p1_cas_n <= sdram_inti_p1_cas_n;
		sdram_master_p1_cs_n <= sdram_inti_p1_cs_n;
		sdram_master_p1_ras_n <= sdram_inti_p1_ras_n;
		sdram_master_p1_we_n <= sdram_inti_p1_we_n;
		sdram_master_p1_cke <= sdram_inti_p1_cke;
		sdram_master_p1_odt <= sdram_inti_p1_odt;
		sdram_master_p1_reset_n <= sdram_inti_p1_reset_n;
		sdram_master_p1_wrdata <= sdram_inti_p1_wrdata;
		sdram_master_p1_wrdata_en <= sdram_inti_p1_wrdata_en;
		sdram_master_p1_wrdata_mask <= sdram_inti_p1_wrdata_mask;
		sdram_master_p1_rddata_en <= sdram_inti_p1_rddata_en;
		sdram_inti_p1_rddata <= sdram_master_p1_rddata;
		sdram_inti_p1_rddata_valid <= sdram_master_p1_rddata_valid;
		sdram_master_p2_address <= sdram_inti_p2_address;
		sdram_master_p2_bank <= sdram_inti_p2_bank;
		sdram_master_p2_cas_n <= sdram_inti_p2_cas_n;
		sdram_master_p2_cs_n <= sdram_inti_p2_cs_n;
		sdram_master_p2_ras_n <= sdram_inti_p2_ras_n;
		sdram_master_p2_we_n <= sdram_inti_p2_we_n;
		sdram_master_p2_cke <= sdram_inti_p2_cke;
		sdram_master_p2_odt <= sdram_inti_p2_odt;
		sdram_master_p2_reset_n <= sdram_inti_p2_reset_n;
		sdram_master_p2_wrdata <= sdram_inti_p2_wrdata;
		sdram_master_p2_wrdata_en <= sdram_inti_p2_wrdata_en;
		sdram_master_p2_wrdata_mask <= sdram_inti_p2_wrdata_mask;
		sdram_master_p2_rddata_en <= sdram_inti_p2_rddata_en;
		sdram_inti_p2_rddata <= sdram_master_p2_rddata;
		sdram_inti_p2_rddata_valid <= sdram_master_p2_rddata_valid;
		sdram_master_p3_address <= sdram_inti_p3_address;
		sdram_master_p3_bank <= sdram_inti_p3_bank;
		sdram_master_p3_cas_n <= sdram_inti_p3_cas_n;
		sdram_master_p3_cs_n <= sdram_inti_p3_cs_n;
		sdram_master_p3_ras_n <= sdram_inti_p3_ras_n;
		sdram_master_p3_we_n <= sdram_inti_p3_we_n;
		sdram_master_p3_cke <= sdram_inti_p3_cke;
		sdram_master_p3_odt <= sdram_inti_p3_odt;
		sdram_master_p3_reset_n <= sdram_inti_p3_reset_n;
		sdram_master_p3_wrdata <= sdram_inti_p3_wrdata;
		sdram_master_p3_wrdata_en <= sdram_inti_p3_wrdata_en;
		sdram_master_p3_wrdata_mask <= sdram_inti_p3_wrdata_mask;
		sdram_master_p3_rddata_en <= sdram_inti_p3_rddata_en;
		sdram_inti_p3_rddata <= sdram_master_p3_rddata;
		sdram_inti_p3_rddata_valid <= sdram_master_p3_rddata_valid;
	end
end
assign sdram_inti_p0_cke = sdram_storage[1];
assign sdram_inti_p1_cke = sdram_storage[1];
assign sdram_inti_p2_cke = sdram_storage[1];
assign sdram_inti_p3_cke = sdram_storage[1];
assign sdram_inti_p0_odt = sdram_storage[2];
assign sdram_inti_p1_odt = sdram_storage[2];
assign sdram_inti_p2_odt = sdram_storage[2];
assign sdram_inti_p3_odt = sdram_storage[2];
assign sdram_inti_p0_reset_n = sdram_storage[3];
assign sdram_inti_p1_reset_n = sdram_storage[3];
assign sdram_inti_p2_reset_n = sdram_storage[3];
assign sdram_inti_p3_reset_n = sdram_storage[3];
always @(*) begin
	sdram_inti_p0_we_n <= 1'd1;
	sdram_inti_p0_cas_n <= 1'd1;
	sdram_inti_p0_cs_n <= 1'd1;
	sdram_inti_p0_ras_n <= 1'd1;
	if (sdram_phaseinjector0_command_issue_re) begin
		sdram_inti_p0_cs_n <= (~sdram_phaseinjector0_command_storage[0]);
		sdram_inti_p0_we_n <= (~sdram_phaseinjector0_command_storage[1]);
		sdram_inti_p0_cas_n <= (~sdram_phaseinjector0_command_storage[2]);
		sdram_inti_p0_ras_n <= (~sdram_phaseinjector0_command_storage[3]);
	end else begin
		sdram_inti_p0_cs_n <= 1'd1;
		sdram_inti_p0_we_n <= 1'd1;
		sdram_inti_p0_cas_n <= 1'd1;
		sdram_inti_p0_ras_n <= 1'd1;
	end
end
assign sdram_inti_p0_address = sdram_phaseinjector0_address_storage;
assign sdram_inti_p0_bank = sdram_phaseinjector0_baddress_storage;
assign sdram_inti_p0_wrdata_en = (sdram_phaseinjector0_command_issue_re & sdram_phaseinjector0_command_storage[4]);
assign sdram_inti_p0_rddata_en = (sdram_phaseinjector0_command_issue_re & sdram_phaseinjector0_command_storage[5]);
assign sdram_inti_p0_wrdata = sdram_phaseinjector0_wrdata_storage;
assign sdram_inti_p0_wrdata_mask = 1'd0;
always @(*) begin
	sdram_inti_p1_cas_n <= 1'd1;
	sdram_inti_p1_cs_n <= 1'd1;
	sdram_inti_p1_ras_n <= 1'd1;
	sdram_inti_p1_we_n <= 1'd1;
	if (sdram_phaseinjector1_command_issue_re) begin
		sdram_inti_p1_cs_n <= (~sdram_phaseinjector1_command_storage[0]);
		sdram_inti_p1_we_n <= (~sdram_phaseinjector1_command_storage[1]);
		sdram_inti_p1_cas_n <= (~sdram_phaseinjector1_command_storage[2]);
		sdram_inti_p1_ras_n <= (~sdram_phaseinjector1_command_storage[3]);
	end else begin
		sdram_inti_p1_cs_n <= 1'd1;
		sdram_inti_p1_we_n <= 1'd1;
		sdram_inti_p1_cas_n <= 1'd1;
		sdram_inti_p1_ras_n <= 1'd1;
	end
end
assign sdram_inti_p1_address = sdram_phaseinjector1_address_storage;
assign sdram_inti_p1_bank = sdram_phaseinjector1_baddress_storage;
assign sdram_inti_p1_wrdata_en = (sdram_phaseinjector1_command_issue_re & sdram_phaseinjector1_command_storage[4]);
assign sdram_inti_p1_rddata_en = (sdram_phaseinjector1_command_issue_re & sdram_phaseinjector1_command_storage[5]);
assign sdram_inti_p1_wrdata = sdram_phaseinjector1_wrdata_storage;
assign sdram_inti_p1_wrdata_mask = 1'd0;
always @(*) begin
	sdram_inti_p2_cs_n <= 1'd1;
	sdram_inti_p2_ras_n <= 1'd1;
	sdram_inti_p2_we_n <= 1'd1;
	sdram_inti_p2_cas_n <= 1'd1;
	if (sdram_phaseinjector2_command_issue_re) begin
		sdram_inti_p2_cs_n <= (~sdram_phaseinjector2_command_storage[0]);
		sdram_inti_p2_we_n <= (~sdram_phaseinjector2_command_storage[1]);
		sdram_inti_p2_cas_n <= (~sdram_phaseinjector2_command_storage[2]);
		sdram_inti_p2_ras_n <= (~sdram_phaseinjector2_command_storage[3]);
	end else begin
		sdram_inti_p2_cs_n <= 1'd1;
		sdram_inti_p2_we_n <= 1'd1;
		sdram_inti_p2_cas_n <= 1'd1;
		sdram_inti_p2_ras_n <= 1'd1;
	end
end
assign sdram_inti_p2_address = sdram_phaseinjector2_address_storage;
assign sdram_inti_p2_bank = sdram_phaseinjector2_baddress_storage;
assign sdram_inti_p2_wrdata_en = (sdram_phaseinjector2_command_issue_re & sdram_phaseinjector2_command_storage[4]);
assign sdram_inti_p2_rddata_en = (sdram_phaseinjector2_command_issue_re & sdram_phaseinjector2_command_storage[5]);
assign sdram_inti_p2_wrdata = sdram_phaseinjector2_wrdata_storage;
assign sdram_inti_p2_wrdata_mask = 1'd0;
always @(*) begin
	sdram_inti_p3_ras_n <= 1'd1;
	sdram_inti_p3_we_n <= 1'd1;
	sdram_inti_p3_cas_n <= 1'd1;
	sdram_inti_p3_cs_n <= 1'd1;
	if (sdram_phaseinjector3_command_issue_re) begin
		sdram_inti_p3_cs_n <= (~sdram_phaseinjector3_command_storage[0]);
		sdram_inti_p3_we_n <= (~sdram_phaseinjector3_command_storage[1]);
		sdram_inti_p3_cas_n <= (~sdram_phaseinjector3_command_storage[2]);
		sdram_inti_p3_ras_n <= (~sdram_phaseinjector3_command_storage[3]);
	end else begin
		sdram_inti_p3_cs_n <= 1'd1;
		sdram_inti_p3_we_n <= 1'd1;
		sdram_inti_p3_cas_n <= 1'd1;
		sdram_inti_p3_ras_n <= 1'd1;
	end
end
assign sdram_inti_p3_address = sdram_phaseinjector3_address_storage;
assign sdram_inti_p3_bank = sdram_phaseinjector3_baddress_storage;
assign sdram_inti_p3_wrdata_en = (sdram_phaseinjector3_command_issue_re & sdram_phaseinjector3_command_storage[4]);
assign sdram_inti_p3_rddata_en = (sdram_phaseinjector3_command_issue_re & sdram_phaseinjector3_command_storage[5]);
assign sdram_inti_p3_wrdata = sdram_phaseinjector3_wrdata_storage;
assign sdram_inti_p3_wrdata_mask = 1'd0;
assign sdram_bankmachine0_req_valid = sdram_interface_bank0_valid;
assign sdram_interface_bank0_ready = sdram_bankmachine0_req_ready;
assign sdram_bankmachine0_req_we = sdram_interface_bank0_we;
assign sdram_bankmachine0_req_adr = sdram_interface_bank0_adr;
assign sdram_interface_bank0_lock = sdram_bankmachine0_req_lock;
assign sdram_interface_bank0_wdata_ready = sdram_bankmachine0_req_wdata_ready;
assign sdram_interface_bank0_rdata_valid = sdram_bankmachine0_req_rdata_valid;
assign sdram_bankmachine1_req_valid = sdram_interface_bank1_valid;
assign sdram_interface_bank1_ready = sdram_bankmachine1_req_ready;
assign sdram_bankmachine1_req_we = sdram_interface_bank1_we;
assign sdram_bankmachine1_req_adr = sdram_interface_bank1_adr;
assign sdram_interface_bank1_lock = sdram_bankmachine1_req_lock;
assign sdram_interface_bank1_wdata_ready = sdram_bankmachine1_req_wdata_ready;
assign sdram_interface_bank1_rdata_valid = sdram_bankmachine1_req_rdata_valid;
assign sdram_bankmachine2_req_valid = sdram_interface_bank2_valid;
assign sdram_interface_bank2_ready = sdram_bankmachine2_req_ready;
assign sdram_bankmachine2_req_we = sdram_interface_bank2_we;
assign sdram_bankmachine2_req_adr = sdram_interface_bank2_adr;
assign sdram_interface_bank2_lock = sdram_bankmachine2_req_lock;
assign sdram_interface_bank2_wdata_ready = sdram_bankmachine2_req_wdata_ready;
assign sdram_interface_bank2_rdata_valid = sdram_bankmachine2_req_rdata_valid;
assign sdram_bankmachine3_req_valid = sdram_interface_bank3_valid;
assign sdram_interface_bank3_ready = sdram_bankmachine3_req_ready;
assign sdram_bankmachine3_req_we = sdram_interface_bank3_we;
assign sdram_bankmachine3_req_adr = sdram_interface_bank3_adr;
assign sdram_interface_bank3_lock = sdram_bankmachine3_req_lock;
assign sdram_interface_bank3_wdata_ready = sdram_bankmachine3_req_wdata_ready;
assign sdram_interface_bank3_rdata_valid = sdram_bankmachine3_req_rdata_valid;
assign sdram_bankmachine4_req_valid = sdram_interface_bank4_valid;
assign sdram_interface_bank4_ready = sdram_bankmachine4_req_ready;
assign sdram_bankmachine4_req_we = sdram_interface_bank4_we;
assign sdram_bankmachine4_req_adr = sdram_interface_bank4_adr;
assign sdram_interface_bank4_lock = sdram_bankmachine4_req_lock;
assign sdram_interface_bank4_wdata_ready = sdram_bankmachine4_req_wdata_ready;
assign sdram_interface_bank4_rdata_valid = sdram_bankmachine4_req_rdata_valid;
assign sdram_bankmachine5_req_valid = sdram_interface_bank5_valid;
assign sdram_interface_bank5_ready = sdram_bankmachine5_req_ready;
assign sdram_bankmachine5_req_we = sdram_interface_bank5_we;
assign sdram_bankmachine5_req_adr = sdram_interface_bank5_adr;
assign sdram_interface_bank5_lock = sdram_bankmachine5_req_lock;
assign sdram_interface_bank5_wdata_ready = sdram_bankmachine5_req_wdata_ready;
assign sdram_interface_bank5_rdata_valid = sdram_bankmachine5_req_rdata_valid;
assign sdram_bankmachine6_req_valid = sdram_interface_bank6_valid;
assign sdram_interface_bank6_ready = sdram_bankmachine6_req_ready;
assign sdram_bankmachine6_req_we = sdram_interface_bank6_we;
assign sdram_bankmachine6_req_adr = sdram_interface_bank6_adr;
assign sdram_interface_bank6_lock = sdram_bankmachine6_req_lock;
assign sdram_interface_bank6_wdata_ready = sdram_bankmachine6_req_wdata_ready;
assign sdram_interface_bank6_rdata_valid = sdram_bankmachine6_req_rdata_valid;
assign sdram_bankmachine7_req_valid = sdram_interface_bank7_valid;
assign sdram_interface_bank7_ready = sdram_bankmachine7_req_ready;
assign sdram_bankmachine7_req_we = sdram_interface_bank7_we;
assign sdram_bankmachine7_req_adr = sdram_interface_bank7_adr;
assign sdram_interface_bank7_lock = sdram_bankmachine7_req_lock;
assign sdram_interface_bank7_wdata_ready = sdram_bankmachine7_req_wdata_ready;
assign sdram_interface_bank7_rdata_valid = sdram_bankmachine7_req_rdata_valid;
assign sdram_wait = (1'd1 & (~sdram_done));
assign sdram_done = (sdram_count == 1'd0);
always @(*) begin
	refresher_next_state <= 2'd0;
	sdram_cmd_last <= 1'd0;
	sdram_seq_start <= 1'd0;
	sdram_cmd_valid <= 1'd0;
	refresher_next_state <= refresher_state;
	case (refresher_state)
		1'd1: begin
			sdram_cmd_valid <= 1'd1;
			if (sdram_cmd_ready) begin
				sdram_seq_start <= 1'd1;
				refresher_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if (sdram_seq_done) begin
				sdram_cmd_last <= 1'd1;
				refresher_next_state <= 1'd0;
			end else begin
				sdram_cmd_valid <= 1'd1;
			end
		end
		default: begin
			if (sdram_done) begin
				refresher_next_state <= 1'd1;
			end
		end
	endcase
end
assign sdram_bankmachine0_sink_valid = sdram_bankmachine0_req_valid;
assign sdram_bankmachine0_req_ready = sdram_bankmachine0_sink_ready;
assign sdram_bankmachine0_sink_payload_we = sdram_bankmachine0_req_we;
assign sdram_bankmachine0_sink_payload_adr = sdram_bankmachine0_req_adr;
assign sdram_bankmachine0_source_ready = (sdram_bankmachine0_req_wdata_ready | sdram_bankmachine0_req_rdata_valid);
assign sdram_bankmachine0_req_lock = sdram_bankmachine0_source_valid;
assign sdram_bankmachine0_hit = (sdram_bankmachine0_openrow == sdram_bankmachine0_source_payload_adr[20:7]);
assign sdram_bankmachine0_cmd_payload_ba = 1'd0;
always @(*) begin
	sdram_bankmachine0_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine0_sel_row_adr) begin
		sdram_bankmachine0_cmd_payload_a <= sdram_bankmachine0_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine0_cmd_payload_a <= {sdram_bankmachine0_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign sdram_bankmachine0_wait = (~((sdram_bankmachine0_cmd_valid & sdram_bankmachine0_cmd_ready) & sdram_bankmachine0_cmd_payload_is_write));
assign sdram_bankmachine0_syncfifo0_din = {sdram_bankmachine0_fifo_in_last, sdram_bankmachine0_fifo_in_first, sdram_bankmachine0_fifo_in_payload_adr, sdram_bankmachine0_fifo_in_payload_we};
assign {sdram_bankmachine0_fifo_out_last, sdram_bankmachine0_fifo_out_first, sdram_bankmachine0_fifo_out_payload_adr, sdram_bankmachine0_fifo_out_payload_we} = sdram_bankmachine0_syncfifo0_dout;
assign sdram_bankmachine0_sink_ready = sdram_bankmachine0_syncfifo0_writable;
assign sdram_bankmachine0_syncfifo0_we = sdram_bankmachine0_sink_valid;
assign sdram_bankmachine0_fifo_in_first = sdram_bankmachine0_sink_first;
assign sdram_bankmachine0_fifo_in_last = sdram_bankmachine0_sink_last;
assign sdram_bankmachine0_fifo_in_payload_we = sdram_bankmachine0_sink_payload_we;
assign sdram_bankmachine0_fifo_in_payload_adr = sdram_bankmachine0_sink_payload_adr;
assign sdram_bankmachine0_source_valid = sdram_bankmachine0_syncfifo0_readable;
assign sdram_bankmachine0_source_first = sdram_bankmachine0_fifo_out_first;
assign sdram_bankmachine0_source_last = sdram_bankmachine0_fifo_out_last;
assign sdram_bankmachine0_source_payload_we = sdram_bankmachine0_fifo_out_payload_we;
assign sdram_bankmachine0_source_payload_adr = sdram_bankmachine0_fifo_out_payload_adr;
assign sdram_bankmachine0_syncfifo0_re = sdram_bankmachine0_source_ready;
always @(*) begin
	sdram_bankmachine0_wrport_adr <= 3'd0;
	if (sdram_bankmachine0_replace) begin
		sdram_bankmachine0_wrport_adr <= (sdram_bankmachine0_produce - 1'd1);
	end else begin
		sdram_bankmachine0_wrport_adr <= sdram_bankmachine0_produce;
	end
end
assign sdram_bankmachine0_wrport_dat_w = sdram_bankmachine0_syncfifo0_din;
assign sdram_bankmachine0_wrport_we = (sdram_bankmachine0_syncfifo0_we & (sdram_bankmachine0_syncfifo0_writable | sdram_bankmachine0_replace));
assign sdram_bankmachine0_do_read = (sdram_bankmachine0_syncfifo0_readable & sdram_bankmachine0_syncfifo0_re);
assign sdram_bankmachine0_rdport_adr = sdram_bankmachine0_consume;
assign sdram_bankmachine0_syncfifo0_dout = sdram_bankmachine0_rdport_dat_r;
assign sdram_bankmachine0_syncfifo0_writable = (sdram_bankmachine0_level != 4'd8);
assign sdram_bankmachine0_syncfifo0_readable = (sdram_bankmachine0_level != 1'd0);
assign sdram_bankmachine0_done = (sdram_bankmachine0_count == 1'd0);
always @(*) begin
	sdram_bankmachine0_cmd_valid <= 1'd0;
	sdram_bankmachine0_track_open <= 1'd0;
	sdram_bankmachine0_track_close <= 1'd0;
	bankmachine0_next_state <= 3'd0;
	sdram_bankmachine0_cmd_payload_ras <= 1'd0;
	sdram_bankmachine0_cmd_payload_cas <= 1'd0;
	sdram_bankmachine0_cmd_payload_we <= 1'd0;
	sdram_bankmachine0_sel_row_adr <= 1'd0;
	sdram_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine0_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine0_cmd_payload_is_write <= 1'd0;
	sdram_bankmachine0_req_wdata_ready <= 1'd0;
	sdram_bankmachine0_req_rdata_valid <= 1'd0;
	sdram_bankmachine0_refresh_gnt <= 1'd0;
	bankmachine0_next_state <= bankmachine0_state;
	case (bankmachine0_state)
		1'd1: begin
			if (sdram_bankmachine0_done) begin
				sdram_bankmachine0_cmd_valid <= 1'd1;
				if (sdram_bankmachine0_cmd_ready) begin
					bankmachine0_next_state <= 3'd4;
				end
				sdram_bankmachine0_cmd_payload_ras <= 1'd1;
				sdram_bankmachine0_cmd_payload_we <= 1'd1;
				sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine0_track_close <= 1'd1;
		end
		2'd2: begin
			sdram_bankmachine0_sel_row_adr <= 1'd1;
			sdram_bankmachine0_track_open <= 1'd1;
			sdram_bankmachine0_cmd_valid <= 1'd1;
			sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if (sdram_bankmachine0_cmd_ready) begin
				bankmachine0_next_state <= 3'd6;
			end
			sdram_bankmachine0_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (sdram_bankmachine0_done) begin
				sdram_bankmachine0_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine0_track_close <= 1'd1;
			sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine0_refresh_req)) begin
				bankmachine0_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine0_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine0_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine0_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine0_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine0_refresh_req) begin
				bankmachine0_next_state <= 2'd3;
			end else begin
				if (sdram_bankmachine0_source_valid) begin
					if (sdram_bankmachine0_has_openrow) begin
						if (sdram_bankmachine0_hit) begin
							sdram_bankmachine0_cmd_valid <= 1'd1;
							if (sdram_bankmachine0_source_payload_we) begin
								sdram_bankmachine0_req_wdata_ready <= sdram_bankmachine0_cmd_ready;
								sdram_bankmachine0_cmd_payload_is_write <= 1'd1;
								sdram_bankmachine0_cmd_payload_we <= 1'd1;
							end else begin
								sdram_bankmachine0_req_rdata_valid <= sdram_bankmachine0_cmd_ready;
								sdram_bankmachine0_cmd_payload_is_read <= 1'd1;
							end
							sdram_bankmachine0_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine0_next_state <= 1'd1;
						end
					end else begin
						bankmachine0_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign sdram_bankmachine1_sink_valid = sdram_bankmachine1_req_valid;
assign sdram_bankmachine1_req_ready = sdram_bankmachine1_sink_ready;
assign sdram_bankmachine1_sink_payload_we = sdram_bankmachine1_req_we;
assign sdram_bankmachine1_sink_payload_adr = sdram_bankmachine1_req_adr;
assign sdram_bankmachine1_source_ready = (sdram_bankmachine1_req_wdata_ready | sdram_bankmachine1_req_rdata_valid);
assign sdram_bankmachine1_req_lock = sdram_bankmachine1_source_valid;
assign sdram_bankmachine1_hit = (sdram_bankmachine1_openrow == sdram_bankmachine1_source_payload_adr[20:7]);
assign sdram_bankmachine1_cmd_payload_ba = 1'd1;
always @(*) begin
	sdram_bankmachine1_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine1_sel_row_adr) begin
		sdram_bankmachine1_cmd_payload_a <= sdram_bankmachine1_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine1_cmd_payload_a <= {sdram_bankmachine1_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign sdram_bankmachine1_wait = (~((sdram_bankmachine1_cmd_valid & sdram_bankmachine1_cmd_ready) & sdram_bankmachine1_cmd_payload_is_write));
assign sdram_bankmachine1_syncfifo1_din = {sdram_bankmachine1_fifo_in_last, sdram_bankmachine1_fifo_in_first, sdram_bankmachine1_fifo_in_payload_adr, sdram_bankmachine1_fifo_in_payload_we};
assign {sdram_bankmachine1_fifo_out_last, sdram_bankmachine1_fifo_out_first, sdram_bankmachine1_fifo_out_payload_adr, sdram_bankmachine1_fifo_out_payload_we} = sdram_bankmachine1_syncfifo1_dout;
assign sdram_bankmachine1_sink_ready = sdram_bankmachine1_syncfifo1_writable;
assign sdram_bankmachine1_syncfifo1_we = sdram_bankmachine1_sink_valid;
assign sdram_bankmachine1_fifo_in_first = sdram_bankmachine1_sink_first;
assign sdram_bankmachine1_fifo_in_last = sdram_bankmachine1_sink_last;
assign sdram_bankmachine1_fifo_in_payload_we = sdram_bankmachine1_sink_payload_we;
assign sdram_bankmachine1_fifo_in_payload_adr = sdram_bankmachine1_sink_payload_adr;
assign sdram_bankmachine1_source_valid = sdram_bankmachine1_syncfifo1_readable;
assign sdram_bankmachine1_source_first = sdram_bankmachine1_fifo_out_first;
assign sdram_bankmachine1_source_last = sdram_bankmachine1_fifo_out_last;
assign sdram_bankmachine1_source_payload_we = sdram_bankmachine1_fifo_out_payload_we;
assign sdram_bankmachine1_source_payload_adr = sdram_bankmachine1_fifo_out_payload_adr;
assign sdram_bankmachine1_syncfifo1_re = sdram_bankmachine1_source_ready;
always @(*) begin
	sdram_bankmachine1_wrport_adr <= 3'd0;
	if (sdram_bankmachine1_replace) begin
		sdram_bankmachine1_wrport_adr <= (sdram_bankmachine1_produce - 1'd1);
	end else begin
		sdram_bankmachine1_wrport_adr <= sdram_bankmachine1_produce;
	end
end
assign sdram_bankmachine1_wrport_dat_w = sdram_bankmachine1_syncfifo1_din;
assign sdram_bankmachine1_wrport_we = (sdram_bankmachine1_syncfifo1_we & (sdram_bankmachine1_syncfifo1_writable | sdram_bankmachine1_replace));
assign sdram_bankmachine1_do_read = (sdram_bankmachine1_syncfifo1_readable & sdram_bankmachine1_syncfifo1_re);
assign sdram_bankmachine1_rdport_adr = sdram_bankmachine1_consume;
assign sdram_bankmachine1_syncfifo1_dout = sdram_bankmachine1_rdport_dat_r;
assign sdram_bankmachine1_syncfifo1_writable = (sdram_bankmachine1_level != 4'd8);
assign sdram_bankmachine1_syncfifo1_readable = (sdram_bankmachine1_level != 1'd0);
assign sdram_bankmachine1_done = (sdram_bankmachine1_count == 1'd0);
always @(*) begin
	sdram_bankmachine1_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine1_cmd_payload_is_write <= 1'd0;
	sdram_bankmachine1_req_wdata_ready <= 1'd0;
	sdram_bankmachine1_req_rdata_valid <= 1'd0;
	bankmachine1_next_state <= 3'd0;
	sdram_bankmachine1_refresh_gnt <= 1'd0;
	sdram_bankmachine1_cmd_valid <= 1'd0;
	sdram_bankmachine1_cmd_payload_cas <= 1'd0;
	sdram_bankmachine1_track_open <= 1'd0;
	sdram_bankmachine1_track_close <= 1'd0;
	sdram_bankmachine1_cmd_payload_ras <= 1'd0;
	sdram_bankmachine1_cmd_payload_we <= 1'd0;
	sdram_bankmachine1_sel_row_adr <= 1'd0;
	sdram_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	bankmachine1_next_state <= bankmachine1_state;
	case (bankmachine1_state)
		1'd1: begin
			if (sdram_bankmachine1_done) begin
				sdram_bankmachine1_cmd_valid <= 1'd1;
				if (sdram_bankmachine1_cmd_ready) begin
					bankmachine1_next_state <= 3'd4;
				end
				sdram_bankmachine1_cmd_payload_ras <= 1'd1;
				sdram_bankmachine1_cmd_payload_we <= 1'd1;
				sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine1_track_close <= 1'd1;
		end
		2'd2: begin
			sdram_bankmachine1_sel_row_adr <= 1'd1;
			sdram_bankmachine1_track_open <= 1'd1;
			sdram_bankmachine1_cmd_valid <= 1'd1;
			sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if (sdram_bankmachine1_cmd_ready) begin
				bankmachine1_next_state <= 3'd6;
			end
			sdram_bankmachine1_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (sdram_bankmachine1_done) begin
				sdram_bankmachine1_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine1_track_close <= 1'd1;
			sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine1_refresh_req)) begin
				bankmachine1_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine1_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine1_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine1_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine1_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine1_refresh_req) begin
				bankmachine1_next_state <= 2'd3;
			end else begin
				if (sdram_bankmachine1_source_valid) begin
					if (sdram_bankmachine1_has_openrow) begin
						if (sdram_bankmachine1_hit) begin
							sdram_bankmachine1_cmd_valid <= 1'd1;
							if (sdram_bankmachine1_source_payload_we) begin
								sdram_bankmachine1_req_wdata_ready <= sdram_bankmachine1_cmd_ready;
								sdram_bankmachine1_cmd_payload_is_write <= 1'd1;
								sdram_bankmachine1_cmd_payload_we <= 1'd1;
							end else begin
								sdram_bankmachine1_req_rdata_valid <= sdram_bankmachine1_cmd_ready;
								sdram_bankmachine1_cmd_payload_is_read <= 1'd1;
							end
							sdram_bankmachine1_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine1_next_state <= 1'd1;
						end
					end else begin
						bankmachine1_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign sdram_bankmachine2_sink_valid = sdram_bankmachine2_req_valid;
assign sdram_bankmachine2_req_ready = sdram_bankmachine2_sink_ready;
assign sdram_bankmachine2_sink_payload_we = sdram_bankmachine2_req_we;
assign sdram_bankmachine2_sink_payload_adr = sdram_bankmachine2_req_adr;
assign sdram_bankmachine2_source_ready = (sdram_bankmachine2_req_wdata_ready | sdram_bankmachine2_req_rdata_valid);
assign sdram_bankmachine2_req_lock = sdram_bankmachine2_source_valid;
assign sdram_bankmachine2_hit = (sdram_bankmachine2_openrow == sdram_bankmachine2_source_payload_adr[20:7]);
assign sdram_bankmachine2_cmd_payload_ba = 2'd2;
always @(*) begin
	sdram_bankmachine2_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine2_sel_row_adr) begin
		sdram_bankmachine2_cmd_payload_a <= sdram_bankmachine2_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine2_cmd_payload_a <= {sdram_bankmachine2_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign sdram_bankmachine2_wait = (~((sdram_bankmachine2_cmd_valid & sdram_bankmachine2_cmd_ready) & sdram_bankmachine2_cmd_payload_is_write));
assign sdram_bankmachine2_syncfifo2_din = {sdram_bankmachine2_fifo_in_last, sdram_bankmachine2_fifo_in_first, sdram_bankmachine2_fifo_in_payload_adr, sdram_bankmachine2_fifo_in_payload_we};
assign {sdram_bankmachine2_fifo_out_last, sdram_bankmachine2_fifo_out_first, sdram_bankmachine2_fifo_out_payload_adr, sdram_bankmachine2_fifo_out_payload_we} = sdram_bankmachine2_syncfifo2_dout;
assign sdram_bankmachine2_sink_ready = sdram_bankmachine2_syncfifo2_writable;
assign sdram_bankmachine2_syncfifo2_we = sdram_bankmachine2_sink_valid;
assign sdram_bankmachine2_fifo_in_first = sdram_bankmachine2_sink_first;
assign sdram_bankmachine2_fifo_in_last = sdram_bankmachine2_sink_last;
assign sdram_bankmachine2_fifo_in_payload_we = sdram_bankmachine2_sink_payload_we;
assign sdram_bankmachine2_fifo_in_payload_adr = sdram_bankmachine2_sink_payload_adr;
assign sdram_bankmachine2_source_valid = sdram_bankmachine2_syncfifo2_readable;
assign sdram_bankmachine2_source_first = sdram_bankmachine2_fifo_out_first;
assign sdram_bankmachine2_source_last = sdram_bankmachine2_fifo_out_last;
assign sdram_bankmachine2_source_payload_we = sdram_bankmachine2_fifo_out_payload_we;
assign sdram_bankmachine2_source_payload_adr = sdram_bankmachine2_fifo_out_payload_adr;
assign sdram_bankmachine2_syncfifo2_re = sdram_bankmachine2_source_ready;
always @(*) begin
	sdram_bankmachine2_wrport_adr <= 3'd0;
	if (sdram_bankmachine2_replace) begin
		sdram_bankmachine2_wrport_adr <= (sdram_bankmachine2_produce - 1'd1);
	end else begin
		sdram_bankmachine2_wrport_adr <= sdram_bankmachine2_produce;
	end
end
assign sdram_bankmachine2_wrport_dat_w = sdram_bankmachine2_syncfifo2_din;
assign sdram_bankmachine2_wrport_we = (sdram_bankmachine2_syncfifo2_we & (sdram_bankmachine2_syncfifo2_writable | sdram_bankmachine2_replace));
assign sdram_bankmachine2_do_read = (sdram_bankmachine2_syncfifo2_readable & sdram_bankmachine2_syncfifo2_re);
assign sdram_bankmachine2_rdport_adr = sdram_bankmachine2_consume;
assign sdram_bankmachine2_syncfifo2_dout = sdram_bankmachine2_rdport_dat_r;
assign sdram_bankmachine2_syncfifo2_writable = (sdram_bankmachine2_level != 4'd8);
assign sdram_bankmachine2_syncfifo2_readable = (sdram_bankmachine2_level != 1'd0);
assign sdram_bankmachine2_done = (sdram_bankmachine2_count == 1'd0);
always @(*) begin
	bankmachine2_next_state <= 3'd0;
	sdram_bankmachine2_track_open <= 1'd0;
	sdram_bankmachine2_track_close <= 1'd0;
	sdram_bankmachine2_cmd_payload_cas <= 1'd0;
	sdram_bankmachine2_cmd_payload_ras <= 1'd0;
	sdram_bankmachine2_cmd_payload_we <= 1'd0;
	sdram_bankmachine2_sel_row_adr <= 1'd0;
	sdram_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine2_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine2_cmd_payload_is_write <= 1'd0;
	sdram_bankmachine2_req_wdata_ready <= 1'd0;
	sdram_bankmachine2_req_rdata_valid <= 1'd0;
	sdram_bankmachine2_refresh_gnt <= 1'd0;
	sdram_bankmachine2_cmd_valid <= 1'd0;
	bankmachine2_next_state <= bankmachine2_state;
	case (bankmachine2_state)
		1'd1: begin
			if (sdram_bankmachine2_done) begin
				sdram_bankmachine2_cmd_valid <= 1'd1;
				if (sdram_bankmachine2_cmd_ready) begin
					bankmachine2_next_state <= 3'd4;
				end
				sdram_bankmachine2_cmd_payload_ras <= 1'd1;
				sdram_bankmachine2_cmd_payload_we <= 1'd1;
				sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine2_track_close <= 1'd1;
		end
		2'd2: begin
			sdram_bankmachine2_sel_row_adr <= 1'd1;
			sdram_bankmachine2_track_open <= 1'd1;
			sdram_bankmachine2_cmd_valid <= 1'd1;
			sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if (sdram_bankmachine2_cmd_ready) begin
				bankmachine2_next_state <= 3'd6;
			end
			sdram_bankmachine2_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (sdram_bankmachine2_done) begin
				sdram_bankmachine2_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine2_track_close <= 1'd1;
			sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine2_refresh_req)) begin
				bankmachine2_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine2_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine2_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine2_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine2_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine2_refresh_req) begin
				bankmachine2_next_state <= 2'd3;
			end else begin
				if (sdram_bankmachine2_source_valid) begin
					if (sdram_bankmachine2_has_openrow) begin
						if (sdram_bankmachine2_hit) begin
							sdram_bankmachine2_cmd_valid <= 1'd1;
							if (sdram_bankmachine2_source_payload_we) begin
								sdram_bankmachine2_req_wdata_ready <= sdram_bankmachine2_cmd_ready;
								sdram_bankmachine2_cmd_payload_is_write <= 1'd1;
								sdram_bankmachine2_cmd_payload_we <= 1'd1;
							end else begin
								sdram_bankmachine2_req_rdata_valid <= sdram_bankmachine2_cmd_ready;
								sdram_bankmachine2_cmd_payload_is_read <= 1'd1;
							end
							sdram_bankmachine2_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine2_next_state <= 1'd1;
						end
					end else begin
						bankmachine2_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign sdram_bankmachine3_sink_valid = sdram_bankmachine3_req_valid;
assign sdram_bankmachine3_req_ready = sdram_bankmachine3_sink_ready;
assign sdram_bankmachine3_sink_payload_we = sdram_bankmachine3_req_we;
assign sdram_bankmachine3_sink_payload_adr = sdram_bankmachine3_req_adr;
assign sdram_bankmachine3_source_ready = (sdram_bankmachine3_req_wdata_ready | sdram_bankmachine3_req_rdata_valid);
assign sdram_bankmachine3_req_lock = sdram_bankmachine3_source_valid;
assign sdram_bankmachine3_hit = (sdram_bankmachine3_openrow == sdram_bankmachine3_source_payload_adr[20:7]);
assign sdram_bankmachine3_cmd_payload_ba = 2'd3;
always @(*) begin
	sdram_bankmachine3_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine3_sel_row_adr) begin
		sdram_bankmachine3_cmd_payload_a <= sdram_bankmachine3_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine3_cmd_payload_a <= {sdram_bankmachine3_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign sdram_bankmachine3_wait = (~((sdram_bankmachine3_cmd_valid & sdram_bankmachine3_cmd_ready) & sdram_bankmachine3_cmd_payload_is_write));
assign sdram_bankmachine3_syncfifo3_din = {sdram_bankmachine3_fifo_in_last, sdram_bankmachine3_fifo_in_first, sdram_bankmachine3_fifo_in_payload_adr, sdram_bankmachine3_fifo_in_payload_we};
assign {sdram_bankmachine3_fifo_out_last, sdram_bankmachine3_fifo_out_first, sdram_bankmachine3_fifo_out_payload_adr, sdram_bankmachine3_fifo_out_payload_we} = sdram_bankmachine3_syncfifo3_dout;
assign sdram_bankmachine3_sink_ready = sdram_bankmachine3_syncfifo3_writable;
assign sdram_bankmachine3_syncfifo3_we = sdram_bankmachine3_sink_valid;
assign sdram_bankmachine3_fifo_in_first = sdram_bankmachine3_sink_first;
assign sdram_bankmachine3_fifo_in_last = sdram_bankmachine3_sink_last;
assign sdram_bankmachine3_fifo_in_payload_we = sdram_bankmachine3_sink_payload_we;
assign sdram_bankmachine3_fifo_in_payload_adr = sdram_bankmachine3_sink_payload_adr;
assign sdram_bankmachine3_source_valid = sdram_bankmachine3_syncfifo3_readable;
assign sdram_bankmachine3_source_first = sdram_bankmachine3_fifo_out_first;
assign sdram_bankmachine3_source_last = sdram_bankmachine3_fifo_out_last;
assign sdram_bankmachine3_source_payload_we = sdram_bankmachine3_fifo_out_payload_we;
assign sdram_bankmachine3_source_payload_adr = sdram_bankmachine3_fifo_out_payload_adr;
assign sdram_bankmachine3_syncfifo3_re = sdram_bankmachine3_source_ready;
always @(*) begin
	sdram_bankmachine3_wrport_adr <= 3'd0;
	if (sdram_bankmachine3_replace) begin
		sdram_bankmachine3_wrport_adr <= (sdram_bankmachine3_produce - 1'd1);
	end else begin
		sdram_bankmachine3_wrport_adr <= sdram_bankmachine3_produce;
	end
end
assign sdram_bankmachine3_wrport_dat_w = sdram_bankmachine3_syncfifo3_din;
assign sdram_bankmachine3_wrport_we = (sdram_bankmachine3_syncfifo3_we & (sdram_bankmachine3_syncfifo3_writable | sdram_bankmachine3_replace));
assign sdram_bankmachine3_do_read = (sdram_bankmachine3_syncfifo3_readable & sdram_bankmachine3_syncfifo3_re);
assign sdram_bankmachine3_rdport_adr = sdram_bankmachine3_consume;
assign sdram_bankmachine3_syncfifo3_dout = sdram_bankmachine3_rdport_dat_r;
assign sdram_bankmachine3_syncfifo3_writable = (sdram_bankmachine3_level != 4'd8);
assign sdram_bankmachine3_syncfifo3_readable = (sdram_bankmachine3_level != 1'd0);
assign sdram_bankmachine3_done = (sdram_bankmachine3_count == 1'd0);
always @(*) begin
	sdram_bankmachine3_refresh_gnt <= 1'd0;
	sdram_bankmachine3_cmd_valid <= 1'd0;
	sdram_bankmachine3_track_open <= 1'd0;
	sdram_bankmachine3_track_close <= 1'd0;
	sdram_bankmachine3_cmd_payload_cas <= 1'd0;
	sdram_bankmachine3_cmd_payload_ras <= 1'd0;
	sdram_bankmachine3_cmd_payload_we <= 1'd0;
	sdram_bankmachine3_sel_row_adr <= 1'd0;
	sdram_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine3_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine3_cmd_payload_is_write <= 1'd0;
	bankmachine3_next_state <= 3'd0;
	sdram_bankmachine3_req_wdata_ready <= 1'd0;
	sdram_bankmachine3_req_rdata_valid <= 1'd0;
	bankmachine3_next_state <= bankmachine3_state;
	case (bankmachine3_state)
		1'd1: begin
			if (sdram_bankmachine3_done) begin
				sdram_bankmachine3_cmd_valid <= 1'd1;
				if (sdram_bankmachine3_cmd_ready) begin
					bankmachine3_next_state <= 3'd4;
				end
				sdram_bankmachine3_cmd_payload_ras <= 1'd1;
				sdram_bankmachine3_cmd_payload_we <= 1'd1;
				sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine3_track_close <= 1'd1;
		end
		2'd2: begin
			sdram_bankmachine3_sel_row_adr <= 1'd1;
			sdram_bankmachine3_track_open <= 1'd1;
			sdram_bankmachine3_cmd_valid <= 1'd1;
			sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if (sdram_bankmachine3_cmd_ready) begin
				bankmachine3_next_state <= 3'd6;
			end
			sdram_bankmachine3_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (sdram_bankmachine3_done) begin
				sdram_bankmachine3_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine3_track_close <= 1'd1;
			sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine3_refresh_req)) begin
				bankmachine3_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine3_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine3_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine3_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine3_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine3_refresh_req) begin
				bankmachine3_next_state <= 2'd3;
			end else begin
				if (sdram_bankmachine3_source_valid) begin
					if (sdram_bankmachine3_has_openrow) begin
						if (sdram_bankmachine3_hit) begin
							sdram_bankmachine3_cmd_valid <= 1'd1;
							if (sdram_bankmachine3_source_payload_we) begin
								sdram_bankmachine3_req_wdata_ready <= sdram_bankmachine3_cmd_ready;
								sdram_bankmachine3_cmd_payload_is_write <= 1'd1;
								sdram_bankmachine3_cmd_payload_we <= 1'd1;
							end else begin
								sdram_bankmachine3_req_rdata_valid <= sdram_bankmachine3_cmd_ready;
								sdram_bankmachine3_cmd_payload_is_read <= 1'd1;
							end
							sdram_bankmachine3_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine3_next_state <= 1'd1;
						end
					end else begin
						bankmachine3_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign sdram_bankmachine4_sink_valid = sdram_bankmachine4_req_valid;
assign sdram_bankmachine4_req_ready = sdram_bankmachine4_sink_ready;
assign sdram_bankmachine4_sink_payload_we = sdram_bankmachine4_req_we;
assign sdram_bankmachine4_sink_payload_adr = sdram_bankmachine4_req_adr;
assign sdram_bankmachine4_source_ready = (sdram_bankmachine4_req_wdata_ready | sdram_bankmachine4_req_rdata_valid);
assign sdram_bankmachine4_req_lock = sdram_bankmachine4_source_valid;
assign sdram_bankmachine4_hit = (sdram_bankmachine4_openrow == sdram_bankmachine4_source_payload_adr[20:7]);
assign sdram_bankmachine4_cmd_payload_ba = 3'd4;
always @(*) begin
	sdram_bankmachine4_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine4_sel_row_adr) begin
		sdram_bankmachine4_cmd_payload_a <= sdram_bankmachine4_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine4_cmd_payload_a <= {sdram_bankmachine4_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign sdram_bankmachine4_wait = (~((sdram_bankmachine4_cmd_valid & sdram_bankmachine4_cmd_ready) & sdram_bankmachine4_cmd_payload_is_write));
assign sdram_bankmachine4_syncfifo4_din = {sdram_bankmachine4_fifo_in_last, sdram_bankmachine4_fifo_in_first, sdram_bankmachine4_fifo_in_payload_adr, sdram_bankmachine4_fifo_in_payload_we};
assign {sdram_bankmachine4_fifo_out_last, sdram_bankmachine4_fifo_out_first, sdram_bankmachine4_fifo_out_payload_adr, sdram_bankmachine4_fifo_out_payload_we} = sdram_bankmachine4_syncfifo4_dout;
assign sdram_bankmachine4_sink_ready = sdram_bankmachine4_syncfifo4_writable;
assign sdram_bankmachine4_syncfifo4_we = sdram_bankmachine4_sink_valid;
assign sdram_bankmachine4_fifo_in_first = sdram_bankmachine4_sink_first;
assign sdram_bankmachine4_fifo_in_last = sdram_bankmachine4_sink_last;
assign sdram_bankmachine4_fifo_in_payload_we = sdram_bankmachine4_sink_payload_we;
assign sdram_bankmachine4_fifo_in_payload_adr = sdram_bankmachine4_sink_payload_adr;
assign sdram_bankmachine4_source_valid = sdram_bankmachine4_syncfifo4_readable;
assign sdram_bankmachine4_source_first = sdram_bankmachine4_fifo_out_first;
assign sdram_bankmachine4_source_last = sdram_bankmachine4_fifo_out_last;
assign sdram_bankmachine4_source_payload_we = sdram_bankmachine4_fifo_out_payload_we;
assign sdram_bankmachine4_source_payload_adr = sdram_bankmachine4_fifo_out_payload_adr;
assign sdram_bankmachine4_syncfifo4_re = sdram_bankmachine4_source_ready;
always @(*) begin
	sdram_bankmachine4_wrport_adr <= 3'd0;
	if (sdram_bankmachine4_replace) begin
		sdram_bankmachine4_wrport_adr <= (sdram_bankmachine4_produce - 1'd1);
	end else begin
		sdram_bankmachine4_wrport_adr <= sdram_bankmachine4_produce;
	end
end
assign sdram_bankmachine4_wrport_dat_w = sdram_bankmachine4_syncfifo4_din;
assign sdram_bankmachine4_wrport_we = (sdram_bankmachine4_syncfifo4_we & (sdram_bankmachine4_syncfifo4_writable | sdram_bankmachine4_replace));
assign sdram_bankmachine4_do_read = (sdram_bankmachine4_syncfifo4_readable & sdram_bankmachine4_syncfifo4_re);
assign sdram_bankmachine4_rdport_adr = sdram_bankmachine4_consume;
assign sdram_bankmachine4_syncfifo4_dout = sdram_bankmachine4_rdport_dat_r;
assign sdram_bankmachine4_syncfifo4_writable = (sdram_bankmachine4_level != 4'd8);
assign sdram_bankmachine4_syncfifo4_readable = (sdram_bankmachine4_level != 1'd0);
assign sdram_bankmachine4_done = (sdram_bankmachine4_count == 1'd0);
always @(*) begin
	sdram_bankmachine4_cmd_payload_we <= 1'd0;
	sdram_bankmachine4_sel_row_adr <= 1'd0;
	sdram_bankmachine4_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine4_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine4_cmd_payload_is_write <= 1'd0;
	sdram_bankmachine4_req_wdata_ready <= 1'd0;
	sdram_bankmachine4_req_rdata_valid <= 1'd0;
	sdram_bankmachine4_cmd_payload_cas <= 1'd0;
	sdram_bankmachine4_refresh_gnt <= 1'd0;
	sdram_bankmachine4_cmd_valid <= 1'd0;
	bankmachine4_next_state <= 3'd0;
	sdram_bankmachine4_track_open <= 1'd0;
	sdram_bankmachine4_track_close <= 1'd0;
	sdram_bankmachine4_cmd_payload_ras <= 1'd0;
	bankmachine4_next_state <= bankmachine4_state;
	case (bankmachine4_state)
		1'd1: begin
			if (sdram_bankmachine4_done) begin
				sdram_bankmachine4_cmd_valid <= 1'd1;
				if (sdram_bankmachine4_cmd_ready) begin
					bankmachine4_next_state <= 3'd4;
				end
				sdram_bankmachine4_cmd_payload_ras <= 1'd1;
				sdram_bankmachine4_cmd_payload_we <= 1'd1;
				sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine4_track_close <= 1'd1;
		end
		2'd2: begin
			sdram_bankmachine4_sel_row_adr <= 1'd1;
			sdram_bankmachine4_track_open <= 1'd1;
			sdram_bankmachine4_cmd_valid <= 1'd1;
			sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if (sdram_bankmachine4_cmd_ready) begin
				bankmachine4_next_state <= 3'd6;
			end
			sdram_bankmachine4_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (sdram_bankmachine4_done) begin
				sdram_bankmachine4_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine4_track_close <= 1'd1;
			sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine4_refresh_req)) begin
				bankmachine4_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine4_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine4_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine4_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine4_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine4_refresh_req) begin
				bankmachine4_next_state <= 2'd3;
			end else begin
				if (sdram_bankmachine4_source_valid) begin
					if (sdram_bankmachine4_has_openrow) begin
						if (sdram_bankmachine4_hit) begin
							sdram_bankmachine4_cmd_valid <= 1'd1;
							if (sdram_bankmachine4_source_payload_we) begin
								sdram_bankmachine4_req_wdata_ready <= sdram_bankmachine4_cmd_ready;
								sdram_bankmachine4_cmd_payload_is_write <= 1'd1;
								sdram_bankmachine4_cmd_payload_we <= 1'd1;
							end else begin
								sdram_bankmachine4_req_rdata_valid <= sdram_bankmachine4_cmd_ready;
								sdram_bankmachine4_cmd_payload_is_read <= 1'd1;
							end
							sdram_bankmachine4_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine4_next_state <= 1'd1;
						end
					end else begin
						bankmachine4_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign sdram_bankmachine5_sink_valid = sdram_bankmachine5_req_valid;
assign sdram_bankmachine5_req_ready = sdram_bankmachine5_sink_ready;
assign sdram_bankmachine5_sink_payload_we = sdram_bankmachine5_req_we;
assign sdram_bankmachine5_sink_payload_adr = sdram_bankmachine5_req_adr;
assign sdram_bankmachine5_source_ready = (sdram_bankmachine5_req_wdata_ready | sdram_bankmachine5_req_rdata_valid);
assign sdram_bankmachine5_req_lock = sdram_bankmachine5_source_valid;
assign sdram_bankmachine5_hit = (sdram_bankmachine5_openrow == sdram_bankmachine5_source_payload_adr[20:7]);
assign sdram_bankmachine5_cmd_payload_ba = 3'd5;
always @(*) begin
	sdram_bankmachine5_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine5_sel_row_adr) begin
		sdram_bankmachine5_cmd_payload_a <= sdram_bankmachine5_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine5_cmd_payload_a <= {sdram_bankmachine5_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign sdram_bankmachine5_wait = (~((sdram_bankmachine5_cmd_valid & sdram_bankmachine5_cmd_ready) & sdram_bankmachine5_cmd_payload_is_write));
assign sdram_bankmachine5_syncfifo5_din = {sdram_bankmachine5_fifo_in_last, sdram_bankmachine5_fifo_in_first, sdram_bankmachine5_fifo_in_payload_adr, sdram_bankmachine5_fifo_in_payload_we};
assign {sdram_bankmachine5_fifo_out_last, sdram_bankmachine5_fifo_out_first, sdram_bankmachine5_fifo_out_payload_adr, sdram_bankmachine5_fifo_out_payload_we} = sdram_bankmachine5_syncfifo5_dout;
assign sdram_bankmachine5_sink_ready = sdram_bankmachine5_syncfifo5_writable;
assign sdram_bankmachine5_syncfifo5_we = sdram_bankmachine5_sink_valid;
assign sdram_bankmachine5_fifo_in_first = sdram_bankmachine5_sink_first;
assign sdram_bankmachine5_fifo_in_last = sdram_bankmachine5_sink_last;
assign sdram_bankmachine5_fifo_in_payload_we = sdram_bankmachine5_sink_payload_we;
assign sdram_bankmachine5_fifo_in_payload_adr = sdram_bankmachine5_sink_payload_adr;
assign sdram_bankmachine5_source_valid = sdram_bankmachine5_syncfifo5_readable;
assign sdram_bankmachine5_source_first = sdram_bankmachine5_fifo_out_first;
assign sdram_bankmachine5_source_last = sdram_bankmachine5_fifo_out_last;
assign sdram_bankmachine5_source_payload_we = sdram_bankmachine5_fifo_out_payload_we;
assign sdram_bankmachine5_source_payload_adr = sdram_bankmachine5_fifo_out_payload_adr;
assign sdram_bankmachine5_syncfifo5_re = sdram_bankmachine5_source_ready;
always @(*) begin
	sdram_bankmachine5_wrport_adr <= 3'd0;
	if (sdram_bankmachine5_replace) begin
		sdram_bankmachine5_wrport_adr <= (sdram_bankmachine5_produce - 1'd1);
	end else begin
		sdram_bankmachine5_wrport_adr <= sdram_bankmachine5_produce;
	end
end
assign sdram_bankmachine5_wrport_dat_w = sdram_bankmachine5_syncfifo5_din;
assign sdram_bankmachine5_wrport_we = (sdram_bankmachine5_syncfifo5_we & (sdram_bankmachine5_syncfifo5_writable | sdram_bankmachine5_replace));
assign sdram_bankmachine5_do_read = (sdram_bankmachine5_syncfifo5_readable & sdram_bankmachine5_syncfifo5_re);
assign sdram_bankmachine5_rdport_adr = sdram_bankmachine5_consume;
assign sdram_bankmachine5_syncfifo5_dout = sdram_bankmachine5_rdport_dat_r;
assign sdram_bankmachine5_syncfifo5_writable = (sdram_bankmachine5_level != 4'd8);
assign sdram_bankmachine5_syncfifo5_readable = (sdram_bankmachine5_level != 1'd0);
assign sdram_bankmachine5_done = (sdram_bankmachine5_count == 1'd0);
always @(*) begin
	sdram_bankmachine5_track_open <= 1'd0;
	sdram_bankmachine5_track_close <= 1'd0;
	sdram_bankmachine5_cmd_payload_cas <= 1'd0;
	sdram_bankmachine5_cmd_payload_ras <= 1'd0;
	sdram_bankmachine5_cmd_payload_we <= 1'd0;
	sdram_bankmachine5_sel_row_adr <= 1'd0;
	sdram_bankmachine5_cmd_payload_is_cmd <= 1'd0;
	bankmachine5_next_state <= 3'd0;
	sdram_bankmachine5_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine5_cmd_payload_is_write <= 1'd0;
	sdram_bankmachine5_req_wdata_ready <= 1'd0;
	sdram_bankmachine5_req_rdata_valid <= 1'd0;
	sdram_bankmachine5_refresh_gnt <= 1'd0;
	sdram_bankmachine5_cmd_valid <= 1'd0;
	bankmachine5_next_state <= bankmachine5_state;
	case (bankmachine5_state)
		1'd1: begin
			if (sdram_bankmachine5_done) begin
				sdram_bankmachine5_cmd_valid <= 1'd1;
				if (sdram_bankmachine5_cmd_ready) begin
					bankmachine5_next_state <= 3'd4;
				end
				sdram_bankmachine5_cmd_payload_ras <= 1'd1;
				sdram_bankmachine5_cmd_payload_we <= 1'd1;
				sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine5_track_close <= 1'd1;
		end
		2'd2: begin
			sdram_bankmachine5_sel_row_adr <= 1'd1;
			sdram_bankmachine5_track_open <= 1'd1;
			sdram_bankmachine5_cmd_valid <= 1'd1;
			sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if (sdram_bankmachine5_cmd_ready) begin
				bankmachine5_next_state <= 3'd6;
			end
			sdram_bankmachine5_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (sdram_bankmachine5_done) begin
				sdram_bankmachine5_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine5_track_close <= 1'd1;
			sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine5_refresh_req)) begin
				bankmachine5_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine5_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine5_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine5_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine5_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine5_refresh_req) begin
				bankmachine5_next_state <= 2'd3;
			end else begin
				if (sdram_bankmachine5_source_valid) begin
					if (sdram_bankmachine5_has_openrow) begin
						if (sdram_bankmachine5_hit) begin
							sdram_bankmachine5_cmd_valid <= 1'd1;
							if (sdram_bankmachine5_source_payload_we) begin
								sdram_bankmachine5_req_wdata_ready <= sdram_bankmachine5_cmd_ready;
								sdram_bankmachine5_cmd_payload_is_write <= 1'd1;
								sdram_bankmachine5_cmd_payload_we <= 1'd1;
							end else begin
								sdram_bankmachine5_req_rdata_valid <= sdram_bankmachine5_cmd_ready;
								sdram_bankmachine5_cmd_payload_is_read <= 1'd1;
							end
							sdram_bankmachine5_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine5_next_state <= 1'd1;
						end
					end else begin
						bankmachine5_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign sdram_bankmachine6_sink_valid = sdram_bankmachine6_req_valid;
assign sdram_bankmachine6_req_ready = sdram_bankmachine6_sink_ready;
assign sdram_bankmachine6_sink_payload_we = sdram_bankmachine6_req_we;
assign sdram_bankmachine6_sink_payload_adr = sdram_bankmachine6_req_adr;
assign sdram_bankmachine6_source_ready = (sdram_bankmachine6_req_wdata_ready | sdram_bankmachine6_req_rdata_valid);
assign sdram_bankmachine6_req_lock = sdram_bankmachine6_source_valid;
assign sdram_bankmachine6_hit = (sdram_bankmachine6_openrow == sdram_bankmachine6_source_payload_adr[20:7]);
assign sdram_bankmachine6_cmd_payload_ba = 3'd6;
always @(*) begin
	sdram_bankmachine6_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine6_sel_row_adr) begin
		sdram_bankmachine6_cmd_payload_a <= sdram_bankmachine6_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine6_cmd_payload_a <= {sdram_bankmachine6_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign sdram_bankmachine6_wait = (~((sdram_bankmachine6_cmd_valid & sdram_bankmachine6_cmd_ready) & sdram_bankmachine6_cmd_payload_is_write));
assign sdram_bankmachine6_syncfifo6_din = {sdram_bankmachine6_fifo_in_last, sdram_bankmachine6_fifo_in_first, sdram_bankmachine6_fifo_in_payload_adr, sdram_bankmachine6_fifo_in_payload_we};
assign {sdram_bankmachine6_fifo_out_last, sdram_bankmachine6_fifo_out_first, sdram_bankmachine6_fifo_out_payload_adr, sdram_bankmachine6_fifo_out_payload_we} = sdram_bankmachine6_syncfifo6_dout;
assign sdram_bankmachine6_sink_ready = sdram_bankmachine6_syncfifo6_writable;
assign sdram_bankmachine6_syncfifo6_we = sdram_bankmachine6_sink_valid;
assign sdram_bankmachine6_fifo_in_first = sdram_bankmachine6_sink_first;
assign sdram_bankmachine6_fifo_in_last = sdram_bankmachine6_sink_last;
assign sdram_bankmachine6_fifo_in_payload_we = sdram_bankmachine6_sink_payload_we;
assign sdram_bankmachine6_fifo_in_payload_adr = sdram_bankmachine6_sink_payload_adr;
assign sdram_bankmachine6_source_valid = sdram_bankmachine6_syncfifo6_readable;
assign sdram_bankmachine6_source_first = sdram_bankmachine6_fifo_out_first;
assign sdram_bankmachine6_source_last = sdram_bankmachine6_fifo_out_last;
assign sdram_bankmachine6_source_payload_we = sdram_bankmachine6_fifo_out_payload_we;
assign sdram_bankmachine6_source_payload_adr = sdram_bankmachine6_fifo_out_payload_adr;
assign sdram_bankmachine6_syncfifo6_re = sdram_bankmachine6_source_ready;
always @(*) begin
	sdram_bankmachine6_wrport_adr <= 3'd0;
	if (sdram_bankmachine6_replace) begin
		sdram_bankmachine6_wrport_adr <= (sdram_bankmachine6_produce - 1'd1);
	end else begin
		sdram_bankmachine6_wrport_adr <= sdram_bankmachine6_produce;
	end
end
assign sdram_bankmachine6_wrport_dat_w = sdram_bankmachine6_syncfifo6_din;
assign sdram_bankmachine6_wrport_we = (sdram_bankmachine6_syncfifo6_we & (sdram_bankmachine6_syncfifo6_writable | sdram_bankmachine6_replace));
assign sdram_bankmachine6_do_read = (sdram_bankmachine6_syncfifo6_readable & sdram_bankmachine6_syncfifo6_re);
assign sdram_bankmachine6_rdport_adr = sdram_bankmachine6_consume;
assign sdram_bankmachine6_syncfifo6_dout = sdram_bankmachine6_rdport_dat_r;
assign sdram_bankmachine6_syncfifo6_writable = (sdram_bankmachine6_level != 4'd8);
assign sdram_bankmachine6_syncfifo6_readable = (sdram_bankmachine6_level != 1'd0);
assign sdram_bankmachine6_done = (sdram_bankmachine6_count == 1'd0);
always @(*) begin
	sdram_bankmachine6_req_wdata_ready <= 1'd0;
	sdram_bankmachine6_req_rdata_valid <= 1'd0;
	sdram_bankmachine6_refresh_gnt <= 1'd0;
	sdram_bankmachine6_cmd_valid <= 1'd0;
	bankmachine6_next_state <= 3'd0;
	sdram_bankmachine6_track_open <= 1'd0;
	sdram_bankmachine6_track_close <= 1'd0;
	sdram_bankmachine6_cmd_payload_cas <= 1'd0;
	sdram_bankmachine6_cmd_payload_ras <= 1'd0;
	sdram_bankmachine6_cmd_payload_we <= 1'd0;
	sdram_bankmachine6_sel_row_adr <= 1'd0;
	sdram_bankmachine6_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine6_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine6_cmd_payload_is_write <= 1'd0;
	bankmachine6_next_state <= bankmachine6_state;
	case (bankmachine6_state)
		1'd1: begin
			if (sdram_bankmachine6_done) begin
				sdram_bankmachine6_cmd_valid <= 1'd1;
				if (sdram_bankmachine6_cmd_ready) begin
					bankmachine6_next_state <= 3'd4;
				end
				sdram_bankmachine6_cmd_payload_ras <= 1'd1;
				sdram_bankmachine6_cmd_payload_we <= 1'd1;
				sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine6_track_close <= 1'd1;
		end
		2'd2: begin
			sdram_bankmachine6_sel_row_adr <= 1'd1;
			sdram_bankmachine6_track_open <= 1'd1;
			sdram_bankmachine6_cmd_valid <= 1'd1;
			sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if (sdram_bankmachine6_cmd_ready) begin
				bankmachine6_next_state <= 3'd6;
			end
			sdram_bankmachine6_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (sdram_bankmachine6_done) begin
				sdram_bankmachine6_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine6_track_close <= 1'd1;
			sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine6_refresh_req)) begin
				bankmachine6_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine6_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine6_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine6_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine6_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine6_refresh_req) begin
				bankmachine6_next_state <= 2'd3;
			end else begin
				if (sdram_bankmachine6_source_valid) begin
					if (sdram_bankmachine6_has_openrow) begin
						if (sdram_bankmachine6_hit) begin
							sdram_bankmachine6_cmd_valid <= 1'd1;
							if (sdram_bankmachine6_source_payload_we) begin
								sdram_bankmachine6_req_wdata_ready <= sdram_bankmachine6_cmd_ready;
								sdram_bankmachine6_cmd_payload_is_write <= 1'd1;
								sdram_bankmachine6_cmd_payload_we <= 1'd1;
							end else begin
								sdram_bankmachine6_req_rdata_valid <= sdram_bankmachine6_cmd_ready;
								sdram_bankmachine6_cmd_payload_is_read <= 1'd1;
							end
							sdram_bankmachine6_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine6_next_state <= 1'd1;
						end
					end else begin
						bankmachine6_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign sdram_bankmachine7_sink_valid = sdram_bankmachine7_req_valid;
assign sdram_bankmachine7_req_ready = sdram_bankmachine7_sink_ready;
assign sdram_bankmachine7_sink_payload_we = sdram_bankmachine7_req_we;
assign sdram_bankmachine7_sink_payload_adr = sdram_bankmachine7_req_adr;
assign sdram_bankmachine7_source_ready = (sdram_bankmachine7_req_wdata_ready | sdram_bankmachine7_req_rdata_valid);
assign sdram_bankmachine7_req_lock = sdram_bankmachine7_source_valid;
assign sdram_bankmachine7_hit = (sdram_bankmachine7_openrow == sdram_bankmachine7_source_payload_adr[20:7]);
assign sdram_bankmachine7_cmd_payload_ba = 3'd7;
always @(*) begin
	sdram_bankmachine7_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine7_sel_row_adr) begin
		sdram_bankmachine7_cmd_payload_a <= sdram_bankmachine7_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine7_cmd_payload_a <= {sdram_bankmachine7_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign sdram_bankmachine7_wait = (~((sdram_bankmachine7_cmd_valid & sdram_bankmachine7_cmd_ready) & sdram_bankmachine7_cmd_payload_is_write));
assign sdram_bankmachine7_syncfifo7_din = {sdram_bankmachine7_fifo_in_last, sdram_bankmachine7_fifo_in_first, sdram_bankmachine7_fifo_in_payload_adr, sdram_bankmachine7_fifo_in_payload_we};
assign {sdram_bankmachine7_fifo_out_last, sdram_bankmachine7_fifo_out_first, sdram_bankmachine7_fifo_out_payload_adr, sdram_bankmachine7_fifo_out_payload_we} = sdram_bankmachine7_syncfifo7_dout;
assign sdram_bankmachine7_sink_ready = sdram_bankmachine7_syncfifo7_writable;
assign sdram_bankmachine7_syncfifo7_we = sdram_bankmachine7_sink_valid;
assign sdram_bankmachine7_fifo_in_first = sdram_bankmachine7_sink_first;
assign sdram_bankmachine7_fifo_in_last = sdram_bankmachine7_sink_last;
assign sdram_bankmachine7_fifo_in_payload_we = sdram_bankmachine7_sink_payload_we;
assign sdram_bankmachine7_fifo_in_payload_adr = sdram_bankmachine7_sink_payload_adr;
assign sdram_bankmachine7_source_valid = sdram_bankmachine7_syncfifo7_readable;
assign sdram_bankmachine7_source_first = sdram_bankmachine7_fifo_out_first;
assign sdram_bankmachine7_source_last = sdram_bankmachine7_fifo_out_last;
assign sdram_bankmachine7_source_payload_we = sdram_bankmachine7_fifo_out_payload_we;
assign sdram_bankmachine7_source_payload_adr = sdram_bankmachine7_fifo_out_payload_adr;
assign sdram_bankmachine7_syncfifo7_re = sdram_bankmachine7_source_ready;
always @(*) begin
	sdram_bankmachine7_wrport_adr <= 3'd0;
	if (sdram_bankmachine7_replace) begin
		sdram_bankmachine7_wrport_adr <= (sdram_bankmachine7_produce - 1'd1);
	end else begin
		sdram_bankmachine7_wrport_adr <= sdram_bankmachine7_produce;
	end
end
assign sdram_bankmachine7_wrport_dat_w = sdram_bankmachine7_syncfifo7_din;
assign sdram_bankmachine7_wrport_we = (sdram_bankmachine7_syncfifo7_we & (sdram_bankmachine7_syncfifo7_writable | sdram_bankmachine7_replace));
assign sdram_bankmachine7_do_read = (sdram_bankmachine7_syncfifo7_readable & sdram_bankmachine7_syncfifo7_re);
assign sdram_bankmachine7_rdport_adr = sdram_bankmachine7_consume;
assign sdram_bankmachine7_syncfifo7_dout = sdram_bankmachine7_rdport_dat_r;
assign sdram_bankmachine7_syncfifo7_writable = (sdram_bankmachine7_level != 4'd8);
assign sdram_bankmachine7_syncfifo7_readable = (sdram_bankmachine7_level != 1'd0);
assign sdram_bankmachine7_done = (sdram_bankmachine7_count == 1'd0);
always @(*) begin
	sdram_bankmachine7_track_close <= 1'd0;
	sdram_bankmachine7_cmd_payload_cas <= 1'd0;
	sdram_bankmachine7_cmd_payload_ras <= 1'd0;
	bankmachine7_next_state <= 3'd0;
	sdram_bankmachine7_cmd_payload_we <= 1'd0;
	sdram_bankmachine7_sel_row_adr <= 1'd0;
	sdram_bankmachine7_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine7_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine7_cmd_payload_is_write <= 1'd0;
	sdram_bankmachine7_req_wdata_ready <= 1'd0;
	sdram_bankmachine7_req_rdata_valid <= 1'd0;
	sdram_bankmachine7_refresh_gnt <= 1'd0;
	sdram_bankmachine7_cmd_valid <= 1'd0;
	sdram_bankmachine7_track_open <= 1'd0;
	bankmachine7_next_state <= bankmachine7_state;
	case (bankmachine7_state)
		1'd1: begin
			if (sdram_bankmachine7_done) begin
				sdram_bankmachine7_cmd_valid <= 1'd1;
				if (sdram_bankmachine7_cmd_ready) begin
					bankmachine7_next_state <= 3'd4;
				end
				sdram_bankmachine7_cmd_payload_ras <= 1'd1;
				sdram_bankmachine7_cmd_payload_we <= 1'd1;
				sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine7_track_close <= 1'd1;
		end
		2'd2: begin
			sdram_bankmachine7_sel_row_adr <= 1'd1;
			sdram_bankmachine7_track_open <= 1'd1;
			sdram_bankmachine7_cmd_valid <= 1'd1;
			sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if (sdram_bankmachine7_cmd_ready) begin
				bankmachine7_next_state <= 3'd6;
			end
			sdram_bankmachine7_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (sdram_bankmachine7_done) begin
				sdram_bankmachine7_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine7_track_close <= 1'd1;
			sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine7_refresh_req)) begin
				bankmachine7_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine7_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine7_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine7_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine7_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine7_refresh_req) begin
				bankmachine7_next_state <= 2'd3;
			end else begin
				if (sdram_bankmachine7_source_valid) begin
					if (sdram_bankmachine7_has_openrow) begin
						if (sdram_bankmachine7_hit) begin
							sdram_bankmachine7_cmd_valid <= 1'd1;
							if (sdram_bankmachine7_source_payload_we) begin
								sdram_bankmachine7_req_wdata_ready <= sdram_bankmachine7_cmd_ready;
								sdram_bankmachine7_cmd_payload_is_write <= 1'd1;
								sdram_bankmachine7_cmd_payload_we <= 1'd1;
							end else begin
								sdram_bankmachine7_req_rdata_valid <= sdram_bankmachine7_cmd_ready;
								sdram_bankmachine7_cmd_payload_is_read <= 1'd1;
							end
							sdram_bankmachine7_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine7_next_state <= 1'd1;
						end
					end else begin
						bankmachine7_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign sdram_read_available = ((((((((sdram_bankmachine0_cmd_valid & sdram_bankmachine0_cmd_payload_is_read) | (sdram_bankmachine1_cmd_valid & sdram_bankmachine1_cmd_payload_is_read)) | (sdram_bankmachine2_cmd_valid & sdram_bankmachine2_cmd_payload_is_read)) | (sdram_bankmachine3_cmd_valid & sdram_bankmachine3_cmd_payload_is_read)) | (sdram_bankmachine4_cmd_valid & sdram_bankmachine4_cmd_payload_is_read)) | (sdram_bankmachine5_cmd_valid & sdram_bankmachine5_cmd_payload_is_read)) | (sdram_bankmachine6_cmd_valid & sdram_bankmachine6_cmd_payload_is_read)) | (sdram_bankmachine7_cmd_valid & sdram_bankmachine7_cmd_payload_is_read));
assign sdram_write_available = ((((((((sdram_bankmachine0_cmd_valid & sdram_bankmachine0_cmd_payload_is_write) | (sdram_bankmachine1_cmd_valid & sdram_bankmachine1_cmd_payload_is_write)) | (sdram_bankmachine2_cmd_valid & sdram_bankmachine2_cmd_payload_is_write)) | (sdram_bankmachine3_cmd_valid & sdram_bankmachine3_cmd_payload_is_write)) | (sdram_bankmachine4_cmd_valid & sdram_bankmachine4_cmd_payload_is_write)) | (sdram_bankmachine5_cmd_valid & sdram_bankmachine5_cmd_payload_is_write)) | (sdram_bankmachine6_cmd_valid & sdram_bankmachine6_cmd_payload_is_write)) | (sdram_bankmachine7_cmd_valid & sdram_bankmachine7_cmd_payload_is_write));
assign sdram_max_time0 = (sdram_time0 == 1'd0);
assign sdram_max_time1 = (sdram_time1 == 1'd0);
assign sdram_bankmachine0_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine1_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine2_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine3_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine4_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine5_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine6_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine7_refresh_req = sdram_cmd_valid;
assign sdram_go_to_refresh = (((((((sdram_bankmachine0_refresh_gnt & sdram_bankmachine1_refresh_gnt) & sdram_bankmachine2_refresh_gnt) & sdram_bankmachine3_refresh_gnt) & sdram_bankmachine4_refresh_gnt) & sdram_bankmachine5_refresh_gnt) & sdram_bankmachine6_refresh_gnt) & sdram_bankmachine7_refresh_gnt);
assign sdram_interface_rdata = {sdram_dfi_p3_rddata, sdram_dfi_p2_rddata, sdram_dfi_p1_rddata, sdram_dfi_p0_rddata};
assign {sdram_dfi_p3_wrdata, sdram_dfi_p2_wrdata, sdram_dfi_p1_wrdata, sdram_dfi_p0_wrdata} = sdram_interface_wdata;
assign {sdram_dfi_p3_wrdata_mask, sdram_dfi_p2_wrdata_mask, sdram_dfi_p1_wrdata_mask, sdram_dfi_p0_wrdata_mask} = (~sdram_interface_wdata_we);
always @(*) begin
	sdram_choose_cmd_valids <= 8'd0;
	sdram_choose_cmd_valids[0] <= (sdram_bankmachine0_cmd_valid & ((sdram_bankmachine0_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) | ((sdram_bankmachine0_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine0_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[1] <= (sdram_bankmachine1_cmd_valid & ((sdram_bankmachine1_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) | ((sdram_bankmachine1_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine1_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[2] <= (sdram_bankmachine2_cmd_valid & ((sdram_bankmachine2_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) | ((sdram_bankmachine2_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine2_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[3] <= (sdram_bankmachine3_cmd_valid & ((sdram_bankmachine3_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) | ((sdram_bankmachine3_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine3_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[4] <= (sdram_bankmachine4_cmd_valid & ((sdram_bankmachine4_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) | ((sdram_bankmachine4_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine4_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[5] <= (sdram_bankmachine5_cmd_valid & ((sdram_bankmachine5_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) | ((sdram_bankmachine5_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine5_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[6] <= (sdram_bankmachine6_cmd_valid & ((sdram_bankmachine6_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) | ((sdram_bankmachine6_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine6_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[7] <= (sdram_bankmachine7_cmd_valid & ((sdram_bankmachine7_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) | ((sdram_bankmachine7_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine7_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
end
assign sdram_choose_cmd_request = sdram_choose_cmd_valids;
assign sdram_choose_cmd_cmd_valid = rhs_array_muxed0;
assign sdram_choose_cmd_cmd_payload_a = rhs_array_muxed1;
assign sdram_choose_cmd_cmd_payload_ba = rhs_array_muxed2;
assign sdram_choose_cmd_cmd_payload_is_read = rhs_array_muxed3;
assign sdram_choose_cmd_cmd_payload_is_write = rhs_array_muxed4;
assign sdram_choose_cmd_cmd_payload_is_cmd = rhs_array_muxed5;
always @(*) begin
	sdram_choose_cmd_cmd_payload_cas <= 1'd0;
	if (sdram_choose_cmd_cmd_valid) begin
		sdram_choose_cmd_cmd_payload_cas <= t_array_muxed0;
	end
end
always @(*) begin
	sdram_choose_cmd_cmd_payload_ras <= 1'd0;
	if (sdram_choose_cmd_cmd_valid) begin
		sdram_choose_cmd_cmd_payload_ras <= t_array_muxed1;
	end
end
always @(*) begin
	sdram_choose_cmd_cmd_payload_we <= 1'd0;
	if (sdram_choose_cmd_cmd_valid) begin
		sdram_choose_cmd_cmd_payload_we <= t_array_muxed2;
	end
end
assign sdram_choose_cmd_ce = sdram_choose_cmd_cmd_ready;
always @(*) begin
	sdram_choose_req_valids <= 8'd0;
	sdram_choose_req_valids[0] <= (sdram_bankmachine0_cmd_valid & ((sdram_bankmachine0_cmd_payload_is_cmd & sdram_choose_req_want_cmds) | ((sdram_bankmachine0_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine0_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[1] <= (sdram_bankmachine1_cmd_valid & ((sdram_bankmachine1_cmd_payload_is_cmd & sdram_choose_req_want_cmds) | ((sdram_bankmachine1_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine1_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[2] <= (sdram_bankmachine2_cmd_valid & ((sdram_bankmachine2_cmd_payload_is_cmd & sdram_choose_req_want_cmds) | ((sdram_bankmachine2_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine2_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[3] <= (sdram_bankmachine3_cmd_valid & ((sdram_bankmachine3_cmd_payload_is_cmd & sdram_choose_req_want_cmds) | ((sdram_bankmachine3_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine3_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[4] <= (sdram_bankmachine4_cmd_valid & ((sdram_bankmachine4_cmd_payload_is_cmd & sdram_choose_req_want_cmds) | ((sdram_bankmachine4_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine4_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[5] <= (sdram_bankmachine5_cmd_valid & ((sdram_bankmachine5_cmd_payload_is_cmd & sdram_choose_req_want_cmds) | ((sdram_bankmachine5_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine5_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[6] <= (sdram_bankmachine6_cmd_valid & ((sdram_bankmachine6_cmd_payload_is_cmd & sdram_choose_req_want_cmds) | ((sdram_bankmachine6_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine6_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[7] <= (sdram_bankmachine7_cmd_valid & ((sdram_bankmachine7_cmd_payload_is_cmd & sdram_choose_req_want_cmds) | ((sdram_bankmachine7_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine7_cmd_payload_is_write == sdram_choose_req_want_writes))));
end
assign sdram_choose_req_request = sdram_choose_req_valids;
assign sdram_choose_req_cmd_valid = rhs_array_muxed6;
assign sdram_choose_req_cmd_payload_a = rhs_array_muxed7;
assign sdram_choose_req_cmd_payload_ba = rhs_array_muxed8;
assign sdram_choose_req_cmd_payload_is_read = rhs_array_muxed9;
assign sdram_choose_req_cmd_payload_is_write = rhs_array_muxed10;
assign sdram_choose_req_cmd_payload_is_cmd = rhs_array_muxed11;
always @(*) begin
	sdram_choose_req_cmd_payload_cas <= 1'd0;
	if (sdram_choose_req_cmd_valid) begin
		sdram_choose_req_cmd_payload_cas <= t_array_muxed3;
	end
end
always @(*) begin
	sdram_choose_req_cmd_payload_ras <= 1'd0;
	if (sdram_choose_req_cmd_valid) begin
		sdram_choose_req_cmd_payload_ras <= t_array_muxed4;
	end
end
always @(*) begin
	sdram_choose_req_cmd_payload_we <= 1'd0;
	if (sdram_choose_req_cmd_valid) begin
		sdram_choose_req_cmd_payload_we <= t_array_muxed5;
	end
end
always @(*) begin
	sdram_bankmachine0_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 1'd0))) begin
		sdram_bankmachine0_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 1'd0))) begin
		sdram_bankmachine0_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine1_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 1'd1))) begin
		sdram_bankmachine1_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 1'd1))) begin
		sdram_bankmachine1_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine2_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 2'd2))) begin
		sdram_bankmachine2_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 2'd2))) begin
		sdram_bankmachine2_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine3_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 2'd3))) begin
		sdram_bankmachine3_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 2'd3))) begin
		sdram_bankmachine3_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine4_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 3'd4))) begin
		sdram_bankmachine4_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 3'd4))) begin
		sdram_bankmachine4_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine5_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 3'd5))) begin
		sdram_bankmachine5_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 3'd5))) begin
		sdram_bankmachine5_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine6_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 3'd6))) begin
		sdram_bankmachine6_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 3'd6))) begin
		sdram_bankmachine6_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine7_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 3'd7))) begin
		sdram_bankmachine7_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 3'd7))) begin
		sdram_bankmachine7_cmd_ready <= 1'd1;
	end
end
assign sdram_choose_req_ce = sdram_choose_req_cmd_ready;
assign sdram_dfi_p0_cke = 1'd1;
assign sdram_dfi_p0_cs_n = 1'd0;
assign sdram_dfi_p0_odt = 1'd1;
assign sdram_dfi_p0_reset_n = 1'd1;
assign sdram_dfi_p1_cke = 1'd1;
assign sdram_dfi_p1_cs_n = 1'd0;
assign sdram_dfi_p1_odt = 1'd1;
assign sdram_dfi_p1_reset_n = 1'd1;
assign sdram_dfi_p2_cke = 1'd1;
assign sdram_dfi_p2_cs_n = 1'd0;
assign sdram_dfi_p2_odt = 1'd1;
assign sdram_dfi_p2_reset_n = 1'd1;
assign sdram_dfi_p3_cke = 1'd1;
assign sdram_dfi_p3_cs_n = 1'd0;
assign sdram_dfi_p3_odt = 1'd1;
assign sdram_dfi_p3_reset_n = 1'd1;
always @(*) begin
	sdram_choose_req_want_writes <= 1'd0;
	sdram_choose_req_want_reads <= 1'd0;
	sdram_choose_req_cmd_ready <= 1'd0;
	sdram_en1 <= 1'd0;
	sdram_cmd_ready <= 1'd0;
	sdram_en0 <= 1'd0;
	sdram_choose_cmd_cmd_ready <= 1'd0;
	sdram_sel0 <= 2'd0;
	sdram_sel1 <= 2'd0;
	sdram_sel2 <= 2'd0;
	sdram_sel3 <= 2'd0;
	multiplexer_next_state <= 4'd0;
	multiplexer_next_state <= multiplexer_state;
	case (multiplexer_state)
		1'd1: begin
			sdram_en1 <= 1'd1;
			sdram_choose_req_want_writes <= 1'd1;
			sdram_choose_cmd_cmd_ready <= 1'd1;
			sdram_choose_req_cmd_ready <= 1'd1;
			sdram_sel0 <= 1'd1;
			sdram_sel1 <= 1'd0;
			sdram_sel2 <= 2'd2;
			sdram_sel3 <= 1'd0;
			if (sdram_read_available) begin
				if (((~sdram_write_available) | sdram_max_time1)) begin
					multiplexer_next_state <= 4'd8;
				end
			end
			if (sdram_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			sdram_sel0 <= 2'd3;
			sdram_cmd_ready <= 1'd1;
			if (sdram_cmd_last) begin
				multiplexer_next_state <= 1'd0;
			end
		end
		2'd3: begin
			multiplexer_next_state <= 3'd4;
		end
		3'd4: begin
			multiplexer_next_state <= 3'd5;
		end
		3'd5: begin
			multiplexer_next_state <= 3'd6;
		end
		3'd6: begin
			multiplexer_next_state <= 3'd7;
		end
		3'd7: begin
			multiplexer_next_state <= 1'd1;
		end
		4'd8: begin
			multiplexer_next_state <= 4'd9;
		end
		4'd9: begin
			multiplexer_next_state <= 4'd10;
		end
		4'd10: begin
			multiplexer_next_state <= 4'd11;
		end
		4'd11: begin
			multiplexer_next_state <= 4'd12;
		end
		4'd12: begin
			multiplexer_next_state <= 4'd13;
		end
		4'd13: begin
			multiplexer_next_state <= 4'd14;
		end
		4'd14: begin
			multiplexer_next_state <= 1'd0;
		end
		default: begin
			sdram_en0 <= 1'd1;
			sdram_choose_req_want_reads <= 1'd1;
			sdram_choose_cmd_cmd_ready <= 1'd1;
			sdram_choose_req_cmd_ready <= 1'd1;
			sdram_sel0 <= 2'd2;
			sdram_sel1 <= 1'd1;
			sdram_sel2 <= 1'd0;
			sdram_sel3 <= 1'd0;
			if (sdram_write_available) begin
				if (((~sdram_read_available) | sdram_max_time0)) begin
					multiplexer_next_state <= 2'd3;
				end
			end
			if (sdram_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
	endcase
end
assign cba = port_cmd_payload_adr[9:7];
assign rca = {port_cmd_payload_adr[23:10], port_cmd_payload_adr[6:0]};
assign roundrobin0_request = {(((cba == 1'd0) & (~(((((((1'd0 | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin0_ce = ((~sdram_interface_bank0_valid) & (~sdram_interface_bank0_lock));
assign sdram_interface_bank0_adr = rhs_array_muxed12;
assign sdram_interface_bank0_we = rhs_array_muxed13;
assign sdram_interface_bank0_valid = rhs_array_muxed14;
assign roundrobin1_request = {(((cba == 1'd1) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin1_ce = ((~sdram_interface_bank1_valid) & (~sdram_interface_bank1_lock));
assign sdram_interface_bank1_adr = rhs_array_muxed15;
assign sdram_interface_bank1_we = rhs_array_muxed16;
assign sdram_interface_bank1_valid = rhs_array_muxed17;
assign roundrobin2_request = {(((cba == 2'd2) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin2_ce = ((~sdram_interface_bank2_valid) & (~sdram_interface_bank2_lock));
assign sdram_interface_bank2_adr = rhs_array_muxed18;
assign sdram_interface_bank2_we = rhs_array_muxed19;
assign sdram_interface_bank2_valid = rhs_array_muxed20;
assign roundrobin3_request = {(((cba == 2'd3) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin3_ce = ((~sdram_interface_bank3_valid) & (~sdram_interface_bank3_lock));
assign sdram_interface_bank3_adr = rhs_array_muxed21;
assign sdram_interface_bank3_we = rhs_array_muxed22;
assign sdram_interface_bank3_valid = rhs_array_muxed23;
assign roundrobin4_request = {(((cba == 3'd4) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin4_ce = ((~sdram_interface_bank4_valid) & (~sdram_interface_bank4_lock));
assign sdram_interface_bank4_adr = rhs_array_muxed24;
assign sdram_interface_bank4_we = rhs_array_muxed25;
assign sdram_interface_bank4_valid = rhs_array_muxed26;
assign roundrobin5_request = {(((cba == 3'd5) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin5_ce = ((~sdram_interface_bank5_valid) & (~sdram_interface_bank5_lock));
assign sdram_interface_bank5_adr = rhs_array_muxed27;
assign sdram_interface_bank5_we = rhs_array_muxed28;
assign sdram_interface_bank5_valid = rhs_array_muxed29;
assign roundrobin6_request = {(((cba == 3'd6) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin6_ce = ((~sdram_interface_bank6_valid) & (~sdram_interface_bank6_lock));
assign sdram_interface_bank6_adr = rhs_array_muxed30;
assign sdram_interface_bank6_we = rhs_array_muxed31;
assign sdram_interface_bank6_valid = rhs_array_muxed32;
assign roundrobin7_request = {(((cba == 3'd7) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin7_ce = ((~sdram_interface_bank7_valid) & (~sdram_interface_bank7_lock));
assign sdram_interface_bank7_adr = rhs_array_muxed33;
assign sdram_interface_bank7_we = rhs_array_muxed34;
assign sdram_interface_bank7_valid = rhs_array_muxed35;
assign port_cmd_ready = ((((((((1'd0 | (((roundrobin0_grant == 1'd0) & ((cba == 1'd0) & (~(((((((1'd0 | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & sdram_interface_bank0_ready)) | (((roundrobin1_grant == 1'd0) & ((cba == 1'd1) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & sdram_interface_bank1_ready)) | (((roundrobin2_grant == 1'd0) & ((cba == 2'd2) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & sdram_interface_bank2_ready)) | (((roundrobin3_grant == 1'd0) & ((cba == 2'd3) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & sdram_interface_bank3_ready)) | (((roundrobin4_grant == 1'd0) & ((cba == 3'd4) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & sdram_interface_bank4_ready)) | (((roundrobin5_grant == 1'd0) & ((cba == 3'd5) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & sdram_interface_bank5_ready)) | (((roundrobin6_grant == 1'd0) & ((cba == 3'd6) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & sdram_interface_bank6_ready)) | (((roundrobin7_grant == 1'd0) & ((cba == 3'd7) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0)))))) & sdram_interface_bank7_ready));
assign port_wdata_ready = new_master_wdata_ready2;
assign port_rdata_valid = new_master_rdata_valid6;
always @(*) begin
	sdram_interface_wdata <= 128'd0;
	sdram_interface_wdata_we <= 16'd0;
	case ({new_master_wdata_ready2})
		1'd1: begin
			sdram_interface_wdata <= port_wdata_payload_data;
			sdram_interface_wdata_we <= port_wdata_payload_we;
		end
		default: begin
			sdram_interface_wdata <= 1'd0;
			sdram_interface_wdata_we <= 1'd0;
		end
	endcase
end
assign port_rdata_payload_data = sdram_interface_rdata;
assign roundrobin0_grant = 1'd0;
assign roundrobin1_grant = 1'd0;
assign roundrobin2_grant = 1'd0;
assign roundrobin3_grant = 1'd0;
assign roundrobin4_grant = 1'd0;
assign roundrobin5_grant = 1'd0;
assign roundrobin6_grant = 1'd0;
assign roundrobin7_grant = 1'd0;
assign data_port_adr = interface0_wb_sdram_adr[10:2];
always @(*) begin
	data_port_we <= 16'd0;
	data_port_dat_w <= 128'd0;
	if (write_from_slave) begin
		data_port_dat_w <= interface_dat_r;
		data_port_we <= {16{1'd1}};
	end else begin
		data_port_dat_w <= {4{interface0_wb_sdram_dat_w}};
		if ((((interface0_wb_sdram_cyc & interface0_wb_sdram_stb) & interface0_wb_sdram_we) & interface0_wb_sdram_ack)) begin
			data_port_we <= {({4{(interface0_wb_sdram_adr[1:0] == 1'd0)}} & interface0_wb_sdram_sel), ({4{(interface0_wb_sdram_adr[1:0] == 1'd1)}} & interface0_wb_sdram_sel), ({4{(interface0_wb_sdram_adr[1:0] == 2'd2)}} & interface0_wb_sdram_sel), ({4{(interface0_wb_sdram_adr[1:0] == 2'd3)}} & interface0_wb_sdram_sel)};
		end
	end
end
assign interface_dat_w = data_port_dat_r;
assign interface_sel = 16'd65535;
always @(*) begin
	interface0_wb_sdram_dat_r <= 32'd0;
	case (adr_offset_r)
		1'd0: begin
			interface0_wb_sdram_dat_r <= data_port_dat_r[127:96];
		end
		1'd1: begin
			interface0_wb_sdram_dat_r <= data_port_dat_r[95:64];
		end
		2'd2: begin
			interface0_wb_sdram_dat_r <= data_port_dat_r[63:32];
		end
		default: begin
			interface0_wb_sdram_dat_r <= data_port_dat_r[31:0];
		end
	endcase
end
assign {tag_do_dirty, tag_do_tag} = tag_port_dat_r;
assign tag_port_dat_w = {tag_di_dirty, tag_di_tag};
assign tag_port_adr = interface0_wb_sdram_adr[10:2];
assign tag_di_tag = interface0_wb_sdram_adr[29:11];
assign interface_adr = {tag_do_tag, interface0_wb_sdram_adr[10:2]};
always @(*) begin
	word_clr <= 1'd0;
	fullmemorywe_next_state <= 3'd0;
	word_inc <= 1'd0;
	write_from_slave <= 1'd0;
	interface_cyc <= 1'd0;
	interface_stb <= 1'd0;
	tag_port_we <= 1'd0;
	interface0_wb_sdram_ack <= 1'd0;
	interface_we <= 1'd0;
	tag_di_dirty <= 1'd0;
	fullmemorywe_next_state <= fullmemorywe_state;
	case (fullmemorywe_state)
		1'd1: begin
			word_clr <= 1'd1;
			if ((tag_do_tag == interface0_wb_sdram_adr[29:11])) begin
				interface0_wb_sdram_ack <= 1'd1;
				if (interface0_wb_sdram_we) begin
					tag_di_dirty <= 1'd1;
					tag_port_we <= 1'd1;
				end
				fullmemorywe_next_state <= 1'd0;
			end else begin
				if (tag_do_dirty) begin
					fullmemorywe_next_state <= 2'd2;
				end else begin
					fullmemorywe_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			interface_stb <= 1'd1;
			interface_cyc <= 1'd1;
			interface_we <= 1'd1;
			if (interface_ack) begin
				word_inc <= 1'd1;
				if (1'd1) begin
					fullmemorywe_next_state <= 2'd3;
				end
			end
		end
		2'd3: begin
			tag_port_we <= 1'd1;
			word_clr <= 1'd1;
			fullmemorywe_next_state <= 3'd4;
		end
		3'd4: begin
			interface_stb <= 1'd1;
			interface_cyc <= 1'd1;
			interface_we <= 1'd0;
			if (interface_ack) begin
				write_from_slave <= 1'd1;
				word_inc <= 1'd1;
				if (1'd1) begin
					fullmemorywe_next_state <= 1'd1;
				end else begin
					fullmemorywe_next_state <= 3'd4;
				end
			end
		end
		default: begin
			if ((interface0_wb_sdram_cyc & interface0_wb_sdram_stb)) begin
				fullmemorywe_next_state <= 1'd1;
			end
		end
	endcase
end
assign port_cmd_payload_adr = interface_adr;
assign port_wdata_payload_we = interface_sel;
assign port_wdata_payload_data = interface_dat_w;
assign interface_dat_r = port_rdata_payload_data;
always @(*) begin
	port_cmd_valid <= 1'd0;
	interface_ack <= 1'd0;
	port_cmd_payload_we <= 1'd0;
	port_rdata_ready <= 1'd0;
	litedramwishbonebridge_next_state <= 2'd0;
	port_wdata_valid <= 1'd0;
	litedramwishbonebridge_next_state <= litedramwishbonebridge_state;
	case (litedramwishbonebridge_state)
		1'd1: begin
			port_cmd_valid <= 1'd1;
			port_cmd_payload_we <= interface_we;
			if (port_cmd_ready) begin
				if (interface_we) begin
					litedramwishbonebridge_next_state <= 2'd2;
				end else begin
					litedramwishbonebridge_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			port_wdata_valid <= 1'd1;
			if (port_wdata_ready) begin
				interface_ack <= 1'd1;
				litedramwishbonebridge_next_state <= 1'd0;
			end
		end
		2'd3: begin
			port_rdata_ready <= 1'd1;
			if (port_rdata_valid) begin
				interface_ack <= 1'd1;
				litedramwishbonebridge_next_state <= 1'd0;
			end
		end
		default: begin
			if ((interface_cyc & interface_stb)) begin
				litedramwishbonebridge_next_state <= 1'd1;
			end
		end
	endcase
end
assign interface0_wb_sdram_adr = rhs_array_muxed36;
assign interface0_wb_sdram_dat_w = rhs_array_muxed37;
assign interface0_wb_sdram_sel = rhs_array_muxed38;
assign interface0_wb_sdram_cyc = rhs_array_muxed39;
assign interface0_wb_sdram_stb = rhs_array_muxed40;
assign interface0_wb_sdram_we = rhs_array_muxed41;
assign interface0_wb_sdram_cti = rhs_array_muxed42;
assign interface0_wb_sdram_bte = rhs_array_muxed43;
assign interface1_wb_sdram_dat_r = interface0_wb_sdram_dat_r;
assign interface1_wb_sdram_ack = (interface0_wb_sdram_ack & (wb_sdram_con_grant == 1'd0));
assign interface1_wb_sdram_err = (interface0_wb_sdram_err & (wb_sdram_con_grant == 1'd0));
assign wb_sdram_con_request = {interface1_wb_sdram_cyc};
assign wb_sdram_con_grant = 1'd0;
assign basesoc_shared_adr = rhs_array_muxed44;
assign basesoc_shared_dat_w = rhs_array_muxed45;
assign basesoc_shared_sel = rhs_array_muxed46;
assign basesoc_shared_cyc = rhs_array_muxed47;
assign basesoc_shared_stb = rhs_array_muxed48;
assign basesoc_shared_we = rhs_array_muxed49;
assign basesoc_shared_cti = rhs_array_muxed50;
assign basesoc_shared_bte = rhs_array_muxed51;
assign basesoc_ibus_dat_r = basesoc_shared_dat_r;
assign basesoc_dbus_dat_r = basesoc_shared_dat_r;
assign basesoc_ibus_ack = (basesoc_shared_ack & (basesoc_grant == 1'd0));
assign basesoc_dbus_ack = (basesoc_shared_ack & (basesoc_grant == 1'd1));
assign basesoc_ibus_err = (basesoc_shared_err & (basesoc_grant == 1'd0));
assign basesoc_dbus_err = (basesoc_shared_err & (basesoc_grant == 1'd1));
assign basesoc_request = {basesoc_dbus_cyc, basesoc_ibus_cyc};
always @(*) begin
	basesoc_slave_sel <= 5'd0;
	basesoc_slave_sel[0] <= (basesoc_shared_adr[28:26] == 1'd0);
	basesoc_slave_sel[1] <= (basesoc_shared_adr[28:26] == 1'd1);
	basesoc_slave_sel[2] <= (basesoc_shared_adr[28:26] == 3'd6);
	basesoc_slave_sel[3] <= (basesoc_shared_adr[28:26] == 2'd2);
	basesoc_slave_sel[4] <= (basesoc_shared_adr[28:26] == 3'd4);
end
assign basesoc_rom_bus_adr = basesoc_shared_adr;
assign basesoc_rom_bus_dat_w = basesoc_shared_dat_w;
assign basesoc_rom_bus_sel = basesoc_shared_sel;
assign basesoc_rom_bus_stb = basesoc_shared_stb;
assign basesoc_rom_bus_we = basesoc_shared_we;
assign basesoc_rom_bus_cti = basesoc_shared_cti;
assign basesoc_rom_bus_bte = basesoc_shared_bte;
assign basesoc_sram_bus_adr0 = basesoc_shared_adr;
assign basesoc_sram_bus_dat_w0 = basesoc_shared_dat_w;
assign basesoc_sram_bus_sel = basesoc_shared_sel;
assign basesoc_sram_bus_stb = basesoc_shared_stb;
assign basesoc_sram_bus_we0 = basesoc_shared_we;
assign basesoc_sram_bus_cti = basesoc_shared_cti;
assign basesoc_sram_bus_bte = basesoc_shared_bte;
assign basesoc_bus_wishbone_adr = basesoc_shared_adr;
assign basesoc_bus_wishbone_dat_w = basesoc_shared_dat_w;
assign basesoc_bus_wishbone_sel = basesoc_shared_sel;
assign basesoc_bus_wishbone_stb = basesoc_shared_stb;
assign basesoc_bus_wishbone_we = basesoc_shared_we;
assign basesoc_bus_wishbone_cti = basesoc_shared_cti;
assign basesoc_bus_wishbone_bte = basesoc_shared_bte;
assign bus_adr = basesoc_shared_adr;
assign bus_dat_w = basesoc_shared_dat_w;
assign bus_sel = basesoc_shared_sel;
assign bus_stb = basesoc_shared_stb;
assign bus_we = basesoc_shared_we;
assign bus_cti = basesoc_shared_cti;
assign bus_bte = basesoc_shared_bte;
assign interface1_wb_sdram_adr = basesoc_shared_adr;
assign interface1_wb_sdram_dat_w = basesoc_shared_dat_w;
assign interface1_wb_sdram_sel = basesoc_shared_sel;
assign interface1_wb_sdram_stb = basesoc_shared_stb;
assign interface1_wb_sdram_we = basesoc_shared_we;
assign interface1_wb_sdram_cti = basesoc_shared_cti;
assign interface1_wb_sdram_bte = basesoc_shared_bte;
assign basesoc_rom_bus_cyc = (basesoc_shared_cyc & basesoc_slave_sel[0]);
assign basesoc_sram_bus_cyc = (basesoc_shared_cyc & basesoc_slave_sel[1]);
assign basesoc_bus_wishbone_cyc = (basesoc_shared_cyc & basesoc_slave_sel[2]);
assign bus_cyc = (basesoc_shared_cyc & basesoc_slave_sel[3]);
assign interface1_wb_sdram_cyc = (basesoc_shared_cyc & basesoc_slave_sel[4]);
assign basesoc_shared_ack = ((((basesoc_rom_bus_ack | basesoc_sram_bus_ack) | basesoc_bus_wishbone_ack) | bus_ack) | interface1_wb_sdram_ack);
assign basesoc_shared_err = ((((basesoc_rom_bus_err | basesoc_sram_bus_err) | basesoc_bus_wishbone_err) | bus_err) | interface1_wb_sdram_err);
assign basesoc_shared_dat_r = ((((({32{basesoc_slave_sel_r[0]}} & basesoc_rom_bus_dat_r) | ({32{basesoc_slave_sel_r[1]}} & basesoc_sram_bus_dat_r0)) | ({32{basesoc_slave_sel_r[2]}} & basesoc_bus_wishbone_dat_r)) | ({32{basesoc_slave_sel_r[3]}} & bus_dat_r)) | ({32{basesoc_slave_sel_r[4]}} & interface1_wb_sdram_dat_r));
assign basesoc_csrbank0_sel = (basesoc_interface0_bank_bus_adr[13:9] == 4'd11);
assign basesoc_csrbank0_dly_sel0_r = basesoc_interface0_bank_bus_dat_w[1:0];
assign basesoc_csrbank0_dly_sel0_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[1:0] == 1'd0));
assign rdly_dq_rst_r = basesoc_interface0_bank_bus_dat_w[0];
assign rdly_dq_rst_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[1:0] == 1'd1));
assign rdly_dq_inc_r = basesoc_interface0_bank_bus_dat_w[0];
assign rdly_dq_inc_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[1:0] == 2'd2));
assign rdly_dq_bitslip_r = basesoc_interface0_bank_bus_dat_w[0];
assign rdly_dq_bitslip_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[1:0] == 2'd3));
assign storage = storage_full[1:0];
assign basesoc_csrbank0_dly_sel0_w = storage_full[1:0];
assign basesoc_sel = (basesoc_sram_bus_adr1[13:9] == 2'd3);
always @(*) begin
	basesoc_sram_bus_dat_r1 <= 8'd0;
	if (basesoc_sel_r) begin
		basesoc_sram_bus_dat_r1 <= basesoc_dat_r;
	end
end
assign basesoc_adr = basesoc_sram_bus_adr1[2:0];
assign basesoc_csrbank1_sel = (basesoc_interface1_bank_bus_adr[13:9] == 4'd12);
assign basesoc_csrbank1_dna_id7_r = basesoc_interface1_bank_bus_dat_w[0];
assign basesoc_csrbank1_dna_id7_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 1'd0));
assign basesoc_csrbank1_dna_id6_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dna_id6_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 1'd1));
assign basesoc_csrbank1_dna_id5_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dna_id5_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 2'd2));
assign basesoc_csrbank1_dna_id4_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dna_id4_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 2'd3));
assign basesoc_csrbank1_dna_id3_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dna_id3_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 3'd4));
assign basesoc_csrbank1_dna_id2_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dna_id2_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 3'd5));
assign basesoc_csrbank1_dna_id1_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dna_id1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 3'd6));
assign basesoc_csrbank1_dna_id0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_dna_id0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 3'd7));
assign basesoc_csrbank1_git_commit19_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit19_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd8));
assign basesoc_csrbank1_git_commit18_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit18_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd9));
assign basesoc_csrbank1_git_commit17_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit17_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd10));
assign basesoc_csrbank1_git_commit16_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit16_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd11));
assign basesoc_csrbank1_git_commit15_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit15_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd12));
assign basesoc_csrbank1_git_commit14_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit14_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd13));
assign basesoc_csrbank1_git_commit13_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit13_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd14));
assign basesoc_csrbank1_git_commit12_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit12_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 4'd15));
assign basesoc_csrbank1_git_commit11_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit11_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd16));
assign basesoc_csrbank1_git_commit10_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit10_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd17));
assign basesoc_csrbank1_git_commit9_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit9_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd18));
assign basesoc_csrbank1_git_commit8_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit8_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd19));
assign basesoc_csrbank1_git_commit7_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit7_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd20));
assign basesoc_csrbank1_git_commit6_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit6_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd21));
assign basesoc_csrbank1_git_commit5_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit5_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd22));
assign basesoc_csrbank1_git_commit4_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit4_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd23));
assign basesoc_csrbank1_git_commit3_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit3_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd24));
assign basesoc_csrbank1_git_commit2_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit2_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd25));
assign basesoc_csrbank1_git_commit1_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd26));
assign basesoc_csrbank1_git_commit0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_git_commit0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd27));
assign basesoc_csrbank1_platform_platform7_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_platform7_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd28));
assign basesoc_csrbank1_platform_platform6_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_platform6_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd29));
assign basesoc_csrbank1_platform_platform5_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_platform5_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd30));
assign basesoc_csrbank1_platform_platform4_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_platform4_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 5'd31));
assign basesoc_csrbank1_platform_platform3_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_platform3_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd32));
assign basesoc_csrbank1_platform_platform2_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_platform2_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd33));
assign basesoc_csrbank1_platform_platform1_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_platform1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd34));
assign basesoc_csrbank1_platform_platform0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_platform0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd35));
assign basesoc_csrbank1_platform_target7_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_target7_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd36));
assign basesoc_csrbank1_platform_target6_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_target6_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd37));
assign basesoc_csrbank1_platform_target5_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_target5_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd38));
assign basesoc_csrbank1_platform_target4_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_target4_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd39));
assign basesoc_csrbank1_platform_target3_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_target3_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd40));
assign basesoc_csrbank1_platform_target2_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_target2_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd41));
assign basesoc_csrbank1_platform_target1_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_target1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd42));
assign basesoc_csrbank1_platform_target0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_platform_target0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd43));
assign basesoc_csrbank1_xadc_temperature1_r = basesoc_interface1_bank_bus_dat_w[3:0];
assign basesoc_csrbank1_xadc_temperature1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd44));
assign basesoc_csrbank1_xadc_temperature0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_xadc_temperature0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd45));
assign basesoc_csrbank1_xadc_vccint1_r = basesoc_interface1_bank_bus_dat_w[3:0];
assign basesoc_csrbank1_xadc_vccint1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd46));
assign basesoc_csrbank1_xadc_vccint0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_xadc_vccint0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd47));
assign basesoc_csrbank1_xadc_vccaux1_r = basesoc_interface1_bank_bus_dat_w[3:0];
assign basesoc_csrbank1_xadc_vccaux1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd48));
assign basesoc_csrbank1_xadc_vccaux0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_xadc_vccaux0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd49));
assign basesoc_csrbank1_xadc_vccbram1_r = basesoc_interface1_bank_bus_dat_w[3:0];
assign basesoc_csrbank1_xadc_vccbram1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd50));
assign basesoc_csrbank1_xadc_vccbram0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_xadc_vccbram0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[5:0] == 6'd51));
assign basesoc_csrbank1_dna_id7_w = dna_status[56];
assign basesoc_csrbank1_dna_id6_w = dna_status[55:48];
assign basesoc_csrbank1_dna_id5_w = dna_status[47:40];
assign basesoc_csrbank1_dna_id4_w = dna_status[39:32];
assign basesoc_csrbank1_dna_id3_w = dna_status[31:24];
assign basesoc_csrbank1_dna_id2_w = dna_status[23:16];
assign basesoc_csrbank1_dna_id1_w = dna_status[15:8];
assign basesoc_csrbank1_dna_id0_w = dna_status[7:0];
assign basesoc_csrbank1_git_commit19_w = git_status[159:152];
assign basesoc_csrbank1_git_commit18_w = git_status[151:144];
assign basesoc_csrbank1_git_commit17_w = git_status[143:136];
assign basesoc_csrbank1_git_commit16_w = git_status[135:128];
assign basesoc_csrbank1_git_commit15_w = git_status[127:120];
assign basesoc_csrbank1_git_commit14_w = git_status[119:112];
assign basesoc_csrbank1_git_commit13_w = git_status[111:104];
assign basesoc_csrbank1_git_commit12_w = git_status[103:96];
assign basesoc_csrbank1_git_commit11_w = git_status[95:88];
assign basesoc_csrbank1_git_commit10_w = git_status[87:80];
assign basesoc_csrbank1_git_commit9_w = git_status[79:72];
assign basesoc_csrbank1_git_commit8_w = git_status[71:64];
assign basesoc_csrbank1_git_commit7_w = git_status[63:56];
assign basesoc_csrbank1_git_commit6_w = git_status[55:48];
assign basesoc_csrbank1_git_commit5_w = git_status[47:40];
assign basesoc_csrbank1_git_commit4_w = git_status[39:32];
assign basesoc_csrbank1_git_commit3_w = git_status[31:24];
assign basesoc_csrbank1_git_commit2_w = git_status[23:16];
assign basesoc_csrbank1_git_commit1_w = git_status[15:8];
assign basesoc_csrbank1_git_commit0_w = git_status[7:0];
assign basesoc_csrbank1_platform_platform7_w = platform_status[63:56];
assign basesoc_csrbank1_platform_platform6_w = platform_status[55:48];
assign basesoc_csrbank1_platform_platform5_w = platform_status[47:40];
assign basesoc_csrbank1_platform_platform4_w = platform_status[39:32];
assign basesoc_csrbank1_platform_platform3_w = platform_status[31:24];
assign basesoc_csrbank1_platform_platform2_w = platform_status[23:16];
assign basesoc_csrbank1_platform_platform1_w = platform_status[15:8];
assign basesoc_csrbank1_platform_platform0_w = platform_status[7:0];
assign basesoc_csrbank1_platform_target7_w = target_status[63:56];
assign basesoc_csrbank1_platform_target6_w = target_status[55:48];
assign basesoc_csrbank1_platform_target5_w = target_status[47:40];
assign basesoc_csrbank1_platform_target4_w = target_status[39:32];
assign basesoc_csrbank1_platform_target3_w = target_status[31:24];
assign basesoc_csrbank1_platform_target2_w = target_status[23:16];
assign basesoc_csrbank1_platform_target1_w = target_status[15:8];
assign basesoc_csrbank1_platform_target0_w = target_status[7:0];
assign basesoc_csrbank1_xadc_temperature1_w = temperature_status[11:8];
assign basesoc_csrbank1_xadc_temperature0_w = temperature_status[7:0];
assign basesoc_csrbank1_xadc_vccint1_w = vccint_status[11:8];
assign basesoc_csrbank1_xadc_vccint0_w = vccint_status[7:0];
assign basesoc_csrbank1_xadc_vccaux1_w = vccaux_status[11:8];
assign basesoc_csrbank1_xadc_vccaux0_w = vccaux_status[7:0];
assign basesoc_csrbank1_xadc_vccbram1_w = vccbram_status[11:8];
assign basesoc_csrbank1_xadc_vccbram0_w = vccbram_status[7:0];
assign basesoc_csrbank2_sel = (basesoc_interface2_bank_bus_adr[13:9] == 4'd8);
assign basesoc_csrbank2_dfii_control0_r = basesoc_interface2_bank_bus_dat_w[3:0];
assign basesoc_csrbank2_dfii_control0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 1'd0));
assign basesoc_csrbank2_dfii_pi0_command0_r = basesoc_interface2_bank_bus_dat_w[5:0];
assign basesoc_csrbank2_dfii_pi0_command0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 1'd1));
assign sdram_phaseinjector0_command_issue_r = basesoc_interface2_bank_bus_dat_w[0];
assign sdram_phaseinjector0_command_issue_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 2'd2));
assign basesoc_csrbank2_dfii_pi0_address1_r = basesoc_interface2_bank_bus_dat_w[5:0];
assign basesoc_csrbank2_dfii_pi0_address1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 2'd3));
assign basesoc_csrbank2_dfii_pi0_address0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi0_address0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 3'd4));
assign basesoc_csrbank2_dfii_pi0_baddress0_r = basesoc_interface2_bank_bus_dat_w[2:0];
assign basesoc_csrbank2_dfii_pi0_baddress0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 3'd5));
assign basesoc_csrbank2_dfii_pi0_wrdata3_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi0_wrdata3_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 3'd6));
assign basesoc_csrbank2_dfii_pi0_wrdata2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi0_wrdata2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 3'd7));
assign basesoc_csrbank2_dfii_pi0_wrdata1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi0_wrdata1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd8));
assign basesoc_csrbank2_dfii_pi0_wrdata0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi0_wrdata0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd9));
assign basesoc_csrbank2_dfii_pi0_rddata3_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi0_rddata3_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd10));
assign basesoc_csrbank2_dfii_pi0_rddata2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi0_rddata2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd11));
assign basesoc_csrbank2_dfii_pi0_rddata1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi0_rddata1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd12));
assign basesoc_csrbank2_dfii_pi0_rddata0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi0_rddata0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd13));
assign basesoc_csrbank2_dfii_pi1_command0_r = basesoc_interface2_bank_bus_dat_w[5:0];
assign basesoc_csrbank2_dfii_pi1_command0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd14));
assign sdram_phaseinjector1_command_issue_r = basesoc_interface2_bank_bus_dat_w[0];
assign sdram_phaseinjector1_command_issue_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd15));
assign basesoc_csrbank2_dfii_pi1_address1_r = basesoc_interface2_bank_bus_dat_w[5:0];
assign basesoc_csrbank2_dfii_pi1_address1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd16));
assign basesoc_csrbank2_dfii_pi1_address0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi1_address0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd17));
assign basesoc_csrbank2_dfii_pi1_baddress0_r = basesoc_interface2_bank_bus_dat_w[2:0];
assign basesoc_csrbank2_dfii_pi1_baddress0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd18));
assign basesoc_csrbank2_dfii_pi1_wrdata3_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi1_wrdata3_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd19));
assign basesoc_csrbank2_dfii_pi1_wrdata2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi1_wrdata2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd20));
assign basesoc_csrbank2_dfii_pi1_wrdata1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi1_wrdata1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd21));
assign basesoc_csrbank2_dfii_pi1_wrdata0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi1_wrdata0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd22));
assign basesoc_csrbank2_dfii_pi1_rddata3_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi1_rddata3_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd23));
assign basesoc_csrbank2_dfii_pi1_rddata2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi1_rddata2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd24));
assign basesoc_csrbank2_dfii_pi1_rddata1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi1_rddata1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd25));
assign basesoc_csrbank2_dfii_pi1_rddata0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi1_rddata0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd26));
assign basesoc_csrbank2_dfii_pi2_command0_r = basesoc_interface2_bank_bus_dat_w[5:0];
assign basesoc_csrbank2_dfii_pi2_command0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd27));
assign sdram_phaseinjector2_command_issue_r = basesoc_interface2_bank_bus_dat_w[0];
assign sdram_phaseinjector2_command_issue_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd28));
assign basesoc_csrbank2_dfii_pi2_address1_r = basesoc_interface2_bank_bus_dat_w[5:0];
assign basesoc_csrbank2_dfii_pi2_address1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd29));
assign basesoc_csrbank2_dfii_pi2_address0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi2_address0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd30));
assign basesoc_csrbank2_dfii_pi2_baddress0_r = basesoc_interface2_bank_bus_dat_w[2:0];
assign basesoc_csrbank2_dfii_pi2_baddress0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd31));
assign basesoc_csrbank2_dfii_pi2_wrdata3_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi2_wrdata3_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd32));
assign basesoc_csrbank2_dfii_pi2_wrdata2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi2_wrdata2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd33));
assign basesoc_csrbank2_dfii_pi2_wrdata1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi2_wrdata1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd34));
assign basesoc_csrbank2_dfii_pi2_wrdata0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi2_wrdata0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd35));
assign basesoc_csrbank2_dfii_pi2_rddata3_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi2_rddata3_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd36));
assign basesoc_csrbank2_dfii_pi2_rddata2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi2_rddata2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd37));
assign basesoc_csrbank2_dfii_pi2_rddata1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi2_rddata1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd38));
assign basesoc_csrbank2_dfii_pi2_rddata0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi2_rddata0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd39));
assign basesoc_csrbank2_dfii_pi3_command0_r = basesoc_interface2_bank_bus_dat_w[5:0];
assign basesoc_csrbank2_dfii_pi3_command0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd40));
assign sdram_phaseinjector3_command_issue_r = basesoc_interface2_bank_bus_dat_w[0];
assign sdram_phaseinjector3_command_issue_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd41));
assign basesoc_csrbank2_dfii_pi3_address1_r = basesoc_interface2_bank_bus_dat_w[5:0];
assign basesoc_csrbank2_dfii_pi3_address1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd42));
assign basesoc_csrbank2_dfii_pi3_address0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi3_address0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd43));
assign basesoc_csrbank2_dfii_pi3_baddress0_r = basesoc_interface2_bank_bus_dat_w[2:0];
assign basesoc_csrbank2_dfii_pi3_baddress0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd44));
assign basesoc_csrbank2_dfii_pi3_wrdata3_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi3_wrdata3_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd45));
assign basesoc_csrbank2_dfii_pi3_wrdata2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi3_wrdata2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd46));
assign basesoc_csrbank2_dfii_pi3_wrdata1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi3_wrdata1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd47));
assign basesoc_csrbank2_dfii_pi3_wrdata0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi3_wrdata0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd48));
assign basesoc_csrbank2_dfii_pi3_rddata3_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi3_rddata3_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd49));
assign basesoc_csrbank2_dfii_pi3_rddata2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi3_rddata2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd50));
assign basesoc_csrbank2_dfii_pi3_rddata1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi3_rddata1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd51));
assign basesoc_csrbank2_dfii_pi3_rddata0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dfii_pi3_rddata0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd52));
assign sdram_bandwidth_update_r = basesoc_interface2_bank_bus_dat_w[0];
assign sdram_bandwidth_update_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd53));
assign basesoc_csrbank2_controller_bandwidth_nreads2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_controller_bandwidth_nreads2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd54));
assign basesoc_csrbank2_controller_bandwidth_nreads1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_controller_bandwidth_nreads1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd55));
assign basesoc_csrbank2_controller_bandwidth_nreads0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_controller_bandwidth_nreads0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd56));
assign basesoc_csrbank2_controller_bandwidth_nwrites2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_controller_bandwidth_nwrites2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd57));
assign basesoc_csrbank2_controller_bandwidth_nwrites1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_controller_bandwidth_nwrites1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd58));
assign basesoc_csrbank2_controller_bandwidth_nwrites0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_controller_bandwidth_nwrites0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd59));
assign basesoc_csrbank2_controller_bandwidth_data_width_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_controller_bandwidth_data_width_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd60));
assign sdram_storage = sdram_storage_full[3:0];
assign basesoc_csrbank2_dfii_control0_w = sdram_storage_full[3:0];
assign sdram_phaseinjector0_command_storage = sdram_phaseinjector0_command_storage_full[5:0];
assign basesoc_csrbank2_dfii_pi0_command0_w = sdram_phaseinjector0_command_storage_full[5:0];
assign sdram_phaseinjector0_address_storage = sdram_phaseinjector0_address_storage_full[13:0];
assign basesoc_csrbank2_dfii_pi0_address1_w = sdram_phaseinjector0_address_storage_full[13:8];
assign basesoc_csrbank2_dfii_pi0_address0_w = sdram_phaseinjector0_address_storage_full[7:0];
assign sdram_phaseinjector0_baddress_storage = sdram_phaseinjector0_baddress_storage_full[2:0];
assign basesoc_csrbank2_dfii_pi0_baddress0_w = sdram_phaseinjector0_baddress_storage_full[2:0];
assign sdram_phaseinjector0_wrdata_storage = sdram_phaseinjector0_wrdata_storage_full[31:0];
assign basesoc_csrbank2_dfii_pi0_wrdata3_w = sdram_phaseinjector0_wrdata_storage_full[31:24];
assign basesoc_csrbank2_dfii_pi0_wrdata2_w = sdram_phaseinjector0_wrdata_storage_full[23:16];
assign basesoc_csrbank2_dfii_pi0_wrdata1_w = sdram_phaseinjector0_wrdata_storage_full[15:8];
assign basesoc_csrbank2_dfii_pi0_wrdata0_w = sdram_phaseinjector0_wrdata_storage_full[7:0];
assign basesoc_csrbank2_dfii_pi0_rddata3_w = sdram_phaseinjector0_status[31:24];
assign basesoc_csrbank2_dfii_pi0_rddata2_w = sdram_phaseinjector0_status[23:16];
assign basesoc_csrbank2_dfii_pi0_rddata1_w = sdram_phaseinjector0_status[15:8];
assign basesoc_csrbank2_dfii_pi0_rddata0_w = sdram_phaseinjector0_status[7:0];
assign sdram_phaseinjector1_command_storage = sdram_phaseinjector1_command_storage_full[5:0];
assign basesoc_csrbank2_dfii_pi1_command0_w = sdram_phaseinjector1_command_storage_full[5:0];
assign sdram_phaseinjector1_address_storage = sdram_phaseinjector1_address_storage_full[13:0];
assign basesoc_csrbank2_dfii_pi1_address1_w = sdram_phaseinjector1_address_storage_full[13:8];
assign basesoc_csrbank2_dfii_pi1_address0_w = sdram_phaseinjector1_address_storage_full[7:0];
assign sdram_phaseinjector1_baddress_storage = sdram_phaseinjector1_baddress_storage_full[2:0];
assign basesoc_csrbank2_dfii_pi1_baddress0_w = sdram_phaseinjector1_baddress_storage_full[2:0];
assign sdram_phaseinjector1_wrdata_storage = sdram_phaseinjector1_wrdata_storage_full[31:0];
assign basesoc_csrbank2_dfii_pi1_wrdata3_w = sdram_phaseinjector1_wrdata_storage_full[31:24];
assign basesoc_csrbank2_dfii_pi1_wrdata2_w = sdram_phaseinjector1_wrdata_storage_full[23:16];
assign basesoc_csrbank2_dfii_pi1_wrdata1_w = sdram_phaseinjector1_wrdata_storage_full[15:8];
assign basesoc_csrbank2_dfii_pi1_wrdata0_w = sdram_phaseinjector1_wrdata_storage_full[7:0];
assign basesoc_csrbank2_dfii_pi1_rddata3_w = sdram_phaseinjector1_status[31:24];
assign basesoc_csrbank2_dfii_pi1_rddata2_w = sdram_phaseinjector1_status[23:16];
assign basesoc_csrbank2_dfii_pi1_rddata1_w = sdram_phaseinjector1_status[15:8];
assign basesoc_csrbank2_dfii_pi1_rddata0_w = sdram_phaseinjector1_status[7:0];
assign sdram_phaseinjector2_command_storage = sdram_phaseinjector2_command_storage_full[5:0];
assign basesoc_csrbank2_dfii_pi2_command0_w = sdram_phaseinjector2_command_storage_full[5:0];
assign sdram_phaseinjector2_address_storage = sdram_phaseinjector2_address_storage_full[13:0];
assign basesoc_csrbank2_dfii_pi2_address1_w = sdram_phaseinjector2_address_storage_full[13:8];
assign basesoc_csrbank2_dfii_pi2_address0_w = sdram_phaseinjector2_address_storage_full[7:0];
assign sdram_phaseinjector2_baddress_storage = sdram_phaseinjector2_baddress_storage_full[2:0];
assign basesoc_csrbank2_dfii_pi2_baddress0_w = sdram_phaseinjector2_baddress_storage_full[2:0];
assign sdram_phaseinjector2_wrdata_storage = sdram_phaseinjector2_wrdata_storage_full[31:0];
assign basesoc_csrbank2_dfii_pi2_wrdata3_w = sdram_phaseinjector2_wrdata_storage_full[31:24];
assign basesoc_csrbank2_dfii_pi2_wrdata2_w = sdram_phaseinjector2_wrdata_storage_full[23:16];
assign basesoc_csrbank2_dfii_pi2_wrdata1_w = sdram_phaseinjector2_wrdata_storage_full[15:8];
assign basesoc_csrbank2_dfii_pi2_wrdata0_w = sdram_phaseinjector2_wrdata_storage_full[7:0];
assign basesoc_csrbank2_dfii_pi2_rddata3_w = sdram_phaseinjector2_status[31:24];
assign basesoc_csrbank2_dfii_pi2_rddata2_w = sdram_phaseinjector2_status[23:16];
assign basesoc_csrbank2_dfii_pi2_rddata1_w = sdram_phaseinjector2_status[15:8];
assign basesoc_csrbank2_dfii_pi2_rddata0_w = sdram_phaseinjector2_status[7:0];
assign sdram_phaseinjector3_command_storage = sdram_phaseinjector3_command_storage_full[5:0];
assign basesoc_csrbank2_dfii_pi3_command0_w = sdram_phaseinjector3_command_storage_full[5:0];
assign sdram_phaseinjector3_address_storage = sdram_phaseinjector3_address_storage_full[13:0];
assign basesoc_csrbank2_dfii_pi3_address1_w = sdram_phaseinjector3_address_storage_full[13:8];
assign basesoc_csrbank2_dfii_pi3_address0_w = sdram_phaseinjector3_address_storage_full[7:0];
assign sdram_phaseinjector3_baddress_storage = sdram_phaseinjector3_baddress_storage_full[2:0];
assign basesoc_csrbank2_dfii_pi3_baddress0_w = sdram_phaseinjector3_baddress_storage_full[2:0];
assign sdram_phaseinjector3_wrdata_storage = sdram_phaseinjector3_wrdata_storage_full[31:0];
assign basesoc_csrbank2_dfii_pi3_wrdata3_w = sdram_phaseinjector3_wrdata_storage_full[31:24];
assign basesoc_csrbank2_dfii_pi3_wrdata2_w = sdram_phaseinjector3_wrdata_storage_full[23:16];
assign basesoc_csrbank2_dfii_pi3_wrdata1_w = sdram_phaseinjector3_wrdata_storage_full[15:8];
assign basesoc_csrbank2_dfii_pi3_wrdata0_w = sdram_phaseinjector3_wrdata_storage_full[7:0];
assign basesoc_csrbank2_dfii_pi3_rddata3_w = sdram_phaseinjector3_status[31:24];
assign basesoc_csrbank2_dfii_pi3_rddata2_w = sdram_phaseinjector3_status[23:16];
assign basesoc_csrbank2_dfii_pi3_rddata1_w = sdram_phaseinjector3_status[15:8];
assign basesoc_csrbank2_dfii_pi3_rddata0_w = sdram_phaseinjector3_status[7:0];
assign basesoc_csrbank2_controller_bandwidth_nreads2_w = sdram_bandwidth_nreads_status[23:16];
assign basesoc_csrbank2_controller_bandwidth_nreads1_w = sdram_bandwidth_nreads_status[15:8];
assign basesoc_csrbank2_controller_bandwidth_nreads0_w = sdram_bandwidth_nreads_status[7:0];
assign basesoc_csrbank2_controller_bandwidth_nwrites2_w = sdram_bandwidth_nwrites_status[23:16];
assign basesoc_csrbank2_controller_bandwidth_nwrites1_w = sdram_bandwidth_nwrites_status[15:8];
assign basesoc_csrbank2_controller_bandwidth_nwrites0_w = sdram_bandwidth_nwrites_status[7:0];
assign basesoc_csrbank2_controller_bandwidth_data_width_w = sdram_bandwidth_data_width_status[7:0];
assign basesoc_csrbank3_sel = (basesoc_interface3_bank_bus_adr[13:9] == 4'd10);
assign basesoc_csrbank3_bitbang0_r = basesoc_interface3_bank_bus_dat_w[3:0];
assign basesoc_csrbank3_bitbang0_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[1:0] == 1'd0));
assign basesoc_csrbank3_miso_r = basesoc_interface3_bank_bus_dat_w[0];
assign basesoc_csrbank3_miso_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[1:0] == 1'd1));
assign basesoc_csrbank3_bitbang_en0_r = basesoc_interface3_bank_bus_dat_w[0];
assign basesoc_csrbank3_bitbang_en0_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[1:0] == 2'd2));
assign bitbang_storage = bitbang_storage_full[3:0];
assign basesoc_csrbank3_bitbang0_w = bitbang_storage_full[3:0];
assign basesoc_csrbank3_miso_w = miso_status;
assign bitbang_en_storage = bitbang_en_storage_full;
assign basesoc_csrbank3_bitbang_en0_w = bitbang_en_storage_full;
assign basesoc_csrbank4_sel = (basesoc_interface4_bank_bus_adr[13:9] == 3'd4);
assign basesoc_csrbank4_load3_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_load3_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 1'd0));
assign basesoc_csrbank4_load2_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_load2_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 1'd1));
assign basesoc_csrbank4_load1_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_load1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 2'd2));
assign basesoc_csrbank4_load0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_load0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 2'd3));
assign basesoc_csrbank4_reload3_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_reload3_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 3'd4));
assign basesoc_csrbank4_reload2_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_reload2_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 3'd5));
assign basesoc_csrbank4_reload1_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_reload1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 3'd6));
assign basesoc_csrbank4_reload0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_reload0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 3'd7));
assign basesoc_csrbank4_en0_r = basesoc_interface4_bank_bus_dat_w[0];
assign basesoc_csrbank4_en0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 4'd8));
assign basesoc_timer0_update_value_r = basesoc_interface4_bank_bus_dat_w[0];
assign basesoc_timer0_update_value_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 4'd9));
assign basesoc_csrbank4_value3_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_value3_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 4'd10));
assign basesoc_csrbank4_value2_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_value2_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 4'd11));
assign basesoc_csrbank4_value1_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_value1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 4'd12));
assign basesoc_csrbank4_value0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_value0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 4'd13));
assign basesoc_timer0_eventmanager_status_r = basesoc_interface4_bank_bus_dat_w[0];
assign basesoc_timer0_eventmanager_status_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 4'd14));
assign basesoc_timer0_eventmanager_pending_r = basesoc_interface4_bank_bus_dat_w[0];
assign basesoc_timer0_eventmanager_pending_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 4'd15));
assign basesoc_csrbank4_ev_enable0_r = basesoc_interface4_bank_bus_dat_w[0];
assign basesoc_csrbank4_ev_enable0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[4:0] == 5'd16));
assign basesoc_timer0_load_storage = basesoc_timer0_load_storage_full[31:0];
assign basesoc_csrbank4_load3_w = basesoc_timer0_load_storage_full[31:24];
assign basesoc_csrbank4_load2_w = basesoc_timer0_load_storage_full[23:16];
assign basesoc_csrbank4_load1_w = basesoc_timer0_load_storage_full[15:8];
assign basesoc_csrbank4_load0_w = basesoc_timer0_load_storage_full[7:0];
assign basesoc_timer0_reload_storage = basesoc_timer0_reload_storage_full[31:0];
assign basesoc_csrbank4_reload3_w = basesoc_timer0_reload_storage_full[31:24];
assign basesoc_csrbank4_reload2_w = basesoc_timer0_reload_storage_full[23:16];
assign basesoc_csrbank4_reload1_w = basesoc_timer0_reload_storage_full[15:8];
assign basesoc_csrbank4_reload0_w = basesoc_timer0_reload_storage_full[7:0];
assign basesoc_timer0_en_storage = basesoc_timer0_en_storage_full;
assign basesoc_csrbank4_en0_w = basesoc_timer0_en_storage_full;
assign basesoc_csrbank4_value3_w = basesoc_timer0_value_status[31:24];
assign basesoc_csrbank4_value2_w = basesoc_timer0_value_status[23:16];
assign basesoc_csrbank4_value1_w = basesoc_timer0_value_status[15:8];
assign basesoc_csrbank4_value0_w = basesoc_timer0_value_status[7:0];
assign basesoc_timer0_eventmanager_storage = basesoc_timer0_eventmanager_storage_full;
assign basesoc_csrbank4_ev_enable0_w = basesoc_timer0_eventmanager_storage_full;
assign basesoc_csrbank5_sel = (basesoc_interface5_bank_bus_adr[13:9] == 2'd2);
assign basesoc_uart_rxtx_r = basesoc_interface5_bank_bus_dat_w[7:0];
assign basesoc_uart_rxtx_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[2:0] == 1'd0));
assign basesoc_csrbank5_txfull_r = basesoc_interface5_bank_bus_dat_w[0];
assign basesoc_csrbank5_txfull_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[2:0] == 1'd1));
assign basesoc_csrbank5_rxempty_r = basesoc_interface5_bank_bus_dat_w[0];
assign basesoc_csrbank5_rxempty_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[2:0] == 2'd2));
assign basesoc_uart_status_r = basesoc_interface5_bank_bus_dat_w[1:0];
assign basesoc_uart_status_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[2:0] == 2'd3));
assign basesoc_uart_pending_r = basesoc_interface5_bank_bus_dat_w[1:0];
assign basesoc_uart_pending_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[2:0] == 3'd4));
assign basesoc_csrbank5_ev_enable0_r = basesoc_interface5_bank_bus_dat_w[1:0];
assign basesoc_csrbank5_ev_enable0_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[2:0] == 3'd5));
assign basesoc_csrbank5_txfull_w = basesoc_uart_txfull_status;
assign basesoc_csrbank5_rxempty_w = basesoc_uart_rxempty_status;
assign basesoc_uart_storage = basesoc_uart_storage_full[1:0];
assign basesoc_csrbank5_ev_enable0_w = basesoc_uart_storage_full[1:0];
assign basesoc_csrbank6_sel = (basesoc_interface6_bank_bus_adr[13:9] == 1'd1);
assign basesoc_csrbank6_tuning_word3_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_tuning_word3_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[1:0] == 1'd0));
assign basesoc_csrbank6_tuning_word2_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_tuning_word2_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[1:0] == 1'd1));
assign basesoc_csrbank6_tuning_word1_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_tuning_word1_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[1:0] == 2'd2));
assign basesoc_csrbank6_tuning_word0_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_tuning_word0_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[1:0] == 2'd3));
assign basesoc_uart_phy_storage = basesoc_uart_phy_storage_full[31:0];
assign basesoc_csrbank6_tuning_word3_w = basesoc_uart_phy_storage_full[31:24];
assign basesoc_csrbank6_tuning_word2_w = basesoc_uart_phy_storage_full[23:16];
assign basesoc_csrbank6_tuning_word1_w = basesoc_uart_phy_storage_full[15:8];
assign basesoc_csrbank6_tuning_word0_w = basesoc_uart_phy_storage_full[7:0];
assign basesoc_interface0_bank_bus_adr = basesoc_interface_adr;
assign basesoc_interface1_bank_bus_adr = basesoc_interface_adr;
assign basesoc_interface2_bank_bus_adr = basesoc_interface_adr;
assign basesoc_interface3_bank_bus_adr = basesoc_interface_adr;
assign basesoc_interface4_bank_bus_adr = basesoc_interface_adr;
assign basesoc_interface5_bank_bus_adr = basesoc_interface_adr;
assign basesoc_interface6_bank_bus_adr = basesoc_interface_adr;
assign basesoc_sram_bus_adr1 = basesoc_interface_adr;
assign basesoc_interface0_bank_bus_we = basesoc_interface_we;
assign basesoc_interface1_bank_bus_we = basesoc_interface_we;
assign basesoc_interface2_bank_bus_we = basesoc_interface_we;
assign basesoc_interface3_bank_bus_we = basesoc_interface_we;
assign basesoc_interface4_bank_bus_we = basesoc_interface_we;
assign basesoc_interface5_bank_bus_we = basesoc_interface_we;
assign basesoc_interface6_bank_bus_we = basesoc_interface_we;
assign basesoc_sram_bus_we1 = basesoc_interface_we;
assign basesoc_interface0_bank_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_interface1_bank_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_interface2_bank_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_interface3_bank_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_interface4_bank_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_interface5_bank_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_interface6_bank_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_sram_bus_dat_w1 = basesoc_interface_dat_w;
assign basesoc_interface_dat_r = (((((((basesoc_interface0_bank_bus_dat_r | basesoc_interface1_bank_bus_dat_r) | basesoc_interface2_bank_bus_dat_r) | basesoc_interface3_bank_bus_dat_r) | basesoc_interface4_bank_bus_dat_r) | basesoc_interface5_bank_bus_dat_r) | basesoc_interface6_bank_bus_dat_r) | basesoc_sram_bus_dat_r1);
always @(*) begin
	rhs_array_muxed0 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[0];
		end
		1'd1: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[1];
		end
		2'd2: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[2];
		end
		2'd3: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[3];
		end
		3'd4: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[4];
		end
		3'd5: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[5];
		end
		3'd6: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[6];
		end
		default: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[7];
		end
	endcase
end
always @(*) begin
	rhs_array_muxed1 <= 14'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed1 <= sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed1 <= sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed1 <= sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed1 <= sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed1 <= sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed1 <= sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed1 <= sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed1 <= sdram_bankmachine7_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed2 <= 3'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed2 <= sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed2 <= sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed2 <= sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed2 <= sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed2 <= sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed2 <= sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed2 <= sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed2 <= sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed3 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed3 <= sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed3 <= sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed3 <= sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed3 <= sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed3 <= sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed3 <= sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed3 <= sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed3 <= sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed4 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed4 <= sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed4 <= sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed4 <= sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed4 <= sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed4 <= sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed4 <= sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed4 <= sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed4 <= sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed5 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed5 <= sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed5 <= sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed5 <= sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed5 <= sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed5 <= sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed5 <= sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed5 <= sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed5 <= sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	t_array_muxed0 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed0 <= sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed0 <= sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed0 <= sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed0 <= sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed0 <= sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed0 <= sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed0 <= sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed0 <= sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	t_array_muxed1 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed1 <= sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed1 <= sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed1 <= sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed1 <= sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed1 <= sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed1 <= sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed1 <= sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed1 <= sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	t_array_muxed2 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed2 <= sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed2 <= sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed2 <= sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed2 <= sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed2 <= sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed2 <= sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed2 <= sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed2 <= sdram_bankmachine7_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed6 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[0];
		end
		1'd1: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[1];
		end
		2'd2: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[2];
		end
		2'd3: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[3];
		end
		3'd4: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[4];
		end
		3'd5: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[5];
		end
		3'd6: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[6];
		end
		default: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[7];
		end
	endcase
end
always @(*) begin
	rhs_array_muxed7 <= 14'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed7 <= sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed7 <= sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed7 <= sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed7 <= sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed7 <= sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed7 <= sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed7 <= sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed7 <= sdram_bankmachine7_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed8 <= 3'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed8 <= sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed8 <= sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed8 <= sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed8 <= sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed8 <= sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed8 <= sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed8 <= sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed8 <= sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed9 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed9 <= sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed9 <= sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed9 <= sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed9 <= sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed9 <= sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed9 <= sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed9 <= sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed9 <= sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed10 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed10 <= sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed10 <= sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed10 <= sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed10 <= sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed10 <= sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed10 <= sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed10 <= sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed10 <= sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed11 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed11 <= sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed11 <= sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed11 <= sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed11 <= sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed11 <= sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed11 <= sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed11 <= sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed11 <= sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	t_array_muxed3 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed3 <= sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed3 <= sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed3 <= sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed3 <= sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed3 <= sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed3 <= sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed3 <= sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed3 <= sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	t_array_muxed4 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed4 <= sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed4 <= sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed4 <= sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed4 <= sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed4 <= sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed4 <= sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed4 <= sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed4 <= sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	t_array_muxed5 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed5 <= sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed5 <= sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed5 <= sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed5 <= sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed5 <= sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed5 <= sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed5 <= sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed5 <= sdram_bankmachine7_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed12 <= 21'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed12 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed13 <= 1'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed13 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed14 <= 1'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed14 <= (((cba == 1'd0) & (~(((((((1'd0 | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed15 <= 21'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed15 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed16 <= 1'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed16 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed17 <= 1'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed17 <= (((cba == 1'd1) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed18 <= 21'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed18 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed19 <= 1'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed19 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed20 <= 1'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed20 <= (((cba == 2'd2) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed21 <= 21'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed21 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed22 <= 1'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed22 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed23 <= 1'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed23 <= (((cba == 2'd3) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed24 <= 21'd0;
	case (roundrobin4_grant)
		default: begin
			rhs_array_muxed24 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed25 <= 1'd0;
	case (roundrobin4_grant)
		default: begin
			rhs_array_muxed25 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed26 <= 1'd0;
	case (roundrobin4_grant)
		default: begin
			rhs_array_muxed26 <= (((cba == 3'd4) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed27 <= 21'd0;
	case (roundrobin5_grant)
		default: begin
			rhs_array_muxed27 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed28 <= 1'd0;
	case (roundrobin5_grant)
		default: begin
			rhs_array_muxed28 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed29 <= 1'd0;
	case (roundrobin5_grant)
		default: begin
			rhs_array_muxed29 <= (((cba == 3'd5) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed30 <= 21'd0;
	case (roundrobin6_grant)
		default: begin
			rhs_array_muxed30 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed31 <= 1'd0;
	case (roundrobin6_grant)
		default: begin
			rhs_array_muxed31 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed32 <= 1'd0;
	case (roundrobin6_grant)
		default: begin
			rhs_array_muxed32 <= (((cba == 3'd6) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed33 <= 21'd0;
	case (roundrobin7_grant)
		default: begin
			rhs_array_muxed33 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed34 <= 1'd0;
	case (roundrobin7_grant)
		default: begin
			rhs_array_muxed34 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed35 <= 1'd0;
	case (roundrobin7_grant)
		default: begin
			rhs_array_muxed35 <= (((cba == 3'd7) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed36 <= 30'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed36 <= interface1_wb_sdram_adr;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed37 <= 32'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed37 <= interface1_wb_sdram_dat_w;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed38 <= 4'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed38 <= interface1_wb_sdram_sel;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed39 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed39 <= interface1_wb_sdram_cyc;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed40 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed40 <= interface1_wb_sdram_stb;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed41 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed41 <= interface1_wb_sdram_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed42 <= 3'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed42 <= interface1_wb_sdram_cti;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed43 <= 2'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed43 <= interface1_wb_sdram_bte;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed44 <= 30'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed44 <= basesoc_ibus_adr;
		end
		default: begin
			rhs_array_muxed44 <= basesoc_dbus_adr;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed45 <= 32'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed45 <= basesoc_ibus_dat_w;
		end
		default: begin
			rhs_array_muxed45 <= basesoc_dbus_dat_w;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed46 <= 4'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed46 <= basesoc_ibus_sel;
		end
		default: begin
			rhs_array_muxed46 <= basesoc_dbus_sel;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed47 <= 1'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed47 <= basesoc_ibus_cyc;
		end
		default: begin
			rhs_array_muxed47 <= basesoc_dbus_cyc;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed48 <= 1'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed48 <= basesoc_ibus_stb;
		end
		default: begin
			rhs_array_muxed48 <= basesoc_dbus_stb;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed49 <= 1'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed49 <= basesoc_ibus_we;
		end
		default: begin
			rhs_array_muxed49 <= basesoc_dbus_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed50 <= 3'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed50 <= basesoc_ibus_cti;
		end
		default: begin
			rhs_array_muxed50 <= basesoc_dbus_cti;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed51 <= 2'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed51 <= basesoc_ibus_bte;
		end
		default: begin
			rhs_array_muxed51 <= basesoc_dbus_bte;
		end
	endcase
end
always @(*) begin
	array_muxed0 <= 14'd0;
	case (sdram_sel0)
		1'd0: begin
			array_muxed0 <= sdram_nop_a;
		end
		1'd1: begin
			array_muxed0 <= sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed0 <= sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed0 <= sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed1 <= 3'd0;
	case (sdram_sel0)
		1'd0: begin
			array_muxed1 <= sdram_nop_ba;
		end
		1'd1: begin
			array_muxed1 <= sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed1 <= sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed1 <= sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	array_muxed2 <= 1'd0;
	case (sdram_sel0)
		1'd0: begin
			array_muxed2 <= sdram_nop_cas;
		end
		1'd1: begin
			array_muxed2 <= sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed2 <= sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed2 <= sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	array_muxed3 <= 1'd0;
	case (sdram_sel0)
		1'd0: begin
			array_muxed3 <= sdram_nop_ras;
		end
		1'd1: begin
			array_muxed3 <= sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed3 <= sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed3 <= sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	array_muxed4 <= 1'd0;
	case (sdram_sel0)
		1'd0: begin
			array_muxed4 <= sdram_nop_we;
		end
		1'd1: begin
			array_muxed4 <= sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed4 <= sdram_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed4 <= sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	array_muxed5 <= 1'd0;
	case (sdram_sel0)
		1'd0: begin
			array_muxed5 <= 1'd0;
		end
		1'd1: begin
			array_muxed5 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed5 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed5 <= (sdram_cmd_valid & sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed6 <= 1'd0;
	case (sdram_sel0)
		1'd0: begin
			array_muxed6 <= 1'd0;
		end
		1'd1: begin
			array_muxed6 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed6 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed6 <= (sdram_cmd_valid & sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	array_muxed7 <= 14'd0;
	case (sdram_sel1)
		1'd0: begin
			array_muxed7 <= sdram_nop_a;
		end
		1'd1: begin
			array_muxed7 <= sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed7 <= sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed7 <= sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed8 <= 3'd0;
	case (sdram_sel1)
		1'd0: begin
			array_muxed8 <= sdram_nop_ba;
		end
		1'd1: begin
			array_muxed8 <= sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed8 <= sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed8 <= sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	array_muxed9 <= 1'd0;
	case (sdram_sel1)
		1'd0: begin
			array_muxed9 <= sdram_nop_cas;
		end
		1'd1: begin
			array_muxed9 <= sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed9 <= sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed9 <= sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	array_muxed10 <= 1'd0;
	case (sdram_sel1)
		1'd0: begin
			array_muxed10 <= sdram_nop_ras;
		end
		1'd1: begin
			array_muxed10 <= sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed10 <= sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed10 <= sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	array_muxed11 <= 1'd0;
	case (sdram_sel1)
		1'd0: begin
			array_muxed11 <= sdram_nop_we;
		end
		1'd1: begin
			array_muxed11 <= sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed11 <= sdram_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed11 <= sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	array_muxed12 <= 1'd0;
	case (sdram_sel1)
		1'd0: begin
			array_muxed12 <= 1'd0;
		end
		1'd1: begin
			array_muxed12 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed12 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed12 <= (sdram_cmd_valid & sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed13 <= 1'd0;
	case (sdram_sel1)
		1'd0: begin
			array_muxed13 <= 1'd0;
		end
		1'd1: begin
			array_muxed13 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed13 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed13 <= (sdram_cmd_valid & sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	array_muxed14 <= 14'd0;
	case (sdram_sel2)
		1'd0: begin
			array_muxed14 <= sdram_nop_a;
		end
		1'd1: begin
			array_muxed14 <= sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed14 <= sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed14 <= sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed15 <= 3'd0;
	case (sdram_sel2)
		1'd0: begin
			array_muxed15 <= sdram_nop_ba;
		end
		1'd1: begin
			array_muxed15 <= sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed15 <= sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed15 <= sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	array_muxed16 <= 1'd0;
	case (sdram_sel2)
		1'd0: begin
			array_muxed16 <= sdram_nop_cas;
		end
		1'd1: begin
			array_muxed16 <= sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed16 <= sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed16 <= sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	array_muxed17 <= 1'd0;
	case (sdram_sel2)
		1'd0: begin
			array_muxed17 <= sdram_nop_ras;
		end
		1'd1: begin
			array_muxed17 <= sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed17 <= sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed17 <= sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	array_muxed18 <= 1'd0;
	case (sdram_sel2)
		1'd0: begin
			array_muxed18 <= sdram_nop_we;
		end
		1'd1: begin
			array_muxed18 <= sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed18 <= sdram_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed18 <= sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	array_muxed19 <= 1'd0;
	case (sdram_sel2)
		1'd0: begin
			array_muxed19 <= 1'd0;
		end
		1'd1: begin
			array_muxed19 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed19 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed19 <= (sdram_cmd_valid & sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed20 <= 1'd0;
	case (sdram_sel2)
		1'd0: begin
			array_muxed20 <= 1'd0;
		end
		1'd1: begin
			array_muxed20 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed20 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed20 <= (sdram_cmd_valid & sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	array_muxed21 <= 14'd0;
	case (sdram_sel3)
		1'd0: begin
			array_muxed21 <= sdram_nop_a;
		end
		1'd1: begin
			array_muxed21 <= sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed21 <= sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed21 <= sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed22 <= 3'd0;
	case (sdram_sel3)
		1'd0: begin
			array_muxed22 <= sdram_nop_ba;
		end
		1'd1: begin
			array_muxed22 <= sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed22 <= sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed22 <= sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	array_muxed23 <= 1'd0;
	case (sdram_sel3)
		1'd0: begin
			array_muxed23 <= sdram_nop_cas;
		end
		1'd1: begin
			array_muxed23 <= sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed23 <= sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed23 <= sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	array_muxed24 <= 1'd0;
	case (sdram_sel3)
		1'd0: begin
			array_muxed24 <= sdram_nop_ras;
		end
		1'd1: begin
			array_muxed24 <= sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed24 <= sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed24 <= sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	array_muxed25 <= 1'd0;
	case (sdram_sel3)
		1'd0: begin
			array_muxed25 <= sdram_nop_we;
		end
		1'd1: begin
			array_muxed25 <= sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed25 <= sdram_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed25 <= sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	array_muxed26 <= 1'd0;
	case (sdram_sel3)
		1'd0: begin
			array_muxed26 <= 1'd0;
		end
		1'd1: begin
			array_muxed26 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed26 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed26 <= (sdram_cmd_valid & sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed27 <= 1'd0;
	case (sdram_sel3)
		1'd0: begin
			array_muxed27 <= 1'd0;
		end
		1'd1: begin
			array_muxed27 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed27 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed27 <= (sdram_cmd_valid & sdram_cmd_payload_is_write);
		end
	endcase
end
assign basesoc_uart_phy_rx = regs1;
assign xilinxasyncresetsynchronizerimpl0 = ((~pll_locked) | (~cpu_reset));
assign xilinxasyncresetsynchronizerimpl1 = ((~pll_locked) | (~cpu_reset));
assign xilinxasyncresetsynchronizerimpl2 = ((~pll_locked) | (~cpu_reset));

always @(posedge clk200_clk) begin
	if ((reset_counter != 1'd0)) begin
		reset_counter <= (reset_counter - 1'd1);
	end else begin
		ic_reset <= 1'd0;
	end
	if (clk200_rst) begin
		reset_counter <= 4'd15;
		ic_reset <= 1'd1;
	end
end

always @(posedge sys_clk) begin
	basesoc_rom_bus_ack <= 1'd0;
	if (((basesoc_rom_bus_cyc & basesoc_rom_bus_stb) & (~basesoc_rom_bus_ack))) begin
		basesoc_rom_bus_ack <= 1'd1;
	end
	basesoc_sram_bus_ack <= 1'd0;
	if (((basesoc_sram_bus_cyc & basesoc_sram_bus_stb) & (~basesoc_sram_bus_ack))) begin
		basesoc_sram_bus_ack <= 1'd1;
	end
	basesoc_interface_we <= 1'd0;
	basesoc_interface_dat_w <= basesoc_bus_wishbone_dat_w;
	basesoc_interface_adr <= basesoc_bus_wishbone_adr;
	basesoc_bus_wishbone_dat_r <= basesoc_interface_dat_r;
	if ((basesoc_counter == 1'd1)) begin
		basesoc_interface_we <= basesoc_bus_wishbone_we;
	end
	if ((basesoc_counter == 2'd2)) begin
		basesoc_bus_wishbone_ack <= 1'd1;
	end
	if ((basesoc_counter == 2'd3)) begin
		basesoc_bus_wishbone_ack <= 1'd0;
	end
	if ((basesoc_counter != 1'd0)) begin
		basesoc_counter <= (basesoc_counter + 1'd1);
	end else begin
		if ((basesoc_bus_wishbone_cyc & basesoc_bus_wishbone_stb)) begin
			basesoc_counter <= 1'd1;
		end
	end
	basesoc_uart_phy_sink_ready <= 1'd0;
	if (((basesoc_uart_phy_sink_valid & (~basesoc_uart_phy_tx_busy)) & (~basesoc_uart_phy_sink_ready))) begin
		basesoc_uart_phy_tx_reg <= basesoc_uart_phy_sink_payload_data;
		basesoc_uart_phy_tx_bitcount <= 1'd0;
		basesoc_uart_phy_tx_busy <= 1'd1;
		serial_tx <= 1'd0;
	end else begin
		if ((basesoc_uart_phy_uart_clk_txen & basesoc_uart_phy_tx_busy)) begin
			basesoc_uart_phy_tx_bitcount <= (basesoc_uart_phy_tx_bitcount + 1'd1);
			if ((basesoc_uart_phy_tx_bitcount == 4'd8)) begin
				serial_tx <= 1'd1;
			end else begin
				if ((basesoc_uart_phy_tx_bitcount == 4'd9)) begin
					serial_tx <= 1'd1;
					basesoc_uart_phy_tx_busy <= 1'd0;
					basesoc_uart_phy_sink_ready <= 1'd1;
				end else begin
					serial_tx <= basesoc_uart_phy_tx_reg[0];
					basesoc_uart_phy_tx_reg <= {1'd0, basesoc_uart_phy_tx_reg[7:1]};
				end
			end
		end
	end
	if (basesoc_uart_phy_tx_busy) begin
		{basesoc_uart_phy_uart_clk_txen, basesoc_uart_phy_phase_accumulator_tx} <= (basesoc_uart_phy_phase_accumulator_tx + basesoc_uart_phy_storage);
	end else begin
		{basesoc_uart_phy_uart_clk_txen, basesoc_uart_phy_phase_accumulator_tx} <= 1'd0;
	end
	basesoc_uart_phy_source_valid <= 1'd0;
	basesoc_uart_phy_rx_r <= basesoc_uart_phy_rx;
	if ((~basesoc_uart_phy_rx_busy)) begin
		if (((~basesoc_uart_phy_rx) & basesoc_uart_phy_rx_r)) begin
			basesoc_uart_phy_rx_busy <= 1'd1;
			basesoc_uart_phy_rx_bitcount <= 1'd0;
		end
	end else begin
		if (basesoc_uart_phy_uart_clk_rxen) begin
			basesoc_uart_phy_rx_bitcount <= (basesoc_uart_phy_rx_bitcount + 1'd1);
			if ((basesoc_uart_phy_rx_bitcount == 1'd0)) begin
				if (basesoc_uart_phy_rx) begin
					basesoc_uart_phy_rx_busy <= 1'd0;
				end
			end else begin
				if ((basesoc_uart_phy_rx_bitcount == 4'd9)) begin
					basesoc_uart_phy_rx_busy <= 1'd0;
					if (basesoc_uart_phy_rx) begin
						basesoc_uart_phy_source_payload_data <= basesoc_uart_phy_rx_reg;
						basesoc_uart_phy_source_valid <= 1'd1;
					end
				end else begin
					basesoc_uart_phy_rx_reg <= {basesoc_uart_phy_rx, basesoc_uart_phy_rx_reg[7:1]};
				end
			end
		end
	end
	if (basesoc_uart_phy_rx_busy) begin
		{basesoc_uart_phy_uart_clk_rxen, basesoc_uart_phy_phase_accumulator_rx} <= (basesoc_uart_phy_phase_accumulator_rx + basesoc_uart_phy_storage);
	end else begin
		{basesoc_uart_phy_uart_clk_rxen, basesoc_uart_phy_phase_accumulator_rx} <= 32'd2147483648;
	end
	if (basesoc_uart_tx_clear) begin
		basesoc_uart_tx_pending <= 1'd0;
	end
	basesoc_uart_tx_old_trigger <= basesoc_uart_tx_trigger;
	if (((~basesoc_uart_tx_trigger) & basesoc_uart_tx_old_trigger)) begin
		basesoc_uart_tx_pending <= 1'd1;
	end
	if (basesoc_uart_rx_clear) begin
		basesoc_uart_rx_pending <= 1'd0;
	end
	basesoc_uart_rx_old_trigger <= basesoc_uart_rx_trigger;
	if (((~basesoc_uart_rx_trigger) & basesoc_uart_rx_old_trigger)) begin
		basesoc_uart_rx_pending <= 1'd1;
	end
	if (((basesoc_uart_tx_fifo_syncfifo_we & basesoc_uart_tx_fifo_syncfifo_writable) & (~basesoc_uart_tx_fifo_replace))) begin
		basesoc_uart_tx_fifo_produce <= (basesoc_uart_tx_fifo_produce + 1'd1);
	end
	if (basesoc_uart_tx_fifo_do_read) begin
		basesoc_uart_tx_fifo_consume <= (basesoc_uart_tx_fifo_consume + 1'd1);
	end
	if (((basesoc_uart_tx_fifo_syncfifo_we & basesoc_uart_tx_fifo_syncfifo_writable) & (~basesoc_uart_tx_fifo_replace))) begin
		if ((~basesoc_uart_tx_fifo_do_read)) begin
			basesoc_uart_tx_fifo_level <= (basesoc_uart_tx_fifo_level + 1'd1);
		end
	end else begin
		if (basesoc_uart_tx_fifo_do_read) begin
			basesoc_uart_tx_fifo_level <= (basesoc_uart_tx_fifo_level - 1'd1);
		end
	end
	if (((basesoc_uart_rx_fifo_syncfifo_we & basesoc_uart_rx_fifo_syncfifo_writable) & (~basesoc_uart_rx_fifo_replace))) begin
		basesoc_uart_rx_fifo_produce <= (basesoc_uart_rx_fifo_produce + 1'd1);
	end
	if (basesoc_uart_rx_fifo_do_read) begin
		basesoc_uart_rx_fifo_consume <= (basesoc_uart_rx_fifo_consume + 1'd1);
	end
	if (((basesoc_uart_rx_fifo_syncfifo_we & basesoc_uart_rx_fifo_syncfifo_writable) & (~basesoc_uart_rx_fifo_replace))) begin
		if ((~basesoc_uart_rx_fifo_do_read)) begin
			basesoc_uart_rx_fifo_level <= (basesoc_uart_rx_fifo_level + 1'd1);
		end
	end else begin
		if (basesoc_uart_rx_fifo_do_read) begin
			basesoc_uart_rx_fifo_level <= (basesoc_uart_rx_fifo_level - 1'd1);
		end
	end
	if (basesoc_timer0_en_storage) begin
		if ((basesoc_timer0_value == 1'd0)) begin
			basesoc_timer0_value <= basesoc_timer0_reload_storage;
		end else begin
			basesoc_timer0_value <= (basesoc_timer0_value - 1'd1);
		end
	end else begin
		basesoc_timer0_value <= basesoc_timer0_load_storage;
	end
	if (basesoc_timer0_update_value_re) begin
		basesoc_timer0_value_status <= basesoc_timer0_value;
	end
	if (basesoc_timer0_zero_clear) begin
		basesoc_timer0_zero_pending <= 1'd0;
	end
	basesoc_timer0_zero_old_trigger <= basesoc_timer0_zero_trigger;
	if (((~basesoc_timer0_zero_trigger) & basesoc_timer0_zero_old_trigger)) begin
		basesoc_timer0_zero_pending <= 1'd1;
	end
	if ((dna_cnt < 7'd114)) begin
		dna_cnt <= (dna_cnt + 1'd1);
		if (dna_cnt[0]) begin
			dna_status <= {dna_status, dna_do};
		end
	end
	if (drdy) begin
		case (channel)
			1'd0: begin
				temperature_status <= (data >>> 3'd4);
			end
			1'd1: begin
				vccint_status <= (data >>> 3'd4);
			end
			2'd2: begin
				vccaux_status <= (data >>> 3'd4);
			end
			3'd6: begin
				vccbram_status <= (data >>> 3'd4);
			end
		endcase
	end
	if ((i == 1'd0)) begin
		clk1 <= 1'd1;
		miso <= spiflash_1x_miso;
	end
	if ((i == 1'd1)) begin
		i <= 1'd0;
		clk1 <= 1'd0;
		sr <= {sr[30:0], miso};
	end else begin
		i <= (i + 1'd1);
	end
	if ((((bus_cyc & bus_stb) & (i == 1'd1)) & (counter == 1'd0))) begin
		cs_n <= 1'd0;
		sr[31:24] <= 4'd11;
	end
	if ((counter == 5'd16)) begin
		sr[31:8] <= {bus_adr, {2{1'd0}}};
	end
	if ((counter == 7'd64)) begin
	end
	if ((counter == 8'd146)) begin
		bus_ack <= 1'd1;
		cs_n <= 1'd1;
	end
	if ((counter == 8'd147)) begin
		bus_ack <= 1'd0;
	end
	if ((counter == 8'd149)) begin
	end
	if ((counter == 8'd149)) begin
		counter <= 1'd0;
	end else begin
		if ((counter != 1'd0)) begin
			counter <= (counter + 1'd1);
		end else begin
			if (((bus_cyc & bus_stb) & (i == 1'd1))) begin
				counter <= 1'd1;
			end
		end
	end
	n_rddata_en0 <= dfi_p0_rddata_en;
	n_rddata_en1 <= n_rddata_en0;
	n_rddata_en2 <= n_rddata_en1;
	n_rddata_en3 <= n_rddata_en2;
	n_rddata_en4 <= n_rddata_en3;
	dfi_p0_rddata_valid <= n_rddata_en4;
	dfi_p1_rddata_valid <= n_rddata_en4;
	dfi_p2_rddata_valid <= n_rddata_en4;
	dfi_p3_rddata_valid <= n_rddata_en4;
	last_wrdata_en <= {last_wrdata_en[2:0], dfi_p2_wrdata_en};
	oe_dqs <= oe;
	oe_dq <= oe;
	if (sdram_inti_p0_rddata_valid) begin
		sdram_phaseinjector0_status <= sdram_inti_p0_rddata;
	end
	if (sdram_inti_p1_rddata_valid) begin
		sdram_phaseinjector1_status <= sdram_inti_p1_rddata;
	end
	if (sdram_inti_p2_rddata_valid) begin
		sdram_phaseinjector2_status <= sdram_inti_p2_rddata;
	end
	if (sdram_inti_p3_rddata_valid) begin
		sdram_phaseinjector3_status <= sdram_inti_p3_rddata;
	end
	sdram_cmd_payload_a <= 11'd1024;
	sdram_cmd_payload_ba <= 1'd0;
	sdram_cmd_payload_cas <= 1'd0;
	sdram_cmd_payload_ras <= 1'd0;
	sdram_cmd_payload_we <= 1'd0;
	sdram_seq_done <= 1'd0;
	if ((sdram_counter == 1'd1)) begin
		sdram_cmd_payload_ras <= 1'd1;
		sdram_cmd_payload_we <= 1'd1;
	end
	if ((sdram_counter == 3'd4)) begin
		sdram_cmd_payload_cas <= 1'd1;
		sdram_cmd_payload_ras <= 1'd1;
	end
	if ((sdram_counter == 5'd21)) begin
		sdram_seq_done <= 1'd1;
	end
	if ((sdram_counter == 5'd21)) begin
		sdram_counter <= 1'd0;
	end else begin
		if ((sdram_counter != 1'd0)) begin
			sdram_counter <= (sdram_counter + 1'd1);
		end else begin
			if (sdram_seq_start) begin
				sdram_counter <= 1'd1;
			end
		end
	end
	if (sdram_wait) begin
		if ((~sdram_done)) begin
			sdram_count <= (sdram_count - 1'd1);
		end
	end else begin
		sdram_count <= 10'd782;
	end
	refresher_state <= refresher_next_state;
	if (sdram_bankmachine0_track_close) begin
		sdram_bankmachine0_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine0_track_open) begin
			sdram_bankmachine0_has_openrow <= 1'd1;
			sdram_bankmachine0_openrow <= sdram_bankmachine0_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine0_syncfifo0_we & sdram_bankmachine0_syncfifo0_writable) & (~sdram_bankmachine0_replace))) begin
		sdram_bankmachine0_produce <= (sdram_bankmachine0_produce + 1'd1);
	end
	if (sdram_bankmachine0_do_read) begin
		sdram_bankmachine0_consume <= (sdram_bankmachine0_consume + 1'd1);
	end
	if (((sdram_bankmachine0_syncfifo0_we & sdram_bankmachine0_syncfifo0_writable) & (~sdram_bankmachine0_replace))) begin
		if ((~sdram_bankmachine0_do_read)) begin
			sdram_bankmachine0_level <= (sdram_bankmachine0_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine0_do_read) begin
			sdram_bankmachine0_level <= (sdram_bankmachine0_level - 1'd1);
		end
	end
	if (sdram_bankmachine0_wait) begin
		if ((~sdram_bankmachine0_done)) begin
			sdram_bankmachine0_count <= (sdram_bankmachine0_count - 1'd1);
		end
	end else begin
		sdram_bankmachine0_count <= 3'd5;
	end
	bankmachine0_state <= bankmachine0_next_state;
	if (sdram_bankmachine1_track_close) begin
		sdram_bankmachine1_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine1_track_open) begin
			sdram_bankmachine1_has_openrow <= 1'd1;
			sdram_bankmachine1_openrow <= sdram_bankmachine1_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine1_syncfifo1_we & sdram_bankmachine1_syncfifo1_writable) & (~sdram_bankmachine1_replace))) begin
		sdram_bankmachine1_produce <= (sdram_bankmachine1_produce + 1'd1);
	end
	if (sdram_bankmachine1_do_read) begin
		sdram_bankmachine1_consume <= (sdram_bankmachine1_consume + 1'd1);
	end
	if (((sdram_bankmachine1_syncfifo1_we & sdram_bankmachine1_syncfifo1_writable) & (~sdram_bankmachine1_replace))) begin
		if ((~sdram_bankmachine1_do_read)) begin
			sdram_bankmachine1_level <= (sdram_bankmachine1_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine1_do_read) begin
			sdram_bankmachine1_level <= (sdram_bankmachine1_level - 1'd1);
		end
	end
	if (sdram_bankmachine1_wait) begin
		if ((~sdram_bankmachine1_done)) begin
			sdram_bankmachine1_count <= (sdram_bankmachine1_count - 1'd1);
		end
	end else begin
		sdram_bankmachine1_count <= 3'd5;
	end
	bankmachine1_state <= bankmachine1_next_state;
	if (sdram_bankmachine2_track_close) begin
		sdram_bankmachine2_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine2_track_open) begin
			sdram_bankmachine2_has_openrow <= 1'd1;
			sdram_bankmachine2_openrow <= sdram_bankmachine2_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine2_syncfifo2_we & sdram_bankmachine2_syncfifo2_writable) & (~sdram_bankmachine2_replace))) begin
		sdram_bankmachine2_produce <= (sdram_bankmachine2_produce + 1'd1);
	end
	if (sdram_bankmachine2_do_read) begin
		sdram_bankmachine2_consume <= (sdram_bankmachine2_consume + 1'd1);
	end
	if (((sdram_bankmachine2_syncfifo2_we & sdram_bankmachine2_syncfifo2_writable) & (~sdram_bankmachine2_replace))) begin
		if ((~sdram_bankmachine2_do_read)) begin
			sdram_bankmachine2_level <= (sdram_bankmachine2_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine2_do_read) begin
			sdram_bankmachine2_level <= (sdram_bankmachine2_level - 1'd1);
		end
	end
	if (sdram_bankmachine2_wait) begin
		if ((~sdram_bankmachine2_done)) begin
			sdram_bankmachine2_count <= (sdram_bankmachine2_count - 1'd1);
		end
	end else begin
		sdram_bankmachine2_count <= 3'd5;
	end
	bankmachine2_state <= bankmachine2_next_state;
	if (sdram_bankmachine3_track_close) begin
		sdram_bankmachine3_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine3_track_open) begin
			sdram_bankmachine3_has_openrow <= 1'd1;
			sdram_bankmachine3_openrow <= sdram_bankmachine3_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine3_syncfifo3_we & sdram_bankmachine3_syncfifo3_writable) & (~sdram_bankmachine3_replace))) begin
		sdram_bankmachine3_produce <= (sdram_bankmachine3_produce + 1'd1);
	end
	if (sdram_bankmachine3_do_read) begin
		sdram_bankmachine3_consume <= (sdram_bankmachine3_consume + 1'd1);
	end
	if (((sdram_bankmachine3_syncfifo3_we & sdram_bankmachine3_syncfifo3_writable) & (~sdram_bankmachine3_replace))) begin
		if ((~sdram_bankmachine3_do_read)) begin
			sdram_bankmachine3_level <= (sdram_bankmachine3_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine3_do_read) begin
			sdram_bankmachine3_level <= (sdram_bankmachine3_level - 1'd1);
		end
	end
	if (sdram_bankmachine3_wait) begin
		if ((~sdram_bankmachine3_done)) begin
			sdram_bankmachine3_count <= (sdram_bankmachine3_count - 1'd1);
		end
	end else begin
		sdram_bankmachine3_count <= 3'd5;
	end
	bankmachine3_state <= bankmachine3_next_state;
	if (sdram_bankmachine4_track_close) begin
		sdram_bankmachine4_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine4_track_open) begin
			sdram_bankmachine4_has_openrow <= 1'd1;
			sdram_bankmachine4_openrow <= sdram_bankmachine4_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine4_syncfifo4_we & sdram_bankmachine4_syncfifo4_writable) & (~sdram_bankmachine4_replace))) begin
		sdram_bankmachine4_produce <= (sdram_bankmachine4_produce + 1'd1);
	end
	if (sdram_bankmachine4_do_read) begin
		sdram_bankmachine4_consume <= (sdram_bankmachine4_consume + 1'd1);
	end
	if (((sdram_bankmachine4_syncfifo4_we & sdram_bankmachine4_syncfifo4_writable) & (~sdram_bankmachine4_replace))) begin
		if ((~sdram_bankmachine4_do_read)) begin
			sdram_bankmachine4_level <= (sdram_bankmachine4_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine4_do_read) begin
			sdram_bankmachine4_level <= (sdram_bankmachine4_level - 1'd1);
		end
	end
	if (sdram_bankmachine4_wait) begin
		if ((~sdram_bankmachine4_done)) begin
			sdram_bankmachine4_count <= (sdram_bankmachine4_count - 1'd1);
		end
	end else begin
		sdram_bankmachine4_count <= 3'd5;
	end
	bankmachine4_state <= bankmachine4_next_state;
	if (sdram_bankmachine5_track_close) begin
		sdram_bankmachine5_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine5_track_open) begin
			sdram_bankmachine5_has_openrow <= 1'd1;
			sdram_bankmachine5_openrow <= sdram_bankmachine5_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine5_syncfifo5_we & sdram_bankmachine5_syncfifo5_writable) & (~sdram_bankmachine5_replace))) begin
		sdram_bankmachine5_produce <= (sdram_bankmachine5_produce + 1'd1);
	end
	if (sdram_bankmachine5_do_read) begin
		sdram_bankmachine5_consume <= (sdram_bankmachine5_consume + 1'd1);
	end
	if (((sdram_bankmachine5_syncfifo5_we & sdram_bankmachine5_syncfifo5_writable) & (~sdram_bankmachine5_replace))) begin
		if ((~sdram_bankmachine5_do_read)) begin
			sdram_bankmachine5_level <= (sdram_bankmachine5_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine5_do_read) begin
			sdram_bankmachine5_level <= (sdram_bankmachine5_level - 1'd1);
		end
	end
	if (sdram_bankmachine5_wait) begin
		if ((~sdram_bankmachine5_done)) begin
			sdram_bankmachine5_count <= (sdram_bankmachine5_count - 1'd1);
		end
	end else begin
		sdram_bankmachine5_count <= 3'd5;
	end
	bankmachine5_state <= bankmachine5_next_state;
	if (sdram_bankmachine6_track_close) begin
		sdram_bankmachine6_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine6_track_open) begin
			sdram_bankmachine6_has_openrow <= 1'd1;
			sdram_bankmachine6_openrow <= sdram_bankmachine6_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine6_syncfifo6_we & sdram_bankmachine6_syncfifo6_writable) & (~sdram_bankmachine6_replace))) begin
		sdram_bankmachine6_produce <= (sdram_bankmachine6_produce + 1'd1);
	end
	if (sdram_bankmachine6_do_read) begin
		sdram_bankmachine6_consume <= (sdram_bankmachine6_consume + 1'd1);
	end
	if (((sdram_bankmachine6_syncfifo6_we & sdram_bankmachine6_syncfifo6_writable) & (~sdram_bankmachine6_replace))) begin
		if ((~sdram_bankmachine6_do_read)) begin
			sdram_bankmachine6_level <= (sdram_bankmachine6_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine6_do_read) begin
			sdram_bankmachine6_level <= (sdram_bankmachine6_level - 1'd1);
		end
	end
	if (sdram_bankmachine6_wait) begin
		if ((~sdram_bankmachine6_done)) begin
			sdram_bankmachine6_count <= (sdram_bankmachine6_count - 1'd1);
		end
	end else begin
		sdram_bankmachine6_count <= 3'd5;
	end
	bankmachine6_state <= bankmachine6_next_state;
	if (sdram_bankmachine7_track_close) begin
		sdram_bankmachine7_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine7_track_open) begin
			sdram_bankmachine7_has_openrow <= 1'd1;
			sdram_bankmachine7_openrow <= sdram_bankmachine7_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine7_syncfifo7_we & sdram_bankmachine7_syncfifo7_writable) & (~sdram_bankmachine7_replace))) begin
		sdram_bankmachine7_produce <= (sdram_bankmachine7_produce + 1'd1);
	end
	if (sdram_bankmachine7_do_read) begin
		sdram_bankmachine7_consume <= (sdram_bankmachine7_consume + 1'd1);
	end
	if (((sdram_bankmachine7_syncfifo7_we & sdram_bankmachine7_syncfifo7_writable) & (~sdram_bankmachine7_replace))) begin
		if ((~sdram_bankmachine7_do_read)) begin
			sdram_bankmachine7_level <= (sdram_bankmachine7_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine7_do_read) begin
			sdram_bankmachine7_level <= (sdram_bankmachine7_level - 1'd1);
		end
	end
	if (sdram_bankmachine7_wait) begin
		if ((~sdram_bankmachine7_done)) begin
			sdram_bankmachine7_count <= (sdram_bankmachine7_count - 1'd1);
		end
	end else begin
		sdram_bankmachine7_count <= 3'd5;
	end
	bankmachine7_state <= bankmachine7_next_state;
	if ((~sdram_en0)) begin
		sdram_time0 <= 5'd31;
	end else begin
		if ((~sdram_max_time0)) begin
			sdram_time0 <= (sdram_time0 - 1'd1);
		end
	end
	if ((~sdram_en1)) begin
		sdram_time1 <= 4'd15;
	end else begin
		if ((~sdram_max_time1)) begin
			sdram_time1 <= (sdram_time1 - 1'd1);
		end
	end
	if (sdram_choose_cmd_ce) begin
		case (sdram_choose_cmd_grant)
			1'd0: begin
				if (sdram_choose_cmd_request[1]) begin
					sdram_choose_cmd_grant <= 1'd1;
				end else begin
					if (sdram_choose_cmd_request[2]) begin
						sdram_choose_cmd_grant <= 2'd2;
					end else begin
						if (sdram_choose_cmd_request[3]) begin
							sdram_choose_cmd_grant <= 2'd3;
						end else begin
							if (sdram_choose_cmd_request[4]) begin
								sdram_choose_cmd_grant <= 3'd4;
							end else begin
								if (sdram_choose_cmd_request[5]) begin
									sdram_choose_cmd_grant <= 3'd5;
								end else begin
									if (sdram_choose_cmd_request[6]) begin
										sdram_choose_cmd_grant <= 3'd6;
									end else begin
										if (sdram_choose_cmd_request[7]) begin
											sdram_choose_cmd_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (sdram_choose_cmd_request[2]) begin
					sdram_choose_cmd_grant <= 2'd2;
				end else begin
					if (sdram_choose_cmd_request[3]) begin
						sdram_choose_cmd_grant <= 2'd3;
					end else begin
						if (sdram_choose_cmd_request[4]) begin
							sdram_choose_cmd_grant <= 3'd4;
						end else begin
							if (sdram_choose_cmd_request[5]) begin
								sdram_choose_cmd_grant <= 3'd5;
							end else begin
								if (sdram_choose_cmd_request[6]) begin
									sdram_choose_cmd_grant <= 3'd6;
								end else begin
									if (sdram_choose_cmd_request[7]) begin
										sdram_choose_cmd_grant <= 3'd7;
									end else begin
										if (sdram_choose_cmd_request[0]) begin
											sdram_choose_cmd_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (sdram_choose_cmd_request[3]) begin
					sdram_choose_cmd_grant <= 2'd3;
				end else begin
					if (sdram_choose_cmd_request[4]) begin
						sdram_choose_cmd_grant <= 3'd4;
					end else begin
						if (sdram_choose_cmd_request[5]) begin
							sdram_choose_cmd_grant <= 3'd5;
						end else begin
							if (sdram_choose_cmd_request[6]) begin
								sdram_choose_cmd_grant <= 3'd6;
							end else begin
								if (sdram_choose_cmd_request[7]) begin
									sdram_choose_cmd_grant <= 3'd7;
								end else begin
									if (sdram_choose_cmd_request[0]) begin
										sdram_choose_cmd_grant <= 1'd0;
									end else begin
										if (sdram_choose_cmd_request[1]) begin
											sdram_choose_cmd_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (sdram_choose_cmd_request[4]) begin
					sdram_choose_cmd_grant <= 3'd4;
				end else begin
					if (sdram_choose_cmd_request[5]) begin
						sdram_choose_cmd_grant <= 3'd5;
					end else begin
						if (sdram_choose_cmd_request[6]) begin
							sdram_choose_cmd_grant <= 3'd6;
						end else begin
							if (sdram_choose_cmd_request[7]) begin
								sdram_choose_cmd_grant <= 3'd7;
							end else begin
								if (sdram_choose_cmd_request[0]) begin
									sdram_choose_cmd_grant <= 1'd0;
								end else begin
									if (sdram_choose_cmd_request[1]) begin
										sdram_choose_cmd_grant <= 1'd1;
									end else begin
										if (sdram_choose_cmd_request[2]) begin
											sdram_choose_cmd_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (sdram_choose_cmd_request[5]) begin
					sdram_choose_cmd_grant <= 3'd5;
				end else begin
					if (sdram_choose_cmd_request[6]) begin
						sdram_choose_cmd_grant <= 3'd6;
					end else begin
						if (sdram_choose_cmd_request[7]) begin
							sdram_choose_cmd_grant <= 3'd7;
						end else begin
							if (sdram_choose_cmd_request[0]) begin
								sdram_choose_cmd_grant <= 1'd0;
							end else begin
								if (sdram_choose_cmd_request[1]) begin
									sdram_choose_cmd_grant <= 1'd1;
								end else begin
									if (sdram_choose_cmd_request[2]) begin
										sdram_choose_cmd_grant <= 2'd2;
									end else begin
										if (sdram_choose_cmd_request[3]) begin
											sdram_choose_cmd_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (sdram_choose_cmd_request[6]) begin
					sdram_choose_cmd_grant <= 3'd6;
				end else begin
					if (sdram_choose_cmd_request[7]) begin
						sdram_choose_cmd_grant <= 3'd7;
					end else begin
						if (sdram_choose_cmd_request[0]) begin
							sdram_choose_cmd_grant <= 1'd0;
						end else begin
							if (sdram_choose_cmd_request[1]) begin
								sdram_choose_cmd_grant <= 1'd1;
							end else begin
								if (sdram_choose_cmd_request[2]) begin
									sdram_choose_cmd_grant <= 2'd2;
								end else begin
									if (sdram_choose_cmd_request[3]) begin
										sdram_choose_cmd_grant <= 2'd3;
									end else begin
										if (sdram_choose_cmd_request[4]) begin
											sdram_choose_cmd_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (sdram_choose_cmd_request[7]) begin
					sdram_choose_cmd_grant <= 3'd7;
				end else begin
					if (sdram_choose_cmd_request[0]) begin
						sdram_choose_cmd_grant <= 1'd0;
					end else begin
						if (sdram_choose_cmd_request[1]) begin
							sdram_choose_cmd_grant <= 1'd1;
						end else begin
							if (sdram_choose_cmd_request[2]) begin
								sdram_choose_cmd_grant <= 2'd2;
							end else begin
								if (sdram_choose_cmd_request[3]) begin
									sdram_choose_cmd_grant <= 2'd3;
								end else begin
									if (sdram_choose_cmd_request[4]) begin
										sdram_choose_cmd_grant <= 3'd4;
									end else begin
										if (sdram_choose_cmd_request[5]) begin
											sdram_choose_cmd_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (sdram_choose_cmd_request[0]) begin
					sdram_choose_cmd_grant <= 1'd0;
				end else begin
					if (sdram_choose_cmd_request[1]) begin
						sdram_choose_cmd_grant <= 1'd1;
					end else begin
						if (sdram_choose_cmd_request[2]) begin
							sdram_choose_cmd_grant <= 2'd2;
						end else begin
							if (sdram_choose_cmd_request[3]) begin
								sdram_choose_cmd_grant <= 2'd3;
							end else begin
								if (sdram_choose_cmd_request[4]) begin
									sdram_choose_cmd_grant <= 3'd4;
								end else begin
									if (sdram_choose_cmd_request[5]) begin
										sdram_choose_cmd_grant <= 3'd5;
									end else begin
										if (sdram_choose_cmd_request[6]) begin
											sdram_choose_cmd_grant <= 3'd6;
										end
									end
								end
							end
						end
					end
				end
			end
		endcase
	end
	if (sdram_choose_req_ce) begin
		case (sdram_choose_req_grant)
			1'd0: begin
				if (sdram_choose_req_request[1]) begin
					sdram_choose_req_grant <= 1'd1;
				end else begin
					if (sdram_choose_req_request[2]) begin
						sdram_choose_req_grant <= 2'd2;
					end else begin
						if (sdram_choose_req_request[3]) begin
							sdram_choose_req_grant <= 2'd3;
						end else begin
							if (sdram_choose_req_request[4]) begin
								sdram_choose_req_grant <= 3'd4;
							end else begin
								if (sdram_choose_req_request[5]) begin
									sdram_choose_req_grant <= 3'd5;
								end else begin
									if (sdram_choose_req_request[6]) begin
										sdram_choose_req_grant <= 3'd6;
									end else begin
										if (sdram_choose_req_request[7]) begin
											sdram_choose_req_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (sdram_choose_req_request[2]) begin
					sdram_choose_req_grant <= 2'd2;
				end else begin
					if (sdram_choose_req_request[3]) begin
						sdram_choose_req_grant <= 2'd3;
					end else begin
						if (sdram_choose_req_request[4]) begin
							sdram_choose_req_grant <= 3'd4;
						end else begin
							if (sdram_choose_req_request[5]) begin
								sdram_choose_req_grant <= 3'd5;
							end else begin
								if (sdram_choose_req_request[6]) begin
									sdram_choose_req_grant <= 3'd6;
								end else begin
									if (sdram_choose_req_request[7]) begin
										sdram_choose_req_grant <= 3'd7;
									end else begin
										if (sdram_choose_req_request[0]) begin
											sdram_choose_req_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (sdram_choose_req_request[3]) begin
					sdram_choose_req_grant <= 2'd3;
				end else begin
					if (sdram_choose_req_request[4]) begin
						sdram_choose_req_grant <= 3'd4;
					end else begin
						if (sdram_choose_req_request[5]) begin
							sdram_choose_req_grant <= 3'd5;
						end else begin
							if (sdram_choose_req_request[6]) begin
								sdram_choose_req_grant <= 3'd6;
							end else begin
								if (sdram_choose_req_request[7]) begin
									sdram_choose_req_grant <= 3'd7;
								end else begin
									if (sdram_choose_req_request[0]) begin
										sdram_choose_req_grant <= 1'd0;
									end else begin
										if (sdram_choose_req_request[1]) begin
											sdram_choose_req_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (sdram_choose_req_request[4]) begin
					sdram_choose_req_grant <= 3'd4;
				end else begin
					if (sdram_choose_req_request[5]) begin
						sdram_choose_req_grant <= 3'd5;
					end else begin
						if (sdram_choose_req_request[6]) begin
							sdram_choose_req_grant <= 3'd6;
						end else begin
							if (sdram_choose_req_request[7]) begin
								sdram_choose_req_grant <= 3'd7;
							end else begin
								if (sdram_choose_req_request[0]) begin
									sdram_choose_req_grant <= 1'd0;
								end else begin
									if (sdram_choose_req_request[1]) begin
										sdram_choose_req_grant <= 1'd1;
									end else begin
										if (sdram_choose_req_request[2]) begin
											sdram_choose_req_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (sdram_choose_req_request[5]) begin
					sdram_choose_req_grant <= 3'd5;
				end else begin
					if (sdram_choose_req_request[6]) begin
						sdram_choose_req_grant <= 3'd6;
					end else begin
						if (sdram_choose_req_request[7]) begin
							sdram_choose_req_grant <= 3'd7;
						end else begin
							if (sdram_choose_req_request[0]) begin
								sdram_choose_req_grant <= 1'd0;
							end else begin
								if (sdram_choose_req_request[1]) begin
									sdram_choose_req_grant <= 1'd1;
								end else begin
									if (sdram_choose_req_request[2]) begin
										sdram_choose_req_grant <= 2'd2;
									end else begin
										if (sdram_choose_req_request[3]) begin
											sdram_choose_req_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (sdram_choose_req_request[6]) begin
					sdram_choose_req_grant <= 3'd6;
				end else begin
					if (sdram_choose_req_request[7]) begin
						sdram_choose_req_grant <= 3'd7;
					end else begin
						if (sdram_choose_req_request[0]) begin
							sdram_choose_req_grant <= 1'd0;
						end else begin
							if (sdram_choose_req_request[1]) begin
								sdram_choose_req_grant <= 1'd1;
							end else begin
								if (sdram_choose_req_request[2]) begin
									sdram_choose_req_grant <= 2'd2;
								end else begin
									if (sdram_choose_req_request[3]) begin
										sdram_choose_req_grant <= 2'd3;
									end else begin
										if (sdram_choose_req_request[4]) begin
											sdram_choose_req_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (sdram_choose_req_request[7]) begin
					sdram_choose_req_grant <= 3'd7;
				end else begin
					if (sdram_choose_req_request[0]) begin
						sdram_choose_req_grant <= 1'd0;
					end else begin
						if (sdram_choose_req_request[1]) begin
							sdram_choose_req_grant <= 1'd1;
						end else begin
							if (sdram_choose_req_request[2]) begin
								sdram_choose_req_grant <= 2'd2;
							end else begin
								if (sdram_choose_req_request[3]) begin
									sdram_choose_req_grant <= 2'd3;
								end else begin
									if (sdram_choose_req_request[4]) begin
										sdram_choose_req_grant <= 3'd4;
									end else begin
										if (sdram_choose_req_request[5]) begin
											sdram_choose_req_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (sdram_choose_req_request[0]) begin
					sdram_choose_req_grant <= 1'd0;
				end else begin
					if (sdram_choose_req_request[1]) begin
						sdram_choose_req_grant <= 1'd1;
					end else begin
						if (sdram_choose_req_request[2]) begin
							sdram_choose_req_grant <= 2'd2;
						end else begin
							if (sdram_choose_req_request[3]) begin
								sdram_choose_req_grant <= 2'd3;
							end else begin
								if (sdram_choose_req_request[4]) begin
									sdram_choose_req_grant <= 3'd4;
								end else begin
									if (sdram_choose_req_request[5]) begin
										sdram_choose_req_grant <= 3'd5;
									end else begin
										if (sdram_choose_req_request[6]) begin
											sdram_choose_req_grant <= 3'd6;
										end
									end
								end
							end
						end
					end
				end
			end
		endcase
	end
	sdram_dfi_p0_address <= array_muxed0;
	sdram_dfi_p0_bank <= array_muxed1;
	sdram_dfi_p0_cas_n <= (~array_muxed2);
	sdram_dfi_p0_ras_n <= (~array_muxed3);
	sdram_dfi_p0_we_n <= (~array_muxed4);
	sdram_dfi_p0_rddata_en <= array_muxed5;
	sdram_dfi_p0_wrdata_en <= array_muxed6;
	sdram_dfi_p1_address <= array_muxed7;
	sdram_dfi_p1_bank <= array_muxed8;
	sdram_dfi_p1_cas_n <= (~array_muxed9);
	sdram_dfi_p1_ras_n <= (~array_muxed10);
	sdram_dfi_p1_we_n <= (~array_muxed11);
	sdram_dfi_p1_rddata_en <= array_muxed12;
	sdram_dfi_p1_wrdata_en <= array_muxed13;
	sdram_dfi_p2_address <= array_muxed14;
	sdram_dfi_p2_bank <= array_muxed15;
	sdram_dfi_p2_cas_n <= (~array_muxed16);
	sdram_dfi_p2_ras_n <= (~array_muxed17);
	sdram_dfi_p2_we_n <= (~array_muxed18);
	sdram_dfi_p2_rddata_en <= array_muxed19;
	sdram_dfi_p2_wrdata_en <= array_muxed20;
	sdram_dfi_p3_address <= array_muxed21;
	sdram_dfi_p3_bank <= array_muxed22;
	sdram_dfi_p3_cas_n <= (~array_muxed23);
	sdram_dfi_p3_ras_n <= (~array_muxed24);
	sdram_dfi_p3_we_n <= (~array_muxed25);
	sdram_dfi_p3_rddata_en <= array_muxed26;
	sdram_dfi_p3_wrdata_en <= array_muxed27;
	multiplexer_state <= multiplexer_next_state;
	sdram_bandwidth_cmd_valid <= sdram_choose_req_cmd_valid;
	sdram_bandwidth_cmd_ready <= sdram_choose_req_cmd_ready;
	sdram_bandwidth_cmd_is_read <= sdram_choose_req_cmd_payload_is_read;
	sdram_bandwidth_cmd_is_write <= sdram_choose_req_cmd_payload_is_write;
	{sdram_bandwidth_period, sdram_bandwidth_counter} <= (sdram_bandwidth_counter + 1'd1);
	if (sdram_bandwidth_period) begin
		sdram_bandwidth_nreads_r <= sdram_bandwidth_nreads;
		sdram_bandwidth_nwrites_r <= sdram_bandwidth_nwrites;
		sdram_bandwidth_nreads <= 1'd0;
		sdram_bandwidth_nwrites <= 1'd0;
	end else begin
		if ((sdram_bandwidth_cmd_valid & sdram_bandwidth_cmd_ready)) begin
			if (sdram_bandwidth_cmd_is_read) begin
				sdram_bandwidth_nreads <= (sdram_bandwidth_nreads + 1'd1);
			end
			if (sdram_bandwidth_cmd_is_write) begin
				sdram_bandwidth_nwrites <= (sdram_bandwidth_nwrites + 1'd1);
			end
		end
	end
	if (sdram_bandwidth_update_re) begin
		sdram_bandwidth_nreads_status <= sdram_bandwidth_nreads_r;
		sdram_bandwidth_nwrites_status <= sdram_bandwidth_nwrites_r;
	end
	new_master_wdata_ready0 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & sdram_interface_bank0_wdata_ready)) | ((roundrobin1_grant == 1'd0) & sdram_interface_bank1_wdata_ready)) | ((roundrobin2_grant == 1'd0) & sdram_interface_bank2_wdata_ready)) | ((roundrobin3_grant == 1'd0) & sdram_interface_bank3_wdata_ready)) | ((roundrobin4_grant == 1'd0) & sdram_interface_bank4_wdata_ready)) | ((roundrobin5_grant == 1'd0) & sdram_interface_bank5_wdata_ready)) | ((roundrobin6_grant == 1'd0) & sdram_interface_bank6_wdata_ready)) | ((roundrobin7_grant == 1'd0) & sdram_interface_bank7_wdata_ready));
	new_master_wdata_ready1 <= new_master_wdata_ready0;
	new_master_wdata_ready2 <= new_master_wdata_ready1;
	new_master_rdata_valid0 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & sdram_interface_bank0_rdata_valid)) | ((roundrobin1_grant == 1'd0) & sdram_interface_bank1_rdata_valid)) | ((roundrobin2_grant == 1'd0) & sdram_interface_bank2_rdata_valid)) | ((roundrobin3_grant == 1'd0) & sdram_interface_bank3_rdata_valid)) | ((roundrobin4_grant == 1'd0) & sdram_interface_bank4_rdata_valid)) | ((roundrobin5_grant == 1'd0) & sdram_interface_bank5_rdata_valid)) | ((roundrobin6_grant == 1'd0) & sdram_interface_bank6_rdata_valid)) | ((roundrobin7_grant == 1'd0) & sdram_interface_bank7_rdata_valid));
	new_master_rdata_valid1 <= new_master_rdata_valid0;
	new_master_rdata_valid2 <= new_master_rdata_valid1;
	new_master_rdata_valid3 <= new_master_rdata_valid2;
	new_master_rdata_valid4 <= new_master_rdata_valid3;
	new_master_rdata_valid5 <= new_master_rdata_valid4;
	new_master_rdata_valid6 <= new_master_rdata_valid5;
	adr_offset_r <= interface0_wb_sdram_adr[1:0];
	fullmemorywe_state <= fullmemorywe_next_state;
	litedramwishbonebridge_state <= litedramwishbonebridge_next_state;
	case (basesoc_grant)
		1'd0: begin
			if ((~basesoc_request[0])) begin
				if (basesoc_request[1]) begin
					basesoc_grant <= 1'd1;
				end
			end
		end
		1'd1: begin
			if ((~basesoc_request[1])) begin
				if (basesoc_request[0]) begin
					basesoc_grant <= 1'd0;
				end
			end
		end
	endcase
	basesoc_slave_sel_r <= basesoc_slave_sel;
	basesoc_interface0_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank0_sel) begin
		case (basesoc_interface0_bank_bus_adr[1:0])
			1'd0: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_dly_sel0_w;
			end
			1'd1: begin
				basesoc_interface0_bank_bus_dat_r <= rdly_dq_rst_w;
			end
			2'd2: begin
				basesoc_interface0_bank_bus_dat_r <= rdly_dq_inc_w;
			end
			2'd3: begin
				basesoc_interface0_bank_bus_dat_r <= rdly_dq_bitslip_w;
			end
		endcase
	end
	if (basesoc_csrbank0_dly_sel0_re) begin
		storage_full[1:0] <= basesoc_csrbank0_dly_sel0_r;
	end
	re <= basesoc_csrbank0_dly_sel0_re;
	basesoc_sel_r <= basesoc_sel;
	basesoc_interface1_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank1_sel) begin
		case (basesoc_interface1_bank_bus_adr[5:0])
			1'd0: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dna_id7_w;
			end
			1'd1: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dna_id6_w;
			end
			2'd2: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dna_id5_w;
			end
			2'd3: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dna_id4_w;
			end
			3'd4: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dna_id3_w;
			end
			3'd5: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dna_id2_w;
			end
			3'd6: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dna_id1_w;
			end
			3'd7: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_dna_id0_w;
			end
			4'd8: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit19_w;
			end
			4'd9: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit18_w;
			end
			4'd10: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit17_w;
			end
			4'd11: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit16_w;
			end
			4'd12: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit15_w;
			end
			4'd13: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit14_w;
			end
			4'd14: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit13_w;
			end
			4'd15: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit12_w;
			end
			5'd16: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit11_w;
			end
			5'd17: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit10_w;
			end
			5'd18: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit9_w;
			end
			5'd19: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit8_w;
			end
			5'd20: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit7_w;
			end
			5'd21: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit6_w;
			end
			5'd22: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit5_w;
			end
			5'd23: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit4_w;
			end
			5'd24: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit3_w;
			end
			5'd25: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit2_w;
			end
			5'd26: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit1_w;
			end
			5'd27: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_git_commit0_w;
			end
			5'd28: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_platform7_w;
			end
			5'd29: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_platform6_w;
			end
			5'd30: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_platform5_w;
			end
			5'd31: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_platform4_w;
			end
			6'd32: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_platform3_w;
			end
			6'd33: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_platform2_w;
			end
			6'd34: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_platform1_w;
			end
			6'd35: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_platform0_w;
			end
			6'd36: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_target7_w;
			end
			6'd37: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_target6_w;
			end
			6'd38: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_target5_w;
			end
			6'd39: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_target4_w;
			end
			6'd40: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_target3_w;
			end
			6'd41: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_target2_w;
			end
			6'd42: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_target1_w;
			end
			6'd43: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_platform_target0_w;
			end
			6'd44: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_xadc_temperature1_w;
			end
			6'd45: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_xadc_temperature0_w;
			end
			6'd46: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_xadc_vccint1_w;
			end
			6'd47: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_xadc_vccint0_w;
			end
			6'd48: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_xadc_vccaux1_w;
			end
			6'd49: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_xadc_vccaux0_w;
			end
			6'd50: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_xadc_vccbram1_w;
			end
			6'd51: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_xadc_vccbram0_w;
			end
		endcase
	end
	basesoc_interface2_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank2_sel) begin
		case (basesoc_interface2_bank_bus_adr[5:0])
			1'd0: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_control0_w;
			end
			1'd1: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi0_command0_w;
			end
			2'd2: begin
				basesoc_interface2_bank_bus_dat_r <= sdram_phaseinjector0_command_issue_w;
			end
			2'd3: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi0_address1_w;
			end
			3'd4: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi0_address0_w;
			end
			3'd5: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi0_baddress0_w;
			end
			3'd6: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi0_wrdata3_w;
			end
			3'd7: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi0_wrdata2_w;
			end
			4'd8: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi0_wrdata1_w;
			end
			4'd9: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi0_wrdata0_w;
			end
			4'd10: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi0_rddata3_w;
			end
			4'd11: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi0_rddata2_w;
			end
			4'd12: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi0_rddata1_w;
			end
			4'd13: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi0_rddata0_w;
			end
			4'd14: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi1_command0_w;
			end
			4'd15: begin
				basesoc_interface2_bank_bus_dat_r <= sdram_phaseinjector1_command_issue_w;
			end
			5'd16: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi1_address1_w;
			end
			5'd17: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi1_address0_w;
			end
			5'd18: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi1_baddress0_w;
			end
			5'd19: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi1_wrdata3_w;
			end
			5'd20: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi1_wrdata2_w;
			end
			5'd21: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi1_wrdata1_w;
			end
			5'd22: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi1_wrdata0_w;
			end
			5'd23: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi1_rddata3_w;
			end
			5'd24: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi1_rddata2_w;
			end
			5'd25: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi1_rddata1_w;
			end
			5'd26: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi1_rddata0_w;
			end
			5'd27: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi2_command0_w;
			end
			5'd28: begin
				basesoc_interface2_bank_bus_dat_r <= sdram_phaseinjector2_command_issue_w;
			end
			5'd29: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi2_address1_w;
			end
			5'd30: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi2_address0_w;
			end
			5'd31: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi2_baddress0_w;
			end
			6'd32: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi2_wrdata3_w;
			end
			6'd33: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi2_wrdata2_w;
			end
			6'd34: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi2_wrdata1_w;
			end
			6'd35: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi2_wrdata0_w;
			end
			6'd36: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi2_rddata3_w;
			end
			6'd37: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi2_rddata2_w;
			end
			6'd38: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi2_rddata1_w;
			end
			6'd39: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi2_rddata0_w;
			end
			6'd40: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi3_command0_w;
			end
			6'd41: begin
				basesoc_interface2_bank_bus_dat_r <= sdram_phaseinjector3_command_issue_w;
			end
			6'd42: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi3_address1_w;
			end
			6'd43: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi3_address0_w;
			end
			6'd44: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi3_baddress0_w;
			end
			6'd45: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi3_wrdata3_w;
			end
			6'd46: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi3_wrdata2_w;
			end
			6'd47: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi3_wrdata1_w;
			end
			6'd48: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi3_wrdata0_w;
			end
			6'd49: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi3_rddata3_w;
			end
			6'd50: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi3_rddata2_w;
			end
			6'd51: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi3_rddata1_w;
			end
			6'd52: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dfii_pi3_rddata0_w;
			end
			6'd53: begin
				basesoc_interface2_bank_bus_dat_r <= sdram_bandwidth_update_w;
			end
			6'd54: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_controller_bandwidth_nreads2_w;
			end
			6'd55: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_controller_bandwidth_nreads1_w;
			end
			6'd56: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_controller_bandwidth_nreads0_w;
			end
			6'd57: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_controller_bandwidth_nwrites2_w;
			end
			6'd58: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_controller_bandwidth_nwrites1_w;
			end
			6'd59: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_controller_bandwidth_nwrites0_w;
			end
			6'd60: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_controller_bandwidth_data_width_w;
			end
		endcase
	end
	if (basesoc_csrbank2_dfii_control0_re) begin
		sdram_storage_full[3:0] <= basesoc_csrbank2_dfii_control0_r;
	end
	sdram_re <= basesoc_csrbank2_dfii_control0_re;
	if (basesoc_csrbank2_dfii_pi0_command0_re) begin
		sdram_phaseinjector0_command_storage_full[5:0] <= basesoc_csrbank2_dfii_pi0_command0_r;
	end
	sdram_phaseinjector0_command_re <= basesoc_csrbank2_dfii_pi0_command0_re;
	if (basesoc_csrbank2_dfii_pi0_address1_re) begin
		sdram_phaseinjector0_address_storage_full[13:8] <= basesoc_csrbank2_dfii_pi0_address1_r;
	end
	if (basesoc_csrbank2_dfii_pi0_address0_re) begin
		sdram_phaseinjector0_address_storage_full[7:0] <= basesoc_csrbank2_dfii_pi0_address0_r;
	end
	sdram_phaseinjector0_address_re <= basesoc_csrbank2_dfii_pi0_address0_re;
	if (basesoc_csrbank2_dfii_pi0_baddress0_re) begin
		sdram_phaseinjector0_baddress_storage_full[2:0] <= basesoc_csrbank2_dfii_pi0_baddress0_r;
	end
	sdram_phaseinjector0_baddress_re <= basesoc_csrbank2_dfii_pi0_baddress0_re;
	if (basesoc_csrbank2_dfii_pi0_wrdata3_re) begin
		sdram_phaseinjector0_wrdata_storage_full[31:24] <= basesoc_csrbank2_dfii_pi0_wrdata3_r;
	end
	if (basesoc_csrbank2_dfii_pi0_wrdata2_re) begin
		sdram_phaseinjector0_wrdata_storage_full[23:16] <= basesoc_csrbank2_dfii_pi0_wrdata2_r;
	end
	if (basesoc_csrbank2_dfii_pi0_wrdata1_re) begin
		sdram_phaseinjector0_wrdata_storage_full[15:8] <= basesoc_csrbank2_dfii_pi0_wrdata1_r;
	end
	if (basesoc_csrbank2_dfii_pi0_wrdata0_re) begin
		sdram_phaseinjector0_wrdata_storage_full[7:0] <= basesoc_csrbank2_dfii_pi0_wrdata0_r;
	end
	sdram_phaseinjector0_wrdata_re <= basesoc_csrbank2_dfii_pi0_wrdata0_re;
	if (basesoc_csrbank2_dfii_pi1_command0_re) begin
		sdram_phaseinjector1_command_storage_full[5:0] <= basesoc_csrbank2_dfii_pi1_command0_r;
	end
	sdram_phaseinjector1_command_re <= basesoc_csrbank2_dfii_pi1_command0_re;
	if (basesoc_csrbank2_dfii_pi1_address1_re) begin
		sdram_phaseinjector1_address_storage_full[13:8] <= basesoc_csrbank2_dfii_pi1_address1_r;
	end
	if (basesoc_csrbank2_dfii_pi1_address0_re) begin
		sdram_phaseinjector1_address_storage_full[7:0] <= basesoc_csrbank2_dfii_pi1_address0_r;
	end
	sdram_phaseinjector1_address_re <= basesoc_csrbank2_dfii_pi1_address0_re;
	if (basesoc_csrbank2_dfii_pi1_baddress0_re) begin
		sdram_phaseinjector1_baddress_storage_full[2:0] <= basesoc_csrbank2_dfii_pi1_baddress0_r;
	end
	sdram_phaseinjector1_baddress_re <= basesoc_csrbank2_dfii_pi1_baddress0_re;
	if (basesoc_csrbank2_dfii_pi1_wrdata3_re) begin
		sdram_phaseinjector1_wrdata_storage_full[31:24] <= basesoc_csrbank2_dfii_pi1_wrdata3_r;
	end
	if (basesoc_csrbank2_dfii_pi1_wrdata2_re) begin
		sdram_phaseinjector1_wrdata_storage_full[23:16] <= basesoc_csrbank2_dfii_pi1_wrdata2_r;
	end
	if (basesoc_csrbank2_dfii_pi1_wrdata1_re) begin
		sdram_phaseinjector1_wrdata_storage_full[15:8] <= basesoc_csrbank2_dfii_pi1_wrdata1_r;
	end
	if (basesoc_csrbank2_dfii_pi1_wrdata0_re) begin
		sdram_phaseinjector1_wrdata_storage_full[7:0] <= basesoc_csrbank2_dfii_pi1_wrdata0_r;
	end
	sdram_phaseinjector1_wrdata_re <= basesoc_csrbank2_dfii_pi1_wrdata0_re;
	if (basesoc_csrbank2_dfii_pi2_command0_re) begin
		sdram_phaseinjector2_command_storage_full[5:0] <= basesoc_csrbank2_dfii_pi2_command0_r;
	end
	sdram_phaseinjector2_command_re <= basesoc_csrbank2_dfii_pi2_command0_re;
	if (basesoc_csrbank2_dfii_pi2_address1_re) begin
		sdram_phaseinjector2_address_storage_full[13:8] <= basesoc_csrbank2_dfii_pi2_address1_r;
	end
	if (basesoc_csrbank2_dfii_pi2_address0_re) begin
		sdram_phaseinjector2_address_storage_full[7:0] <= basesoc_csrbank2_dfii_pi2_address0_r;
	end
	sdram_phaseinjector2_address_re <= basesoc_csrbank2_dfii_pi2_address0_re;
	if (basesoc_csrbank2_dfii_pi2_baddress0_re) begin
		sdram_phaseinjector2_baddress_storage_full[2:0] <= basesoc_csrbank2_dfii_pi2_baddress0_r;
	end
	sdram_phaseinjector2_baddress_re <= basesoc_csrbank2_dfii_pi2_baddress0_re;
	if (basesoc_csrbank2_dfii_pi2_wrdata3_re) begin
		sdram_phaseinjector2_wrdata_storage_full[31:24] <= basesoc_csrbank2_dfii_pi2_wrdata3_r;
	end
	if (basesoc_csrbank2_dfii_pi2_wrdata2_re) begin
		sdram_phaseinjector2_wrdata_storage_full[23:16] <= basesoc_csrbank2_dfii_pi2_wrdata2_r;
	end
	if (basesoc_csrbank2_dfii_pi2_wrdata1_re) begin
		sdram_phaseinjector2_wrdata_storage_full[15:8] <= basesoc_csrbank2_dfii_pi2_wrdata1_r;
	end
	if (basesoc_csrbank2_dfii_pi2_wrdata0_re) begin
		sdram_phaseinjector2_wrdata_storage_full[7:0] <= basesoc_csrbank2_dfii_pi2_wrdata0_r;
	end
	sdram_phaseinjector2_wrdata_re <= basesoc_csrbank2_dfii_pi2_wrdata0_re;
	if (basesoc_csrbank2_dfii_pi3_command0_re) begin
		sdram_phaseinjector3_command_storage_full[5:0] <= basesoc_csrbank2_dfii_pi3_command0_r;
	end
	sdram_phaseinjector3_command_re <= basesoc_csrbank2_dfii_pi3_command0_re;
	if (basesoc_csrbank2_dfii_pi3_address1_re) begin
		sdram_phaseinjector3_address_storage_full[13:8] <= basesoc_csrbank2_dfii_pi3_address1_r;
	end
	if (basesoc_csrbank2_dfii_pi3_address0_re) begin
		sdram_phaseinjector3_address_storage_full[7:0] <= basesoc_csrbank2_dfii_pi3_address0_r;
	end
	sdram_phaseinjector3_address_re <= basesoc_csrbank2_dfii_pi3_address0_re;
	if (basesoc_csrbank2_dfii_pi3_baddress0_re) begin
		sdram_phaseinjector3_baddress_storage_full[2:0] <= basesoc_csrbank2_dfii_pi3_baddress0_r;
	end
	sdram_phaseinjector3_baddress_re <= basesoc_csrbank2_dfii_pi3_baddress0_re;
	if (basesoc_csrbank2_dfii_pi3_wrdata3_re) begin
		sdram_phaseinjector3_wrdata_storage_full[31:24] <= basesoc_csrbank2_dfii_pi3_wrdata3_r;
	end
	if (basesoc_csrbank2_dfii_pi3_wrdata2_re) begin
		sdram_phaseinjector3_wrdata_storage_full[23:16] <= basesoc_csrbank2_dfii_pi3_wrdata2_r;
	end
	if (basesoc_csrbank2_dfii_pi3_wrdata1_re) begin
		sdram_phaseinjector3_wrdata_storage_full[15:8] <= basesoc_csrbank2_dfii_pi3_wrdata1_r;
	end
	if (basesoc_csrbank2_dfii_pi3_wrdata0_re) begin
		sdram_phaseinjector3_wrdata_storage_full[7:0] <= basesoc_csrbank2_dfii_pi3_wrdata0_r;
	end
	sdram_phaseinjector3_wrdata_re <= basesoc_csrbank2_dfii_pi3_wrdata0_re;
	basesoc_interface3_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank3_sel) begin
		case (basesoc_interface3_bank_bus_adr[1:0])
			1'd0: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_bitbang0_w;
			end
			1'd1: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_miso_w;
			end
			2'd2: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_bitbang_en0_w;
			end
		endcase
	end
	if (basesoc_csrbank3_bitbang0_re) begin
		bitbang_storage_full[3:0] <= basesoc_csrbank3_bitbang0_r;
	end
	bitbang_re <= basesoc_csrbank3_bitbang0_re;
	if (basesoc_csrbank3_bitbang_en0_re) begin
		bitbang_en_storage_full <= basesoc_csrbank3_bitbang_en0_r;
	end
	bitbang_en_re <= basesoc_csrbank3_bitbang_en0_re;
	basesoc_interface4_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank4_sel) begin
		case (basesoc_interface4_bank_bus_adr[4:0])
			1'd0: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_load3_w;
			end
			1'd1: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_load2_w;
			end
			2'd2: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_load1_w;
			end
			2'd3: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_load0_w;
			end
			3'd4: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_reload3_w;
			end
			3'd5: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_reload2_w;
			end
			3'd6: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_reload1_w;
			end
			3'd7: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_reload0_w;
			end
			4'd8: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_en0_w;
			end
			4'd9: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_timer0_update_value_w;
			end
			4'd10: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_value3_w;
			end
			4'd11: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_value2_w;
			end
			4'd12: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_value1_w;
			end
			4'd13: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_value0_w;
			end
			4'd14: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_timer0_eventmanager_status_w;
			end
			4'd15: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_timer0_eventmanager_pending_w;
			end
			5'd16: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_ev_enable0_w;
			end
		endcase
	end
	if (basesoc_csrbank4_load3_re) begin
		basesoc_timer0_load_storage_full[31:24] <= basesoc_csrbank4_load3_r;
	end
	if (basesoc_csrbank4_load2_re) begin
		basesoc_timer0_load_storage_full[23:16] <= basesoc_csrbank4_load2_r;
	end
	if (basesoc_csrbank4_load1_re) begin
		basesoc_timer0_load_storage_full[15:8] <= basesoc_csrbank4_load1_r;
	end
	if (basesoc_csrbank4_load0_re) begin
		basesoc_timer0_load_storage_full[7:0] <= basesoc_csrbank4_load0_r;
	end
	basesoc_timer0_load_re <= basesoc_csrbank4_load0_re;
	if (basesoc_csrbank4_reload3_re) begin
		basesoc_timer0_reload_storage_full[31:24] <= basesoc_csrbank4_reload3_r;
	end
	if (basesoc_csrbank4_reload2_re) begin
		basesoc_timer0_reload_storage_full[23:16] <= basesoc_csrbank4_reload2_r;
	end
	if (basesoc_csrbank4_reload1_re) begin
		basesoc_timer0_reload_storage_full[15:8] <= basesoc_csrbank4_reload1_r;
	end
	if (basesoc_csrbank4_reload0_re) begin
		basesoc_timer0_reload_storage_full[7:0] <= basesoc_csrbank4_reload0_r;
	end
	basesoc_timer0_reload_re <= basesoc_csrbank4_reload0_re;
	if (basesoc_csrbank4_en0_re) begin
		basesoc_timer0_en_storage_full <= basesoc_csrbank4_en0_r;
	end
	basesoc_timer0_en_re <= basesoc_csrbank4_en0_re;
	if (basesoc_csrbank4_ev_enable0_re) begin
		basesoc_timer0_eventmanager_storage_full <= basesoc_csrbank4_ev_enable0_r;
	end
	basesoc_timer0_eventmanager_re <= basesoc_csrbank4_ev_enable0_re;
	basesoc_interface5_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank5_sel) begin
		case (basesoc_interface5_bank_bus_adr[2:0])
			1'd0: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_uart_rxtx_w;
			end
			1'd1: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_txfull_w;
			end
			2'd2: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_rxempty_w;
			end
			2'd3: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_uart_status_w;
			end
			3'd4: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_uart_pending_w;
			end
			3'd5: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_ev_enable0_w;
			end
		endcase
	end
	if (basesoc_csrbank5_ev_enable0_re) begin
		basesoc_uart_storage_full[1:0] <= basesoc_csrbank5_ev_enable0_r;
	end
	basesoc_uart_re <= basesoc_csrbank5_ev_enable0_re;
	basesoc_interface6_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank6_sel) begin
		case (basesoc_interface6_bank_bus_adr[1:0])
			1'd0: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_tuning_word3_w;
			end
			1'd1: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_tuning_word2_w;
			end
			2'd2: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_tuning_word1_w;
			end
			2'd3: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_tuning_word0_w;
			end
		endcase
	end
	if (basesoc_csrbank6_tuning_word3_re) begin
		basesoc_uart_phy_storage_full[31:24] <= basesoc_csrbank6_tuning_word3_r;
	end
	if (basesoc_csrbank6_tuning_word2_re) begin
		basesoc_uart_phy_storage_full[23:16] <= basesoc_csrbank6_tuning_word2_r;
	end
	if (basesoc_csrbank6_tuning_word1_re) begin
		basesoc_uart_phy_storage_full[15:8] <= basesoc_csrbank6_tuning_word1_r;
	end
	if (basesoc_csrbank6_tuning_word0_re) begin
		basesoc_uart_phy_storage_full[7:0] <= basesoc_csrbank6_tuning_word0_r;
	end
	basesoc_uart_phy_re <= basesoc_csrbank6_tuning_word0_re;
	if (sys_rst) begin
		basesoc_rom_bus_ack <= 1'd0;
		basesoc_sram_bus_ack <= 1'd0;
		basesoc_interface_adr <= 14'd0;
		basesoc_interface_we <= 1'd0;
		basesoc_interface_dat_w <= 8'd0;
		basesoc_bus_wishbone_dat_r <= 32'd0;
		basesoc_bus_wishbone_ack <= 1'd0;
		basesoc_counter <= 2'd0;
		serial_tx <= 1'd1;
		basesoc_uart_phy_storage_full <= 32'd4947802;
		basesoc_uart_phy_re <= 1'd0;
		basesoc_uart_phy_sink_ready <= 1'd0;
		basesoc_uart_phy_uart_clk_txen <= 1'd0;
		basesoc_uart_phy_phase_accumulator_tx <= 32'd0;
		basesoc_uart_phy_tx_reg <= 8'd0;
		basesoc_uart_phy_tx_bitcount <= 4'd0;
		basesoc_uart_phy_tx_busy <= 1'd0;
		basesoc_uart_phy_source_valid <= 1'd0;
		basesoc_uart_phy_uart_clk_rxen <= 1'd0;
		basesoc_uart_phy_phase_accumulator_rx <= 32'd0;
		basesoc_uart_phy_rx_r <= 1'd0;
		basesoc_uart_phy_rx_reg <= 8'd0;
		basesoc_uart_phy_rx_bitcount <= 4'd0;
		basesoc_uart_phy_rx_busy <= 1'd0;
		basesoc_uart_tx_pending <= 1'd0;
		basesoc_uart_tx_old_trigger <= 1'd0;
		basesoc_uart_rx_pending <= 1'd0;
		basesoc_uart_rx_old_trigger <= 1'd0;
		basesoc_uart_storage_full <= 2'd0;
		basesoc_uart_re <= 1'd0;
		basesoc_uart_tx_fifo_level <= 5'd0;
		basesoc_uart_tx_fifo_produce <= 4'd0;
		basesoc_uart_tx_fifo_consume <= 4'd0;
		basesoc_uart_rx_fifo_level <= 5'd0;
		basesoc_uart_rx_fifo_produce <= 4'd0;
		basesoc_uart_rx_fifo_consume <= 4'd0;
		basesoc_timer0_load_storage_full <= 32'd0;
		basesoc_timer0_load_re <= 1'd0;
		basesoc_timer0_reload_storage_full <= 32'd0;
		basesoc_timer0_reload_re <= 1'd0;
		basesoc_timer0_en_storage_full <= 1'd0;
		basesoc_timer0_en_re <= 1'd0;
		basesoc_timer0_value_status <= 32'd0;
		basesoc_timer0_zero_pending <= 1'd0;
		basesoc_timer0_zero_old_trigger <= 1'd0;
		basesoc_timer0_eventmanager_storage_full <= 1'd0;
		basesoc_timer0_eventmanager_re <= 1'd0;
		basesoc_timer0_value <= 32'd0;
		dna_status <= 57'd0;
		dna_cnt <= 7'd0;
		temperature_status <= 12'd0;
		vccint_status <= 12'd0;
		vccaux_status <= 12'd0;
		vccbram_status <= 12'd0;
		bus_ack <= 1'd0;
		bitbang_storage_full <= 4'd0;
		bitbang_re <= 1'd0;
		bitbang_en_storage_full <= 1'd0;
		bitbang_en_re <= 1'd0;
		cs_n <= 1'd1;
		clk1 <= 1'd0;
		sr <= 32'd0;
		i <= 1'd0;
		miso <= 1'd0;
		counter <= 8'd0;
		storage_full <= 2'd0;
		re <= 1'd0;
		dfi_p0_rddata_valid <= 1'd0;
		dfi_p1_rddata_valid <= 1'd0;
		dfi_p2_rddata_valid <= 1'd0;
		dfi_p3_rddata_valid <= 1'd0;
		oe_dqs <= 1'd0;
		oe_dq <= 1'd0;
		n_rddata_en0 <= 1'd0;
		n_rddata_en1 <= 1'd0;
		n_rddata_en2 <= 1'd0;
		n_rddata_en3 <= 1'd0;
		n_rddata_en4 <= 1'd0;
		last_wrdata_en <= 4'd0;
		sdram_storage_full <= 4'd0;
		sdram_re <= 1'd0;
		sdram_phaseinjector0_command_storage_full <= 6'd0;
		sdram_phaseinjector0_command_re <= 1'd0;
		sdram_phaseinjector0_address_storage_full <= 14'd0;
		sdram_phaseinjector0_address_re <= 1'd0;
		sdram_phaseinjector0_baddress_storage_full <= 3'd0;
		sdram_phaseinjector0_baddress_re <= 1'd0;
		sdram_phaseinjector0_wrdata_storage_full <= 32'd0;
		sdram_phaseinjector0_wrdata_re <= 1'd0;
		sdram_phaseinjector0_status <= 32'd0;
		sdram_phaseinjector1_command_storage_full <= 6'd0;
		sdram_phaseinjector1_command_re <= 1'd0;
		sdram_phaseinjector1_address_storage_full <= 14'd0;
		sdram_phaseinjector1_address_re <= 1'd0;
		sdram_phaseinjector1_baddress_storage_full <= 3'd0;
		sdram_phaseinjector1_baddress_re <= 1'd0;
		sdram_phaseinjector1_wrdata_storage_full <= 32'd0;
		sdram_phaseinjector1_wrdata_re <= 1'd0;
		sdram_phaseinjector1_status <= 32'd0;
		sdram_phaseinjector2_command_storage_full <= 6'd0;
		sdram_phaseinjector2_command_re <= 1'd0;
		sdram_phaseinjector2_address_storage_full <= 14'd0;
		sdram_phaseinjector2_address_re <= 1'd0;
		sdram_phaseinjector2_baddress_storage_full <= 3'd0;
		sdram_phaseinjector2_baddress_re <= 1'd0;
		sdram_phaseinjector2_wrdata_storage_full <= 32'd0;
		sdram_phaseinjector2_wrdata_re <= 1'd0;
		sdram_phaseinjector2_status <= 32'd0;
		sdram_phaseinjector3_command_storage_full <= 6'd0;
		sdram_phaseinjector3_command_re <= 1'd0;
		sdram_phaseinjector3_address_storage_full <= 14'd0;
		sdram_phaseinjector3_address_re <= 1'd0;
		sdram_phaseinjector3_baddress_storage_full <= 3'd0;
		sdram_phaseinjector3_baddress_re <= 1'd0;
		sdram_phaseinjector3_wrdata_storage_full <= 32'd0;
		sdram_phaseinjector3_wrdata_re <= 1'd0;
		sdram_phaseinjector3_status <= 32'd0;
		sdram_dfi_p0_cas_n <= 1'd1;
		sdram_dfi_p0_ras_n <= 1'd1;
		sdram_dfi_p0_we_n <= 1'd1;
		sdram_dfi_p0_wrdata_en <= 1'd0;
		sdram_dfi_p0_rddata_en <= 1'd0;
		sdram_dfi_p1_cas_n <= 1'd1;
		sdram_dfi_p1_ras_n <= 1'd1;
		sdram_dfi_p1_we_n <= 1'd1;
		sdram_dfi_p1_wrdata_en <= 1'd0;
		sdram_dfi_p1_rddata_en <= 1'd0;
		sdram_dfi_p2_cas_n <= 1'd1;
		sdram_dfi_p2_ras_n <= 1'd1;
		sdram_dfi_p2_we_n <= 1'd1;
		sdram_dfi_p2_wrdata_en <= 1'd0;
		sdram_dfi_p2_rddata_en <= 1'd0;
		sdram_dfi_p3_cas_n <= 1'd1;
		sdram_dfi_p3_ras_n <= 1'd1;
		sdram_dfi_p3_we_n <= 1'd1;
		sdram_dfi_p3_wrdata_en <= 1'd0;
		sdram_dfi_p3_rddata_en <= 1'd0;
		sdram_seq_done <= 1'd0;
		sdram_counter <= 5'd0;
		sdram_count <= 10'd782;
		sdram_bankmachine0_level <= 4'd0;
		sdram_bankmachine0_produce <= 3'd0;
		sdram_bankmachine0_consume <= 3'd0;
		sdram_bankmachine0_has_openrow <= 1'd0;
		sdram_bankmachine0_count <= 3'd5;
		sdram_bankmachine1_level <= 4'd0;
		sdram_bankmachine1_produce <= 3'd0;
		sdram_bankmachine1_consume <= 3'd0;
		sdram_bankmachine1_has_openrow <= 1'd0;
		sdram_bankmachine1_count <= 3'd5;
		sdram_bankmachine2_level <= 4'd0;
		sdram_bankmachine2_produce <= 3'd0;
		sdram_bankmachine2_consume <= 3'd0;
		sdram_bankmachine2_has_openrow <= 1'd0;
		sdram_bankmachine2_count <= 3'd5;
		sdram_bankmachine3_level <= 4'd0;
		sdram_bankmachine3_produce <= 3'd0;
		sdram_bankmachine3_consume <= 3'd0;
		sdram_bankmachine3_has_openrow <= 1'd0;
		sdram_bankmachine3_count <= 3'd5;
		sdram_bankmachine4_level <= 4'd0;
		sdram_bankmachine4_produce <= 3'd0;
		sdram_bankmachine4_consume <= 3'd0;
		sdram_bankmachine4_has_openrow <= 1'd0;
		sdram_bankmachine4_count <= 3'd5;
		sdram_bankmachine5_level <= 4'd0;
		sdram_bankmachine5_produce <= 3'd0;
		sdram_bankmachine5_consume <= 3'd0;
		sdram_bankmachine5_has_openrow <= 1'd0;
		sdram_bankmachine5_count <= 3'd5;
		sdram_bankmachine6_level <= 4'd0;
		sdram_bankmachine6_produce <= 3'd0;
		sdram_bankmachine6_consume <= 3'd0;
		sdram_bankmachine6_has_openrow <= 1'd0;
		sdram_bankmachine6_count <= 3'd5;
		sdram_bankmachine7_level <= 4'd0;
		sdram_bankmachine7_produce <= 3'd0;
		sdram_bankmachine7_consume <= 3'd0;
		sdram_bankmachine7_has_openrow <= 1'd0;
		sdram_bankmachine7_count <= 3'd5;
		sdram_choose_cmd_grant <= 3'd0;
		sdram_choose_req_grant <= 3'd0;
		sdram_time0 <= 5'd0;
		sdram_time1 <= 4'd0;
		sdram_bandwidth_nreads_status <= 24'd0;
		sdram_bandwidth_nwrites_status <= 24'd0;
		sdram_bandwidth_cmd_valid <= 1'd0;
		sdram_bandwidth_cmd_ready <= 1'd0;
		sdram_bandwidth_cmd_is_read <= 1'd0;
		sdram_bandwidth_cmd_is_write <= 1'd0;
		sdram_bandwidth_counter <= 24'd0;
		sdram_bandwidth_period <= 1'd0;
		sdram_bandwidth_nreads <= 24'd0;
		sdram_bandwidth_nwrites <= 24'd0;
		sdram_bandwidth_nreads_r <= 24'd0;
		sdram_bandwidth_nwrites_r <= 24'd0;
		adr_offset_r <= 2'd0;
		refresher_state <= 2'd0;
		bankmachine0_state <= 3'd0;
		bankmachine1_state <= 3'd0;
		bankmachine2_state <= 3'd0;
		bankmachine3_state <= 3'd0;
		bankmachine4_state <= 3'd0;
		bankmachine5_state <= 3'd0;
		bankmachine6_state <= 3'd0;
		bankmachine7_state <= 3'd0;
		multiplexer_state <= 4'd0;
		new_master_wdata_ready0 <= 1'd0;
		new_master_wdata_ready1 <= 1'd0;
		new_master_wdata_ready2 <= 1'd0;
		new_master_rdata_valid0 <= 1'd0;
		new_master_rdata_valid1 <= 1'd0;
		new_master_rdata_valid2 <= 1'd0;
		new_master_rdata_valid3 <= 1'd0;
		new_master_rdata_valid4 <= 1'd0;
		new_master_rdata_valid5 <= 1'd0;
		new_master_rdata_valid6 <= 1'd0;
		fullmemorywe_state <= 3'd0;
		litedramwishbonebridge_state <= 2'd0;
		basesoc_grant <= 1'd0;
		basesoc_slave_sel_r <= 5'd0;
		basesoc_interface0_bank_bus_dat_r <= 8'd0;
		basesoc_sel_r <= 1'd0;
		basesoc_interface1_bank_bus_dat_r <= 8'd0;
		basesoc_interface2_bank_bus_dat_r <= 8'd0;
		basesoc_interface3_bank_bus_dat_r <= 8'd0;
		basesoc_interface4_bank_bus_dat_r <= 8'd0;
		basesoc_interface5_bank_bus_dat_r <= 8'd0;
		basesoc_interface6_bank_bus_dat_r <= 8'd0;
	end
	regs0 <= serial_rx;
	regs1 <= regs0;
end

lm32_cpu #(
	.eba_reset(32'h00000000)
) lm32_cpu (
	.D_ACK_I(basesoc_dbus_ack),
	.D_DAT_I(basesoc_dbus_dat_r),
	.D_ERR_I(basesoc_dbus_err),
	.D_RTY_I(1'd0),
	.I_ACK_I(basesoc_ibus_ack),
	.I_DAT_I(basesoc_ibus_dat_r),
	.I_ERR_I(basesoc_ibus_err),
	.I_RTY_I(1'd0),
	.clk_i(sys_clk),
	.interrupt(basesoc_interrupt),
	.rst_i(sys_rst),
	.D_ADR_O(basesoc_d_adr_o),
	.D_BTE_O(basesoc_dbus_bte),
	.D_CTI_O(basesoc_dbus_cti),
	.D_CYC_O(basesoc_dbus_cyc),
	.D_DAT_O(basesoc_dbus_dat_w),
	.D_SEL_O(basesoc_dbus_sel),
	.D_STB_O(basesoc_dbus_stb),
	.D_WE_O(basesoc_dbus_we),
	.I_ADR_O(basesoc_i_adr_o),
	.I_BTE_O(basesoc_ibus_bte),
	.I_CTI_O(basesoc_ibus_cti),
	.I_CYC_O(basesoc_ibus_cyc),
	.I_DAT_O(basesoc_ibus_dat_w),
	.I_SEL_O(basesoc_ibus_sel),
	.I_STB_O(basesoc_ibus_stb),
	.I_WE_O(basesoc_ibus_we)
);

reg [31:0] mem[0:8191];
reg [31:0] memdat;
always @(posedge sys_clk) begin
	memdat <= mem[basesoc_rom_adr];
end

assign basesoc_rom_dat_r = memdat;

initial begin
	$readmemh("mem.init", mem);
end

reg [31:0] mem_1[0:8191];
reg [12:0] memadr;
always @(posedge sys_clk) begin
	if (basesoc_sram_we[0])
		mem_1[basesoc_sram_adr][7:0] <= basesoc_sram_dat_w[7:0];
	if (basesoc_sram_we[1])
		mem_1[basesoc_sram_adr][15:8] <= basesoc_sram_dat_w[15:8];
	if (basesoc_sram_we[2])
		mem_1[basesoc_sram_adr][23:16] <= basesoc_sram_dat_w[23:16];
	if (basesoc_sram_we[3])
		mem_1[basesoc_sram_adr][31:24] <= basesoc_sram_dat_w[31:24];
	memadr <= basesoc_sram_adr;
end

assign basesoc_sram_dat_r = mem_1[memadr];

reg [9:0] storage_1[0:15];
reg [3:0] memadr_1;
always @(posedge sys_clk) begin
	if (basesoc_uart_tx_fifo_wrport_we)
		storage_1[basesoc_uart_tx_fifo_wrport_adr] <= basesoc_uart_tx_fifo_wrport_dat_w;
	memadr_1 <= basesoc_uart_tx_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign basesoc_uart_tx_fifo_wrport_dat_r = storage_1[memadr_1];
assign basesoc_uart_tx_fifo_rdport_dat_r = storage_1[basesoc_uart_tx_fifo_rdport_adr];

reg [9:0] storage_2[0:15];
reg [3:0] memadr_2;
always @(posedge sys_clk) begin
	if (basesoc_uart_rx_fifo_wrport_we)
		storage_2[basesoc_uart_rx_fifo_wrport_adr] <= basesoc_uart_rx_fifo_wrport_dat_w;
	memadr_2 <= basesoc_uart_rx_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign basesoc_uart_rx_fifo_wrport_dat_r = storage_2[memadr_2];
assign basesoc_uart_rx_fifo_rdport_dat_r = storage_2[basesoc_uart_rx_fifo_rdport_adr];

reg [7:0] mem_2[0:7];
reg [7:0] memdat_1;
always @(posedge sys_clk) begin
	memdat_1 <= mem_2[basesoc_adr];
end

assign basesoc_dat_r = memdat_1;

initial begin
	$readmemh("mem_2.init", mem_2);
end

PLLE2_BASE #(
	.CLKFBOUT_MULT(5'd16),
	.CLKIN1_PERIOD(10.0),
	.CLKOUT0_DIVIDE(5'd16),
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_DIVIDE(3'd4),
	.CLKOUT1_PHASE(0.0),
	.CLKOUT2_DIVIDE(3'd4),
	.CLKOUT2_PHASE(90.0),
	.CLKOUT3_DIVIDE(4'd8),
	.CLKOUT3_PHASE(0.0),
	.CLKOUT4_DIVIDE(6'd32),
	.CLKOUT4_PHASE(0.0),
	.DIVCLK_DIVIDE(1'd1),
	.REF_JITTER1(0.01),
	.STARTUP_WAIT("FALSE")
) PLLE2_BASE (
	.CLKFBIN(pll_fb),
	.CLKIN1(clk100),
	.CLKFBOUT(pll_fb),
	.CLKOUT0(pll_sys),
	.CLKOUT1(pll_sys4x),
	.CLKOUT2(pll_sys4x_dqs),
	.CLKOUT3(pll_clk200),
	.CLKOUT4(pll_clk50),
	.LOCKED(pll_locked)
);

BUFG BUFG(
	.I(pll_sys),
	.O(sys_clk)
);

BUFG BUFG_1(
	.I(pll_sys4x),
	.O(sys4x_clk)
);

BUFG BUFG_2(
	.I(pll_sys4x_dqs),
	.O(sys4x_dqs_clk)
);

BUFG BUFG_3(
	.I(pll_clk200),
	.O(clk200_clk)
);

BUFG BUFG_4(
	.I(pll_clk50),
	.O(clk50_clk)
);

IDELAYCTRL IDELAYCTRL(
	.REFCLK(clk200_clk),
	.RST(ic_reset)
);

BUFR #(
	.BUFR_DIVIDE("4")
) BUFR (
	.CE(1'd1),
	.CLR(1'd0),
	.I(clk100),
	.O(eth_clk)
);

BUFG BUFG_5(
	.I(eth_clk),
	.O(eth_ref_clk)
);

DNA_PORT DNA_PORT(
	.CLK(dna_cnt[0]),
	.DIN(dna_status[56]),
	.READ((dna_cnt < 2'd2)),
	.SHIFT(1'd1),
	.DOUT(dna_do)
);

XADC #(
	.INIT_40(16'd36864),
	.INIT_41(14'd12016),
	.INIT_42(11'd1024),
	.INIT_48(15'd18177),
	.INIT_49(4'd15),
	.INIT_4A(15'd18176),
	.INIT_4B(1'd0),
	.INIT_4C(1'd0),
	.INIT_4D(1'd0),
	.INIT_4E(1'd0),
	.INIT_4F(1'd0),
	.INIT_50(16'd46573),
	.INIT_51(15'd22937),
	.INIT_52(16'd41287),
	.INIT_53(16'd56797),
	.INIT_54(16'd43322),
	.INIT_55(15'd20753),
	.INIT_56(16'd37355),
	.INIT_57(16'd44622),
	.INIT_58(15'd22937),
	.INIT_5C(15'd20753)
) XADC (
	.CONVST(1'd0),
	.CONVSTCLK(1'd0),
	.DADDR(channel),
	.DCLK(sys_clk),
	.DEN(eoc),
	.DI(1'd0),
	.DWE(1'd0),
	.RESET(sys_rst),
	.VAUXN(1'd0),
	.VAUXP(1'd1),
	.VN(1'd0),
	.VP(1'd1),
	.ALM(alarm),
	.BUSY(busy),
	.CHANNEL(channel),
	.DO(data),
	.DRDY(drdy),
	.EOC(eoc),
	.EOS(eos),
	.OT(ot)
);

STARTUPE2 STARTUPE2(
	.CLK(1'd0),
	.GSR(1'd0),
	.GTS(1'd0),
	.KEYCLEARB(1'd0),
	.PACK(1'd0),
	.USRCCLKO(clk0),
	.USRCCLKTS(1'd0),
	.USRDONEO(1'd1),
	.USRDONETS(1'd1)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(1'd0),
	.D2(1'd1),
	.D3(1'd0),
	.D4(1'd1),
	.D5(1'd0),
	.D6(1'd1),
	.D7(1'd0),
	.D8(1'd1),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(sd_clk_se)
);

OBUFDS OBUFDS(
	.I(sd_clk_se),
	.O(ddram_clk_p),
	.OB(ddram_clk_n)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_1 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_address[0]),
	.D2(dfi_p0_address[0]),
	.D3(dfi_p1_address[0]),
	.D4(dfi_p1_address[0]),
	.D5(dfi_p2_address[0]),
	.D6(dfi_p2_address[0]),
	.D7(dfi_p3_address[0]),
	.D8(dfi_p3_address[0]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[0])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_2 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_address[1]),
	.D2(dfi_p0_address[1]),
	.D3(dfi_p1_address[1]),
	.D4(dfi_p1_address[1]),
	.D5(dfi_p2_address[1]),
	.D6(dfi_p2_address[1]),
	.D7(dfi_p3_address[1]),
	.D8(dfi_p3_address[1]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[1])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_3 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_address[2]),
	.D2(dfi_p0_address[2]),
	.D3(dfi_p1_address[2]),
	.D4(dfi_p1_address[2]),
	.D5(dfi_p2_address[2]),
	.D6(dfi_p2_address[2]),
	.D7(dfi_p3_address[2]),
	.D8(dfi_p3_address[2]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[2])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_4 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_address[3]),
	.D2(dfi_p0_address[3]),
	.D3(dfi_p1_address[3]),
	.D4(dfi_p1_address[3]),
	.D5(dfi_p2_address[3]),
	.D6(dfi_p2_address[3]),
	.D7(dfi_p3_address[3]),
	.D8(dfi_p3_address[3]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[3])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_5 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_address[4]),
	.D2(dfi_p0_address[4]),
	.D3(dfi_p1_address[4]),
	.D4(dfi_p1_address[4]),
	.D5(dfi_p2_address[4]),
	.D6(dfi_p2_address[4]),
	.D7(dfi_p3_address[4]),
	.D8(dfi_p3_address[4]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[4])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_6 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_address[5]),
	.D2(dfi_p0_address[5]),
	.D3(dfi_p1_address[5]),
	.D4(dfi_p1_address[5]),
	.D5(dfi_p2_address[5]),
	.D6(dfi_p2_address[5]),
	.D7(dfi_p3_address[5]),
	.D8(dfi_p3_address[5]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[5])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_7 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_address[6]),
	.D2(dfi_p0_address[6]),
	.D3(dfi_p1_address[6]),
	.D4(dfi_p1_address[6]),
	.D5(dfi_p2_address[6]),
	.D6(dfi_p2_address[6]),
	.D7(dfi_p3_address[6]),
	.D8(dfi_p3_address[6]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[6])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_8 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_address[7]),
	.D2(dfi_p0_address[7]),
	.D3(dfi_p1_address[7]),
	.D4(dfi_p1_address[7]),
	.D5(dfi_p2_address[7]),
	.D6(dfi_p2_address[7]),
	.D7(dfi_p3_address[7]),
	.D8(dfi_p3_address[7]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[7])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_9 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_address[8]),
	.D2(dfi_p0_address[8]),
	.D3(dfi_p1_address[8]),
	.D4(dfi_p1_address[8]),
	.D5(dfi_p2_address[8]),
	.D6(dfi_p2_address[8]),
	.D7(dfi_p3_address[8]),
	.D8(dfi_p3_address[8]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[8])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_10 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_address[9]),
	.D2(dfi_p0_address[9]),
	.D3(dfi_p1_address[9]),
	.D4(dfi_p1_address[9]),
	.D5(dfi_p2_address[9]),
	.D6(dfi_p2_address[9]),
	.D7(dfi_p3_address[9]),
	.D8(dfi_p3_address[9]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[9])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_11 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_address[10]),
	.D2(dfi_p0_address[10]),
	.D3(dfi_p1_address[10]),
	.D4(dfi_p1_address[10]),
	.D5(dfi_p2_address[10]),
	.D6(dfi_p2_address[10]),
	.D7(dfi_p3_address[10]),
	.D8(dfi_p3_address[10]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[10])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_12 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_address[11]),
	.D2(dfi_p0_address[11]),
	.D3(dfi_p1_address[11]),
	.D4(dfi_p1_address[11]),
	.D5(dfi_p2_address[11]),
	.D6(dfi_p2_address[11]),
	.D7(dfi_p3_address[11]),
	.D8(dfi_p3_address[11]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[11])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_13 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_address[12]),
	.D2(dfi_p0_address[12]),
	.D3(dfi_p1_address[12]),
	.D4(dfi_p1_address[12]),
	.D5(dfi_p2_address[12]),
	.D6(dfi_p2_address[12]),
	.D7(dfi_p3_address[12]),
	.D8(dfi_p3_address[12]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[12])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_14 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_address[13]),
	.D2(dfi_p0_address[13]),
	.D3(dfi_p1_address[13]),
	.D4(dfi_p1_address[13]),
	.D5(dfi_p2_address[13]),
	.D6(dfi_p2_address[13]),
	.D7(dfi_p3_address[13]),
	.D8(dfi_p3_address[13]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[13])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_15 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_bank[0]),
	.D2(dfi_p0_bank[0]),
	.D3(dfi_p1_bank[0]),
	.D4(dfi_p1_bank[0]),
	.D5(dfi_p2_bank[0]),
	.D6(dfi_p2_bank[0]),
	.D7(dfi_p3_bank[0]),
	.D8(dfi_p3_bank[0]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_ba[0])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_16 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_bank[1]),
	.D2(dfi_p0_bank[1]),
	.D3(dfi_p1_bank[1]),
	.D4(dfi_p1_bank[1]),
	.D5(dfi_p2_bank[1]),
	.D6(dfi_p2_bank[1]),
	.D7(dfi_p3_bank[1]),
	.D8(dfi_p3_bank[1]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_ba[1])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_17 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_bank[2]),
	.D2(dfi_p0_bank[2]),
	.D3(dfi_p1_bank[2]),
	.D4(dfi_p1_bank[2]),
	.D5(dfi_p2_bank[2]),
	.D6(dfi_p2_bank[2]),
	.D7(dfi_p3_bank[2]),
	.D8(dfi_p3_bank[2]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_ba[2])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_18 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_ras_n),
	.D2(dfi_p0_ras_n),
	.D3(dfi_p1_ras_n),
	.D4(dfi_p1_ras_n),
	.D5(dfi_p2_ras_n),
	.D6(dfi_p2_ras_n),
	.D7(dfi_p3_ras_n),
	.D8(dfi_p3_ras_n),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_ras_n)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_19 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_cas_n),
	.D2(dfi_p0_cas_n),
	.D3(dfi_p1_cas_n),
	.D4(dfi_p1_cas_n),
	.D5(dfi_p2_cas_n),
	.D6(dfi_p2_cas_n),
	.D7(dfi_p3_cas_n),
	.D8(dfi_p3_cas_n),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_cas_n)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_20 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_we_n),
	.D2(dfi_p0_we_n),
	.D3(dfi_p1_we_n),
	.D4(dfi_p1_we_n),
	.D5(dfi_p2_we_n),
	.D6(dfi_p2_we_n),
	.D7(dfi_p3_we_n),
	.D8(dfi_p3_we_n),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_we_n)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_21 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_cke),
	.D2(dfi_p0_cke),
	.D3(dfi_p1_cke),
	.D4(dfi_p1_cke),
	.D5(dfi_p2_cke),
	.D6(dfi_p2_cke),
	.D7(dfi_p3_cke),
	.D8(dfi_p3_cke),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_cke)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_22 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_odt),
	.D2(dfi_p0_odt),
	.D3(dfi_p1_odt),
	.D4(dfi_p1_odt),
	.D5(dfi_p2_odt),
	.D6(dfi_p2_odt),
	.D7(dfi_p3_odt),
	.D8(dfi_p3_odt),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_odt)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_23 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_reset_n),
	.D2(dfi_p0_reset_n),
	.D3(dfi_p1_reset_n),
	.D4(dfi_p1_reset_n),
	.D5(dfi_p2_reset_n),
	.D6(dfi_p2_reset_n),
	.D7(dfi_p3_reset_n),
	.D8(dfi_p3_reset_n),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_reset_n)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_24 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_cs_n),
	.D2(dfi_p0_cs_n),
	.D3(dfi_p1_cs_n),
	.D4(dfi_p1_cs_n),
	.D5(dfi_p2_cs_n),
	.D6(dfi_p2_cs_n),
	.D7(dfi_p3_cs_n),
	.D8(dfi_p3_cs_n),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_cs_n)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_25 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata_mask[0]),
	.D2(dfi_p0_wrdata_mask[2]),
	.D3(dfi_p1_wrdata_mask[0]),
	.D4(dfi_p1_wrdata_mask[2]),
	.D5(dfi_p2_wrdata_mask[0]),
	.D6(dfi_p2_wrdata_mask[2]),
	.D7(dfi_p3_wrdata_mask[0]),
	.D8(dfi_p3_wrdata_mask[2]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_dm[0])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_26 (
	.CLK(sys4x_dqs_clk),
	.CLKDIV(sys_clk),
	.D1(dqs_serdes_pattern[0]),
	.D2(dqs_serdes_pattern[1]),
	.D3(dqs_serdes_pattern[2]),
	.D4(dqs_serdes_pattern[3]),
	.D5(dqs_serdes_pattern[4]),
	.D6(dqs_serdes_pattern[5]),
	.D7(dqs_serdes_pattern[6]),
	.D8(dqs_serdes_pattern[7]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dqs)),
	.TCE(1'd1),
	.OQ(dqs0),
	.TQ(dqs_t0)
);

OBUFTDS OBUFTDS(
	.I(dqs0),
	.T(dqs_t0),
	.O(ddram_dqs_p[0]),
	.OB(ddram_dqs_n[0])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_27 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata_mask[1]),
	.D2(dfi_p0_wrdata_mask[3]),
	.D3(dfi_p1_wrdata_mask[1]),
	.D4(dfi_p1_wrdata_mask[3]),
	.D5(dfi_p2_wrdata_mask[1]),
	.D6(dfi_p2_wrdata_mask[3]),
	.D7(dfi_p3_wrdata_mask[1]),
	.D8(dfi_p3_wrdata_mask[3]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_dm[1])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_28 (
	.CLK(sys4x_dqs_clk),
	.CLKDIV(sys_clk),
	.D1(dqs_serdes_pattern[0]),
	.D2(dqs_serdes_pattern[1]),
	.D3(dqs_serdes_pattern[2]),
	.D4(dqs_serdes_pattern[3]),
	.D5(dqs_serdes_pattern[4]),
	.D6(dqs_serdes_pattern[5]),
	.D7(dqs_serdes_pattern[6]),
	.D8(dqs_serdes_pattern[7]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dqs)),
	.TCE(1'd1),
	.OQ(dqs1),
	.TQ(dqs_t1)
);

OBUFTDS OBUFTDS_1(
	.I(dqs1),
	.T(dqs_t1),
	.O(ddram_dqs_p[1]),
	.OB(ddram_dqs_n[1])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_29 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[0]),
	.D2(dfi_p0_wrdata[16]),
	.D3(dfi_p1_wrdata[0]),
	.D4(dfi_p1_wrdata[16]),
	.D5(dfi_p2_wrdata[0]),
	.D6(dfi_p2_wrdata[16]),
	.D7(dfi_p3_wrdata[0]),
	.D8(dfi_p3_wrdata[16]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o0),
	.TQ(dq_t0)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2 (
	.BITSLIP((storage[0] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed0),
	.RST((sys_rst | (storage[0] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[16]),
	.Q2(dfi_p3_rddata[0]),
	.Q3(dfi_p2_rddata[16]),
	.Q4(dfi_p2_rddata[0]),
	.Q5(dfi_p1_rddata[16]),
	.Q6(dfi_p1_rddata[0]),
	.Q7(dfi_p0_rddata[16]),
	.Q8(dfi_p0_rddata[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2 (
	.C(sys_clk),
	.CE((storage[0] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay0),
	.INC(1'd1),
	.LD((storage[0] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed0)
);

IOBUF IOBUF(
	.I(dq_o0),
	.T(dq_t0),
	.IO(ddram_dq[0]),
	.O(dq_i_nodelay0)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_30 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[1]),
	.D2(dfi_p0_wrdata[17]),
	.D3(dfi_p1_wrdata[1]),
	.D4(dfi_p1_wrdata[17]),
	.D5(dfi_p2_wrdata[1]),
	.D6(dfi_p2_wrdata[17]),
	.D7(dfi_p3_wrdata[1]),
	.D8(dfi_p3_wrdata[17]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o1),
	.TQ(dq_t1)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_1 (
	.BITSLIP((storage[0] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed1),
	.RST((sys_rst | (storage[0] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[17]),
	.Q2(dfi_p3_rddata[1]),
	.Q3(dfi_p2_rddata[17]),
	.Q4(dfi_p2_rddata[1]),
	.Q5(dfi_p1_rddata[17]),
	.Q6(dfi_p1_rddata[1]),
	.Q7(dfi_p0_rddata[17]),
	.Q8(dfi_p0_rddata[1])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_1 (
	.C(sys_clk),
	.CE((storage[0] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay1),
	.INC(1'd1),
	.LD((storage[0] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed1)
);

IOBUF IOBUF_1(
	.I(dq_o1),
	.T(dq_t1),
	.IO(ddram_dq[1]),
	.O(dq_i_nodelay1)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_31 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[2]),
	.D2(dfi_p0_wrdata[18]),
	.D3(dfi_p1_wrdata[2]),
	.D4(dfi_p1_wrdata[18]),
	.D5(dfi_p2_wrdata[2]),
	.D6(dfi_p2_wrdata[18]),
	.D7(dfi_p3_wrdata[2]),
	.D8(dfi_p3_wrdata[18]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o2),
	.TQ(dq_t2)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_2 (
	.BITSLIP((storage[0] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed2),
	.RST((sys_rst | (storage[0] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[18]),
	.Q2(dfi_p3_rddata[2]),
	.Q3(dfi_p2_rddata[18]),
	.Q4(dfi_p2_rddata[2]),
	.Q5(dfi_p1_rddata[18]),
	.Q6(dfi_p1_rddata[2]),
	.Q7(dfi_p0_rddata[18]),
	.Q8(dfi_p0_rddata[2])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_2 (
	.C(sys_clk),
	.CE((storage[0] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay2),
	.INC(1'd1),
	.LD((storage[0] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed2)
);

IOBUF IOBUF_2(
	.I(dq_o2),
	.T(dq_t2),
	.IO(ddram_dq[2]),
	.O(dq_i_nodelay2)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_32 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[3]),
	.D2(dfi_p0_wrdata[19]),
	.D3(dfi_p1_wrdata[3]),
	.D4(dfi_p1_wrdata[19]),
	.D5(dfi_p2_wrdata[3]),
	.D6(dfi_p2_wrdata[19]),
	.D7(dfi_p3_wrdata[3]),
	.D8(dfi_p3_wrdata[19]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o3),
	.TQ(dq_t3)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_3 (
	.BITSLIP((storage[0] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed3),
	.RST((sys_rst | (storage[0] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[19]),
	.Q2(dfi_p3_rddata[3]),
	.Q3(dfi_p2_rddata[19]),
	.Q4(dfi_p2_rddata[3]),
	.Q5(dfi_p1_rddata[19]),
	.Q6(dfi_p1_rddata[3]),
	.Q7(dfi_p0_rddata[19]),
	.Q8(dfi_p0_rddata[3])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_3 (
	.C(sys_clk),
	.CE((storage[0] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay3),
	.INC(1'd1),
	.LD((storage[0] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed3)
);

IOBUF IOBUF_3(
	.I(dq_o3),
	.T(dq_t3),
	.IO(ddram_dq[3]),
	.O(dq_i_nodelay3)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_33 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[4]),
	.D2(dfi_p0_wrdata[20]),
	.D3(dfi_p1_wrdata[4]),
	.D4(dfi_p1_wrdata[20]),
	.D5(dfi_p2_wrdata[4]),
	.D6(dfi_p2_wrdata[20]),
	.D7(dfi_p3_wrdata[4]),
	.D8(dfi_p3_wrdata[20]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o4),
	.TQ(dq_t4)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_4 (
	.BITSLIP((storage[0] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed4),
	.RST((sys_rst | (storage[0] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[20]),
	.Q2(dfi_p3_rddata[4]),
	.Q3(dfi_p2_rddata[20]),
	.Q4(dfi_p2_rddata[4]),
	.Q5(dfi_p1_rddata[20]),
	.Q6(dfi_p1_rddata[4]),
	.Q7(dfi_p0_rddata[20]),
	.Q8(dfi_p0_rddata[4])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_4 (
	.C(sys_clk),
	.CE((storage[0] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay4),
	.INC(1'd1),
	.LD((storage[0] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed4)
);

IOBUF IOBUF_4(
	.I(dq_o4),
	.T(dq_t4),
	.IO(ddram_dq[4]),
	.O(dq_i_nodelay4)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_34 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[5]),
	.D2(dfi_p0_wrdata[21]),
	.D3(dfi_p1_wrdata[5]),
	.D4(dfi_p1_wrdata[21]),
	.D5(dfi_p2_wrdata[5]),
	.D6(dfi_p2_wrdata[21]),
	.D7(dfi_p3_wrdata[5]),
	.D8(dfi_p3_wrdata[21]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o5),
	.TQ(dq_t5)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_5 (
	.BITSLIP((storage[0] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed5),
	.RST((sys_rst | (storage[0] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[21]),
	.Q2(dfi_p3_rddata[5]),
	.Q3(dfi_p2_rddata[21]),
	.Q4(dfi_p2_rddata[5]),
	.Q5(dfi_p1_rddata[21]),
	.Q6(dfi_p1_rddata[5]),
	.Q7(dfi_p0_rddata[21]),
	.Q8(dfi_p0_rddata[5])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_5 (
	.C(sys_clk),
	.CE((storage[0] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay5),
	.INC(1'd1),
	.LD((storage[0] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed5)
);

IOBUF IOBUF_5(
	.I(dq_o5),
	.T(dq_t5),
	.IO(ddram_dq[5]),
	.O(dq_i_nodelay5)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_35 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[6]),
	.D2(dfi_p0_wrdata[22]),
	.D3(dfi_p1_wrdata[6]),
	.D4(dfi_p1_wrdata[22]),
	.D5(dfi_p2_wrdata[6]),
	.D6(dfi_p2_wrdata[22]),
	.D7(dfi_p3_wrdata[6]),
	.D8(dfi_p3_wrdata[22]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o6),
	.TQ(dq_t6)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_6 (
	.BITSLIP((storage[0] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed6),
	.RST((sys_rst | (storage[0] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[22]),
	.Q2(dfi_p3_rddata[6]),
	.Q3(dfi_p2_rddata[22]),
	.Q4(dfi_p2_rddata[6]),
	.Q5(dfi_p1_rddata[22]),
	.Q6(dfi_p1_rddata[6]),
	.Q7(dfi_p0_rddata[22]),
	.Q8(dfi_p0_rddata[6])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_6 (
	.C(sys_clk),
	.CE((storage[0] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay6),
	.INC(1'd1),
	.LD((storage[0] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed6)
);

IOBUF IOBUF_6(
	.I(dq_o6),
	.T(dq_t6),
	.IO(ddram_dq[6]),
	.O(dq_i_nodelay6)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_36 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[7]),
	.D2(dfi_p0_wrdata[23]),
	.D3(dfi_p1_wrdata[7]),
	.D4(dfi_p1_wrdata[23]),
	.D5(dfi_p2_wrdata[7]),
	.D6(dfi_p2_wrdata[23]),
	.D7(dfi_p3_wrdata[7]),
	.D8(dfi_p3_wrdata[23]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o7),
	.TQ(dq_t7)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_7 (
	.BITSLIP((storage[0] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed7),
	.RST((sys_rst | (storage[0] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[23]),
	.Q2(dfi_p3_rddata[7]),
	.Q3(dfi_p2_rddata[23]),
	.Q4(dfi_p2_rddata[7]),
	.Q5(dfi_p1_rddata[23]),
	.Q6(dfi_p1_rddata[7]),
	.Q7(dfi_p0_rddata[23]),
	.Q8(dfi_p0_rddata[7])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_7 (
	.C(sys_clk),
	.CE((storage[0] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay7),
	.INC(1'd1),
	.LD((storage[0] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed7)
);

IOBUF IOBUF_7(
	.I(dq_o7),
	.T(dq_t7),
	.IO(ddram_dq[7]),
	.O(dq_i_nodelay7)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_37 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[8]),
	.D2(dfi_p0_wrdata[24]),
	.D3(dfi_p1_wrdata[8]),
	.D4(dfi_p1_wrdata[24]),
	.D5(dfi_p2_wrdata[8]),
	.D6(dfi_p2_wrdata[24]),
	.D7(dfi_p3_wrdata[8]),
	.D8(dfi_p3_wrdata[24]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o8),
	.TQ(dq_t8)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_8 (
	.BITSLIP((storage[1] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed8),
	.RST((sys_rst | (storage[1] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[24]),
	.Q2(dfi_p3_rddata[8]),
	.Q3(dfi_p2_rddata[24]),
	.Q4(dfi_p2_rddata[8]),
	.Q5(dfi_p1_rddata[24]),
	.Q6(dfi_p1_rddata[8]),
	.Q7(dfi_p0_rddata[24]),
	.Q8(dfi_p0_rddata[8])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_8 (
	.C(sys_clk),
	.CE((storage[1] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay8),
	.INC(1'd1),
	.LD((storage[1] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed8)
);

IOBUF IOBUF_8(
	.I(dq_o8),
	.T(dq_t8),
	.IO(ddram_dq[8]),
	.O(dq_i_nodelay8)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_38 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[9]),
	.D2(dfi_p0_wrdata[25]),
	.D3(dfi_p1_wrdata[9]),
	.D4(dfi_p1_wrdata[25]),
	.D5(dfi_p2_wrdata[9]),
	.D6(dfi_p2_wrdata[25]),
	.D7(dfi_p3_wrdata[9]),
	.D8(dfi_p3_wrdata[25]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o9),
	.TQ(dq_t9)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_9 (
	.BITSLIP((storage[1] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed9),
	.RST((sys_rst | (storage[1] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[25]),
	.Q2(dfi_p3_rddata[9]),
	.Q3(dfi_p2_rddata[25]),
	.Q4(dfi_p2_rddata[9]),
	.Q5(dfi_p1_rddata[25]),
	.Q6(dfi_p1_rddata[9]),
	.Q7(dfi_p0_rddata[25]),
	.Q8(dfi_p0_rddata[9])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_9 (
	.C(sys_clk),
	.CE((storage[1] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay9),
	.INC(1'd1),
	.LD((storage[1] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed9)
);

IOBUF IOBUF_9(
	.I(dq_o9),
	.T(dq_t9),
	.IO(ddram_dq[9]),
	.O(dq_i_nodelay9)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_39 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[10]),
	.D2(dfi_p0_wrdata[26]),
	.D3(dfi_p1_wrdata[10]),
	.D4(dfi_p1_wrdata[26]),
	.D5(dfi_p2_wrdata[10]),
	.D6(dfi_p2_wrdata[26]),
	.D7(dfi_p3_wrdata[10]),
	.D8(dfi_p3_wrdata[26]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o10),
	.TQ(dq_t10)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_10 (
	.BITSLIP((storage[1] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed10),
	.RST((sys_rst | (storage[1] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[26]),
	.Q2(dfi_p3_rddata[10]),
	.Q3(dfi_p2_rddata[26]),
	.Q4(dfi_p2_rddata[10]),
	.Q5(dfi_p1_rddata[26]),
	.Q6(dfi_p1_rddata[10]),
	.Q7(dfi_p0_rddata[26]),
	.Q8(dfi_p0_rddata[10])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_10 (
	.C(sys_clk),
	.CE((storage[1] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay10),
	.INC(1'd1),
	.LD((storage[1] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed10)
);

IOBUF IOBUF_10(
	.I(dq_o10),
	.T(dq_t10),
	.IO(ddram_dq[10]),
	.O(dq_i_nodelay10)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_40 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[11]),
	.D2(dfi_p0_wrdata[27]),
	.D3(dfi_p1_wrdata[11]),
	.D4(dfi_p1_wrdata[27]),
	.D5(dfi_p2_wrdata[11]),
	.D6(dfi_p2_wrdata[27]),
	.D7(dfi_p3_wrdata[11]),
	.D8(dfi_p3_wrdata[27]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o11),
	.TQ(dq_t11)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_11 (
	.BITSLIP((storage[1] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed11),
	.RST((sys_rst | (storage[1] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[27]),
	.Q2(dfi_p3_rddata[11]),
	.Q3(dfi_p2_rddata[27]),
	.Q4(dfi_p2_rddata[11]),
	.Q5(dfi_p1_rddata[27]),
	.Q6(dfi_p1_rddata[11]),
	.Q7(dfi_p0_rddata[27]),
	.Q8(dfi_p0_rddata[11])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_11 (
	.C(sys_clk),
	.CE((storage[1] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay11),
	.INC(1'd1),
	.LD((storage[1] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed11)
);

IOBUF IOBUF_11(
	.I(dq_o11),
	.T(dq_t11),
	.IO(ddram_dq[11]),
	.O(dq_i_nodelay11)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_41 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[12]),
	.D2(dfi_p0_wrdata[28]),
	.D3(dfi_p1_wrdata[12]),
	.D4(dfi_p1_wrdata[28]),
	.D5(dfi_p2_wrdata[12]),
	.D6(dfi_p2_wrdata[28]),
	.D7(dfi_p3_wrdata[12]),
	.D8(dfi_p3_wrdata[28]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o12),
	.TQ(dq_t12)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_12 (
	.BITSLIP((storage[1] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed12),
	.RST((sys_rst | (storage[1] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[28]),
	.Q2(dfi_p3_rddata[12]),
	.Q3(dfi_p2_rddata[28]),
	.Q4(dfi_p2_rddata[12]),
	.Q5(dfi_p1_rddata[28]),
	.Q6(dfi_p1_rddata[12]),
	.Q7(dfi_p0_rddata[28]),
	.Q8(dfi_p0_rddata[12])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_12 (
	.C(sys_clk),
	.CE((storage[1] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay12),
	.INC(1'd1),
	.LD((storage[1] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed12)
);

IOBUF IOBUF_12(
	.I(dq_o12),
	.T(dq_t12),
	.IO(ddram_dq[12]),
	.O(dq_i_nodelay12)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_42 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[13]),
	.D2(dfi_p0_wrdata[29]),
	.D3(dfi_p1_wrdata[13]),
	.D4(dfi_p1_wrdata[29]),
	.D5(dfi_p2_wrdata[13]),
	.D6(dfi_p2_wrdata[29]),
	.D7(dfi_p3_wrdata[13]),
	.D8(dfi_p3_wrdata[29]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o13),
	.TQ(dq_t13)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_13 (
	.BITSLIP((storage[1] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed13),
	.RST((sys_rst | (storage[1] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[29]),
	.Q2(dfi_p3_rddata[13]),
	.Q3(dfi_p2_rddata[29]),
	.Q4(dfi_p2_rddata[13]),
	.Q5(dfi_p1_rddata[29]),
	.Q6(dfi_p1_rddata[13]),
	.Q7(dfi_p0_rddata[29]),
	.Q8(dfi_p0_rddata[13])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_13 (
	.C(sys_clk),
	.CE((storage[1] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay13),
	.INC(1'd1),
	.LD((storage[1] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed13)
);

IOBUF IOBUF_13(
	.I(dq_o13),
	.T(dq_t13),
	.IO(ddram_dq[13]),
	.O(dq_i_nodelay13)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_43 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[14]),
	.D2(dfi_p0_wrdata[30]),
	.D3(dfi_p1_wrdata[14]),
	.D4(dfi_p1_wrdata[30]),
	.D5(dfi_p2_wrdata[14]),
	.D6(dfi_p2_wrdata[30]),
	.D7(dfi_p3_wrdata[14]),
	.D8(dfi_p3_wrdata[30]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o14),
	.TQ(dq_t14)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_14 (
	.BITSLIP((storage[1] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed14),
	.RST((sys_rst | (storage[1] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[30]),
	.Q2(dfi_p3_rddata[14]),
	.Q3(dfi_p2_rddata[30]),
	.Q4(dfi_p2_rddata[14]),
	.Q5(dfi_p1_rddata[30]),
	.Q6(dfi_p1_rddata[14]),
	.Q7(dfi_p0_rddata[30]),
	.Q8(dfi_p0_rddata[14])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_14 (
	.C(sys_clk),
	.CE((storage[1] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay14),
	.INC(1'd1),
	.LD((storage[1] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed14)
);

IOBUF IOBUF_14(
	.I(dq_o14),
	.T(dq_t14),
	.IO(ddram_dq[14]),
	.O(dq_i_nodelay14)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_44 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(dfi_p0_wrdata[15]),
	.D2(dfi_p0_wrdata[31]),
	.D3(dfi_p1_wrdata[15]),
	.D4(dfi_p1_wrdata[31]),
	.D5(dfi_p2_wrdata[15]),
	.D6(dfi_p2_wrdata[31]),
	.D7(dfi_p3_wrdata[15]),
	.D8(dfi_p3_wrdata[31]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~oe_dq)),
	.TCE(1'd1),
	.OQ(dq_o15),
	.TQ(dq_t15)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_15 (
	.BITSLIP((storage[1] & rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(dq_i_delayed15),
	.RST((sys_rst | (storage[1] & rdly_dq_rst_re))),
	.Q1(dfi_p3_rddata[31]),
	.Q2(dfi_p3_rddata[15]),
	.Q3(dfi_p2_rddata[31]),
	.Q4(dfi_p2_rddata[15]),
	.Q5(dfi_p1_rddata[31]),
	.Q6(dfi_p1_rddata[15]),
	.Q7(dfi_p0_rddata[31]),
	.Q8(dfi_p0_rddata[15])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_15 (
	.C(sys_clk),
	.CE((storage[1] & rdly_dq_inc_re)),
	.IDATAIN(dq_i_nodelay15),
	.INC(1'd1),
	.LD((storage[1] & rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(dq_i_delayed15)
);

IOBUF IOBUF_15(
	.I(dq_o15),
	.T(dq_t15),
	.IO(ddram_dq[15]),
	.O(dq_i_nodelay15)
);

reg [23:0] storage_3[0:7];
reg [2:0] memadr_3;
always @(posedge sys_clk) begin
	if (sdram_bankmachine0_wrport_we)
		storage_3[sdram_bankmachine0_wrport_adr] <= sdram_bankmachine0_wrport_dat_w;
	memadr_3 <= sdram_bankmachine0_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine0_wrport_dat_r = storage_3[memadr_3];
assign sdram_bankmachine0_rdport_dat_r = storage_3[sdram_bankmachine0_rdport_adr];

reg [23:0] storage_4[0:7];
reg [2:0] memadr_4;
always @(posedge sys_clk) begin
	if (sdram_bankmachine1_wrport_we)
		storage_4[sdram_bankmachine1_wrport_adr] <= sdram_bankmachine1_wrport_dat_w;
	memadr_4 <= sdram_bankmachine1_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine1_wrport_dat_r = storage_4[memadr_4];
assign sdram_bankmachine1_rdport_dat_r = storage_4[sdram_bankmachine1_rdport_adr];

reg [23:0] storage_5[0:7];
reg [2:0] memadr_5;
always @(posedge sys_clk) begin
	if (sdram_bankmachine2_wrport_we)
		storage_5[sdram_bankmachine2_wrport_adr] <= sdram_bankmachine2_wrport_dat_w;
	memadr_5 <= sdram_bankmachine2_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine2_wrport_dat_r = storage_5[memadr_5];
assign sdram_bankmachine2_rdport_dat_r = storage_5[sdram_bankmachine2_rdport_adr];

reg [23:0] storage_6[0:7];
reg [2:0] memadr_6;
always @(posedge sys_clk) begin
	if (sdram_bankmachine3_wrport_we)
		storage_6[sdram_bankmachine3_wrport_adr] <= sdram_bankmachine3_wrport_dat_w;
	memadr_6 <= sdram_bankmachine3_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine3_wrport_dat_r = storage_6[memadr_6];
assign sdram_bankmachine3_rdport_dat_r = storage_6[sdram_bankmachine3_rdport_adr];

reg [23:0] storage_7[0:7];
reg [2:0] memadr_7;
always @(posedge sys_clk) begin
	if (sdram_bankmachine4_wrport_we)
		storage_7[sdram_bankmachine4_wrport_adr] <= sdram_bankmachine4_wrport_dat_w;
	memadr_7 <= sdram_bankmachine4_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine4_wrport_dat_r = storage_7[memadr_7];
assign sdram_bankmachine4_rdport_dat_r = storage_7[sdram_bankmachine4_rdport_adr];

reg [23:0] storage_8[0:7];
reg [2:0] memadr_8;
always @(posedge sys_clk) begin
	if (sdram_bankmachine5_wrport_we)
		storage_8[sdram_bankmachine5_wrport_adr] <= sdram_bankmachine5_wrport_dat_w;
	memadr_8 <= sdram_bankmachine5_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine5_wrport_dat_r = storage_8[memadr_8];
assign sdram_bankmachine5_rdport_dat_r = storage_8[sdram_bankmachine5_rdport_adr];

reg [23:0] storage_9[0:7];
reg [2:0] memadr_9;
always @(posedge sys_clk) begin
	if (sdram_bankmachine6_wrport_we)
		storage_9[sdram_bankmachine6_wrport_adr] <= sdram_bankmachine6_wrport_dat_w;
	memadr_9 <= sdram_bankmachine6_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine6_wrport_dat_r = storage_9[memadr_9];
assign sdram_bankmachine6_rdport_dat_r = storage_9[sdram_bankmachine6_rdport_adr];

reg [23:0] storage_10[0:7];
reg [2:0] memadr_10;
always @(posedge sys_clk) begin
	if (sdram_bankmachine7_wrport_we)
		storage_10[sdram_bankmachine7_wrport_adr] <= sdram_bankmachine7_wrport_dat_w;
	memadr_10 <= sdram_bankmachine7_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine7_wrport_dat_r = storage_10[memadr_10];
assign sdram_bankmachine7_rdport_dat_r = storage_10[sdram_bankmachine7_rdport_adr];

reg [23:0] tag_mem[0:511];
reg [8:0] memadr_11;
always @(posedge sys_clk) begin
	if (tag_port_we)
		tag_mem[tag_port_adr] <= tag_port_dat_w;
	memadr_11 <= tag_port_adr;
end

assign tag_port_dat_r = tag_mem[memadr_11];

reg [7:0] data_mem_grain0[0:511];
reg [8:0] memadr_12;
always @(posedge sys_clk) begin
	if (data_port_we[0])
		data_mem_grain0[data_port_adr] <= data_port_dat_w[7:0];
	memadr_12 <= data_port_adr;
end

assign data_port_dat_r[7:0] = data_mem_grain0[memadr_12];

reg [7:0] data_mem_grain1[0:511];
reg [8:0] memadr_13;
always @(posedge sys_clk) begin
	if (data_port_we[1])
		data_mem_grain1[data_port_adr] <= data_port_dat_w[15:8];
	memadr_13 <= data_port_adr;
end

assign data_port_dat_r[15:8] = data_mem_grain1[memadr_13];

reg [7:0] data_mem_grain2[0:511];
reg [8:0] memadr_14;
always @(posedge sys_clk) begin
	if (data_port_we[2])
		data_mem_grain2[data_port_adr] <= data_port_dat_w[23:16];
	memadr_14 <= data_port_adr;
end

assign data_port_dat_r[23:16] = data_mem_grain2[memadr_14];

reg [7:0] data_mem_grain3[0:511];
reg [8:0] memadr_15;
always @(posedge sys_clk) begin
	if (data_port_we[3])
		data_mem_grain3[data_port_adr] <= data_port_dat_w[31:24];
	memadr_15 <= data_port_adr;
end

assign data_port_dat_r[31:24] = data_mem_grain3[memadr_15];

reg [7:0] data_mem_grain4[0:511];
reg [8:0] memadr_16;
always @(posedge sys_clk) begin
	if (data_port_we[4])
		data_mem_grain4[data_port_adr] <= data_port_dat_w[39:32];
	memadr_16 <= data_port_adr;
end

assign data_port_dat_r[39:32] = data_mem_grain4[memadr_16];

reg [7:0] data_mem_grain5[0:511];
reg [8:0] memadr_17;
always @(posedge sys_clk) begin
	if (data_port_we[5])
		data_mem_grain5[data_port_adr] <= data_port_dat_w[47:40];
	memadr_17 <= data_port_adr;
end

assign data_port_dat_r[47:40] = data_mem_grain5[memadr_17];

reg [7:0] data_mem_grain6[0:511];
reg [8:0] memadr_18;
always @(posedge sys_clk) begin
	if (data_port_we[6])
		data_mem_grain6[data_port_adr] <= data_port_dat_w[55:48];
	memadr_18 <= data_port_adr;
end

assign data_port_dat_r[55:48] = data_mem_grain6[memadr_18];

reg [7:0] data_mem_grain7[0:511];
reg [8:0] memadr_19;
always @(posedge sys_clk) begin
	if (data_port_we[7])
		data_mem_grain7[data_port_adr] <= data_port_dat_w[63:56];
	memadr_19 <= data_port_adr;
end

assign data_port_dat_r[63:56] = data_mem_grain7[memadr_19];

reg [7:0] data_mem_grain8[0:511];
reg [8:0] memadr_20;
always @(posedge sys_clk) begin
	if (data_port_we[8])
		data_mem_grain8[data_port_adr] <= data_port_dat_w[71:64];
	memadr_20 <= data_port_adr;
end

assign data_port_dat_r[71:64] = data_mem_grain8[memadr_20];

reg [7:0] data_mem_grain9[0:511];
reg [8:0] memadr_21;
always @(posedge sys_clk) begin
	if (data_port_we[9])
		data_mem_grain9[data_port_adr] <= data_port_dat_w[79:72];
	memadr_21 <= data_port_adr;
end

assign data_port_dat_r[79:72] = data_mem_grain9[memadr_21];

reg [7:0] data_mem_grain10[0:511];
reg [8:0] memadr_22;
always @(posedge sys_clk) begin
	if (data_port_we[10])
		data_mem_grain10[data_port_adr] <= data_port_dat_w[87:80];
	memadr_22 <= data_port_adr;
end

assign data_port_dat_r[87:80] = data_mem_grain10[memadr_22];

reg [7:0] data_mem_grain11[0:511];
reg [8:0] memadr_23;
always @(posedge sys_clk) begin
	if (data_port_we[11])
		data_mem_grain11[data_port_adr] <= data_port_dat_w[95:88];
	memadr_23 <= data_port_adr;
end

assign data_port_dat_r[95:88] = data_mem_grain11[memadr_23];

reg [7:0] data_mem_grain12[0:511];
reg [8:0] memadr_24;
always @(posedge sys_clk) begin
	if (data_port_we[12])
		data_mem_grain12[data_port_adr] <= data_port_dat_w[103:96];
	memadr_24 <= data_port_adr;
end

assign data_port_dat_r[103:96] = data_mem_grain12[memadr_24];

reg [7:0] data_mem_grain13[0:511];
reg [8:0] memadr_25;
always @(posedge sys_clk) begin
	if (data_port_we[13])
		data_mem_grain13[data_port_adr] <= data_port_dat_w[111:104];
	memadr_25 <= data_port_adr;
end

assign data_port_dat_r[111:104] = data_mem_grain13[memadr_25];

reg [7:0] data_mem_grain14[0:511];
reg [8:0] memadr_26;
always @(posedge sys_clk) begin
	if (data_port_we[14])
		data_mem_grain14[data_port_adr] <= data_port_dat_w[119:112];
	memadr_26 <= data_port_adr;
end

assign data_port_dat_r[119:112] = data_mem_grain14[memadr_26];

reg [7:0] data_mem_grain15[0:511];
reg [8:0] memadr_27;
always @(posedge sys_clk) begin
	if (data_port_we[15])
		data_mem_grain15[data_port_adr] <= data_port_dat_w[127:120];
	memadr_27 <= data_port_adr;
end

assign data_port_dat_r[127:120] = data_mem_grain15[memadr_27];

(* ars_ff = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE (
	.C(sys_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl0),
	.Q(xilinxasyncresetsynchronizerimpl0_rst_meta)
);

(* ars_ff = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_1 (
	.C(sys_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl0_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl0),
	.Q(sys_rst)
);

(* ars_ff = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_2 (
	.C(clk200_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(xilinxasyncresetsynchronizerimpl1_rst_meta)
);

(* ars_ff = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_3 (
	.C(clk200_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl1_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(clk200_rst)
);

(* ars_ff = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_4 (
	.C(clk50_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl2),
	.Q(xilinxasyncresetsynchronizerimpl2_rst_meta)
);

(* ars_ff = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_5 (
	.C(clk50_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl2_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl2),
	.Q(clk50_rst)
);

endmodule
