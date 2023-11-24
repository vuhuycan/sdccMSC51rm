;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (Linux)
;--------------------------------------------------------
	.module keycode_config
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _keycode_config
	.globl _mod_config
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
_keycode_config_keycode_65536_23:
	.ds 2
_mod_config_mod_65536_48:
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
;Allocation info for local variables in function 'keycode_config'
;------------------------------------------------------------
;keycode                   Allocated with name '_keycode_config_keycode_65536_23'
;------------------------------------------------------------
;	quantum/keycode_config.c:25: __attribute__((weak)) uint16_t keycode_config(uint16_t keycode) {
;	-----------------------------------------
;	 function keycode_config
;	-----------------------------------------
_keycode_config:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_keycode_config_keycode_65536_23
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	quantum/keycode_config.c:26: switch (keycode) {
	mov	dptr,#_keycode_config_keycode_65536_23
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	cjne	r4,#0x29,00300$
	cjne	r5,#0x00,00300$
	ljmp	00148$
00300$:
	cjne	r4,#0x2a,00301$
	cjne	r5,#0x00,00301$
	ljmp	00157$
00301$:
	cjne	r4,#0x31,00302$
	cjne	r5,#0x00,00302$
	ljmp	00154$
00302$:
	cjne	r4,#0x35,00303$
	cjne	r5,#0x00,00303$
	ljmp	00145$
00303$:
	cjne	r4,#0x39,00304$
	cjne	r5,#0x00,00304$
	sjmp	00102$
00304$:
	cjne	r4,#0x82,00305$
	cjne	r5,#0x00,00305$
	sjmp	00102$
00305$:
	cjne	r4,#0xe0,00306$
	cjne	r5,#0x00,00306$
	sjmp	00109$
00306$:
	cjne	r4,#0xe2,00307$
	cjne	r5,#0x00,00307$
	ljmp	00116$
00307$:
	cjne	r4,#0xe3,00308$
	cjne	r5,#0x00,00308$
	ljmp	00121$
00308$:
	cjne	r4,#0xe4,00309$
	cjne	r5,#0x00,00309$
	ljmp	00128$
00309$:
	cjne	r4,#0xe6,00310$
	cjne	r5,#0x00,00310$
	ljmp	00133$
00310$:
	cjne	r4,#0xe7,00311$
	cjne	r5,#0x00,00311$
	ljmp	00138$
00311$:
	ljmp	00160$
;	quantum/keycode_config.c:28: case KC_LOCKING_CAPS_LOCK:
00102$:
;	quantum/keycode_config.c:29: if (keymap_config.swap_control_capslock || keymap_config.capslock_to_control) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jb	acc.0,00105$
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.1,00106$
00105$:
;	quantum/keycode_config.c:30: return KC_LEFT_CTRL;
	mov	dptr,#0x00e0
	ret
00106$:
;	quantum/keycode_config.c:31: } else if (keymap_config.swap_escape_capslock) {
	mov	dptr,#(_keymap_config + 0x0001)
	movx	a,@dptr
	jnb	acc.3,00107$
;	quantum/keycode_config.c:32: return KC_ESCAPE;
	mov	dptr,#0x0029
	ret
00107$:
;	quantum/keycode_config.c:34: return keycode;
	mov	dptr,#_keycode_config_keycode_65536_23
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	ret
;	quantum/keycode_config.c:35: case KC_LEFT_CTRL:
00109$:
;	quantum/keycode_config.c:36: if (keymap_config.swap_control_capslock) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.0,00111$
;	quantum/keycode_config.c:37: return KC_CAPS_LOCK;
	mov	dptr,#0x0039
	ret
00111$:
;	quantum/keycode_config.c:39: if (keymap_config.swap_lctl_lgui) {
	mov	dptr,#(_keymap_config + 0x0001)
	movx	a,@dptr
	jnb	acc.0,00115$
;	quantum/keycode_config.c:40: if (keymap_config.no_gui) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.4,00113$
;	quantum/keycode_config.c:41: return KC_NO;
	mov	dptr,#0x0000
	ret
00113$:
;	quantum/keycode_config.c:43: return KC_LEFT_GUI;
	mov	dptr,#0x00e3
	ret
00115$:
;	quantum/keycode_config.c:45: return KC_LEFT_CTRL;
	mov	dptr,#0x00e0
	ret
;	quantum/keycode_config.c:46: case KC_LEFT_ALT:
00116$:
;	quantum/keycode_config.c:47: if (keymap_config.swap_lalt_lgui) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.2,00120$
;	quantum/keycode_config.c:48: if (keymap_config.no_gui) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.4,00118$
;	quantum/keycode_config.c:49: return KC_NO;
	mov	dptr,#0x0000
	ret
00118$:
;	quantum/keycode_config.c:51: return KC_LEFT_GUI;
	mov	dptr,#0x00e3
	ret
00120$:
;	quantum/keycode_config.c:53: return KC_LEFT_ALT;
	mov	dptr,#0x00e2
	ret
;	quantum/keycode_config.c:54: case KC_LEFT_GUI:
00121$:
;	quantum/keycode_config.c:55: if (keymap_config.swap_lalt_lgui) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.2,00123$
;	quantum/keycode_config.c:56: return KC_LEFT_ALT;
	mov	dptr,#0x00e2
	ret
00123$:
;	quantum/keycode_config.c:58: if (keymap_config.swap_lctl_lgui) {
	mov	dptr,#(_keymap_config + 0x0001)
	movx	a,@dptr
	jnb	acc.0,00125$
;	quantum/keycode_config.c:59: return KC_LEFT_CTRL;
	mov	dptr,#0x00e0
	ret
00125$:
;	quantum/keycode_config.c:61: if (keymap_config.no_gui) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.4,00127$
;	quantum/keycode_config.c:62: return KC_NO;
	mov	dptr,#0x0000
	ret
00127$:
;	quantum/keycode_config.c:64: return KC_LEFT_GUI;
	mov	dptr,#0x00e3
	ret
;	quantum/keycode_config.c:65: case KC_RIGHT_CTRL:
00128$:
;	quantum/keycode_config.c:66: if (keymap_config.swap_rctl_rgui) {
	mov	dptr,#(_keymap_config + 0x0001)
	movx	a,@dptr
	jnb	acc.1,00132$
;	quantum/keycode_config.c:67: if (keymap_config.no_gui) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.4,00130$
;	quantum/keycode_config.c:68: return KC_NO;
	mov	dptr,#0x0000
	ret
00130$:
;	quantum/keycode_config.c:70: return KC_RIGHT_GUI;
	mov	dptr,#0x00e7
	ret
00132$:
;	quantum/keycode_config.c:72: return KC_RIGHT_CTRL;
	mov	dptr,#0x00e4
	ret
;	quantum/keycode_config.c:73: case KC_RIGHT_ALT:
00133$:
;	quantum/keycode_config.c:74: if (keymap_config.swap_ralt_rgui) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.3,00137$
;	quantum/keycode_config.c:75: if (keymap_config.no_gui) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.4,00135$
;	quantum/keycode_config.c:76: return KC_NO;
	mov	dptr,#0x0000
	ret
00135$:
;	quantum/keycode_config.c:78: return KC_RIGHT_GUI;
	mov	dptr,#0x00e7
	ret
00137$:
;	quantum/keycode_config.c:80: return KC_RIGHT_ALT;
	mov	dptr,#0x00e6
	ret
;	quantum/keycode_config.c:81: case KC_RIGHT_GUI:
00138$:
;	quantum/keycode_config.c:82: if (keymap_config.swap_ralt_rgui) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.3,00140$
;	quantum/keycode_config.c:83: return KC_RIGHT_ALT;
	mov	dptr,#0x00e6
	ret
00140$:
;	quantum/keycode_config.c:85: if (keymap_config.swap_rctl_rgui) {
	mov	dptr,#(_keymap_config + 0x0001)
	movx	a,@dptr
	jnb	acc.1,00142$
;	quantum/keycode_config.c:86: return KC_RIGHT_CTRL;
	mov	dptr,#0x00e4
	ret
00142$:
;	quantum/keycode_config.c:88: if (keymap_config.no_gui) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.4,00144$
;	quantum/keycode_config.c:89: return KC_NO;
	mov	dptr,#0x0000
	ret
00144$:
;	quantum/keycode_config.c:91: return KC_RIGHT_GUI;
	mov	dptr,#0x00e7
;	quantum/keycode_config.c:92: case KC_GRAVE:
	ret
00145$:
;	quantum/keycode_config.c:93: if (keymap_config.swap_grave_esc) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.5,00147$
;	quantum/keycode_config.c:94: return KC_ESCAPE;
	mov	dptr,#0x0029
	ret
00147$:
;	quantum/keycode_config.c:96: return KC_GRAVE;
	mov	dptr,#0x0035
;	quantum/keycode_config.c:97: case KC_ESCAPE:
	ret
00148$:
;	quantum/keycode_config.c:98: if (keymap_config.swap_grave_esc) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.5,00152$
;	quantum/keycode_config.c:99: return KC_GRAVE;
	mov	dptr,#0x0035
	ret
00152$:
;	quantum/keycode_config.c:100: } else if (keymap_config.swap_escape_capslock) {
	mov	dptr,#(_keymap_config + 0x0001)
	movx	a,@dptr
	jnb	acc.3,00153$
;	quantum/keycode_config.c:101: return KC_CAPS_LOCK;
	mov	dptr,#0x0039
	ret
00153$:
;	quantum/keycode_config.c:103: return KC_ESCAPE;
	mov	dptr,#0x0029
;	quantum/keycode_config.c:104: case KC_BACKSLASH:
	ret
00154$:
;	quantum/keycode_config.c:105: if (keymap_config.swap_backslash_backspace) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.6,00156$
;	quantum/keycode_config.c:106: return KC_BACKSPACE;
	mov	dptr,#0x002a
	ret
00156$:
;	quantum/keycode_config.c:108: return KC_BACKSLASH;
	mov	dptr,#0x0031
;	quantum/keycode_config.c:109: case KC_BACKSPACE:
	ret
00157$:
;	quantum/keycode_config.c:110: if (keymap_config.swap_backslash_backspace) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.6,00159$
;	quantum/keycode_config.c:111: return KC_BACKSLASH;
	mov	dptr,#0x0031
	ret
00159$:
;	quantum/keycode_config.c:113: return KC_BACKSPACE;
	mov	dptr,#0x002a
;	quantum/keycode_config.c:114: default:
	ret
00160$:
;	quantum/keycode_config.c:115: return keycode;
	mov	dpl,r6
	mov	dph,r7
;	quantum/keycode_config.c:116: }
;	quantum/keycode_config.c:117: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mod_config'
;------------------------------------------------------------
;mod                       Allocated with name '_mod_config_mod_65536_48'
;------------------------------------------------------------
;	quantum/keycode_config.c:125: __attribute__((weak)) uint8_t mod_config(uint8_t mod) {
;	-----------------------------------------
;	 function mod_config
;	-----------------------------------------
_mod_config:
	mov	a,dpl
	mov	dptr,#_mod_config_mod_65536_48
	movx	@dptr,a
;	quantum/keycode_config.c:130: if (keymap_config.swap_lalt_lgui) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.2,00104$
;	quantum/keycode_config.c:136: if (((mod & MOD_RALT) == MOD_LALT) ^ ((mod & MOD_RGUI) == MOD_LGUI)) {
	mov	dptr,#_mod_config_mod_65536_48
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	a,#0x14
	anl	a,r5
	mov	r3,a
	mov	r4,#0x00
	clr	a
	cjne	r3,#0x04,00158$
	cjne	r4,#0x00,00158$
	inc	a
00158$:
	mov	r3,a
	anl	ar5,#0x18
	mov	r6,#0x00
	clr	a
	cjne	r5,#0x08,00160$
	cjne	r6,#0x00,00160$
	inc	a
00160$:
	xrl	a,r3
	jz	00104$
;	quantum/keycode_config.c:137: mod ^= (MOD_LALT | MOD_LGUI);
	mov	dptr,#_mod_config_mod_65536_48
	mov	a,#0x0c
	xrl	a,r7
	movx	@dptr,a
00104$:
;	quantum/keycode_config.c:140: if (keymap_config.swap_ralt_rgui) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.3,00108$
;	quantum/keycode_config.c:141: if (((mod & MOD_RALT) == MOD_RALT) ^ ((mod & MOD_RGUI) == MOD_RGUI)) {
	mov	dptr,#_mod_config_mod_65536_48
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	a,#0x14
	anl	a,r5
	mov	r3,a
	mov	r4,#0x00
	clr	a
	cjne	r3,#0x14,00164$
	cjne	r4,#0x00,00164$
	inc	a
00164$:
	mov	r3,a
	anl	ar5,#0x18
	mov	r6,#0x00
	clr	a
	cjne	r5,#0x18,00166$
	cjne	r6,#0x00,00166$
	inc	a
00166$:
	xrl	a,r3
	jz	00108$
;	quantum/keycode_config.c:143: mod ^= (MOD_LALT | MOD_LGUI);
	mov	dptr,#_mod_config_mod_65536_48
	mov	a,#0x0c
	xrl	a,r7
	movx	@dptr,a
00108$:
;	quantum/keycode_config.c:146: if (keymap_config.swap_lctl_lgui) {
	mov	dptr,#(_keymap_config + 0x0001)
	movx	a,@dptr
	jnb	acc.0,00112$
;	quantum/keycode_config.c:148: if (((mod & MOD_RCTL) == MOD_LCTL) ^ ((mod & MOD_RGUI) == MOD_LGUI)) {
	mov	dptr,#_mod_config_mod_65536_48
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	a,#0x11
	anl	a,r5
	mov	r3,a
	mov	r4,#0x00
	cjne	r3,#0x01,00170$
	cjne	r4,#0x00,00170$
	mov	a,r3
	sjmp	00171$
00170$:
	clr	a
00171$:
	mov	r3,a
	anl	ar5,#0x18
	mov	r6,#0x00
	clr	a
	cjne	r5,#0x08,00172$
	cjne	r6,#0x00,00172$
	inc	a
00172$:
	xrl	a,r3
	jz	00112$
;	quantum/keycode_config.c:149: mod ^= (MOD_LCTL | MOD_LGUI);
	mov	dptr,#_mod_config_mod_65536_48
	mov	a,#0x09
	xrl	a,r7
	movx	@dptr,a
00112$:
;	quantum/keycode_config.c:152: if (keymap_config.swap_rctl_rgui) {
	mov	dptr,#(_keymap_config + 0x0001)
	movx	a,@dptr
	jnb	acc.1,00116$
;	quantum/keycode_config.c:153: if (((mod & MOD_RCTL) == MOD_RCTL) ^ ((mod & MOD_RGUI) == MOD_RGUI)) {
	mov	dptr,#_mod_config_mod_65536_48
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	a,#0x11
	anl	a,r5
	mov	r3,a
	mov	r4,#0x00
	clr	a
	cjne	r3,#0x11,00176$
	cjne	r4,#0x00,00176$
	inc	a
00176$:
	mov	r3,a
	anl	ar5,#0x18
	mov	r6,#0x00
	clr	a
	cjne	r5,#0x18,00178$
	cjne	r6,#0x00,00178$
	inc	a
00178$:
	xrl	a,r3
	jz	00116$
;	quantum/keycode_config.c:155: mod ^= (MOD_LCTL | MOD_LGUI);
	mov	dptr,#_mod_config_mod_65536_48
	mov	a,#0x09
	xrl	a,r7
	movx	@dptr,a
00116$:
;	quantum/keycode_config.c:158: if (keymap_config.no_gui) {
	mov	dptr,#_keymap_config
	movx	a,@dptr
	jnb	acc.4,00118$
;	quantum/keycode_config.c:159: mod &= ~MOD_LGUI;
	mov	dptr,#_mod_config_mod_65536_48
	movx	a,@dptr
	anl	acc,#0xf7
	movx	@dptr,a
;	quantum/keycode_config.c:160: mod &= ~MOD_RGUI;
	mov	dptr,#_mod_config_mod_65536_48
	movx	a,@dptr
	anl	acc,#0xe7
	movx	@dptr,a
00118$:
;	quantum/keycode_config.c:163: return mod;
	mov	dptr,#_mod_config_mod_65536_48
	movx	a,@dptr
;	quantum/keycode_config.c:164: }
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
