/*-----------------------------------------------------------------
**
**  File:
**    pract3a.asm  4/02/2016
**
**    Introduction to Computers
**    Dpto. de Arquitectura de Computadores y Automática
**    Facultad de Informática. Universidad Complutense de Madrid
**
**  Goal:
**    Implement a function that returns the position of the maximun
**    of a vector of positive integers.
**	  The result (i.e. the position of the maximum) must be stored in
**    the variable "resul"
**
**  Design notes:
**  Before calling the fucntion give some values to the vector
**
**---------------------------------------------------------------*/


.global start
.extern _stack

.EQU N, 8

.data
A: .word 4,5,25,4,75,2,1,1

.bss
resul:	.space 4

.text

/*
-------------------------------------------------------------
This program calls the subroutine "max" to find the position of the
maximum value of a vector of postitive integers. This position is then
stored in the varaible "resul". The program is used to test if
the subroutine "max" works correctly.
-------------------------------------------------------------
*/

start:	ldr sp, =_stack		@ initialize the SP with the address provided in the linker script
		mov	fp, #0			@ initialize the FP

       	ldr r6,=A
       						@ Preparing the call to subroutine max
       	mov	r0,r6			@ 1st parameter (address of A)
       	mov r1,#N			@ 2nd parameter (length of vector)
       	bl  max
       	ldr r2,=resul
       	str r0,[r2]			@ store the return value
       	b	.



/* subroutine max (leaf subroutine)
-----------------------------------------------------------------------
Function:		Finds the position of the maximum value of a vector of postitive integers
Parameters IN	r0: starting address of the vector to be traversed
				r1: vector length
Parameters OUT	r0: position of the maximum element

--------------------------------------------------------------------
*/

		@ complete the rest of the code

max:



.end
