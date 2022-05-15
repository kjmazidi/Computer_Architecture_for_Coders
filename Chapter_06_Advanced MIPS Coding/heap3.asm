#####################################################
# heap3.asm struct example
# author: Karen Mazidi
# created: 2018.5.3
# purpose: Simulate struct storage in the heap
#struct {
#    int age;
#    char gender;
#    char class;  }
#####################################################


.data
p:      .word 0  # pointer to struct
msga:   .asciiz "\nAge = "
msgg:   .asciiz "\nGender = "
msgc:   .asciiz "\nClass = "

.text
main:
    # create a struct
    li      $v0, 9
    li      $a0, 8  # age=4 + gender=1 + class=1 + 2 wasted bytes
    syscall
    sw      $v0, p  # save pointer
    move    $s1, $v0  # keep pointer in register

    # put data in struct
    li      $t0, 23
    sw      $t0, ($s1)  # age
    li      $t0, 'M'
    sb      $t0, 4($s1)  # gender
    li      $t0, 'J'
    sb      $t0, 5($s1)  # class	

# print struct data
    move    $a0, $s1
    jal     print

exit: 
    li      $v0, 10
    syscall

############# print struct ###############
# print function prints a struct
# start of struct is in $a0
print:
# print age
    li      $v0, 4
    la      $a0, msga
    syscall
    lw      $a0, ($a0)
    li      $v0, 1
    syscall
    # print gender
    li      $v0, 4
    la      $a0, msgg
    syscall
    lb      $a0, 4($a0)  # notice we load a byte 
    li      $v0, 11
    syscall
    # print class
    li      $v0, 4
    la      $a0, msgc
    syscall
    lb      $a0, 5($a0)
    li      $v0, 11
    syscall
    jr      $ra
 	
