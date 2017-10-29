#ifndef __GENERATED_CSR_H
#define __GENERATED_CSR_H
#include <hw/common.h>

/* encoder_reader */
#define CSR_ENCODER_READER_BASE 0xe000a800
#define CSR_ENCODER_READER_BASE_ADDR 0xe000a800
#define CSR_ENCODER_READER_BASE_SIZE 4
static inline unsigned int encoder_reader_base_read(void) {
	unsigned int r = MMPTR(0xe000a800);
	r <<= 8;
	r |= MMPTR(0xe000a804);
	r <<= 8;
	r |= MMPTR(0xe000a808);
	r <<= 8;
	r |= MMPTR(0xe000a80c);
	return r;
}
static inline void encoder_reader_base_write(unsigned int value) {
	MMPTR(0xe000a800) = value >> 24;
	MMPTR(0xe000a804) = value >> 16;
	MMPTR(0xe000a808) = value >> 8;
	MMPTR(0xe000a80c) = value;
}
#define CSR_ENCODER_READER_H_WIDTH_ADDR 0xe000a810
#define CSR_ENCODER_READER_H_WIDTH_SIZE 2
static inline unsigned short int encoder_reader_h_width_read(void) {
	unsigned short int r = MMPTR(0xe000a810);
	r <<= 8;
	r |= MMPTR(0xe000a814);
	return r;
}
static inline void encoder_reader_h_width_write(unsigned short int value) {
	MMPTR(0xe000a810) = value >> 8;
	MMPTR(0xe000a814) = value;
}
#define CSR_ENCODER_READER_V_WIDTH_ADDR 0xe000a818
#define CSR_ENCODER_READER_V_WIDTH_SIZE 2
static inline unsigned short int encoder_reader_v_width_read(void) {
	unsigned short int r = MMPTR(0xe000a818);
	r <<= 8;
	r |= MMPTR(0xe000a81c);
	return r;
}
static inline void encoder_reader_v_width_write(unsigned short int value) {
	MMPTR(0xe000a818) = value >> 8;
	MMPTR(0xe000a81c) = value;
}
#define CSR_ENCODER_READER_START_ADDR 0xe000a820
#define CSR_ENCODER_READER_START_SIZE 1
static inline unsigned char encoder_reader_start_read(void) {
	unsigned char r = MMPTR(0xe000a820);
	return r;
}
static inline void encoder_reader_start_write(unsigned char value) {
	MMPTR(0xe000a820) = value;
}
#define CSR_ENCODER_READER_DONE_ADDR 0xe000a824
#define CSR_ENCODER_READER_DONE_SIZE 1
static inline unsigned char encoder_reader_done_read(void) {
	unsigned char r = MMPTR(0xe000a824);
	return r;
}

/* ethmac */
#define CSR_ETHMAC_BASE 0xe0007000
#define CSR_ETHMAC_SRAM_WRITER_SLOT_ADDR 0xe0007000
#define CSR_ETHMAC_SRAM_WRITER_SLOT_SIZE 1
static inline unsigned char ethmac_sram_writer_slot_read(void) {
	unsigned char r = MMPTR(0xe0007000);
	return r;
}
#define CSR_ETHMAC_SRAM_WRITER_LENGTH_ADDR 0xe0007004
#define CSR_ETHMAC_SRAM_WRITER_LENGTH_SIZE 4
static inline unsigned int ethmac_sram_writer_length_read(void) {
	unsigned int r = MMPTR(0xe0007004);
	r <<= 8;
	r |= MMPTR(0xe0007008);
	r <<= 8;
	r |= MMPTR(0xe000700c);
	r <<= 8;
	r |= MMPTR(0xe0007010);
	return r;
}
#define CSR_ETHMAC_SRAM_WRITER_EV_STATUS_ADDR 0xe0007014
#define CSR_ETHMAC_SRAM_WRITER_EV_STATUS_SIZE 1
static inline unsigned char ethmac_sram_writer_ev_status_read(void) {
	unsigned char r = MMPTR(0xe0007014);
	return r;
}
static inline void ethmac_sram_writer_ev_status_write(unsigned char value) {
	MMPTR(0xe0007014) = value;
}
#define CSR_ETHMAC_SRAM_WRITER_EV_PENDING_ADDR 0xe0007018
#define CSR_ETHMAC_SRAM_WRITER_EV_PENDING_SIZE 1
static inline unsigned char ethmac_sram_writer_ev_pending_read(void) {
	unsigned char r = MMPTR(0xe0007018);
	return r;
}
static inline void ethmac_sram_writer_ev_pending_write(unsigned char value) {
	MMPTR(0xe0007018) = value;
}
#define CSR_ETHMAC_SRAM_WRITER_EV_ENABLE_ADDR 0xe000701c
#define CSR_ETHMAC_SRAM_WRITER_EV_ENABLE_SIZE 1
static inline unsigned char ethmac_sram_writer_ev_enable_read(void) {
	unsigned char r = MMPTR(0xe000701c);
	return r;
}
static inline void ethmac_sram_writer_ev_enable_write(unsigned char value) {
	MMPTR(0xe000701c) = value;
}
#define CSR_ETHMAC_SRAM_READER_START_ADDR 0xe0007020
#define CSR_ETHMAC_SRAM_READER_START_SIZE 1
static inline unsigned char ethmac_sram_reader_start_read(void) {
	unsigned char r = MMPTR(0xe0007020);
	return r;
}
static inline void ethmac_sram_reader_start_write(unsigned char value) {
	MMPTR(0xe0007020) = value;
}
#define CSR_ETHMAC_SRAM_READER_READY_ADDR 0xe0007024
#define CSR_ETHMAC_SRAM_READER_READY_SIZE 1
static inline unsigned char ethmac_sram_reader_ready_read(void) {
	unsigned char r = MMPTR(0xe0007024);
	return r;
}
#define CSR_ETHMAC_SRAM_READER_SLOT_ADDR 0xe0007028
#define CSR_ETHMAC_SRAM_READER_SLOT_SIZE 1
static inline unsigned char ethmac_sram_reader_slot_read(void) {
	unsigned char r = MMPTR(0xe0007028);
	return r;
}
static inline void ethmac_sram_reader_slot_write(unsigned char value) {
	MMPTR(0xe0007028) = value;
}
#define CSR_ETHMAC_SRAM_READER_LENGTH_ADDR 0xe000702c
#define CSR_ETHMAC_SRAM_READER_LENGTH_SIZE 2
static inline unsigned short int ethmac_sram_reader_length_read(void) {
	unsigned short int r = MMPTR(0xe000702c);
	r <<= 8;
	r |= MMPTR(0xe0007030);
	return r;
}
static inline void ethmac_sram_reader_length_write(unsigned short int value) {
	MMPTR(0xe000702c) = value >> 8;
	MMPTR(0xe0007030) = value;
}
#define CSR_ETHMAC_SRAM_READER_EV_STATUS_ADDR 0xe0007034
#define CSR_ETHMAC_SRAM_READER_EV_STATUS_SIZE 1
static inline unsigned char ethmac_sram_reader_ev_status_read(void) {
	unsigned char r = MMPTR(0xe0007034);
	return r;
}
static inline void ethmac_sram_reader_ev_status_write(unsigned char value) {
	MMPTR(0xe0007034) = value;
}
#define CSR_ETHMAC_SRAM_READER_EV_PENDING_ADDR 0xe0007038
#define CSR_ETHMAC_SRAM_READER_EV_PENDING_SIZE 1
static inline unsigned char ethmac_sram_reader_ev_pending_read(void) {
	unsigned char r = MMPTR(0xe0007038);
	return r;
}
static inline void ethmac_sram_reader_ev_pending_write(unsigned char value) {
	MMPTR(0xe0007038) = value;
}
#define CSR_ETHMAC_SRAM_READER_EV_ENABLE_ADDR 0xe000703c
#define CSR_ETHMAC_SRAM_READER_EV_ENABLE_SIZE 1
static inline unsigned char ethmac_sram_reader_ev_enable_read(void) {
	unsigned char r = MMPTR(0xe000703c);
	return r;
}
static inline void ethmac_sram_reader_ev_enable_write(unsigned char value) {
	MMPTR(0xe000703c) = value;
}
#define CSR_ETHMAC_PREAMBLE_CRC_ADDR 0xe0007040
#define CSR_ETHMAC_PREAMBLE_CRC_SIZE 1
static inline unsigned char ethmac_preamble_crc_read(void) {
	unsigned char r = MMPTR(0xe0007040);
	return r;
}

/* ethphy */
#define CSR_ETHPHY_BASE 0xe0006800
#define CSR_ETHPHY_MODE_DETECTION_MODE_ADDR 0xe0006800
#define CSR_ETHPHY_MODE_DETECTION_MODE_SIZE 1
static inline unsigned char ethphy_mode_detection_mode_read(void) {
	unsigned char r = MMPTR(0xe0006800);
	return r;
}
#define CSR_ETHPHY_CRG_RESET_ADDR 0xe0006804
#define CSR_ETHPHY_CRG_RESET_SIZE 1
static inline unsigned char ethphy_crg_reset_read(void) {
	unsigned char r = MMPTR(0xe0006804);
	return r;
}
static inline void ethphy_crg_reset_write(unsigned char value) {
	MMPTR(0xe0006804) = value;
}
#define CSR_ETHPHY_MDIO_W_ADDR 0xe0006808
#define CSR_ETHPHY_MDIO_W_SIZE 1
static inline unsigned char ethphy_mdio_w_read(void) {
	unsigned char r = MMPTR(0xe0006808);
	return r;
}
static inline void ethphy_mdio_w_write(unsigned char value) {
	MMPTR(0xe0006808) = value;
}
#define CSR_ETHPHY_MDIO_R_ADDR 0xe000680c
#define CSR_ETHPHY_MDIO_R_SIZE 1
static inline unsigned char ethphy_mdio_r_read(void) {
	unsigned char r = MMPTR(0xe000680c);
	return r;
}

