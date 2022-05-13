#####################################################
# hello-simple.asm
# author: Karen Mazidi
# created: 2018.5.3
# purpose: Hello world
#####################################################

.data
msg:	.asciiz  "Hello world!"

.text
main:	
	li	$v0, 4       # display message
	la	$a0, msg
	syscall			
exit:	
	li	$v0, 10      # exit program
	syscall			

