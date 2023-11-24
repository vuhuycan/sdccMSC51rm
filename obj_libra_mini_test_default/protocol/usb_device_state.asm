;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (Linux)
;--------------------------------------------------------
	.module usb_device_state
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _usb_device_state_set_resume_PARM_2
	.globl _usb_device_state_set_suspend_PARM_2
	.globl _usb_device_state_set_configuration_PARM_2
	.globl _usb_device_state
	.globl _notify_usb_device_state_change_kb
	.globl _notify_usb_device_state_change_user
	.globl _usb_device_state_set_configuration
	.globl _usb_device_state_set_suspend
	.globl _usb_device_state_set_resume
	.globl _usb_device_state_set_reset
	.globl _usb_device_state_init
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
_usb_device_state::
	.ds 1
_notify_usb_device_state_change_kb_usb_device_state_65536_8:
	.ds 1
_notify_usb_device_state_change_usb_device_state_65536_13:
	.ds 1
_usb_device_state_set_configuration_PARM_2:
	.ds 1
_usb_device_state_set_configuration_isConfigured_65536_15:
	.ds 1
_usb_device_state_set_suspend_PARM_2:
	.ds 1
_usb_device_state_set_resume_PARM_2:
	.ds 1
_usb_device_state_set_resume_isConfigured_65536_19:
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
;	tmk_core/protocol/usb_device_state.c:24: enum usb_device_state usb_device_state = USB_DEVICE_STATE_NO_INIT;
	mov	dptr,#_usb_device_state
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
;Allocation info for local variables in function 'notify_usb_device_state_change_kb'
;------------------------------------------------------------
;usb_device_state          Allocated with name '_notify_usb_device_state_change_kb_usb_device_state_65536_8'
;------------------------------------------------------------
;	tmk_core/protocol/usb_device_state.c:26: __attribute__((weak)) void notify_usb_device_state_change_kb(enum usb_device_state usb_device_state) {
;	-----------------------------------------
;	 function notify_usb_device_state_change_kb
;	-----------------------------------------
_notify_usb_device_state_change_kb:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_notify_usb_device_state_change_kb_usb_device_state_65536_8
	movx	@dptr,a
;	tmk_core/protocol/usb_device_state.c:27: notify_usb_device_state_change_user(usb_device_state);
	movx	a,@dptr
	mov	dpl,a
;	tmk_core/protocol/usb_device_state.c:28: }
	ljmp	_notify_usb_device_state_change_user
