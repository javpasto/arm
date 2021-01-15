/*-----------------------------------------------------------------
**
**  File:
**    pract2b.asm  4/02/2016
**
**    Introduction to Computers
**    Dpto. de Arquitectura de Computadores y Automática
**    Facultad de Informática. Universidad Complutense de Madrid
**
**  Goal:
**    Sort a vector, A, of positive integers in decreasing order
**	  Give the the result in vector B
**
**  Design notes:
**
**---------------------------------------------------------------*/

.global start

.EQU N, 8

.data
A: .word 7,3,25,4,75,2,1,1

.bss
B:   .space N*4
max: .space 4
ind: .space 4



.text
start:
	   @ Complete the rest of the code



.end
