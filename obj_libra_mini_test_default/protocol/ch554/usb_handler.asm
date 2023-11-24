;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (Linux)
;--------------------------------------------------------
	.module usb_handler
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _USB_EP0_OUT
	.globl _USB_EP0_IN
	.globl _HID_SETUP_handler
	.globl _USB_EP0_SETUP
	.globl _USB_EP0_copyDescr
	.globl _USB_EP_init
	.globl _HID_EP1_IN
	.globl _HID_EP_init
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
	.globl _pDescr
	.globl _USB_SetupLen
	.globl _USB_Config
	.globl _USB_SetupTyp
	.globl _USB_SetupReq
	.globl _EP2_buffer
	.globl _EP1_buffer
	.globl _EP0_buffer
	.globl _USB_init
	.globl _USB_interrupt
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
_USB_EP0_SETUP_sloc0_1_0:
	.ds 1
_USB_EP0_IN_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_EP0_buffer	=	0x0000
_EP1_buffer	=	0x000a
_EP2_buffer	=	0x0014
_USB_SetupReq::
	.ds 1
_USB_SetupTyp::
	.ds 1
_USB_Config::
	.ds 1
_USB_SetupLen::
	.ds 2
_pDescr::
	.ds 2
_USB_EP0_SETUP_len_65536_45:
	.ds 1
