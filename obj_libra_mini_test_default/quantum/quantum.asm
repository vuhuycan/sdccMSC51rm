;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (Linux)
;--------------------------------------------------------
	.module quantum
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _shutdown_quantum
	.globl _do_code16
	.globl _extract_mod_bits
	.globl _suspend_power_down_kb
	.globl _suspend_wakeup_init_kb
	.globl _led_wakeup
	.globl _led_suspend
	.globl _mcu_reset
	.globl _bootloader_jump
	.globl _layer_switch_get_layer
	.globl _default_layer_set
	.globl _clear_keyboard
	.globl _unregister_weak_mods
	.globl _register_weak_mods
	.globl _unregister_mods
	.globl _register_mods
	.globl _unregister_code
	.globl _register_code
	.globl _eeconfig_update_default_layer
	.globl _eeconfig_disable
	.globl _keymap_key_to_keycode
	.globl _DLY_ms
	.globl _UIF_BUS_RST
	.globl _UIF_DETECT
	.globl _UIF_TRANSFER
	.globl _UIF_SUSPEND
	.globl _UIF_HST_SOF
	.globl _UIF_FIFO_OV
	.globl _U_SIE_FREE
	.globl _U_TOG_OK
	.globl _U_IS_NAK
	.globl _ADC_CHAN0
	.globl _ADC_CHAN1
	.globl _CMP_CHAN
	.globl _ADC_START
	.globl _ADC_IF
	.globl _CMP_IF
	.globl _CMPO
	.globl _U1RI
	.globl _U1TI
	.globl _U1RB8
	.globl _U1TB8
	.globl _U1REN
	.globl _U1SMOD
	.globl _U1SM0
	.globl _S0_R_FIFO
	.globl _S0_T_FIFO
	.globl _S0_FREE
	.globl _S0_IF_BYTE
	.globl _S0_IF_FIRST
	.globl _S0_IF_OV
	.globl _S0_FST_ACT
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _CAP1F
	.globl _TF2
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _RXD
	.globl _PWM1_
	.globl _TXD
	.globl _PWM2_
	.globl _AIN3
	.globl _VBUS1
	.globl _INT0
	.globl _TXD1_
	.globl _INT1
	.globl _T0
	.globl _RXD1_
	.globl _PWM2
	.globl _T1
	.globl _UDP
	.globl _UDM
	.globl _TIN0
	.globl _CAP1
	.globl _T2
	.globl _AIN0
	.globl _VBUS2
	.globl _TIN1
	.globl _CAP2
	.globl _T2EX
	.globl _RXD_
	.globl _TXD_
	.globl _AIN1
	.globl _UCC1
	.globl _TIN2
	.globl _SCS
	.globl _CAP1_
	.globl _T2_
	.globl _AIN2
	.globl _UCC2
	.globl _TIN3
	.globl _PWM1
	.globl _MOSI
	.globl _TIN4
	.globl _RXD1
	.globl _MISO
	.globl _TIN5
	.globl _TXD1
	.globl _SCK
	.globl _IE_SPI0
	.globl _IE_TKEY
	.globl _IE_USB
	.globl _IE_ADC
	.globl _IE_UART1
	.globl _IE_PWMX
	.globl _IE_GPIO
	.globl _IE_WDOG
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PL_FLAG
	.globl _PH_FLAG
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _E_DIS
	.globl _EA
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _UEP1_DMA_H
	.globl _UEP1_DMA_L
	.globl _UEP1_DMA
	.globl _UEP0_DMA_H
	.globl _UEP0_DMA_L
	.globl _UEP0_DMA
	.globl _UEP2_3_MOD
	.globl _UEP4_1_MOD
	.globl _UEP3_DMA_H
	.globl _UEP3_DMA_L
	.globl _UEP3_DMA
	.globl _UEP2_DMA_H
	.globl _UEP2_DMA_L
	.globl _UEP2_DMA
	.globl _USB_DEV_AD
	.globl _USB_CTRL
	.globl _USB_INT_EN
	.globl _UEP4_T_LEN
	.globl _UEP4_CTRL
	.globl _UEP0_T_LEN
	.globl _UEP0_CTRL
	.globl _USB_RX_LEN
	.globl _USB_MIS_ST
	.globl _USB_INT_ST
	.globl _USB_INT_FG
	.globl _UEP3_T_LEN
	.globl _UEP3_CTRL
	.globl _UEP2_T_LEN
	.globl _UEP2_CTRL
	.globl _UEP1_T_LEN
	.globl _UEP1_CTRL
	.globl _UDEV_CTRL
	.globl _USB_C_CTRL
	.globl _TKEY_DATH
	.globl _TKEY_DATL
	.globl _TKEY_DAT
	.globl _TKEY_CTRL
	.globl _ADC_DATA
	.globl _ADC_CFG
	.globl _ADC_CTRL
	.globl _SBAUD1
	.globl _SBUF1
	.globl _SCON1
	.globl _SPI0_SETUP
	.globl _SPI0_CK_SE
	.globl _SPI0_CTRL
	.globl _SPI0_DATA
	.globl _SPI0_STAT
	.globl _PWM_CK_SE
	.globl _PWM_CTRL
	.globl _PWM_DATA1
	.globl _PWM_DATA2
	.globl _T2CAP1H
	.globl _T2CAP1L
	.globl _T2CAP1
	.globl _TH2
	.globl _TL2
	.globl _T2COUNT
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _RCAP2
	.globl _T2MOD
	.globl _T2CON
	.globl _SBUF
	.globl _SCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _XBUS_AUX
	.globl _PIN_FUNC
	.globl _P3_DIR_PU
	.globl _P3_MOD_OC
	.globl _P3
	.globl _P2
	.globl _P1_DIR_PU
	.globl _P1_MOD_OC
	.globl _P1
	.globl _ROM_CTRL
	.globl _ROM_DATA_H
	.globl _ROM_DATA_L
	.globl _ROM_DATA
	.globl _ROM_ADDR_H
	.globl _ROM_ADDR_L
	.globl _ROM_ADDR
	.globl _GPIO_IE
	.globl _IP_EX
	.globl _IE_EX
	.globl _IP
	.globl _IE
	.globl _WDOG_COUNT
	.globl _RESET_KEEP
	.globl _WAKE_CTRL
	.globl _CLOCK_CFG
	.globl _PCON
	.globl _GLOBAL_CFG
	.globl _SAFE_MOD
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _get_u16_str_PARM_2
	.globl _get_u8_str_PARM_2
	.globl _get_numeric_str_PARM_4
	.globl _get_numeric_str_PARM_3
	.globl _get_numeric_str_PARM_2
	.globl _process_record_quantum_helper_PARM_2
	.globl _get_event_keycode_PARM_1
	.globl _get_record_keycode_PARM_2
	.globl _post_process_record_user_PARM_2
	.globl _post_process_record_kb_PARM_2
	.globl _process_record_user_PARM_2
	.globl _process_record_kb_PARM_2
	.globl _pre_process_record_user_PARM_2
	.globl _pre_process_record_kb_PARM_2
	.globl _tap_code16_delay_PARM_2
	.globl _do_code16_PARM_2
	.globl _register_code16
	.globl _unregister_code16
	.globl _tap_code16_delay
	.globl _tap_code16
	.globl _pre_process_record_kb
	.globl _pre_process_record_user
	.globl _process_action_kb
	.globl _process_record_kb
	.globl _process_record_user
	.globl _post_process_record_kb
	.globl _post_process_record_user
	.globl _reset_keyboard
	.globl _soft_reset_keyboard
	.globl _get_record_keycode
	.globl _get_event_keycode
	.globl _pre_process_record_quantum
	.globl _post_process_record_quantum
	.globl _process_record_quantum
	.globl _process_record_quantum_helper
	.globl _set_single_persistent_default_layer
	.globl _startup_user
	.globl _shutdown_user
	.globl _suspend_power_down_quantum
	.globl _suspend_wakeup_init_quantum
	.globl _get_numeric_str
	.globl _get_u8_str
	.globl _get_u16_str
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SAFE_MOD	=	0x00a1
_GLOBAL_CFG	=	0x00b1
_PCON	=	0x0087
_CLOCK_CFG	=	0x00b9
_WAKE_CTRL	=	0x00a9
_RESET_KEEP	=	0x00fe
_WDOG_COUNT	=	0x00ff
_IE	=	0x00a8
_IP	=	0x00b8
_IE_EX	=	0x00e8
_IP_EX	=	0x00e9
_GPIO_IE	=	0x00c7
_ROM_ADDR	=	0x8584
_ROM_ADDR_L	=	0x0084
_ROM_ADDR_H	=	0x0085
_ROM_DATA	=	0x8f8e
_ROM_DATA_L	=	0x008e
_ROM_DATA_H	=	0x008f
_ROM_CTRL	=	0x0086
_P1	=	0x0090
_P1_MOD_OC	=	0x0092
_P1_DIR_PU	=	0x0093
_P2	=	0x00a0
_P3	=	0x00b0
_P3_MOD_OC	=	0x0096
_P3_DIR_PU	=	0x0097
_PIN_FUNC	=	0x00c6
_XBUS_AUX	=	0x00a2
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_SCON	=	0x0098
_SBUF	=	0x0099
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2	=	0xcbca
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_T2COUNT	=	0xcdcc
_TL2	=	0x00cc
_TH2	=	0x00cd
_T2CAP1	=	0xcfce
_T2CAP1L	=	0x00ce
_T2CAP1H	=	0x00cf
_PWM_DATA2	=	0x009b
_PWM_DATA1	=	0x009c
_PWM_CTRL	=	0x009d
_PWM_CK_SE	=	0x009e
_SPI0_STAT	=	0x00f8
_SPI0_DATA	=	0x00f9
_SPI0_CTRL	=	0x00fa
_SPI0_CK_SE	=	0x00fb
_SPI0_SETUP	=	0x00fc
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_SBAUD1	=	0x00c2
_ADC_CTRL	=	0x0080
_ADC_CFG	=	0x009a
_ADC_DATA	=	0x009f
_TKEY_CTRL	=	0x00c3
_TKEY_DAT	=	0xc5c4
_TKEY_DATL	=	0x00c4
_TKEY_DATH	=	0x00c5
_USB_C_CTRL	=	0x0091
_UDEV_CTRL	=	0x00d1
_UEP1_CTRL	=	0x00d2
_UEP1_T_LEN	=	0x00d3
_UEP2_CTRL	=	0x00d4
_UEP2_T_LEN	=	0x00d5
_UEP3_CTRL	=	0x00d6
_UEP3_T_LEN	=	0x00d7
_USB_INT_FG	=	0x00d8
_USB_INT_ST	=	0x00d9
_USB_MIS_ST	=	0x00da
_USB_RX_LEN	=	0x00db
_UEP0_CTRL	=	0x00dc
_UEP0_T_LEN	=	0x00dd
_UEP4_CTRL	=	0x00de
_UEP4_T_LEN	=	0x00df
_USB_INT_EN	=	0x00e1
_USB_CTRL	=	0x00e2
_USB_DEV_AD	=	0x00e3
_UEP2_DMA	=	0xe5e4
_UEP2_DMA_L	=	0x00e4
_UEP2_DMA_H	=	0x00e5
_UEP3_DMA	=	0xe7e6
_UEP3_DMA_L	=	0x00e6
_UEP3_DMA_H	=	0x00e7
_UEP4_1_MOD	=	0x00ea
_UEP2_3_MOD	=	0x00eb
_UEP0_DMA	=	0xedec
_UEP0_DMA_L	=	0x00ec
_UEP0_DMA_H	=	0x00ed
_UEP1_DMA	=	0xefee
_UEP1_DMA_L	=	0x00ee
_UEP1_DMA_H	=	0x00ef
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_EA	=	0x00af
_E_DIS	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PH_FLAG	=	0x00bf
_PL_FLAG	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_IE_WDOG	=	0x00ef
_IE_GPIO	=	0x00ee
_IE_PWMX	=	0x00ed
_IE_UART1	=	0x00ec
_IE_ADC	=	0x00eb
_IE_USB	=	0x00ea
_IE_TKEY	=	0x00e9
_IE_SPI0	=	0x00e8
_SCK	=	0x0097
_TXD1	=	0x0097
_TIN5	=	0x0097
_MISO	=	0x0096
_RXD1	=	0x0096
_TIN4	=	0x0096
_MOSI	=	0x0095
_PWM1	=	0x0095
_TIN3	=	0x0095
_UCC2	=	0x0095
_AIN2	=	0x0095
_T2_	=	0x0094
_CAP1_	=	0x0094
_SCS	=	0x0094
_TIN2	=	0x0094
_UCC1	=	0x0094
_AIN1	=	0x0094
_TXD_	=	0x0093
_RXD_	=	0x0092
_T2EX	=	0x0091
_CAP2	=	0x0091
_TIN1	=	0x0091
_VBUS2	=	0x0091
_AIN0	=	0x0091
_T2	=	0x0090
_CAP1	=	0x0090
_TIN0	=	0x0090
_UDM	=	0x00b7
_UDP	=	0x00b6
_T1	=	0x00b5
_PWM2	=	0x00b4
_RXD1_	=	0x00b4
_T0	=	0x00b4
_INT1	=	0x00b3
_TXD1_	=	0x00b2
_INT0	=	0x00b2
_VBUS1	=	0x00b2
_AIN3	=	0x00b2
_PWM2_	=	0x00b1
_TXD	=	0x00b1
_PWM1_	=	0x00b0
_RXD	=	0x00b0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_TF2	=	0x00cf
_CAP1F	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
_S0_FST_ACT	=	0x00ff
_S0_IF_OV	=	0x00fe
_S0_IF_FIRST	=	0x00fd
_S0_IF_BYTE	=	0x00fc
_S0_FREE	=	0x00fb
_S0_T_FIFO	=	0x00fa
_S0_R_FIFO	=	0x00f8
_U1SM0	=	0x00c7
_U1SMOD	=	0x00c5
_U1REN	=	0x00c4
_U1TB8	=	0x00c3
_U1RB8	=	0x00c2
_U1TI	=	0x00c1
_U1RI	=	0x00c0
_CMPO	=	0x0087
_CMP_IF	=	0x0086
_ADC_IF	=	0x0085
_ADC_START	=	0x0084
_CMP_CHAN	=	0x0083
_ADC_CHAN1	=	0x0081
_ADC_CHAN0	=	0x0080
_U_IS_NAK	=	0x00df
_U_TOG_OK	=	0x00de
_U_SIE_FREE	=	0x00dd
_UIF_FIFO_OV	=	0x00dc
_UIF_HST_SOF	=	0x00db
_UIF_SUSPEND	=	0x00da
_UIF_TRANSFER	=	0x00d9
_UIF_DETECT	=	0x00d8
_UIF_BUS_RST	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_get_numeric_str_sloc0_1_0:
	.ds 2
