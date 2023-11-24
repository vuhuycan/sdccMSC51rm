;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (Linux)
;--------------------------------------------------------
	.module action
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _register_mouse
	.globl _pre_process_record_quantum
	.globl _DLY_ms
	.globl _clear_weak_mods
	.globl _del_weak_mods
	.globl _add_weak_mods
	.globl _clear_mods
	.globl _del_mods
	.globl _add_mods
	.globl _send_keyboard_report
	.globl _layer_switch_get_action
	.globl _store_or_get_action
	.globl _post_process_record_quantum
	.globl _process_record_quantum
	.globl _clear_keys_from_report
	.globl _del_key_from_report
	.globl _add_key_to_report
	.globl _is_key_pressed
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
	.globl _debug_action_PARM_1
	.globl _debug_record_PARM_1
	.globl _debug_event_PARM_1
	.globl _is_tap_action_PARM_1
	.globl _tap_code_delay_PARM_2
	.globl _process_action_PARM_2
	.globl _register_mouse_PARM_2
	.globl _action_exec_PARM_1
	.globl _tp_buttons
	.globl _action_exec
	.globl _process_record_nocache
	.globl _process_record
	.globl _process_record_handler
	.globl _process_action
	.globl _register_code
	.globl _unregister_code
	.globl _tap_code_delay
	.globl _tap_code
	.globl _register_mods
	.globl _unregister_mods
	.globl _register_weak_mods
	.globl _unregister_weak_mods
	.globl _clear_keyboard
	.globl _clear_keyboard_but_mods
	.globl _clear_keyboard_but_mods_and_keys
	.globl _is_tap_record
	.globl _is_tap_action
	.globl _debug_event
	.globl _debug_record
	.globl _debug_action
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
_action_exec_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_KEYCODE2SYSTEM_key_65536_1:
	.ds 1
_KEYCODE2CONSUMER_key_65536_4:
	.ds 1
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
_tp_buttons::
	.ds 2
_action_exec_PARM_1:
	.ds 6
_action_exec___1310720025_131072_386:
	.ds 1
_action_exec___1310720026_131072_396:
	.ds 6
_action_exec_event_196608_397:
	.ds 6
_action_exec___1310720031_131072_392:
	.ds 1
_action_exec___1310720028_131072_392:
	.ds 1
_action_exec_record_65537_392:
	.ds 6
_action_exec___1310730029_131073_399:
	.ds 6
_action_exec_event_196609_400:
	.ds 6
_action_exec___1310730032_131073_402:
	.ds 6
_action_exec_event_196609_403:
	.ds 6
_process_record_nocache_record_65536_405:
	.ds 3
_process_record_record_65536_407:
	.ds 3
_process_record___1310720034_131072_408:
	.ds 1
_process_record___1310720035_131072_411:
	.ds 6
_process_record_event_196608_412:
	.ds 6
_process_record_handler_record_65536_414:
	.ds 3
_process_record_handler_action_65536_415:
	.ds 2
_process_record_handler___655360036_1_0:
	.ds 2
_register_mouse_PARM_2:
	.ds 1
_process_action_PARM_2:
	.ds 2
_process_action_record_65536_421:
	.ds 3
_process_action_event_65536_422:
	.ds 6
_register_code_code_65536_434:
	.ds 1
_unregister_code_code_65536_447:
	.ds 1
_tap_code_delay_PARM_2:
	.ds 2
_tap_code_delay_code_65536_456:
	.ds 1
_tap_code_code_65536_463:
	.ds 1
_register_mods_mods_65536_465:
	.ds 1
_unregister_mods_mods_65536_468:
	.ds 1
_register_weak_mods_mods_65536_471:
	.ds 1
_unregister_weak_mods_mods_65536_474:
	.ds 1
_is_tap_record_record_65536_486:
	.ds 3
_is_tap_record___1310720045_131072_487:
	.ds 1
_is_tap_record___1310720046_131072_490:
	.ds 6
_is_tap_record_event_196608_491:
	.ds 6
_is_tap_record_action_65537_489:
	.ds 2
_is_tap_record___655370047_1_0:
	.ds 2
_is_tap_action_PARM_1:
	.ds 2
_is_tap_action_code_196608_496:
	.ds 1
_is_tap_action_code_196608_498:
	.ds 1
_debug_event_PARM_1:
	.ds 6
_debug_record_PARM_1:
	.ds 6
