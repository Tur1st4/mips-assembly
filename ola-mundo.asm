# Autor: Paulo Jacob
# Data: 23/10/2021
# Descri��o: Primeiros passos em Assembly

.data
	msg: .asciiz "Ol� mundo!"
.text
	li $v0,4
	la $a0,msg
	syscall
	li $v0,10
	syscall