#####################################################
# mul-div-1.asm
# author: Karen Mazidi
# created: 2018.5.3
# purpose: mul and div examples
#####################################################

.data
a:   		.word	8
b:		.word	5
product:	.word	9
quotient:	.word 	9
remainder:	.word	9

.text
main:	
    # mul example
    # assumes product is 32 bits or less
    lw	$t1, a	# $t1 = a
    lw	$t2, b	# $t2 = b
    mult	$t1, $t2
    mflo	$t0
    sw	$t0, product
	
    # div example
    div	$t1, $t2
    mflo	$t0
    sw	$t0, quotient
    mfhi	$t0
    sw	$t0, remainder
	
exit:	
    li	$v0, 10
    syscall