_get_numeric_str_sloc1_1_0:
	.ds 2
_get_numeric_str_sloc2_1_0:
	.ds 2
_get_numeric_str_sloc3_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_IS_NOEVENT_sloc0_1_0:
	.ds 1
_IS_EVENT_sloc0_1_0:
	.ds 1
_IS_KEYEVENT_sloc0_1_0:
	.ds 1
_IS_COMBOEVENT_sloc0_1_0:
	.ds 1
_IS_ENCODEREVENT_sloc0_1_0:
	.ds 1
_pre_process_record_quantum_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_IS_NOEVENT_PARM_1:
	.ds 6
_IS_EVENT_PARM_1:
	.ds 6
_IS_KEYEVENT_PARM_1:
	.ds 6
_IS_COMBOEVENT_PARM_1:
	.ds 6
_IS_ENCODEREVENT_PARM_1:
	.ds 6
_KEYCODE2SYSTEM_key_65536_192:
	.ds 1
_KEYCODE2CONSUMER_key_65536_195:
	.ds 1
_extract_mod_bits_code_65536_370:
	.ds 2
_extract_mod_bits_mods_to_send_65537_372:
	.ds 1
_do_code16_PARM_2:
	.ds 2
_do_code16_code_65536_375:
	.ds 2
_register_code16_code_65536_378:
	.ds 2
_unregister_code16_code_65536_382:
	.ds 2
_tap_code16_delay_PARM_2:
	.ds 2
_tap_code16_delay_code_65536_386:
	.ds 2
_tap_code16_code_65536_393:
	.ds 2
_pre_process_record_kb_PARM_2:
	.ds 3
_pre_process_record_kb_keycode_65536_395:
	.ds 2
_pre_process_record_user_PARM_2:
	.ds 3
_process_record_kb_PARM_2:
	.ds 3
_process_record_kb_keycode_65536_401:
	.ds 2
_process_record_user_PARM_2:
	.ds 3
_post_process_record_kb_PARM_2:
	.ds 3
_post_process_record_kb_keycode_65536_405:
	.ds 2
_post_process_record_user_PARM_2:
	.ds 3
_get_record_keycode_PARM_2:
	.ds 1
_get_record_keycode_record_65536_419:
	.ds 3
_get_event_keycode_PARM_1:
	.ds 6
_pre_process_record_quantum_record_65536_423:
	.ds 3
_post_process_record_quantum_record_65536_425:
	.ds 3
_process_record_quantum_record_65536_427:
	.ds 3
_process_record_quantum_helper_PARM_2:
	.ds 3
_process_record_quantum_helper_keycode_65536_429:
	.ds 2
_set_single_persistent_default_layer_default_layer_65536_434:
	.ds 1
_get_numeric_str_PARM_2:
	.ds 2
_get_numeric_str_PARM_3:
	.ds 4
_get_numeric_str_PARM_4:
	.ds 1
_get_numeric_str_buf_65536_446:
	.ds 3
_get_numeric_str_c_196608_449:
	.ds 1
_get_u8_str_PARM_2:
	.ds 1
_get_u8_str_curr_num_65536_450:
	.ds 1
_get_u8_str_buf_65536_451:
	.ds 4
_get_u8_str_last_num_65536_451:
	.ds 1
_get_u8_str_last_pad_65536_451:
	.ds 1
_get_u16_str_PARM_2:
	.ds 1
_get_u16_str_curr_num_65536_453:
	.ds 2
_get_u16_str_buf_65536_454:
	.ds 6
