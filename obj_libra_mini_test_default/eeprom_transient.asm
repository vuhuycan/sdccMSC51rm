;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (Linux)
;--------------------------------------------------------
	.module eeprom_transient
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _clamp_length
	.globl ___memcpy
	.globl _memset
	.globl _eeprom_write_block_PARM_3
	.globl _eeprom_write_block_PARM_2
	.globl _eeprom_read_block_PARM_3
	.globl _eeprom_read_block_PARM_2
	.globl _clamp_length_PARM_2
	.globl _eeprom_driver_init
	.globl _eeprom_driver_erase
	.globl _eeprom_read_block
	.globl _eeprom_write_block
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
_eeprom_read_block_sloc0_1_0:
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_transientBuffer:
	.ds 40
_clamp_length_PARM_2:
	.ds 2
_clamp_length_offset_65536_92:
	.ds 4
_eeprom_read_block_PARM_2:
	.ds 3
_eeprom_read_block_PARM_3:
	.ds 2
_eeprom_read_block_buf_65536_99:
	.ds 3
_eeprom_write_block_PARM_2:
	.ds 3
_eeprom_write_block_PARM_3:
	.ds 2
_eeprom_write_block_buf_65536_102:
	.ds 3
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
;	drivers/eeprom/eeprom_transient.c:24: __attribute__((aligned(4))) static uint8_t transientBuffer[TRANSIENT_EEPROM_SIZE] = {0};
	mov	dptr,#_transientBuffer
	clr	a
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
;Allocation info for local variables in function 'clamp_length'
;------------------------------------------------------------
;len                       Allocated with name '_clamp_length_PARM_2'
;offset                    Allocated with name '_clamp_length_offset_65536_92'
;------------------------------------------------------------
;	drivers/eeprom/eeprom_transient.c:26: size_t clamp_length(intptr_t offset, size_t len) {
;	-----------------------------------------
;	 function clamp_length
;	-----------------------------------------
_clamp_length:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_clamp_length_offset_65536_92
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
;	drivers/eeprom/eeprom_transient.c:27: if (offset + len > TRANSIENT_EEPROM_SIZE) {
	mov	dptr,#_clamp_length_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_clamp_length_offset_65536_92
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar0,r6
	mov	ar1,r7
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r0
	add	a,r2
	mov	r0,a
	mov	a,r1
	addc	a,r3
	mov	r1,a
	mov	a,r6
	addc	a,r4
	mov	r6,a
	mov	a,r7
	addc	a,r5
	mov	r7,a
	clr	c
	mov	a,#0x28
	subb	a,r0
	clr	a
	subb	a,r1
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	drivers/eeprom/eeprom_transient.c:28: len = TRANSIENT_EEPROM_SIZE - offset;
	mov	dptr,#_clamp_length_PARM_2
	mov	a,#0x28
	clr	c
	subb	a,r2
	movx	@dptr,a
	clr	a
	subb	a,r3
	inc	dptr
	movx	@dptr,a
00102$:
;	drivers/eeprom/eeprom_transient.c:31: return len;
	mov	dptr,#_clamp_length_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	drivers/eeprom/eeprom_transient.c:32: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_driver_init'
;------------------------------------------------------------
;	drivers/eeprom/eeprom_transient.c:34: void eeprom_driver_init(void) {
;	-----------------------------------------
;	 function eeprom_driver_init
;	-----------------------------------------
_eeprom_driver_init:
;	drivers/eeprom/eeprom_transient.c:35: eeprom_driver_erase();
;	drivers/eeprom/eeprom_transient.c:36: }
	ljmp	_eeprom_driver_erase
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_driver_erase'
;------------------------------------------------------------
;	drivers/eeprom/eeprom_transient.c:38: void eeprom_driver_erase(void) {
;	-----------------------------------------
;	 function eeprom_driver_erase
;	-----------------------------------------
_eeprom_driver_erase:
;	drivers/eeprom/eeprom_transient.c:39: memset(transientBuffer, 0x00, TRANSIENT_EEPROM_SIZE);
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x28
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_transientBuffer
	mov	b,a
;	drivers/eeprom/eeprom_transient.c:40: }
	ljmp	_memset
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_read_block'
;------------------------------------------------------------
;sloc0                     Allocated with name '_eeprom_read_block_sloc0_1_0'
;addr                      Allocated with name '_eeprom_read_block_PARM_2'
;len                       Allocated with name '_eeprom_read_block_PARM_3'
;buf                       Allocated with name '_eeprom_read_block_buf_65536_99'
;offset                    Allocated with name '_eeprom_read_block_offset_65536_100'
;------------------------------------------------------------
;	drivers/eeprom/eeprom_transient.c:42: void eeprom_read_block(void *buf, const void *addr, size_t len) {
;	-----------------------------------------
;	 function eeprom_read_block
;	-----------------------------------------
_eeprom_read_block:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_eeprom_read_block_buf_65536_99
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	drivers/eeprom/eeprom_transient.c:43: intptr_t offset = (intptr_t)addr;
	mov	dptr,#_eeprom_read_block_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r7,#0x00
;	drivers/eeprom/eeprom_transient.c:44: memset(buf, 0x00, len);
	mov	dptr,#_eeprom_read_block_buf_65536_99
	movx	a,@dptr
	mov	_eeprom_read_block_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_eeprom_read_block_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_eeprom_read_block_sloc0_1_0 + 2),a
	mov	dptr,#_eeprom_read_block_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,_eeprom_read_block_sloc0_1_0
	mov	dph,(_eeprom_read_block_sloc0_1_0 + 1)
	mov	b,(_eeprom_read_block_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar0
	lcall	_memset
	pop	ar0
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	drivers/eeprom/eeprom_transient.c:45: len = clamp_length(offset, len);
	mov	dptr,#_clamp_length_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_clamp_length
	mov	_eeprom_read_block_sloc0_1_0,dpl
	mov	(_eeprom_read_block_sloc0_1_0 + 1),dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	drivers/eeprom/eeprom_transient.c:46: if (len > 0) {
	mov	a,_eeprom_read_block_sloc0_1_0
	orl	a,(_eeprom_read_block_sloc0_1_0 + 1)
	jz	00103$
;	drivers/eeprom/eeprom_transient.c:47: memcpy(buf, &transientBuffer[offset], len);
	mov	dptr,#_eeprom_read_block_buf_65536_99
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r5
	add	a,#_transientBuffer
	mov	r5,a
	mov	a,r6
	addc	a,#(_transientBuffer >> 8)
	mov	r6,a
	mov	dptr,#___memcpy_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,_eeprom_read_block_sloc0_1_0
	movx	@dptr,a
	mov	a,(_eeprom_read_block_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
;	drivers/eeprom/eeprom_transient.c:49: }
	ljmp	___memcpy
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_write_block'
;------------------------------------------------------------
;addr                      Allocated with name '_eeprom_write_block_PARM_2'
;len                       Allocated with name '_eeprom_write_block_PARM_3'
;buf                       Allocated with name '_eeprom_write_block_buf_65536_102'
;offset                    Allocated with name '_eeprom_write_block_offset_65536_103'
;------------------------------------------------------------
;	drivers/eeprom/eeprom_transient.c:51: void eeprom_write_block(const void *buf, void *addr, size_t len) {
;	-----------------------------------------
;	 function eeprom_write_block
;	-----------------------------------------
_eeprom_write_block:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_eeprom_write_block_buf_65536_102
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	drivers/eeprom/eeprom_transient.c:52: intptr_t offset = (intptr_t)addr;
	mov	dptr,#_eeprom_write_block_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r7,#0x00
;	drivers/eeprom/eeprom_transient.c:53: len             = clamp_length(offset, len);
	mov	dptr,#_eeprom_write_block_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_clamp_length_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_clamp_length
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	drivers/eeprom/eeprom_transient.c:54: if (len > 0) {
	mov	a,r2
	orl	a,r3
	jz	00103$
;	drivers/eeprom/eeprom_transient.c:55: memcpy(&transientBuffer[offset], buf, len);
	mov	a,r5
	add	a,#_transientBuffer
	mov	r5,a
	mov	a,r6
	addc	a,#(_transientBuffer >> 8)
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_eeprom_write_block_buf_65536_102
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#___memcpy_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	drivers/eeprom/eeprom_transient.c:57: }
	ljmp	___memcpy
00103$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
