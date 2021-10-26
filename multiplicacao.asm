# Autor: Paulo Jacob
# Data: 25/10/2021
# Descrição: Calcular Cubo

.data
	cb: .asciiz "Digite um número: "
	cb_res: .asciiz " ao cubo é: "

.text
	li $v0,4
	la $a0,cb
	syscall
	li $v0,5
	syscall
	move $t0,$v0
	
	mult $t0,$t0
	mflo $t1
	mult $t1,$t0
	mflo $t2
	
	li $v0,1
	la $a0,($t0)
	syscall
	li $v0,4
	la $a0,cb_res
	syscall
	li $v0,1
	la $a0,($t2)
	syscall
	
	li $v0,10
	syscall