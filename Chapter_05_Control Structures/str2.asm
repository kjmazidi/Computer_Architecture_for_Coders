#####################################################
# str1.asm
# author: Karen Mazidi
# created: 2018.5.3
# purpose: Demo iterating over a series of characters
# stop at newline, replacing with '\0'
# using a pointer paradigm
#####################################################

.data
str:.byte 'h', 'e', 'l', 'l', 'o', '\n'

.text
main: 
    la    $t0, str
    li    $t2, '\n'
    li    $t9, 25  # max length

loop: 
    lbu    $t1, ($t0)
    beq    $t1, $t2, replace
    addi   $t0, $t0, 1  # point to next character
    beq    $t0, $t9, exit 
    j      loop

replace: 
    sb      $0, ($t0)
exit:
    li      $v0, 10
    syscall