/* hdmi_in0 */
#define CSR_HDMI_IN0_BASE 0xe0008800
#define CSR_HDMI_IN0_EDID_HPD_NOTIF_ADDR 0xe0008800
#define CSR_HDMI_IN0_EDID_HPD_NOTIF_SIZE 1
static inline unsigned char hdmi_in0_edid_hpd_notif_read(void) {
	unsigned char r = MMPTR(0xe0008800);
	return r;
}
#define CSR_HDMI_IN0_EDID_HPD_EN_ADDR 0xe0008804
#define CSR_HDMI_IN0_EDID_HPD_EN_SIZE 1
static inline unsigned char hdmi_in0_edid_hpd_en_read(void) {
	unsigned char r = MMPTR(0xe0008804);
	return r;
}
static inline void hdmi_in0_edid_hpd_en_write(unsigned char value) {
	MMPTR(0xe0008804) = value;
}
#define CSR_HDMI_IN0_CLOCKING_PLL_RESET_ADDR 0xe0008808
#define CSR_HDMI_IN0_CLOCKING_PLL_RESET_SIZE 1
static inline unsigned char hdmi_in0_clocking_pll_reset_read(void) {
	unsigned char r = MMPTR(0xe0008808);
	return r;
}
static inline void hdmi_in0_clocking_pll_reset_write(unsigned char value) {
	MMPTR(0xe0008808) = value;
}
#define CSR_HDMI_IN0_CLOCKING_LOCKED_ADDR 0xe000880c
#define CSR_HDMI_IN0_CLOCKING_LOCKED_SIZE 1
static inline unsigned char hdmi_in0_clocking_locked_read(void) {
	unsigned char r = MMPTR(0xe000880c);
	return r;
}
#define CSR_HDMI_IN0_CLOCKING_PLL_ADR_ADDR 0xe0008810
#define CSR_HDMI_IN0_CLOCKING_PLL_ADR_SIZE 1
static inline unsigned char hdmi_in0_clocking_pll_adr_read(void) {
	unsigned char r = MMPTR(0xe0008810);
	return r;
}
static inline void hdmi_in0_clocking_pll_adr_write(unsigned char value) {
	MMPTR(0xe0008810) = value;
}
#define CSR_HDMI_IN0_CLOCKING_PLL_DAT_R_ADDR 0xe0008814
#define CSR_HDMI_IN0_CLOCKING_PLL_DAT_R_SIZE 2
static inline unsigned short int hdmi_in0_clocking_pll_dat_r_read(void) {
	unsigned short int r = MMPTR(0xe0008814);
	r <<= 8;
	r |= MMPTR(0xe0008818);
	return r;
}
#define CSR_HDMI_IN0_CLOCKING_PLL_DAT_W_ADDR 0xe000881c
#define CSR_HDMI_IN0_CLOCKING_PLL_DAT_W_SIZE 2
static inline unsigned short int hdmi_in0_clocking_pll_dat_w_read(void) {
	unsigned short int r = MMPTR(0xe000881c);
	r <<= 8;
	r |= MMPTR(0xe0008820);
	return r;
}
static inline void hdmi_in0_clocking_pll_dat_w_write(unsigned short int value) {
	MMPTR(0xe000881c) = value >> 8;
	MMPTR(0xe0008820) = value;
}
#define CSR_HDMI_IN0_CLOCKING_PLL_READ_ADDR 0xe0008824
#define CSR_HDMI_IN0_CLOCKING_PLL_READ_SIZE 1
static inline unsigned char hdmi_in0_clocking_pll_read_read(void) {
	unsigned char r = MMPTR(0xe0008824);
	return r;
}
static inline void hdmi_in0_clocking_pll_read_write(unsigned char value) {
	MMPTR(0xe0008824) = value;
}
#define CSR_HDMI_IN0_CLOCKING_PLL_WRITE_ADDR 0xe0008828
#define CSR_HDMI_IN0_CLOCKING_PLL_WRITE_SIZE 1
static inline unsigned char hdmi_in0_clocking_pll_write_read(void) {
	unsigned char r = MMPTR(0xe0008828);
	return r;
}
static inline void hdmi_in0_clocking_pll_write_write(unsigned char value) {
	MMPTR(0xe0008828) = value;
}
#define CSR_HDMI_IN0_CLOCKING_PLL_DRDY_ADDR 0xe000882c
#define CSR_HDMI_IN0_CLOCKING_PLL_DRDY_SIZE 1
static inline unsigned char hdmi_in0_clocking_pll_drdy_read(void) {
	unsigned char r = MMPTR(0xe000882c);
	return r;
}
#define CSR_HDMI_IN0_DATA0_CAP_DLY_CTL_ADDR 0xe0008830
#define CSR_HDMI_IN0_DATA0_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in0_data0_cap_dly_ctl_read(void) {
	unsigned char r = MMPTR(0xe0008830);
	return r;
}
static inline void hdmi_in0_data0_cap_dly_ctl_write(unsigned char value) {
	MMPTR(0xe0008830) = value;
}
#define CSR_HDMI_IN0_DATA0_CAP_DLY_BUSY_ADDR 0xe0008834
#define CSR_HDMI_IN0_DATA0_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in0_data0_cap_dly_busy_read(void) {
	unsigned char r = MMPTR(0xe0008834);
	return r;
}
#define CSR_HDMI_IN0_DATA0_CAP_PHASE_ADDR 0xe0008838
#define CSR_HDMI_IN0_DATA0_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in0_data0_cap_phase_read(void) {
	unsigned char r = MMPTR(0xe0008838);
	return r;
}
#define CSR_HDMI_IN0_DATA0_CAP_PHASE_RESET_ADDR 0xe000883c
#define CSR_HDMI_IN0_DATA0_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in0_data0_cap_phase_reset_read(void) {
	unsigned char r = MMPTR(0xe000883c);
	return r;
}
static inline void hdmi_in0_data0_cap_phase_reset_write(unsigned char value) {
	MMPTR(0xe000883c) = value;
}
#define CSR_HDMI_IN0_DATA0_CHARSYNC_CHAR_SYNCED_ADDR 0xe0008840
#define CSR_HDMI_IN0_DATA0_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in0_data0_charsync_char_synced_read(void) {
	unsigned char r = MMPTR(0xe0008840);
	return r;
}
#define CSR_HDMI_IN0_DATA0_CHARSYNC_CTL_POS_ADDR 0xe0008844
#define CSR_HDMI_IN0_DATA0_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in0_data0_charsync_ctl_pos_read(void) {
	unsigned char r = MMPTR(0xe0008844);
	return r;
}
#define CSR_HDMI_IN0_DATA0_WER_UPDATE_ADDR 0xe0008848
#define CSR_HDMI_IN0_DATA0_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in0_data0_wer_update_read(void) {
	unsigned char r = MMPTR(0xe0008848);
	return r;
}
static inline void hdmi_in0_data0_wer_update_write(unsigned char value) {
	MMPTR(0xe0008848) = value;
}
#define CSR_HDMI_IN0_DATA0_WER_VALUE_ADDR 0xe000884c
#define CSR_HDMI_IN0_DATA0_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in0_data0_wer_value_read(void) {
	unsigned int r = MMPTR(0xe000884c);
	r <<= 8;
	r |= MMPTR(0xe0008850);
	r <<= 8;
	r |= MMPTR(0xe0008854);
	return r;
}
#define CSR_HDMI_IN0_DATA1_CAP_DLY_CTL_ADDR 0xe0008858
#define CSR_HDMI_IN0_DATA1_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in0_data1_cap_dly_ctl_read(void) {
	unsigned char r = MMPTR(0xe0008858);
	return r;
}
static inline void hdmi_in0_data1_cap_dly_ctl_write(unsigned char value) {
	MMPTR(0xe0008858) = value;
}
#define CSR_HDMI_IN0_DATA1_CAP_DLY_BUSY_ADDR 0xe000885c
#define CSR_HDMI_IN0_DATA1_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in0_data1_cap_dly_busy_read(void) {
	unsigned char r = MMPTR(0xe000885c);
	return r;
}
#define CSR_HDMI_IN0_DATA1_CAP_PHASE_ADDR 0xe0008860
#define CSR_HDMI_IN0_DATA1_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in0_data1_cap_phase_read(void) {
	unsigned char r = MMPTR(0xe0008860);
	return r;
}
#define CSR_HDMI_IN0_DATA1_CAP_PHASE_RESET_ADDR 0xe0008864
#define CSR_HDMI_IN0_DATA1_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in0_data1_cap_phase_reset_read(void) {
	unsigned char r = MMPTR(0xe0008864);
	return r;
}
static inline void hdmi_in0_data1_cap_phase_reset_write(unsigned char value) {
	MMPTR(0xe0008864) = value;
}
#define CSR_HDMI_IN0_DATA1_CHARSYNC_CHAR_SYNCED_ADDR 0xe0008868
#define CSR_HDMI_IN0_DATA1_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in0_data1_charsync_char_synced_read(void) {
	unsigned char r = MMPTR(0xe0008868);
	return r;
}
#define CSR_HDMI_IN0_DATA1_CHARSYNC_CTL_POS_ADDR 0xe000886c
#define CSR_HDMI_IN0_DATA1_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in0_data1_charsync_ctl_pos_read(void) {
	unsigned char r = MMPTR(0xe000886c);
	return r;
}
#define CSR_HDMI_IN0_DATA1_WER_UPDATE_ADDR 0xe0008870
#define CSR_HDMI_IN0_DATA1_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in0_data1_wer_update_read(void) {
	unsigned char r = MMPTR(0xe0008870);
	return r;
}
static inline void hdmi_in0_data1_wer_update_write(unsigned char value) {
	MMPTR(0xe0008870) = value;
}
#define CSR_HDMI_IN0_DATA1_WER_VALUE_ADDR 0xe0008874
#define CSR_HDMI_IN0_DATA1_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in0_data1_wer_value_read(void) {
	unsigned int r = MMPTR(0xe0008874);
	r <<= 8;
	r |= MMPTR(0xe0008878);
	r <<= 8;
	r |= MMPTR(0xe000887c);
	return r;
}
#define CSR_HDMI_IN0_DATA2_CAP_DLY_CTL_ADDR 0xe0008880
#define CSR_HDMI_IN0_DATA2_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in0_data2_cap_dly_ctl_read(void) {
	unsigned char r = MMPTR(0xe0008880);
	return r;
}
static inline void hdmi_in0_data2_cap_dly_ctl_write(unsigned char value) {
	MMPTR(0xe0008880) = value;
}
#define CSR_HDMI_IN0_DATA2_CAP_DLY_BUSY_ADDR 0xe0008884
#define CSR_HDMI_IN0_DATA2_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in0_data2_cap_dly_busy_read(void) {
	unsigned char r = MMPTR(0xe0008884);
	return r;
}
#define CSR_HDMI_IN0_DATA2_CAP_PHASE_ADDR 0xe0008888
#define CSR_HDMI_IN0_DATA2_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in0_data2_cap_phase_read(void) {
	unsigned char r = MMPTR(0xe0008888);
	return r;
}
#define CSR_HDMI_IN0_DATA2_CAP_PHASE_RESET_ADDR 0xe000888c
#define CSR_HDMI_IN0_DATA2_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in0_data2_cap_phase_reset_read(void) {
	unsigned char r = MMPTR(0xe000888c);
	return r;
}
static inline void hdmi_in0_data2_cap_phase_reset_write(unsigned char value) {
	MMPTR(0xe000888c) = value;
}
#define CSR_HDMI_IN0_DATA2_CHARSYNC_CHAR_SYNCED_ADDR 0xe0008890
#define CSR_HDMI_IN0_DATA2_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in0_data2_charsync_char_synced_read(void) {
	unsigned char r = MMPTR(0xe0008890);
	return r;
}
#define CSR_HDMI_IN0_DATA2_CHARSYNC_CTL_POS_ADDR 0xe0008894
#define CSR_HDMI_IN0_DATA2_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in0_data2_charsync_ctl_pos_read(void) {
	unsigned char r = MMPTR(0xe0008894);
	return r;
}
#define CSR_HDMI_IN0_DATA2_WER_UPDATE_ADDR 0xe0008898
#define CSR_HDMI_IN0_DATA2_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in0_data2_wer_update_read(void) {
	unsigned char r = MMPTR(0xe0008898);
	return r;
}
static inline void hdmi_in0_data2_wer_update_write(unsigned char value) {
	MMPTR(0xe0008898) = value;
}
#define CSR_HDMI_IN0_DATA2_WER_VALUE_ADDR 0xe000889c
#define CSR_HDMI_IN0_DATA2_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in0_data2_wer_value_read(void) {
	unsigned int r = MMPTR(0xe000889c);
	r <<= 8;
	r |= MMPTR(0xe00088a0);
	r <<= 8;
	r |= MMPTR(0xe00088a4);
	return r;
}
#define CSR_HDMI_IN0_CHANSYNC_CHANNELS_SYNCED_ADDR 0xe00088a8
#define CSR_HDMI_IN0_CHANSYNC_CHANNELS_SYNCED_SIZE 1
static inline unsigned char hdmi_in0_chansync_channels_synced_read(void) {
	unsigned char r = MMPTR(0xe00088a8);
	return r;
}
#define CSR_HDMI_IN0_RESDETECTION_HRES_ADDR 0xe00088ac
#define CSR_HDMI_IN0_RESDETECTION_HRES_SIZE 2
static inline unsigned short int hdmi_in0_resdetection_hres_read(void) {
	unsigned short int r = MMPTR(0xe00088ac);
	r <<= 8;
	r |= MMPTR(0xe00088b0);
	return r;
}
#define CSR_HDMI_IN0_RESDETECTION_VRES_ADDR 0xe00088b4
#define CSR_HDMI_IN0_RESDETECTION_VRES_SIZE 2
static inline unsigned short int hdmi_in0_resdetection_vres_read(void) {
	unsigned short int r = MMPTR(0xe00088b4);
	r <<= 8;
	r |= MMPTR(0xe00088b8);
	return r;
}
#define CSR_HDMI_IN0_FRAME_OVERFLOW_ADDR 0xe00088bc
#define CSR_HDMI_IN0_FRAME_OVERFLOW_SIZE 1
static inline unsigned char hdmi_in0_frame_overflow_read(void) {
	unsigned char r = MMPTR(0xe00088bc);
	return r;
}
static inline void hdmi_in0_frame_overflow_write(unsigned char value) {
	MMPTR(0xe00088bc) = value;
}
#define CSR_HDMI_IN0_DMA_FRAME_SIZE_ADDR 0xe00088c0
#define CSR_HDMI_IN0_DMA_FRAME_SIZE_SIZE 4
static inline unsigned int hdmi_in0_dma_frame_size_read(void) {
	unsigned int r = MMPTR(0xe00088c0);
	r <<= 8;
	r |= MMPTR(0xe00088c4);
	r <<= 8;
	r |= MMPTR(0xe00088c8);
	r <<= 8;
	r |= MMPTR(0xe00088cc);
	return r;
}
static inline void hdmi_in0_dma_frame_size_write(unsigned int value) {
	MMPTR(0xe00088c0) = value >> 24;
	MMPTR(0xe00088c4) = value >> 16;
	MMPTR(0xe00088c8) = value >> 8;
	MMPTR(0xe00088cc) = value;
}
#define CSR_HDMI_IN0_DMA_SLOT0_STATUS_ADDR 0xe00088d0
#define CSR_HDMI_IN0_DMA_SLOT0_STATUS_SIZE 1
static inline unsigned char hdmi_in0_dma_slot0_status_read(void) {
	unsigned char r = MMPTR(0xe00088d0);
	return r;
}
static inline void hdmi_in0_dma_slot0_status_write(unsigned char value) {
	MMPTR(0xe00088d0) = value;
}
#define CSR_HDMI_IN0_DMA_SLOT0_ADDRESS_ADDR 0xe00088d4
#define CSR_HDMI_IN0_DMA_SLOT0_ADDRESS_SIZE 4
static inline unsigned int hdmi_in0_dma_slot0_address_read(void) {
	unsigned int r = MMPTR(0xe00088d4);
	r <<= 8;
	r |= MMPTR(0xe00088d8);
	r <<= 8;
	r |= MMPTR(0xe00088dc);
	r <<= 8;
	r |= MMPTR(0xe00088e0);
	return r;
}
static inline void hdmi_in0_dma_slot0_address_write(unsigned int value) {
	MMPTR(0xe00088d4) = value >> 24;
	MMPTR(0xe00088d8) = value >> 16;
	MMPTR(0xe00088dc) = value >> 8;
	MMPTR(0xe00088e0) = value;
}
#define CSR_HDMI_IN0_DMA_SLOT1_STATUS_ADDR 0xe00088e4
#define CSR_HDMI_IN0_DMA_SLOT1_STATUS_SIZE 1
static inline unsigned char hdmi_in0_dma_slot1_status_read(void) {
	unsigned char r = MMPTR(0xe00088e4);
	return r;
}
static inline void hdmi_in0_dma_slot1_status_write(unsigned char value) {
	MMPTR(0xe00088e4) = value;
}
#define CSR_HDMI_IN0_DMA_SLOT1_ADDRESS_ADDR 0xe00088e8
#define CSR_HDMI_IN0_DMA_SLOT1_ADDRESS_SIZE 4
static inline unsigned int hdmi_in0_dma_slot1_address_read(void) {
	unsigned int r = MMPTR(0xe00088e8);
	r <<= 8;
	r |= MMPTR(0xe00088ec);
	r <<= 8;
	r |= MMPTR(0xe00088f0);
	r <<= 8;
	r |= MMPTR(0xe00088f4);
	return r;
}
static inline void hdmi_in0_dma_slot1_address_write(unsigned int value) {
	MMPTR(0xe00088e8) = value >> 24;
	MMPTR(0xe00088ec) = value >> 16;
	MMPTR(0xe00088f0) = value >> 8;
	MMPTR(0xe00088f4) = value;
}
#define CSR_HDMI_IN0_DMA_EV_STATUS_ADDR 0xe00088f8
#define CSR_HDMI_IN0_DMA_EV_STATUS_SIZE 1
static inline unsigned char hdmi_in0_dma_ev_status_read(void) {
	unsigned char r = MMPTR(0xe00088f8);
	return r;
}
static inline void hdmi_in0_dma_ev_status_write(unsigned char value) {
	MMPTR(0xe00088f8) = value;
}
#define CSR_HDMI_IN0_DMA_EV_PENDING_ADDR 0xe00088fc
#define CSR_HDMI_IN0_DMA_EV_PENDING_SIZE 1
static inline unsigned char hdmi_in0_dma_ev_pending_read(void) {
	unsigned char r = MMPTR(0xe00088fc);
	return r;
}
static inline void hdmi_in0_dma_ev_pending_write(unsigned char value) {
	MMPTR(0xe00088fc) = value;
}
#define CSR_HDMI_IN0_DMA_EV_ENABLE_ADDR 0xe0008900
#define CSR_HDMI_IN0_DMA_EV_ENABLE_SIZE 1
static inline unsigned char hdmi_in0_dma_ev_enable_read(void) {
	unsigned char r = MMPTR(0xe0008900);
	return r;
}
static inline void hdmi_in0_dma_ev_enable_write(unsigned char value) {
	MMPTR(0xe0008900) = value;
}

