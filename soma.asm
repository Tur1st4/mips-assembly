# Autor: Paulo Jacob
# Data: 25/10/2021
# Descrição: Somar os lados de um quadrado

.data
	lado1: .asciiz "Lado 1: "
	lado2: .asciiz "Lado 2: "
	lado3: .asciiz "Lado 3: "
	lado4: .asciiz "Lado 4: "
	soma: .asciiz "Soma: "

.text
	li $v0,4
	la $a0,lado1
	syscall
	li $v0,5
	syscall
	move $t1,$v0
	
	li $v0,4
	la $a0,lado2
	syscall
	li $v0,5
	syscall
	move $t2,$v0
	
	li $v0,4
	la $a0,lado3
	syscall
	li $v0,5
	syscall
	move $t3,$v0
	
	li $v0,4
	la $a0,lado4
	syscall
	li $v0,5
	syscall
	move $t4,$v0
	
	add $t5,$t1,$t2
	add $t6,$t3,$t4
	add $t0,$t5,$t6
	
	li $v0,4
	la $a0,soma
	syscall
	
	li $v0,1
	la $a0,($t0)
	syscall
	
	li $v0,10
	syscall