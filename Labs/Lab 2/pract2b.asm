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
	   		mov 	r1, #0					@ r1 <- 0 (counter 1)
	   		mov		r2, #0					@ r2 <- 0 (counter 2)

	   		ldr		r3, =A					@ r3 <- Address A
	   		ldr		r4, =B					@ r4 <- Address B
	   		ldr		r0, =max				@ r0 <- Addres of max
			mov		r5, #0					@ r5 <- Value of max
			str		r5, [r0]				@ stores #0 in max

			ldr		r0, =ind				@ r0 <- Address of inf
			mov		r6, #0					@ r6 <- Value of max
			str		r6, [r0]				@ stores #0 in ind

for_1: 		cmp		r2, #N
			bge		end_for_1

				mov		r5, #0					@ r5 <- 0 (max)

for_2:			cmp		r1, #N
				bge		end_for_2

					ldr		r7, [r3, r1, lsl #2]	@ r5 <- A[counter1]

					cmp		r5, r7					@ if (max < A[counter1])
					bge		end_if_1

						mov		r5, r7				@ r5 <- A[counter1] / A[counter1] > r5 (max)
						ldr		r0, =max			@ r0 <- Address of max
						str		r5, [r0]			@ r5 -> max
						add		r6, r3, r1, lsl #2	@ r6 <- Addres of A[counter1] / A[counter1] > max (ind)

						cmp		r2, #0
						bne		end_if_2

							mov		r9, r1				@ r9 <- Index of the first max
			
end_if_2:			ldr		r0, =ind
					str		r6, [r0]				@ r6 -> ind

end_if_1:			add		r1, r1, #1				@ counter1++;
				b		for_2

end_for_2:		str		r5, [r4, r2, lsl #2]	@ store max in B[counter2]
				add		r2, r2, #1				@ counter2++;

				mov		r1, #0					@ counter1 = 0;
				str		r1, [r6]				@ A[Address Max] = 0;
				mov		r5, #0					@ max = 0;
				b		for_1

end_for_1:	ldr		r8, [r4]				@ r8 <- first element of B
			ldr		r0, =max				@ r0 <- Address of max
			str		r8, [r0]				@ Stores the first value of B in max
			ldr		r0, =ind				@ r0 <- Address of ind
			str		r9, [r0]	@ Stores the direction of the first max of A
			b		.

.end
