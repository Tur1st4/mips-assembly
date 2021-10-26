# Autor: Paulo Jacob
# Data: 25/10/2021
# Descrição: Maior ou menor de idade

.data
	perg: .asciiz "Digite a sua idade: "
	res_maior: .asciiz "Você tem mais de 18 anos"
	res_menor: .asciiz "Você é menor de idade"
	
	
.macro sair
	li $v0,10
	syscall
.end_macro
	
.text
.globl principal

principal:
	li $v0,4
	la $a0,perg
	syscall
	li $v0,5
	syscall
	move $t0,$v0
	
	li $v0,18
	move $t1,$v0
	
	bge $t0,$t1,maior
	blt $t0,$t1,menor
	
maior:
	li $v0,4
	la $a0,res_maior
	syscall
	sair
	
menor:
	li $v0,4
	la $a0,res_menor
	syscall
	sair