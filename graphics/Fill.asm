// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

@8191
D=A 

@l 
M=D







(FST)
@KBD 
D=M 
@WHITE
D;JEQ 
@BLACK  
0;JMP



(BLACK)
@v 
M=-1
@j 
M=0
@SCREEN 
D=A 
@address 
M=D 
@SLOOP
0;JMP

(WHITE)
@v 
M=0
@j 
M=0
@SCREEN 
D=A 
@address 
M=D 
@SLOOP
0;JMP

//looping over the columns
(SLOOP)
@j 
D=M 
@l 
D=D-M 
@FST
D;JGT //if j>l go to next 
@v 
D=M
@address 
A=M 
M=D //RAM[address] = -1 (16 pixels)
@j 
M=M+1 
@1
D=A 
@address 
M=D+M 
@SLOOP
0;JMP