/* hdmi_in1 */
#define CSR_HDMI_IN1_BASE 0xe0009800
#define CSR_HDMI_IN1_EDID_HPD_NOTIF_ADDR 0xe0009800
#define CSR_HDMI_IN1_EDID_HPD_NOTIF_SIZE 1
static inline unsigned char hdmi_in1_edid_hpd_notif_read(void) {
	unsigned char r = MMPTR(0xe0009800);
	return r;
}
#define CSR_HDMI_IN1_EDID_HPD_EN_ADDR 0xe0009804
#define CSR_HDMI_IN1_EDID_HPD_EN_SIZE 1
static inline unsigned char hdmi_in1_edid_hpd_en_read(void) {
	unsigned char r = MMPTR(0xe0009804);
	return r;
}
static inline void hdmi_in1_edid_hpd_en_write(unsigned char value) {
	MMPTR(0xe0009804) = value;
}
#define CSR_HDMI_IN1_CLOCKING_PLL_RESET_ADDR 0xe0009808
#define CSR_HDMI_IN1_CLOCKING_PLL_RESET_SIZE 1
static inline unsigned char hdmi_in1_clocking_pll_reset_read(void) {
	unsigned char r = MMPTR(0xe0009808);
	return r;
}
static inline void hdmi_in1_clocking_pll_reset_write(unsigned char value) {
	MMPTR(0xe0009808) = value;
}
#define CSR_HDMI_IN1_CLOCKING_LOCKED_ADDR 0xe000980c
#define CSR_HDMI_IN1_CLOCKING_LOCKED_SIZE 1
static inline unsigned char hdmi_in1_clocking_locked_read(void) {
	unsigned char r = MMPTR(0xe000980c);
	return r;
}
#define CSR_HDMI_IN1_CLOCKING_PLL_ADR_ADDR 0xe0009810
#define CSR_HDMI_IN1_CLOCKING_PLL_ADR_SIZE 1
static inline unsigned char hdmi_in1_clocking_pll_adr_read(void) {
	unsigned char r = MMPTR(0xe0009810);
	return r;
}
static inline void hdmi_in1_clocking_pll_adr_write(unsigned char value) {
	MMPTR(0xe0009810) = value;
}
#define CSR_HDMI_IN1_CLOCKING_PLL_DAT_R_ADDR 0xe0009814
#define CSR_HDMI_IN1_CLOCKING_PLL_DAT_R_SIZE 2
static inline unsigned short int hdmi_in1_clocking_pll_dat_r_read(void) {
	unsigned short int r = MMPTR(0xe0009814);
	r <<= 8;
	r |= MMPTR(0xe0009818);
	return r;
}
#define CSR_HDMI_IN1_CLOCKING_PLL_DAT_W_ADDR 0xe000981c
#define CSR_HDMI_IN1_CLOCKING_PLL_DAT_W_SIZE 2
static inline unsigned short int hdmi_in1_clocking_pll_dat_w_read(void) {
	unsigned short int r = MMPTR(0xe000981c);
	r <<= 8;
	r |= MMPTR(0xe0009820);
	return r;
}
static inline void hdmi_in1_clocking_pll_dat_w_write(unsigned short int value) {
	MMPTR(0xe000981c) = value >> 8;
	MMPTR(0xe0009820) = value;
}
#define CSR_HDMI_IN1_CLOCKING_PLL_READ_ADDR 0xe0009824
#define CSR_HDMI_IN1_CLOCKING_PLL_READ_SIZE 1
static inline unsigned char hdmi_in1_clocking_pll_read_read(void) {
	unsigned char r = MMPTR(0xe0009824);
	return r;
}
static inline void hdmi_in1_clocking_pll_read_write(unsigned char value) {
	MMPTR(0xe0009824) = value;
}
#define CSR_HDMI_IN1_CLOCKING_PLL_WRITE_ADDR 0xe0009828
#define CSR_HDMI_IN1_CLOCKING_PLL_WRITE_SIZE 1
static inline unsigned char hdmi_in1_clocking_pll_write_read(void) {
	unsigned char r = MMPTR(0xe0009828);
	return r;
}
static inline void hdmi_in1_clocking_pll_write_write(unsigned char value) {
	MMPTR(0xe0009828) = value;
}
#define CSR_HDMI_IN1_CLOCKING_PLL_DRDY_ADDR 0xe000982c
#define CSR_HDMI_IN1_CLOCKING_PLL_DRDY_SIZE 1
static inline unsigned char hdmi_in1_clocking_pll_drdy_read(void) {
	unsigned char r = MMPTR(0xe000982c);
	return r;
}
#define CSR_HDMI_IN1_DATA0_CAP_DLY_CTL_ADDR 0xe0009830
#define CSR_HDMI_IN1_DATA0_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in1_data0_cap_dly_ctl_read(void) {
	unsigned char r = MMPTR(0xe0009830);
	return r;
}
static inline void hdmi_in1_data0_cap_dly_ctl_write(unsigned char value) {
	MMPTR(0xe0009830) = value;
}
#define CSR_HDMI_IN1_DATA0_CAP_DLY_BUSY_ADDR 0xe0009834
#define CSR_HDMI_IN1_DATA0_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in1_data0_cap_dly_busy_read(void) {
	unsigned char r = MMPTR(0xe0009834);
	return r;
}
#define CSR_HDMI_IN1_DATA0_CAP_PHASE_ADDR 0xe0009838
#define CSR_HDMI_IN1_DATA0_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in1_data0_cap_phase_read(void) {
	unsigned char r = MMPTR(0xe0009838);
	return r;
}
#define CSR_HDMI_IN1_DATA0_CAP_PHASE_RESET_ADDR 0xe000983c
#define CSR_HDMI_IN1_DATA0_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in1_data0_cap_phase_reset_read(void) {
	unsigned char r = MMPTR(0xe000983c);
	return r;
}
static inline void hdmi_in1_data0_cap_phase_reset_write(unsigned char value) {
	MMPTR(0xe000983c) = value;
}
#define CSR_HDMI_IN1_DATA0_CHARSYNC_CHAR_SYNCED_ADDR 0xe0009840
#define CSR_HDMI_IN1_DATA0_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in1_data0_charsync_char_synced_read(void) {
	unsigned char r = MMPTR(0xe0009840);
	return r;
}
#define CSR_HDMI_IN1_DATA0_CHARSYNC_CTL_POS_ADDR 0xe0009844
#define CSR_HDMI_IN1_DATA0_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in1_data0_charsync_ctl_pos_read(void) {
	unsigned char r = MMPTR(0xe0009844);
	return r;
}
#define CSR_HDMI_IN1_DATA0_WER_UPDATE_ADDR 0xe0009848
#define CSR_HDMI_IN1_DATA0_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in1_data0_wer_update_read(void) {
	unsigned char r = MMPTR(0xe0009848);
	return r;
}
static inline void hdmi_in1_data0_wer_update_write(unsigned char value) {
	MMPTR(0xe0009848) = value;
}
#define CSR_HDMI_IN1_DATA0_WER_VALUE_ADDR 0xe000984c
#define CSR_HDMI_IN1_DATA0_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in1_data0_wer_value_read(void) {
	unsigned int r = MMPTR(0xe000984c);
	r <<= 8;
	r |= MMPTR(0xe0009850);
	r <<= 8;
	r |= MMPTR(0xe0009854);
	return r;
}
#define CSR_HDMI_IN1_DATA1_CAP_DLY_CTL_ADDR 0xe0009858
#define CSR_HDMI_IN1_DATA1_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in1_data1_cap_dly_ctl_read(void) {
	unsigned char r = MMPTR(0xe0009858);
	return r;
}
static inline void hdmi_in1_data1_cap_dly_ctl_write(unsigned char value) {
	MMPTR(0xe0009858) = value;
}
#define CSR_HDMI_IN1_DATA1_CAP_DLY_BUSY_ADDR 0xe000985c
#define CSR_HDMI_IN1_DATA1_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in1_data1_cap_dly_busy_read(void) {
	unsigned char r = MMPTR(0xe000985c);
	return r;
}
#define CSR_HDMI_IN1_DATA1_CAP_PHASE_ADDR 0xe0009860
#define CSR_HDMI_IN1_DATA1_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in1_data1_cap_phase_read(void) {
	unsigned char r = MMPTR(0xe0009860);
	return r;
}
#define CSR_HDMI_IN1_DATA1_CAP_PHASE_RESET_ADDR 0xe0009864
#define CSR_HDMI_IN1_DATA1_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in1_data1_cap_phase_reset_read(void) {
	unsigned char r = MMPTR(0xe0009864);
	return r;
}
static inline void hdmi_in1_data1_cap_phase_reset_write(unsigned char value) {
	MMPTR(0xe0009864) = value;
}
#define CSR_HDMI_IN1_DATA1_CHARSYNC_CHAR_SYNCED_ADDR 0xe0009868
#define CSR_HDMI_IN1_DATA1_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in1_data1_charsync_char_synced_read(void) {
	unsigned char r = MMPTR(0xe0009868);
	return r;
}
#define CSR_HDMI_IN1_DATA1_CHARSYNC_CTL_POS_ADDR 0xe000986c
#define CSR_HDMI_IN1_DATA1_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in1_data1_charsync_ctl_pos_read(void) {
	unsigned char r = MMPTR(0xe000986c);
	return r;
}
#define CSR_HDMI_IN1_DATA1_WER_UPDATE_ADDR 0xe0009870
#define CSR_HDMI_IN1_DATA1_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in1_data1_wer_update_read(void) {
	unsigned char r = MMPTR(0xe0009870);
	return r;
}
static inline void hdmi_in1_data1_wer_update_write(unsigned char value) {
	MMPTR(0xe0009870) = value;
}
#define CSR_HDMI_IN1_DATA1_WER_VALUE_ADDR 0xe0009874
#define CSR_HDMI_IN1_DATA1_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in1_data1_wer_value_read(void) {
	unsigned int r = MMPTR(0xe0009874);
	r <<= 8;
	r |= MMPTR(0xe0009878);
	r <<= 8;
	r |= MMPTR(0xe000987c);
	return r;
}
#define CSR_HDMI_IN1_DATA2_CAP_DLY_CTL_ADDR 0xe0009880
#define CSR_HDMI_IN1_DATA2_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in1_data2_cap_dly_ctl_read(void) {
	unsigned char r = MMPTR(0xe0009880);
	return r;
}
static inline void hdmi_in1_data2_cap_dly_ctl_write(unsigned char value) {
	MMPTR(0xe0009880) = value;
}
#define CSR_HDMI_IN1_DATA2_CAP_DLY_BUSY_ADDR 0xe0009884
#define CSR_HDMI_IN1_DATA2_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in1_data2_cap_dly_busy_read(void) {
	unsigned char r = MMPTR(0xe0009884);
	return r;
}
#define CSR_HDMI_IN1_DATA2_CAP_PHASE_ADDR 0xe0009888
#define CSR_HDMI_IN1_DATA2_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in1_data2_cap_phase_read(void) {
	unsigned char r = MMPTR(0xe0009888);
	return r;
}
#define CSR_HDMI_IN1_DATA2_CAP_PHASE_RESET_ADDR 0xe000988c
#define CSR_HDMI_IN1_DATA2_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in1_data2_cap_phase_reset_read(void) {
	unsigned char r = MMPTR(0xe000988c);
	return r;
}
static inline void hdmi_in1_data2_cap_phase_reset_write(unsigned char value) {
	MMPTR(0xe000988c) = value;
}
#define CSR_HDMI_IN1_DATA2_CHARSYNC_CHAR_SYNCED_ADDR 0xe0009890
#define CSR_HDMI_IN1_DATA2_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in1_data2_charsync_char_synced_read(void) {
	unsigned char r = MMPTR(0xe0009890);
	return r;
}
#define CSR_HDMI_IN1_DATA2_CHARSYNC_CTL_POS_ADDR 0xe0009894
#define CSR_HDMI_IN1_DATA2_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in1_data2_charsync_ctl_pos_read(void) {
	unsigned char r = MMPTR(0xe0009894);
	return r;
}
#define CSR_HDMI_IN1_DATA2_WER_UPDATE_ADDR 0xe0009898
#define CSR_HDMI_IN1_DATA2_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in1_data2_wer_update_read(void) {
	unsigned char r = MMPTR(0xe0009898);
	return r;
}
static inline void hdmi_in1_data2_wer_update_write(unsigned char value) {
	MMPTR(0xe0009898) = value;
}
#define CSR_HDMI_IN1_DATA2_WER_VALUE_ADDR 0xe000989c
#define CSR_HDMI_IN1_DATA2_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in1_data2_wer_value_read(void) {
	unsigned int r = MMPTR(0xe000989c);
	r <<= 8;
	r |= MMPTR(0xe00098a0);
	r <<= 8;
	r |= MMPTR(0xe00098a4);
	return r;
}
#define CSR_HDMI_IN1_CHANSYNC_CHANNELS_SYNCED_ADDR 0xe00098a8
#define CSR_HDMI_IN1_CHANSYNC_CHANNELS_SYNCED_SIZE 1
static inline unsigned char hdmi_in1_chansync_channels_synced_read(void) {
	unsigned char r = MMPTR(0xe00098a8);
	return r;
}
#define CSR_HDMI_IN1_RESDETECTION_HRES_ADDR 0xe00098ac
#define CSR_HDMI_IN1_RESDETECTION_HRES_SIZE 2
static inline unsigned short int hdmi_in1_resdetection_hres_read(void) {
	unsigned short int r = MMPTR(0xe00098ac);
	r <<= 8;
	r |= MMPTR(0xe00098b0);
	return r;
}
#define CSR_HDMI_IN1_RESDETECTION_VRES_ADDR 0xe00098b4
#define CSR_HDMI_IN1_RESDETECTION_VRES_SIZE 2
static inline unsigned short int hdmi_in1_resdetection_vres_read(void) {
	unsigned short int r = MMPTR(0xe00098b4);
	r <<= 8;
	r |= MMPTR(0xe00098b8);
	return r;
}
#define CSR_HDMI_IN1_FRAME_OVERFLOW_ADDR 0xe00098bc
#define CSR_HDMI_IN1_FRAME_OVERFLOW_SIZE 1
static inline unsigned char hdmi_in1_frame_overflow_read(void) {
	unsigned char r = MMPTR(0xe00098bc);
	return r;
}
static inline void hdmi_in1_frame_overflow_write(unsigned char value) {
	MMPTR(0xe00098bc) = value;
}
#define CSR_HDMI_IN1_DMA_FRAME_SIZE_ADDR 0xe00098c0
#define CSR_HDMI_IN1_DMA_FRAME_SIZE_SIZE 4
static inline unsigned int hdmi_in1_dma_frame_size_read(void) {
	unsigned int r = MMPTR(0xe00098c0);
	r <<= 8;
	r |= MMPTR(0xe00098c4);
	r <<= 8;
	r |= MMPTR(0xe00098c8);
	r <<= 8;
	r |= MMPTR(0xe00098cc);
	return r;
}
static inline void hdmi_in1_dma_frame_size_write(unsigned int value) {
	MMPTR(0xe00098c0) = value >> 24;
	MMPTR(0xe00098c4) = value >> 16;
	MMPTR(0xe00098c8) = value >> 8;
	MMPTR(0xe00098cc) = value;
}
#define CSR_HDMI_IN1_DMA_SLOT0_STATUS_ADDR 0xe00098d0
#define CSR_HDMI_IN1_DMA_SLOT0_STATUS_SIZE 1
static inline unsigned char hdmi_in1_dma_slot0_status_read(void) {
	unsigned char r = MMPTR(0xe00098d0);
	return r;
}
static inline void hdmi_in1_dma_slot0_status_write(unsigned char value) {
	MMPTR(0xe00098d0) = value;
}
#define CSR_HDMI_IN1_DMA_SLOT0_ADDRESS_ADDR 0xe00098d4
#define CSR_HDMI_IN1_DMA_SLOT0_ADDRESS_SIZE 4
static inline unsigned int hdmi_in1_dma_slot0_address_read(void) {
	unsigned int r = MMPTR(0xe00098d4);
	r <<= 8;
	r |= MMPTR(0xe00098d8);
	r <<= 8;
	r |= MMPTR(0xe00098dc);
	r <<= 8;
	r |= MMPTR(0xe00098e0);
	return r;
}
static inline void hdmi_in1_dma_slot0_address_write(unsigned int value) {
	MMPTR(0xe00098d4) = value >> 24;
	MMPTR(0xe00098d8) = value >> 16;
	MMPTR(0xe00098dc) = value >> 8;
	MMPTR(0xe00098e0) = value;
}
#define CSR_HDMI_IN1_DMA_SLOT1_STATUS_ADDR 0xe00098e4
#define CSR_HDMI_IN1_DMA_SLOT1_STATUS_SIZE 1
static inline unsigned char hdmi_in1_dma_slot1_status_read(void) {
	unsigned char r = MMPTR(0xe00098e4);
	return r;
}
static inline void hdmi_in1_dma_slot1_status_write(unsigned char value) {
	MMPTR(0xe00098e4) = value;
}
#define CSR_HDMI_IN1_DMA_SLOT1_ADDRESS_ADDR 0xe00098e8
#define CSR_HDMI_IN1_DMA_SLOT1_ADDRESS_SIZE 4
static inline unsigned int hdmi_in1_dma_slot1_address_read(void) {
	unsigned int r = MMPTR(0xe00098e8);
	r <<= 8;
	r |= MMPTR(0xe00098ec);
	r <<= 8;
	r |= MMPTR(0xe00098f0);
	r <<= 8;
	r |= MMPTR(0xe00098f4);
	return r;
}
static inline void hdmi_in1_dma_slot1_address_write(unsigned int value) {
	MMPTR(0xe00098e8) = value >> 24;
	MMPTR(0xe00098ec) = value >> 16;
	MMPTR(0xe00098f0) = value >> 8;
	MMPTR(0xe00098f4) = value;
}
#define CSR_HDMI_IN1_DMA_EV_STATUS_ADDR 0xe00098f8
#define CSR_HDMI_IN1_DMA_EV_STATUS_SIZE 1
static inline unsigned char hdmi_in1_dma_ev_status_read(void) {
	unsigned char r = MMPTR(0xe00098f8);
	return r;
}
static inline void hdmi_in1_dma_ev_status_write(unsigned char value) {
	MMPTR(0xe00098f8) = value;
}
#define CSR_HDMI_IN1_DMA_EV_PENDING_ADDR 0xe00098fc
#define CSR_HDMI_IN1_DMA_EV_PENDING_SIZE 1
static inline unsigned char hdmi_in1_dma_ev_pending_read(void) {
	unsigned char r = MMPTR(0xe00098fc);
	return r;
}
static inline void hdmi_in1_dma_ev_pending_write(unsigned char value) {
	MMPTR(0xe00098fc) = value;
}
#define CSR_HDMI_IN1_DMA_EV_ENABLE_ADDR 0xe0009900
#define CSR_HDMI_IN1_DMA_EV_ENABLE_SIZE 1
static inline unsigned char hdmi_in1_dma_ev_enable_read(void) {
	unsigned char r = MMPTR(0xe0009900);
	return r;
}
static inline void hdmi_in1_dma_ev_enable_write(unsigned char value) {
	MMPTR(0xe0009900) = value;
}

