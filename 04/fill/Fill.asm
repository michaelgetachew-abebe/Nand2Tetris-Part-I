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

// Ready Steady Go .........

    @SCREEN
    D = A
    @addr
    M = D

    @8192
    D = A
    @n
    M = D
(M)
    @24576
    D = M
    @N
    D;JNE

    @i
    M = 0

(LOOP1)
    @i
    D = M
    @n
    D = D - M
    @M
    D;JEQ

    @addr
    D = M
    @i
    A = D + M
    M = 0
    @i
    M = M + 1
    @LOOP1
    0;JMP
    
    @M
    0;JMP
(N)
    @i
    M = 0

(LOOP2)
    @i
    D = M
    @n
    D = D - M
    @M
    D;JEQ

    @addr
    D = M
    @i
    A = D + M
    M = -1
    @i
    M = M + 1
    @LOOP2
    0;JMP
     
    @M
    0;JMP