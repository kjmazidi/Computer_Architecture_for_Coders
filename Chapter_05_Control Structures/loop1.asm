#####################################################
# loop1.asm
# author: Karen Mazidi
# created: 2018.5.3
# purpose: simple loop example
# while (i < 3) arr[i] += 1;
# for (i=0; i<3; i++) arr[i] += 1
#####################################################
 
.data
arr: .word   3, 4, 5

.text
    li      $t1, 0  # $t1 = i = 0
    li      $t2, 3  # $t2 = stop value
    la      $t0, arr  # $t0 points to the next array element

loop: 
    beq     $t1, $t2, exit  # branch if i == 3
    lw      $t9, ($t0)  # get next work
    addi    $t9, $t9, 1  # add i to the element
    sw      $t9, ($t0)  # save results
    addi    $t0, $t0, 4  # point to next word
    addi    $t1, $t1, 1  # i++
    j       loop

exit: 
    li      $v0, 10
    syscall

