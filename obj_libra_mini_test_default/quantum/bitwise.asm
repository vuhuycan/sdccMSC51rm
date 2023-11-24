;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (Linux)
;--------------------------------------------------------
	.module bitwise
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bitpop
	.globl _bitpop16
	.globl _bitpop32
	.globl _biton
	.globl _biton16
	.globl _biton32
	.globl _bitrev
	.globl _bitrev16
	.globl _bitrev32
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
	.area	OSEG    (OVR,DATA)
_bitpop32_sloc0_1_0:
	.ds 1
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
_bitpop_bits_65536_10:
	.ds 1
_bitpop16_bits_65536_13:
	.ds 2
_bitpop32_bits_65536_16:
	.ds 4
_biton_bits_65536_19:
	.ds 1
_biton_n_65536_20:
	.ds 1
_biton16_bits_65536_24:
	.ds 2
_biton16_n_65536_25:
	.ds 1
_biton32_bits_65536_30:
	.ds 4
_biton32_n_65536_31:
	.ds 1
_bitrev_bits_65536_37:
	.ds 1
_bitrev16_bits_65536_39:
	.ds 2
_bitrev32_bits_65536_41:
	.ds 4
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
;Allocation info for local variables in function 'bitpop'
;------------------------------------------------------------
;bits                      Allocated with name '_bitpop_bits_65536_10'
;c                         Allocated with name '_bitpop_c_65536_11'
;------------------------------------------------------------
;	quantum/bitwise.c:22: __attribute__((noinline)) uint8_t bitpop(uint8_t bits) {
;	-----------------------------------------
;	 function bitpop
;	-----------------------------------------
_bitpop:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_bitpop_bits_65536_10
	movx	@dptr,a
;	quantum/bitwise.c:24: for (c = 0; bits; c++)
	mov	r7,#0x00
00103$:
	mov	dptr,#_bitpop_bits_65536_10
	movx	a,@dptr
	mov	r6,a
	jz	00101$
;	quantum/bitwise.c:25: bits &= bits - 1;
	mov	ar5,r6
	mov	a,r5
	dec	a
	mov	dptr,#_bitpop_bits_65536_10
	anl	a,r6
	movx	@dptr,a
;	quantum/bitwise.c:24: for (c = 0; bits; c++)
	inc	r7
	sjmp	00103$
00101$:
;	quantum/bitwise.c:26: return c;
	mov	dpl,r7
;	quantum/bitwise.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bitpop16'
;------------------------------------------------------------
;bits                      Allocated with name '_bitpop16_bits_65536_13'
;c                         Allocated with name '_bitpop16_c_65536_14'
;------------------------------------------------------------
;	quantum/bitwise.c:33: uint8_t bitpop16(uint16_t bits) {
;	-----------------------------------------
;	 function bitpop16
;	-----------------------------------------
_bitpop16:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_bitpop16_bits_65536_13
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/bitwise.c:35: for (c = 0; bits; c++)
	mov	r7,#0x00
00103$:
	mov	dptr,#_bitpop16_bits_65536_13
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_bitpop16_bits_65536_13
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00101$
;	quantum/bitwise.c:36: bits &= bits - 1;
	mov	a,r5
	add	a,#0xff
	mov	r3,a
	mov	a,r6
	addc	a,#0xff
	mov	r4,a
	mov	a,r3
	anl	ar5,a
	mov	a,r4
	anl	ar6,a
	mov	dptr,#_bitpop16_bits_65536_13
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	quantum/bitwise.c:35: for (c = 0; bits; c++)
	inc	r7
	sjmp	00103$
00101$:
;	quantum/bitwise.c:37: return c;
	mov	dpl,r7
;	quantum/bitwise.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bitpop32'
;------------------------------------------------------------
;bits                      Allocated with name '_bitpop32_bits_65536_16'
;c                         Allocated with name '_bitpop32_c_65536_17'
;sloc0                     Allocated with name '_bitpop32_sloc0_1_0'
;------------------------------------------------------------
;	quantum/bitwise.c:40: uint8_t bitpop32(uint32_t bits) {
;	-----------------------------------------
;	 function bitpop32
;	-----------------------------------------
_bitpop32:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_bitpop32_bits_65536_16
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
;	quantum/bitwise.c:42: for (c = 0; bits; c++)
	mov	_bitpop32_sloc0_1_0,#0x00
00103$:
	mov	dptr,#_bitpop32_bits_65536_16
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	jz	00101$
;	quantum/bitwise.c:43: bits &= bits - 1;
	mov	a,r3
	add	a,#0xff
	mov	r0,a
	mov	a,r4
	addc	a,#0xff
	mov	r1,a
	mov	a,r5
	addc	a,#0xff
	mov	r2,a
	mov	a,r6
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_bitpop32_bits_65536_16
	mov	a,r0
	anl	a,r3
	movx	@dptr,a
	mov	a,r1
	anl	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	anl	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	anl	a,r6
	inc	dptr
	movx	@dptr,a
;	quantum/bitwise.c:42: for (c = 0; bits; c++)
	inc	_bitpop32_sloc0_1_0
	sjmp	00103$
00101$:
;	quantum/bitwise.c:44: return c;
	mov	dpl,_bitpop32_sloc0_1_0
;	quantum/bitwise.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'biton'
;------------------------------------------------------------
;bits                      Allocated with name '_biton_bits_65536_19'
;n                         Allocated with name '_biton_n_65536_20'
;------------------------------------------------------------
;	quantum/bitwise.c:49: __attribute__((noinline)) uint8_t biton(uint8_t bits) {
;	-----------------------------------------
;	 function biton
;	-----------------------------------------
_biton:
	mov	a,dpl
	mov	dptr,#_biton_bits_65536_19
	movx	@dptr,a
;	quantum/bitwise.c:50: uint8_t n = 0;
	mov	dptr,#_biton_n_65536_20
	clr	a
	movx	@dptr,a
;	quantum/bitwise.c:51: if (bits >> 4) {
	mov	dptr,#_biton_bits_65536_19
	movx	a,@dptr
	swap	a
	anl	a,#0x0f
	mov	r7,a
	jz	00102$
;	quantum/bitwise.c:52: bits >>= 4;
	mov	dptr,#_biton_bits_65536_19
	mov	a,r7
	movx	@dptr,a
;	quantum/bitwise.c:53: n += 4;
	mov	dptr,#_biton_n_65536_20
	mov	a,#0x04
	movx	@dptr,a
00102$:
;	quantum/bitwise.c:55: if (bits >> 2) {
	mov	dptr,#_biton_bits_65536_19
	movx	a,@dptr
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r7,a
	jz	00104$
;	quantum/bitwise.c:56: bits >>= 2;
	mov	dptr,#_biton_bits_65536_19
	mov	a,r7
	movx	@dptr,a
;	quantum/bitwise.c:57: n += 2;
	mov	dptr,#_biton_n_65536_20
	movx	a,@dptr
	mov	r7,a
	add	a,#0x02
	movx	@dptr,a
00104$:
;	quantum/bitwise.c:59: if (bits >> 1) {
	mov	dptr,#_biton_bits_65536_19
	movx	a,@dptr
	clr	c
	rrc	a
	mov	r7,a
	jz	00106$
;	quantum/bitwise.c:60: bits >>= 1;
	mov	dptr,#_biton_bits_65536_19
	mov	a,r7
	movx	@dptr,a
;	quantum/bitwise.c:61: n += 1;
	mov	dptr,#_biton_n_65536_20
	movx	a,@dptr
	mov	r7,a
	inc	a
	movx	@dptr,a
00106$:
;	quantum/bitwise.c:63: return n;
	mov	dptr,#_biton_n_65536_20
	movx	a,@dptr
;	quantum/bitwise.c:64: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'biton16'
;------------------------------------------------------------
;bits                      Allocated with name '_biton16_bits_65536_24'
;n                         Allocated with name '_biton16_n_65536_25'
;------------------------------------------------------------
;	quantum/bitwise.c:66: uint8_t biton16(uint16_t bits) {
;	-----------------------------------------
;	 function biton16
;	-----------------------------------------
_biton16:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_biton16_bits_65536_24
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/bitwise.c:67: uint8_t n = 0;
	mov	dptr,#_biton16_n_65536_25
	clr	a
	movx	@dptr,a
;	quantum/bitwise.c:68: if (bits >> 8) {
	mov	dptr,#_biton16_bits_65536_24
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	a,r6
	orl	a,r7
	jz	00102$
;	quantum/bitwise.c:69: bits >>= 8;
	mov	dptr,#_biton16_bits_65536_24
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/bitwise.c:70: n += 8;
	mov	dptr,#_biton16_n_65536_25
	mov	a,#0x08
	movx	@dptr,a
00102$:
;	quantum/bitwise.c:72: if (bits >> 4) {
	mov	dptr,#_biton16_bits_65536_24
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	orl	a,r6
	jz	00104$
;	quantum/bitwise.c:73: bits >>= 4;
	mov	dptr,#_biton16_bits_65536_24
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/bitwise.c:74: n += 4;
	mov	dptr,#_biton16_n_65536_25
	movx	a,@dptr
	mov	r7,a
	add	a,#0x04
	movx	@dptr,a
00104$:
;	quantum/bitwise.c:76: if (bits >> 2) {
	mov	dptr,#_biton16_bits_65536_24
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	orl	a,r6
	jz	00106$
;	quantum/bitwise.c:77: bits >>= 2;
	mov	dptr,#_biton16_bits_65536_24
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/bitwise.c:78: n += 2;
	mov	dptr,#_biton16_n_65536_25
	movx	a,@dptr
	mov	r7,a
	add	a,#0x02
	movx	@dptr,a
00106$:
;	quantum/bitwise.c:80: if (bits >> 1) {
	mov	dptr,#_biton16_bits_65536_24
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	orl	a,r6
	jz	00108$
;	quantum/bitwise.c:81: bits >>= 1;
	mov	dptr,#_biton16_bits_65536_24
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/bitwise.c:82: n += 1;
	mov	dptr,#_biton16_n_65536_25
	movx	a,@dptr
	mov	r7,a
	inc	a
	movx	@dptr,a
00108$:
;	quantum/bitwise.c:84: return n;
	mov	dptr,#_biton16_n_65536_25
	movx	a,@dptr
;	quantum/bitwise.c:85: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'biton32'
;------------------------------------------------------------
;bits                      Allocated with name '_biton32_bits_65536_30'
;n                         Allocated with name '_biton32_n_65536_31'
;------------------------------------------------------------
;	quantum/bitwise.c:87: uint8_t biton32(uint32_t bits) {
;	-----------------------------------------
;	 function biton32
;	-----------------------------------------
_biton32:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_biton32_bits_65536_30
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
;	quantum/bitwise.c:88: uint8_t n = 0;
	mov	dptr,#_biton32_n_65536_31
	clr	a
	movx	@dptr,a
;	quantum/bitwise.c:89: if (bits >> 16) {
	mov	dptr,#_biton32_bits_65536_30
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00102$
;	quantum/bitwise.c:90: bits >>= 16;
	mov	dptr,#_biton32_bits_65536_30
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
;	quantum/bitwise.c:91: n += 16;
	mov	dptr,#_biton32_n_65536_31
	mov	a,#0x10
	movx	@dptr,a
00102$:
;	quantum/bitwise.c:93: if (bits >> 8) {
	mov	dptr,#_biton32_bits_65536_30
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r5
	mov	ar5,r6
	mov	ar6,r7
	mov	r7,#0x00
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00104$
;	quantum/bitwise.c:94: bits >>= 8;
	mov	dptr,#_biton32_bits_65536_30
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
;	quantum/bitwise.c:95: n += 8;
	mov	dptr,#_biton32_n_65536_31
	movx	a,@dptr
	mov	r7,a
	add	a,#0x08
	movx	@dptr,a
00104$:
;	quantum/bitwise.c:97: if (bits >> 4) {
	mov	dptr,#_biton32_bits_65536_30
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
	mov	a,r5
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00106$
;	quantum/bitwise.c:98: bits >>= 4;
	mov	dptr,#_biton32_bits_65536_30
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
;	quantum/bitwise.c:99: n += 4;
	mov	dptr,#_biton32_n_65536_31
	movx	a,@dptr
	mov	r7,a
	add	a,#0x04
	movx	@dptr,a
00106$:
;	quantum/bitwise.c:101: if (bits >> 2) {
	mov	dptr,#_biton32_bits_65536_30
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
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00108$
;	quantum/bitwise.c:102: bits >>= 2;
	mov	dptr,#_biton32_bits_65536_30
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
;	quantum/bitwise.c:103: n += 2;
	mov	dptr,#_biton32_n_65536_31
	movx	a,@dptr
	mov	r7,a
	add	a,#0x02
	movx	@dptr,a
00108$:
;	quantum/bitwise.c:105: if (bits >> 1) {
	mov	dptr,#_biton32_bits_65536_30
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
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00110$
;	quantum/bitwise.c:106: bits >>= 1;
	mov	dptr,#_biton32_bits_65536_30
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
;	quantum/bitwise.c:107: n += 1;
	mov	dptr,#_biton32_n_65536_31
	movx	a,@dptr
	mov	r7,a
	inc	a
	movx	@dptr,a
00110$:
;	quantum/bitwise.c:109: return n;
	mov	dptr,#_biton32_n_65536_31
	movx	a,@dptr
;	quantum/bitwise.c:110: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bitrev'
;------------------------------------------------------------
;bits                      Allocated with name '_bitrev_bits_65536_37'
;------------------------------------------------------------
;	quantum/bitwise.c:112: __attribute__((noinline)) uint8_t bitrev(uint8_t bits) {
;	-----------------------------------------
;	 function bitrev
;	-----------------------------------------
_bitrev:
	mov	a,dpl
	mov	dptr,#_bitrev_bits_65536_37
	movx	@dptr,a
;	quantum/bitwise.c:113: bits = (bits & 0x0f) << 4 | (bits & 0xf0) >> 4;
	movx	a,@dptr
	mov	r7,a
	anl	a,#0x0f
	swap	a
	anl	a,#0xf0
	mov	r6,a
	anl	ar7,#0xf0
	clr	a
	swap	a
	xch	a,r7
	swap	a
	anl	a,#0x0f
	xrl	a,r7
	xch	a,r7
	anl	a,#0x0f
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	jnb	acc.3,00103$
	orl	a,#0xfffffff0
00103$:
	mov	dptr,#_bitrev_bits_65536_37
	mov	a,r7
	orl	a,r6
	movx	@dptr,a
;	quantum/bitwise.c:114: bits = (bits & 0b00110011) << 2 | (bits & 0b11001100) >> 2;
	movx	a,@dptr
	mov	r7,a
	anl	a,#0x33
	add	a,acc
	add	a,acc
	mov	r6,a
	anl	ar7,#0xcc
	clr	a
	mov	c,acc.7
	rrc	a
	xch	a,r7
	rrc	a
	xch	a,r7
	mov	c,acc.7
	rrc	a
	xch	a,r7
	rrc	a
	xch	a,r7
	mov	dptr,#_bitrev_bits_65536_37
	mov	a,r7
	orl	a,r6
	movx	@dptr,a
;	quantum/bitwise.c:115: bits = (bits & 0b01010101) << 1 | (bits & 0b10101010) >> 1;
	movx	a,@dptr
	mov	r7,a
	anl	a,#0x55
	add	a,acc
	mov	r6,a
	anl	ar7,#0xaa
	clr	a
	mov	c,acc.7
	rrc	a
	xch	a,r7
	rrc	a
	xch	a,r7
	mov	dptr,#_bitrev_bits_65536_37
	mov	a,r7
	orl	a,r6
	movx	@dptr,a
;	quantum/bitwise.c:116: return bits;
	movx	a,@dptr
;	quantum/bitwise.c:117: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bitrev16'
;------------------------------------------------------------
;bits                      Allocated with name '_bitrev16_bits_65536_39'
;------------------------------------------------------------
;	quantum/bitwise.c:119: uint16_t bitrev16(uint16_t bits) {
;	-----------------------------------------
;	 function bitrev16
;	-----------------------------------------
_bitrev16:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_bitrev16_bits_65536_39
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/bitwise.c:120: bits = bitrev(bits & 0x00ff) << 8 | bitrev((bits & 0xff00) >> 8);
	mov	dptr,#_bitrev16_bits_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r6
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_bitrev
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	ar4,r5
	mov	r5,#0x00
	mov	ar6,r7
	mov	dpl,r6
	push	ar5
	push	ar4
	lcall	_bitrev
	mov	r7,dpl
	pop	ar4
	pop	ar5
	mov	r6,#0x00
	mov	a,r7
	orl	ar5,a
	mov	a,r6
	orl	ar4,a
	mov	dptr,#_bitrev16_bits_65536_39
	mov	a,r5
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	quantum/bitwise.c:121: return bits;
	mov	dpl,r5
	mov	dph,r4
;	quantum/bitwise.c:122: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bitrev32'
;------------------------------------------------------------
;bits                      Allocated with name '_bitrev32_bits_65536_41'
;------------------------------------------------------------
;	quantum/bitwise.c:124: uint32_t bitrev32(uint32_t bits) {
;	-----------------------------------------
;	 function bitrev32
;	-----------------------------------------
_bitrev32:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_bitrev32_bits_65536_41
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
;	quantum/bitwise.c:125: bits = (uint32_t)bitrev16(bits & 0x0000ffff) << 16 | bitrev16((bits & 0xffff0000) >> 16);
	mov	dptr,#_bitrev32_bits_65536_41
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
	mov	ar2,r4
	mov	ar3,r5
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_bitrev16
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	ar0,r2
	mov	ar1,r3
	mov	ar3,r1
	mov	ar2,r0
	mov	r0,#0x00
	mov	r1,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	dpl,r4
	mov	dph,r5
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_bitrev16
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	clr	a
	mov	r5,a
	mov	r4,a
	mov	a,r6
	orl	ar0,a
	mov	a,r7
	orl	ar1,a
	mov	a,r5
	orl	ar2,a
	mov	a,r4
	orl	ar3,a
	mov	dptr,#_bitrev32_bits_65536_41
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
;	quantum/bitwise.c:126: return bits;
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
;	quantum/bitwise.c:127: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
