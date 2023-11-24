;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (Linux)
;--------------------------------------------------------
	.module eeprom_driver
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _eeprom_write_block
	.globl _eeprom_read_block
	.globl _malloc
	.globl _memcmp
	.globl _eeprom_update_dword_PARM_2
	.globl _eeprom_update_word_PARM_2
	.globl _eeprom_update_byte_PARM_2
	.globl _eeprom_update_block_PARM_3
	.globl _eeprom_update_block_PARM_2
	.globl _eeprom_write_dword_PARM_2
	.globl _eeprom_write_word_PARM_2
	.globl _eeprom_write_byte_PARM_2
	.globl _eeprom_read_byte
	.globl _eeprom_read_word
	.globl _eeprom_read_dword
	.globl _eeprom_write_byte
	.globl _eeprom_write_word
	.globl _eeprom_write_dword
	.globl _eeprom_update_block
	.globl _eeprom_update_byte
	.globl _eeprom_update_word
	.globl _eeprom_update_dword
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
_eeprom_update_block_sloc0_1_0:
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
_eeprom_read_byte_addr_65536_92:
	.ds 3
_eeprom_read_byte_ret_65536_93:
	.ds 1
_eeprom_read_word_addr_65536_94:
	.ds 3
_eeprom_read_word_ret_65536_95:
	.ds 2
_eeprom_read_dword_addr_65536_96:
	.ds 3
_eeprom_read_dword_ret_65536_97:
	.ds 4
_eeprom_write_byte_PARM_2:
	.ds 1
_eeprom_write_byte_addr_65536_98:
	.ds 3
_eeprom_write_word_PARM_2:
	.ds 2
_eeprom_write_word_addr_65536_100:
	.ds 3
_eeprom_write_dword_PARM_2:
	.ds 4
_eeprom_write_dword_addr_65536_102:
	.ds 3
_eeprom_update_block_PARM_2:
	.ds 3
_eeprom_update_block_PARM_3:
	.ds 2
_eeprom_update_block_buf_65536_104:
	.ds 3
_eeprom_update_byte_PARM_2:
	.ds 1
_eeprom_update_byte_addr_65536_107:
	.ds 3
_eeprom_update_word_PARM_2:
	.ds 2
_eeprom_update_word_addr_65536_110:
	.ds 3
_eeprom_update_dword_PARM_2:
	.ds 4
