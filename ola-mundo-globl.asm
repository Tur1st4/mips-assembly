# Autor: Paulo Jacob
# Data: 23/10/2021
# Descri��o: Ol� mundo global

.data
	msg: .asciiz "Ol� mundo!" 

.text
	.globl main

	main:
		li $v0,4
		la $a0,msg
		syscall
		li $v0,10
		syscall
	