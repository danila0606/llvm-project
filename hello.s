	.text
	.file	"hello.c"
	.globl	main
	.type	main,@function
main:
	addi	sp, sp, -92
	sw	ra, 88(sp)
	sw	t0, 84(sp)
	sw	t1, 80(sp)
	sw	t2, 76(sp)
	sw	s0, 72(sp)
	sw	a0, 68(sp)
	sw	a1, 64(sp)
	sw	a2, 60(sp)
	sw	a3, 56(sp)
	sw	a4, 52(sp)
	sw	a5, 48(sp)
	sw	a6, 44(sp)
	sw	a7, 40(sp)
	sw	t3, 36(sp)
	sw	t4, 32(sp)
	sw	t5, 28(sp)
	sw	t6, 24(sp)
	addi	s0, sp, 92
	addi	a0, zero, 0
	sw	a0, -92(s0)
	sw	a0, -72(s0)
	addi	a1, zero, 524
	sw	a1, -76(s0)
	sw	a1, -80(s0)
	addi	a0, a1, 0
	call	init
	lw	a0, -92(s0)
	sw	a0, -84(s0)
	sw	a0, -88(s0)
	jal	zero, .LBB0_1
.LBB0_1:
	call	is_window_opened
	addi	a1, zero, 0
	beq	a0, a1, .LBB0_7
	jal	zero, .LBB0_2
.LBB0_2:
	lw	a0, -84(s0)
	lw	a1, -88(s0)
	addi	a4, zero, 0
	addi	a5, zero, 255
	addi	a2, a5, 0
	addi	a3, a4, 0
	call	put_pixel
	call	flush
	lw	a0, -84(s0)
	addi	a0, a0, 1
	sw	a0, -84(s0)
	lw	a0, -84(s0)
	addi	a1, zero, 524
	bne	a0, a1, .LBB0_6
	jal	zero, .LBB0_3
.LBB0_3:
	addi	a0, zero, 0
	sw	a0, -84(s0)
	lw	a0, -88(s0)
	addi	a0, a0, 1
	sw	a0, -88(s0)
	lw	a0, -88(s0)
	addi	a1, zero, 524
	bne	a0, a1, .LBB0_5
	jal	zero, .LBB0_4
.LBB0_4:
	addi	a0, zero, 0
	sw	a0, -88(s0)
	jal	zero, .LBB0_5
.LBB0_5:
	jal	zero, .LBB0_6
.LBB0_6:
	jal	zero, .LBB0_1
.LBB0_7:
	addi	a0, zero, 0
	lw	t6, 24(sp)
	lw	t5, 28(sp)
	lw	t4, 32(sp)
	lw	t3, 36(sp)
	lw	a7, 40(sp)
	lw	a6, 44(sp)
	lw	a5, 48(sp)
	lw	a4, 52(sp)
	lw	a3, 56(sp)
	lw	a2, 60(sp)
	lw	a1, 64(sp)
	lw	a0, 68(sp)
	lw	s0, 72(sp)
	lw	t2, 76(sp)
	lw	t1, 80(sp)
	lw	t0, 84(sp)
	lw	ra, 88(sp)
	addi	sp, sp, 92
	jalr	zero, 0(ra)
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.ident	"clang version 15.0.0 (https://github.com/danila0606/llvm-project c69a3b8df2127fd32cb10711cd5b5375208ca337)"
	.section	".note.GNU-stack","",@progbits
