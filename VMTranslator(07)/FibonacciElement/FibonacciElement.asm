@256
D=A
@SP
M=D
//push retAddrLabel on to the stack
@Sys.init$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
//ARG = SP - 5 - nArgs
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Sys.init
0;JEQ
//create retAddress Label
(Sys.init$ret.1)
//function Sys.init 0
(Sys.init)
@0
D=A
@n
M=D-1
(LOOP12)
@n
D=M
M=M-1
@NEXT12
D;JLT
@LCL
A=D+M
M=0
@LOOP12
0;JEQ
(NEXT12)
@0
D=A
@SP
M=D+M
//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Main.fibonacci 1
//push retAddrLabel on to the stack
@Main.fibonacci$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
//ARG = SP - 5 - nArgs
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Main.fibonacci
0;JEQ
//create retAddress Label
(Main.fibonacci$ret.1)
//label END
(END)
//goto END
@END
0;JEQ
//function Main.fibonacci 0
(Main.fibonacci)
@0
D=A
@n
M=D-1
(LOOP30)
@n
D=M
M=M-1
@NEXT30
D;JLT
@LCL
A=D+M
M=0
@LOOP30
0;JEQ
(NEXT30)
@0
D=A
@SP
M=D+M
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
@y
M=D
@SP
A=M-1
D=M
@y
D=D-M
@TRUE33
D;JLT
@SP
A=M-1
M=0
@NEXT33
0;JEQ
(TRUE33)
@SP
A=M-1
M=-1
(NEXT33)
//if-goto N_LT_2
@SP
AM=M-1
D=M
@N_LT_2
D;JNE
//goto N_GE_2
@N_GE_2
0;JEQ
//label N_LT_2
(N_LT_2)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//return
//endFrame = LCL
@LCL
D=M
@endFrame
M=D
//retAddr = *(endFrame-5)
@5
A=D-A
D=M
@retAddr
M=D
//*ARG = POP()
@0
D=A
@ARG
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//SP=ARG+1
@ARG
D=M+1
@SP
M=D
//THAT=*(endFrame-1)
@endFrame
A=M-1
D=M
@THAT
M=D
//THIS=*(endFrame-2)
@2
D=A
@endFrame
A=M-D
D=M
@THIS
M=D
//ARG=*(endFrame-3)
@3
D=A
@endFrame
A=M-D
D=M
@ARG
M=D
//LCL=*(endFrame-4)
@4
D=A
@endFrame
A=M-D
D=M
@LCL
M=D
@retAddr
A=M
0;JEQ
//label N_GE_2
(N_GE_2)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//call Main.fibonacci 1
//push retAddrLabel on to the stack
@Main.fibonacci$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
//ARG = SP - 5 - nArgs
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Main.fibonacci
0;JEQ
//create retAddress Label
(Main.fibonacci$ret.2)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//call Main.fibonacci 1
//push retAddrLabel on to the stack
@Main.fibonacci$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
//ARG = SP - 5 - nArgs
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Main.fibonacci
0;JEQ
//create retAddress Label
(Main.fibonacci$ret.3)
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//return
//endFrame = LCL
@LCL
D=M
@endFrame
M=D
//retAddr = *(endFrame-5)
@5
A=D-A
D=M
@retAddr
M=D
//*ARG = POP()
@0
D=A
@ARG
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//SP=ARG+1
@ARG
D=M+1
@SP
M=D
//THAT=*(endFrame-1)
@endFrame
A=M-1
D=M
@THAT
M=D
//THIS=*(endFrame-2)
@2
D=A
@endFrame
A=M-D
D=M
@THIS
M=D
//ARG=*(endFrame-3)
@3
D=A
@endFrame
A=M-D
D=M
@ARG
M=D
//LCL=*(endFrame-4)
@4
D=A
@endFrame
A=M-D
D=M
@LCL
M=D
@retAddr
A=M
0;JEQ
