//push constant 0
@0
D=A
@255
A=M
M=D
@255
M=M+1
//pop local 0
@0
D=A
@LCL
D=D+M
@addr
M=D
@255
AM=M-1
D=M
@addr
A=M
M=D
//label LOOP
(LOOP)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@255
A=M
M=D
@255
M=M+1
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@255
A=M
M=D
@255
M=M+1
//add
@255
AM=M-1
D=M
@255
A=M-1
M=D+M
//pop local 0
@0
D=A
@LCL
D=D+M
@addr
M=D
@255
AM=M-1
D=M
@addr
A=M
M=D
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@255
A=M
M=D
@255
M=M+1
//push constant 1
@1
D=A
@255
A=M
M=D
@255
M=M+1
//sub
@255
AM=M-1
D=M
@255
A=M-1
M=M-D
//pop argument 0
@0
D=A
@ARG
D=D+M
@addr
M=D
@255
AM=M-1
D=M
@addr
A=M
M=D
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@255
A=M
M=D
@255
M=M+1
//if-goto LOOP
@255
A=M-1
D=M
@LOOP
@255
M=M-1
D;JNE
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@255
A=M
M=D
@255
M=M+1
