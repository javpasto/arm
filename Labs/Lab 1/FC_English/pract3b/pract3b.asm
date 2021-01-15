/*-----------------------------------------------------------------
**
**  File:
**    pract3b.asm  4/02/2016
**
**    Introduction to Computers
**    Dpto. de Arquitectura de Computadores y Automática
**    Facultad de Informática. Universidad Complutense de Madrid
**
**  Goal:
**    Implement a program that sorts a vector, A, of positive integers, of length N
**    and stores the result in vector B
**	  The program must use the function "max" implemented in prac3a.
**
**  Design notes:
**
**---------------------------------------------------------------*/

.global start
.extern _stack

.EQU N, 8

.data
A:         .word 7,3,25,4,75,100,1,1	@ Vector to be sorted

.bss
B:         .space N*4			@ Sorted vector
ind:       .space 4				@ variable "ind" of the C code


.text
/* This program sorts a vector, A, of positive integers, of length N
   and stores the result in vector B */

start:
            ldr sp, =_stack		@ initialize the SP with the address provided in the linker script
			mov	fp, #0			@ initialize the FP

			@ complete the rest of the code



.end

