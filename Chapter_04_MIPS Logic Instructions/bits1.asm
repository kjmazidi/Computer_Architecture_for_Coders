#####################################################
# bits1.asm
# author: Karen Mazidi
# created: 2018.5.3
# purpose: Demo bit manipulation
#####################################################

	.text
	li	$t1, 0
	
	# print $t1 in binary
	li	$v0, 35
	move	$a0, $t1
	syscall
	
	# force bits 2 and 3 to be 1
	li	$t2, 0xc
	or	$t1, $t1, $t2	

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

