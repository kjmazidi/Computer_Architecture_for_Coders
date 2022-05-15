#####################################################
# function_leaf.asm
# author: Karen Mazidi
# created: 2018.5.3
# purpose: Demo a leaf function
# result = sum(x, y)
#####################################################

.data
x:      .word 3
y:      .word 5
result: .word 0

.text

    lw      $a0, x
    lw      $a1, y
    jal     sum
    sw      $v0, result

exit: 
    li      $v0, 10
            syscall

########################################	
# sum function: return x + y
# x and y are in $a0 and $a0
# sum is returned in $v0
sum:
    add     $v0, $a0, $a1
    jr      $ra
	
	
