;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (Linux)
;--------------------------------------------------------
	.module send_string
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ascii_to_keycode_lut
	.globl _ascii_to_dead_lut
	.globl _ascii_to_altgr_lut
	.globl _ascii_to_shift_lut
	.globl _DLY_ms
	.globl _tap_code
	.globl _unregister_code
	.globl _register_code
	.globl _rand
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
	.globl _send_string_with_delay_PARM_2
	.globl _send_string
	.globl _send_string_with_delay
	.globl _send_char
	.globl _send_dword
	.globl _send_word
	.globl _send_byte
	.globl _send_nibble
	.globl _tap_random_base64
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
_send_char_sloc0_1_0:
	.ds 1
_send_char_sloc1_1_0:
	.ds 1
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
_send_string_with_delay_sloc0_1_0:
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
_send_string_string_65536_185:
	.ds 3
_send_string_with_delay_PARM_2:
	.ds 1
_send_string_with_delay_string_65536_187:
	.ds 3
_send_string_with_delay_ms_262144_194:
	.ds 2
_send_string_with_delay_keycode_262144_194:
	.ds 1
_send_char_ascii_code_65536_207:
	.ds 1
_send_dword_number_65536_214:
	.ds 4
_send_word_number_65536_216:
	.ds 2
_send_byte_number_65536_218:
	.ds 1
_send_nibble_number_65536_220:
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
;Allocation info for local variables in function 'send_string'
;------------------------------------------------------------
;string                    Allocated with name '_send_string_string_65536_185'
;------------------------------------------------------------
;	quantum/send_string/send_string.c:150: void send_string(const char *string) {
;	-----------------------------------------
;	 function send_string
;	-----------------------------------------
_send_string:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_send_string_string_65536_185
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/send_string/send_string.c:151: send_string_with_delay(string, 0);
	mov	dptr,#_send_string_string_65536_185
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_send_string_with_delay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	quantum/send_string/send_string.c:152: }
	ljmp	_send_string_with_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'send_string_with_delay'
