;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (Linux)
;--------------------------------------------------------
	.module print
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar_
	.globl _print_set_sendchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_func:
	.ds 2
_print_set_sendchar_send_65536_6:
	.ds 2
_putchar__character_65536_8:
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
;	quantum/logging/print.c:25: static sendchar_func_t func = null_sendchar_func;
	mov	r6,#_null_sendchar_func
	mov	r7,#(_null_sendchar_func >> 8)
	mov	dptr,#_func
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
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
;Allocation info for local variables in function 'null_sendchar_func'
;------------------------------------------------------------
;c                         Allocated with name '_null_sendchar_func_c_65536_4'
;------------------------------------------------------------
;	quantum/logging/print.c:22: static int8_t null_sendchar_func(uint8_t c) {
;	-----------------------------------------
;	 function null_sendchar_func
;	-----------------------------------------
_null_sendchar_func:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	quantum/logging/print.c:23: return 0;
	mov	dpl,#0x00
;	quantum/logging/print.c:24: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_set_sendchar'
;------------------------------------------------------------
;send                      Allocated with name '_print_set_sendchar_send_65536_6'
;------------------------------------------------------------
;	quantum/logging/print.c:27: void print_set_sendchar(sendchar_func_t send) {
;	-----------------------------------------
;	 function print_set_sendchar
;	-----------------------------------------
_print_set_sendchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_print_set_sendchar_send_65536_6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/logging/print.c:28: func = send;
	mov	dptr,#_print_set_sendchar_send_65536_6
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_func
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/logging/print.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar_'
;------------------------------------------------------------
;character                 Allocated with name '_putchar__character_65536_8'
;------------------------------------------------------------
;	quantum/logging/print.c:31: void putchar_(char character) {
;	-----------------------------------------
;	 function putchar_
;	-----------------------------------------
_putchar_:
	mov	a,dpl
	mov	dptr,#_putchar__character_65536_8
	movx	@dptr,a
;	quantum/logging/print.c:32: func(character);
	movx	a,@dptr
	mov	r7,a
	ljmp	00103$
00103$:
	mov	dptr,#_func
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r7
	ret
;	quantum/logging/print.c:33: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