_get_u16_str_last_num_65536_454:
	.ds 2
_get_u16_str_last_pad_65536_454:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'get_u8_str'
;------------------------------------------------------------
;curr_pad                  Allocated with name '_get_u8_str_PARM_2'
;curr_num                  Allocated with name '_get_u8_str_curr_num_65536_450'
;buf                       Allocated with name '_get_u8_str_buf_65536_451'
;last_num                  Allocated with name '_get_u8_str_last_num_65536_451'
;last_pad                  Allocated with name '_get_u8_str_last_pad_65536_451'
;------------------------------------------------------------
;	quantum/quantum.c:612: static char    buf[4]   = {0};
	mov	dptr,#_get_u8_str_buf_65536_451
	clr	a
	movx	@dptr,a
	mov	dptr,#(_get_u8_str_buf_65536_451 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_get_u8_str_buf_65536_451 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_get_u8_str_buf_65536_451 + 0x0003)
	movx	@dptr,a
;	quantum/quantum.c:613: static uint8_t last_num = 0xFF;
	mov	dptr,#_get_u8_str_last_num_65536_451
	dec	a
	movx	@dptr,a
;	quantum/quantum.c:614: static char    last_pad = '\0';
	mov	dptr,#_get_u8_str_last_pad_65536_451
	clr	a
	movx	@dptr,a
;------------------------------------------------------------
;Allocation info for local variables in function 'get_u16_str'
;------------------------------------------------------------
;curr_pad                  Allocated with name '_get_u16_str_PARM_2'
;curr_num                  Allocated with name '_get_u16_str_curr_num_65536_453'
;buf                       Allocated with name '_get_u16_str_buf_65536_454'
;last_num                  Allocated with name '_get_u16_str_last_num_65536_454'
;last_pad                  Allocated with name '_get_u16_str_last_pad_65536_454'
;------------------------------------------------------------
;	quantum/quantum.c:632: static char     buf[6]   = {0};
	mov	dptr,#_get_u16_str_buf_65536_454
	clr	a
	movx	@dptr,a
	mov	dptr,#(_get_u16_str_buf_65536_454 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_get_u16_str_buf_65536_454 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_get_u16_str_buf_65536_454 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_get_u16_str_buf_65536_454 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_get_u16_str_buf_65536_454 + 0x0005)
	movx	@dptr,a
;	quantum/quantum.c:633: static uint16_t last_num = 0xFF;
	mov	dptr,#_get_u16_str_last_num_65536_454
	dec	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:634: static char     last_pad = '\0';
	mov	dptr,#_get_u16_str_last_pad_65536_454
	movx	@dptr,a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'IS_NOEVENT'
