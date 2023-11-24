;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (Linux)
;--------------------------------------------------------
	.module keyboard
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _quantum_task
	.globl _switch_events
	.globl _quantum_init
	.globl _should_process_keypress
	.globl _last_pointing_device_activity_trigger
	.globl _last_encoder_activity_trigger
	.globl _last_matrix_activity_trigger
	.globl _eeprom_driver_init
	.globl _action_exec
	.globl _print_set_sendchar
	.globl _sendchar
	.globl _led_task
	.globl _led_init_ports
	.globl _magic
	.globl _matrix_print
	.globl _matrix_get_row
	.globl _matrix_scan
	.globl _matrix_init
	.globl _timer_elapsed32
	.globl _timer_read32
	.globl _timer_read
	.globl _timer_init
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
	.globl _switch_events_PARM_3
	.globl _switch_events_PARM_2
	.globl _set_activity_timestamps_PARM_3
	.globl _set_activity_timestamps_PARM_2
	.globl _last_input_activity_time
	.globl _last_input_activity_elapsed
	.globl _last_matrix_activity_time
	.globl _last_matrix_activity_elapsed
	.globl _last_encoder_activity_time
	.globl _last_encoder_activity_elapsed
	.globl _last_pointing_device_activity_time
	.globl _last_pointing_device_activity_elapsed
	.globl _set_activity_timestamps
	.globl _matrix_setup
	.globl _keyboard_pre_init_user
	.globl _keyboard_pre_init_kb
	.globl _keyboard_post_init_user
	.globl _keyboard_post_init_kb
	.globl _matrix_can_read
	.globl _keyboard_setup
	.globl _is_keyboard_master
	.globl _is_keyboard_left
	.globl _housekeeping_task_kb
	.globl _housekeeping_task_user
	.globl _housekeeping_task
	.globl _keyboard_init
	.globl _keyboard_task
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
_matrix_task_sloc0_1_0:
	.ds 1
_matrix_task_sloc1_1_0:
	.ds 2
_matrix_task_sloc2_1_0:
	.ds 1
_matrix_task_sloc3_1_0:
	.ds 1
_matrix_task_sloc4_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_set_activity_timestamps_sloc0_1_0:
	.ds 1
_set_activity_timestamps_sloc1_1_0:
	.ds 4
_set_activity_timestamps_sloc2_1_0:
	.ds 4
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
_KEYCODE2SYSTEM_key_65536_96:
	.ds 1
_KEYCODE2CONSUMER_key_65536_99:
	.ds 1
_last_input_modification_time:
	.ds 4
_last_matrix_modification_time:
	.ds 4
_last_encoder_modification_time:
	.ds 4
_last_pointing_device_modification_time:
	.ds 4
_set_activity_timestamps_PARM_2:
	.ds 4
_set_activity_timestamps_PARM_3:
	.ds 4
_set_activity_timestamps_matrix_timestamp_65536_279:
	.ds 4
_has_ghost_in_row_PARM_2:
	.ds 2
_switch_events_PARM_2:
	.ds 1
_switch_events_PARM_3:
	.ds 1
_generate_tick_event_last_tick_65536_322:
	.ds 2
_generate_tick_event_dummy_event_131072_323:
	.ds 6
_matrix_task_last_tick_327680_344:
	.ds 2
_matrix_task_dummy_event_393216_345:
	.ds 6
_matrix_task_matrix_previous_65537_327:
	.ds 10
_matrix_task_matrix_changed_65538_328:
	.ds 1
_matrix_task_last_tick_327682_348:
	.ds 2
_matrix_task_dummy_event_393218_349:
	.ds 6
_matrix_task_col_mask_196612_337:
	.ds 2
