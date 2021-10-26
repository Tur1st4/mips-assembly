# Autor: Paulo Jacob
# Data: 25/10/2021
# Descrição: Mostrar divisão inteira

.data
	x: .asciiz "Digite o valor de X: "
	y: .asciiz "Digite o valor de Y: "
	res: .asciiz "Resultado: "
	
.text
	li $v0,4
	la $a0,x
	syscall
	li $v0,5
	syscall
	move $t0,$v0
	
	li $v0,4
	la $a0,y
	syscall
	li $v0,5
	syscall
	move $t1,$v0
	
	div $t0,$t1
	mflo $t2
	
	li $v0,4
	la $a0,res
	syscall
	li $v0,1
	la $a0,($t2)
	syscall
	
	li $v0,10
	syscall