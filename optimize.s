	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"optimize.c"
	.text
	.align	2
	.global	MMM
	.type	MMM, %function
MMM:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, fp}
	add	fp, sp, #12
	sub	sp, sp, #80
	str	r0, [fp, #-84]
	str	r1, [fp, #-80]
	str	r2, [fp, #-92]
	str	r3, [fp, #-88]
	mov	r3, #0
	mov	r4, #0
	str	r3, [fp, #-68]
	str	r4, [fp, #-64]
	sub	r2, fp, #92
	ldmia	r2, {r1-r2}
	mov	r3, #1
	mov	r4, #0
	and	r3, r3, r1
	and	r4, r4, r2
	str	r3, [fp, #-44]
	str	r4, [fp, #-40]
	mov	r3, #0
	mov	r4, #0
	str	r3, [fp, #-76]
	str	r4, [fp, #-72]
	b	.L2
.L7:
	ldr	r1, [fp, #-76]
	sub	r0, r1, #32
	ldr	r3, [fp, #-80]
	mov	ip, r3, lsr r0
	rsb	r2, r1, #32
	ldr	r3, [fp, #-80]
	mov	r5, r3, asl r2
	ldr	r2, [fp, #-84]
	cmp	r0, #0
	ldr	r0, [fp, #-80]
	mov	r3, r2, lsr r1
	orr	r3, r5, r3
	movge	r3, ip
	mov	r4, r0, lsr r1
	mov	r1, #1
	mov	r2, #0
	and	r3, r3, r1
	and	r4, r4, r2
	str	r3, [fp, #-60]
	str	r4, [fp, #-56]
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	mov	r3, #1
	mov	r4, #0
	and	r5, r1, r3
	and	r6, r2, r4
	sub	r2, fp, #60
	ldmia	r2, {r1-r2}
	sub	r4, fp, #44
	ldmia	r4, {r3-r4}
	and	r3, r3, r1
	and	r4, r4, r2
	eor	r3, r3, r5
	eor	r4, r4, r6
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	ldr	r3, [fp, #-60]
	ldr	r2, [fp, #-56]
	orr	r3, r3, r2
	cmp	r3, #0
	beq	.L3
	sub	r4, fp, #92
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	b	.L4
.L3:
	mov	r3, #0
	mov	r4, #0
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
.L4:
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-32]
	orr	r3, r3, r2
	cmp	r3, #0
	beq	.L5
	ldmib	fp, {r3-r4}
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	b	.L6
.L5:
	mov	r3, #0
	mov	r4, #0
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
.L6:
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	sub	r4, fp, #28
	ldmia	r4, {r3-r4}
	adds	r1, r1, r3
	adc	r2, r2, r4
	sub	r4, fp, #20
	ldmia	r4, {r3-r4}
	adds	r3, r3, r1
	adc	r4, r4, r2
	movs	r4, r4, lsr #1
	mov	r3, r3, rrx
	str	r3, [fp, #-68]
	str	r4, [fp, #-64]
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	mov	r3, #1
	mov	r4, #0
	adds	r3, r3, r1
	adc	r4, r4, r2
	str	r3, [fp, #-76]
	str	r4, [fp, #-72]
.L2:
	ldr	r2, [fp, #16]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bhi	.L7
	ldr	r2, [fp, #16]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L9
	ldr	r2, [fp, #12]
	ldr	r3, [fp, #-76]
	cmp	r2, r3
	bhi	.L7
	ldr	r2, [fp, #12]
	ldr	r3, [fp, #-76]
	cmp	r2, r3
	b	.L9
.L10:
	sub	r4, fp, #68
	ldmia	r4, {r3-r4}
	ldmib	fp, {r1-r2}
	subs	r3, r3, r1
	sbc	r4, r4, r2
	str	r3, [fp, #-68]
	str	r4, [fp, #-64]
.L9:
	ldr	r2, [fp, #8]
	ldr	r3, [fp, #-64]
	cmp	r2, r3
	bhi	.L13
	ldr	r2, [fp, #8]
	ldr	r3, [fp, #-64]
	cmp	r2, r3
	bne	.L10
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bhi	.L13
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	b	.L10
.L13:
	sub	r4, fp, #68
	ldmia	r4, {r3-r4}
	mov	r0, r3
	mov	r1, r4
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, r6, fp}
	bx	lr
	.size	MMM, .-MMM
	.align	2
	.global	bitLength
	.type	bitLength, %function
bitLength:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, fp}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-20]
	str	r1, [fp, #-16]
	mov	r3, #0
	mov	r4, #0
	str	r3, [fp, #-12]
	str	r4, [fp, #-8]
	b	.L15
.L16:
	sub	r4, fp, #20
	ldmia	r4, {r3-r4}
	movs	r4, r4, lsr #1
	mov	r3, r3, rrx
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r2, fp, #12
	ldmia	r2, {r1-r2}
	mov	r3, #1
	mov	r4, #0
	adds	r3, r3, r1
	adc	r4, r4, r2
	str	r3, [fp, #-12]
	str	r4, [fp, #-8]
.L15:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	orr	r3, r3, r2
	cmp	r3, #0
	bne	.L16
	sub	r4, fp, #12
	ldmia	r4, {r3-r4}
	mov	r0, r3
	mov	r1, r4
	sub	sp, fp, #4
	ldmfd	sp!, {r4, fp}
	bx	lr
	.size	bitLength, .-bitLength
	.global	__aeabi_uldivmod
	.align	2
	.global	multiply_square
	.type	multiply_square, %function
multiply_square:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #76
	str	r0, [fp, #-60]
	str	r1, [fp, #-56]
	str	r2, [fp, #-68]
	str	r3, [fp, #-64]
	ldmib	fp, {r0-r1}
	bl	bitLength
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-52]
	str	r4, [fp, #-48]
	mov	r3, #16777216
	mov	r4, #0
	mov	r0, r3
	mov	r1, r4
	ldmib	fp, {r2-r3}
	bl	__aeabi_uldivmod
	mov	r4, r3
	mov	r3, r2
	str	r3, [fp, #-44]
	str	r4, [fp, #-40]
	ldmib	fp, {r3-r4}
	stmia	sp, {r3-r4}
	sub	r4, fp, #52
	ldmia	r4, {r3-r4}
	str	r3, [sp, #8]
	str	r4, [sp, #12]
	sub	r1, fp, #60
	ldmia	r1, {r0-r1}
	sub	r3, fp, #44
	ldmia	r3, {r2-r3}
	bl	MMM
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	mov	r3, #1
	mov	r4, #0
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	sub	r4, fp, #36
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	b	.L19
.L21:
	ldr	r3, [fp, #-68]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L20
	ldmib	fp, {r3-r4}
	stmia	sp, {r3-r4}
	sub	r4, fp, #52
	ldmia	r4, {r3-r4}
	str	r3, [sp, #8]
	str	r4, [sp, #12]
	sub	r1, fp, #28
	ldmia	r1, {r0-r1}
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	bl	MMM
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
.L20:
	ldmib	fp, {r3-r4}
	stmia	sp, {r3-r4}
	sub	r4, fp, #52
	ldmia	r4, {r3-r4}
	str	r3, [sp, #8]
	str	r4, [sp, #12]
	sub	r1, fp, #20
	ldmia	r1, {r0-r1}
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	bl	MMM
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r4, fp, #68
	ldmia	r4, {r3-r4}
	movs	r4, r4, lsr #1
	mov	r3, r3, rrx
	str	r3, [fp, #-68]
	str	r4, [fp, #-64]
.L19:
	ldr	r3, [fp, #-68]
	ldr	r2, [fp, #-64]
	orr	r3, r3, r2
	cmp	r3, #0
	bne	.L21
	sub	r4, fp, #28
	ldmia	r4, {r3-r4}
	mov	r0, r3
	mov	r1, r4
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
	.size	multiply_square, .-multiply_square
	.align	2
	.global	decrypt
	.type	decrypt, %function
decrypt:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #36
	str	r0, [fp, #-28]
	str	r1, [fp, #-24]
	str	r2, [fp, #-36]
	str	r3, [fp, #-32]
	ldmib	fp, {r3-r4}
	stmia	sp, {r3-r4}
	sub	r1, fp, #28
	ldmia	r1, {r0-r1}
	sub	r3, fp, #36
	ldmia	r3, {r2-r3}
	bl	multiply_square
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r4, fp, #20
	ldmia	r4, {r3-r4}
	mov	r0, r3
	mov	r1, r4
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
	.size	decrypt, .-decrypt
	.align	2
	.global	encrypt
	.type	encrypt, %function
encrypt:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #36
	str	r0, [fp, #-28]
	str	r1, [fp, #-24]
	str	r2, [fp, #-36]
	str	r3, [fp, #-32]
	ldmib	fp, {r3-r4}
	stmia	sp, {r3-r4}
	sub	r1, fp, #28
	ldmia	r1, {r0-r1}
	sub	r3, fp, #36
	ldmia	r3, {r2-r3}
	bl	multiply_square
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r4, fp, #20
	ldmia	r4, {r3-r4}
	mov	r0, r3
	mov	r1, r4
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
	.size	encrypt, .-encrypt
	.section	.rodata
	.align	2
.LC0:
	.ascii	"plain %llu \000"
	.align	2
.LC1:
	.ascii	"encrypt called %llu \000"
	.align	2
.LC2:
	.ascii	"decrypt %llu \000"
	.global	__aeabi_ui2d
	.global	__aeabi_ddiv
	.align	2
.LC3:
	.ascii	"Total time taken by CPU: %lf\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #84
	bl	clock
	mov	r3, r0
	str	r3, [fp, #-92]
	mov	r3, #61
	mov	r4, #0
	str	r3, [fp, #-84]
	str	r4, [fp, #-80]
	mov	r3, #53
	mov	r4, #0
	str	r3, [fp, #-76]
	str	r4, [fp, #-72]
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-76]
	mul	r2, r3, r2
	ldr	r1, [fp, #-72]
	ldr	r3, [fp, #-84]
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-84]
	ldr	r3, [fp, #-76]
	umull	r5, r6, r1, r3
	mov	r3, r5
	mov	r4, r6
	add	r2, r2, r4
	mov	r4, r2
	str	r3, [fp, #-68]
	str	r4, [fp, #-64]
	str	r3, [fp, #-68]
	str	r4, [fp, #-64]
	mov	r3, #123
	mov	r4, #0
	str	r3, [fp, #-60]
	str	r4, [fp, #-56]
	mov	r3, #852
	add	r3, r3, #3
	mov	r4, #0
	str	r3, [fp, #-52]
	str	r4, [fp, #-48]
	mov	r3, #17
	mov	r4, #0
	str	r3, [fp, #-44]
	str	r4, [fp, #-40]
	mov	r3, #2752
	add	r3, r3, #1
	mov	r4, #0
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	ldr	r0, .L29
	sub	r3, fp, #60
	ldmia	r3, {r2-r3}
	bl	printf
	sub	r4, fp, #68
	ldmia	r4, {r3-r4}
	stmia	sp, {r3-r4}
	sub	r1, fp, #60
	ldmia	r1, {r0-r1}
	sub	r3, fp, #44
	ldmia	r3, {r2-r3}
	bl	encrypt
	mov	r3, r0
	mov	r4, r1
	ldr	r0, .L29+4
	mov	r2, r3
	mov	r3, r4
	bl	printf
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-76]
	mul	r2, r3, r2
	ldr	r1, [fp, #-72]
	ldr	r3, [fp, #-84]
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-84]
	ldr	r3, [fp, #-76]
	umull	r5, r6, r1, r3
	mov	r3, r5
	mov	r4, r6
	add	r2, r2, r4
	mov	r4, r2
	stmia	sp, {r3-r4}
	sub	r1, fp, #52
	ldmia	r1, {r0-r1}
	sub	r3, fp, #36
	ldmia	r3, {r2-r3}
	bl	decrypt
	mov	r3, r0
	mov	r4, r1
	ldr	r0, .L29+8
	mov	r2, r3
	mov	r3, r4
	bl	printf
	bl	clock
	mov	r3, r0
	str	r3, [fp, #-88]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-92]
	rsb	r3, r3, r2
	mov	r0, r3
	bl	__aeabi_ui2d
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1090519040
	add	r6, r6, #3047424
	add	r6, r6, #1152
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	ldr	r0, .L29+12
	sub	r3, fp, #28
	ldmia	r3, {r2-r3}
	bl	printf
	mov	r0, #0
	bl	exit
.L30:
	.align	2
.L29:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
