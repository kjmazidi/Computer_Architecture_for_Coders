#####################################################
# fp-compare.asm
# author: Karen Mazidi
# created: 2018.5.3
# purpose:  practice with compare
#####################################################

.data
sales1: .float 9532.45
goal:   .float 10000
msg1:   .asciiz "Your're fired!"
msg2:   .asciiz "Keep up the good work!"

.text
main:
    # load sales and goal
    lwc1    $f1, sales1
    lwc1    $f3, goal

    # check if sales goal met
    c.le.s  $f3, $f1
    bc1t    out
    la      $a0, msg1  # print good message
    j       print

out: 
    la      $a0, msg2  # print sad message

# print message
print: 
    li      $v0, 4  # address in $a0
    syscall

# exit program	
exit: 
    li      $v0, 10
    syscall


