# Autor: Paulo Jacob
# Data: 23/10/2021
# Descrição: Primeiros passos em Assembly

.data
	msg: .asciiz "Olá mundo!"
.text
	li $v0,4
	la $a0,msg
	syscall
	li $v0,10
	syscall