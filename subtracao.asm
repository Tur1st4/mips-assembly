# Autor: Paulo Jacob
# Data: 25/10/2021
# Descrição: Programa para contar KM

.data
	km_percorrido: .asciiz "Digite o KM percorrido: "
	km_total: .asciiz "KM's finais: "
	
.text
	li $v0,4
	la $a0,km_percorrido
	syscall
	li $v0,5
	syscall
	move $t0,$v0
	
	li $t1,15
	sub $t2,$t1,$t0
	
	li $v0,4
	la $a0,km_total
	syscall
	li $v0,1
	la $a0,($t2)
	syscall
	
	li $v0,10
	syscall