#####################################################
# loop-arr.asm
# author: Karen Mazidi
# created: 2018.5.3
# purpose: Demo array paradigm
# while (i < 3) arr[i] = -arr[i];
#####################################################

.data
arr:	.word	3, -4, 5

.text
    li	    $t1, 0		# $t1 = i = 0
    li	    $t2, 3		# $t2 = stop value
    la	    $s0, arr	# $t0 points to the next array element

loop:
    beq	    $t1, $t2, exit  # branch if i == 3
    sll	    $t5, $t1, 2	# $t5 = i * 4
    add	    $t0, $s0, $t5	# $t0 is addr of next element
    lw	     $t9, ($t0)	# get next word
    sub	    $t9, $0, $t9	# reverse the sign
    sw	     $t9, ($t0)	# save results
    addi    $t1, $t1, 1	# i++
    j	      loop

exit:
    li	    $v0, 10
    syscall

