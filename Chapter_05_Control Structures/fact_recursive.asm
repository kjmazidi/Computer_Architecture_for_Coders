#####################################################
# fact_recursive.asm
# author: Karen Mazidi
# created: 2018.5.3
# purpose: Factorial progrm, recursive version
#####################################################
# factoral 10! recursive version
.data
msg:    .asciiz  "! = "
ans:    .word     0

.text

    li      $a0, 10
    jal     factorial
    sw      $v0, ans

    # display the answer
    li      $v0, 4
    la      $a0, msg
    syscall

    li      $v0, 1
    lw      $a0, ans
    syscall

    # exit
    li      $v0, 10
    syscall
##################
# factorial program
# n is in $a0
# result is in $v0
factorial:
    addi    $sp, $sp, -8
    sw      $ra, 4($sp)
    sw      $a0, ($sp)

    # base case
    li      $v0, 1
    ble    $a0, $zero, done

    # call factorial(n-1)
    addi    $a0, $a0, -1
    jal     factorial

    # returns here
    lw      $a0, ($sp)  # get earlier n
    mul    $v0, $a0, $v0

done:
    lw      $ra, 4($sp)
    addi    $sp, $sp, 8

    jr      $ra
	
