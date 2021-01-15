/*-----------------------------------------------------------------
**
**  File:
**    pract2a.asm  4/02/2016
**
**    Introduction to Computers
**    Dpto. de Arquitectura de Computadores y Automática
**    Facultad de Informática. Universidad Complutense de Madrid
**
**  Goal:
**    Find the maximun of a vector, A, of positive integers
**	  The result must be stored in the variable "max"
**
**  Design notes:
**
**---------------------------------------------------------------*/

.global start

.EQU N, 8

.data
A: .word 7,3,25,4,75,2,1,45

.bss
max: .space 4

.text
start: mov r0, #0
       ldr r1,=max  			@ r1 <- addres of max
       str r0,[r1]  			@ write 0 to max
@ complete the rest of the code






.end