_eeprom_update_dword_addr_65536_113:
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
;Allocation info for local variables in function 'eeprom_read_byte'
;------------------------------------------------------------
;addr                      Allocated with name '_eeprom_read_byte_addr_65536_92'
;ret                       Allocated with name '_eeprom_read_byte_ret_65536_93'
;------------------------------------------------------------
;	drivers/eeprom/eeprom_driver.c:22: uint8_t eeprom_read_byte(const uint8_t *addr) {
;	-----------------------------------------
;	 function eeprom_read_byte
;	-----------------------------------------
_eeprom_read_byte:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_eeprom_read_byte_addr_65536_92
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	drivers/eeprom/eeprom_driver.c:23: uint8_t ret = 0;
	mov	dptr,#_eeprom_read_byte_ret_65536_93
	clr	a
	movx	@dptr,a
;	drivers/eeprom/eeprom_driver.c:24: eeprom_read_block(&ret, addr, 1);
	mov	dptr,#_eeprom_read_byte_addr_65536_92
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_eeprom_read_block_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeprom_read_block_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeprom_read_byte_ret_65536_93
	mov	b,a
	lcall	_eeprom_read_block
;	drivers/eeprom/eeprom_driver.c:25: return ret;
	mov	dptr,#_eeprom_read_byte_ret_65536_93
	movx	a,@dptr
;	drivers/eeprom/eeprom_driver.c:26: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_read_word'
;------------------------------------------------------------
;addr                      Allocated with name '_eeprom_read_word_addr_65536_94'
;ret                       Allocated with name '_eeprom_read_word_ret_65536_95'
;------------------------------------------------------------
;	drivers/eeprom/eeprom_driver.c:28: uint16_t eeprom_read_word(const uint16_t *addr) {
;	-----------------------------------------
;	 function eeprom_read_word
;	-----------------------------------------
_eeprom_read_word:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_eeprom_read_word_addr_65536_94
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	drivers/eeprom/eeprom_driver.c:29: uint16_t ret = 0;
	mov	dptr,#_eeprom_read_word_ret_65536_95
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	drivers/eeprom/eeprom_driver.c:30: eeprom_read_block(&ret, addr, 2);
	mov	dptr,#_eeprom_read_word_addr_65536_94
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_eeprom_read_block_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeprom_read_block_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeprom_read_word_ret_65536_95
	mov	b,a
	lcall	_eeprom_read_block
;	drivers/eeprom/eeprom_driver.c:31: return ret;
	mov	dptr,#_eeprom_read_word_ret_65536_95
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	drivers/eeprom/eeprom_driver.c:32: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_read_dword'
;------------------------------------------------------------
;addr                      Allocated with name '_eeprom_read_dword_addr_65536_96'
;ret                       Allocated with name '_eeprom_read_dword_ret_65536_97'
;------------------------------------------------------------
;	drivers/eeprom/eeprom_driver.c:34: uint32_t eeprom_read_dword(const uint32_t *addr) {
;	-----------------------------------------
;	 function eeprom_read_dword
;	-----------------------------------------
_eeprom_read_dword:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_eeprom_read_dword_addr_65536_96
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	drivers/eeprom/eeprom_driver.c:35: uint32_t ret = 0;
	mov	dptr,#_eeprom_read_dword_ret_65536_97
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	drivers/eeprom/eeprom_driver.c:36: eeprom_read_block(&ret, addr, 4);
	mov	dptr,#_eeprom_read_dword_addr_65536_96
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_eeprom_read_block_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeprom_read_block_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeprom_read_dword_ret_65536_97
	mov	b,a
	lcall	_eeprom_read_block
;	drivers/eeprom/eeprom_driver.c:37: return ret;
	mov	dptr,#_eeprom_read_dword_ret_65536_97
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
;	drivers/eeprom/eeprom_driver.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_write_byte'
;------------------------------------------------------------
;value                     Allocated with name '_eeprom_write_byte_PARM_2'
;addr                      Allocated with name '_eeprom_write_byte_addr_65536_98'
;------------------------------------------------------------
;	drivers/eeprom/eeprom_driver.c:40: void eeprom_write_byte(uint8_t *addr, uint8_t value) {
;	-----------------------------------------
;	 function eeprom_write_byte
;	-----------------------------------------
_eeprom_write_byte:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_eeprom_write_byte_addr_65536_98
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	drivers/eeprom/eeprom_driver.c:41: eeprom_write_block(&value, addr, 1);
	mov	dptr,#_eeprom_write_byte_addr_65536_98
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_eeprom_write_block_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeprom_write_block_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeprom_write_byte_PARM_2
	mov	b,a
;	drivers/eeprom/eeprom_driver.c:42: }
	ljmp	_eeprom_write_block
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_write_word'
;------------------------------------------------------------
;value                     Allocated with name '_eeprom_write_word_PARM_2'
;addr                      Allocated with name '_eeprom_write_word_addr_65536_100'
;------------------------------------------------------------
;	drivers/eeprom/eeprom_driver.c:44: void eeprom_write_word(uint16_t *addr, uint16_t value) {
;	-----------------------------------------
;	 function eeprom_write_word
;	-----------------------------------------
_eeprom_write_word:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_eeprom_write_word_addr_65536_100
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	drivers/eeprom/eeprom_driver.c:45: eeprom_write_block(&value, addr, 2);
	mov	dptr,#_eeprom_write_word_addr_65536_100
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_eeprom_write_block_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeprom_write_block_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeprom_write_word_PARM_2
	mov	b,a
;	drivers/eeprom/eeprom_driver.c:46: }
	ljmp	_eeprom_write_block
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_write_dword'
;------------------------------------------------------------
;value                     Allocated with name '_eeprom_write_dword_PARM_2'
;addr                      Allocated with name '_eeprom_write_dword_addr_65536_102'
;------------------------------------------------------------
;	drivers/eeprom/eeprom_driver.c:48: void eeprom_write_dword(uint32_t *addr, uint32_t value) {
;	-----------------------------------------
;	 function eeprom_write_dword
;	-----------------------------------------
_eeprom_write_dword:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_eeprom_write_dword_addr_65536_102
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	drivers/eeprom/eeprom_driver.c:49: eeprom_write_block(&value, addr, 4);
	mov	dptr,#_eeprom_write_dword_addr_65536_102
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_eeprom_write_block_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeprom_write_block_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeprom_write_dword_PARM_2
	mov	b,a
;	drivers/eeprom/eeprom_driver.c:50: }
	ljmp	_eeprom_write_block
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_update_block'
;------------------------------------------------------------
;sloc0                     Allocated with name '_eeprom_update_block_sloc0_1_0'
;addr                      Allocated with name '_eeprom_update_block_PARM_2'
;len                       Allocated with name '_eeprom_update_block_PARM_3'
;buf                       Allocated with name '_eeprom_update_block_buf_65536_104'
;read_buf                  Allocated with name '_eeprom_update_block_read_buf_65536_105'
;------------------------------------------------------------
;	drivers/eeprom/eeprom_driver.c:52: void eeprom_update_block(const void *buf, void *addr, size_t len) {
;	-----------------------------------------
;	 function eeprom_update_block
;	-----------------------------------------
_eeprom_update_block:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_eeprom_update_block_buf_65536_104
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	drivers/eeprom/eeprom_driver.c:54: uint8_t *read_buf = (uint8_t *) malloc(len*sizeof(uint8_t));
	mov	dptr,#_eeprom_update_block_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	r3,#0x00
;	drivers/eeprom/eeprom_driver.c:55: eeprom_read_block(read_buf, addr, len);
	mov	ar0,r4
	mov	ar1,r5
	mov	ar2,r3
	mov	_eeprom_update_block_sloc0_1_0,r0
	mov	(_eeprom_update_block_sloc0_1_0 + 1),r1
	mov	(_eeprom_update_block_sloc0_1_0 + 2),r2
	mov	dptr,#_eeprom_update_block_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_eeprom_read_block_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeprom_read_block_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_eeprom_update_block_sloc0_1_0
	mov	dph,(_eeprom_update_block_sloc0_1_0 + 1)
	mov	b,(_eeprom_update_block_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_eeprom_read_block
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	drivers/eeprom/eeprom_driver.c:56: if (memcmp(buf, read_buf, len) != 0) {
	mov	dptr,#_eeprom_update_block_buf_65536_104
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_memcmp_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcmp_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	push	ar7
	push	ar6
	lcall	_memcmp
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00103$
;	drivers/eeprom/eeprom_driver.c:57: eeprom_write_block(buf, addr, len);
	mov	dptr,#_eeprom_update_block_buf_65536_104
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_eeprom_update_block_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_eeprom_write_block_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_eeprom_write_block_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
;	drivers/eeprom/eeprom_driver.c:59: }
	ljmp	_eeprom_write_block
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_update_byte'
;------------------------------------------------------------
;value                     Allocated with name '_eeprom_update_byte_PARM_2'
;addr                      Allocated with name '_eeprom_update_byte_addr_65536_107'
;orig                      Allocated with name '_eeprom_update_byte_orig_65536_108'
;------------------------------------------------------------
;	drivers/eeprom/eeprom_driver.c:61: void eeprom_update_byte(uint8_t *addr, uint8_t value) {
;	-----------------------------------------
;	 function eeprom_update_byte
;	-----------------------------------------
_eeprom_update_byte:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_eeprom_update_byte_addr_65536_107
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	drivers/eeprom/eeprom_driver.c:62: uint8_t orig = eeprom_read_byte(addr);
	mov	dptr,#_eeprom_update_byte_addr_65536_107
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
	lcall	_eeprom_read_byte
	mov	r7,dpl
;	drivers/eeprom/eeprom_driver.c:63: if (orig != value) {
	mov	dptr,#_eeprom_update_byte_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00109$
	ret
00109$:
;	drivers/eeprom/eeprom_driver.c:64: eeprom_write_byte(addr, value);
	mov	dptr,#_eeprom_update_byte_addr_65536_107
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_eeprom_write_byte_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
;	drivers/eeprom/eeprom_driver.c:66: }
	ljmp	_eeprom_write_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_update_word'
;------------------------------------------------------------
;value                     Allocated with name '_eeprom_update_word_PARM_2'
;addr                      Allocated with name '_eeprom_update_word_addr_65536_110'
;orig                      Allocated with name '_eeprom_update_word_orig_65536_111'
;------------------------------------------------------------
;	drivers/eeprom/eeprom_driver.c:68: void eeprom_update_word(uint16_t *addr, uint16_t value) {
;	-----------------------------------------
;	 function eeprom_update_word
;	-----------------------------------------
_eeprom_update_word:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_eeprom_update_word_addr_65536_110
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	drivers/eeprom/eeprom_driver.c:69: uint16_t orig = eeprom_read_word(addr);
	mov	dptr,#_eeprom_update_word_addr_65536_110
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
	lcall	_eeprom_read_word
	mov	r6,dpl
	mov	r7,dph
;	drivers/eeprom/eeprom_driver.c:70: if (orig != value) {
	mov	dptr,#_eeprom_update_word_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00109$
	mov	a,r7
	cjne	a,ar5,00109$
	ret
00109$:
;	drivers/eeprom/eeprom_driver.c:71: eeprom_write_word(addr, value);
	mov	dptr,#_eeprom_update_word_addr_65536_110
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_eeprom_write_word_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
;	drivers/eeprom/eeprom_driver.c:73: }
	ljmp	_eeprom_write_word
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_update_dword'
;------------------------------------------------------------
;value                     Allocated with name '_eeprom_update_dword_PARM_2'
;addr                      Allocated with name '_eeprom_update_dword_addr_65536_113'
;orig                      Allocated with name '_eeprom_update_dword_orig_65536_114'
;------------------------------------------------------------
;	drivers/eeprom/eeprom_driver.c:75: void eeprom_update_dword(uint32_t *addr, uint32_t value) {
;	-----------------------------------------
;	 function eeprom_update_dword
;	-----------------------------------------
_eeprom_update_dword:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_eeprom_update_dword_addr_65536_113
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	drivers/eeprom/eeprom_driver.c:76: uint32_t orig = eeprom_read_dword(addr);
	mov	dptr,#_eeprom_update_dword_addr_65536_113
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
	lcall	_eeprom_read_dword
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	drivers/eeprom/eeprom_driver.c:77: if (orig != value) {
	mov	dptr,#_eeprom_update_dword_PARM_2
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
	mov	a,r4
	cjne	a,ar0,00109$
	mov	a,r5
	cjne	a,ar1,00109$
	mov	a,r6
	cjne	a,ar2,00109$
	mov	a,r7
	cjne	a,ar3,00109$
	ret
00109$:
;	drivers/eeprom/eeprom_driver.c:78: eeprom_write_dword(addr, value);
	mov	dptr,#_eeprom_update_dword_addr_65536_113
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_eeprom_write_dword_PARM_2
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	drivers/eeprom/eeprom_driver.c:80: }
	ljmp	_eeprom_write_dword
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
