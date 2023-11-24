;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (Linux)
;--------------------------------------------------------
	.module report
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
	.globl _del_key_from_report_PARM_2
	.globl _add_key_to_report_PARM_2
	.globl _del_key_byte_PARM_2
	.globl _add_key_byte_PARM_2
	.globl _is_key_pressed_PARM_2
	.globl _has_anykey
	.globl _get_first_key
	.globl _is_key_pressed
	.globl _add_key_byte
	.globl _del_key_byte
	.globl _add_key_to_report
	.globl _del_key_from_report
	.globl _clear_keys_from_report
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
_is_key_pressed_sloc0_1_0:
	.ds 1
	.area	OSEG    (OVR,DATA)
_del_key_byte_sloc0_1_0:
	.ds 3
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
_KEYCODE2SYSTEM_key_65536_1:
	.ds 1
_KEYCODE2CONSUMER_key_65536_4:
	.ds 1
_has_anykey_keyboard_report_65536_103:
	.ds 3
_get_first_key_keyboard_report_65536_106:
	.ds 3
_is_key_pressed_PARM_2:
	.ds 1
_is_key_pressed_keyboard_report_65536_108:
	.ds 3
_add_key_byte_PARM_2:
	.ds 1
_add_key_byte_keyboard_report_65536_114:
	.ds 3
_add_key_byte_empty_65536_115:
	.ds 1
_del_key_byte_PARM_2:
	.ds 1
_del_key_byte_keyboard_report_65536_122:
	.ds 3
_add_key_to_report_PARM_2:
	.ds 1
_add_key_to_report_keyboard_report_65536_127:
	.ds 3
_del_key_from_report_PARM_2:
	.ds 1
_del_key_from_report_keyboard_report_65536_129:
	.ds 3