_HID_SETUP_handler_len_65536_68:
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
;Allocation info for local variables in function 'USB_EP_init'
;------------------------------------------------------------
;	tmk_core/protocol/ch554/usb_handler.c:18: void USB_EP_init(void) {
;	-----------------------------------------
;	 function USB_EP_init
;	-----------------------------------------
_USB_EP_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	tmk_core/protocol/ch554/usb_handler.c:19: UEP0_DMA    = (uint16_t)EP0_buffer;       // EP0 data transfer address
	mov	r6,#_EP0_buffer
	mov	r7,#(_EP0_buffer >> 8)
	mov	((_UEP0_DMA >> 0) & 0xFF),r6
	mov	((_UEP0_DMA >> 8) & 0xFF),r7
;	tmk_core/protocol/ch554/usb_handler.c:21: | UEP_T_RES_NAK;              // EP0 IN transaction returns NAK
	mov	_UEP0_CTRL,#0x02
;	tmk_core/protocol/ch554/usb_handler.c:22: UEP0_T_LEN  = 0;                          // must be zero at start
	mov	_UEP0_T_LEN,#0x00
;	tmk_core/protocol/ch554/usb_handler.c:25: USB_INIT_endpoints();                     // custom EP init handler
;	tmk_core/protocol/ch554/usb_handler.c:27: }
	ljmp	_HID_EP_init
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_init'
;------------------------------------------------------------
;	tmk_core/protocol/ch554/usb_handler.c:32: void USB_init(void) {
;	-----------------------------------------
;	 function USB_init
;	-----------------------------------------
_USB_init:
;	tmk_core/protocol/ch554/usb_handler.c:35: | bUC_DMA_EN;                 // DMA enable
	mov	_USB_CTRL,#0x29
;	tmk_core/protocol/ch554/usb_handler.c:37: | bUD_PORT_EN;                // Enable port, full-speed
	mov	_UDEV_CTRL,#0x81
;	tmk_core/protocol/ch554/usb_handler.c:39: USB_EP_init();                            // setup endpoints
	lcall	_USB_EP_init
;	tmk_core/protocol/ch554/usb_handler.c:43: | bUIE_BUS_RST;               // Enable device mode USB bus reset interrupt
	orl	_USB_INT_EN,#0x07
;	tmk_core/protocol/ch554/usb_handler.c:45: USB_INT_FG |= 0x1f;                       // Clear interrupt flag
	orl	_USB_INT_FG,#0x1f
;	tmk_core/protocol/ch554/usb_handler.c:46: IE_USB      = 1;                          // Enable USB interrupt
;	assignBit
	setb	_IE_USB
;	tmk_core/protocol/ch554/usb_handler.c:47: EA          = 1;                          // Enable global interrupts
;	assignBit
	setb	_EA
;	tmk_core/protocol/ch554/usb_handler.c:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EP0_copyDescr'
;------------------------------------------------------------
;len                       Allocated with name '_USB_EP0_copyDescr_len_65536_42'
;------------------------------------------------------------
;	tmk_core/protocol/ch554/usb_handler.c:56: void USB_EP0_copyDescr(uint8_t len) {
;	-----------------------------------------
;	 function USB_EP0_copyDescr
;	-----------------------------------------
_USB_EP0_copyDescr:
;	tmk_core/protocol/ch554/usb_handler.c:73: __endasm;
	push	ar7 ; r7 -> stack
	mov	r7, dpl ; r7 <- len
	inc	_XBUS_AUX ; select dptr1
	mov	dptr, #_EP0_buffer ; dptr1 <- EP0_buffer
	dec	_XBUS_AUX ; select dptr0
	mov	dpl, _pDescr ; dptr0 <- *pDescr
	mov	dph, (_pDescr + 1)
01$:
	clr	a ; acc <- #0
	movc	a, @a+dptr ; acc <- *pDescr[dptr0]
	inc	dptr ; inc dptr0
	.DB	0xA5 ; acc -> EP0_buffer[dptr1] & inc dptr1
	djnz	r7, 01$ ; repeat len times
	pop	ar7 ; r7 <- stack
;	tmk_core/protocol/ch554/usb_handler.c:74: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EP0_SETUP'
;------------------------------------------------------------
;len                       Allocated with name '_USB_EP0_SETUP_len_65536_45'
;------------------------------------------------------------
;	tmk_core/protocol/ch554/usb_handler.c:79: void USB_EP0_SETUP(void) {
;	-----------------------------------------
;	 function USB_EP0_SETUP
;	-----------------------------------------
_USB_EP0_SETUP:
;	tmk_core/protocol/ch554/usb_handler.c:80: uint8_t len = 0;                                // default is success and upload 0 length
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	clr	a
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:81: if(USB_RX_LEN == (sizeof(USB_SETUP_REQ))) {
	mov	a,#0x08
	cjne	a,_USB_RX_LEN,00299$
	sjmp	00300$
00299$:
	ljmp	00171$
00300$:
;	tmk_core/protocol/ch554/usb_handler.c:82: USB_SetupLen = ((uint16_t)USB_SetupBuf->wLengthH<<8) | (USB_SetupBuf->wLengthL);
	mov	dptr,#(_EP0_buffer + 0x0007)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_EP0_buffer + 0x0006)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dptr,#_USB_SetupLen
	mov	a,r5
	orl	a,r7
	movx	@dptr,a
	mov	a,r4
	orl	a,r6
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:83: USB_SetupReq = USB_SetupBuf->bRequest;
	mov	dptr,#(_EP0_buffer + 0x0001)
	movx	a,@dptr
	mov	dptr,#_USB_SetupReq
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:84: USB_SetupTyp = USB_SetupBuf->bRequestType;
	mov	dptr,#_EP0_buffer
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_USB_SetupTyp
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:86: if((USB_SetupTyp & USB_REQ_TYP_MASK) != USB_REQ_TYP_STANDARD) {
	movx	a,@dptr
	anl	a,#0x60
	jz	00168$
;	tmk_core/protocol/ch554/usb_handler.c:88: len = USB_CTRL_NS_handler();                // non-standard request
	lcall	_HID_SETUP_handler
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,r6
	movx	@dptr,a
	ljmp	00172$
00168$:
;	tmk_core/protocol/ch554/usb_handler.c:95: switch(USB_SetupReq) {                      // request ccfType
	mov	dptr,#_USB_SetupReq
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0b
	jnc	00302$
	ljmp	00165$
00302$:
	mov	a,r7
	mov	b,a
	add	a,#(00303$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,b
	add	a,#(00304$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00303$:
	.db	00161$
	.db	00127$
	.db	00165$
	.db	00143$
	.db	00165$
	.db	00120$
	.db	00101$
	.db	00165$
	.db	00121$
	.db	00124$
	.db	00172$
	.db	00172$
00304$:
	.db	00161$>>8
	.db	00127$>>8
	.db	00165$>>8
	.db	00143$>>8
	.db	00165$>>8
	.db	00120$>>8
	.db	00101$>>8
	.db	00165$>>8
	.db	00121$>>8
	.db	00124$>>8
	.db	00172$>>8
	.db	00172$>>8
;	tmk_core/protocol/ch554/usb_handler.c:96: case USB_GET_DESCRIPTOR:
00101$:
;	tmk_core/protocol/ch554/usb_handler.c:97: switch(USB_SetupBuf->wValueH) {
	mov	dptr,#(_EP0_buffer + 0x0003)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00305$
	sjmp	00102$
00305$:
	cjne	r7,#0x02,00306$
	sjmp	00103$
00306$:
	cjne	r7,#0x03,00307$
	sjmp	00104$
00307$:
	cjne	r7,#0x22,00308$
	ljmp	00110$
00308$:
	ljmp	00114$
;	tmk_core/protocol/ch554/usb_handler.c:99: case USB_DESCR_TYP_DEVICE:            // Device Descriptor
00102$:
;	tmk_core/protocol/ch554/usb_handler.c:100: pDescr = (uint8_t*)&DevDescr;       // put descriptor into out buffer
	mov	dptr,#_pDescr
	mov	a,#_DeviceDescriptor
	movx	@dptr,a
	mov	a,#(_DeviceDescriptor >> 8)
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:101: len = sizeof(DevDescr);             // descriptor length
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0x12
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:102: break;
	ljmp	00115$
;	tmk_core/protocol/ch554/usb_handler.c:104: case USB_DESCR_TYP_CONFIG:            // Configuration Descriptor
00103$:
;	tmk_core/protocol/ch554/usb_handler.c:105: pDescr = (uint8_t*)&CfgDescr;       // put descriptor into out buffer
	mov	dptr,#_pDescr
	mov	a,#_ConfigurationDescriptor
	movx	@dptr,a
	mov	a,#(_ConfigurationDescriptor >> 8)
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:106: len = sizeof(CfgDescr);             // descriptor length
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0x22
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:107: break;
;	tmk_core/protocol/ch554/usb_handler.c:109: case USB_DESCR_TYP_STRING:
	sjmp	00115$
00104$:
;	tmk_core/protocol/ch554/usb_handler.c:110: switch(USB_SetupBuf->wValueL) {      // String Descriptor Index
	mov	dptr,#(_EP0_buffer + 0x0002)
	movx	a,@dptr
	mov	r7,a
	jz	00105$
	cjne	r7,#0x01,00310$
	sjmp	00106$
00310$:
;	tmk_core/protocol/ch554/usb_handler.c:111: case 0:   pDescr = USB_STR_DESCR_i0; break;
	cjne	r7,#0x02,00108$
	sjmp	00107$
00105$:
	mov	dptr,#_pDescr
	mov	a,#_LanguageString
	movx	@dptr,a
	mov	a,#(_LanguageString >> 8)
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:112: case 1:   pDescr = USB_STR_DESCR_i1; break;
	sjmp	00109$
00106$:
	mov	dptr,#_pDescr
	mov	a,#_ManufacturerString
	movx	@dptr,a
	mov	a,#(_ManufacturerString >> 8)
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:113: case 2:   pDescr = USB_STR_DESCR_i2; break;
	sjmp	00109$
00107$:
	mov	dptr,#_pDescr
	mov	a,#_ProductString
	movx	@dptr,a
	mov	a,#(_ProductString >> 8)
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:138: default:  pDescr = USB_STR_DESCR_ix; break;
	sjmp	00109$
00108$:
	mov	dptr,#_pDescr
	mov	a,#_ProductString
	movx	@dptr,a
	mov	a,#(_ProductString >> 8)
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:139: }
00109$:
;	tmk_core/protocol/ch554/usb_handler.c:140: len = pDescr[0];                    // descriptor length
	mov	dptr,#_pDescr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:141: break;
;	tmk_core/protocol/ch554/usb_handler.c:144: case USB_DESCR_TYP_REPORT:
	sjmp	00115$
00110$:
;	tmk_core/protocol/ch554/usb_handler.c:145: if(USB_SetupBuf->wValueL == 0) {
	mov	dptr,#(_EP0_buffer + 0x0002)
	movx	a,@dptr
	jnz	00112$
;	tmk_core/protocol/ch554/usb_handler.c:146: pDescr = USB_REPORT_DESCR;
	mov	dptr,#_pDescr
	mov	a,#_KeyboardReport
	movx	@dptr,a
	mov	a,#(_KeyboardReport >> 8)
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:147: len = USB_REPORT_DESCR_LEN;
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0x12
	movx	@dptr,a
	sjmp	00115$
00112$:
;	tmk_core/protocol/ch554/usb_handler.c:149: else len = 0xff;
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0xff
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:150: break;
;	tmk_core/protocol/ch554/usb_handler.c:153: default:
	sjmp	00115$
00114$:
;	tmk_core/protocol/ch554/usb_handler.c:154: len = 0xff;                         // unsupported descriptors or error
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0xff
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:156: }
00115$:
;	tmk_core/protocol/ch554/usb_handler.c:158: if(len != 0xff) {
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xff,00313$
	ljmp	00172$
00313$:
;	tmk_core/protocol/ch554/usb_handler.c:159: if(USB_SetupLen > len) USB_SetupLen = len;    // limit length
	mov	dptr,#_USB_SetupLen
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar4,r7
	mov	r7,#0x00
	clr	c
	mov	a,r4
	subb	a,r5
	mov	a,r7
	subb	a,r6
	jnc	00117$
	mov	dptr,#_USB_SetupLen
	mov	a,r4
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00117$:
;	tmk_core/protocol/ch554/usb_handler.c:160: len = USB_SetupLen >= EP0_SIZE ? EP0_SIZE : USB_SetupLen;
	mov	dptr,#_USB_SetupLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	mov	_USB_EP0_SETUP_sloc0_1_0,c
	jc	00181$
	mov	r6,#0x08
	mov	r7,#0x00
	sjmp	00182$
00181$:
	mov	dptr,#_USB_SetupLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00182$:
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,r6
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:161: USB_EP0_copyDescr(len);               // copy descriptor to Ep0
	mov	dpl,r6
	lcall	_USB_EP0_copyDescr
;	tmk_core/protocol/ch554/usb_handler.c:162: USB_SetupLen -= len;
	mov	ar5,r6
	mov	r7,#0x00
	mov	dptr,#_USB_SetupLen
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r3,a
	mov	a,r4
	subb	a,r7
	mov	r4,a
	mov	dptr,#_USB_SetupLen
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:163: pDescr += len;
	mov	dptr,#_pDescr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pDescr
	mov	a,r6
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:165: break;
	ljmp	00172$
;	tmk_core/protocol/ch554/usb_handler.c:167: case USB_SET_ADDRESS:
00120$:
;	tmk_core/protocol/ch554/usb_handler.c:168: USB_SetupLen = USB_SetupBuf->wValueL;   // save the assigned address
	mov	dptr,#(_EP0_buffer + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_USB_SetupLen
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:169: break;
	ljmp	00172$
;	tmk_core/protocol/ch554/usb_handler.c:171: case USB_GET_CONFIGURATION:
00121$:
;	tmk_core/protocol/ch554/usb_handler.c:172: EP0_buffer[0] = USB_Config;
	mov	dptr,#_USB_Config
	movx	a,@dptr
	mov	dptr,#_EP0_buffer
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:173: if(USB_SetupLen >= 1) len = 1;
	mov	dptr,#_USB_SetupLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	subb	a,#0x00
	jnc	00316$
	ljmp	00172$
00316$:
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0x01
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:174: break;
	ljmp	00172$
;	tmk_core/protocol/ch554/usb_handler.c:176: case USB_SET_CONFIGURATION:
00124$:
;	tmk_core/protocol/ch554/usb_handler.c:177: USB_Config = USB_SetupBuf->wValueL;
	mov	dptr,#(_EP0_buffer + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_USB_Config
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:178: break;
	ljmp	00172$
;	tmk_core/protocol/ch554/usb_handler.c:186: case USB_CLEAR_FEATURE:
00127$:
;	tmk_core/protocol/ch554/usb_handler.c:187: if((USB_SetupTyp & 0x1f) == USB_REQ_RECIP_DEVICE) {
	mov	dptr,#_USB_SetupTyp
	movx	a,@dptr
	anl	a,#0x1f
	jnz	00141$
;	tmk_core/protocol/ch554/usb_handler.c:188: if( (((uint16_t)USB_SetupBuf->wValueH << 8) | USB_SetupBuf->wValueL) == 0x01 ) {
	mov	dptr,#(_EP0_buffer + 0x0003)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_EP0_buffer + 0x0002)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	cjne	r7,#0x01,00132$
	cjne	r6,#0x00,00132$
;	tmk_core/protocol/ch554/usb_handler.c:189: if( ((uint8_t*)&CfgDescr)[7] & 0x20) {
	mov	dptr,#(_ConfigurationDescriptor + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	jnb	acc.5,00321$
	ljmp	00172$
00321$:
;	tmk_core/protocol/ch554/usb_handler.c:192: else len = 0xff;               // failed
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0xff
	movx	@dptr,a
	ljmp	00172$
00132$:
;	tmk_core/protocol/ch554/usb_handler.c:194: else len = 0xff;                 // failed
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0xff
	movx	@dptr,a
	ljmp	00172$
00141$:
;	tmk_core/protocol/ch554/usb_handler.c:196: else if((USB_SetupTyp & USB_REQ_RECIP_MASK) == USB_REQ_RECIP_ENDP) {
	mov	dptr,#_USB_SetupTyp
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x1f
	mov	r6,#0x00
	cjne	r7,#0x02,00138$
	cjne	r6,#0x00,00138$
;	tmk_core/protocol/ch554/usb_handler.c:197: switch(USB_SetupBuf->wIndexL) {
	mov	dptr,#(_EP0_buffer + 0x0004)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x81,00135$
;	tmk_core/protocol/ch554/usb_handler.c:205: UEP1_CTRL = (UEP1_CTRL & ~(bUEP_T_TOG | MASK_UEP_T_RES)) | UEP_T_RES_NAK;
	mov	a,#0xbc
	anl	a,_UEP1_CTRL
	orl	a,#0x02
	mov	_UEP1_CTRL,a
;	tmk_core/protocol/ch554/usb_handler.c:206: break;
	ljmp	00172$
;	tmk_core/protocol/ch554/usb_handler.c:238: default:
00135$:
;	tmk_core/protocol/ch554/usb_handler.c:239: len = 0xff;                 // unsupported endpoint
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0xff
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:241: }
	ljmp	00172$
00138$:
;	tmk_core/protocol/ch554/usb_handler.c:243: else len = 0xff;                  // unsupported for non-endpoint
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0xff
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:244: break;
	ljmp	00172$
;	tmk_core/protocol/ch554/usb_handler.c:246: case USB_SET_FEATURE:
00143$:
;	tmk_core/protocol/ch554/usb_handler.c:247: if((USB_SetupTyp & 0x1f) == USB_REQ_RECIP_DEVICE) {
	mov	dptr,#_USB_SetupTyp
	movx	a,@dptr
	anl	a,#0x1f
	jnz	00159$
;	tmk_core/protocol/ch554/usb_handler.c:248: if( (((uint16_t)USB_SetupBuf->wValueH << 8) | USB_SetupBuf->wValueL) == 0x01 ) {
	mov	dptr,#(_EP0_buffer + 0x0003)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_EP0_buffer + 0x0002)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	cjne	r7,#0x01,00147$
	cjne	r6,#0x00,00147$
;	tmk_core/protocol/ch554/usb_handler.c:249: if( !(((uint8_t*)&CfgDescr)[7] & 0x20) ) len = 0xff;  // failed
	mov	dptr,#(_ConfigurationDescriptor + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	jnb	acc.5,00330$
	ljmp	00172$
00330$:
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0xff
	movx	@dptr,a
	ljmp	00172$
00147$:
;	tmk_core/protocol/ch554/usb_handler.c:251: else len = 0xff;                                        // failed
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0xff
	movx	@dptr,a
	ljmp	00172$
00159$:
;	tmk_core/protocol/ch554/usb_handler.c:253: else if((USB_SetupTyp & 0x1f) == USB_REQ_RECIP_ENDP) {
	mov	dptr,#_USB_SetupTyp
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x1f
	mov	r6,#0x00
	cjne	r7,#0x02,00156$
	cjne	r6,#0x00,00156$
;	tmk_core/protocol/ch554/usb_handler.c:254: if( (((uint16_t)USB_SetupBuf->wValueH << 8) | USB_SetupBuf->wValueL) == 0x00 ) {
	mov	dptr,#(_EP0_buffer + 0x0003)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_EP0_buffer + 0x0002)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	mov	a,r7
	orl	a,r6
	jnz	00153$
;	tmk_core/protocol/ch554/usb_handler.c:255: switch( ( (uint16_t)USB_SetupBuf->wIndexH << 8 ) | USB_SetupBuf->wIndexL ) {
	mov	dptr,#(_EP0_buffer + 0x0005)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_EP0_buffer + 0x0004)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	cjne	r7,#0x81,00150$
	cjne	r6,#0x00,00150$
;	tmk_core/protocol/ch554/usb_handler.c:263: UEP1_CTRL = (UEP1_CTRL & ~bUEP_T_TOG) | UEP_T_RES_STALL;
	mov	a,#0xbf
	anl	a,_UEP1_CTRL
	orl	a,#0x03
	mov	_UEP1_CTRL,a
;	tmk_core/protocol/ch554/usb_handler.c:264: break;
;	tmk_core/protocol/ch554/usb_handler.c:296: default:
	sjmp	00172$
00150$:
;	tmk_core/protocol/ch554/usb_handler.c:297: len = 0xff;               // failed
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0xff
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:299: }
	sjmp	00172$
00153$:
;	tmk_core/protocol/ch554/usb_handler.c:301: else len = 0xff;                // failed
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0xff
	movx	@dptr,a
	sjmp	00172$
00156$:
;	tmk_core/protocol/ch554/usb_handler.c:303: else len = 0xff;                  // failed
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0xff
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:304: break;
;	tmk_core/protocol/ch554/usb_handler.c:306: case USB_GET_STATUS:
	sjmp	00172$
00161$:
;	tmk_core/protocol/ch554/usb_handler.c:307: EP0_buffer[0] = 0x00;
	mov	dptr,#_EP0_buffer
	clr	a
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:308: EP0_buffer[1] = 0x00;
	mov	dptr,#(_EP0_buffer + 0x0001)
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:309: if(USB_SetupLen >= 2) len = 2;
	mov	dptr,#_USB_SetupLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	subb	a,#0x00
	jc	00163$
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00172$
00163$:
;	tmk_core/protocol/ch554/usb_handler.c:310: else len = USB_SetupLen;
	mov	dptr,#_USB_SetupLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,r6
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:311: break;
;	tmk_core/protocol/ch554/usb_handler.c:313: default:
	sjmp	00172$
00165$:
;	tmk_core/protocol/ch554/usb_handler.c:314: len = 0xff;                       // failed
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0xff
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:316: }
	sjmp	00172$
00171$:
;	tmk_core/protocol/ch554/usb_handler.c:319: else len = 0xff;                          // wrong packet length
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	mov	a,#0xff
	movx	@dptr,a
00172$:
;	tmk_core/protocol/ch554/usb_handler.c:321: if(len == 0xff) {
	mov	dptr,#_USB_EP0_SETUP_len_65536_45
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xff,00177$
;	tmk_core/protocol/ch554/usb_handler.c:322: USB_SetupReq = 0xff;
	mov	dptr,#_USB_SetupReq
	mov	a,#0xff
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:323: UEP0_CTRL  = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_STALL | UEP_T_RES_STALL; // STALL
	mov	_UEP0_CTRL,#0xcf
	ret
00177$:
;	tmk_core/protocol/ch554/usb_handler.c:325: else if(len <= EP0_SIZE) {      // Tx data to host or send 0-length packet
	mov	a,r7
	add	a,#0xff - 0x08
	jc	00174$
;	tmk_core/protocol/ch554/usb_handler.c:326: UEP0_T_LEN = len;
	mov	_UEP0_T_LEN,r7
;	tmk_core/protocol/ch554/usb_handler.c:327: UEP0_CTRL  = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_ACK | UEP_T_RES_ACK; // Expect DATA1, Answer ACK
	mov	_UEP0_CTRL,#0xc0
	ret
00174$:
;	tmk_core/protocol/ch554/usb_handler.c:330: UEP0_T_LEN = 0;  // Tx data to host or send 0-length packet
	mov	_UEP0_T_LEN,#0x00
;	tmk_core/protocol/ch554/usb_handler.c:331: UEP0_CTRL  = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_ACK | UEP_T_RES_ACK; // Expect DATA1, Answer ACK
	mov	_UEP0_CTRL,#0xc0
;	tmk_core/protocol/ch554/usb_handler.c:333: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HID_SETUP_handler'
;------------------------------------------------------------
;len                       Allocated with name '_HID_SETUP_handler_len_65536_68'
;------------------------------------------------------------
;	tmk_core/protocol/ch554/usb_handler.c:335: uint8_t HID_SETUP_handler(void) {
;	-----------------------------------------
;	 function HID_SETUP_handler
;	-----------------------------------------
_HID_SETUP_handler:
;	tmk_core/protocol/ch554/usb_handler.c:336: uint8_t len = 0;                                // default is success and upload 0 length
	mov	dptr,#_HID_SETUP_handler_len_65536_68
	clr	a
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:337: switch( USB_SetupReq )
	mov	dptr,#_USB_SetupReq
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00135$
	sjmp	00108$
00135$:
	cjne	r7,#0x02,00136$
	sjmp	00108$
00136$:
	cjne	r7,#0x03,00137$
	sjmp	00108$
00137$:
	cjne	r7,#0x09,00138$
	sjmp	00104$
00138$:
	cjne	r7,#0x0a,00139$
	sjmp	00108$
00139$:
;	tmk_core/protocol/ch554/usb_handler.c:345: case 0x09://SetReport
	cjne	r7,#0x0b,00107$
	sjmp	00108$
00104$:
;	tmk_core/protocol/ch554/usb_handler.c:346: pDescr = USB_SetupBuf->wValueH;
	mov	dptr,#(_EP0_buffer + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pDescr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:347: break;
;	tmk_core/protocol/ch554/usb_handler.c:352: default:
	sjmp	00108$
00107$:
;	tmk_core/protocol/ch554/usb_handler.c:353: len = 0xFF;                                  /*ÃüÁî²»Ö§³Ö*/
	mov	dptr,#_HID_SETUP_handler_len_65536_68
	mov	a,#0xff
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:355: }
00108$:
;	tmk_core/protocol/ch554/usb_handler.c:356: return len;
	mov	dptr,#_HID_SETUP_handler_len_65536_68
	movx	a,@dptr
;	tmk_core/protocol/ch554/usb_handler.c:357: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EP0_IN'
;------------------------------------------------------------
;len                       Allocated with name '_USB_EP0_IN_len_65536_71'
;------------------------------------------------------------
;	tmk_core/protocol/ch554/usb_handler.c:359: void USB_EP0_IN(void) {
;	-----------------------------------------
;	 function USB_EP0_IN
;	-----------------------------------------
_USB_EP0_IN:
;	tmk_core/protocol/ch554/usb_handler.c:369: switch(USB_SetupReq) {
	mov	dptr,#_USB_SetupReq
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x05,00121$
	sjmp	00102$
00121$:
	cjne	r7,#0x06,00103$
;	tmk_core/protocol/ch554/usb_handler.c:371: len = USB_SetupLen >= EP0_SIZE ? EP0_SIZE : USB_SetupLen;
	mov	dptr,#_USB_SetupLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	mov	_USB_EP0_IN_sloc0_1_0,c
	jc	00107$
	mov	r6,#0x08
	mov	r7,#0x00
	sjmp	00108$
00107$:
	mov	dptr,#_USB_SetupLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00108$:
;	tmk_core/protocol/ch554/usb_handler.c:372: USB_EP0_copyDescr(len);                     // copy descriptor to Ep0                                
	mov	dpl,r6
	lcall	_USB_EP0_copyDescr
;	tmk_core/protocol/ch554/usb_handler.c:373: USB_SetupLen  -= len;
	mov	ar5,r6
	mov	r7,#0x00
	mov	dptr,#_USB_SetupLen
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r3,a
	mov	a,r4
	subb	a,r7
	mov	r4,a
	mov	dptr,#_USB_SetupLen
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:374: pDescr    += len;
	mov	dptr,#_pDescr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pDescr
	mov	a,r6
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/ch554/usb_handler.c:375: UEP0_T_LEN = len;
	mov	_UEP0_T_LEN,r6
;	tmk_core/protocol/ch554/usb_handler.c:376: UEP0_CTRL ^= bUEP_T_TOG;                    // switch between DATA0 and DATA1
	xrl	_UEP0_CTRL,#0x40
;	tmk_core/protocol/ch554/usb_handler.c:377: break;
;	tmk_core/protocol/ch554/usb_handler.c:379: case USB_SET_ADDRESS:
	ret
00102$:
;	tmk_core/protocol/ch554/usb_handler.c:380: USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | USB_SetupLen;
	mov	a,_USB_DEV_AD
	anl	a,#0x80
	mov	r7,a
	mov	dptr,#_USB_SetupLen
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	a,r5
	orl	a,r7
	mov	_USB_DEV_AD,a
;	tmk_core/protocol/ch554/usb_handler.c:381: UEP0_CTRL  = UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP0_CTRL,#0x02
;	tmk_core/protocol/ch554/usb_handler.c:382: break;
;	tmk_core/protocol/ch554/usb_handler.c:384: default:
	ret
00103$:
;	tmk_core/protocol/ch554/usb_handler.c:385: UEP0_T_LEN = 0;                             // end of transaction
	mov	_UEP0_T_LEN,#0x00
;	tmk_core/protocol/ch554/usb_handler.c:386: UEP0_CTRL  = UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP0_CTRL,#0x02
;	tmk_core/protocol/ch554/usb_handler.c:388: }
;	tmk_core/protocol/ch554/usb_handler.c:389: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EP0_OUT'
;------------------------------------------------------------
;	tmk_core/protocol/ch554/usb_handler.c:391: void USB_EP0_OUT(void) {
;	-----------------------------------------
;	 function USB_EP0_OUT
;	-----------------------------------------
_USB_EP0_OUT:
;	tmk_core/protocol/ch554/usb_handler.c:399: UEP0_T_LEN = 0;
	mov	_UEP0_T_LEN,#0x00
;	tmk_core/protocol/ch554/usb_handler.c:400: UEP0_CTRL  = (UEP0_CTRL & ~MASK_UEP_T_RES) | UEP_T_RES_NAK; // respond NAK
	mov	a,#0xfc
	anl	a,_UEP0_CTRL
	orl	a,#0x02
	mov	_UEP0_CTRL,a
;	tmk_core/protocol/ch554/usb_handler.c:401: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_interrupt'
;------------------------------------------------------------
;callIndex                 Allocated with name '_USB_interrupt_callIndex_131072_77'
;------------------------------------------------------------
;	tmk_core/protocol/ch554/usb_handler.c:408: void USB_interrupt(void) {   // inline not really working in multiple files in SDCC
;	-----------------------------------------
;	 function USB_interrupt
;	-----------------------------------------
_USB_interrupt:
;	tmk_core/protocol/ch554/usb_handler.c:409: if(UIF_TRANSFER) {
	jnb	_UIF_TRANSFER,00119$
;	tmk_core/protocol/ch554/usb_handler.c:411: uint8_t callIndex = USB_INT_ST & MASK_UIS_ENDP;
	mov	a,_USB_INT_ST
	anl	a,#0x0f
	mov	r7,a
;	tmk_core/protocol/ch554/usb_handler.c:412: switch (USB_INT_ST & MASK_UIS_TOKEN) {
	mov	r5,_USB_INT_ST
	anl	ar5,#0x30
	mov	r6,#0x00
	cjne	r5,#0x00,00177$
	cjne	r6,#0x00,00177$
	sjmp	00101$
00177$:
	cjne	r5,#0x10,00178$
	cjne	r6,#0x00,00178$
	sjmp	00117$
00178$:
	cjne	r5,#0x20,00179$
	cjne	r6,#0x00,00179$
	sjmp	00108$
00179$:
;	tmk_core/protocol/ch554/usb_handler.c:413: case UIS_TOKEN_OUT:
	cjne	r5,#0x30,00117$
	cjne	r6,#0x00,00117$
	sjmp	00113$
00101$:
;	tmk_core/protocol/ch554/usb_handler.c:414: switch (callIndex) {
	cjne	r7,#0x00,00117$
;	tmk_core/protocol/ch554/usb_handler.c:415: case 0: EP0_OUT_callback(); break;
	lcall	_USB_EP0_OUT
;	tmk_core/protocol/ch554/usb_handler.c:451: case UIS_TOKEN_IN:
	sjmp	00117$
00108$:
;	tmk_core/protocol/ch554/usb_handler.c:452: switch (callIndex) {
	cjne	r7,#0x00,00183$
	sjmp	00109$
00183$:
;	tmk_core/protocol/ch554/usb_handler.c:453: case 0: EP0_IN_callback(); break;
	cjne	r7,#0x01,00117$
	sjmp	00110$
00109$:
	lcall	_USB_EP0_IN
;	tmk_core/protocol/ch554/usb_handler.c:455: case 1: EP1_IN_callback(); break;
	sjmp	00117$
00110$:
	lcall	_HID_EP1_IN
;	tmk_core/protocol/ch554/usb_handler.c:469: case UIS_TOKEN_SETUP:
	sjmp	00117$
00113$:
;	tmk_core/protocol/ch554/usb_handler.c:470: switch (callIndex) {
	cjne	r7,#0x00,00117$
;	tmk_core/protocol/ch554/usb_handler.c:471: case 0: EP0_SETUP_callback(); break;
	lcall	_USB_EP0_SETUP
;	tmk_core/protocol/ch554/usb_handler.c:487: }
00117$:
;	tmk_core/protocol/ch554/usb_handler.c:488: UIF_TRANSFER = 0;                       // clear interrupt flag
;	assignBit
	clr	_UIF_TRANSFER
00119$:
;	tmk_core/protocol/ch554/usb_handler.c:492: if(UIF_BUS_RST) {
	jnb	_UIF_BUS_RST,00121$
;	tmk_core/protocol/ch554/usb_handler.c:493: USB_EP_init();                          // reset endpoints
	lcall	_USB_EP_init
;	tmk_core/protocol/ch554/usb_handler.c:494: USB_DEV_AD = 0x00;                      // reset device address
	mov	_USB_DEV_AD,#0x00
;	tmk_core/protocol/ch554/usb_handler.c:495: USB_INT_FG = 0x1f;                      // clear all interrupt flags
	mov	_USB_INT_FG,#0x1f
00121$:
;	tmk_core/protocol/ch554/usb_handler.c:499: if (UIF_SUSPEND) {
;	tmk_core/protocol/ch554/usb_handler.c:500: UIF_SUSPEND = 0;
;	assignBit
	jbc	_UIF_SUSPEND,00188$
	ret
00188$:
;	tmk_core/protocol/ch554/usb_handler.c:501: if(!(USB_MIS_ST & bUMS_SUSPEND)) USB_INT_FG = 0x1f; // clear interrupt flag
	mov	a,_USB_MIS_ST
	jb	acc.2,00126$
	mov	_USB_INT_FG,#0x1f
00126$:
;	tmk_core/protocol/ch554/usb_handler.c:503: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
