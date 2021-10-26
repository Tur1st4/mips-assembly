# Autor: Paulo Jacob
# Data: 25/10/2021
# Descrição: Menu em loop

.data
	menu: .asciiz "\t\t-| Menu -|-\n\n\t1 - Continuar\n\t0 - Sair\n"
	opc: .asciiz "Digite a opção: "
	
.text
.globl main

main:
	li $v0,4
	la $a0,menu
	syscall
	li $v0,4
	la $a0,opc
	syscall
	
	li $v0,5
	syscall
	move $t0,$v0
	
	beq $t0,0,sair
	j main
	
sair:
	li $v0,10
	syscall
	