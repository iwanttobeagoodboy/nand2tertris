// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
M[R2] = 0
D = M[R0]
(LOOP)
@END
D;JEQ
M[R3] = D
D = M[R2]
A = M[R1]
D = A + D
M[R2] = D
D = M[R3]
D = D - 1
@LOOP
0;JMP
(END)
@END
0;JMP