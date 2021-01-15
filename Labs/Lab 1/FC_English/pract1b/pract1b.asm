/*-----------------------------------------------------------------
**
**  File:
**    pract1b.asm  4/02/2016
**
**    Introduction to Computers
**    Dpto. de Arquitectura de Computadores y Autom�tica
**    Facultad de Inform�tica. Universidad Complutense de Madrid
**
**  Goal:
**    Divide 2 numbers by means of itereative subtractions
**
**  Design notes: C = A/B (integer division)
**
**---------------------------------------------------------------*/

.global start

.data
A: 		.word 86
B: 		.word 8

.bss
C:		.space 4

.text
start:
		ldr 	r0, =A
		ldr 	r1, [r0]			@Loads the value of A into r1
		ldr		r0, =B
		ldr 	r2, [r0]		@Loads the value of B into r2
		mov 	r3, #0			@r3 = 0
loop:	cmp 	r1, r2
		blt		exit
		sub 	r1, r1, r2
		add 	r3, r3, #1
		b 		loop
exit:	ldr 	r0, =C			@Loads the address of C into r0
		str 	r3, [r0]
		b		.
		.end