/* hdmi_out0 */
#define CSR_HDMI_OUT0_BASE 0xe0007800
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_ENABLE_ADDR 0xe0007800
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_ENABLE_SIZE 1
static inline unsigned char hdmi_out0_core_underflow_enable_read(void) {
	unsigned char r = MMPTR(0xe0007800);
	return r;
}
static inline void hdmi_out0_core_underflow_enable_write(unsigned char value) {
	MMPTR(0xe0007800) = value;
}
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_UPDATE_ADDR 0xe0007804
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_UPDATE_SIZE 1
static inline unsigned char hdmi_out0_core_underflow_update_read(void) {
	unsigned char r = MMPTR(0xe0007804);
	return r;
}
static inline void hdmi_out0_core_underflow_update_write(unsigned char value) {
	MMPTR(0xe0007804) = value;
}
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_COUNTER_ADDR 0xe0007808
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_COUNTER_SIZE 4
static inline unsigned int hdmi_out0_core_underflow_counter_read(void) {
	unsigned int r = MMPTR(0xe0007808);
	r <<= 8;
	r |= MMPTR(0xe000780c);
	r <<= 8;
	r |= MMPTR(0xe0007810);
	r <<= 8;
	r |= MMPTR(0xe0007814);
	return r;
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_ENABLE_ADDR 0xe0007818
#define CSR_HDMI_OUT0_CORE_INITIATOR_ENABLE_SIZE 1
static inline unsigned char hdmi_out0_core_initiator_enable_read(void) {
	unsigned char r = MMPTR(0xe0007818);
	return r;
}
static inline void hdmi_out0_core_initiator_enable_write(unsigned char value) {
	MMPTR(0xe0007818) = value;
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_HRES_ADDR 0xe000781c
#define CSR_HDMI_OUT0_CORE_INITIATOR_HRES_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_hres_read(void) {
	unsigned short int r = MMPTR(0xe000781c);
	r <<= 8;
	r |= MMPTR(0xe0007820);
	return r;
}
static inline void hdmi_out0_core_initiator_hres_write(unsigned short int value) {
	MMPTR(0xe000781c) = value >> 8;
	MMPTR(0xe0007820) = value;
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSYNC_START_ADDR 0xe0007824
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSYNC_START_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_hsync_start_read(void) {
	unsigned short int r = MMPTR(0xe0007824);
	r <<= 8;
	r |= MMPTR(0xe0007828);
	return r;
}
static inline void hdmi_out0_core_initiator_hsync_start_write(unsigned short int value) {
	MMPTR(0xe0007824) = value >> 8;
	MMPTR(0xe0007828) = value;
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSYNC_END_ADDR 0xe000782c
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSYNC_END_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_hsync_end_read(void) {
	unsigned short int r = MMPTR(0xe000782c);
	r <<= 8;
	r |= MMPTR(0xe0007830);
	return r;
}
static inline void hdmi_out0_core_initiator_hsync_end_write(unsigned short int value) {
	MMPTR(0xe000782c) = value >> 8;
	MMPTR(0xe0007830) = value;
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSCAN_ADDR 0xe0007834
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSCAN_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_hscan_read(void) {
	unsigned short int r = MMPTR(0xe0007834);
	r <<= 8;
	r |= MMPTR(0xe0007838);
	return r;
}
static inline void hdmi_out0_core_initiator_hscan_write(unsigned short int value) {
	MMPTR(0xe0007834) = value >> 8;
	MMPTR(0xe0007838) = value;
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_VRES_ADDR 0xe000783c
#define CSR_HDMI_OUT0_CORE_INITIATOR_VRES_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_vres_read(void) {
	unsigned short int r = MMPTR(0xe000783c);
	r <<= 8;
	r |= MMPTR(0xe0007840);
	return r;
}
static inline void hdmi_out0_core_initiator_vres_write(unsigned short int value) {
	MMPTR(0xe000783c) = value >> 8;
	MMPTR(0xe0007840) = value;
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSYNC_START_ADDR 0xe0007844
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSYNC_START_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_vsync_start_read(void) {
	unsigned short int r = MMPTR(0xe0007844);
	r <<= 8;
	r |= MMPTR(0xe0007848);
	return r;
}
static inline void hdmi_out0_core_initiator_vsync_start_write(unsigned short int value) {
	MMPTR(0xe0007844) = value >> 8;
	MMPTR(0xe0007848) = value;
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSYNC_END_ADDR 0xe000784c
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSYNC_END_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_vsync_end_read(void) {
	unsigned short int r = MMPTR(0xe000784c);
	r <<= 8;
	r |= MMPTR(0xe0007850);
	return r;
}
static inline void hdmi_out0_core_initiator_vsync_end_write(unsigned short int value) {
	MMPTR(0xe000784c) = value >> 8;
	MMPTR(0xe0007850) = value;
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSCAN_ADDR 0xe0007854
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSCAN_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_vscan_read(void) {
	unsigned short int r = MMPTR(0xe0007854);
	r <<= 8;
	r |= MMPTR(0xe0007858);
	return r;
}
static inline void hdmi_out0_core_initiator_vscan_write(unsigned short int value) {
	MMPTR(0xe0007854) = value >> 8;
	MMPTR(0xe0007858) = value;
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_BASE_ADDR 0xe000785c
#define CSR_HDMI_OUT0_CORE_INITIATOR_BASE_SIZE 4
static inline unsigned int hdmi_out0_core_initiator_base_read(void) {
	unsigned int r = MMPTR(0xe000785c);
	r <<= 8;
	r |= MMPTR(0xe0007860);
	r <<= 8;
	r |= MMPTR(0xe0007864);
	r <<= 8;
	r |= MMPTR(0xe0007868);
	return r;
}
static inline void hdmi_out0_core_initiator_base_write(unsigned int value) {
	MMPTR(0xe000785c) = value >> 24;
	MMPTR(0xe0007860) = value >> 16;
	MMPTR(0xe0007864) = value >> 8;
	MMPTR(0xe0007868) = value;
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_LENGTH_ADDR 0xe000786c
#define CSR_HDMI_OUT0_CORE_INITIATOR_LENGTH_SIZE 4
static inline unsigned int hdmi_out0_core_initiator_length_read(void) {
	unsigned int r = MMPTR(0xe000786c);
	r <<= 8;
	r |= MMPTR(0xe0007870);
	r <<= 8;
	r |= MMPTR(0xe0007874);
	r <<= 8;
	r |= MMPTR(0xe0007878);
	return r;
}
static inline void hdmi_out0_core_initiator_length_write(unsigned int value) {
	MMPTR(0xe000786c) = value >> 24;
	MMPTR(0xe0007870) = value >> 16;
	MMPTR(0xe0007874) = value >> 8;
	MMPTR(0xe0007878) = value;
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_CMD_DATA_ADDR 0xe000787c
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_CMD_DATA_SIZE 2
static inline unsigned short int hdmi_out0_driver_clocking_cmd_data_read(void) {
	unsigned short int r = MMPTR(0xe000787c);
	r <<= 8;
	r |= MMPTR(0xe0007880);
	return r;
}
static inline void hdmi_out0_driver_clocking_cmd_data_write(unsigned short int value) {
	MMPTR(0xe000787c) = value >> 8;
	MMPTR(0xe0007880) = value;
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_SEND_CMD_DATA_ADDR 0xe0007884
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_SEND_CMD_DATA_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_send_cmd_data_read(void) {
	unsigned char r = MMPTR(0xe0007884);
	return r;
}
static inline void hdmi_out0_driver_clocking_send_cmd_data_write(unsigned char value) {
	MMPTR(0xe0007884) = value;
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_SEND_GO_ADDR 0xe0007888
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_SEND_GO_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_send_go_read(void) {
	unsigned char r = MMPTR(0xe0007888);
	return r;
}
static inline void hdmi_out0_driver_clocking_send_go_write(unsigned char value) {
	MMPTR(0xe0007888) = value;
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_STATUS_ADDR 0xe000788c
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_STATUS_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_status_read(void) {
	unsigned char r = MMPTR(0xe000788c);
	return r;
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_RESET_ADDR 0xe0007890
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_RESET_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_pll_reset_read(void) {
	unsigned char r = MMPTR(0xe0007890);
	return r;
}
static inline void hdmi_out0_driver_clocking_pll_reset_write(unsigned char value) {
	MMPTR(0xe0007890) = value;
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_ADR_ADDR 0xe0007894
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_ADR_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_pll_adr_read(void) {
	unsigned char r = MMPTR(0xe0007894);
	return r;
}
static inline void hdmi_out0_driver_clocking_pll_adr_write(unsigned char value) {
	MMPTR(0xe0007894) = value;
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DAT_R_ADDR 0xe0007898
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DAT_R_SIZE 2
static inline unsigned short int hdmi_out0_driver_clocking_pll_dat_r_read(void) {
	unsigned short int r = MMPTR(0xe0007898);
	r <<= 8;
	r |= MMPTR(0xe000789c);
	return r;
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DAT_W_ADDR 0xe00078a0
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DAT_W_SIZE 2
static inline unsigned short int hdmi_out0_driver_clocking_pll_dat_w_read(void) {
	unsigned short int r = MMPTR(0xe00078a0);
	r <<= 8;
	r |= MMPTR(0xe00078a4);
	return r;
}
static inline void hdmi_out0_driver_clocking_pll_dat_w_write(unsigned short int value) {
	MMPTR(0xe00078a0) = value >> 8;
	MMPTR(0xe00078a4) = value;
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_READ_ADDR 0xe00078a8
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_READ_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_pll_read_read(void) {
	unsigned char r = MMPTR(0xe00078a8);
	return r;
}
static inline void hdmi_out0_driver_clocking_pll_read_write(unsigned char value) {
	MMPTR(0xe00078a8) = value;
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_WRITE_ADDR 0xe00078ac
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_WRITE_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_pll_write_read(void) {
	unsigned char r = MMPTR(0xe00078ac);
	return r;
}
static inline void hdmi_out0_driver_clocking_pll_write_write(unsigned char value) {
	MMPTR(0xe00078ac) = value;
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DRDY_ADDR 0xe00078b0
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DRDY_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_pll_drdy_read(void) {
	unsigned char r = MMPTR(0xe00078b0);
	return r;
}

/* hdmi_out1 */
#define CSR_HDMI_OUT1_BASE 0xe0008000
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_ENABLE_ADDR 0xe0008000
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_ENABLE_SIZE 1
static inline unsigned char hdmi_out1_core_underflow_enable_read(void) {
	unsigned char r = MMPTR(0xe0008000);
	return r;
}
static inline void hdmi_out1_core_underflow_enable_write(unsigned char value) {
	MMPTR(0xe0008000) = value;
}
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_UPDATE_ADDR 0xe0008004
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_UPDATE_SIZE 1
static inline unsigned char hdmi_out1_core_underflow_update_read(void) {
	unsigned char r = MMPTR(0xe0008004);
	return r;
}
static inline void hdmi_out1_core_underflow_update_write(unsigned char value) {
	MMPTR(0xe0008004) = value;
}
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_COUNTER_ADDR 0xe0008008
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_COUNTER_SIZE 4
static inline unsigned int hdmi_out1_core_underflow_counter_read(void) {
	unsigned int r = MMPTR(0xe0008008);
	r <<= 8;
	r |= MMPTR(0xe000800c);
	r <<= 8;
	r |= MMPTR(0xe0008010);
	r <<= 8;
	r |= MMPTR(0xe0008014);
	return r;
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_ENABLE_ADDR 0xe0008018
#define CSR_HDMI_OUT1_CORE_INITIATOR_ENABLE_SIZE 1
static inline unsigned char hdmi_out1_core_initiator_enable_read(void) {
	unsigned char r = MMPTR(0xe0008018);
	return r;
}
static inline void hdmi_out1_core_initiator_enable_write(unsigned char value) {
	MMPTR(0xe0008018) = value;
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_HRES_ADDR 0xe000801c
#define CSR_HDMI_OUT1_CORE_INITIATOR_HRES_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_hres_read(void) {
	unsigned short int r = MMPTR(0xe000801c);
	r <<= 8;
	r |= MMPTR(0xe0008020);
	return r;
}
static inline void hdmi_out1_core_initiator_hres_write(unsigned short int value) {
	MMPTR(0xe000801c) = value >> 8;
	MMPTR(0xe0008020) = value;
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSYNC_START_ADDR 0xe0008024
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSYNC_START_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_hsync_start_read(void) {
	unsigned short int r = MMPTR(0xe0008024);
	r <<= 8;
	r |= MMPTR(0xe0008028);
	return r;
}
static inline void hdmi_out1_core_initiator_hsync_start_write(unsigned short int value) {
	MMPTR(0xe0008024) = value >> 8;
	MMPTR(0xe0008028) = value;
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSYNC_END_ADDR 0xe000802c
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSYNC_END_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_hsync_end_read(void) {
	unsigned short int r = MMPTR(0xe000802c);
	r <<= 8;
	r |= MMPTR(0xe0008030);
	return r;
}
static inline void hdmi_out1_core_initiator_hsync_end_write(unsigned short int value) {
	MMPTR(0xe000802c) = value >> 8;
	MMPTR(0xe0008030) = value;
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSCAN_ADDR 0xe0008034
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSCAN_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_hscan_read(void) {
	unsigned short int r = MMPTR(0xe0008034);
	r <<= 8;
	r |= MMPTR(0xe0008038);
	return r;
}
static inline void hdmi_out1_core_initiator_hscan_write(unsigned short int value) {
	MMPTR(0xe0008034) = value >> 8;
	MMPTR(0xe0008038) = value;
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_VRES_ADDR 0xe000803c
#define CSR_HDMI_OUT1_CORE_INITIATOR_VRES_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_vres_read(void) {
	unsigned short int r = MMPTR(0xe000803c);
	r <<= 8;
	r |= MMPTR(0xe0008040);
	return r;
}
static inline void hdmi_out1_core_initiator_vres_write(unsigned short int value) {
	MMPTR(0xe000803c) = value >> 8;
	MMPTR(0xe0008040) = value;
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSYNC_START_ADDR 0xe0008044
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSYNC_START_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_vsync_start_read(void) {
	unsigned short int r = MMPTR(0xe0008044);
	r <<= 8;
	r |= MMPTR(0xe0008048);
	return r;
}
static inline void hdmi_out1_core_initiator_vsync_start_write(unsigned short int value) {
	MMPTR(0xe0008044) = value >> 8;
	MMPTR(0xe0008048) = value;
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSYNC_END_ADDR 0xe000804c
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSYNC_END_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_vsync_end_read(void) {
	unsigned short int r = MMPTR(0xe000804c);
	r <<= 8;
	r |= MMPTR(0xe0008050);
	return r;
}
static inline void hdmi_out1_core_initiator_vsync_end_write(unsigned short int value) {
	MMPTR(0xe000804c) = value >> 8;
	MMPTR(0xe0008050) = value;
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSCAN_ADDR 0xe0008054
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSCAN_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_vscan_read(void) {
	unsigned short int r = MMPTR(0xe0008054);
	r <<= 8;
	r |= MMPTR(0xe0008058);
	return r;
}
static inline void hdmi_out1_core_initiator_vscan_write(unsigned short int value) {
	MMPTR(0xe0008054) = value >> 8;
	MMPTR(0xe0008058) = value;
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_BASE_ADDR 0xe000805c
#define CSR_HDMI_OUT1_CORE_INITIATOR_BASE_SIZE 4
static inline unsigned int hdmi_out1_core_initiator_base_read(void) {
	unsigned int r = MMPTR(0xe000805c);
	r <<= 8;
	r |= MMPTR(0xe0008060);
	r <<= 8;
	r |= MMPTR(0xe0008064);
	r <<= 8;
	r |= MMPTR(0xe0008068);
	return r;
}
static inline void hdmi_out1_core_initiator_base_write(unsigned int value) {
	MMPTR(0xe000805c) = value >> 24;
	MMPTR(0xe0008060) = value >> 16;
	MMPTR(0xe0008064) = value >> 8;
	MMPTR(0xe0008068) = value;
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_LENGTH_ADDR 0xe000806c
#define CSR_HDMI_OUT1_CORE_INITIATOR_LENGTH_SIZE 4
static inline unsigned int hdmi_out1_core_initiator_length_read(void) {
	unsigned int r = MMPTR(0xe000806c);
	r <<= 8;
	r |= MMPTR(0xe0008070);
	r <<= 8;
	r |= MMPTR(0xe0008074);
	r <<= 8;
	r |= MMPTR(0xe0008078);
	return r;
}
static inline void hdmi_out1_core_initiator_length_write(unsigned int value) {
	MMPTR(0xe000806c) = value >> 24;
	MMPTR(0xe0008070) = value >> 16;
	MMPTR(0xe0008074) = value >> 8;
	MMPTR(0xe0008078) = value;
}

/* info */
#define CSR_INFO_BASE 0xe0006000
#define CSR_INFO_DNA_ID_ADDR 0xe0006000
#define CSR_INFO_DNA_ID_SIZE 8
static inline unsigned long long int info_dna_id_read(void) {
	unsigned long long int r = MMPTR(0xe0006000);
	r <<= 8;
	r |= MMPTR(0xe0006004);
	r <<= 8;
	r |= MMPTR(0xe0006008);
	r <<= 8;
	r |= MMPTR(0xe000600c);
	r <<= 8;
	r |= MMPTR(0xe0006010);
	r <<= 8;
	r |= MMPTR(0xe0006014);
	r <<= 8;
	r |= MMPTR(0xe0006018);
	r <<= 8;
	r |= MMPTR(0xe000601c);
	return r;
}
#define CSR_INFO_GIT_COMMIT_ADDR 0xe0006020
#define CSR_INFO_GIT_COMMIT_SIZE 20
#define CSR_INFO_PLATFORM_PLATFORM_ADDR 0xe0006070
#define CSR_INFO_PLATFORM_PLATFORM_SIZE 8
static inline unsigned long long int info_platform_platform_read(void) {
	unsigned long long int r = MMPTR(0xe0006070);
	r <<= 8;
	r |= MMPTR(0xe0006074);
	r <<= 8;
	r |= MMPTR(0xe0006078);
	r <<= 8;
	r |= MMPTR(0xe000607c);
	r <<= 8;
	r |= MMPTR(0xe0006080);
	r <<= 8;
	r |= MMPTR(0xe0006084);
	r <<= 8;
	r |= MMPTR(0xe0006088);
	r <<= 8;
	r |= MMPTR(0xe000608c);
	return r;
}
#define CSR_INFO_PLATFORM_TARGET_ADDR 0xe0006090
#define CSR_INFO_PLATFORM_TARGET_SIZE 8
static inline unsigned long long int info_platform_target_read(void) {
	unsigned long long int r = MMPTR(0xe0006090);
	r <<= 8;
	r |= MMPTR(0xe0006094);
	r <<= 8;
	r |= MMPTR(0xe0006098);
	r <<= 8;
	r |= MMPTR(0xe000609c);
	r <<= 8;
	r |= MMPTR(0xe00060a0);
	r <<= 8;
	r |= MMPTR(0xe00060a4);
	r <<= 8;
	r |= MMPTR(0xe00060a8);
	r <<= 8;
	r |= MMPTR(0xe00060ac);
	return r;
}

/* sdram */
#define CSR_SDRAM_BASE 0xe0004000
#define CSR_SDRAM_DFII_CONTROL_ADDR 0xe0004000
#define CSR_SDRAM_DFII_CONTROL_SIZE 1
static inline unsigned char sdram_dfii_control_read(void) {
	unsigned char r = MMPTR(0xe0004000);
	return r;
}
static inline void sdram_dfii_control_write(unsigned char value) {
	MMPTR(0xe0004000) = value;
}
#define CSR_SDRAM_DFII_PI0_COMMAND_ADDR 0xe0004004
#define CSR_SDRAM_DFII_PI0_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi0_command_read(void) {
	unsigned char r = MMPTR(0xe0004004);
	return r;
}
static inline void sdram_dfii_pi0_command_write(unsigned char value) {
	MMPTR(0xe0004004) = value;
}
#define CSR_SDRAM_DFII_PI0_COMMAND_ISSUE_ADDR 0xe0004008
#define CSR_SDRAM_DFII_PI0_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi0_command_issue_read(void) {
	unsigned char r = MMPTR(0xe0004008);
	return r;
}
static inline void sdram_dfii_pi0_command_issue_write(unsigned char value) {
	MMPTR(0xe0004008) = value;
}
#define CSR_SDRAM_DFII_PI0_ADDRESS_ADDR 0xe000400c
#define CSR_SDRAM_DFII_PI0_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi0_address_read(void) {
	unsigned short int r = MMPTR(0xe000400c);
	r <<= 8;
	r |= MMPTR(0xe0004010);
	return r;
}
static inline void sdram_dfii_pi0_address_write(unsigned short int value) {
	MMPTR(0xe000400c) = value >> 8;
	MMPTR(0xe0004010) = value;
}
#define CSR_SDRAM_DFII_PI0_BADDRESS_ADDR 0xe0004014
#define CSR_SDRAM_DFII_PI0_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi0_baddress_read(void) {
	unsigned char r = MMPTR(0xe0004014);
	return r;
}
static inline void sdram_dfii_pi0_baddress_write(unsigned char value) {
	MMPTR(0xe0004014) = value;
}
#define CSR_SDRAM_DFII_PI0_WRDATA_ADDR 0xe0004018
#define CSR_SDRAM_DFII_PI0_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi0_wrdata_read(void) {
	unsigned int r = MMPTR(0xe0004018);
	r <<= 8;
	r |= MMPTR(0xe000401c);
	r <<= 8;
	r |= MMPTR(0xe0004020);
	r <<= 8;
	r |= MMPTR(0xe0004024);
	return r;
}
static inline void sdram_dfii_pi0_wrdata_write(unsigned int value) {
	MMPTR(0xe0004018) = value >> 24;
	MMPTR(0xe000401c) = value >> 16;
	MMPTR(0xe0004020) = value >> 8;
	MMPTR(0xe0004024) = value;
}
#define CSR_SDRAM_DFII_PI0_RDDATA_ADDR 0xe0004028
#define CSR_SDRAM_DFII_PI0_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi0_rddata_read(void) {
	unsigned int r = MMPTR(0xe0004028);
	r <<= 8;
	r |= MMPTR(0xe000402c);
	r <<= 8;
	r |= MMPTR(0xe0004030);
	r <<= 8;
	r |= MMPTR(0xe0004034);
	return r;
}
#define CSR_SDRAM_DFII_PI1_COMMAND_ADDR 0xe0004038
#define CSR_SDRAM_DFII_PI1_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi1_command_read(void) {
	unsigned char r = MMPTR(0xe0004038);
	return r;
}
static inline void sdram_dfii_pi1_command_write(unsigned char value) {
	MMPTR(0xe0004038) = value;
}
#define CSR_SDRAM_DFII_PI1_COMMAND_ISSUE_ADDR 0xe000403c
#define CSR_SDRAM_DFII_PI1_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi1_command_issue_read(void) {
	unsigned char r = MMPTR(0xe000403c);
	return r;
}
static inline void sdram_dfii_pi1_command_issue_write(unsigned char value) {
	MMPTR(0xe000403c) = value;
}
#define CSR_SDRAM_DFII_PI1_ADDRESS_ADDR 0xe0004040
#define CSR_SDRAM_DFII_PI1_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi1_address_read(void) {
	unsigned short int r = MMPTR(0xe0004040);
	r <<= 8;
	r |= MMPTR(0xe0004044);
	return r;
}
static inline void sdram_dfii_pi1_address_write(unsigned short int value) {
	MMPTR(0xe0004040) = value >> 8;
	MMPTR(0xe0004044) = value;
}
#define CSR_SDRAM_DFII_PI1_BADDRESS_ADDR 0xe0004048
#define CSR_SDRAM_DFII_PI1_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi1_baddress_read(void) {
	unsigned char r = MMPTR(0xe0004048);
	return r;
}
static inline void sdram_dfii_pi1_baddress_write(unsigned char value) {
	MMPTR(0xe0004048) = value;
}
#define CSR_SDRAM_DFII_PI1_WRDATA_ADDR 0xe000404c
#define CSR_SDRAM_DFII_PI1_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi1_wrdata_read(void) {
	unsigned int r = MMPTR(0xe000404c);
	r <<= 8;
	r |= MMPTR(0xe0004050);
	r <<= 8;
	r |= MMPTR(0xe0004054);
	r <<= 8;
	r |= MMPTR(0xe0004058);
	return r;
}
static inline void sdram_dfii_pi1_wrdata_write(unsigned int value) {
	MMPTR(0xe000404c) = value >> 24;
	MMPTR(0xe0004050) = value >> 16;
	MMPTR(0xe0004054) = value >> 8;
	MMPTR(0xe0004058) = value;
}
#define CSR_SDRAM_DFII_PI1_RDDATA_ADDR 0xe000405c
#define CSR_SDRAM_DFII_PI1_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi1_rddata_read(void) {
	unsigned int r = MMPTR(0xe000405c);
	r <<= 8;
	r |= MMPTR(0xe0004060);
	r <<= 8;
	r |= MMPTR(0xe0004064);
	r <<= 8;
	r |= MMPTR(0xe0004068);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_ADDR 0xe000406c
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_SIZE 1
static inline unsigned char sdram_controller_bandwidth_update_read(void) {
	unsigned char r = MMPTR(0xe000406c);
	return r;
}
static inline void sdram_controller_bandwidth_update_write(unsigned char value) {
	MMPTR(0xe000406c) = value;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_ADDR 0xe0004070
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nreads_read(void) {
	unsigned int r = MMPTR(0xe0004070);
	r <<= 8;
	r |= MMPTR(0xe0004074);
	r <<= 8;
	r |= MMPTR(0xe0004078);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_ADDR 0xe000407c
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nwrites_read(void) {
	unsigned int r = MMPTR(0xe000407c);
	r <<= 8;
	r |= MMPTR(0xe0004080);
	r <<= 8;
	r |= MMPTR(0xe0004084);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_ADDR 0xe0004088
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_SIZE 1
static inline unsigned char sdram_controller_bandwidth_data_width_read(void) {
	unsigned char r = MMPTR(0xe0004088);
	return r;
}

/* spiflash */
#define CSR_SPIFLASH_BASE 0xe0005000
#define CSR_SPIFLASH_BITBANG_ADDR 0xe0005000
#define CSR_SPIFLASH_BITBANG_SIZE 1
static inline unsigned char spiflash_bitbang_read(void) {
	unsigned char r = MMPTR(0xe0005000);
	return r;
}
static inline void spiflash_bitbang_write(unsigned char value) {
	MMPTR(0xe0005000) = value;
}
#define CSR_SPIFLASH_MISO_ADDR 0xe0005004
#define CSR_SPIFLASH_MISO_SIZE 1
static inline unsigned char spiflash_miso_read(void) {
	unsigned char r = MMPTR(0xe0005004);
	return r;
}
#define CSR_SPIFLASH_BITBANG_EN_ADDR 0xe0005008
#define CSR_SPIFLASH_BITBANG_EN_SIZE 1
static inline unsigned char spiflash_bitbang_en_read(void) {
	unsigned char r = MMPTR(0xe0005008);
	return r;
}
static inline void spiflash_bitbang_en_write(unsigned char value) {
	MMPTR(0xe0005008) = value;
}

/* timer0 */
#define CSR_TIMER0_BASE 0xe0002000
#define CSR_TIMER0_LOAD_ADDR 0xe0002000
#define CSR_TIMER0_LOAD_SIZE 4
static inline unsigned int timer0_load_read(void) {
	unsigned int r = MMPTR(0xe0002000);
	r <<= 8;
	r |= MMPTR(0xe0002004);
	r <<= 8;
	r |= MMPTR(0xe0002008);
	r <<= 8;
	r |= MMPTR(0xe000200c);
	return r;
}
static inline void timer0_load_write(unsigned int value) {
	MMPTR(0xe0002000) = value >> 24;
	MMPTR(0xe0002004) = value >> 16;
	MMPTR(0xe0002008) = value >> 8;
	MMPTR(0xe000200c) = value;
}
#define CSR_TIMER0_RELOAD_ADDR 0xe0002010
#define CSR_TIMER0_RELOAD_SIZE 4
static inline unsigned int timer0_reload_read(void) {
	unsigned int r = MMPTR(0xe0002010);
	r <<= 8;
	r |= MMPTR(0xe0002014);
	r <<= 8;
	r |= MMPTR(0xe0002018);
	r <<= 8;
	r |= MMPTR(0xe000201c);
	return r;
}
static inline void timer0_reload_write(unsigned int value) {
	MMPTR(0xe0002010) = value >> 24;
	MMPTR(0xe0002014) = value >> 16;
	MMPTR(0xe0002018) = value >> 8;
	MMPTR(0xe000201c) = value;
}
#define CSR_TIMER0_EN_ADDR 0xe0002020
#define CSR_TIMER0_EN_SIZE 1
static inline unsigned char timer0_en_read(void) {
	unsigned char r = MMPTR(0xe0002020);
	return r;
}
static inline void timer0_en_write(unsigned char value) {
	MMPTR(0xe0002020) = value;
}
#define CSR_TIMER0_UPDATE_VALUE_ADDR 0xe0002024
#define CSR_TIMER0_UPDATE_VALUE_SIZE 1
static inline unsigned char timer0_update_value_read(void) {
	unsigned char r = MMPTR(0xe0002024);
	return r;
}
static inline void timer0_update_value_write(unsigned char value) {
	MMPTR(0xe0002024) = value;
}
#define CSR_TIMER0_VALUE_ADDR 0xe0002028
#define CSR_TIMER0_VALUE_SIZE 4
static inline unsigned int timer0_value_read(void) {
	unsigned int r = MMPTR(0xe0002028);
	r <<= 8;
	r |= MMPTR(0xe000202c);
	r <<= 8;
	r |= MMPTR(0xe0002030);
	r <<= 8;
	r |= MMPTR(0xe0002034);
	return r;
}
#define CSR_TIMER0_EV_STATUS_ADDR 0xe0002038
#define CSR_TIMER0_EV_STATUS_SIZE 1
static inline unsigned char timer0_ev_status_read(void) {
	unsigned char r = MMPTR(0xe0002038);
	return r;
}
static inline void timer0_ev_status_write(unsigned char value) {
	MMPTR(0xe0002038) = value;
}
#define CSR_TIMER0_EV_PENDING_ADDR 0xe000203c
#define CSR_TIMER0_EV_PENDING_SIZE 1
static inline unsigned char timer0_ev_pending_read(void) {
	unsigned char r = MMPTR(0xe000203c);
	return r;
}
static inline void timer0_ev_pending_write(unsigned char value) {
	MMPTR(0xe000203c) = value;
}
#define CSR_TIMER0_EV_ENABLE_ADDR 0xe0002040
#define CSR_TIMER0_EV_ENABLE_SIZE 1
static inline unsigned char timer0_ev_enable_read(void) {
	unsigned char r = MMPTR(0xe0002040);
	return r;
}
static inline void timer0_ev_enable_write(unsigned char value) {
	MMPTR(0xe0002040) = value;
}

/* uart */
#define CSR_UART_BASE 0xe0001000
#define CSR_UART_RXTX_ADDR 0xe0001000
#define CSR_UART_RXTX_SIZE 1
static inline unsigned char uart_rxtx_read(void) {
	unsigned char r = MMPTR(0xe0001000);
	return r;
}
static inline void uart_rxtx_write(unsigned char value) {
	MMPTR(0xe0001000) = value;
}
#define CSR_UART_TXFULL_ADDR 0xe0001004
#define CSR_UART_TXFULL_SIZE 1
static inline unsigned char uart_txfull_read(void) {
	unsigned char r = MMPTR(0xe0001004);
	return r;
}
#define CSR_UART_RXEMPTY_ADDR 0xe0001008
#define CSR_UART_RXEMPTY_SIZE 1
static inline unsigned char uart_rxempty_read(void) {
	unsigned char r = MMPTR(0xe0001008);
	return r;
}
#define CSR_UART_EV_STATUS_ADDR 0xe000100c
#define CSR_UART_EV_STATUS_SIZE 1
static inline unsigned char uart_ev_status_read(void) {
	unsigned char r = MMPTR(0xe000100c);
	return r;
}
static inline void uart_ev_status_write(unsigned char value) {
	MMPTR(0xe000100c) = value;
}
#define CSR_UART_EV_PENDING_ADDR 0xe0001010
#define CSR_UART_EV_PENDING_SIZE 1
static inline unsigned char uart_ev_pending_read(void) {
	unsigned char r = MMPTR(0xe0001010);
	return r;
}
static inline void uart_ev_pending_write(unsigned char value) {
	MMPTR(0xe0001010) = value;
}
#define CSR_UART_EV_ENABLE_ADDR 0xe0001014
#define CSR_UART_EV_ENABLE_SIZE 1
static inline unsigned char uart_ev_enable_read(void) {
	unsigned char r = MMPTR(0xe0001014);
	return r;
}
static inline void uart_ev_enable_write(unsigned char value) {
	MMPTR(0xe0001014) = value;
}

/* uart_phy */
#define CSR_UART_PHY_BASE 0xe0000800
#define CSR_UART_PHY_TUNING_WORD_ADDR 0xe0000800
#define CSR_UART_PHY_TUNING_WORD_SIZE 4
static inline unsigned int uart_phy_tuning_word_read(void) {
	unsigned int r = MMPTR(0xe0000800);
	r <<= 8;
	r |= MMPTR(0xe0000804);
	r <<= 8;
	r |= MMPTR(0xe0000808);
	r <<= 8;
	r |= MMPTR(0xe000080c);
	return r;
}
static inline void uart_phy_tuning_word_write(unsigned int value) {
	MMPTR(0xe0000800) = value >> 24;
	MMPTR(0xe0000804) = value >> 16;
	MMPTR(0xe0000808) = value >> 8;
	MMPTR(0xe000080c) = value;
}
#define CSR_HDMI_IN0_EDID_MEM_BASE 0xe0009000
#define CSR_HDMI_IN1_EDID_MEM_BASE 0xe000a000

/* constants */
#define UART_INTERRUPT 0
static inline int uart_interrupt_read(void) {
	return 0;
}
#define TIMER0_INTERRUPT 1
static inline int timer0_interrupt_read(void) {
	return 1;
}
#define ETHMAC_INTERRUPT 2
static inline int ethmac_interrupt_read(void) {
	return 2;
}
#define HDMI_IN0_INTERRUPT 3
static inline int hdmi_in0_interrupt_read(void) {
	return 3;
}
#define HDMI_IN1_INTERRUPT 4
static inline int hdmi_in1_interrupt_read(void) {
	return 4;
}
#define CSR_DATA_WIDTH 8
static inline int csr_data_width_read(void) {
	return 8;
}
#define SYSTEM_CLOCK_FREQUENCY 75000000
static inline int system_clock_frequency_read(void) {
	return 75000000;
}
#define SPIFLASH_PAGE_SIZE 256
static inline int spiflash_page_size_read(void) {
	return 256;
}
#define SPIFLASH_SECTOR_SIZE 65536
static inline int spiflash_sector_size_read(void) {
	return 65536;
}
#define L2_SIZE 8192
static inline int l2_size_read(void) {
	return 8192;
}
#define LOCALIP1 192
static inline int localip1_read(void) {
	return 192;
}
#define LOCALIP2 168
static inline int localip2_read(void) {
	return 168;
}
#define LOCALIP3 100
static inline int localip3_read(void) {
	return 100;
}
#define LOCALIP4 50
static inline int localip4_read(void) {
	return 50;
}
#define REMOTEIP1 192
static inline int remoteip1_read(void) {
	return 192;
}
#define REMOTEIP2 168
static inline int remoteip2_read(void) {
	return 168;
}
#define REMOTEIP3 100
static inline int remoteip3_read(void) {
	return 100;
}
#define REMOTEIP4 100
static inline int remoteip4_read(void) {
	return 100;
}
#define HDMI_OUT0_DRIVER_CLOCKING_MAX_PIX_CLK 100000000
static inline int hdmi_out0_driver_clocking_max_pix_clk_read(void) {
	return 100000000;
}
#define HDMI_OUT0_DRIVER_CLOCKING_CLKFX_MD_MAX_1000 2000
static inline int hdmi_out0_driver_clocking_clkfx_md_max_1000_read(void) {
	return 2000;
}
#define CONFIG_CLOCK_FREQUENCY 75000000
static inline int config_clock_frequency_read(void) {
	return 75000000;
}
#define CONFIG_CPU_RESET_ADDR 0
static inline int config_cpu_reset_addr_read(void) {
	return 0;
}
#define CONFIG_CSR_DATA_WIDTH 8
static inline int config_csr_data_width_read(void) {
	return 8;
}

#endif
