// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

    (LOOP) //Infinite loop to take input from the keyboard
        @KBD
        D=M

        @BLACK
        D;JNE //If KBD != 0 then go to BLACK

        @WHITE
        D;JEQ //IF KBD == 0 then go to WHITE

        @LOOP
        0;JEQ   

    (BLACK)
        @SCREEN
        D=A

        (BLACKLOOP) //LOOP to FILL the screen with black pixels
            @address
            A=D
            M=-1
            
            @i
            M=D

            @KBD
            D=A-D
            @LOOP
            D-1;JEQ 

            @i
            D=M+1

            @BLACKLOOP
            0;JEQ

    

    (WHITE)
        @SCREEN
        D=A

        (WHITELOOP) //LOOP to FILL the screen with White pixels
            @address
                A=D
                M=0
            
            @i
            M=D

            @KBD
            D=A-D
            @LOOP
            D-1;JEQ

            @i
            D=M+1
            
            @WHITELOOP
            0;JEQ
    




