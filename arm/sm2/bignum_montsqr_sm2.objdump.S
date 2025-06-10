	ldp	x2, x3, [x1]
	ldp	x4, x5, [x1, #16]
	umull	x15, w2, w2
	lsr	x11, x2, #32
	umull	x16, w11, w11
	umull	x11, w2, w11
	adds	x15, x15, x11, lsl #33
	lsr	x11, x11, #31
	adc	x16, x16, x11
	umull	x17, w3, w3
	lsr	x11, x3, #32
	umull	x1, w11, w11
	umull	x11, w3, w11
	mul	x12, x2, x3
	umulh	x13, x2, x3
	adds	x17, x17, x11, lsl #33
	lsr	x11, x11, #31
	adc	x1, x1, x11
	adds	x12, x12, x12
	adcs	x13, x13, x13
	adc	x1, x1, xzr
	adds	x16, x16, x12
	adcs	x17, x17, x13
	adc	x1, x1, xzr
	lsl	x12, x15, #32
	lsr	x11, x15, #32
	subs	x14, x12, x15
	sbc	x13, x11, xzr
	subs	x16, x16, x14
	sbcs	x17, x17, x13
	sbcs	x1, x1, x12
	sbc	x15, x15, x11
	lsl	x12, x16, #32
	lsr	x11, x16, #32
	subs	x14, x12, x16
	sbc	x13, x11, xzr
	subs	x17, x17, x14
	sbcs	x1, x1, x13
	sbcs	x15, x15, x12
	sbc	x16, x16, x11
	mul	x6, x2, x4
	mul	x14, x3, x5
	umulh	x8, x2, x4
	subs	x10, x2, x3
	cneg	x10, x10, cc	// cc = lo, ul, last
	csetm	x13, cc	// cc = lo, ul, last
	subs	x12, x5, x4
	cneg	x12, x12, cc	// cc = lo, ul, last
	mul	x11, x10, x12
	umulh	x12, x10, x12
	cinv	x13, x13, cc	// cc = lo, ul, last
	eor	x11, x11, x13
	eor	x12, x12, x13
	adds	x7, x6, x8
	adc	x8, x8, xzr
	umulh	x9, x3, x5
	adds	x7, x7, x14
	adcs	x8, x8, x9
	adc	x9, x9, xzr
	adds	x8, x8, x14
	adc	x9, x9, xzr
	cmn	x13, #0x1
	adcs	x7, x7, x11
	adcs	x8, x8, x12
	adc	x9, x9, x13
	adds	x6, x6, x6
	adcs	x7, x7, x7
	adcs	x8, x8, x8
	adcs	x9, x9, x9
	adc	x10, xzr, xzr
	adds	x6, x6, x17
	adcs	x7, x7, x1
	adcs	x8, x8, x15
	adcs	x9, x9, x16
	adc	x10, x10, xzr
	lsl	x12, x6, #32
	lsr	x11, x6, #32
	subs	x14, x12, x6
	sbc	x13, x11, xzr
	subs	x7, x7, x14
	sbcs	x8, x8, x13
	sbcs	x9, x9, x12
	sbc	x14, x6, x11
	adds	x10, x10, x14
	adc	x6, xzr, xzr
	lsl	x12, x7, #32
	lsr	x11, x7, #32
	subs	x14, x12, x7
	sbc	x13, x11, xzr
	subs	x8, x8, x14
	sbcs	x9, x9, x13
	sbcs	x10, x10, x12
	sbc	x14, x7, x11
	adds	x6, x6, x14
	adc	x7, xzr, xzr
	mul	x11, x4, x4
	adds	x8, x8, x11
	mul	x12, x5, x5
	umulh	x11, x4, x4
	adcs	x9, x9, x11
	adcs	x10, x10, x12
	umulh	x12, x5, x5
	adcs	x6, x6, x12
	adc	x7, x7, xzr
	mul	x11, x4, x5
	umulh	x12, x4, x5
	adds	x11, x11, x11
	adcs	x12, x12, x12
	adc	x13, xzr, xzr
	adds	x9, x9, x11
	adcs	x10, x10, x12
	adcs	x6, x6, x13
	adcs	x7, x7, xzr
	mov	x11, #0xffffffff00000000    	// #-4294967296
	adds	x5, x8, #0x1
	sbcs	x11, x9, x11
	mov	x13, #0xfffffffeffffffff    	// #-4294967297
	adcs	x12, x10, xzr
	sbcs	x13, x6, x13
	sbcs	xzr, x7, xzr
	csel	x8, x5, x8, cs	// cs = hs, nlast
	csel	x9, x11, x9, cs	// cs = hs, nlast
	csel	x10, x12, x10, cs	// cs = hs, nlast
	csel	x6, x13, x6, cs	// cs = hs, nlast
	stp	x8, x9, [x0]
	stp	x10, x6, [x0, #16]
	ret
