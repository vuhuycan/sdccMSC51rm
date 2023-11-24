;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (Linux)
;--------------------------------------------------------
	.module eeconfig
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _eeconfig_update_haptic
	.globl _eeconfig_read_haptic
	.globl _eeconfig_update_audio
	.globl _eeconfig_read_audio
	.globl _eeprom_driver_erase
	.globl _eeprom_update_block
	.globl _eeprom_update_dword
	.globl _eeprom_update_word
	.globl _eeprom_update_byte
	.globl _eeprom_read_dword
	.globl _eeprom_read_word
	.globl _eeprom_read_byte
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
	.globl _eeconfig_init_user
	.globl _eeconfig_init_kb
	.globl _eeconfig_init_quantum
	.globl _eeconfig_init
	.globl _eeconfig_enable
	.globl _eeconfig_disable
	.globl _eeconfig_is_enabled
	.globl _eeconfig_is_disabled
	.globl _eeconfig_read_debug
	.globl _eeconfig_update_debug
	.globl _eeconfig_read_default_layer
	.globl _eeconfig_update_default_layer
	.globl _eeconfig_read_keymap
	.globl _eeconfig_update_keymap
	.globl _eeconfig_read_kb
	.globl _eeconfig_update_kb
	.globl _eeconfig_read_user
	.globl _eeconfig_update_user
	.globl _eeconfig_read_handedness
	.globl _eeconfig_update_handedness
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
_eeconfig_read_handedness_sloc0_1_0:
	.ds 1
_eeconfig_update_handedness_sloc0_1_0:
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
_eeconfig_init_quantum_dummy_65537_183:
	.ds 8
_eeconfig_is_enabled_is_eeprom_enabled_65536_191:
	.ds 1
_eeconfig_is_disabled_is_eeprom_disabled_65536_193:
	.ds 1
_eeconfig_update_debug_val_65536_196:
	.ds 1
_eeconfig_update_default_layer_val_65536_200:
	.ds 1
_eeconfig_update_keymap_val_65536_204:
	.ds 2
_eeconfig_update_audio_val_65536_208:
	.ds 1
_eeconfig_update_kb_val_65536_212:
	.ds 4
_eeconfig_update_user_val_65536_216:
	.ds 4
_eeconfig_update_haptic_val_65536_220:
	.ds 4
