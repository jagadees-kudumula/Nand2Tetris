// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.

//Computes RAM[2] = RAM[0] * RAM[1]
//R0 * R1 < 32768

//Pseudo code
//sum = 0
//for i in range(RAM[0])
//sum += RAM[1]

    @R0
    D=M
    @n
    M=D //n = RAM[0]

    @i
    M=0 //i = 1

    @sum
    M=0 //sum=0

    (LOOP)
        @i
        D=M
        @n
        D=D-M
        @STOP
        D;JEQ //if i == n then goto end

        @R1
        D=M
        @sum
        M=D+M //Sum = sum + R1

        @i
        M=M+1 //i++

        @LOOP
        0;JEQ
    (STOP)
        @sum
        D=M
        @R2
        M=D //R2 = sum

    (END)
        @END
        0;JEQ