#####################################################
# shift.asm
# author: Karen Mazidi
# created: 2018.5.3
# purpose: demo shift instructions
#####################################################

	.text
	
    li	$t1, 1
	
     # print $t1 in binary
    li	$v0, 35
    move	$a0, $t1
    syscall
	
    # shift $t1 once and print in binary
    sll	$t1, $t1, 1
    # print newline
    li	$v0, 11
    li	$a0, '\n'
    syscall
    # print $t1 in binary
    li	$v0, 35
    move	$a0, $t1
    syscall
	
    # print newline
    li	$v0, 11
    li	$a0, '\n'
    syscall
	
    # demo srl
    li	$t1, 7
    # print $t1 in binary
    li	$v0, 35
    move	$a0, $t1
    syscall
    srl	$t1, $t1, 1
    # print newline
    li	$v0, 11
    li	$a0, '\n'
    syscall
    # print $t1 in binary
    li	$v0, 35
    move	$a0, $t1
    syscall
	
	
    li	$v0, 10
    syscall