_clear_keys_from_report_keyboard_report_65536_131:
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
;Allocation info for local variables in function 'KEYCODE2SYSTEM'
;------------------------------------------------------------
;key                       Allocated with name '_KEYCODE2SYSTEM_key_65536_1'
;------------------------------------------------------------
;	tmk_core/protocol/report.h:262: static inline uint16_t KEYCODE2SYSTEM(uint8_t key) {
;	-----------------------------------------
;	 function KEYCODE2SYSTEM
;	-----------------------------------------
_KEYCODE2SYSTEM:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_KEYCODE2SYSTEM_key_65536_1
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
;key                       Allocated with name '_KEYCODE2CONSUMER_key_65536_4'
;------------------------------------------------------------
;	tmk_core/protocol/report.h:276: static inline uint16_t KEYCODE2CONSUMER(uint8_t key) {
;	-----------------------------------------
;	 function KEYCODE2CONSUMER
;	-----------------------------------------
_KEYCODE2CONSUMER:
	mov	a,dpl
	mov	dptr,#_KEYCODE2CONSUMER_key_65536_4
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
;Allocation info for local variables in function 'has_anykey'
;------------------------------------------------------------
;keyboard_report           Allocated with name '_has_anykey_keyboard_report_65536_103'
;cnt                       Allocated with name '_has_anykey_cnt_65536_104'
;p                         Allocated with name '_has_anykey_p_65536_104'
;lp                        Allocated with name '_has_anykey_lp_65536_104'
;------------------------------------------------------------
;	tmk_core/protocol/report.c:39: uint8_t has_anykey(report_keyboard_t* keyboard_report) {
;	-----------------------------------------
;	 function has_anykey
;	-----------------------------------------
_has_anykey:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_has_anykey_keyboard_report_65536_103
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/report.c:41: uint8_t* p   = keyboard_report->keys;
	mov	dptr,#_has_anykey_keyboard_report_65536_103
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
;	tmk_core/protocol/report.c:49: while (lp--) {
	mov	r4,#0x06
	mov	r3,#0x00
00103$:
	mov	ar2,r4
	dec	r4
	mov	a,r2
	jz	00105$
;	tmk_core/protocol/report.c:50: if (*p++) cnt++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	a,r2
	jz	00103$
	inc	r3
	sjmp	00103$
00105$:
;	tmk_core/protocol/report.c:52: return cnt;
	mov	dpl,r3
;	tmk_core/protocol/report.c:53: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_first_key'
;------------------------------------------------------------
;keyboard_report           Allocated with name '_get_first_key_keyboard_report_65536_106'
;------------------------------------------------------------
;	tmk_core/protocol/report.c:59: uint8_t get_first_key(report_keyboard_t* keyboard_report) {
;	-----------------------------------------
;	 function get_first_key
;	-----------------------------------------
_get_first_key:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_get_first_key_keyboard_report_65536_106
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/report.c:78: return keyboard_report->keys[0];
	mov	dptr,#_get_first_key_keyboard_report_65536_106
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
;	tmk_core/protocol/report.c:80: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'is_key_pressed'
;------------------------------------------------------------
;key                       Allocated with name '_is_key_pressed_PARM_2'
;keyboard_report           Allocated with name '_is_key_pressed_keyboard_report_65536_108'
;i                         Allocated with name '_is_key_pressed_i_131072_111'
;sloc0                     Allocated with name '_is_key_pressed_sloc0_1_0'
;------------------------------------------------------------
;	tmk_core/protocol/report.c:87: bool is_key_pressed(report_keyboard_t* keyboard_report, uint8_t key) {
;	-----------------------------------------
;	 function is_key_pressed
;	-----------------------------------------
_is_key_pressed:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_is_key_pressed_keyboard_report_65536_108
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/report.c:88: if (key == KC_NO) {
	mov	dptr,#_is_key_pressed_PARM_2
	movx	a,@dptr
	mov	_is_key_pressed_sloc0_1_0,a
	movx	a,@dptr
;	tmk_core/protocol/report.c:89: return false;
	jnz	00114$
	mov	dpl,a
;	tmk_core/protocol/report.c:100: for (int i = 0; i < KEYBOARD_REPORT_KEYS; i++) {
	ret
00114$:
	mov	dptr,#_is_key_pressed_keyboard_report_65536_108
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	r2,#0x00
	mov	r3,#0x00
00107$:
	clr	c
	mov	a,r2
	subb	a,#0x06
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
;	tmk_core/protocol/report.c:101: if (keyboard_report->keys[i] == key) {
	mov	a,r2
	add	a,r4
	mov	r0,a
	mov	a,r3
	addc	a,r5
	mov	r1,a
	mov	ar7,r6
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	cjne	a,_is_key_pressed_sloc0_1_0,00108$
;	tmk_core/protocol/report.c:102: return true;
	mov	dpl,#0x01
	ret
00108$:
;	tmk_core/protocol/report.c:100: for (int i = 0; i < KEYBOARD_REPORT_KEYS; i++) {
	inc	r2
	cjne	r2,#0x00,00107$
	inc	r3
	sjmp	00107$
00105$:
;	tmk_core/protocol/report.c:105: return false;
	mov	dpl,#0x00
;	tmk_core/protocol/report.c:106: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'add_key_byte'
;------------------------------------------------------------
;code                      Allocated with name '_add_key_byte_PARM_2'
;keyboard_report           Allocated with name '_add_key_byte_keyboard_report_65536_114'
;i                         Allocated with name '_add_key_byte_i_65536_115'
;empty                     Allocated with name '_add_key_byte_empty_65536_115'
;------------------------------------------------------------
;	tmk_core/protocol/report.c:112: void add_key_byte(report_keyboard_t* keyboard_report, uint8_t code) {
;	-----------------------------------------
;	 function add_key_byte
;	-----------------------------------------
_add_key_byte:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_add_key_byte_keyboard_report_65536_114
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/report.c:158: int8_t empty = -1;
	mov	dptr,#_add_key_byte_empty_65536_115
	mov	a,#0xff
	movx	@dptr,a
;	tmk_core/protocol/report.c:173: }
	mov	dptr,#_add_key_byte_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
00112$:
;	tmk_core/protocol/report.c:159: for (; i < KEYBOARD_REPORT_KEYS; i++) {
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x86
	jnc	00106$
;	tmk_core/protocol/report.c:160: if (keyboard_report->keys[i] == code) {
	mov	dptr,#_add_key_byte_keyboard_report_65536_114
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x02
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	a,r6
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	cjne	a,ar7,00146$
	sjmp	00106$
00146$:
;	tmk_core/protocol/report.c:163: if (empty == -1 && keyboard_report->keys[i] == 0) {
	mov	dptr,#_add_key_byte_empty_65536_115
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0xff,00113$
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,r6
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	jnz	00113$
;	tmk_core/protocol/report.c:164: empty = i;
	mov	dptr,#_add_key_byte_empty_65536_115
	mov	a,r6
	movx	@dptr,a
00113$:
;	tmk_core/protocol/report.c:159: for (; i < KEYBOARD_REPORT_KEYS; i++) {
	inc	r6
	sjmp	00112$
00106$:
;	tmk_core/protocol/report.c:167: if (i == KEYBOARD_REPORT_KEYS) {
	cjne	r6,#0x06,00114$
;	tmk_core/protocol/report.c:168: if (empty != -1) {
	mov	dptr,#_add_key_byte_empty_65536_115
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0xff,00152$
	ret
00152$:
;	tmk_core/protocol/report.c:169: keyboard_report->keys[empty] = code;
	mov	dptr,#_add_key_byte_keyboard_report_65536_114
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,r6
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r7
;	tmk_core/protocol/report.c:173: }
	ljmp	__gptrput
00114$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'del_key_byte'
;------------------------------------------------------------
;code                      Allocated with name '_del_key_byte_PARM_2'
;keyboard_report           Allocated with name '_del_key_byte_keyboard_report_65536_122'
;i                         Allocated with name '_del_key_byte_i_131072_124'
;sloc0                     Allocated with name '_del_key_byte_sloc0_1_0'
;------------------------------------------------------------
;	tmk_core/protocol/report.c:179: void del_key_byte(report_keyboard_t* keyboard_report, uint8_t code) {
;	-----------------------------------------
;	 function del_key_byte
;	-----------------------------------------
_del_key_byte:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_del_key_byte_keyboard_report_65536_122
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/report.c:206: for (uint8_t i = 0; i < KEYBOARD_REPORT_KEYS; i++) {
	mov	dptr,#_del_key_byte_keyboard_report_65536_122
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	add	a,r5
	mov	_del_key_byte_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_del_key_byte_sloc0_1_0 + 1),a
	mov	(_del_key_byte_sloc0_1_0 + 2),r7
	mov	dptr,#_del_key_byte_PARM_2
	movx	a,@dptr
	mov	r1,a
	mov	r0,#0x00
00105$:
	cjne	r0,#0x06,00122$
00122$:
	jnc	00107$
;	tmk_core/protocol/report.c:207: if (keyboard_report->keys[i] == code) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,r0
	add	a,_del_key_byte_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_del_key_byte_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_del_key_byte_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	a,ar1,00124$
	sjmp	00125$
00124$:
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00106$
00125$:
	pop	ar7
	pop	ar6
	pop	ar5
;	tmk_core/protocol/report.c:208: keyboard_report->keys[i] = 0;
	push	ar1
	mov	a,#0x02
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,r0
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	tmk_core/protocol/report.c:206: for (uint8_t i = 0; i < KEYBOARD_REPORT_KEYS; i++) {
	pop	ar1
;	tmk_core/protocol/report.c:208: keyboard_report->keys[i] = 0;
00106$:
;	tmk_core/protocol/report.c:206: for (uint8_t i = 0; i < KEYBOARD_REPORT_KEYS; i++) {
	inc	r0
	sjmp	00105$
00107$:
;	tmk_core/protocol/report.c:212: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'add_key_to_report'
;------------------------------------------------------------
;key                       Allocated with name '_add_key_to_report_PARM_2'
;keyboard_report           Allocated with name '_add_key_to_report_keyboard_report_65536_127'
;------------------------------------------------------------
;	tmk_core/protocol/report.c:244: void add_key_to_report(report_keyboard_t* keyboard_report, uint8_t key) {
;	-----------------------------------------
;	 function add_key_to_report
;	-----------------------------------------
_add_key_to_report:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_add_key_to_report_keyboard_report_65536_127
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/report.c:251: add_key_byte(keyboard_report, key);
	mov	dptr,#_add_key_to_report_keyboard_report_65536_127
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_add_key_to_report_PARM_2
	movx	a,@dptr
	mov	dptr,#_add_key_byte_PARM_2
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	tmk_core/protocol/report.c:252: }
	ljmp	_add_key_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'del_key_from_report'
;------------------------------------------------------------
;key                       Allocated with name '_del_key_from_report_PARM_2'
;keyboard_report           Allocated with name '_del_key_from_report_keyboard_report_65536_129'
;------------------------------------------------------------
;	tmk_core/protocol/report.c:258: void del_key_from_report(report_keyboard_t* keyboard_report, uint8_t key) {
;	-----------------------------------------
;	 function del_key_from_report
;	-----------------------------------------
_del_key_from_report:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_del_key_from_report_keyboard_report_65536_129
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/report.c:265: del_key_byte(keyboard_report, key);
	mov	dptr,#_del_key_from_report_keyboard_report_65536_129
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_del_key_from_report_PARM_2
	movx	a,@dptr
	mov	dptr,#_del_key_byte_PARM_2
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	tmk_core/protocol/report.c:266: }
	ljmp	_del_key_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_keys_from_report'
;------------------------------------------------------------
;keyboard_report           Allocated with name '_clear_keys_from_report_keyboard_report_65536_131'
;------------------------------------------------------------
;	tmk_core/protocol/report.c:272: void clear_keys_from_report(report_keyboard_t* keyboard_report) {
;	-----------------------------------------
;	 function clear_keys_from_report
;	-----------------------------------------
_clear_keys_from_report:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_clear_keys_from_report_keyboard_report_65536_131
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/report.c:280: memset(keyboard_report->keys, 0, sizeof(keyboard_report->keys));
	mov	dptr,#_clear_keys_from_report_keyboard_report_65536_131
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	tmk_core/protocol/report.c:281: }
	ljmp	_memset
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
