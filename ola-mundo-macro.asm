# Autor: Paulo Jacob
# Data: 23/10/2021
# Descrição: Olá mundo com macro

.macro finalizar_programa
	li $v0,10
	syscall
.end_macro

.macro printf(%str)
	.data
		msg: .asciiz %str
	
	.text
	li $v0,4
	la $a0,msg
	syscall
.end_macro

.text
	.globl main
	main:
		printf("Olá mundo!\n")
		finalizar_programa
