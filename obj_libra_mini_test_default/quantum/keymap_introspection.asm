;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (Linux)
;--------------------------------------------------------
	.module keymap_introspection
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _keymaps
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
	.globl _keycode_at_keymap_location_PARM_3
	.globl _keycode_at_keymap_location_PARM_2
	.globl _keycode_at_keymap_location_raw_PARM_3
	.globl _keycode_at_keymap_location_raw_PARM_2
	.globl _keymap_layer_count_raw
	.globl _keymap_layer_count
	.globl _keycode_at_keymap_location_raw
	.globl _keycode_at_keymap_location
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
_keycode_at_keymap_location_raw_PARM_2:
	.ds 1
_keycode_at_keymap_location_raw_PARM_3:
	.ds 1
_keycode_at_keymap_location_raw_layer_num_65536_371:
	.ds 1
_keycode_at_keymap_location_PARM_2:
	.ds 1
_keycode_at_keymap_location_PARM_3:
	.ds 1
_keycode_at_keymap_location_layer_num_65536_374:
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
;Allocation info for local variables in function 'keymap_layer_count_raw'
;------------------------------------------------------------
;	quantum/keymap_introspection.c:20: uint8_t keymap_layer_count_raw(void) {
;	-----------------------------------------
;	 function keymap_layer_count_raw
;	-----------------------------------------
_keymap_layer_count_raw:
;	quantum/keymap_introspection.c:21: return NUM_KEYMAP_LAYERS_RAW;
	mov	dpl,#0x04
;	quantum/keymap_introspection.c:22: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keymap_layer_count'
;------------------------------------------------------------
;	quantum/keymap_introspection.c:24: __attribute__((weak)) uint8_t keymap_layer_count(void) {
;	-----------------------------------------
;	 function keymap_layer_count
;	-----------------------------------------
_keymap_layer_count:
;	quantum/keymap_introspection.c:25: return keymap_layer_count_raw();
;	quantum/keymap_introspection.c:26: }
	ljmp	_keymap_layer_count_raw
;------------------------------------------------------------
;Allocation info for local variables in function 'keycode_at_keymap_location_raw'
;------------------------------------------------------------
;row                       Allocated with name '_keycode_at_keymap_location_raw_PARM_2'
;column                    Allocated with name '_keycode_at_keymap_location_raw_PARM_3'
;layer_num                 Allocated with name '_keycode_at_keymap_location_raw_layer_num_65536_371'
;------------------------------------------------------------
;	quantum/keymap_introspection.c:34: uint16_t keycode_at_keymap_location_raw(uint8_t layer_num, uint8_t row, uint8_t column) {
;	-----------------------------------------
;	 function keycode_at_keymap_location_raw
;	-----------------------------------------
_keycode_at_keymap_location_raw:
	mov	a,dpl
	mov	dptr,#_keycode_at_keymap_location_raw_layer_num_65536_371
	movx	@dptr,a
;	quantum/keymap_introspection.c:35: if (layer_num < NUM_KEYMAP_LAYERS_RAW && row < MATRIX_ROWS && column < MATRIX_COLS) {
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00119$
00119$:
	jnc	00102$
	mov	dptr,#_keycode_at_keymap_location_raw_PARM_2
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x05,00121$
00121$:
	jnc	00102$
	mov	dptr,#_keycode_at_keymap_location_raw_PARM_3
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x0c,00123$
00123$:
	jnc	00102$
;	quantum/keymap_introspection.c:36: return pgm_read_word(&keymaps[layer_num][row][column]);
	mov	a,r7
	mov	b,#0x78
	mul	ab
	add	a,#_keymaps
	mov	r4,a
	mov	a,#(_keymaps >> 8)
	addc	a,b
	mov	r7,a
	mov	a,r6
	mov	b,#0x18
	mul	ab
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,r5
	add	a,r5
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ret
00102$:
;	quantum/keymap_introspection.c:38: return KC_TRNS;
	mov	dptr,#0x0001
;	quantum/keymap_introspection.c:39: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keycode_at_keymap_location'
;------------------------------------------------------------
;row                       Allocated with name '_keycode_at_keymap_location_PARM_2'
;column                    Allocated with name '_keycode_at_keymap_location_PARM_3'
;layer_num                 Allocated with name '_keycode_at_keymap_location_layer_num_65536_374'
;------------------------------------------------------------
;	quantum/keymap_introspection.c:41: __attribute__((weak)) uint16_t keycode_at_keymap_location(uint8_t layer_num, uint8_t row, uint8_t column) {
;	-----------------------------------------
;	 function keycode_at_keymap_location
;	-----------------------------------------
_keycode_at_keymap_location:
	mov	a,dpl
	mov	dptr,#_keycode_at_keymap_location_layer_num_65536_374
	movx	@dptr,a
;	quantum/keymap_introspection.c:42: return keycode_at_keymap_location_raw(layer_num, row, column);
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_keycode_at_keymap_location_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_keycode_at_keymap_location_PARM_3
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_keycode_at_keymap_location_raw_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_keycode_at_keymap_location_raw_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl,r7
;	quantum/keymap_introspection.c:43: }
	ljmp	_keycode_at_keymap_location_raw
	.area CSEG    (CODE)
	.area CONST   (CODE)
_keymaps:
	.byte #0x29, #0x00	; 41
	.byte #0x14, #0x00	; 20
	.byte #0x1a, #0x00	; 26
	.byte #0x08, #0x00	; 8
	.byte #0x15, #0x00	; 21
	.byte #0x17, #0x00	; 23
	.byte #0x1c, #0x00	; 28
	.byte #0x18, #0x00	; 24
	.byte #0x0c, #0x00	; 12
	.byte #0x12, #0x00	; 18
	.byte #0x13, #0x00	; 19
	.byte #0x4c, #0x00	; 76
	.byte #0xe0, #0x00	; 224
	.byte #0x04, #0x00	; 4
	.byte #0x16, #0x00	; 22
	.byte #0x07, #0x00	; 7
	.byte #0x09, #0x00	; 9
	.byte #0x0a, #0x00	; 10
	.byte #0x0b, #0x00	; 11
	.byte #0x0d, #0x00	; 13
	.byte #0x0e, #0x00	; 14
	.byte #0x0f, #0x00	; 15
	.byte #0x33, #0x00	; 51
	.byte #0x28, #0x00	; 40
	.byte #0xe1, #0x00	; 225
	.byte #0x1d, #0x00	; 29
	.byte #0x1b, #0x00	; 27
	.byte #0x06, #0x00	; 6
	.byte #0x19, #0x00	; 25
	.byte #0x05, #0x00	; 5
	.byte #0x00, #0x00	; 0
	.byte #0x11, #0x00	; 17
	.byte #0x10, #0x00	; 16
	.byte #0x36, #0x00	; 54
	.byte #0x37, #0x00	; 55
	.byte #0x38, #0x00	; 56
	.byte #0xe3, #0x00	; 227
	.byte #0xe0, #0x00	; 224
	.byte #0x00, #0x00	; 0
	.byte #0xe2, #0x00	; 226
	.byte #0x2c, #0x41	; 16684
	.byte #0x00, #0x00	; 0
	.byte #0x22, #0x52	; 21026
	.byte #0xe6, #0x00	; 230
	.byte #0xe4, #0x00	; 228
	.byte #0xe7, #0x00	; 231
	.byte #0xe5, #0x00	; 229
	.byte #0x2a, #0x00	; 42
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x35, #0x00	; 53
	.byte #0x1e, #0x00	; 30
	.byte #0x1f, #0x00	; 31
	.byte #0x20, #0x00	; 32
	.byte #0x21, #0x00	; 33
	.byte #0x22, #0x00	; 34
	.byte #0x23, #0x00	; 35
	.byte #0x24, #0x00	; 36
	.byte #0x25, #0x00	; 37
	.byte #0x26, #0x00	; 38
	.byte #0x27, #0x00	; 39
	.byte #0x2d, #0x00	; 45
	.byte #0x2b, #0x00	; 43
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x31, #0x00	; 49
	.byte #0x34, #0x00	; 52
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x00, #0x00	; 0
	.byte #0x01, #0x00	; 1
	.byte #0x23, #0x52	; 21027
	.byte #0x00, #0x00	; 0
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x2e, #0x00	; 46
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x52, #0x00	; 82
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x50, #0x00	; 80
	.byte #0x51, #0x00	; 81
	.byte #0x4f, #0x00	; 79
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x2f, #0x00	; 47
	.byte #0x2f, #0x02	; 559
	.byte #0x30, #0x02	; 560
	.byte #0x30, #0x00	; 48
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x00, #0x00	; 0
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x00, #0x00	; 0
	.byte #0x23, #0x52	; 21027
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x01, #0x00	; 1
	.byte #0x3a, #0x00	; 58
	.byte #0x3b, #0x00	; 59
	.byte #0x3c, #0x00	; 60
	.byte #0x3d, #0x00	; 61
	.byte #0x3e, #0x00	; 62
	.byte #0x3f, #0x00	; 63
	.byte #0x40, #0x00	; 64
	.byte #0x41, #0x00	; 65
	.byte #0x42, #0x00	; 66
	.byte #0x43, #0x00	; 67
	.byte #0x44, #0x00	; 68
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x00, #0x00	; 0
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x00, #0x00	; 0
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x01, #0x00	; 1
	.byte #0x45, #0x00	; 69
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.area CABS    (ABS,CODE)
