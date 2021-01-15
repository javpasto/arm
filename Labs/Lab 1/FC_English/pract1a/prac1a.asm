/*-----------------------------------------------------------------
**
**  File:
**    pract1a.asm  4/02/2016
**
**    Introduction to Computers
**    Dpto. de Arquitectura de Computadores y Automática
**    Facultad de Informática. Universidad Complutense de Madrid
**
**  Goal:
**    Compare two numbers and save the largest one in the memory
**
**  Design notes:
**
**---------------------------------------------------------------*/


.global  	start
.data
X: 		.word	0x03
Y: 		.word	0x0A

.bss
Largest:
		.space 4
.text
start:	LDR 	R4, =X			@ R4 <-- Address of X
		LDR 	R3, =Y			@ R3 <-- Address of Y
		LDR 	R5, =Largest	@ R5 <-- Address of Largest
		LDR 	R1, [R4]		@ R1 <-- Value of X
		LDR 	R2, [R3]		@ R2 <-- Value of Y
		CMP 	R1, R2			@ Compute R1-R2
		BLE 	else			@ IF R1 <= R2, go to else
		STR 	R1, [R5]		@ Largest <-- Value of R1
		B		Done			@ Go to Done
else:	STR 	R2, [R5]		@ Largest <-- Value of R2
Done: 	B 		.				@ Work done, infinite loop
		.end