_debug_action_PARM_1:
	.ds 2
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
;Allocation info for local variables in function 'KEYCODE2SYSTEM'
;------------------------------------------------------------
;key                       Allocated with name '_KEYCODE2SYSTEM_key_65536_1'
;------------------------------------------------------------
;	tmk_core/protocol/report.h:262: static inline uint16_t KEYCODE2SYSTEM(uint8_t key) {
;	-----------------------------------------
;	 function KEYCODE2SYSTEM
;	-----------------------------------------
_KEYCODE2SYSTEM:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_KEYCODE2SYSTEM_key_65536_1
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
;key                       Allocated with name '_KEYCODE2CONSUMER_key_65536_4'
;------------------------------------------------------------
;	tmk_core/protocol/report.h:276: static inline uint16_t KEYCODE2CONSUMER(uint8_t key) {
;	-----------------------------------------
;	 function KEYCODE2CONSUMER
;	-----------------------------------------
_KEYCODE2CONSUMER:
	mov	a,dpl
	mov	dptr,#_KEYCODE2CONSUMER_key_65536_4
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
;Allocation info for local variables in function 'IS_NOEVENT'
;------------------------------------------------------------
;event                     Allocated with name '_IS_NOEVENT_PARM_1'
;------------------------------------------------------------
;	quantum/keyboard.h:52: static inline bool IS_NOEVENT(const keyevent_t event) {
;	-----------------------------------------
;	 function IS_NOEVENT
;	-----------------------------------------
_IS_NOEVENT:
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
;Allocation info for local variables in function 'action_exec'
;------------------------------------------------------------
;event                     Allocated with name '_action_exec_PARM_1'
;__1310720025              Allocated with name '_action_exec___1310720025_131072_386'
;__1310720026              Allocated with name '_action_exec___1310720026_131072_396'
;event                     Allocated with name '_action_exec_event_196608_397'
;__1310720031              Allocated with name '_action_exec___1310720031_131072_392'
;__1310720028              Allocated with name '_action_exec___1310720028_131072_392'
;record                    Allocated with name '_action_exec_record_65537_392'
;__1310730029              Allocated with name '_action_exec___1310730029_131073_399'
;event                     Allocated with name '_action_exec_event_196609_400'
;__1310730032              Allocated with name '_action_exec___1310730032_131073_402'
;event                     Allocated with name '_action_exec_event_196609_403'
;------------------------------------------------------------
;	quantum/action.c:75: void action_exec(keyevent_t event) {
;	-----------------------------------------
;	 function action_exec
;	-----------------------------------------
_action_exec:
;	quantum/action.c:76: if (IS_EVENT(event)) {
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_action_exec_PARM_1
	movx	@dptr,a
	mov	a,#(_action_exec_PARM_1 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_exec___1310720026_131072_396
	mov	b,a
	lcall	___memcpy
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_action_exec___1310720026_131072_396
	movx	@dptr,a
	mov	a,#(_action_exec___1310720026_131072_396 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_exec_event_196608_397
	mov	b,a
	lcall	___memcpy
;	quantum/keyboard.h:56: return event.type != TICK_EVENT;
	mov	dptr,#(_action_exec_event_196608_397 + 0x0004)
	movx	a,@dptr
	cjne	a,#0x01,00139$
00139$:
	mov	_action_exec_sloc0_1_0,c
	mov	dptr,#_action_exec___1310720025_131072_386
	cpl	c
	clr	a
	rlc	a
	movx	@dptr,a
;	quantum/action.c:76: if (IS_EVENT(event)) {
	mov	dptr,#_action_exec___1310720025_131072_386
	movx	a,@dptr
	jz	00108$
;	quantum/action.c:79: debug_event(event);
	mov	r5,#_debug_event_PARM_1
	mov	r6,#(_debug_event_PARM_1 >> 8)
	mov	r7,#0x00
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_action_exec_PARM_1
	movx	@dptr,a
	mov	a,#(_action_exec_PARM_1 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___memcpy
	lcall	_debug_event
;	quantum/action.c:80: ac_dprintf("\n");
00108$:
;	quantum/action.c:86: if (event.pressed) {
	mov	dptr,#(_action_exec_PARM_1 + 0x0005)
	movx	a,@dptr
	jz	00110$
;	quantum/action.c:88: clear_weak_mods();
	lcall	_clear_weak_mods
00110$:
;	quantum/action.c:100: record.event = event;
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_action_exec_PARM_1
	movx	@dptr,a
	mov	a,#(_action_exec_PARM_1 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_exec_record_65537_392
	mov	b,a
	lcall	___memcpy
;	quantum/action.c:130: if (IS_NOEVENT(record.event) || pre_process_record_quantum(&record)) {
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_action_exec_record_65537_392
	movx	@dptr,a
	mov	a,#(_action_exec_record_65537_392 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_exec___1310730029_131073_399
	mov	b,a
	lcall	___memcpy
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_action_exec___1310730029_131073_399
	movx	@dptr,a
	mov	a,#(_action_exec___1310730029_131073_399 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_exec_event_196609_400
	mov	b,a
	lcall	___memcpy
;	quantum/keyboard.h:53: return event.type == TICK_EVENT;
	mov	dptr,#(_action_exec_event_196609_400 + 0x0004)
	movx	a,@dptr
	mov	dptr,#_action_exec___1310720028_131072_392
	cjne	a,#0x01,00142$
00142$:
	clr	a
	rlc	a
	movx	@dptr,a
;	quantum/action.c:130: if (IS_NOEVENT(record.event) || pre_process_record_quantum(&record)) {
	mov	dptr,#_action_exec___1310720028_131072_392
	movx	a,@dptr
	jnz	00111$
	mov	dptr,#_action_exec_record_65537_392
	mov	b,a
	lcall	_pre_process_record_quantum
	mov	a,dpl
	jz	00112$
00111$:
;	quantum/action.c:131: process_record(&record);
	mov	dptr,#_action_exec_record_65537_392
	mov	b,#0x00
	lcall	_process_record
00112$:
;	quantum/action.c:133: if (IS_EVENT(record.event)) {
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_action_exec_record_65537_392
	movx	@dptr,a
	mov	a,#(_action_exec_record_65537_392 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_exec___1310730032_131073_402
	mov	b,a
	lcall	___memcpy
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_action_exec___1310730032_131073_402
	movx	@dptr,a
	mov	a,#(_action_exec___1310730032_131073_402 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_exec_event_196609_403
	mov	b,a
	lcall	___memcpy
;	quantum/keyboard.h:56: return event.type != TICK_EVENT;
	mov	dptr,#(_action_exec_event_196609_403 + 0x0004)
	movx	a,@dptr
	cjne	a,#0x01,00145$
00145$:
	mov	_action_exec_sloc0_1_0,c
	mov	dptr,#_action_exec___1310720031_131072_392
	cpl	c
	clr	a
	rlc	a
	movx	@dptr,a
;	quantum/action.c:133: if (IS_EVENT(record.event)) {
	mov	dptr,#_action_exec___1310720031_131072_392
	movx	a,@dptr
	jz	00121$
;	quantum/action.c:135: debug_record(record);
	mov	r5,#_debug_record_PARM_1
	mov	r6,#(_debug_record_PARM_1 >> 8)
	mov	r7,#0x00
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_action_exec_record_65537_392
	movx	@dptr,a
	mov	a,#(_action_exec_record_65537_392 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___memcpy
;	quantum/action.c:139: }
	ljmp	_debug_record
00121$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_record_nocache'
;------------------------------------------------------------
;record                    Allocated with name '_process_record_nocache_record_65536_405'
;------------------------------------------------------------
;	quantum/action.c:229: void process_record_nocache(keyrecord_t *record) {
;	-----------------------------------------
;	 function process_record_nocache
;	-----------------------------------------
_process_record_nocache:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_process_record_nocache_record_65536_405
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/action.c:230: process_record(record);
	mov	dptr,#_process_record_nocache_record_65536_405
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
;	quantum/action.c:231: }
	ljmp	_process_record
;------------------------------------------------------------
;Allocation info for local variables in function 'process_record'
;------------------------------------------------------------
;record                    Allocated with name '_process_record_record_65536_407'
;__1310720034              Allocated with name '_process_record___1310720034_131072_408'
;__1310720035              Allocated with name '_process_record___1310720035_131072_411'
;event                     Allocated with name '_process_record_event_196608_412'
;------------------------------------------------------------
;	quantum/action.c:276: void process_record(keyrecord_t *record) {
;	-----------------------------------------
;	 function process_record
;	-----------------------------------------
_process_record:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_process_record_record_65536_407
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/action.c:277: if (IS_NOEVENT(record->event)) {
	mov	dptr,#_process_record_record_65536_407
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dptr,#___memcpy_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_process_record___1310720035_131072_411
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	___memcpy
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_process_record___1310720035_131072_411
	movx	@dptr,a
	mov	a,#(_process_record___1310720035_131072_411 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_process_record_event_196608_412
	mov	b,a
	lcall	___memcpy
	pop	ar5
	pop	ar6
	pop	ar7
;	quantum/keyboard.h:53: return event.type == TICK_EVENT;
	mov	dptr,#(_process_record_event_196608_412 + 0x0004)
	movx	a,@dptr
	mov	dptr,#_process_record___1310720034_131072_408
	cjne	a,#0x01,00116$
00116$:
	clr	a
	rlc	a
	movx	@dptr,a
;	quantum/action.c:277: if (IS_NOEVENT(record->event)) {
	mov	dptr,#_process_record___1310720034_131072_408
	movx	a,@dptr
	jz	00102$
;	quantum/action.c:278: return;
	ret
00102$:
;	quantum/action.c:281: if (!process_record_quantum(record)) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_process_record_quantum
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00104$
;	quantum/action.c:287: return;
	ret
00104$:
;	quantum/action.c:290: process_record_handler(record);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_process_record_handler
;	quantum/action.c:291: post_process_record_quantum(record);
	mov	dptr,#_process_record_record_65536_407
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
;	quantum/action.c:292: }
	ljmp	_post_process_record_quantum
;------------------------------------------------------------
;Allocation info for local variables in function 'process_record_handler'
;------------------------------------------------------------
;record                    Allocated with name '_process_record_handler_record_65536_414'
;action                    Allocated with name '_process_record_handler_action_65536_415'
;__655360036               Allocated with name '_process_record_handler___655360036_1_0'
;------------------------------------------------------------
;	quantum/action.c:294: void process_record_handler(keyrecord_t *record) {
;	-----------------------------------------
;	 function process_record_handler
;	-----------------------------------------
_process_record_handler:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_process_record_handler_record_65536_414
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/action.c:304: action = store_or_get_action(record->event.pressed, record->event.key);
	mov	dptr,#_process_record_handler_record_65536_414
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#_store_or_get_action_PARM_1
	movx	@dptr,a
	mov	r2,#_store_or_get_action_PARM_2
	mov	r3,#(_store_or_get_action_PARM_2 >> 8)
	mov	r4,#0x00
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
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___memcpy
	mov	acc, #_process_record_handler___655360036_1_0
	push	acc
	mov	acc, #(_process_record_handler___655360036_1_0 >> 8)
	push	acc
	mov	acc, #0x00
	push	acc
	lcall	_store_or_get_action
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_process_record_handler___655360036_1_0
	movx	@dptr,a
	mov	a,#(_process_record_handler___655360036_1_0 >> 8)
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
	mov	dptr,#_process_record_handler_action_65536_415
	mov	b,a
	lcall	___memcpy
;	quantum/action.c:307: debug_action(action);
	mov	r5,#_debug_action_PARM_1
	mov	r6,#(_debug_action_PARM_1 >> 8)
	mov	r7,#0x00
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_process_record_handler_action_65536_415
	movx	@dptr,a
	mov	a,#(_process_record_handler_action_65536_415 >> 8)
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
	lcall	_debug_action
;	quantum/action.c:316: process_action(record, action);
	mov	dptr,#_process_record_handler_record_65536_414
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r2,#_process_action_PARM_2
	mov	r3,#(_process_action_PARM_2 >> 8)
	mov	r4,#0x00
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_process_record_handler_action_65536_415
	movx	@dptr,a
	mov	a,#(_process_record_handler_action_65536_415 >> 8)
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___memcpy
;	quantum/action.c:317: }
	ljmp	_process_action
;------------------------------------------------------------
;Allocation info for local variables in function 'register_mouse'
;------------------------------------------------------------
;pressed                   Allocated with name '_register_mouse_PARM_2'
;mouse_keycode             Allocated with name '_register_mouse_mouse_keycode_65536_418'
;------------------------------------------------------------
;	quantum/action.c:329: void register_mouse(uint8_t mouse_keycode, bool pressed) {
;	-----------------------------------------
;	 function register_mouse
;	-----------------------------------------
_register_mouse:
;	quantum/action.c:367: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_action'
;------------------------------------------------------------
;action                    Allocated with name '_process_action_PARM_2'
;record                    Allocated with name '_process_action_record_65536_421'
;event                     Allocated with name '_process_action_event_65536_422'
;mods                      Allocated with name '_process_action_mods_196608_424'
;------------------------------------------------------------
;	quantum/action.c:373: void process_action(keyrecord_t *record, action_t action) {
;	-----------------------------------------
;	 function process_action
;	-----------------------------------------
_process_action:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_process_action_record_65536_421
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/action.c:375: event = record->event;
	mov	dptr,#_process_action_record_65536_421
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
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
	mov	dptr,#_process_action_event_65536_422
	mov	b,a
	lcall	___memcpy
;	quantum/action.c:399: switch (action.kind.id) {
	mov	dptr,#(_process_action_PARM_2 + 0x0001)
	movx	a,@dptr
	swap	a
	anl	a,#0x0f
	mov  r7,a
	add	a,#0xff - 0x05
	jnc	00157$
	ret
00157$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00158$
	jmp	@a+dptr
00158$:
	ljmp	00102$
	ljmp	00102$
	ljmp	00125$
	ljmp	00125$
	ljmp	00125$
	ljmp	00122$
;	quantum/action.c:402: case ACT_RMODS: {
00102$:
;	quantum/action.c:403: uint8_t mods = (action.kind.id == ACT_LMODS) ? action.key.mods : action.key.mods << 4;
	mov	dptr,#(_process_action_PARM_2 + 0x0001)
	movx	a,@dptr
	anl	a,#0xf0
	jnz	00127$
	mov	dptr,#(_process_action_PARM_2 + 0x0001)
	movx	a,@dptr
	anl	a,#0x0f
	mov	r7,a
	sjmp	00128$
00127$:
	mov	dptr,#(_process_action_PARM_2 + 0x0001)
	movx	a,@dptr
	anl	a,#0x0f
	mov	r6,a
	swap	a
	anl	a,#0xf0
	mov	r7,a
00128$:
;	quantum/action.c:404: if (event.pressed) {
	mov	dptr,#(_process_action_event_65536_422 + 0x0005)
	movx	a,@dptr
	jz	00118$
;	quantum/action.c:405: if (mods) {
	mov	a,r7
	jz	00109$
;	quantum/action.c:406: if (IS_MODIFIER_KEYCODE(action.key.code) || action.key.code == KC_NO) {
	mov	dptr,#_process_action_PARM_2
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0xe0,00162$
00162$:
	jc	00107$
	mov	dptr,#_process_action_PARM_2
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0xe7
	jnc	00103$
00107$:
	mov	dptr,#_process_action_PARM_2
	movx	a,@dptr
	jnz	00104$
00103$:
;	quantum/action.c:410: add_mods(mods);
	mov	dpl,r7
	lcall	_add_mods
	sjmp	00105$
00104$:
;	quantum/action.c:412: add_weak_mods(mods);
	mov	dpl,r7
	lcall	_add_weak_mods
00105$:
;	quantum/action.c:414: send_keyboard_report();
	lcall	_send_keyboard_report
00109$:
;	quantum/action.c:416: register_code(action.key.code);
	mov	dptr,#_process_action_PARM_2
	movx	a,@dptr
	mov	dpl,a
	ljmp	_register_code
00118$:
;	quantum/action.c:418: unregister_code(action.key.code);
	mov	dptr,#_process_action_PARM_2
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_unregister_code
	pop	ar7
;	quantum/action.c:419: if (mods) {
	mov	a,r7
	jz	00125$
;	quantum/action.c:420: if (IS_MODIFIER_KEYCODE(action.key.code) || action.key.code == KC_NO) {
	mov	dptr,#_process_action_PARM_2
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0xe0,00167$
00167$:
	jc	00114$
	mov	dptr,#_process_action_PARM_2
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0xe7
	jnc	00110$
00114$:
	mov	dptr,#_process_action_PARM_2
	movx	a,@dptr
	jnz	00111$
00110$:
;	quantum/action.c:421: del_mods(mods);
	mov	dpl,r7
	lcall	_del_mods
	sjmp	00112$
00111$:
;	quantum/action.c:423: del_weak_mods(mods);
	mov	dpl,r7
	lcall	_del_weak_mods
00112$:
;	quantum/action.c:425: send_keyboard_report();
;	quantum/action.c:428: } break;
;	quantum/action.c:565: case ACT_MOUSEKEY:
	ljmp	_send_keyboard_report
00122$:
;	quantum/action.c:566: register_mouse(action.key.code, event.pressed);
	mov	dptr,#_process_action_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_process_action_event_65536_422 + 0x0005)
	movx	a,@dptr
	mov	dptr,#_register_mouse_PARM_2
	movx	@dptr,a
	mov	dpl,r7
;	quantum/action.c:816: }
;	quantum/action.c:884: }
	ljmp	_register_mouse
00125$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'register_code'
;------------------------------------------------------------
;code                      Allocated with name '_register_code_code_65536_434'
;__2621440038              Allocated with name '_register_code___2621440038_262144_441'
;key                       Allocated with name '_register_code_key_327680_442'
;__1966080040              Allocated with name '_register_code___1966080040_196608_444'
;key                       Allocated with name '_register_code_key_262144_445'
;------------------------------------------------------------
;	quantum/action.c:890: __attribute__((weak)) void register_code(uint8_t code) {
;	-----------------------------------------
;	 function register_code
;	-----------------------------------------
_register_code:
	mov	a,dpl
	mov	dptr,#_register_code_code_65536_434
	movx	@dptr,a
;	quantum/action.c:891: if (code == KC_NO) {
	movx	a,@dptr
	mov	r7,a
	jnz	00117$
;	quantum/action.c:892: return;
	ret
00117$:
;	quantum/action.c:927: } else if (IS_BASIC_KEYCODE(code)) {
	cjne	r7,#0x04,00156$
00156$:
	jc	00113$
	mov	a,r7
	add	a,#0xff - 0xa4
	jc	00113$
;	quantum/action.c:934: if (is_key_pressed(keyboard_report, code)) {
	mov	dptr,#_keyboard_report
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_is_key_pressed_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar7
	lcall	_is_key_pressed
	mov	a,dpl
	pop	ar7
	jz	00104$
;	quantum/action_util.h:38: del_key_from_report(keyboard_report, key);
	mov	dptr,#_keyboard_report
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_del_key_from_report_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_del_key_from_report
;	quantum/action.c:936: send_keyboard_report();
	lcall	_send_keyboard_report
00104$:
;	quantum/action.c:938: add_key(code);
	mov	dptr,#_register_code_code_65536_434
	movx	a,@dptr
	mov	r7,a
;	quantum/action_util.h:34: add_key_to_report(keyboard_report, key);
	mov	dptr,#_keyboard_report
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_add_key_to_report_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_add_key_to_report
;	quantum/action.c:939: send_keyboard_report();
	ljmp	_send_keyboard_report
00113$:
;	quantum/action.c:940: } else if (IS_MODIFIER_KEYCODE(code)) {
	mov	dptr,#_register_code_code_65536_434
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xe0,00160$
00160$:
	jc	00109$
	mov	a,r7
	add	a,#0xff - 0xe7
	jc	00109$
;	quantum/action.c:941: add_mods(MOD_BIT(code));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00165$
00163$:
	add	a,acc
00165$:
	djnz	b,00163$
	mov	dpl,a
	lcall	_add_mods
;	quantum/action.c:942: send_keyboard_report();
	ljmp	_send_keyboard_report
00109$:
;	quantum/action.c:951: } else if (IS_MOUSE_KEYCODE(code)) {
	mov	dptr,#_register_code_code_65536_434
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xcd,00166$
00166$:
	jc	00121$
	mov	a,r7
	add	a,#0xff - 0xdf
	jc	00121$
;	quantum/action.c:952: register_mouse(code, true);
	mov	dptr,#_register_mouse_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r7
;	quantum/action.c:954: }
	ljmp	_register_mouse
00121$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'unregister_code'
;------------------------------------------------------------
;code                      Allocated with name '_unregister_code_code_65536_447'
;__1966080042              Allocated with name '_unregister_code___1966080042_196608_453'
;key                       Allocated with name '_unregister_code_key_262144_454'
;------------------------------------------------------------
;	quantum/action.c:960: __attribute__((weak)) void unregister_code(uint8_t code) {
;	-----------------------------------------
;	 function unregister_code
;	-----------------------------------------
_unregister_code:
	mov	a,dpl
	mov	dptr,#_unregister_code_code_65536_447
	movx	@dptr,a
;	quantum/action.c:961: if (code == KC_NO) {
	movx	a,@dptr
	mov	r7,a
	jnz	00113$
;	quantum/action.c:962: return;
	ret
00113$:
;	quantum/action.c:994: } else if (IS_BASIC_KEYCODE(code)) {
	cjne	r7,#0x04,00147$
00147$:
	jc	00109$
	mov	a,r7
	add	a,#0xff - 0xa4
	jc	00109$
;	quantum/action_util.h:38: del_key_from_report(keyboard_report, key);
	mov	dptr,#_keyboard_report
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_del_key_from_report_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_del_key_from_report
;	quantum/action.c:996: send_keyboard_report();
	ljmp	_send_keyboard_report
00109$:
;	quantum/action.c:997: } else if (IS_MODIFIER_KEYCODE(code)) {
	mov	dptr,#_unregister_code_code_65536_447
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xe0,00150$
00150$:
	jc	00105$
	mov	a,r7
	add	a,#0xff - 0xe7
	jc	00105$
;	quantum/action.c:998: del_mods(MOD_BIT(code));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00155$
00153$:
	add	a,acc
00155$:
	djnz	b,00153$
	mov	dpl,a
	lcall	_del_mods
;	quantum/action.c:999: send_keyboard_report();
	ljmp	_send_keyboard_report
00105$:
;	quantum/action.c:1008: } else if (IS_MOUSE_KEYCODE(code)) {
	mov	dptr,#_unregister_code_code_65536_447
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xcd,00156$
00156$:
	jc	00116$
	mov	a,r7
	add	a,#0xff - 0xdf
	jc	00116$
;	quantum/action.c:1009: register_mouse(code, false);
	mov	dptr,#_register_mouse_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r7
;	quantum/action.c:1011: }
	ljmp	_register_mouse
00116$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tap_code_delay'
;------------------------------------------------------------
;delay                     Allocated with name '_tap_code_delay_PARM_2'
;code                      Allocated with name '_tap_code_delay_code_65536_456'
;i                         Allocated with name '_tap_code_delay_i_131072_458'
;i                         Allocated with name '_tap_code_delay_i_327680_461'
;------------------------------------------------------------
;	quantum/action.c:1018: __attribute__((weak)) void tap_code_delay(uint8_t code, uint16_t delay) {
;	-----------------------------------------
;	 function tap_code_delay
;	-----------------------------------------
_tap_code_delay:
	mov	a,dpl
	mov	dptr,#_tap_code_delay_code_65536_456
	movx	@dptr,a
;	quantum/action.c:1019: register_code(code);
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_register_code
	pop	ar7
;	quantum/action.c:1020: for (uint16_t i = delay; i > 0; i--) {
	mov	dptr,#_tap_code_delay_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00110$:
	mov	a,r5
	orl	a,r6
	jz	00105$
;	quantum/action.c:1021: wait_ms(1);
	mov	r3,#0x01
	mov	r4,#0x00
00107$:
	mov	a,r3
	orl	a,r4
	jz	00103$
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_DLY_ms
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	dec	r3
	cjne	r3,#0xff,00138$
	dec	r4
00138$:
	sjmp	00107$
00103$:
;	quantum/action.c:1020: for (uint16_t i = delay; i > 0; i--) {
	dec	r5
	cjne	r5,#0xff,00139$
	dec	r6
00139$:
	sjmp	00110$
00105$:
;	quantum/action.c:1023: unregister_code(code);
	mov	dpl,r7
;	quantum/action.c:1024: }
	ljmp	_unregister_code
;------------------------------------------------------------
;Allocation info for local variables in function 'tap_code'
;------------------------------------------------------------
;code                      Allocated with name '_tap_code_code_65536_463'
;------------------------------------------------------------
;	quantum/action.c:1030: __attribute__((weak)) void tap_code(uint8_t code) {
;	-----------------------------------------
;	 function tap_code
;	-----------------------------------------
_tap_code:
	mov	a,dpl
	mov	dptr,#_tap_code_code_65536_463
	movx	@dptr,a
;	quantum/action.c:1031: tap_code_delay(code, code == KC_CAPS ? QS_tap_hold_caps_delay : QS_tap_code_delay);
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x39,00103$
	mov	r5,#0x50
	mov	r6,#0x00
	sjmp	00104$
00103$:
	mov	r5,#0x00
	mov	r6,#0x00
00104$:
	mov	dptr,#_tap_code_delay_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
;	quantum/action.c:1032: }
	ljmp	_tap_code_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'register_mods'
;------------------------------------------------------------
;mods                      Allocated with name '_register_mods_mods_65536_465'
;------------------------------------------------------------
;	quantum/action.c:1038: __attribute__((weak)) void register_mods(uint8_t mods) {
;	-----------------------------------------
;	 function register_mods
;	-----------------------------------------
_register_mods:
	mov	a,dpl
	mov	dptr,#_register_mods_mods_65536_465
	movx	@dptr,a
;	quantum/action.c:1039: if (mods) {
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00103$
;	quantum/action.c:1040: add_mods(mods);
	mov	dpl,r7
	lcall	_add_mods
;	quantum/action.c:1041: send_keyboard_report();
;	quantum/action.c:1043: }
	ljmp	_send_keyboard_report
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'unregister_mods'
;------------------------------------------------------------
;mods                      Allocated with name '_unregister_mods_mods_65536_468'
;------------------------------------------------------------
;	quantum/action.c:1049: __attribute__((weak)) void unregister_mods(uint8_t mods) {
;	-----------------------------------------
;	 function unregister_mods
;	-----------------------------------------
_unregister_mods:
	mov	a,dpl
	mov	dptr,#_unregister_mods_mods_65536_468
	movx	@dptr,a
;	quantum/action.c:1050: if (mods) {
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00103$
;	quantum/action.c:1051: del_mods(mods);
	mov	dpl,r7
	lcall	_del_mods
;	quantum/action.c:1052: send_keyboard_report();
;	quantum/action.c:1054: }
	ljmp	_send_keyboard_report
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'register_weak_mods'
;------------------------------------------------------------
;mods                      Allocated with name '_register_weak_mods_mods_65536_471'
;------------------------------------------------------------
;	quantum/action.c:1060: __attribute__((weak)) void register_weak_mods(uint8_t mods) {
;	-----------------------------------------
;	 function register_weak_mods
;	-----------------------------------------
_register_weak_mods:
	mov	a,dpl
	mov	dptr,#_register_weak_mods_mods_65536_471
	movx	@dptr,a
;	quantum/action.c:1061: if (mods) {
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00103$
;	quantum/action.c:1062: add_weak_mods(mods);
	mov	dpl,r7
	lcall	_add_weak_mods
;	quantum/action.c:1063: send_keyboard_report();
;	quantum/action.c:1065: }
	ljmp	_send_keyboard_report
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'unregister_weak_mods'
;------------------------------------------------------------
;mods                      Allocated with name '_unregister_weak_mods_mods_65536_474'
;------------------------------------------------------------
;	quantum/action.c:1071: __attribute__((weak)) void unregister_weak_mods(uint8_t mods) {
;	-----------------------------------------
;	 function unregister_weak_mods
;	-----------------------------------------
_unregister_weak_mods:
	mov	a,dpl
	mov	dptr,#_unregister_weak_mods_mods_65536_474
	movx	@dptr,a
;	quantum/action.c:1072: if (mods) {
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00103$
;	quantum/action.c:1073: del_weak_mods(mods);
	mov	dpl,r7
	lcall	_del_weak_mods
;	quantum/action.c:1074: send_keyboard_report();
;	quantum/action.c:1076: }
	ljmp	_send_keyboard_report
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_keyboard'
;------------------------------------------------------------
;	quantum/action.c:1082: void clear_keyboard(void) {
;	-----------------------------------------
;	 function clear_keyboard
;	-----------------------------------------
_clear_keyboard:
;	quantum/action.c:1083: clear_mods();
	lcall	_clear_mods
;	quantum/action.c:1084: clear_keyboard_but_mods();
;	quantum/action.c:1085: }
	ljmp	_clear_keyboard_but_mods
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_keyboard_but_mods'
;------------------------------------------------------------
;	quantum/action.c:1091: void clear_keyboard_but_mods(void) {
;	-----------------------------------------
;	 function clear_keyboard_but_mods
;	-----------------------------------------
_clear_keyboard_but_mods:
;	quantum/action_util.h:42: clear_keys_from_report(keyboard_report);
	mov	dptr,#_keyboard_report
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
	lcall	_clear_keys_from_report
;	quantum/action.c:1093: clear_keyboard_but_mods_and_keys();
;	quantum/action.c:1094: }
	ljmp	_clear_keyboard_but_mods_and_keys
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_keyboard_but_mods_and_keys'
;------------------------------------------------------------
;	quantum/action.c:1100: void clear_keyboard_but_mods_and_keys(void) {
;	-----------------------------------------
;	 function clear_keyboard_but_mods_and_keys
;	-----------------------------------------
_clear_keyboard_but_mods_and_keys:
;	quantum/action.c:1105: clear_weak_mods();
	lcall	_clear_weak_mods
;	quantum/action.c:1106: send_keyboard_report();
;	quantum/action.c:1114: }
	ljmp	_send_keyboard_report
;------------------------------------------------------------
;Allocation info for local variables in function 'is_tap_record'
;------------------------------------------------------------
;record                    Allocated with name '_is_tap_record_record_65536_486'
;__1310720045              Allocated with name '_is_tap_record___1310720045_131072_487'
;__1310720046              Allocated with name '_is_tap_record___1310720046_131072_490'
;event                     Allocated with name '_is_tap_record_event_196608_491'
;action                    Allocated with name '_is_tap_record_action_65537_489'
;__655370047               Allocated with name '_is_tap_record___655370047_1_0'
;------------------------------------------------------------
;	quantum/action.c:1120: bool is_tap_record(keyrecord_t *record) {
;	-----------------------------------------
;	 function is_tap_record
;	-----------------------------------------
_is_tap_record:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_is_tap_record_record_65536_486
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/action.c:1121: if (IS_NOEVENT(record->event)) {
	mov	dptr,#_is_tap_record_record_65536_486
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dptr,#___memcpy_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_is_tap_record___1310720046_131072_490
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	___memcpy
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_is_tap_record___1310720046_131072_490
	movx	@dptr,a
	mov	a,#(_is_tap_record___1310720046_131072_490 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_is_tap_record_event_196608_491
	mov	b,a
	lcall	___memcpy
	pop	ar5
	pop	ar6
	pop	ar7
;	quantum/keyboard.h:53: return event.type == TICK_EVENT;
	mov	dptr,#(_is_tap_record_event_196608_491 + 0x0004)
	movx	a,@dptr
	mov	dptr,#_is_tap_record___1310720045_131072_487
	cjne	a,#0x01,00110$
00110$:
	clr	a
	rlc	a
	movx	@dptr,a
;	quantum/action.c:1121: if (IS_NOEVENT(record->event)) {
	mov	dptr,#_is_tap_record___1310720045_131072_487
	movx	a,@dptr
	jz	00102$
;	quantum/action.c:1122: return false;
	mov	dpl,#0x00
	ret
00102$:
;	quantum/action.c:1134: action = layer_switch_get_action(record->event.key);
	mov	r2,#_layer_switch_get_action_PARM_1
	mov	r3,#(_layer_switch_get_action_PARM_1 >> 8)
	mov	r4,#0x00
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
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___memcpy
	mov	acc, #_is_tap_record___655370047_1_0
	push	acc
	mov	acc, #(_is_tap_record___655370047_1_0 >> 8)
	push	acc
	mov	acc, #0x00
	push	acc
	lcall	_layer_switch_get_action
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_is_tap_record___655370047_1_0
	movx	@dptr,a
	mov	a,#(_is_tap_record___655370047_1_0 >> 8)
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
	mov	dptr,#_is_tap_record_action_65537_489
	mov	b,a
	lcall	___memcpy
;	quantum/action.c:1136: return is_tap_action(action);
	mov	r5,#_is_tap_action_PARM_1
	mov	r6,#(_is_tap_action_PARM_1 >> 8)
	mov	r7,#0x00
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_is_tap_record_action_65537_489
	movx	@dptr,a
	mov	a,#(_is_tap_record_action_65537_489 >> 8)
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
;	quantum/action.c:1137: }
	ljmp	_is_tap_action
;------------------------------------------------------------
;Allocation info for local variables in function 'is_tap_action'
;------------------------------------------------------------
;action                    Allocated with name '_is_tap_action_PARM_1'
;code                      Allocated with name '_is_tap_action_code_196608_496'
;code                      Allocated with name '_is_tap_action_code_196608_498'
;------------------------------------------------------------
;	quantum/action.c:1143: bool is_tap_action(action_t action) {
;	-----------------------------------------
;	 function is_tap_action
;	-----------------------------------------
_is_tap_action:
;	quantum/action.c:1144: switch (action.kind.id) {
	mov	dptr,#(_is_tap_action_PARM_1 + 0x0001)
	movx	a,@dptr
	swap	a
	anl	a,#0x0f
	mov	r7,a
	cjne	r7,#0x02,00146$
	sjmp	00104$
00146$:
	cjne	r7,#0x03,00147$
	sjmp	00104$
00147$:
	cjne	r7,#0x06,00148$
	sjmp	00110$
00148$:
	cjne	r7,#0x0a,00149$
	sjmp	00104$
00149$:
	cjne	r7,#0x0b,00115$
;	quantum/action.c:1148: case ACT_LAYER_TAP_EXT:
00104$:
;	quantum/action.c:1156: uint8_t code = action.layer_tap.code;
	mov	dptr,#_is_tap_action_PARM_1
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_is_tap_action_code_196608_496
	movx	@dptr,a
;	quantum/action.c:1157: if ((code >= KC_NO && code <= KC_RIGHT_GUI) || 
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0xe7
	jnc	00105$
;	quantum/action.c:1158: code == OP_TAP_TOGGLE || 
	cjne	r7,#0xf0,00153$
	sjmp	00105$
00153$:
;	quantum/action.c:1159: code == OP_ONESHOT) {
	cjne	r7,#0xf4,00106$
00105$:
;	quantum/action.c:1160: return true;
	mov	dpl,#0x01
	ret
00106$:
;	quantum/action.c:1163: return false;
	mov	dpl,#0x00
;	quantum/action.c:1164: case ACT_SWAP_HANDS:
	ret
00110$:
;	quantum/action.c:1171: uint8_t code = action.swap.code;
	mov	dptr,#_is_tap_action_PARM_1
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_is_tap_action_code_196608_498
	movx	@dptr,a
;	quantum/action.c:1172: if ((code >= KC_NO && code <= KC_RIGHT_GUI) || 
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0xe7
	jnc	00111$
;	quantum/action.c:1173: code == OP_SH_TAP_TOGGLE) {
	cjne	r7,#0xf1,00112$
00111$:
;	quantum/action.c:1174: return true;
	mov	dpl,#0x01
	ret
00112$:
;	quantum/action.c:1177: return false;
	mov	dpl,#0x00
;	quantum/action.c:1178: }
	ret
00115$:
;	quantum/action.c:1179: return false;
	mov	dpl,#0x00
;	quantum/action.c:1180: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'debug_event'
;------------------------------------------------------------
;event                     Allocated with name '_debug_event_PARM_1'
;------------------------------------------------------------
;	quantum/action.c:1186: void debug_event(keyevent_t event) {
;	-----------------------------------------
;	 function debug_event
;	-----------------------------------------
_debug_event:
;	quantum/action.c:1187: ac_dprintf("%04X%c(%u)", (event.key.row << 8 | event.key.col), (event.pressed ? 'd' : 'u'), event.time);
;	quantum/action.c:1188: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'debug_record'
;------------------------------------------------------------
;record                    Allocated with name '_debug_record_PARM_1'
;------------------------------------------------------------
;	quantum/action.c:1193: void debug_record(keyrecord_t record) {
;	-----------------------------------------
;	 function debug_record
;	-----------------------------------------
_debug_record:
;	quantum/action.c:1194: debug_event(record.event);
	mov	r5,#_debug_event_PARM_1
	mov	r6,#(_debug_event_PARM_1 >> 8)
	mov	r7,#0x00
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_debug_record_PARM_1
	movx	@dptr,a
	mov	a,#(_debug_record_PARM_1 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___memcpy
;	quantum/action.c:1198: }
	ljmp	_debug_event
;------------------------------------------------------------
;Allocation info for local variables in function 'debug_action'
;------------------------------------------------------------
;action                    Allocated with name '_debug_action_PARM_1'
;------------------------------------------------------------
;	quantum/action.c:1204: void debug_action(action_t action) {
;	-----------------------------------------
;	 function debug_action
;	-----------------------------------------
_debug_action:
;	quantum/action.c:1205: switch (action.kind.id) {
	mov	dptr,#(_debug_action_PARM_1 + 0x0001)
	movx	a,@dptr
	swap	a
	anl	a,#0x0f
	mov  r7,a
	add	a,#0xff - 0x0b
	jc	00140$
	mov	a,r7
	add	a,#(00147$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00148$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00147$:
	.db	00140$
	.db	00140$
	.db	00140$
	.db	00140$
	.db	00140$
	.db	00140$
	.db	00140$
	.db	00140$
	.db	00140$
	.db	00140$
	.db	00140$
	.db	00140$
00148$:
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
;	quantum/action.c:1243: ac_dprintf("[%X:%02X]", action.kind.param >> 8, action.kind.param & 0xff);
00140$:
;	quantum/action.c:1244: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