;------------------------------------------------------------
;Allocation info for local variables in function 'notify_usb_device_state_change_user'
;------------------------------------------------------------
;usb_device_state          Allocated with name '_notify_usb_device_state_change_user_usb_device_state_65536_10'
;------------------------------------------------------------
;	tmk_core/protocol/usb_device_state.c:30: __attribute__((weak)) void notify_usb_device_state_change_user(enum usb_device_state usb_device_state) {}
;	-----------------------------------------
;	 function notify_usb_device_state_change_user
;	-----------------------------------------
_notify_usb_device_state_change_user:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'notify_usb_device_state_change'
;------------------------------------------------------------
;usb_device_state          Allocated with name '_notify_usb_device_state_change_usb_device_state_65536_13'
;------------------------------------------------------------
;	tmk_core/protocol/usb_device_state.c:32: static void notify_usb_device_state_change(enum usb_device_state usb_device_state) {
;	-----------------------------------------
;	 function notify_usb_device_state_change
;	-----------------------------------------
_notify_usb_device_state_change:
	mov	a,dpl
	mov	dptr,#_notify_usb_device_state_change_usb_device_state_65536_13
	movx	@dptr,a
;	tmk_core/protocol/usb_device_state.c:36: notify_usb_device_state_change_kb(usb_device_state);
	movx	a,@dptr
	mov	dpl,a
;	tmk_core/protocol/usb_device_state.c:37: }
	ljmp	_notify_usb_device_state_change_kb
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_device_state_set_configuration'
;------------------------------------------------------------
;configurationNumber       Allocated with name '_usb_device_state_set_configuration_PARM_2'
;isConfigured              Allocated with name '_usb_device_state_set_configuration_isConfigured_65536_15'
;------------------------------------------------------------
;	tmk_core/protocol/usb_device_state.c:39: void usb_device_state_set_configuration(bool isConfigured, uint8_t configurationNumber) {
;	-----------------------------------------
;	 function usb_device_state_set_configuration
;	-----------------------------------------
_usb_device_state_set_configuration:
	mov	a,dpl
	mov	dptr,#_usb_device_state_set_configuration_isConfigured_65536_15
	movx	@dptr,a
;	tmk_core/protocol/usb_device_state.c:40: usb_device_state = isConfigured ? USB_DEVICE_STATE_CONFIGURED : USB_DEVICE_STATE_INIT;
	movx	a,@dptr
	jz	00103$
	mov	r6,#0x02
	mov	r7,#0x00
	sjmp	00104$
00103$:
	mov	r6,#0x01
	mov	r7,#0x00
00104$:
	mov	dptr,#_usb_device_state
	mov	a,r6
	movx	@dptr,a
;	tmk_core/protocol/usb_device_state.c:41: notify_usb_device_state_change(usb_device_state);
	mov	dpl,r6
;	tmk_core/protocol/usb_device_state.c:42: }
	ljmp	_notify_usb_device_state_change
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_device_state_set_suspend'
;------------------------------------------------------------
;configurationNumber       Allocated with name '_usb_device_state_set_suspend_PARM_2'
;isConfigured              Allocated with name '_usb_device_state_set_suspend_isConfigured_65536_17'
;------------------------------------------------------------
;	tmk_core/protocol/usb_device_state.c:44: void usb_device_state_set_suspend(bool isConfigured, uint8_t configurationNumber) {
;	-----------------------------------------
;	 function usb_device_state_set_suspend
;	-----------------------------------------
_usb_device_state_set_suspend:
;	tmk_core/protocol/usb_device_state.c:45: usb_device_state = USB_DEVICE_STATE_SUSPEND;
	mov	dptr,#_usb_device_state
	mov	a,#0x03
	movx	@dptr,a
;	tmk_core/protocol/usb_device_state.c:46: notify_usb_device_state_change(usb_device_state);
	mov	dpl,#0x03
;	tmk_core/protocol/usb_device_state.c:47: }
	ljmp	_notify_usb_device_state_change
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_device_state_set_resume'
;------------------------------------------------------------
;configurationNumber       Allocated with name '_usb_device_state_set_resume_PARM_2'
;isConfigured              Allocated with name '_usb_device_state_set_resume_isConfigured_65536_19'
;------------------------------------------------------------
;	tmk_core/protocol/usb_device_state.c:49: void usb_device_state_set_resume(bool isConfigured, uint8_t configurationNumber) {
;	-----------------------------------------
;	 function usb_device_state_set_resume
;	-----------------------------------------
_usb_device_state_set_resume:
	mov	a,dpl
	mov	dptr,#_usb_device_state_set_resume_isConfigured_65536_19
	movx	@dptr,a
;	tmk_core/protocol/usb_device_state.c:50: usb_device_state = isConfigured ? USB_DEVICE_STATE_CONFIGURED : USB_DEVICE_STATE_INIT;
	movx	a,@dptr
	jz	00103$
	mov	r6,#0x02
	mov	r7,#0x00
	sjmp	00104$
00103$:
	mov	r6,#0x01
	mov	r7,#0x00
00104$:
	mov	dptr,#_usb_device_state
	mov	a,r6
	movx	@dptr,a
;	tmk_core/protocol/usb_device_state.c:51: notify_usb_device_state_change(usb_device_state);
	mov	dpl,r6
;	tmk_core/protocol/usb_device_state.c:52: }
	ljmp	_notify_usb_device_state_change
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_device_state_set_reset'
;------------------------------------------------------------
;	tmk_core/protocol/usb_device_state.c:54: void usb_device_state_set_reset(void) {
;	-----------------------------------------
;	 function usb_device_state_set_reset
;	-----------------------------------------
_usb_device_state_set_reset:
;	tmk_core/protocol/usb_device_state.c:55: usb_device_state = USB_DEVICE_STATE_INIT;
	mov	dptr,#_usb_device_state
	mov	a,#0x01
	movx	@dptr,a
;	tmk_core/protocol/usb_device_state.c:56: notify_usb_device_state_change(usb_device_state);
	mov	dpl,#0x01
;	tmk_core/protocol/usb_device_state.c:57: }
	ljmp	_notify_usb_device_state_change
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_device_state_init'
;------------------------------------------------------------
;	tmk_core/protocol/usb_device_state.c:59: void usb_device_state_init(void) {
;	-----------------------------------------
;	 function usb_device_state_init
;	-----------------------------------------
_usb_device_state_init:
;	tmk_core/protocol/usb_device_state.c:60: usb_device_state = USB_DEVICE_STATE_INIT;
	mov	dptr,#_usb_device_state
	mov	a,#0x01
	movx	@dptr,a
;	tmk_core/protocol/usb_device_state.c:61: notify_usb_device_state_change(usb_device_state);
	mov	dpl,#0x01
;	tmk_core/protocol/usb_device_state.c:62: }
	ljmp	_notify_usb_device_state_change
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
