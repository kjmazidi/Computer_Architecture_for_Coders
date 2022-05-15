#####################################################
# loop-point.asm
# author: Karen Mazidi
# created: 2018.5.3
# purpose: Demo pointer paradigm
# while (i < 3) arr[i] = -arr[i];
#####################################################

.data
arr:	.word	3, -4, 5

.text
    li	    $t1, 0		# $t1 = i = 0
    li	    $t2, 3		# $t2 = stop value
    la	    $s0, arr	# $s0 points to the next array element

loop:
    beq	    $t1, $t2, exit  # branch if i == 3
    lw	     $t9, ($s0)	# get next word
    sub	    $t9, $0, $t9	# reverse the sign
    sw	     $t9, ($s0)	# save results
    addi    $t1, $t1, 1	# i++
    addi    $s0, $s0, 4  # point to next word
    j	      loop

exit:
    li	    $v0, 10
    syscall

