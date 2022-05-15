#####################################################
# fp-arith.asm
# author: Karen Mazidi
# created: 2018.5.3
# purpose: calculate b^2 - 4ac
#####################################################

.data
a:      .float 10
b:      .float 15
c:      .float 3
d:      .float 4
result: .float 0

.text
main:
    # load a, b, c
    lwc1    $f1, a
    lwc1    $f2, b
    lwc1    $f3, c
    lwc1    $f4, d

    mul.s   $f5, $f2, $f2  # b^2	
    mul.s   $f6, $f4, $f1  # 4a
    mul.s   $f6, $f6, $f3  # 4ac

    sub.s   $f12, $f5, $f6  # b^2 - 4ac	
    swc1    $f12, result

    # print result
    li      $v0, 2  # float to print is in $f12
    syscall

# exit program	
exit: 
    li      $v0, 10
    syscall


