	.text
	.file	"Gfuncs.c"
	.globl	init
	.type	init,@function
init:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	s0, 20(sp)
	sw	a0, 16(sp)
	sw	a1, 12(sp)
	addi	s0, sp, 28
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	sw	a0, -28(s0)
	lw	a1, 12(sp)
	lw	a0, 16(sp)
	lw	s0, 20(sp)
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jalr	zero, 0(ra)
.Lfunc_end0:
	.size	init, .Lfunc_end0-init

	.globl	put_pixel
	.type	put_pixel,@function
put_pixel:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	a0, 20(sp)
	sw	a1, 16(sp)
	addi	s0, sp, 32
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	sw	a2, -28(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	sw	a0, -32(s0)
	lw	a1, 16(sp)
	lw	a0, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jalr	zero, 0(ra)
.Lfunc_end1:
	.size	put_pixel, .Lfunc_end1-put_pixel

	.globl	is_window_opened
	.type	is_window_opened,@function
is_window_opened:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	a0, 4(sp)
	addi	s0, sp, 16
	addi	a0, zero, 171
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	lw	a0, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jalr	zero, 0(ra)
.Lfunc_end2:
	.size	is_window_opened, .Lfunc_end2-is_window_opened

	.globl	get_time_milliseconds
	.type	get_time_milliseconds,@function
get_time_milliseconds:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	a0, 4(sp)
	addi	s0, sp, 16
	addi	a0, zero, 171
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	lw	a0, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jalr	zero, 0(ra)
.Lfunc_end3:
	.size	get_time_milliseconds, .Lfunc_end3-get_time_milliseconds

	.globl	flush
	.type	flush,@function
flush:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	a0, 4(sp)
	addi	s0, sp, 16
	addi	a0, zero, 171
	sw	a0, -16(s0)
	lw	a0, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jalr	zero, 0(ra)
.Lfunc_end4:
	.size	flush, .Lfunc_end4-flush

	.globl	gmul
	.type	gmul,@function
gmul:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	s0, 16(sp)
	sw	a0, 12(sp)
	addi	s0, sp, 24
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	addi	a0, zero, 188
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	lw	a0, 12(sp)
	lw	s0, 16(sp)
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jalr	zero, 0(ra)
.Lfunc_end5:
	.size	gmul, .Lfunc_end5-gmul

	.globl	gdiv
	.type	gdiv,@function
gdiv:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	s0, 16(sp)
	sw	a0, 12(sp)
	addi	s0, sp, 24
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	addi	a0, zero, 188
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	lw	a0, 12(sp)
	lw	s0, 16(sp)
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jalr	zero, 0(ra)
.Lfunc_end6:
	.size	gdiv, .Lfunc_end6-gdiv

	.ident	"clang version 15.0.0 (https://github.com/danila0606/llvm-project c69a3b8df2127fd32cb10711cd5b5375208ca337)"
	.section	".note.GNU-stack","",@progbits
