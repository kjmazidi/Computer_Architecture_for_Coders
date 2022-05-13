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
	
	# force bits 1 and 3 to be 1
	ori	$t1, $t1, 0xa	

	# print newline
	li	$v0, 11
	li	$a0, '\n'
	syscall
	# print $t1 in binary
	li	$v0, 35
	move	$a0, $t1
	syscall
	
	# fill $t1 with 1010 ...
	li	$t1, 0xaaaaaaaa
	# print newline
	li	$v0, 11
	li	$a0, '\n'
	syscall
	# print $t1 in binary
	li	$v0, 35
	move	$a0, $t1
	syscall	
	
	# force bit 1to be 0
	andi	$t1, $t1, 0xfffffff2	

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