;------------------------------------------------------------
;interval                  Allocated with name '_send_string_with_delay_PARM_2'
;string                    Allocated with name '_send_string_with_delay_string_65536_187'
;ascii_code                Allocated with name '_send_string_with_delay_ascii_code_131072_189'
;keycode                   Allocated with name '_send_string_with_delay_keycode_262144_191'
;keycode                   Allocated with name '_send_string_with_delay_keycode_262144_192'
;keycode                   Allocated with name '_send_string_with_delay_keycode_262144_193'
;__3276800011              Allocated with name '_send_string_with_delay___3276800011_327680_194'
;ms                        Allocated with name '_send_string_with_delay_ms_262144_194'
;keycode                   Allocated with name '_send_string_with_delay_keycode_262144_194'
;__3276800012              Allocated with name '_send_string_with_delay___3276800012_327680_204'
;c                         Allocated with name '_send_string_with_delay_c_393216_205'
;i                         Allocated with name '_send_string_with_delay_i_393216_197'
;ms                        Allocated with name '_send_string_with_delay_ms_196608_200'
;i                         Allocated with name '_send_string_with_delay_i_327680_202'
;------------------------------------------------------------
;	quantum/send_string/send_string.c:154: void send_string_with_delay(const char *string, uint8_t interval) {
;	-----------------------------------------
;	 function send_string_with_delay
;	-----------------------------------------
_send_string_with_delay:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_send_string_with_delay_string_65536_187
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/send_string/send_string.c:155: while (1) {
	mov	dptr,#_send_string_with_delay_PARM_2
	movx	a,@dptr
	mov	r7,a
00135$:
;	quantum/send_string/send_string.c:156: char ascii_code = *string;
	mov	dptr,#_send_string_with_delay_string_65536_187
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
;	quantum/send_string/send_string.c:157: if (!ascii_code) break;
	mov	r3,a
	jnz	00228$
	ret
00228$:
;	quantum/send_string/send_string.c:158: if (ascii_code == SS_QMK_PREFIX) {
	cjne	r3,#0x01,00229$
	sjmp	00230$
00229$:
	ljmp	00125$
00230$:
;	quantum/send_string/send_string.c:159: ascii_code = *(++string);
	mov	dptr,#_send_string_with_delay_string_65536_187
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_send_string_with_delay_string_65536_187
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
;	quantum/send_string/send_string.c:160: if (ascii_code == SS_TAP_CODE) {
	cjne	r2,#0x01,00122$
;	quantum/send_string/send_string.c:162: uint8_t keycode = *(++string);
	push	ar7
	mov	dptr,#_send_string_with_delay_string_65536_187
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_send_string_with_delay_string_65536_187
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
;	quantum/send_string/send_string.c:163: tap_code(keycode);
	mov	dpl,a
	push	ar7
	lcall	_tap_code
	pop	ar7
	pop	ar7
	ljmp	00126$
00122$:
;	quantum/send_string/send_string.c:164: } else if (ascii_code == SS_DOWN_CODE) {
	cjne	r2,#0x02,00119$
;	quantum/send_string/send_string.c:166: uint8_t keycode = *(++string);
	push	ar7
	mov	dptr,#_send_string_with_delay_string_65536_187
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_send_string_with_delay_string_65536_187
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
;	quantum/send_string/send_string.c:167: register_code(keycode);
	mov	dpl,a
	push	ar7
	lcall	_register_code
	pop	ar7
	pop	ar7
	ljmp	00126$
00119$:
;	quantum/send_string/send_string.c:168: } else if (ascii_code == SS_UP_CODE) {
	cjne	r2,#0x03,00116$
;	quantum/send_string/send_string.c:170: uint8_t keycode = *(++string);
	push	ar7
	mov	dptr,#_send_string_with_delay_string_65536_187
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_send_string_with_delay_string_65536_187
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
;	quantum/send_string/send_string.c:171: unregister_code(keycode);
	mov	dpl,a
	push	ar7
	lcall	_unregister_code
	pop	ar7
	pop	ar7
	ljmp	00126$
00116$:
;	quantum/send_string/send_string.c:172: } else if (ascii_code == SS_DELAY_CODE) {
	cjne	r2,#0x04,00237$
	sjmp	00238$
00237$:
	ljmp	00126$
00238$:
;	quantum/send_string/send_string.c:174: int     ms      = 0;
	mov	dptr,#_send_string_with_delay_ms_262144_194
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	quantum/send_string/send_string.c:175: uint8_t keycode = *(++string);
	mov	dptr,#_send_string_with_delay_string_65536_187
	inc	a
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_send_string_with_delay_string_65536_187
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_send_string_with_delay_keycode_262144_194
	movx	@dptr,a
;	quantum/send_string/send_string.c:176: while (isdigit(keycode)) {
00103$:
	mov	dptr,#_send_string_with_delay_keycode_262144_194
	movx	a,@dptr
	mov	r2,a
;	/home/huy/sdcc-4.3.0-amd64-unknown-linux2.5/sdcc-4.3.0/share/sdcc/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r2,#0x30,00239$
00239$:
	mov	_send_string_with_delay_sloc0_1_0,c
	jnc	00240$
	ljmp	00171$
00240$:
	mov	a,r2
	add	a,#0xff - 0x39
	mov	_send_string_with_delay_sloc0_1_0,c
	jnc	00241$
	ljmp	00171$
00241$:
;	quantum/send_string/send_string.c:177: ms *= 10;
	push	ar7
	mov	dptr,#_send_string_with_delay_ms_262144_194
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_send_string_with_delay_ms_262144_194
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	quantum/send_string/send_string.c:178: ms += keycode - '0';
	mov	dptr,#_send_string_with_delay_keycode_262144_194
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	a,r1
	add	a,#0xd0
	mov	r1,a
	mov	a,r2
	addc	a,#0xff
	mov	r2,a
	mov	dptr,#_send_string_with_delay_ms_262144_194
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_send_string_with_delay_ms_262144_194
	mov	a,r1
	add	a,r0
	movx	@dptr,a
	mov	a,r2
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/send_string/send_string.c:179: keycode = *(++string);
	inc	r4
	cjne	r4,#0x00,00242$
	inc	r5
00242$:
	mov	dptr,#_send_string_with_delay_string_65536_187
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dptr,#_send_string_with_delay_keycode_262144_194
	movx	@dptr,a
	pop	ar7
	ljmp	00103$
;	quantum/send_string/send_string.c:181: while (ms--)
00171$:
	mov	dptr,#_send_string_with_delay_string_65536_187
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_send_string_with_delay_ms_262144_194
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00110$:
	mov	ar2,r5
	mov	ar4,r6
	dec	r5
	cjne	r5,#0xff,00243$
	dec	r6
00243$:
	mov	a,r2
	orl	a,r4
	jz	00126$
;	quantum/send_string/send_string.c:182: wait_ms(1);
	mov	r2,#0x01
	mov	r4,#0x00
00139$:
	mov	a,r2
	orl	a,r4
	jz	00110$
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	lcall	_DLY_ms
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	dec	r2
	cjne	r2,#0xff,00246$
	dec	r4
00246$:
	sjmp	00139$
00125$:
;	quantum/send_string/send_string.c:185: send_char(ascii_code);
	mov	dpl,r3
	push	ar7
	lcall	_send_char
	pop	ar7
00126$:
;	quantum/send_string/send_string.c:187: ++string;
	mov	dptr,#_send_string_with_delay_string_65536_187
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	quantum/send_string/send_string.c:191: while (ms--)
	mov	ar6,r7
00131$:
	mov	ar5,r6
	dec	r6
	mov	a,r5
	jnz	00247$
	ljmp	00135$
00247$:
;	quantum/send_string/send_string.c:192: wait_ms(1);
	mov	r4,#0x01
	mov	r5,#0x00
00142$:
	mov	a,r4
	orl	a,r5
	jz	00131$
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_DLY_ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	dec	r4
	cjne	r4,#0xff,00249$
	dec	r5
00249$:
;	quantum/send_string/send_string.c:195: }
	sjmp	00142$
;------------------------------------------------------------
;Allocation info for local variables in function 'send_char'
;------------------------------------------------------------
;sloc0                     Allocated with name '_send_char_sloc0_1_0'
;sloc1                     Allocated with name '_send_char_sloc1_1_0'
;ascii_code                Allocated with name '_send_char_ascii_code_65536_207'
;keycode                   Allocated with name '_send_char_keycode_65536_208'
;is_shifted                Allocated with name '_send_char_is_shifted_65536_208'
;is_altgred                Allocated with name '_send_char_is_altgred_65536_208'
;is_dead                   Allocated with name '_send_char_is_dead_65536_208'
;------------------------------------------------------------
;	quantum/send_string/send_string.c:197: void send_char(char ascii_code) {
;	-----------------------------------------
;	 function send_char
;	-----------------------------------------
_send_char:
	mov	a,dpl
	mov	dptr,#_send_char_ascii_code_65536_207
	movx	@dptr,a
;	quantum/send_string/send_string.c:205: uint8_t keycode    = pgm_read_byte(&ascii_to_keycode_lut[(uint8_t)ascii_code]);
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ascii_to_keycode_lut
	movc	a,@a+dptr
	mov	r6,a
;	quantum/send_string/send_string.c:206: bool    is_shifted = PGM_LOADBIT(ascii_to_shift_lut, (uint8_t)ascii_code);
	mov	r5,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,#_ascii_to_shift_lut
	mov	dpl,a
	mov	a,r4
	addc	a,#(_ascii_to_shift_lut >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	anl	ar7,#0x07
	mov	b,r7
	inc	b
	mov	a,r2
	sjmp	00134$
00133$:
	clr	c
	rrc	a
00134$:
	djnz	b,00133$
	anl	a,#0x01
	mov	_send_char_sloc0_1_0,a
;	quantum/send_string/send_string.c:207: bool    is_altgred = PGM_LOADBIT(ascii_to_altgr_lut, (uint8_t)ascii_code);
	mov	a,r3
	add	a,#_ascii_to_altgr_lut
	mov	dpl,a
	mov	a,r4
	addc	a,#(_ascii_to_altgr_lut >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	b,r7
	inc	b
	mov	a,r2
	sjmp	00136$
00135$:
	clr	c
	rrc	a
00136$:
	djnz	b,00135$
	anl	a,#0x01
	mov	_send_char_sloc1_1_0,a
;	quantum/send_string/send_string.c:208: bool    is_dead    = PGM_LOADBIT(ascii_to_dead_lut, (uint8_t)ascii_code);
	mov	a,r3
	add	a,#_ascii_to_dead_lut
	mov	dpl,a
	mov	a,r4
	addc	a,#(_ascii_to_dead_lut >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	b,r7
	inc	b
	mov	a,r4
	sjmp	00138$
00137$:
	clr	c
	rrc	a
00138$:
	djnz	b,00137$
	anl	a,#0x01
	mov	r7,a
;	quantum/send_string/send_string.c:210: if (is_shifted) {
	mov	a,_send_char_sloc0_1_0
	jz	00102$
;	quantum/send_string/send_string.c:211: register_code(KC_LEFT_SHIFT);
	mov	dpl,#0xe1
	push	ar7
	push	ar6
	lcall	_register_code
	pop	ar6
	pop	ar7
00102$:
;	quantum/send_string/send_string.c:213: if (is_altgred) {
	mov	a,_send_char_sloc1_1_0
	jz	00104$
;	quantum/send_string/send_string.c:214: register_code(KC_RIGHT_ALT);
	mov	dpl,#0xe6
	push	ar7
	push	ar6
	lcall	_register_code
	pop	ar6
	pop	ar7
00104$:
;	quantum/send_string/send_string.c:216: tap_code(keycode);
	mov	dpl,r6
	push	ar7
	lcall	_tap_code
	pop	ar7
;	quantum/send_string/send_string.c:217: if (is_altgred) {
	mov	a,_send_char_sloc1_1_0
	jz	00106$
;	quantum/send_string/send_string.c:218: unregister_code(KC_RIGHT_ALT);
	mov	dpl,#0xe6
	push	ar7
	lcall	_unregister_code
	pop	ar7
00106$:
;	quantum/send_string/send_string.c:220: if (is_shifted) {
	mov	a,_send_char_sloc0_1_0
	jz	00108$
;	quantum/send_string/send_string.c:221: unregister_code(KC_LEFT_SHIFT);
	mov	dpl,#0xe1
	push	ar7
	lcall	_unregister_code
	pop	ar7
00108$:
;	quantum/send_string/send_string.c:223: if (is_dead) {
	mov	a,r7
	jz	00111$
;	quantum/send_string/send_string.c:224: tap_code(KC_SPACE);
	mov	dpl,#0x2c
;	quantum/send_string/send_string.c:226: }
	ljmp	_tap_code
00111$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_dword'
;------------------------------------------------------------
;number                    Allocated with name '_send_dword_number_65536_214'
;------------------------------------------------------------
;	quantum/send_string/send_string.c:228: void send_dword(uint32_t number) {
;	-----------------------------------------
;	 function send_dword
;	-----------------------------------------
_send_dword:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_send_dword_number_65536_214
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
;	quantum/send_string/send_string.c:229: send_word(number >> 16);
	mov	dptr,#_send_dword_number_65536_214
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
	mov	ar2,r6
	mov	ar3,r7
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_send_word
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	quantum/send_string/send_string.c:230: send_word(number & 0xFFFFUL);
	mov	dpl,r4
	mov	dph,r5
;	quantum/send_string/send_string.c:231: }
	ljmp	_send_word
;------------------------------------------------------------
;Allocation info for local variables in function 'send_word'
;------------------------------------------------------------
;number                    Allocated with name '_send_word_number_65536_216'
;------------------------------------------------------------
;	quantum/send_string/send_string.c:233: void send_word(uint16_t number) {
;	-----------------------------------------
;	 function send_word
;	-----------------------------------------
_send_word:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_send_word_number_65536_216
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/send_string/send_string.c:234: send_byte(number >> 8);
	mov	dptr,#_send_word_number_65536_216
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_send_byte
	pop	ar6
	pop	ar7
;	quantum/send_string/send_string.c:235: send_byte(number & 0xFF);
	mov	dpl,r6
;	quantum/send_string/send_string.c:236: }
	ljmp	_send_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'send_byte'
;------------------------------------------------------------
;number                    Allocated with name '_send_byte_number_65536_218'
;------------------------------------------------------------
;	quantum/send_string/send_string.c:238: void send_byte(uint8_t number) {
;	-----------------------------------------
;	 function send_byte
;	-----------------------------------------
_send_byte:
	mov	a,dpl
	mov	dptr,#_send_byte_number_65536_218
	movx	@dptr,a
;	quantum/send_string/send_string.c:239: send_nibble(number >> 4);
	movx	a,@dptr
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	dpl,a
	push	ar7
	lcall	_send_nibble
	pop	ar7
;	quantum/send_string/send_string.c:240: send_nibble(number & 0xF);
	anl	ar7,#0x0f
	mov	dpl,r7
;	quantum/send_string/send_string.c:241: }
	ljmp	_send_nibble
;------------------------------------------------------------
;Allocation info for local variables in function 'send_nibble'
;------------------------------------------------------------
;number                    Allocated with name '_send_nibble_number_65536_220'
;number_4b                 Allocated with name '_send_nibble_number_4b_65536_221'
;------------------------------------------------------------
;	quantum/send_string/send_string.c:243: void send_nibble(uint8_t number) {
;	-----------------------------------------
;	 function send_nibble
;	-----------------------------------------
_send_nibble:
	mov	a,dpl
	mov	dptr,#_send_nibble_number_65536_220
	movx	@dptr,a
;	quantum/send_string/send_string.c:252: uint8_t number_4b = number & 0xf;
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0f
	anl	a,r7
	mov	r6,a
;	quantum/send_string/send_string.c:253: if (number_4b < 10)
	cjne	r6,#0x0a,00121$
00121$:
	jnc	00105$
;	quantum/send_string/send_string.c:254: send_char(number + '0');
	mov	ar5,r7
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	ljmp	_send_char
00105$:
;	quantum/send_string/send_string.c:255: else if (number_4b >= 10 && number_4b <= 15)
	cjne	r6,#0x0a,00123$
00123$:
	jc	00107$
	mov	a,r6
	add	a,#0xff - 0x0f
	jc	00107$
;	quantum/send_string/send_string.c:256: send_char(number - 10 + 'a');
	mov	a,#0x57
	add	a,r7
	mov	dpl,a
;	quantum/send_string/send_string.c:257: }
	ljmp	_send_char
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tap_random_base64'
;------------------------------------------------------------
;key                       Allocated with name '_tap_random_base64_key_65536_223'
;------------------------------------------------------------
;	quantum/send_string/send_string.c:259: void tap_random_base64(void) {
;	-----------------------------------------
;	 function tap_random_base64
;	-----------------------------------------
_tap_random_base64:
;	quantum/send_string/send_string.c:263: uint8_t key = rand() % 64;
	lcall	_rand
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x40
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
;	quantum/send_string/send_string.c:266: if (key >= 0 && key <= 25)
	mov	a,r6
	add	a,#0xff - 0x19
	jc	00118$
;	quantum/send_string/send_string.c:267: send_char(key + 'A');
	mov	ar7,r6
	mov	a,#0x41
	add	a,r7
	mov	dpl,a
	ljmp	_send_char
00118$:
;	quantum/send_string/send_string.c:268: else if (key >= 26 && key <= 51)
	cjne	r6,#0x1a,00156$
00156$:
	jc	00114$
	mov	a,r6
	add	a,#0xff - 0x33
	jc	00114$
;	quantum/send_string/send_string.c:269: send_char(key - 26 + 'a');
	mov	ar7,r6
	mov	a,#0x47
	add	a,r7
	mov	dpl,a
	ljmp	_send_char
00114$:
;	quantum/send_string/send_string.c:270: else if (key == 52)
	cjne	r6,#0x34,00111$
;	quantum/send_string/send_string.c:271: send_char('0');
	mov	dpl,#0x30
	ljmp	_send_char
00111$:
;	quantum/send_string/send_string.c:272: else if (key >= 53 && key <= 61)
	cjne	r6,#0x35,00161$
00161$:
	jc	00107$
	mov	a,r6
	add	a,#0xff - 0x3d
	jc	00107$
;	quantum/send_string/send_string.c:273: send_char(key - 53 + '1');
	mov	ar7,r6
	mov	a,#0xfc
	add	a,r7
	mov	dpl,a
	ljmp	_send_char
00107$:
;	quantum/send_string/send_string.c:274: else if (key == 62)
	cjne	r6,#0x3e,00104$
;	quantum/send_string/send_string.c:275: send_char('+');
	mov	dpl,#0x2b
	ljmp	_send_char
00104$:
;	quantum/send_string/send_string.c:276: else if (key == 63)
	cjne	r6,#0x3f,00121$
;	quantum/send_string/send_string.c:277: send_char('/');
	mov	dpl,#0x2f
;	quantum/send_string/send_string.c:279: }
	ljmp	_send_char
00121$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_ascii_to_shift_lut:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0xd4	; 212
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc7	; 199
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x78	; 120	'x'
_ascii_to_altgr_lut:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_ascii_to_dead_lut:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_ascii_to_keycode_lut:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2c	; 44
	.db #0x1e	; 30
	.db #0x34	; 52	'4'
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x24	; 36
	.db #0x34	; 52	'4'
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x25	; 37
	.db #0x2e	; 46
	.db #0x36	; 54	'6'
	.db #0x2d	; 45
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x27	; 39
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x36	; 54	'6'
	.db #0x2e	; 46
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x1f	; 31
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x2f	; 47
	.db #0x31	; 49	'1'
	.db #0x30	; 48	'0'
	.db #0x23	; 35
	.db #0x2d	; 45
	.db #0x35	; 53	'5'
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x2f	; 47
	.db #0x31	; 49	'1'
	.db #0x30	; 48	'0'
	.db #0x35	; 53	'5'
	.db #0x4c	; 76	'L'
	.area CABS    (ABS,CODE)
