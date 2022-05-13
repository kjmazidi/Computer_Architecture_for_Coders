#####################################################
# load_store-simple.asm
# author: Karen Mazidi
# created: 2018.5.3
# purpose: load and store word example
#####################################################

.data
a:	.word   3
b:	.word	  4
c:	.word   9
d:	.word   9

.text
main:	
	# load a and b
    lw	$t1, a
    lw	$t2, b

	# store c and d
    sw	$t1, c
    sw	$t2, d
		
exit:	
    li	$v0, 10
    syscall