;------------------------------------------------------------
;event                     Allocated with name '_IS_NOEVENT_PARM_1'
;------------------------------------------------------------
;	quantum/keyboard.h:52: static inline bool IS_NOEVENT(const keyevent_t event) {
;	-----------------------------------------
;	 function IS_NOEVENT
;	-----------------------------------------
_IS_NOEVENT:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	quantum/keyboard.h:53: return event.type == TICK_EVENT;
	mov	dptr,#(_IS_NOEVENT_PARM_1 + 0x0004)
	movx	a,@dptr
	cjne	a,#0x01,00103$
00103$:
	mov  _IS_NOEVENT_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
;	quantum/keyboard.h:54: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IS_EVENT'
;------------------------------------------------------------
;event                     Allocated with name '_IS_EVENT_PARM_1'
;------------------------------------------------------------
;	quantum/keyboard.h:55: static inline bool IS_EVENT(const keyevent_t event) {
;	-----------------------------------------
;	 function IS_EVENT
;	-----------------------------------------
_IS_EVENT:
;	quantum/keyboard.h:56: return event.type != TICK_EVENT;
	mov	dptr,#(_IS_EVENT_PARM_1 + 0x0004)
	movx	a,@dptr
	cjne	a,#0x01,00103$
00103$:
	cpl	c
	mov	_IS_EVENT_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
;	quantum/keyboard.h:57: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IS_KEYEVENT'
;------------------------------------------------------------
;event                     Allocated with name '_IS_KEYEVENT_PARM_1'
;------------------------------------------------------------
;	quantum/keyboard.h:58: static inline bool IS_KEYEVENT(const keyevent_t event) {
;	-----------------------------------------
;	 function IS_KEYEVENT
;	-----------------------------------------
_IS_KEYEVENT:
;	quantum/keyboard.h:59: return event.type == KEY_EVENT;
	mov	dptr,#(_IS_KEYEVENT_PARM_1 + 0x0004)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  _IS_KEYEVENT_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
;	quantum/keyboard.h:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IS_COMBOEVENT'
;------------------------------------------------------------
;event                     Allocated with name '_IS_COMBOEVENT_PARM_1'
;------------------------------------------------------------
;	quantum/keyboard.h:61: static inline bool IS_COMBOEVENT(const keyevent_t event) {
;	-----------------------------------------
;	 function IS_COMBOEVENT
;	-----------------------------------------
_IS_COMBOEVENT:
;	quantum/keyboard.h:62: return event.type == COMBO_EVENT;
	mov	dptr,#(_IS_COMBOEVENT_PARM_1 + 0x0004)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  _IS_COMBOEVENT_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
;	quantum/keyboard.h:63: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IS_ENCODEREVENT'
;------------------------------------------------------------
;event                     Allocated with name '_IS_ENCODEREVENT_PARM_1'
;------------------------------------------------------------
;	quantum/keyboard.h:64: static inline bool IS_ENCODEREVENT(const keyevent_t event) {
;	-----------------------------------------
;	 function IS_ENCODEREVENT
;	-----------------------------------------
_IS_ENCODEREVENT:
;	quantum/keyboard.h:65: return event.type == ENCODER_CW_EVENT || event.type == ENCODER_CCW_EVENT;
	mov	dptr,#(_IS_ENCODEREVENT_PARM_1 + 0x0004)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00114$
	sjmp	00104$
00114$:
	cjne	r7,#0x03,00115$
	sjmp	00104$
00115$:
;	assignBit
	clr	_IS_ENCODEREVENT_sloc0_1_0
	sjmp	00105$
00104$:
;	assignBit
	setb	_IS_ENCODEREVENT_sloc0_1_0
00105$:
	mov	c,_IS_ENCODEREVENT_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
;	quantum/keyboard.h:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'KEYCODE2SYSTEM'
;------------------------------------------------------------
;key                       Allocated with name '_KEYCODE2SYSTEM_key_65536_192'
;------------------------------------------------------------
;	tmk_core/protocol/report.h:262: static inline uint16_t KEYCODE2SYSTEM(uint8_t key) {
;	-----------------------------------------
;	 function KEYCODE2SYSTEM
;	-----------------------------------------
_KEYCODE2SYSTEM:
	mov	a,dpl
	mov	dptr,#_KEYCODE2SYSTEM_key_65536_192
	movx	@dptr,a
;	tmk_core/protocol/report.h:263: switch (key) {
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xa5,00120$
	sjmp	00101$
00120$:
	cjne	r7,#0xa6,00121$
	sjmp	00102$
00121$:
;	tmk_core/protocol/report.h:264: case KC_SYSTEM_POWER:
	cjne	r7,#0xa7,00104$
	sjmp	00103$
00101$:
;	tmk_core/protocol/report.h:265: return SYSTEM_POWER_DOWN;
	mov	dptr,#0x0081
;	tmk_core/protocol/report.h:266: case KC_SYSTEM_SLEEP:
	ret
00102$:
;	tmk_core/protocol/report.h:267: return SYSTEM_SLEEP;
	mov	dptr,#0x0082
;	tmk_core/protocol/report.h:268: case KC_SYSTEM_WAKE:
	ret
00103$:
;	tmk_core/protocol/report.h:269: return SYSTEM_WAKE_UP;
	mov	dptr,#0x0083
;	tmk_core/protocol/report.h:270: default:
	ret
00104$:
;	tmk_core/protocol/report.h:271: return 0;
	mov	dptr,#0x0000
;	tmk_core/protocol/report.h:272: }
;	tmk_core/protocol/report.h:273: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'KEYCODE2CONSUMER'
;------------------------------------------------------------
;key                       Allocated with name '_KEYCODE2CONSUMER_key_65536_195'
;------------------------------------------------------------
;	tmk_core/protocol/report.h:276: static inline uint16_t KEYCODE2CONSUMER(uint8_t key) {
;	-----------------------------------------
;	 function KEYCODE2CONSUMER
;	-----------------------------------------
_KEYCODE2CONSUMER:
	mov	a,dpl
	mov	dptr,#_KEYCODE2CONSUMER_key_65536_195
	movx	@dptr,a
;	tmk_core/protocol/report.h:277: switch (key) {
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xa8,00140$
00140$:
	jnc	00141$
	ljmp	00128$
00141$:
	mov	a,r7
	add	a,#0xff - 0xc2
	jnc	00142$
	ljmp	00128$
00142$:
	mov	a,r7
	add	a,#0x58
	mov	r7,a
	add	a,#(00143$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00144$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00143$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00108$
	.db	00110$
	.db	00111$
	.db	00109$
	.db	00112$
	.db	00113$
	.db	00114$
	.db	00117$
	.db	00118$
	.db	00119$
	.db	00120$
	.db	00121$
	.db	00122$
	.db	00125$
	.db	00106$
	.db	00107$
	.db	00123$
	.db	00124$
	.db	00115$
	.db	00116$
	.db	00126$
	.db	00127$
00144$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00108$>>8
	.db	00110$>>8
	.db	00111$>>8
	.db	00109$>>8
	.db	00112$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00117$>>8
	.db	00118$>>8
	.db	00119$>>8
	.db	00120$>>8
	.db	00121$>>8
	.db	00122$>>8
	.db	00125$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00123$>>8
	.db	00124$>>8
	.db	00115$>>8
	.db	00116$>>8
	.db	00126$>>8
	.db	00127$>>8
;	tmk_core/protocol/report.h:278: case KC_AUDIO_MUTE:
00101$:
;	tmk_core/protocol/report.h:279: return AUDIO_MUTE;
	mov	dptr,#0x00e2
	ret
;	tmk_core/protocol/report.h:280: case KC_AUDIO_VOL_UP:
00102$:
;	tmk_core/protocol/report.h:281: return AUDIO_VOL_UP;
	mov	dptr,#0x00e9
	ret
;	tmk_core/protocol/report.h:282: case KC_AUDIO_VOL_DOWN:
00103$:
;	tmk_core/protocol/report.h:283: return AUDIO_VOL_DOWN;
	mov	dptr,#0x00ea
	ret
;	tmk_core/protocol/report.h:284: case KC_MEDIA_NEXT_TRACK:
00104$:
;	tmk_core/protocol/report.h:285: return TRANSPORT_NEXT_TRACK;
	mov	dptr,#0x00b5
	ret
;	tmk_core/protocol/report.h:286: case KC_MEDIA_PREV_TRACK:
00105$:
;	tmk_core/protocol/report.h:287: return TRANSPORT_PREV_TRACK;
	mov	dptr,#0x00b6
	ret
;	tmk_core/protocol/report.h:288: case KC_MEDIA_FAST_FORWARD:
00106$:
;	tmk_core/protocol/report.h:289: return TRANSPORT_FAST_FORWARD;
	mov	dptr,#0x00b3
	ret
;	tmk_core/protocol/report.h:290: case KC_MEDIA_REWIND:
00107$:
;	tmk_core/protocol/report.h:291: return TRANSPORT_REWIND;
	mov	dptr,#0x00b4
	ret
;	tmk_core/protocol/report.h:292: case KC_MEDIA_STOP:
00108$:
;	tmk_core/protocol/report.h:293: return TRANSPORT_STOP;
	mov	dptr,#0x00b7
	ret
;	tmk_core/protocol/report.h:294: case KC_MEDIA_EJECT:
00109$:
;	tmk_core/protocol/report.h:295: return TRANSPORT_STOP_EJECT;
	mov	dptr,#0x00cc
	ret
;	tmk_core/protocol/report.h:296: case KC_MEDIA_PLAY_PAUSE:
00110$:
;	tmk_core/protocol/report.h:297: return TRANSPORT_PLAY_PAUSE;
	mov	dptr,#0x00cd
	ret
;	tmk_core/protocol/report.h:298: case KC_MEDIA_SELECT:
00111$:
;	tmk_core/protocol/report.h:299: return AL_CC_CONFIG;
	mov	dptr,#0x0183
	ret
;	tmk_core/protocol/report.h:300: case KC_MAIL:
00112$:
;	tmk_core/protocol/report.h:301: return AL_EMAIL;
	mov	dptr,#0x018a
	ret
;	tmk_core/protocol/report.h:302: case KC_CALCULATOR:
00113$:
;	tmk_core/protocol/report.h:303: return AL_CALCULATOR;
	mov	dptr,#0x0192
	ret
;	tmk_core/protocol/report.h:304: case KC_MY_COMPUTER:
00114$:
;	tmk_core/protocol/report.h:305: return AL_LOCAL_BROWSER;
	mov	dptr,#0x0194
;	tmk_core/protocol/report.h:306: case KC_CONTROL_PANEL:
	ret
00115$:
;	tmk_core/protocol/report.h:307: return AL_CONTROL_PANEL;
	mov	dptr,#0x019f
;	tmk_core/protocol/report.h:308: case KC_ASSISTANT:
	ret
00116$:
;	tmk_core/protocol/report.h:309: return AL_ASSISTANT;
	mov	dptr,#0x01cb
;	tmk_core/protocol/report.h:310: case KC_WWW_SEARCH:
	ret
00117$:
;	tmk_core/protocol/report.h:311: return AC_SEARCH;
	mov	dptr,#0x0221
;	tmk_core/protocol/report.h:312: case KC_WWW_HOME:
	ret
00118$:
;	tmk_core/protocol/report.h:313: return AC_HOME;
	mov	dptr,#0x0223
;	tmk_core/protocol/report.h:314: case KC_WWW_BACK:
	ret
00119$:
;	tmk_core/protocol/report.h:315: return AC_BACK;
	mov	dptr,#0x0224
;	tmk_core/protocol/report.h:316: case KC_WWW_FORWARD:
	ret
00120$:
;	tmk_core/protocol/report.h:317: return AC_FORWARD;
	mov	dptr,#0x0225
;	tmk_core/protocol/report.h:318: case KC_WWW_STOP:
	ret
00121$:
;	tmk_core/protocol/report.h:319: return AC_STOP;
	mov	dptr,#0x0226
;	tmk_core/protocol/report.h:320: case KC_WWW_REFRESH:
	ret
00122$:
;	tmk_core/protocol/report.h:321: return AC_REFRESH;
	mov	dptr,#0x0227
;	tmk_core/protocol/report.h:322: case KC_BRIGHTNESS_UP:
	ret
00123$:
;	tmk_core/protocol/report.h:323: return BRIGHTNESS_UP;
	mov	dptr,#0x006f
;	tmk_core/protocol/report.h:324: case KC_BRIGHTNESS_DOWN:
	ret
00124$:
;	tmk_core/protocol/report.h:325: return BRIGHTNESS_DOWN;
	mov	dptr,#0x0070
;	tmk_core/protocol/report.h:326: case KC_WWW_FAVORITES:
	ret
00125$:
;	tmk_core/protocol/report.h:327: return AC_BOOKMARKS;
	mov	dptr,#0x022a
;	tmk_core/protocol/report.h:328: case KC_MISSION_CONTROL:
	ret
00126$:
;	tmk_core/protocol/report.h:329: return AC_MISSION_CONTROL;
	mov	dptr,#0x029f
;	tmk_core/protocol/report.h:330: case KC_LAUNCHPAD:
	ret
00127$:
;	tmk_core/protocol/report.h:331: return AC_LAUNCHPAD;
	mov	dptr,#0x02a0
;	tmk_core/protocol/report.h:332: default:
	ret
00128$:
;	tmk_core/protocol/report.h:333: return 0;
	mov	dptr,#0x0000
;	tmk_core/protocol/report.h:334: }
;	tmk_core/protocol/report.h:335: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'extract_mod_bits'
;------------------------------------------------------------
;code                      Allocated with name '_extract_mod_bits_code_65536_370'
;mods_to_send              Allocated with name '_extract_mod_bits_mods_to_send_65537_372'
;------------------------------------------------------------
;	quantum/quantum.c:92: uint8_t extract_mod_bits(uint16_t code) {
;	-----------------------------------------
;	 function extract_mod_bits
;	-----------------------------------------
_extract_mod_bits:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_extract_mod_bits_code_65536_370
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:99: if (code >= QK_MODS && code <= QK_MODS_MAX) ;
	mov	dptr,#_extract_mod_bits_code_65536_370
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	mov	a,#0x100 - 0x01
	add	a,r5
	jnc	00102$
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0x1f
	subb	a,r5
	jnc	00103$
00102$:
;	quantum/quantum.c:100: else return 0;
	mov	dpl,#0x00
	ret
00103$:
;	quantum/quantum.c:102: uint8_t mods_to_send = 0;
	mov	dptr,#_extract_mod_bits_mods_to_send_65537_372
	clr	a
	movx	@dptr,a
;	quantum/quantum.c:104: if (code & QK_RMODS_MIN) { // Right mod flag is set
	mov	a,r7
	jnb	acc.4,00122$
;	quantum/quantum.c:105: if (code & QK_LCTL) mods_to_send |= MOD_BIT(KC_RIGHT_CTRL);
	mov	a,r7
	jnb	acc.0,00106$
	mov	dptr,#_extract_mod_bits_mods_to_send_65537_372
	mov	a,#0x10
	movx	@dptr,a
00106$:
;	quantum/quantum.c:106: if (code & QK_LSFT) mods_to_send |= MOD_BIT(KC_RIGHT_SHIFT);
	mov	dptr,#_extract_mod_bits_code_65536_370
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	jnb	acc.1,00108$
	mov	dptr,#_extract_mod_bits_mods_to_send_65537_372
	movx	a,@dptr
	orl	acc,#0x20
	movx	@dptr,a
00108$:
;	quantum/quantum.c:107: if (code & QK_LALT) mods_to_send |= MOD_BIT(KC_RIGHT_ALT);
	mov	dptr,#_extract_mod_bits_code_65536_370
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	jnb	acc.2,00110$
	mov	dptr,#_extract_mod_bits_mods_to_send_65537_372
	movx	a,@dptr
	orl	acc,#0x40
	movx	@dptr,a
00110$:
;	quantum/quantum.c:108: if (code & QK_LGUI) mods_to_send |= MOD_BIT(KC_RIGHT_GUI);
	mov	dptr,#_extract_mod_bits_code_65536_370
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	jnb	acc.3,00123$
	mov	dptr,#_extract_mod_bits_mods_to_send_65537_372
	movx	a,@dptr
	orl	acc,#0x80
	movx	@dptr,a
	sjmp	00123$
00122$:
;	quantum/quantum.c:110: if (code & QK_LCTL) mods_to_send |= MOD_BIT(KC_LEFT_CTRL);
	mov	a,r7
	jnb	acc.0,00114$
	mov	dptr,#_extract_mod_bits_mods_to_send_65537_372
	mov	a,#0x01
	movx	@dptr,a
00114$:
;	quantum/quantum.c:111: if (code & QK_LSFT) mods_to_send |= MOD_BIT(KC_LEFT_SHIFT);
	mov	dptr,#_extract_mod_bits_code_65536_370
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	jnb	acc.1,00116$
	mov	dptr,#_extract_mod_bits_mods_to_send_65537_372
	movx	a,@dptr
	orl	acc,#0x02
	movx	@dptr,a
00116$:
;	quantum/quantum.c:112: if (code & QK_LALT) mods_to_send |= MOD_BIT(KC_LEFT_ALT);
	mov	dptr,#_extract_mod_bits_code_65536_370
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	jnb	acc.2,00118$
	mov	dptr,#_extract_mod_bits_mods_to_send_65537_372
	movx	a,@dptr
	orl	acc,#0x04
	movx	@dptr,a
00118$:
;	quantum/quantum.c:113: if (code & QK_LGUI) mods_to_send |= MOD_BIT(KC_LEFT_GUI);
	mov	dptr,#_extract_mod_bits_code_65536_370
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jnb	acc.3,00123$
	mov	dptr,#_extract_mod_bits_mods_to_send_65537_372
	movx	a,@dptr
	orl	acc,#0x08
	movx	@dptr,a
00123$:
;	quantum/quantum.c:116: return mods_to_send;
	mov	dptr,#_extract_mod_bits_mods_to_send_65537_372
	movx	a,@dptr
;	quantum/quantum.c:117: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'do_code16'
;------------------------------------------------------------
;f                         Allocated with name '_do_code16_PARM_2'
;code                      Allocated with name '_do_code16_code_65536_375'
;------------------------------------------------------------
;	quantum/quantum.c:119: void do_code16(uint16_t code, void (*f)(uint8_t)) {
;	-----------------------------------------
;	 function do_code16
;	-----------------------------------------
_do_code16:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_do_code16_code_65536_375
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:120: f(extract_mod_bits(code));
	mov	dptr,#_do_code16_code_65536_375
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_extract_mod_bits
	mov	r7,dpl
	ljmp	00103$
00103$:
	mov	dptr,#_do_code16_PARM_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r7
	ret
;	quantum/quantum.c:121: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'register_code16'
;------------------------------------------------------------
;code                      Allocated with name '_register_code16_code_65536_378'
;------------------------------------------------------------
;	quantum/quantum.c:123: __attribute__((weak)) void register_code16(uint16_t code) {
;	-----------------------------------------
;	 function register_code16
;	-----------------------------------------
_register_code16:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_register_code16_code_65536_378
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:124: if (IS_MODIFIER_KEYCODE(code) || code == KC_NO) {
	mov	dptr,#_register_code16_code_65536_378
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0xe0
	mov	a,r7
	subb	a,#0x00
	jc	00105$
	mov	a,#0xe7
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00101$
00105$:
	mov	dptr,#_register_code16_code_65536_378
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_register_code16_code_65536_378
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
00101$:
;	quantum/quantum.c:125: do_code16(code, register_mods);
	mov	dptr,#_register_code16_code_65536_378
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_do_code16_PARM_2
	mov	a,#_register_mods
	movx	@dptr,a
	mov	a,#(_register_mods >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	lcall	_do_code16
	sjmp	00103$
00102$:
;	quantum/quantum.c:127: do_code16(code, register_weak_mods);
	mov	dptr,#_do_code16_PARM_2
	mov	a,#_register_weak_mods
	movx	@dptr,a
	mov	a,#(_register_weak_mods >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_do_code16
00103$:
;	quantum/quantum.c:129: register_code(code);
	mov	dptr,#_register_code16_code_65536_378
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
;	quantum/quantum.c:130: }
	ljmp	_register_code
;------------------------------------------------------------
;Allocation info for local variables in function 'unregister_code16'
;------------------------------------------------------------
;code                      Allocated with name '_unregister_code16_code_65536_382'
;------------------------------------------------------------
;	quantum/quantum.c:132: __attribute__((weak)) void unregister_code16(uint16_t code) {
;	-----------------------------------------
;	 function unregister_code16
;	-----------------------------------------
_unregister_code16:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_unregister_code16_code_65536_382
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:133: unregister_code(code);
	mov	dptr,#_unregister_code16_code_65536_382
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r6
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_unregister_code
	pop	ar6
	pop	ar7
;	quantum/quantum.c:134: if (IS_MODIFIER_KEYCODE(code) || code == KC_NO) {
	clr	c
	mov	a,r6
	subb	a,#0xe0
	mov	a,r7
	subb	a,#0x00
	jc	00105$
	mov	a,#0xe7
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00101$
00105$:
	mov	dptr,#_unregister_code16_code_65536_382
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_unregister_code16_code_65536_382
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
00101$:
;	quantum/quantum.c:135: do_code16(code, unregister_mods);
	mov	dptr,#_unregister_code16_code_65536_382
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_do_code16_PARM_2
	mov	a,#_unregister_mods
	movx	@dptr,a
	mov	a,#(_unregister_mods >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	ljmp	_do_code16
00102$:
;	quantum/quantum.c:137: do_code16(code, unregister_weak_mods);
	mov	dptr,#_do_code16_PARM_2
	mov	a,#_unregister_weak_mods
	movx	@dptr,a
	mov	a,#(_unregister_weak_mods >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
;	quantum/quantum.c:139: }
	ljmp	_do_code16
;------------------------------------------------------------
;Allocation info for local variables in function 'tap_code16_delay'
;------------------------------------------------------------
;delay                     Allocated with name '_tap_code16_delay_PARM_2'
;code                      Allocated with name '_tap_code16_delay_code_65536_386'
;i                         Allocated with name '_tap_code16_delay_i_131072_388'
;i                         Allocated with name '_tap_code16_delay_i_327680_391'
;------------------------------------------------------------
;	quantum/quantum.c:146: __attribute__((weak)) void tap_code16_delay(uint16_t code, uint16_t delay) {
;	-----------------------------------------
;	 function tap_code16_delay
;	-----------------------------------------
_tap_code16_delay:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_tap_code16_delay_code_65536_386
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:147: register_code16(code);
	mov	dptr,#_tap_code16_delay_code_65536_386
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_register_code16
	pop	ar6
	pop	ar7
;	quantum/quantum.c:148: for (uint16_t i = delay; i > 0; i--) {
	mov	dptr,#_tap_code16_delay_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00110$:
	mov	a,r4
	orl	a,r5
	jz	00105$
;	quantum/quantum.c:149: wait_ms(1);
	mov	r2,#0x01
	mov	r3,#0x00
00107$:
	mov	a,r2
	orl	a,r3
	jz	00103$
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_DLY_ms
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	dec	r2
	cjne	r2,#0xff,00138$
	dec	r3
00138$:
	sjmp	00107$
00103$:
;	quantum/quantum.c:148: for (uint16_t i = delay; i > 0; i--) {
	dec	r4
	cjne	r4,#0xff,00139$
	dec	r5
00139$:
	sjmp	00110$
00105$:
;	quantum/quantum.c:151: unregister_code16(code);
	mov	dpl,r6
	mov	dph,r7
;	quantum/quantum.c:152: }
	ljmp	_unregister_code16
;------------------------------------------------------------
;Allocation info for local variables in function 'tap_code16'
;------------------------------------------------------------
;code                      Allocated with name '_tap_code16_code_65536_393'
;------------------------------------------------------------
;	quantum/quantum.c:158: __attribute__((weak)) void tap_code16(uint16_t code) {
;	-----------------------------------------
;	 function tap_code16
;	-----------------------------------------
_tap_code16:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_tap_code16_code_65536_393
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:159: tap_code16_delay(code, code == KC_CAPS_LOCK ? QS_tap_hold_caps_delay : QS_tap_code_delay);
	mov	dptr,#_tap_code16_code_65536_393
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	cjne	r4,#0x39,00103$
	cjne	r5,#0x00,00103$
	mov	r4,#0x50
	mov	r5,#0x00
	sjmp	00104$
00103$:
	mov	r4,#0x00
	mov	r5,#0x00
00104$:
	mov	dptr,#_tap_code16_delay_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
;	quantum/quantum.c:160: }
	ljmp	_tap_code16_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'pre_process_record_kb'
;------------------------------------------------------------
;record                    Allocated with name '_pre_process_record_kb_PARM_2'
;keycode                   Allocated with name '_pre_process_record_kb_keycode_65536_395'
;------------------------------------------------------------
;	quantum/quantum.c:162: __attribute__((weak)) bool pre_process_record_kb(uint16_t keycode, keyrecord_t *record) {
;	-----------------------------------------
;	 function pre_process_record_kb
;	-----------------------------------------
_pre_process_record_kb:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_pre_process_record_kb_keycode_65536_395
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:163: return pre_process_record_user(keycode, record);
	mov	dptr,#_pre_process_record_kb_keycode_65536_395
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pre_process_record_kb_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_pre_process_record_user_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
;	quantum/quantum.c:164: }
	ljmp	_pre_process_record_user
;------------------------------------------------------------
;Allocation info for local variables in function 'pre_process_record_user'
;------------------------------------------------------------
;record                    Allocated with name '_pre_process_record_user_PARM_2'
;keycode                   Allocated with name '_pre_process_record_user_keycode_65536_397'
;------------------------------------------------------------
;	quantum/quantum.c:166: __attribute__((weak)) bool pre_process_record_user(uint16_t keycode, keyrecord_t *record) {
;	-----------------------------------------
;	 function pre_process_record_user
;	-----------------------------------------
_pre_process_record_user:
;	quantum/quantum.c:167: return true;
	mov	dpl,#0x01
;	quantum/quantum.c:168: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_action_kb'
;------------------------------------------------------------
;record                    Allocated with name '_process_action_kb_record_65536_399'
;------------------------------------------------------------
;	quantum/quantum.c:170: __attribute__((weak)) bool process_action_kb(keyrecord_t *record) {
;	-----------------------------------------
;	 function process_action_kb
;	-----------------------------------------
_process_action_kb:
;	quantum/quantum.c:171: return true;
	mov	dpl,#0x01
;	quantum/quantum.c:172: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_record_kb'
;------------------------------------------------------------
;record                    Allocated with name '_process_record_kb_PARM_2'
;keycode                   Allocated with name '_process_record_kb_keycode_65536_401'
;------------------------------------------------------------
;	quantum/quantum.c:174: __attribute__((weak)) bool process_record_kb(uint16_t keycode, keyrecord_t *record) {
;	-----------------------------------------
;	 function process_record_kb
;	-----------------------------------------
_process_record_kb:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_process_record_kb_keycode_65536_401
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:175: return process_record_user(keycode, record);
	mov	dptr,#_process_record_kb_keycode_65536_401
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_process_record_kb_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_process_record_user_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
;	quantum/quantum.c:176: }
	ljmp	_process_record_user
;------------------------------------------------------------
;Allocation info for local variables in function 'process_record_user'
;------------------------------------------------------------
;record                    Allocated with name '_process_record_user_PARM_2'
;keycode                   Allocated with name '_process_record_user_keycode_65536_403'
;------------------------------------------------------------
;	quantum/quantum.c:178: __attribute__((weak)) bool process_record_user(uint16_t keycode, keyrecord_t *record) {
;	-----------------------------------------
;	 function process_record_user
;	-----------------------------------------
_process_record_user:
;	quantum/quantum.c:179: return true;
	mov	dpl,#0x01
;	quantum/quantum.c:180: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'post_process_record_kb'
;------------------------------------------------------------
;record                    Allocated with name '_post_process_record_kb_PARM_2'
;keycode                   Allocated with name '_post_process_record_kb_keycode_65536_405'
;------------------------------------------------------------
;	quantum/quantum.c:182: __attribute__((weak)) void post_process_record_kb(uint16_t keycode, keyrecord_t *record) {
;	-----------------------------------------
;	 function post_process_record_kb
;	-----------------------------------------
_post_process_record_kb:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_post_process_record_kb_keycode_65536_405
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:183: post_process_record_user(keycode, record);
	mov	dptr,#_post_process_record_kb_keycode_65536_405
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_post_process_record_kb_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_post_process_record_user_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
;	quantum/quantum.c:184: }
	ljmp	_post_process_record_user
;------------------------------------------------------------
;Allocation info for local variables in function 'post_process_record_user'
;------------------------------------------------------------
;record                    Allocated with name '_post_process_record_user_PARM_2'
;keycode                   Allocated with name '_post_process_record_user_keycode_65536_407'
;------------------------------------------------------------
;	quantum/quantum.c:186: __attribute__((weak)) void post_process_record_user(uint16_t keycode, keyrecord_t *record) {}
;	-----------------------------------------
;	 function post_process_record_user
;	-----------------------------------------
_post_process_record_user:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shutdown_quantum'
;------------------------------------------------------------
;i                         Allocated with name '_shutdown_quantum_i_196608_413'
;------------------------------------------------------------
;	quantum/quantum.c:188: void shutdown_quantum(void) {
;	-----------------------------------------
;	 function shutdown_quantum
;	-----------------------------------------
_shutdown_quantum:
;	quantum/quantum.c:189: clear_keyboard();
	lcall	_clear_keyboard
;	quantum/quantum.c:204: shutdown_user();
	lcall	_shutdown_user
;	quantum/quantum.c:205: wait_ms(250);
	mov	r6,#0xfa
	mov	r7,#0x00
00106$:
	mov	a,r6
	orl	a,r7
	jz	00108$
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_DLY_ms
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xff,00122$
	dec	r7
00122$:
	sjmp	00106$
00108$:
;	quantum/quantum.c:210: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_keyboard'
;------------------------------------------------------------
;	quantum/quantum.c:212: void reset_keyboard(void) {
;	-----------------------------------------
;	 function reset_keyboard
;	-----------------------------------------
_reset_keyboard:
;	quantum/quantum.c:213: shutdown_quantum();
	lcall	_shutdown_quantum
;	quantum/quantum.c:214: bootloader_jump();
;	quantum/quantum.c:215: }
	ljmp	_bootloader_jump
;------------------------------------------------------------
;Allocation info for local variables in function 'soft_reset_keyboard'
;------------------------------------------------------------
;	quantum/quantum.c:217: void soft_reset_keyboard(void) {
;	-----------------------------------------
;	 function soft_reset_keyboard
;	-----------------------------------------
_soft_reset_keyboard:
;	quantum/quantum.c:218: shutdown_quantum();
	lcall	_shutdown_quantum
;	quantum/quantum.c:219: mcu_reset();
;	quantum/quantum.c:220: }
	ljmp	_mcu_reset
;------------------------------------------------------------
;Allocation info for local variables in function 'get_record_keycode'
;------------------------------------------------------------
;update_layer_cache        Allocated with name '_get_record_keycode_PARM_2'
;record                    Allocated with name '_get_record_keycode_record_65536_419'
;------------------------------------------------------------
;	quantum/quantum.c:223: uint16_t get_record_keycode(keyrecord_t *record, bool update_layer_cache) {
;	-----------------------------------------
;	 function get_record_keycode
;	-----------------------------------------
_get_record_keycode:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_get_record_keycode_record_65536_419
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:229: return get_event_keycode(record->event, update_layer_cache);
	mov	dptr,#_get_record_keycode_record_65536_419
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_record_keycode_PARM_2
	movx	a,@dptr
	mov	r4,a
	mov	r1,#_get_event_keycode_PARM_1
	mov	r2,#(_get_event_keycode_PARM_1 >> 8)
	mov	r3,#0x00
	mov	dptr,#___memcpy_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar4
	lcall	___memcpy
	pop	ar4
	mov	dpl,r4
;	quantum/quantum.c:230: }
	ljmp	_get_event_keycode
;------------------------------------------------------------
;Allocation info for local variables in function 'get_event_keycode'
;------------------------------------------------------------
;event                     Allocated with name '_get_event_keycode_PARM_1'
;update_layer_cache        Allocated with name '_get_event_keycode_update_layer_cache_65536_421'
;------------------------------------------------------------
;	quantum/quantum.c:238: uint16_t get_event_keycode(keyevent_t event, bool update_layer_cache) {
;	-----------------------------------------
;	 function get_event_keycode
;	-----------------------------------------
_get_event_keycode:
;	quantum/quantum.c:253: return keymap_key_to_keycode(layer_switch_get_layer(event.key), event.key);
	mov	r5,#_layer_switch_get_layer_PARM_1
	mov	r6,#(_layer_switch_get_layer_PARM_1 >> 8)
	mov	r7,#0x00
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_get_event_keycode_PARM_1
	movx	@dptr,a
	mov	a,#(_get_event_keycode_PARM_1 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___memcpy
	lcall	_layer_switch_get_layer
	mov	r4,#_keymap_key_to_keycode_PARM_2
	mov	r5,#(_keymap_key_to_keycode_PARM_2 >> 8)
	mov	r6,#0x00
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_get_event_keycode_PARM_1
	movx	@dptr,a
	mov	a,#(_get_event_keycode_PARM_1 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	___memcpy
;	quantum/quantum.c:254: }
	ljmp	_keymap_key_to_keycode
;------------------------------------------------------------
;Allocation info for local variables in function 'pre_process_record_quantum'
;------------------------------------------------------------
;record                    Allocated with name '_pre_process_record_quantum_record_65536_423'
;keycode                   Allocated with name '_pre_process_record_quantum_keycode_65536_424'
;------------------------------------------------------------
;	quantum/quantum.c:257: bool pre_process_record_quantum(keyrecord_t *record) {
;	-----------------------------------------
;	 function pre_process_record_quantum
;	-----------------------------------------
_pre_process_record_quantum:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_pre_process_record_quantum_record_65536_423
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:258: uint16_t keycode = get_record_keycode(record, true);
	mov	dptr,#_pre_process_record_quantum_record_65536_423
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_record_keycode_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_get_record_keycode
	mov	r6,dpl
	mov	r7,dph
;	quantum/quantum.c:259: return pre_process_record_kb(keycode, record) &&
	mov	dptr,#_pre_process_record_quantum_record_65536_423
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_pre_process_record_kb_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_pre_process_record_kb
	mov	a,dpl
	jnz	00104$
;	quantum/quantum.c:263: true;
;	assignBit
	clr	_pre_process_record_quantum_sloc0_1_0
	sjmp	00105$
00104$:
;	assignBit
	setb	_pre_process_record_quantum_sloc0_1_0
00105$:
	mov	c,_pre_process_record_quantum_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
;	quantum/quantum.c:264: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'post_process_record_quantum'
;------------------------------------------------------------
;record                    Allocated with name '_post_process_record_quantum_record_65536_425'
;keycode                   Allocated with name '_post_process_record_quantum_keycode_65536_426'
;------------------------------------------------------------
;	quantum/quantum.c:267: void post_process_record_quantum(keyrecord_t *record) {
;	-----------------------------------------
;	 function post_process_record_quantum
;	-----------------------------------------
_post_process_record_quantum:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_post_process_record_quantum_record_65536_425
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:268: uint16_t keycode = get_record_keycode(record, false);
	mov	dptr,#_post_process_record_quantum_record_65536_425
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_record_keycode_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_get_record_keycode
	mov	r6,dpl
	mov	r7,dph
;	quantum/quantum.c:269: post_process_record_kb(keycode, record);
	mov	dptr,#_post_process_record_quantum_record_65536_425
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_post_process_record_kb_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
;	quantum/quantum.c:270: }
	ljmp	_post_process_record_kb
;------------------------------------------------------------
;Allocation info for local variables in function 'process_record_quantum'
;------------------------------------------------------------
;record                    Allocated with name '_process_record_quantum_record_65536_427'
;keycode                   Allocated with name '_process_record_quantum_keycode_65536_428'
;------------------------------------------------------------
;	quantum/quantum.c:272: bool process_record_quantum(keyrecord_t *record) {
;	-----------------------------------------
;	 function process_record_quantum
;	-----------------------------------------
_process_record_quantum:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_process_record_quantum_record_65536_427
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:273: uint16_t keycode = get_record_keycode(record, true);
	mov	dptr,#_process_record_quantum_record_65536_427
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_record_keycode_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_get_record_keycode
	mov	r6,dpl
	mov	r7,dph
;	quantum/quantum.c:274: return process_record_quantum_helper(keycode, record);
	mov	dptr,#_process_record_quantum_record_65536_427
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_process_record_quantum_helper_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
;	quantum/quantum.c:275: }
	ljmp	_process_record_quantum_helper
;------------------------------------------------------------
;Allocation info for local variables in function 'process_record_quantum_helper'
;------------------------------------------------------------
;record                    Allocated with name '_process_record_quantum_helper_PARM_2'
;keycode                   Allocated with name '_process_record_quantum_helper_keycode_65536_429'
;------------------------------------------------------------
;	quantum/quantum.c:279: bool process_record_quantum_helper(uint16_t keycode, keyrecord_t *record) {
;	-----------------------------------------
;	 function process_record_quantum_helper
;	-----------------------------------------
_process_record_quantum_helper:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_process_record_quantum_helper_keycode_65536_429
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:341: process_record_kb(keycode, record) &&
	mov	dptr,#_process_record_quantum_helper_keycode_65536_429
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_process_record_quantum_helper_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_process_record_kb_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_process_record_kb
	mov	a,dpl
	pop	ar6
	pop	ar7
;	quantum/quantum.c:409: return false;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	quantum/quantum.c:412: if (record->event.pressed) {
	mov	dptr,#_process_record_quantum_helper_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x05
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	jz	00109$
;	quantum/quantum.c:413: switch (keycode) {
	cjne	r6,#0x00,00134$
	cjne	r7,#0x7c,00134$
	sjmp	00104$
00134$:
	cjne	r6,#0x01,00135$
	cjne	r7,#0x7c,00135$
	sjmp	00105$
00135$:
;	quantum/quantum.c:415: case QK_BOOTLOADER:
	cjne	r6,#0x03,00109$
	cjne	r7,#0x7c,00109$
	sjmp	00106$
00104$:
;	quantum/quantum.c:416: reset_keyboard();
	lcall	_reset_keyboard
;	quantum/quantum.c:417: return false;
	mov	dpl,#0x00
;	quantum/quantum.c:418: case QK_REBOOT:
	ret
00105$:
;	quantum/quantum.c:419: soft_reset_keyboard();
	lcall	_soft_reset_keyboard
;	quantum/quantum.c:420: return false;
	mov	dpl,#0x00
;	quantum/quantum.c:432: case QK_CLEAR_EEPROM:
	ret
00106$:
;	quantum/quantum.c:436: eeconfig_disable();
	lcall	_eeconfig_disable
;	quantum/quantum.c:437: soft_reset_keyboard();
	lcall	_soft_reset_keyboard
;	quantum/quantum.c:439: return false;
	mov	dpl,#0x00
;	quantum/quantum.c:494: }
	ret
00109$:
;	quantum/quantum.c:497: return process_action_kb(record);
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
;	quantum/quantum.c:498: }
	ljmp	_process_action_kb
;------------------------------------------------------------
;Allocation info for local variables in function 'set_single_persistent_default_layer'
;------------------------------------------------------------
;default_layer             Allocated with name '_set_single_persistent_default_layer_default_layer_65536_434'
;------------------------------------------------------------
;	quantum/quantum.c:500: void set_single_persistent_default_layer(uint8_t default_layer) {
;	-----------------------------------------
;	 function set_single_persistent_default_layer
;	-----------------------------------------
_set_single_persistent_default_layer:
	mov	a,dpl
	mov	dptr,#_set_single_persistent_default_layer_default_layer_65536_434
	movx	@dptr,a
;	quantum/quantum.c:504: eeconfig_update_default_layer((layer_state_t)1 << default_layer);
	movx	a,@dptr
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00105$
00103$:
	add	a,acc
00105$:
	djnz	b,00103$
	mov	dpl,a
	push	ar7
	lcall	_eeconfig_update_default_layer
	pop	ar7
;	quantum/quantum.c:505: default_layer_set((layer_state_t)1 << default_layer);
	mov	b,r7
	inc	b
	mov	r7,#0x01
	mov	r6,#0x00
	sjmp	00107$
00106$:
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r6
	rlc	a
	mov	r6,a
00107$:
	djnz	b,00106$
	mov	dpl,r7
	mov	dph,r6
;	quantum/quantum.c:506: }
	ljmp	_default_layer_set
;------------------------------------------------------------
;Allocation info for local variables in function 'startup_user'
;------------------------------------------------------------
;	quantum/quantum.c:512: __attribute__((weak)) void startup_user(void) {}
;	-----------------------------------------
;	 function startup_user
;	-----------------------------------------
_startup_user:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shutdown_user'
;------------------------------------------------------------
;	quantum/quantum.c:514: __attribute__((weak)) void shutdown_user(void) {}
;	-----------------------------------------
;	 function shutdown_user
;	-----------------------------------------
_shutdown_user:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'suspend_power_down_quantum'
;------------------------------------------------------------
;	quantum/quantum.c:516: void suspend_power_down_quantum(void) {
;	-----------------------------------------
;	 function suspend_power_down_quantum
;	-----------------------------------------
_suspend_power_down_quantum:
;	quantum/quantum.c:517: suspend_power_down_kb();
	lcall	_suspend_power_down_kb
;	quantum/quantum.c:532: led_suspend();
;	quantum/quantum.c:562: }
	ljmp	_led_suspend
;------------------------------------------------------------
;Allocation info for local variables in function 'suspend_wakeup_init_quantum'
;------------------------------------------------------------
;	quantum/quantum.c:564: __attribute__((weak)) void suspend_wakeup_init_quantum(void) {
;	-----------------------------------------
;	 function suspend_wakeup_init_quantum
;	-----------------------------------------
_suspend_wakeup_init_quantum:
;	quantum/quantum.c:571: led_wakeup();
	lcall	_led_wakeup
;	quantum/quantum.c:584: suspend_wakeup_init_kb();
;	quantum/quantum.c:585: }
	ljmp	_suspend_wakeup_init_kb
;------------------------------------------------------------
;Allocation info for local variables in function 'get_numeric_str'
;------------------------------------------------------------
;sloc0                     Allocated with name '_get_numeric_str_sloc0_1_0'
;sloc1                     Allocated with name '_get_numeric_str_sloc1_1_0'
;sloc2                     Allocated with name '_get_numeric_str_sloc2_1_0'
;sloc3                     Allocated with name '_get_numeric_str_sloc3_1_0'
;buf_len                   Allocated with name '_get_numeric_str_PARM_2'
;curr_num                  Allocated with name '_get_numeric_str_PARM_3'
;curr_pad                  Allocated with name '_get_numeric_str_PARM_4'
;buf                       Allocated with name '_get_numeric_str_buf_65536_446'
;i                         Allocated with name '_get_numeric_str_i_131072_448'
;c                         Allocated with name '_get_numeric_str_c_196608_449'
;------------------------------------------------------------
;	quantum/quantum.c:593: const char *get_numeric_str(char *buf, size_t buf_len, uint32_t curr_num, char curr_pad) {
;	-----------------------------------------
;	 function get_numeric_str
;	-----------------------------------------
_get_numeric_str:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_get_numeric_str_buf_65536_446
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:594: buf[buf_len - 1] = '\0';
	mov	dptr,#_get_numeric_str_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_get_numeric_str_buf_65536_446
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	add	a,r1
	mov	r4,a
	mov	a,r5
	addc	a,r2
	mov	r0,a
	mov	ar5,r3
	mov	dpl,r4
	mov	dph,r0
	mov	b,r5
	clr	a
	lcall	__gptrput
;	quantum/quantum.c:595: for (size_t i = 0; i < buf_len - 1; ++i) {
	mov	a,r6
	add	a,#0xfe
	mov	_get_numeric_str_sloc1_1_0,a
	mov	a,r7
	addc	a,#0xff
	mov	(_get_numeric_str_sloc1_1_0 + 1),a
	mov	dptr,#_get_numeric_str_PARM_4
	movx	a,@dptr
	mov	r0,a
	mov	a,r6
	add	a,#0xff
	mov	_get_numeric_str_sloc2_1_0,a
	mov	a,r7
	addc	a,#0xff
	mov	(_get_numeric_str_sloc2_1_0 + 1),a
	clr	a
	mov	_get_numeric_str_sloc0_1_0,a
	mov	(_get_numeric_str_sloc0_1_0 + 1),a
00103$:
	clr	c
	mov	a,_get_numeric_str_sloc0_1_0
	subb	a,_get_numeric_str_sloc2_1_0
	mov	a,(_get_numeric_str_sloc0_1_0 + 1)
	subb	a,(_get_numeric_str_sloc2_1_0 + 1)
	jc	00134$
	ljmp	00101$
00134$:
;	quantum/quantum.c:596: char c               = '0' + curr_num % 10;
	push	ar0
	mov	dptr,#_get_numeric_str_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r4
	mov	b,r5
	mov	a,r7
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	a,#0x30
	add	a,r4
	mov	r4,a
	mov	dptr,#_get_numeric_str_c_196608_449
	movx	@dptr,a
;	quantum/quantum.c:597: buf[buf_len - 2 - i] = (c == '0' && i == 0) ? '0' : (curr_num > 0 ? c : curr_pad);
	mov	a,_get_numeric_str_sloc1_1_0
	clr	c
	subb	a,_get_numeric_str_sloc0_1_0
	mov	r6,a
	mov	a,(_get_numeric_str_sloc1_1_0 + 1)
	subb	a,(_get_numeric_str_sloc0_1_0 + 1)
	mov	r7,a
	mov	a,r6
	add	a,r1
	mov	_get_numeric_str_sloc3_1_0,a
	mov	a,r7
	addc	a,r2
	mov	(_get_numeric_str_sloc3_1_0 + 1),a
	mov	(_get_numeric_str_sloc3_1_0 + 2),r3
	cjne	r4,#0x30,00135$
	sjmp	00136$
00135$:
	pop	ar0
	sjmp	00107$
00136$:
	pop	ar0
	mov	a,_get_numeric_str_sloc0_1_0
	orl	a,(_get_numeric_str_sloc0_1_0 + 1)
	jnz	00107$
	mov	r6,#0x30
	mov	r7,a
	sjmp	00108$
00107$:
	mov	dptr,#_get_numeric_str_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00112$
	mov	dptr,#_get_numeric_str_c_196608_449
	movx	a,@dptr
	mov	r5,a
	sjmp	00113$
00112$:
	mov	ar5,r0
00113$:
	mov	ar6,r5
	mov	r7,#0x00
00108$:
	mov	dpl,_get_numeric_str_sloc3_1_0
	mov	dph,(_get_numeric_str_sloc3_1_0 + 1)
	mov	b,(_get_numeric_str_sloc3_1_0 + 2)
	mov	a,r6
	lcall	__gptrput
;	quantum/quantum.c:598: curr_num /= 10;
	mov	dptr,#_get_numeric_str_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	dptr,#_get_numeric_str_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:595: for (size_t i = 0; i < buf_len - 1; ++i) {
	inc	_get_numeric_str_sloc0_1_0
	clr	a
	cjne	a,_get_numeric_str_sloc0_1_0,00139$
	inc	(_get_numeric_str_sloc0_1_0 + 1)
00139$:
	ljmp	00103$
00101$:
;	quantum/quantum.c:600: return buf;
	mov	dptr,#_get_numeric_str_buf_65536_446
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	quantum/quantum.c:601: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_u8_str'
;------------------------------------------------------------
;curr_pad                  Allocated with name '_get_u8_str_PARM_2'
;curr_num                  Allocated with name '_get_u8_str_curr_num_65536_450'
;buf                       Allocated with name '_get_u8_str_buf_65536_451'
;last_num                  Allocated with name '_get_u8_str_last_num_65536_451'
;last_pad                  Allocated with name '_get_u8_str_last_pad_65536_451'
;------------------------------------------------------------
;	quantum/quantum.c:611: const char *get_u8_str(uint8_t curr_num, char curr_pad) {
;	-----------------------------------------
;	 function get_u8_str
;	-----------------------------------------
_get_u8_str:
	mov	a,dpl
	mov	dptr,#_get_u8_str_curr_num_65536_450
	movx	@dptr,a
;	quantum/quantum.c:615: if (last_num == curr_num && last_pad == curr_pad) {
	mov	dptr,#_get_u8_str_last_num_65536_451
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_u8_str_curr_num_65536_450
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00102$
	mov	dptr,#_get_u8_str_last_pad_65536_451
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_u8_str_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	a,r7
	cjne	a,ar5,00102$
;	quantum/quantum.c:616: return buf;
	mov	dptr,#_get_u8_str_buf_65536_451
	mov	b,#0x00
	ret
00102$:
;	quantum/quantum.c:618: last_num = curr_num;
	mov	dptr,#_get_u8_str_last_num_65536_451
	mov	a,r6
	movx	@dptr,a
;	quantum/quantum.c:619: last_pad = curr_pad;
	mov	dptr,#_get_u8_str_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_u8_str_last_pad_65536_451
	movx	@dptr,a
;	quantum/quantum.c:620: return get_numeric_str(buf, sizeof(buf), curr_num, curr_pad);
	mov	r5,#0x00
	mov	r4,#0x00
	mov	r3,#0x00
	mov	dptr,#_get_numeric_str_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_get_numeric_str_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_get_numeric_str_PARM_4
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_get_u8_str_buf_65536_451
	mov	b,#0x00
;	quantum/quantum.c:621: }
	ljmp	_get_numeric_str
;------------------------------------------------------------
;Allocation info for local variables in function 'get_u16_str'
;------------------------------------------------------------
;curr_pad                  Allocated with name '_get_u16_str_PARM_2'
;curr_num                  Allocated with name '_get_u16_str_curr_num_65536_453'
;buf                       Allocated with name '_get_u16_str_buf_65536_454'
;last_num                  Allocated with name '_get_u16_str_last_num_65536_454'
;last_pad                  Allocated with name '_get_u16_str_last_pad_65536_454'
;------------------------------------------------------------
;	quantum/quantum.c:631: const char *get_u16_str(uint16_t curr_num, char curr_pad) {
;	-----------------------------------------
;	 function get_u16_str
;	-----------------------------------------
_get_u16_str:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_get_u16_str_curr_num_65536_453
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:635: if (last_num == curr_num && last_pad == curr_pad) {
	mov	dptr,#_get_u16_str_last_num_65536_454
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_u16_str_curr_num_65536_453
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00102$
	mov	a,r7
	cjne	a,ar5,00102$
	mov	dptr,#_get_u16_str_last_pad_65536_454
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_u16_str_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00102$
;	quantum/quantum.c:636: return buf;
	mov	dptr,#_get_u16_str_buf_65536_454
	mov	b,#0x00
	ret
00102$:
;	quantum/quantum.c:638: last_num = curr_num;
	mov	dptr,#_get_u16_str_last_num_65536_454
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	quantum/quantum.c:639: last_pad = curr_pad;
	mov	dptr,#_get_u16_str_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_u16_str_last_pad_65536_454
	movx	@dptr,a
;	quantum/quantum.c:640: return get_numeric_str(buf, sizeof(buf), curr_num, curr_pad);
	mov	r6,#0x00
	mov	r3,#0x00
	mov	dptr,#_get_numeric_str_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_get_numeric_str_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_get_numeric_str_PARM_4
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_get_u16_str_buf_65536_454
	mov	b,#0x00
;	quantum/quantum.c:641: }
	ljmp	_get_numeric_str
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
