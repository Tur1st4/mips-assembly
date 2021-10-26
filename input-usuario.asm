.data
	idade: .word 0
	
.text
	li $v0,5
	syscall
	move $t0,$v0
	
	sw $t0,idade
	li $v0,10
	syscall
