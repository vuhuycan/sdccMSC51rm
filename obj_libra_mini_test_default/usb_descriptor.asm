;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (Linux)
;--------------------------------------------------------
	.module usb_descriptor
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ProductString
	.globl _ManufacturerString
	.globl _LanguageString
	.globl _ConfigurationDescriptor
	.globl _DeviceDescriptor
	.globl _KeyboardReport
	.globl _get_usb_descriptor_PARM_4
	.globl _get_usb_descriptor_PARM_3
	.globl _get_usb_descriptor_PARM_2
	.globl _get_usb_descriptor
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
_KEYCODE2SYSTEM_key_65536_10:
	.ds 1
_KEYCODE2CONSUMER_key_65536_13:
	.ds 1
_get_usb_descriptor_PARM_2:
	.ds 2
_get_usb_descriptor_PARM_3:
	.ds 2
_get_usb_descriptor_PARM_4:
	.ds 3
_get_usb_descriptor_wValue_65536_57:
	.ds 2
_get_usb_descriptor_Address_65536_58:
	.ds 3
_get_usb_descriptor_Size_65536_58:
	.ds 2
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
;key                       Allocated with name '_KEYCODE2SYSTEM_key_65536_10'
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
	mov	dptr,#_KEYCODE2SYSTEM_key_65536_10
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
;key                       Allocated with name '_KEYCODE2CONSUMER_key_65536_13'
;------------------------------------------------------------
;	tmk_core/protocol/report.h:276: static inline uint16_t KEYCODE2CONSUMER(uint8_t key) {
;	-----------------------------------------
;	 function KEYCODE2CONSUMER
;	-----------------------------------------
_KEYCODE2CONSUMER:
	mov	a,dpl
	mov	dptr,#_KEYCODE2CONSUMER_key_65536_13
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
;Allocation info for local variables in function 'get_usb_descriptor'
;------------------------------------------------------------
;wIndex                    Allocated with name '_get_usb_descriptor_PARM_2'
;wLength                   Allocated with name '_get_usb_descriptor_PARM_3'
;DescriptorAddress         Allocated with name '_get_usb_descriptor_PARM_4'
;wValue                    Allocated with name '_get_usb_descriptor_wValue_65536_57'
;DescriptorType            Allocated with name '_get_usb_descriptor_DescriptorType_65536_58'
;DescriptorIndex           Allocated with name '_get_usb_descriptor_DescriptorIndex_65536_58'
;Address                   Allocated with name '_get_usb_descriptor_Address_65536_58'
;Size                      Allocated with name '_get_usb_descriptor_Size_65536_58'
;------------------------------------------------------------
;	tmk_core/protocol/usb_descriptor.c:1101: uint16_t get_usb_descriptor(const uint16_t wValue, const uint16_t wIndex, const uint16_t wLength, const void** const DescriptorAddress) {
;	-----------------------------------------
;	 function get_usb_descriptor
;	-----------------------------------------
_get_usb_descriptor:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_get_usb_descriptor_wValue_65536_57
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1102: const uint8_t DescriptorType  = (wValue >> 8);
	mov	dptr,#_get_usb_descriptor_wValue_65536_57
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
;	tmk_core/protocol/usb_descriptor.c:1103: const uint8_t DescriptorIndex = (wValue & 0xFF);
;	tmk_core/protocol/usb_descriptor.c:1104: const void*   Address         = NULL;
	mov	dptr,#_get_usb_descriptor_Address_65536_58
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1105: uint16_t      Size            = NO_DESCRIPTOR;
	mov	dptr,#_get_usb_descriptor_Size_65536_58
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1107: switch (DescriptorType) {
	cjne	r5,#0x01,00157$
	sjmp	00101$
00157$:
	cjne	r5,#0x02,00158$
	sjmp	00102$
00158$:
	cjne	r5,#0x03,00159$
	sjmp	00103$
00159$:
	cjne	r5,#0x21,00160$
	ljmp	00108$
00160$:
	cjne	r5,#0x22,00161$
	ljmp	00111$
00161$:
	ljmp	00114$
;	tmk_core/protocol/usb_descriptor.c:1108: case DTYPE_Device:
00101$:
;	tmk_core/protocol/usb_descriptor.c:1109: Address = &DeviceDescriptor;
	mov	dptr,#_get_usb_descriptor_Address_65536_58
	mov	a,#_DeviceDescriptor
	movx	@dptr,a
	mov	a,#(_DeviceDescriptor >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1110: Size    = sizeof(USB_Descriptor_Device_t);
	mov	dptr,#_get_usb_descriptor_Size_65536_58
	mov	a,#0x12
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1112: break;
	ljmp	00114$
;	tmk_core/protocol/usb_descriptor.c:1113: case DTYPE_Configuration:
00102$:
;	tmk_core/protocol/usb_descriptor.c:1114: Address = &ConfigurationDescriptor;
	mov	dptr,#_get_usb_descriptor_Address_65536_58
	mov	a,#_ConfigurationDescriptor
	movx	@dptr,a
	mov	a,#(_ConfigurationDescriptor >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1115: Size    = sizeof(USB_Descriptor_Configuration_t);
	mov	dptr,#_get_usb_descriptor_Size_65536_58
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1117: break;
	ljmp	00114$
;	tmk_core/protocol/usb_descriptor.c:1118: case DTYPE_String:
00103$:
;	tmk_core/protocol/usb_descriptor.c:1119: switch (DescriptorIndex) {
	cjne	r6,#0x00,00162$
	sjmp	00104$
00162$:
	cjne	r6,#0x01,00163$
	sjmp	00105$
00163$:
	cjne	r6,#0x02,00164$
	sjmp	00106$
00164$:
	ljmp	00114$
;	tmk_core/protocol/usb_descriptor.c:1120: case 0x00:
00104$:
;	tmk_core/protocol/usb_descriptor.c:1121: Address = &LanguageString;
	mov	dptr,#_get_usb_descriptor_Address_65536_58
	mov	a,#_LanguageString
	movx	@dptr,a
	mov	a,#(_LanguageString >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1122: Size    = pgm_read_byte(&LanguageString.Header.Size);
	mov	dptr,#_LanguageString
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_get_usb_descriptor_Size_65536_58
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1124: break;
	ljmp	00114$
;	tmk_core/protocol/usb_descriptor.c:1125: case 0x01:
00105$:
;	tmk_core/protocol/usb_descriptor.c:1126: Address = &ManufacturerString;
	mov	dptr,#_get_usb_descriptor_Address_65536_58
	mov	a,#_ManufacturerString
	movx	@dptr,a
	mov	a,#(_ManufacturerString >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1127: Size    = pgm_read_byte(&ManufacturerString.Header.Size);
	mov	dptr,#_ManufacturerString
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_get_usb_descriptor_Size_65536_58
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1129: break;
;	tmk_core/protocol/usb_descriptor.c:1130: case 0x02:
	sjmp	00114$
00106$:
;	tmk_core/protocol/usb_descriptor.c:1131: Address = &ProductString;
	mov	dptr,#_get_usb_descriptor_Address_65536_58
	mov	a,#_ProductString
	movx	@dptr,a
	mov	a,#(_ProductString >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1132: Size    = pgm_read_byte(&ProductString.Header.Size);
	mov	dptr,#_ProductString
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_get_usb_descriptor_Size_65536_58
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1147: break;
;	tmk_core/protocol/usb_descriptor.c:1148: case HID_DTYPE_HID:
	sjmp	00114$
00108$:
;	tmk_core/protocol/usb_descriptor.c:1149: switch (wIndex) {
	mov	dptr,#_get_usb_descriptor_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x00,00114$
	cjne	r7,#0x00,00114$
;	tmk_core/protocol/usb_descriptor.c:1152: Address = &ConfigurationDescriptor.Keyboard_HID;
	mov	dptr,#_get_usb_descriptor_Address_65536_58
	mov	a,#(_ConfigurationDescriptor + 0x0012)
	movx	@dptr,a
	mov	a,#((_ConfigurationDescriptor + 0x0012) >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1153: Size    = sizeof(USB_HID_Descriptor_HID_t);
	mov	dptr,#_get_usb_descriptor_Size_65536_58
	mov	a,#0x09
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1203: break;
;	tmk_core/protocol/usb_descriptor.c:1204: case HID_DTYPE_Report:
	sjmp	00114$
00111$:
;	tmk_core/protocol/usb_descriptor.c:1205: switch (wIndex) {
	mov	dptr,#_get_usb_descriptor_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x00,00114$
	cjne	r7,#0x00,00114$
;	tmk_core/protocol/usb_descriptor.c:1208: Address = &KeyboardReport;
	mov	dptr,#_get_usb_descriptor_Address_65536_58
	mov	a,#_KeyboardReport
	movx	@dptr,a
	mov	a,#(_KeyboardReport >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1209: Size    = sizeof(KeyboardReport);
	mov	dptr,#_get_usb_descriptor_Size_65536_58
	mov	a,#0x44
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	tmk_core/protocol/usb_descriptor.c:1260: }
00114$:
;	tmk_core/protocol/usb_descriptor.c:1262: *DescriptorAddress = Address;
	mov	dptr,#_get_usb_descriptor_PARM_4
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_usb_descriptor_Address_65536_58
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	tmk_core/protocol/usb_descriptor.c:1264: return Size;
	mov	dptr,#_get_usb_descriptor_Size_65536_58
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	tmk_core/protocol/usb_descriptor.c:1265: }
	mov	dpl,r6
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_KeyboardReport:
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0xe0	; 224
	.db #0x29	; 41
	.db #0xe7	; 231
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x08	; 8
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0xff	; 255
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x95	; 149
	.db #0x06	; 6
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x05	; 5
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x05	; 5
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x91	; 145
	.db #0x02	; 2
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x03	; 3
	.db #0x91	; 145
	.db #0x01	; 1
	.db #0xc0	; 192
_DeviceDescriptor:
	.db #0x12	; 18
	.db #0x01	; 1
	.byte #0x00, #0x02	; 512
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.byte #0x4d, #0x4c	; 19533
	.byte #0x24, #0x4c	; 19492
	.byte #0x00, #0x02	; 512
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
_ConfigurationDescriptor:
	.db #0x09	; 9
	.db #0x02	; 2
	.byte #0x22, #0x00	; 34
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0xfa	; 250
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x21	; 33
	.byte #0x11, #0x01	; 273
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x22	; 34
	.byte #0x44, #0x00	; 68
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x81	; 129
	.db #0x03	; 3
	.byte #0x08, #0x00	; 8
	.db #0x01	; 1
_LanguageString:
	.db #0x04	; 4
	.db #0x03	; 3
	.byte #0x09, #0x04, #0x00, #0x00	; 1033
_ManufacturerString:
	.db #0x1c	; 28
	.db #0x03	; 3
	.byte 75,0,0,0
	.byte 65,0,0,0
	.byte 73,0,0,0
	.byte 83,0,0,0
	.byte 69,0,0,0
	.byte 82,0,0,0
	.byte 0,0,0,0
_ProductString:
	.db #0x2c	; 44
	.db #0x03	; 3
	.byte 76,0,0,0
	.byte 105,0,0,0
	.byte 98,0,0,0
	.byte 114,0,0,0
	.byte 97,0,0,0
	.byte 32,0,0,0
	.byte 77,0,0,0
	.byte 105,0,0,0
	.byte 110,0,0,0
	.byte 105,0,0,0
	.byte 0,0,0,0
	.area CABS    (ABS,CODE)
