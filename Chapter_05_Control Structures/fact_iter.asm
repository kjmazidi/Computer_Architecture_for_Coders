#####################################################
# fact_iter.asm
# author: Karen Mazidi
# created: 2018.5.3
# purpose: Factorial program, iterative version
#####################################################
# factorial 10! 
.data
msg:    .asciiz "10! = "
ans:    .word 0   
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

        li      $v0, 1
        move    $t0, $a0
loop:   mul     $v0, $t0, $v0
        addi    $t0, $t0, -1
        bgt     $t0, $0, loop

        jr      $ra
	
