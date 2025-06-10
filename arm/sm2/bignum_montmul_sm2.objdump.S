	ldp	x3, x4, [x1]
	ldp	x5, x6, [x1, #16]
	ldp	x7, x8, [x2]
	ldp	x9, x10, [x2, #16]
	mul	x11, x3, x7
	mul	x13, x4, x8
	umulh	x12, x3, x7
	adds	x16, x11, x13
	umulh	x14, x4, x8
	adcs	x17, x12, x14
	adcs	x14, x14, xzr
	adds	x12, x12, x16
	adcs	x13, x13, x17
	adcs	x14, x14, xzr
	subs	x15, x3, x4
	cneg	x15, x15, cc	// cc = lo, ul, last
	csetm	x1, cc	// cc = lo, ul, last
	subs	x17, x8, x7
	cneg	x17, x17, cc	// cc = lo, ul, last
	mul	x16, x15, x17
	umulh	x17, x15, x17
	cinv	x1, x1, cc	// cc = lo, ul, last
	eor	x16, x16, x1
	eor	x17, x17, x1
	cmn	x1, #0x1
	adcs	x12, x12, x16
	adcs	x13, x13, x17
	adc	x14, x14, x1
	lsl	x16, x11, #32
	lsr	x15, x11, #32
	subs	x1, x16, x11
	sbc	x17, x15, xzr
	subs	x12, x12, x1
	sbcs	x13, x13, x17
	sbcs	x14, x14, x16
	sbc	x11, x11, x15
	lsl	x16, x12, #32
	lsr	x15, x12, #32
	subs	x1, x16, x12
	sbc	x17, x15, xzr
	subs	x13, x13, x1
	sbcs	x14, x14, x17
	sbcs	x11, x11, x16
	sbc	x12, x12, x15
	stp	x13, x14, [x0]
	stp	x11, x12, [x0, #16]
	mul	x11, x5, x9
	mul	x13, x6, x10
	umulh	x12, x5, x9
	adds	x16, x11, x13
	umulh	x14, x6, x10
	adcs	x17, x12, x14
	adcs	x14, x14, xzr
	adds	x12, x12, x16
	adcs	x13, x13, x17
	adcs	x14, x14, xzr
	subs	x15, x5, x6
	cneg	x15, x15, cc	// cc = lo, ul, last
	csetm	x1, cc	// cc = lo, ul, last
	subs	x17, x10, x9
	cneg	x17, x17, cc	// cc = lo, ul, last
	mul	x16, x15, x17
	umulh	x17, x15, x17
	cinv	x1, x1, cc	// cc = lo, ul, last
	eor	x16, x16, x1
	eor	x17, x17, x1
	cmn	x1, #0x1
	adcs	x12, x12, x16
	adcs	x13, x13, x17
	adc	x14, x14, x1
	subs	x3, x5, x3
	sbcs	x4, x6, x4
	ngc	x5, xzr
	cmn	x5, #0x1
	eor	x3, x3, x5
	adcs	x3, x3, xzr
	eor	x4, x4, x5
	adcs	x4, x4, xzr
	subs	x7, x7, x9
	sbcs	x8, x8, x10
	ngc	x9, xzr
	cmn	x9, #0x1
	eor	x7, x7, x9
	adcs	x7, x7, xzr
	eor	x8, x8, x9
	adcs	x8, x8, xzr
	eor	x10, x5, x9
	ldp	x15, x1, [x0]
	adds	x15, x11, x15
	adcs	x1, x12, x1
	ldp	x5, x9, [x0, #16]
	adcs	x5, x13, x5
	adcs	x9, x14, x9
	adc	x2, xzr, xzr
	mul	x11, x3, x7
	mul	x13, x4, x8
	umulh	x12, x3, x7
	adds	x16, x11, x13
	umulh	x14, x4, x8
	adcs	x17, x12, x14
	adcs	x14, x14, xzr
	adds	x12, x12, x16
	adcs	x13, x13, x17
	adcs	x14, x14, xzr
	subs	x3, x3, x4
	cneg	x3, x3, cc	// cc = lo, ul, last
	csetm	x4, cc	// cc = lo, ul, last
	subs	x17, x8, x7
	cneg	x17, x17, cc	// cc = lo, ul, last
	mul	x16, x3, x17
	umulh	x17, x3, x17
	cinv	x4, x4, cc	// cc = lo, ul, last
	eor	x16, x16, x4
	eor	x17, x17, x4
	cmn	x4, #0x1
	adcs	x12, x12, x16
	adcs	x13, x13, x17
	adc	x14, x14, x4
	cmn	x10, #0x1
	eor	x11, x11, x10
	adcs	x11, x11, x15
	eor	x12, x12, x10
	adcs	x12, x12, x1
	eor	x13, x13, x10
	adcs	x13, x13, x5
	eor	x14, x14, x10
	adcs	x14, x14, x9
	adcs	x3, x2, x10
	adcs	x4, x10, xzr
	adc	x10, x10, xzr
	adds	x13, x13, x15
	adcs	x14, x14, x1
	adcs	x3, x3, x5
	adcs	x4, x4, x9
	adc	x10, x10, x2
	lsl	x16, x11, #32
	lsr	x15, x11, #32
	subs	x1, x16, x11
	sbc	x17, x15, xzr
	subs	x12, x12, x1
	sbcs	x13, x13, x17
	sbcs	x14, x14, x16
	sbc	x11, x11, x15
	lsl	x16, x12, #32
	lsr	x15, x12, #32
	subs	x1, x16, x12
	sbc	x17, x15, xzr
	subs	x13, x13, x1
	sbcs	x14, x14, x17
	sbcs	x11, x11, x16
	sbc	x12, x12, x15
	adds	x3, x3, x11
	adcs	x4, x4, x12
	adc	x10, x10, xzr
	add	x2, x10, #0x1
	lsl	x15, x2, #32
	sub	x16, x15, x2
	adds	x13, x13, x2
	adcs	x14, x14, x16
	adcs	x3, x3, xzr
	adcs	x4, x4, x15
	csetm	x7, cc	// cc = lo, ul, last
	adds	x13, x13, x7
	and	x16, x7, #0xffffffff00000000
	adcs	x14, x14, x16
	adcs	x3, x3, x7
	and	x15, x7, #0xfffffffeffffffff
	adc	x4, x4, x15
	stp	x13, x14, [x0]
	stp	x3, x4, [x0, #16]
	ret