_matrix_task_dummy_event_458756_341:
	.ds 6
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
;Allocation info for local variables in function 'generate_tick_event'
;------------------------------------------------------------
;last_tick                 Allocated with name '_generate_tick_event_last_tick_65536_322'
;now                       Allocated with name '_generate_tick_event_now_65536_322'
;dummy_event               Allocated with name '_generate_tick_event_dummy_event_131072_323'
;------------------------------------------------------------
;	quantum/keyboard.c:505: static uint16_t last_tick = 0;
	mov	dptr,#_generate_tick_event_last_tick_65536_322
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;------------------------------------------------------------
;Allocation info for local variables in function 'matrix_task'
;------------------------------------------------------------
;sloc0                     Allocated with name '_matrix_task_sloc0_1_0'
;sloc1                     Allocated with name '_matrix_task_sloc1_1_0'
;sloc2                     Allocated with name '_matrix_task_sloc2_1_0'
;sloc3                     Allocated with name '_matrix_task_sloc3_1_0'
;sloc4                     Allocated with name '_matrix_task_sloc4_1_0'
;last_tick                 Allocated with name '_matrix_task_last_tick_327680_344'
;now                       Allocated with name '_matrix_task_now_327680_344'
;dummy_event               Allocated with name '_matrix_task_dummy_event_393216_345'
;matrix_previous           Allocated with name '_matrix_task_matrix_previous_65537_327'
;matrix_changed            Allocated with name '_matrix_task_matrix_changed_65538_328'
;row                       Allocated with name '_matrix_task_row_131074_329'
;last_tick                 Allocated with name '_matrix_task_last_tick_327682_348'
;now                       Allocated with name '_matrix_task_now_327682_348'
;dummy_event               Allocated with name '_matrix_task_dummy_event_393218_349'
;process_keypress          Allocated with name '_matrix_task_process_keypress_65539_333'
;row                       Allocated with name '_matrix_task_row_131075_334'
;__2621470024              Allocated with name '_matrix_task___2621470024_262147_335'
;current_row               Allocated with name '_matrix_task_current_row_196611_335'
;row_changes               Allocated with name '_matrix_task_row_changes_196611_335'
;__2621470025              Allocated with name '_matrix_task___2621470025_262147_350'
;__2621470026              Allocated with name '_matrix_task___2621470026_262147_350'
;row                       Allocated with name '_matrix_task_row_327683_351'
;rowdata                   Allocated with name '_matrix_task_rowdata_327683_351'
;col_mask                  Allocated with name '_matrix_task_col_mask_196612_337'
;col                       Allocated with name '_matrix_task_col_262148_338'
;key_pressed               Allocated with name '_matrix_task_key_pressed_393220_340'
;dummy_event               Allocated with name '_matrix_task_dummy_event_458756_341'
;------------------------------------------------------------
;	quantum/keyboard.c:505: static uint16_t last_tick = 0;
	mov	dptr,#_matrix_task_last_tick_327680_344
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_matrix_task_last_tick_327682_348
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	quantum/keyboard.c:149: static uint32_t last_input_modification_time = 0;
	mov	dptr,#_last_input_modification_time
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	quantum/keyboard.c:157: static uint32_t last_matrix_modification_time = 0;
	mov	dptr,#_last_matrix_modification_time
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	quantum/keyboard.c:168: static uint32_t last_encoder_modification_time = 0;
	mov	dptr,#_last_encoder_modification_time
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	quantum/keyboard.c:179: static uint32_t last_pointing_device_modification_time = 0;
	mov	dptr,#_last_pointing_device_modification_time
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
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
;key                       Allocated with name '_KEYCODE2SYSTEM_key_65536_96'
;------------------------------------------------------------
;	tmk_core/protocol/report.h:262: static inline uint16_t KEYCODE2SYSTEM(uint8_t key) {
;	-----------------------------------------
;	 function KEYCODE2SYSTEM
;	-----------------------------------------
_KEYCODE2SYSTEM:
	mov	a,dpl
	mov	dptr,#_KEYCODE2SYSTEM_key_65536_96
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
;key                       Allocated with name '_KEYCODE2CONSUMER_key_65536_99'
;------------------------------------------------------------
;	tmk_core/protocol/report.h:276: static inline uint16_t KEYCODE2CONSUMER(uint8_t key) {
;	-----------------------------------------
;	 function KEYCODE2CONSUMER
;	-----------------------------------------
_KEYCODE2CONSUMER:
	mov	a,dpl
	mov	dptr,#_KEYCODE2CONSUMER_key_65536_99
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
;Allocation info for local variables in function 'last_input_activity_time'
;------------------------------------------------------------
;	quantum/keyboard.c:150: uint32_t        last_input_activity_time(void) {
;	-----------------------------------------
;	 function last_input_activity_time
;	-----------------------------------------
_last_input_activity_time:
;	quantum/keyboard.c:151: return last_input_modification_time;
	mov	dptr,#_last_input_modification_time
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	quantum/keyboard.c:152: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'last_input_activity_elapsed'
;------------------------------------------------------------
;	quantum/keyboard.c:153: uint32_t last_input_activity_elapsed(void) {
;	-----------------------------------------
;	 function last_input_activity_elapsed
;	-----------------------------------------
_last_input_activity_elapsed:
;	quantum/keyboard.c:154: return sync_timer_elapsed32(last_input_modification_time);
	mov	dptr,#_last_input_modification_time
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	quantum/keyboard.c:155: }
	ljmp	_timer_elapsed32
;------------------------------------------------------------
;Allocation info for local variables in function 'last_matrix_activity_time'
;------------------------------------------------------------
;	quantum/keyboard.c:158: uint32_t        last_matrix_activity_time(void) {
;	-----------------------------------------
;	 function last_matrix_activity_time
;	-----------------------------------------
_last_matrix_activity_time:
;	quantum/keyboard.c:159: return last_matrix_modification_time;
	mov	dptr,#_last_matrix_modification_time
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	quantum/keyboard.c:160: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'last_matrix_activity_elapsed'
;------------------------------------------------------------
;	quantum/keyboard.c:161: uint32_t last_matrix_activity_elapsed(void) {
;	-----------------------------------------
;	 function last_matrix_activity_elapsed
;	-----------------------------------------
_last_matrix_activity_elapsed:
;	quantum/keyboard.c:162: return sync_timer_elapsed32(last_matrix_modification_time);
	mov	dptr,#_last_matrix_modification_time
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	quantum/keyboard.c:163: }
	ljmp	_timer_elapsed32
;------------------------------------------------------------
;Allocation info for local variables in function 'last_matrix_activity_trigger'
;------------------------------------------------------------
;	quantum/keyboard.c:164: void last_matrix_activity_trigger(void) {
;	-----------------------------------------
;	 function last_matrix_activity_trigger
;	-----------------------------------------
_last_matrix_activity_trigger:
;	quantum/keyboard.c:165: last_matrix_modification_time = last_input_modification_time = sync_timer_read32();
	lcall	_timer_read32
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_last_input_modification_time
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
	mov	dptr,#_last_matrix_modification_time
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
;	quantum/keyboard.c:166: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'last_encoder_activity_time'
;------------------------------------------------------------
;	quantum/keyboard.c:169: uint32_t        last_encoder_activity_time(void) {
;	-----------------------------------------
;	 function last_encoder_activity_time
;	-----------------------------------------
_last_encoder_activity_time:
;	quantum/keyboard.c:170: return last_encoder_modification_time;
	mov	dptr,#_last_encoder_modification_time
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	quantum/keyboard.c:171: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'last_encoder_activity_elapsed'
;------------------------------------------------------------
;	quantum/keyboard.c:172: uint32_t last_encoder_activity_elapsed(void) {
;	-----------------------------------------
;	 function last_encoder_activity_elapsed
;	-----------------------------------------
_last_encoder_activity_elapsed:
;	quantum/keyboard.c:173: return sync_timer_elapsed32(last_encoder_modification_time);
	mov	dptr,#_last_encoder_modification_time
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	quantum/keyboard.c:174: }
	ljmp	_timer_elapsed32
;------------------------------------------------------------
;Allocation info for local variables in function 'last_encoder_activity_trigger'
;------------------------------------------------------------
;	quantum/keyboard.c:175: void last_encoder_activity_trigger(void) {
;	-----------------------------------------
;	 function last_encoder_activity_trigger
;	-----------------------------------------
_last_encoder_activity_trigger:
;	quantum/keyboard.c:176: last_encoder_modification_time = last_input_modification_time = sync_timer_read32();
	lcall	_timer_read32
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_last_input_modification_time
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
	mov	dptr,#_last_encoder_modification_time
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
;	quantum/keyboard.c:177: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'last_pointing_device_activity_time'
;------------------------------------------------------------
;	quantum/keyboard.c:180: uint32_t        last_pointing_device_activity_time(void) {
;	-----------------------------------------
;	 function last_pointing_device_activity_time
;	-----------------------------------------
_last_pointing_device_activity_time:
;	quantum/keyboard.c:181: return last_pointing_device_modification_time;
	mov	dptr,#_last_pointing_device_modification_time
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	quantum/keyboard.c:182: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'last_pointing_device_activity_elapsed'
;------------------------------------------------------------
;	quantum/keyboard.c:183: uint32_t last_pointing_device_activity_elapsed(void) {
;	-----------------------------------------
;	 function last_pointing_device_activity_elapsed
;	-----------------------------------------
_last_pointing_device_activity_elapsed:
;	quantum/keyboard.c:184: return sync_timer_elapsed32(last_pointing_device_modification_time);
	mov	dptr,#_last_pointing_device_modification_time
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	quantum/keyboard.c:185: }
	ljmp	_timer_elapsed32
;------------------------------------------------------------
;Allocation info for local variables in function 'last_pointing_device_activity_trigger'
;------------------------------------------------------------
;	quantum/keyboard.c:186: void last_pointing_device_activity_trigger(void) {
;	-----------------------------------------
;	 function last_pointing_device_activity_trigger
;	-----------------------------------------
_last_pointing_device_activity_trigger:
;	quantum/keyboard.c:187: last_pointing_device_modification_time = last_input_modification_time = sync_timer_read32();
	lcall	_timer_read32
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_last_input_modification_time
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
	mov	dptr,#_last_pointing_device_modification_time
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
;	quantum/keyboard.c:188: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_activity_timestamps'
;------------------------------------------------------------
;encoder_timestamp         Allocated with name '_set_activity_timestamps_PARM_2'
;pointing_device_timestamp Allocated with name '_set_activity_timestamps_PARM_3'
;matrix_timestamp          Allocated with name '_set_activity_timestamps_matrix_timestamp_65536_279'
;sloc0                     Allocated with name '_set_activity_timestamps_sloc0_1_0'
;sloc1                     Allocated with name '_set_activity_timestamps_sloc1_1_0'
;sloc2                     Allocated with name '_set_activity_timestamps_sloc2_1_0'
;------------------------------------------------------------
;	quantum/keyboard.c:190: void set_activity_timestamps(uint32_t matrix_timestamp, uint32_t encoder_timestamp, uint32_t pointing_device_timestamp) {
;	-----------------------------------------
;	 function set_activity_timestamps
;	-----------------------------------------
_set_activity_timestamps:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_set_activity_timestamps_matrix_timestamp_65536_279
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	quantum/keyboard.c:191: last_matrix_modification_time          = matrix_timestamp;
	mov	dptr,#_set_activity_timestamps_matrix_timestamp_65536_279
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
	mov	dptr,#_last_matrix_modification_time
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
;	quantum/keyboard.c:192: last_encoder_modification_time         = encoder_timestamp;
	mov	dptr,#_set_activity_timestamps_PARM_2
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
	mov	dptr,#_last_encoder_modification_time
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
;	quantum/keyboard.c:193: last_pointing_device_modification_time = pointing_device_timestamp;
	mov	dptr,#_set_activity_timestamps_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_last_pointing_device_modification_time
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	quantum/keyboard.c:194: last_input_modification_time           = MAX(matrix_timestamp, MAX(encoder_timestamp, pointing_device_timestamp));
	clr	c
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	clr	a
	rlc	a
	mov	_set_activity_timestamps_sloc0_1_0,a
	jz	00105$
	mov	_set_activity_timestamps_sloc1_1_0,r4
	mov	(_set_activity_timestamps_sloc1_1_0 + 1),r5
	mov	(_set_activity_timestamps_sloc1_1_0 + 2),r6
	mov	(_set_activity_timestamps_sloc1_1_0 + 3),r7
	sjmp	00106$
00105$:
	mov	_set_activity_timestamps_sloc1_1_0,r0
	mov	(_set_activity_timestamps_sloc1_1_0 + 1),r1
	mov	(_set_activity_timestamps_sloc1_1_0 + 2),r2
	mov	(_set_activity_timestamps_sloc1_1_0 + 3),r3
00106$:
	mov	dptr,#_set_activity_timestamps_matrix_timestamp_65536_279
	movx	a,@dptr
	mov	_set_activity_timestamps_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_set_activity_timestamps_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_set_activity_timestamps_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_set_activity_timestamps_sloc2_1_0 + 3),a
	clr	c
	mov	a,_set_activity_timestamps_sloc1_1_0
	subb	a,_set_activity_timestamps_sloc2_1_0
	mov	a,(_set_activity_timestamps_sloc1_1_0 + 1)
	subb	a,(_set_activity_timestamps_sloc2_1_0 + 1)
	mov	a,(_set_activity_timestamps_sloc1_1_0 + 2)
	subb	a,(_set_activity_timestamps_sloc2_1_0 + 2)
	mov	a,(_set_activity_timestamps_sloc1_1_0 + 3)
	subb	a,(_set_activity_timestamps_sloc2_1_0 + 3)
	jnc	00103$
	sjmp	00104$
00103$:
	mov	a,_set_activity_timestamps_sloc0_1_0
	jz	00107$
	sjmp	00108$
00107$:
	mov	ar4,r0
	mov	ar5,r1
	mov	ar6,r2
	mov	ar7,r3
00108$:
	mov	_set_activity_timestamps_sloc2_1_0,r4
	mov	(_set_activity_timestamps_sloc2_1_0 + 1),r5
	mov	(_set_activity_timestamps_sloc2_1_0 + 2),r6
	mov	(_set_activity_timestamps_sloc2_1_0 + 3),r7
00104$:
	mov	dptr,#_last_input_modification_time
	mov	a,_set_activity_timestamps_sloc2_1_0
	movx	@dptr,a
	mov	a,(_set_activity_timestamps_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_set_activity_timestamps_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_set_activity_timestamps_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	quantum/keyboard.c:195: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'has_ghost_in_row'
;------------------------------------------------------------
;rowdata                   Allocated with name '_has_ghost_in_row_PARM_2'
;row                       Allocated with name '_has_ghost_in_row_row_65536_281'
;------------------------------------------------------------
;	quantum/keyboard.c:268: static inline bool has_ghost_in_row(uint8_t row, matrix_row_t rowdata) {
;	-----------------------------------------
;	 function has_ghost_in_row
;	-----------------------------------------
_has_ghost_in_row:
;	quantum/keyboard.c:269: return false;
	mov	dpl,#0x00
;	quantum/keyboard.c:270: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'matrix_setup'
;------------------------------------------------------------
;	quantum/keyboard.c:278: __attribute__((weak)) void matrix_setup(void) {}
;	-----------------------------------------
;	 function matrix_setup
;	-----------------------------------------
_matrix_setup:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keyboard_pre_init_user'
;------------------------------------------------------------
;	quantum/keyboard.c:284: __attribute__((weak)) void keyboard_pre_init_user(void) {}
;	-----------------------------------------
;	 function keyboard_pre_init_user
;	-----------------------------------------
_keyboard_pre_init_user:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keyboard_pre_init_kb'
;------------------------------------------------------------
;	quantum/keyboard.c:290: __attribute__((weak)) void keyboard_pre_init_kb(void) {
;	-----------------------------------------
;	 function keyboard_pre_init_kb
;	-----------------------------------------
_keyboard_pre_init_kb:
;	quantum/keyboard.c:291: keyboard_pre_init_user();
;	quantum/keyboard.c:292: }
	ljmp	_keyboard_pre_init_user
;------------------------------------------------------------
;Allocation info for local variables in function 'keyboard_post_init_user'
;------------------------------------------------------------
;	quantum/keyboard.c:299: __attribute__((weak)) void keyboard_post_init_user(void) {}
;	-----------------------------------------
;	 function keyboard_post_init_user
;	-----------------------------------------
_keyboard_post_init_user:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keyboard_post_init_kb'
;------------------------------------------------------------
;	quantum/keyboard.c:306: __attribute__((weak)) void keyboard_post_init_kb(void) {
;	-----------------------------------------
;	 function keyboard_post_init_kb
;	-----------------------------------------
_keyboard_post_init_kb:
;	quantum/keyboard.c:307: keyboard_post_init_user();
;	quantum/keyboard.c:308: }
	ljmp	_keyboard_post_init_user
;------------------------------------------------------------
;Allocation info for local variables in function 'matrix_can_read'
;------------------------------------------------------------
;	quantum/keyboard.c:314: __attribute__((weak)) bool matrix_can_read(void) {
;	-----------------------------------------
;	 function matrix_can_read
;	-----------------------------------------
_matrix_can_read:
;	quantum/keyboard.c:315: return true;
	mov	dpl,#0x01
;	quantum/keyboard.c:316: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keyboard_setup'
;------------------------------------------------------------
;	quantum/keyboard.c:322: void keyboard_setup(void) {
;	-----------------------------------------
;	 function keyboard_setup
;	-----------------------------------------
_keyboard_setup:
;	quantum/keyboard.c:323: print_set_sendchar(sendchar);
	mov	dptr,#_sendchar
	lcall	_print_set_sendchar
;	quantum/keyboard.c:325: eeprom_driver_init();
	lcall	_eeprom_driver_init
;	quantum/keyboard.c:333: matrix_setup();
	lcall	_matrix_setup
;	quantum/keyboard.c:334: keyboard_pre_init_kb();
;	quantum/keyboard.c:335: }
	ljmp	_keyboard_pre_init_kb
;------------------------------------------------------------
;Allocation info for local variables in function 'is_keyboard_master'
;------------------------------------------------------------
;	quantum/keyboard.c:343: __attribute__((weak)) bool is_keyboard_master(void) {
;	-----------------------------------------
;	 function is_keyboard_master
;	-----------------------------------------
_is_keyboard_master:
;	quantum/keyboard.c:344: return true;
	mov	dpl,#0x01
;	quantum/keyboard.c:345: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'is_keyboard_left'
;------------------------------------------------------------
;	quantum/keyboard.c:351: __attribute__((weak)) bool is_keyboard_left(void) {
;	-----------------------------------------
;	 function is_keyboard_left
;	-----------------------------------------
_is_keyboard_left:
;	quantum/keyboard.c:352: return true;
	mov	dpl,#0x01
;	quantum/keyboard.c:353: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'should_process_keypress'
;------------------------------------------------------------
;	quantum/keyboard.c:362: __attribute__((weak)) bool should_process_keypress(void) {
;	-----------------------------------------
;	 function should_process_keypress
;	-----------------------------------------
_should_process_keypress:
;	quantum/keyboard.c:363: return is_keyboard_master();
;	quantum/keyboard.c:364: }
	ljmp	_is_keyboard_master
;------------------------------------------------------------
;Allocation info for local variables in function 'housekeeping_task_kb'
;------------------------------------------------------------
;	quantum/keyboard.c:371: __attribute__((weak)) void housekeeping_task_kb(void) {}
;	-----------------------------------------
;	 function housekeeping_task_kb
;	-----------------------------------------
_housekeeping_task_kb:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'housekeeping_task_user'
;------------------------------------------------------------
;	quantum/keyboard.c:378: __attribute__((weak)) void housekeeping_task_user(void) {}
;	-----------------------------------------
;	 function housekeeping_task_user
;	-----------------------------------------
_housekeeping_task_user:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'housekeeping_task'
;------------------------------------------------------------
;	quantum/keyboard.c:384: void housekeeping_task(void) {
;	-----------------------------------------
;	 function housekeeping_task
;	-----------------------------------------
_housekeeping_task:
;	quantum/keyboard.c:385: housekeeping_task_kb();
	lcall	_housekeeping_task_kb
;	quantum/keyboard.c:386: housekeeping_task_user();
;	quantum/keyboard.c:387: }
	ljmp	_housekeeping_task_user
;------------------------------------------------------------
;Allocation info for local variables in function 'quantum_init'
;------------------------------------------------------------
;	quantum/keyboard.c:393: void quantum_init(void) {
;	-----------------------------------------
;	 function quantum_init
;	-----------------------------------------
_quantum_init:
;	quantum/keyboard.c:394: magic();
	lcall	_magic
;	quantum/keyboard.c:395: led_init_ports();
;	quantum/keyboard.c:414: }
	ljmp	_led_init_ports
;------------------------------------------------------------
;Allocation info for local variables in function 'keyboard_init'
;------------------------------------------------------------
;	quantum/keyboard.c:420: void keyboard_init(void) {
;	-----------------------------------------
;	 function keyboard_init
;	-----------------------------------------
_keyboard_init:
;	quantum/keyboard.c:421: timer_init();
	lcall	_timer_init
;	quantum/keyboard.c:432: matrix_init();
	lcall	_matrix_init
;	quantum/keyboard.c:433: quantum_init();
	lcall	_quantum_init
;	quantum/keyboard.c:483: keyboard_post_init_kb(); /* Always keep this last */
;	quantum/keyboard.c:484: }
	ljmp	_keyboard_post_init_kb
;------------------------------------------------------------
;Allocation info for local variables in function 'switch_events'
;------------------------------------------------------------
;col                       Allocated with name '_switch_events_PARM_2'
;pressed                   Allocated with name '_switch_events_PARM_3'
;row                       Allocated with name '_switch_events_row_65536_318'
;------------------------------------------------------------
;	quantum/keyboard.c:491: void switch_events(uint8_t row, uint8_t col, bool pressed) {
;	-----------------------------------------
;	 function switch_events
;	-----------------------------------------
_switch_events:
;	quantum/keyboard.c:498: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'generate_tick_event'
;------------------------------------------------------------
;last_tick                 Allocated with name '_generate_tick_event_last_tick_65536_322'
;now                       Allocated with name '_generate_tick_event_now_65536_322'
;dummy_event               Allocated with name '_generate_tick_event_dummy_event_131072_323'
;------------------------------------------------------------
;	quantum/keyboard.c:504: static inline void generate_tick_event(void) {
;	-----------------------------------------
;	 function generate_tick_event
;	-----------------------------------------
_generate_tick_event:
;	quantum/keyboard.c:506: const uint16_t  now       = timer_read();
	lcall	_timer_read
	mov	r6,dpl
	mov	r7,dph
;	quantum/keyboard.c:507: if (TIMER_DIFF_16(now, last_tick) != 0) {
	mov	dptr,#_generate_tick_event_last_tick_65536_322
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r7
	subb	a,r5
	orl	a,r4
	jz	00103$
;	quantum/keyboard.c:509: MAKE_TICK_EVENT;
	mov	dptr,#_generate_tick_event_dummy_event_131072_323
	clr	a
	movx	@dptr,a
	mov	dptr,#(_generate_tick_event_dummy_event_131072_323 + 0x0001)
	movx	@dptr,a
	push	ar7
	push	ar6
	lcall	_timer_read
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#(_generate_tick_event_dummy_event_131072_323 + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_generate_tick_event_dummy_event_131072_323 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_generate_tick_event_dummy_event_131072_323 + 0x0005)
	movx	@dptr,a
;	quantum/keyboard.c:510: action_exec(dummy_event);
	mov	r3,#_action_exec_PARM_1
	mov	r4,#(_action_exec_PARM_1 >> 8)
	mov	r5,a
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_generate_tick_event_dummy_event_131072_323
	movx	@dptr,a
	mov	a,#(_generate_tick_event_dummy_event_131072_323 >> 8)
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
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	___memcpy
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	lcall	_action_exec
	pop	ar6
	pop	ar7
;	quantum/keyboard.c:511: last_tick = now;
	mov	dptr,#_generate_tick_event_last_tick_65536_322
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00103$:
;	quantum/keyboard.c:513: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'matrix_task'
;------------------------------------------------------------
;sloc0                     Allocated with name '_matrix_task_sloc0_1_0'
;sloc1                     Allocated with name '_matrix_task_sloc1_1_0'
;sloc2                     Allocated with name '_matrix_task_sloc2_1_0'
;sloc3                     Allocated with name '_matrix_task_sloc3_1_0'
;sloc4                     Allocated with name '_matrix_task_sloc4_1_0'
;last_tick                 Allocated with name '_matrix_task_last_tick_327680_344'
;now                       Allocated with name '_matrix_task_now_327680_344'
;dummy_event               Allocated with name '_matrix_task_dummy_event_393216_345'
;matrix_previous           Allocated with name '_matrix_task_matrix_previous_65537_327'
;matrix_changed            Allocated with name '_matrix_task_matrix_changed_65538_328'
;row                       Allocated with name '_matrix_task_row_131074_329'
;last_tick                 Allocated with name '_matrix_task_last_tick_327682_348'
;now                       Allocated with name '_matrix_task_now_327682_348'
;dummy_event               Allocated with name '_matrix_task_dummy_event_393218_349'
;process_keypress          Allocated with name '_matrix_task_process_keypress_65539_333'
;row                       Allocated with name '_matrix_task_row_131075_334'
;__2621470024              Allocated with name '_matrix_task___2621470024_262147_335'
;current_row               Allocated with name '_matrix_task_current_row_196611_335'
;row_changes               Allocated with name '_matrix_task_row_changes_196611_335'
;__2621470025              Allocated with name '_matrix_task___2621470025_262147_350'
;__2621470026              Allocated with name '_matrix_task___2621470026_262147_350'
;row                       Allocated with name '_matrix_task_row_327683_351'
;rowdata                   Allocated with name '_matrix_task_rowdata_327683_351'
;col_mask                  Allocated with name '_matrix_task_col_mask_196612_337'
;col                       Allocated with name '_matrix_task_col_262148_338'
;key_pressed               Allocated with name '_matrix_task_key_pressed_393220_340'
;dummy_event               Allocated with name '_matrix_task_dummy_event_458756_341'
;------------------------------------------------------------
;	quantum/keyboard.c:522: static bool matrix_task(void) {
;	-----------------------------------------
;	 function matrix_task
;	-----------------------------------------
_matrix_task:
;	quantum/keyboard.c:523: if (!matrix_can_read()) {
	lcall	_matrix_can_read
	mov	a,dpl
	jnz	00102$
;	quantum/keyboard.c:506: const uint16_t  now       = timer_read();
	lcall	_timer_read
	mov	r6,dpl
	mov	r7,dph
;	quantum/keyboard.c:507: if (TIMER_DIFF_16(now, last_tick) != 0) {
	mov	dptr,#_matrix_task_last_tick_327680_344
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r7
	subb	a,r5
	orl	a,r4
	jz	00120$
;	quantum/keyboard.c:509: MAKE_TICK_EVENT;
	mov	dptr,#_matrix_task_dummy_event_393216_345
	clr	a
	movx	@dptr,a
	mov	dptr,#(_matrix_task_dummy_event_393216_345 + 0x0001)
	movx	@dptr,a
	push	ar7
	push	ar6
	lcall	_timer_read
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#(_matrix_task_dummy_event_393216_345 + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_matrix_task_dummy_event_393216_345 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_matrix_task_dummy_event_393216_345 + 0x0005)
	movx	@dptr,a
;	quantum/keyboard.c:510: action_exec(dummy_event);
	mov	r3,#_action_exec_PARM_1
	mov	r4,#(_action_exec_PARM_1 >> 8)
	mov	r5,a
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_matrix_task_dummy_event_393216_345
	movx	@dptr,a
	mov	a,#(_matrix_task_dummy_event_393216_345 >> 8)
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
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	___memcpy
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	lcall	_action_exec
	pop	ar6
	pop	ar7
;	quantum/keyboard.c:511: last_tick = now;
	mov	dptr,#_matrix_task_last_tick_327680_344
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/keyboard.c:524: generate_tick_event();
00120$:
;	quantum/keyboard.c:525: return false;
	mov	dpl,#0x00
	ret
00102$:
;	quantum/keyboard.c:530: matrix_scan();
	lcall	_matrix_scan
;	quantum/keyboard.c:531: bool matrix_changed = false;
	mov	dptr,#_matrix_task_matrix_changed_65538_328
	clr	a
	movx	@dptr,a
;	quantum/keyboard.c:532: for (uint8_t row = 0; row < MATRIX_ROWS && !matrix_changed; row++) {
	mov	r7,a
00127$:
	cjne	r7,#0x05,00202$
00202$:
	jnc	00103$
	mov	dptr,#_matrix_task_matrix_changed_65538_328
	movx	a,@dptr
	mov	r6,a
	movx	a,@dptr
	jnz	00103$
;	quantum/keyboard.c:533: matrix_changed |= matrix_previous[row] ^ matrix_get_row(row);
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_matrix_task_matrix_previous_65537_327
	mov	dpl,a
	mov	a,#(_matrix_task_matrix_previous_65537_327 >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_matrix_get_row
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	xrl	ar4,a
	mov	a,r3
	xrl	ar5,a
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r6
	orl	ar4,a
	mov	a,r3
	orl	ar5,a
	mov	dptr,#_matrix_task_matrix_changed_65538_328
;	assignBit
	mov	a,r4
	orl	a,r5
	add	a,#0xff
	clr	a
	rlc	a
	movx	@dptr,a
;	quantum/keyboard.c:532: for (uint8_t row = 0; row < MATRIX_ROWS && !matrix_changed; row++) {
	inc	r7
	sjmp	00127$
00103$:
;	quantum/keyboard.c:539: if (!matrix_changed) {
	mov	dptr,#_matrix_task_matrix_changed_65538_328
	movx	a,@dptr
	jz	00205$
	ljmp	00105$
00205$:
;	quantum/keyboard.c:506: const uint16_t  now       = timer_read();
	lcall	_timer_read
	mov	r6,dpl
	mov	r7,dph
;	quantum/keyboard.c:507: if (TIMER_DIFF_16(now, last_tick) != 0) {
	mov	dptr,#_matrix_task_last_tick_327682_348
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r7
	subb	a,r5
	orl	a,r4
	jz	00123$
;	quantum/keyboard.c:509: MAKE_TICK_EVENT;
	mov	dptr,#_matrix_task_dummy_event_393218_349
	clr	a
	movx	@dptr,a
	mov	dptr,#(_matrix_task_dummy_event_393218_349 + 0x0001)
	movx	@dptr,a
	push	ar7
	push	ar6
	lcall	_timer_read
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#(_matrix_task_dummy_event_393218_349 + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_matrix_task_dummy_event_393218_349 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_matrix_task_dummy_event_393218_349 + 0x0005)
	movx	@dptr,a
;	quantum/keyboard.c:510: action_exec(dummy_event);
	mov	r3,#_action_exec_PARM_1
	mov	r4,#(_action_exec_PARM_1 >> 8)
	mov	r5,a
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_matrix_task_dummy_event_393218_349
	movx	@dptr,a
	mov	a,#(_matrix_task_dummy_event_393218_349 >> 8)
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
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	___memcpy
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	lcall	_action_exec
	pop	ar6
	pop	ar7
;	quantum/keyboard.c:511: last_tick = now;
	mov	dptr,#_matrix_task_last_tick_327682_348
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/keyboard.c:540: generate_tick_event();
00123$:
;	quantum/keyboard.c:541: return matrix_changed;
	mov	dptr,#_matrix_task_matrix_changed_65538_328
	movx	a,@dptr
	mov	dpl,a
	ret
00105$:
;	quantum/keyboard.c:544: if (debug_config.matrix) {
	mov	dptr,#_debug_config
	movx	a,@dptr
	jnb	acc.1,00107$
;	quantum/keyboard.c:545: matrix_print();
	lcall	_matrix_print
00107$:
;	quantum/keyboard.c:548: const bool process_keypress = should_process_keypress();
	lcall	_should_process_keypress
	mov	r7,dpl
;	quantum/keyboard.c:550: for (uint8_t row = 0; row < MATRIX_ROWS; row++) {
	mov	r6,#0x00
00133$:
	cjne	r6,#0x05,00208$
00208$:
	jc	00209$
	ljmp	00117$
00209$:
;	quantum/keyboard.c:551: const matrix_row_t current_row = matrix_get_row(row);
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_matrix_get_row
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	quantum/keyboard.c:552: const matrix_row_t row_changes = current_row ^ matrix_previous[row];
	mov	a,r6
	mov	b,#0x02
	mul	ab
	add	a,#_matrix_task_matrix_previous_65537_327
	mov	dpl,a
	mov	a,#(_matrix_task_matrix_previous_65537_327 >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	xrl	ar2,a
	mov	a,r5
	xrl	ar3,a
;	quantum/keyboard.c:554: if (!row_changes || has_ghost_in_row(row, current_row)) {
	mov	a,r2
	orl	a,r3
	jnz	00210$
	ljmp	00116$
00210$:
;	quantum/keyboard.c:558: matrix_row_t col_mask = 1;
	mov	dptr,#_matrix_task_col_mask_196612_337
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	quantum/keyboard.c:559: for (uint8_t col = 0; col < MATRIX_COLS; col++, col_mask <<= 1) {
	mov	_matrix_task_sloc3_1_0,r6
	mov	_matrix_task_sloc2_1_0,r6
	mov	_matrix_task_sloc4_1_0,r2
	mov	(_matrix_task_sloc4_1_0 + 1),r3
	mov	_matrix_task_sloc0_1_0,a
00130$:
	mov	a,#0x100 - 0x0c
	add	a,_matrix_task_sloc0_1_0
	jnc	00211$
	ljmp	00115$
00211$:
;	quantum/keyboard.c:560: if (row_changes & col_mask) {
	mov	dptr,#_matrix_task_col_mask_196612_337
	movx	a,@dptr
	mov	_matrix_task_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_matrix_task_sloc1_1_0 + 1),a
	mov	a,_matrix_task_sloc1_1_0
	anl	a,_matrix_task_sloc4_1_0
	mov	r0,a
	mov	a,(_matrix_task_sloc1_1_0 + 1)
	anl	a,(_matrix_task_sloc4_1_0 + 1)
	mov	r1,a
	orl	a,r0
	jnz	00212$
	ljmp	00131$
00212$:
;	quantum/keyboard.c:561: const bool key_pressed = current_row & col_mask;
	mov	a,_matrix_task_sloc1_1_0
	anl	a,r4
	mov	r0,a
	mov	a,(_matrix_task_sloc1_1_0 + 1)
	anl	a,r5
;	assignBit
	mov	r1,a
	orl	a,r0
	add	a,#0xff
	clr	a
	rlc	a
	mov	r0,a
;	quantum/keyboard.c:563: if (process_keypress) {
	mov	a,r7
	jnz	00213$
	ljmp	00112$
00213$:
;	quantum/keyboard.c:565: MAKE_KEYEVENT(row, col, key_pressed);
	push	ar7
	mov	dptr,#_matrix_task_dummy_event_458756_341
	mov	a,_matrix_task_sloc0_1_0
	movx	@dptr,a
	mov	dptr,#(_matrix_task_dummy_event_458756_341 + 0x0001)
	mov	a,_matrix_task_sloc3_1_0
	movx	@dptr,a
	push	ar6
	push	ar5
	push	ar4
	push	ar0
	lcall	_timer_read
	mov	r1,dpl
	mov	r7,dph
	pop	ar0
	pop	ar4
	pop	ar5
	pop	ar6
	mov	dptr,#(_matrix_task_dummy_event_458756_341 + 0x0002)
	mov	a,r1
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_matrix_task_dummy_event_458756_341 + 0x0004)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_matrix_task_dummy_event_458756_341 + 0x0005)
	mov	a,r0
	movx	@dptr,a
;	quantum/keyboard.c:566: action_exec(dummy_event);
	mov	r1,#_action_exec_PARM_1
	mov	r3,#(_action_exec_PARM_1 >> 8)
	mov	r7,#0x00
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_matrix_task_dummy_event_458756_341
	movx	@dptr,a
	mov	a,#(_matrix_task_dummy_event_458756_341 >> 8)
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
	mov	dpl,r1
	mov	dph,r3
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar0
	lcall	___memcpy
	pop	ar0
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar0
	lcall	_action_exec
	pop	ar0
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	quantum/keyboard.c:576: return matrix_changed;
	pop	ar7
;	quantum/keyboard.c:566: action_exec(dummy_event);
00112$:
;	quantum/keyboard.c:569: switch_events(row, col, key_pressed);
	mov	dptr,#_switch_events_PARM_2
	mov	a,_matrix_task_sloc0_1_0
	movx	@dptr,a
	mov	dptr,#_switch_events_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	dpl,_matrix_task_sloc2_1_0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_switch_events
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00131$:
;	quantum/keyboard.c:559: for (uint8_t col = 0; col < MATRIX_COLS; col++, col_mask <<= 1) {
	inc	_matrix_task_sloc0_1_0
	mov	dptr,#_matrix_task_col_mask_196612_337
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	dptr,#_matrix_task_col_mask_196612_337
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00130$
00115$:
;	quantum/keyboard.c:573: matrix_previous[row] = current_row;
	mov	a,r6
	mov	b,#0x02
	mul	ab
	add	a,#_matrix_task_matrix_previous_65537_327
	mov	dpl,a
	mov	a,#(_matrix_task_matrix_previous_65537_327 >> 8)
	addc	a,b
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
00116$:
;	quantum/keyboard.c:550: for (uint8_t row = 0; row < MATRIX_ROWS; row++) {
	inc	r6
	ljmp	00133$
00117$:
;	quantum/keyboard.c:576: return matrix_changed;
	mov	dptr,#_matrix_task_matrix_changed_65538_328
	movx	a,@dptr
;	quantum/keyboard.c:577: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'quantum_task'
;------------------------------------------------------------
;	quantum/keyboard.c:583: void quantum_task(void) {
;	-----------------------------------------
;	 function quantum_task
;	-----------------------------------------
_quantum_task:
;	quantum/keyboard.c:656: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keyboard_task'
;------------------------------------------------------------
;activity_has_occurred     Allocated with name '_keyboard_task_activity_has_occurred_65536_357'
;------------------------------------------------------------
;	quantum/keyboard.c:659: void keyboard_task(void) {
;	-----------------------------------------
;	 function keyboard_task
;	-----------------------------------------
_keyboard_task:
;	quantum/keyboard.c:661: if (matrix_task()) {
	lcall	_matrix_task
	mov	a,dpl
	jz	00102$
;	quantum/keyboard.c:662: last_matrix_activity_trigger();
	lcall	_last_matrix_activity_trigger
;	quantum/keyboard.c:663: activity_has_occurred = true;
00102$:
;	quantum/keyboard.c:666: quantum_task();
	lcall	_quantum_task
;	quantum/keyboard.c:746: led_task();
;	quantum/keyboard.c:747: }
	ljmp	_led_task
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
