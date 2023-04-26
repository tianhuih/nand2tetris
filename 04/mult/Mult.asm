// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.


@0
D=M     // D = R[0]
@i
M=D     // i = R[0]
@2
M=0     // R[2] = 0

(LOOP)
    @i
    D=M     // D=i 
    @END
    D;JLE   // if i <= 0 jump to END
    @1
    D=M     // D = R[1]
    @2
    M=M+D   // R[2] += D
    @i 
    M=M-1   // i--
    @LOOP   
    0;JMP   // jump to start
(END)