_eeconfig_update_handedness_val_65536_224:
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
;Allocation info for local variables in function 'eeconfig_init_user'
;------------------------------------------------------------
;	quantum/eeconfig.c:27: __attribute__((weak)) void eeconfig_init_user(void) {
;	-----------------------------------------
;	 function eeconfig_init_user
;	-----------------------------------------
_eeconfig_init_user:
;	quantum/eeconfig.c:30: eeconfig_update_user(0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
;	quantum/eeconfig.c:32: }
	ljmp	_eeconfig_update_user
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_init_kb'
;------------------------------------------------------------
;	quantum/eeconfig.c:34: __attribute__((weak)) void eeconfig_init_kb(void) {
;	-----------------------------------------
;	 function eeconfig_init_kb
;	-----------------------------------------
_eeconfig_init_kb:
;	quantum/eeconfig.c:37: eeconfig_update_kb(0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_eeconfig_update_kb
;	quantum/eeconfig.c:40: eeconfig_init_user();
;	quantum/eeconfig.c:41: }
	ljmp	_eeconfig_init_user
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_init_quantum'
;------------------------------------------------------------
;dummy                     Allocated with name '_eeconfig_init_quantum_dummy_65537_183'
;------------------------------------------------------------
;	quantum/eeconfig.c:46: void eeconfig_init_quantum(void) {
;	-----------------------------------------
;	 function eeconfig_init_quantum
;	-----------------------------------------
_eeconfig_init_quantum:
;	quantum/eeconfig.c:48: eeprom_driver_erase();
	lcall	_eeprom_driver_erase
;	quantum/eeconfig.c:51: eeprom_update_word(EECONFIG_MAGIC, EECONFIG_MAGIC_NUMBER);
	mov	dptr,#_eeprom_update_word_PARM_2
	mov	a,#0xe6
	movx	@dptr,a
	mov	a,#0xfe
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_eeprom_update_word
;	quantum/eeconfig.c:52: eeprom_update_byte(EECONFIG_DEBUG, 0);
	mov	dptr,#_eeprom_update_byte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x0002
	mov	b,a
	lcall	_eeprom_update_byte
;	quantum/eeconfig.c:53: eeprom_update_byte(EECONFIG_DEFAULT_LAYER, 0);
	mov	dptr,#_eeprom_update_byte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x0003
	mov	b,a
	lcall	_eeprom_update_byte
;	quantum/eeconfig.c:54: default_layer_state = 0;
	mov	dptr,#_default_layer_state
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	quantum/eeconfig.c:56: eeprom_update_word(EECONFIG_KEYMAP, 0x1400);
	mov	dptr,#_eeprom_update_word_PARM_2
	movx	@dptr,a
	mov	a,#0x14
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0004
	mov	b,#0x00
	lcall	_eeprom_update_word
;	quantum/eeconfig.c:57: eeprom_update_byte(EECONFIG_BACKLIGHT, 0);
	mov	dptr,#_eeprom_update_byte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x0006
	mov	b,a
	lcall	_eeprom_update_byte
;	quantum/eeconfig.c:58: eeprom_update_byte(EECONFIG_AUDIO, 0xFF); // On by default
	mov	dptr,#_eeprom_update_byte_PARM_2
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#0x0007
	mov	b,#0x00
	lcall	_eeprom_update_byte
;	quantum/eeconfig.c:59: eeprom_update_dword(EECONFIG_RGBLIGHT, 0);
	mov	dptr,#_eeprom_update_dword_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0008
	mov	b,a
	lcall	_eeprom_update_dword
;	quantum/eeconfig.c:60: eeprom_update_byte(EECONFIG_RGBLIGHT_EXTENDED, 0);
	mov	dptr,#_eeprom_update_byte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x0024
	mov	b,a
	lcall	_eeprom_update_byte
;	quantum/eeconfig.c:61: eeprom_update_byte(EECONFIG_VELOCIKEY, 0);
	mov	dptr,#_eeprom_update_byte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x0017
	mov	b,a
	lcall	_eeprom_update_byte
;	quantum/eeconfig.c:62: eeprom_update_byte(EECONFIG_UNICODEMODE, 0);
	mov	dptr,#_eeprom_update_byte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000c
	mov	b,a
	lcall	_eeprom_update_byte
;	quantum/eeconfig.c:63: eeprom_update_byte(EECONFIG_STENOMODE, 0);
	mov	dptr,#_eeprom_update_byte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000d
	mov	b,a
	lcall	_eeprom_update_byte
;	quantum/eeconfig.c:64: uint64_t dummy = 0;
	mov	dptr,#_eeconfig_init_quantum_dummy_65537_183
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	quantum/eeconfig.c:65: eeprom_update_block(&dummy, EECONFIG_RGB_MATRIX, sizeof(uint64_t));
	mov	dptr,#_eeprom_update_block_PARM_2
	mov	a,#0x18
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeprom_update_block_PARM_3
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeconfig_init_quantum_dummy_65537_183
	mov	b,a
	lcall	_eeprom_update_block
;	quantum/eeconfig.c:66: eeprom_update_dword(EECONFIG_HAPTIC, 0);
	mov	dptr,#_eeprom_update_dword_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0020
	mov	b,a
	lcall	_eeprom_update_dword
;	quantum/eeconfig.c:87: eeconfig_init_kb();
;	quantum/eeconfig.c:88: }
	ljmp	_eeconfig_init_kb
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_init'
;------------------------------------------------------------
;	quantum/eeconfig.c:94: void eeconfig_init(void) {
;	-----------------------------------------
;	 function eeconfig_init
;	-----------------------------------------
_eeconfig_init:
;	quantum/eeconfig.c:95: eeconfig_init_quantum();
;	quantum/eeconfig.c:96: }
	ljmp	_eeconfig_init_quantum
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_enable'
;------------------------------------------------------------
;	quantum/eeconfig.c:102: void eeconfig_enable(void) {
;	-----------------------------------------
;	 function eeconfig_enable
;	-----------------------------------------
_eeconfig_enable:
;	quantum/eeconfig.c:103: eeprom_update_word(EECONFIG_MAGIC, EECONFIG_MAGIC_NUMBER);
	mov	dptr,#_eeprom_update_word_PARM_2
	mov	a,#0xe6
	movx	@dptr,a
	mov	a,#0xfe
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x00
;	quantum/eeconfig.c:104: }
	ljmp	_eeprom_update_word
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_disable'
;------------------------------------------------------------
;	quantum/eeconfig.c:110: void eeconfig_disable(void) {
;	-----------------------------------------
;	 function eeconfig_disable
;	-----------------------------------------
_eeconfig_disable:
;	quantum/eeconfig.c:112: eeprom_driver_erase();
	lcall	_eeprom_driver_erase
;	quantum/eeconfig.c:114: eeprom_update_word(EECONFIG_MAGIC, EECONFIG_MAGIC_NUMBER_OFF);
	mov	dptr,#_eeprom_update_word_PARM_2
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x00
;	quantum/eeconfig.c:115: }
	ljmp	_eeprom_update_word
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_is_enabled'
;------------------------------------------------------------
;is_eeprom_enabled         Allocated with name '_eeconfig_is_enabled_is_eeprom_enabled_65536_191'
;------------------------------------------------------------
;	quantum/eeconfig.c:121: bool eeconfig_is_enabled(void) {
;	-----------------------------------------
;	 function eeconfig_is_enabled
;	-----------------------------------------
_eeconfig_is_enabled:
;	quantum/eeconfig.c:122: bool is_eeprom_enabled = (eeprom_read_word(EECONFIG_MAGIC) == EECONFIG_MAGIC_NUMBER);
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_eeprom_read_word
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_eeconfig_is_enabled_is_eeprom_enabled_65536_191
	clr	a
	cjne	r6,#0xe6,00103$
	cjne	r7,#0xfe,00103$
	inc	a
00103$:
	movx	@dptr,a
;	quantum/eeconfig.c:128: return is_eeprom_enabled;
	mov	dptr,#_eeconfig_is_enabled_is_eeprom_enabled_65536_191
	movx	a,@dptr
;	quantum/eeconfig.c:129: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_is_disabled'
;------------------------------------------------------------
;is_eeprom_disabled        Allocated with name '_eeconfig_is_disabled_is_eeprom_disabled_65536_193'
;------------------------------------------------------------
;	quantum/eeconfig.c:135: bool eeconfig_is_disabled(void) {
;	-----------------------------------------
;	 function eeconfig_is_disabled
;	-----------------------------------------
_eeconfig_is_disabled:
;	quantum/eeconfig.c:136: bool is_eeprom_disabled = (eeprom_read_word(EECONFIG_MAGIC) == EECONFIG_MAGIC_NUMBER_OFF);
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_eeprom_read_word
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_eeconfig_is_disabled_is_eeprom_disabled_65536_193
	clr	a
	cjne	r6,#0xff,00103$
	cjne	r7,#0xff,00103$
	inc	a
00103$:
	movx	@dptr,a
;	quantum/eeconfig.c:142: return is_eeprom_disabled;
	mov	dptr,#_eeconfig_is_disabled_is_eeprom_disabled_65536_193
	movx	a,@dptr
;	quantum/eeconfig.c:143: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_read_debug'
;------------------------------------------------------------
;	quantum/eeconfig.c:149: uint8_t eeconfig_read_debug(void) {
;	-----------------------------------------
;	 function eeconfig_read_debug
;	-----------------------------------------
_eeconfig_read_debug:
;	quantum/eeconfig.c:150: return eeprom_read_byte(EECONFIG_DEBUG);
	mov	dptr,#0x0002
	mov	b,#0x00
;	quantum/eeconfig.c:151: }
	ljmp	_eeprom_read_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_update_debug'
;------------------------------------------------------------
;val                       Allocated with name '_eeconfig_update_debug_val_65536_196'
;------------------------------------------------------------
;	quantum/eeconfig.c:156: void eeconfig_update_debug(uint8_t val) {
;	-----------------------------------------
;	 function eeconfig_update_debug
;	-----------------------------------------
_eeconfig_update_debug:
	mov	a,dpl
	mov	dptr,#_eeconfig_update_debug_val_65536_196
	movx	@dptr,a
;	quantum/eeconfig.c:157: eeprom_update_byte(EECONFIG_DEBUG, val);
	movx	a,@dptr
	mov	dptr,#_eeprom_update_byte_PARM_2
	movx	@dptr,a
	mov	dptr,#0x0002
	mov	b,#0x00
;	quantum/eeconfig.c:158: }
	ljmp	_eeprom_update_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_read_default_layer'
;------------------------------------------------------------
;	quantum/eeconfig.c:164: uint8_t eeconfig_read_default_layer(void) {
;	-----------------------------------------
;	 function eeconfig_read_default_layer
;	-----------------------------------------
_eeconfig_read_default_layer:
;	quantum/eeconfig.c:165: return eeprom_read_byte(EECONFIG_DEFAULT_LAYER);
	mov	dptr,#0x0003
	mov	b,#0x00
;	quantum/eeconfig.c:166: }
	ljmp	_eeprom_read_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_update_default_layer'
;------------------------------------------------------------
;val                       Allocated with name '_eeconfig_update_default_layer_val_65536_200'
;------------------------------------------------------------
;	quantum/eeconfig.c:171: void eeconfig_update_default_layer(uint8_t val) {
;	-----------------------------------------
;	 function eeconfig_update_default_layer
;	-----------------------------------------
_eeconfig_update_default_layer:
	mov	a,dpl
	mov	dptr,#_eeconfig_update_default_layer_val_65536_200
	movx	@dptr,a
;	quantum/eeconfig.c:172: eeprom_update_byte(EECONFIG_DEFAULT_LAYER, val);
	movx	a,@dptr
	mov	dptr,#_eeprom_update_byte_PARM_2
	movx	@dptr,a
	mov	dptr,#0x0003
	mov	b,#0x00
;	quantum/eeconfig.c:173: }
	ljmp	_eeprom_update_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_read_keymap'
;------------------------------------------------------------
;	quantum/eeconfig.c:179: uint16_t eeconfig_read_keymap(void) {
;	-----------------------------------------
;	 function eeconfig_read_keymap
;	-----------------------------------------
_eeconfig_read_keymap:
;	quantum/eeconfig.c:180: return eeprom_read_word(EECONFIG_KEYMAP);
	mov	dptr,#0x0004
	mov	b,#0x00
;	quantum/eeconfig.c:181: }
	ljmp	_eeprom_read_word
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_update_keymap'
;------------------------------------------------------------
;val                       Allocated with name '_eeconfig_update_keymap_val_65536_204'
;------------------------------------------------------------
;	quantum/eeconfig.c:186: void eeconfig_update_keymap(uint16_t val) {
;	-----------------------------------------
;	 function eeconfig_update_keymap
;	-----------------------------------------
_eeconfig_update_keymap:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_eeconfig_update_keymap_val_65536_204
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/eeconfig.c:187: eeprom_update_word(EECONFIG_KEYMAP, val);
	mov	dptr,#_eeconfig_update_keymap_val_65536_204
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_eeprom_update_word_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0004
	mov	b,#0x00
;	quantum/eeconfig.c:188: }
	ljmp	_eeprom_update_word
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_read_audio'
;------------------------------------------------------------
;	quantum/eeconfig.c:194: uint8_t eeconfig_read_audio(void) {
;	-----------------------------------------
;	 function eeconfig_read_audio
;	-----------------------------------------
_eeconfig_read_audio:
;	quantum/eeconfig.c:195: return eeprom_read_byte(EECONFIG_AUDIO);
	mov	dptr,#0x0007
	mov	b,#0x00
;	quantum/eeconfig.c:196: }
	ljmp	_eeprom_read_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_update_audio'
;------------------------------------------------------------
;val                       Allocated with name '_eeconfig_update_audio_val_65536_208'
;------------------------------------------------------------
;	quantum/eeconfig.c:201: void eeconfig_update_audio(uint8_t val) {
;	-----------------------------------------
;	 function eeconfig_update_audio
;	-----------------------------------------
_eeconfig_update_audio:
	mov	a,dpl
	mov	dptr,#_eeconfig_update_audio_val_65536_208
	movx	@dptr,a
;	quantum/eeconfig.c:202: eeprom_update_byte(EECONFIG_AUDIO, val);
	movx	a,@dptr
	mov	dptr,#_eeprom_update_byte_PARM_2
	movx	@dptr,a
	mov	dptr,#0x0007
	mov	b,#0x00
;	quantum/eeconfig.c:203: }
	ljmp	_eeprom_update_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_read_kb'
;------------------------------------------------------------
;	quantum/eeconfig.c:210: uint32_t eeconfig_read_kb(void) {
;	-----------------------------------------
;	 function eeconfig_read_kb
;	-----------------------------------------
_eeconfig_read_kb:
;	quantum/eeconfig.c:211: return eeprom_read_dword(EECONFIG_KEYBOARD);
	mov	dptr,#0x000f
	mov	b,#0x00
;	quantum/eeconfig.c:212: }
	ljmp	_eeprom_read_dword
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_update_kb'
;------------------------------------------------------------
;val                       Allocated with name '_eeconfig_update_kb_val_65536_212'
;------------------------------------------------------------
;	quantum/eeconfig.c:217: void eeconfig_update_kb(uint32_t val) {
;	-----------------------------------------
;	 function eeconfig_update_kb
;	-----------------------------------------
_eeconfig_update_kb:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_eeconfig_update_kb_val_65536_212
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
;	quantum/eeconfig.c:218: eeprom_update_dword(EECONFIG_KEYBOARD, val);
	mov	dptr,#_eeconfig_update_kb_val_65536_212
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
	mov	dptr,#_eeprom_update_dword_PARM_2
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
	mov	dptr,#0x000f
	mov	b,#0x00
;	quantum/eeconfig.c:219: }
	ljmp	_eeprom_update_dword
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_read_user'
;------------------------------------------------------------
;	quantum/eeconfig.c:227: uint32_t eeconfig_read_user(void) {
;	-----------------------------------------
;	 function eeconfig_read_user
;	-----------------------------------------
_eeconfig_read_user:
;	quantum/eeconfig.c:228: return eeprom_read_dword(EECONFIG_USER);
	mov	dptr,#0x0013
	mov	b,#0x00
;	quantum/eeconfig.c:229: }
	ljmp	_eeprom_read_dword
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_update_user'
;------------------------------------------------------------
;val                       Allocated with name '_eeconfig_update_user_val_65536_216'
;------------------------------------------------------------
;	quantum/eeconfig.c:234: void eeconfig_update_user(uint32_t val) {
;	-----------------------------------------
;	 function eeconfig_update_user
;	-----------------------------------------
_eeconfig_update_user:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_eeconfig_update_user_val_65536_216
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
;	quantum/eeconfig.c:235: eeprom_update_dword(EECONFIG_USER, val);
	mov	dptr,#_eeconfig_update_user_val_65536_216
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
	mov	dptr,#_eeprom_update_dword_PARM_2
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
	mov	dptr,#0x0013
	mov	b,#0x00
;	quantum/eeconfig.c:236: }
	ljmp	_eeprom_update_dword
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_read_haptic'
;------------------------------------------------------------
;	quantum/eeconfig.c:243: uint32_t eeconfig_read_haptic(void) {
;	-----------------------------------------
;	 function eeconfig_read_haptic
;	-----------------------------------------
_eeconfig_read_haptic:
;	quantum/eeconfig.c:244: return eeprom_read_dword(EECONFIG_HAPTIC);
	mov	dptr,#0x0020
	mov	b,#0x00
;	quantum/eeconfig.c:245: }
	ljmp	_eeprom_read_dword
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_update_haptic'
;------------------------------------------------------------
;val                       Allocated with name '_eeconfig_update_haptic_val_65536_220'
;------------------------------------------------------------
;	quantum/eeconfig.c:250: void eeconfig_update_haptic(uint32_t val) {
;	-----------------------------------------
;	 function eeconfig_update_haptic
;	-----------------------------------------
_eeconfig_update_haptic:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_eeconfig_update_haptic_val_65536_220
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
;	quantum/eeconfig.c:251: eeprom_update_dword(EECONFIG_HAPTIC, val);
	mov	dptr,#_eeconfig_update_haptic_val_65536_220
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
	mov	dptr,#_eeprom_update_dword_PARM_2
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
	mov	dptr,#0x0020
	mov	b,#0x00
;	quantum/eeconfig.c:252: }
	ljmp	_eeprom_update_dword
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_read_handedness'
;------------------------------------------------------------
;	quantum/eeconfig.c:258: bool eeconfig_read_handedness(void) {
;	-----------------------------------------
;	 function eeconfig_read_handedness
;	-----------------------------------------
_eeconfig_read_handedness:
;	quantum/eeconfig.c:259: return !!eeprom_read_byte(EECONFIG_HANDEDNESS);
	mov	dptr,#0x000e
	mov	b,#0x00
	lcall	_eeprom_read_byte
	mov	a,dpl
	cjne	a,#0x01,00103$
00103$:
	cpl	c
	mov	_eeconfig_read_handedness_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
;	quantum/eeconfig.c:260: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeconfig_update_handedness'
;------------------------------------------------------------
;val                       Allocated with name '_eeconfig_update_handedness_val_65536_224'
;------------------------------------------------------------
;	quantum/eeconfig.c:265: void eeconfig_update_handedness(bool val) {
;	-----------------------------------------
;	 function eeconfig_update_handedness
;	-----------------------------------------
_eeconfig_update_handedness:
	mov	a,dpl
	mov	dptr,#_eeconfig_update_handedness_val_65536_224
	movx	@dptr,a
;	quantum/eeconfig.c:266: eeprom_update_byte(EECONFIG_HANDEDNESS, !!val);
	movx	a,@dptr
	cjne	a,#0x01,00103$
00103$:
	cpl	c
	mov	_eeconfig_update_handedness_sloc0_1_0,c
	mov	dptr,#_eeprom_update_byte_PARM_2
	mov	c,_eeconfig_update_handedness_sloc0_1_0
	clr	a
	rlc	a
	movx	@dptr,a
	mov	dptr,#0x000e
	mov	b,#0x00
;	quantum/eeconfig.c:267: }
	ljmp	_eeprom_update_byte
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
