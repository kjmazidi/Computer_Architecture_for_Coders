#####################################################
# function_non_leaf1.asm
# author: Karen Mazidi
# created: 2018.5.3
# purpose: Demo a non-leaf function
# adds 1 to each array element
#####################################################

.data
arr:    .word  3, 7, 2

.text

    la      $a0, arr  # address of arr[0]	
    li      $a1, 3  # length of array
    jal     process_arr

exit: 
    li      $v0, 10
    syscall
########################################	
# function process_arr
# adds 1 to each array element pointed to by $a0
# $a0 is the address of the array
# $a1 is the array length
process_arr:
# push $ra on the stack
    addi    $sp, $sp, -4
    sw      $ra, ($sp)

    li      $t0, 0  # $t0 is loop control
lp_1: 
    beq     $t0, $a1, over  # exit when last element is processed
    jal     inc
    addi    $a0, $a0, 4
    add     $t0, $t0, 1
    j       lp_1

over:  # pop $ra from the stack
    lw      $ra, ($sp)
    addi    $sp, $sp, 4

    jr      $ra

########################################	
# function inc
# $a0 has the address of an array element
# increments the value at address in $a0
inc:
    lw      $t9, ($a0)
    addi    $t9, $t9, 1
    sw      $t9, ($a0)
ex2: 
    jr      $ra	

