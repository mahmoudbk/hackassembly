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

@R0
D = M 
//if r0=0 then r2 = 0 and jump to end 
@R2 //r2 = r0 
M=D 
@R2 
D=M 
@END 
D;JEQ

@R1 
D=M 
@STOP 
D;JEQ 

@n 
M=D //n=r2 
@i
M=1 //i=1 

(LOOP)
// if i == n stop looping 
@i 
D=M 
@n 
D=D-M 
@END
D;JEQ
// r2 = r2 + r0 
@R0 
D=M 
@R2 
M = M+D 
//i=i+1 
@i
M = M+1
@LOOP 
0;JMP

(STOP)
@R1 
D=M 
@R2 
M=D 
@END 
0;JMP

(END)
@END 
0;JMP



