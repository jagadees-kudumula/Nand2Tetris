//function Sys.init 0
(Sys.init)
@0
D=A
@n
M=D-1
(LOOP7)
@n
D=M
M=M-1
@NEXT7
D;JLT
@LCL
A=D+M
M=0
@LOOP7
0;JEQ
(NEXT7)
@0
D=A
@SP
M=D+M
//push constant 4000
@4000
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push constant 5000
@5000
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//call Sys.main 0
//push retAddrLabel on to the stack
@Sys.main$ret.1
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
@Sys.main
0;JEQ
//create retAddress Label
(Sys.main$ret.1)
//pop temp 1
@SP
AM=M-1
D=M
@6
M=D
//label LOOP
(LOOP)
//goto LOOP
@LOOP
0;JEQ
//function Sys.main 5
(Sys.main)
@5
D=A
@n
M=D-1
(LOOP23)
@n
D=M
M=M-1
@NEXT23
D;JLT
@LCL
A=D+M
M=0
@LOOP23
0;JEQ
(NEXT23)
@5
D=A
@SP
M=D+M
//push constant 4001
@4001
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push constant 5001
@5001
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push constant 200
@200
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 1
@1
D=A
@LCL
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 2
@2
D=A
@LCL
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 3
@3
D=A
@LCL
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.add12 1
//push retAddrLabel on to the stack
@Sys.add12$ret.1
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
@Sys.add12
0;JEQ
//create retAddress Label
(Sys.add12$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
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
//goto retAddr
@Sys.main$ret.1
0;JEQ
//function Sys.add12 0
(Sys.add12)
@0
D=A
@n
M=D-1
(LOOP49)
@n
D=M
M=M-1
@NEXT49
D;JLT
@LCL
A=D+M
M=0
@LOOP49
0;JEQ
(NEXT49)
@0
D=A
@SP
M=D+M
//push constant 4002
@4002
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push constant 5002
@5002
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//goto retAddr
@Sys.add12$ret.1
0;JEQ
//function Sys.init 0
(Sys.init)
@0
D=A
@n
M=D-1
(LOOP7)
@n
D=M
M=M-1
@NEXT7
D;JLT
@LCL
A=D+M
M=0
@LOOP7
0;JEQ
(NEXT7)
@0
D=A
@SP
M=D+M
//push constant 4000
@4000
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push constant 5000
@5000
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//call Sys.main 0
//push retAddrLabel on to the stack
@Sys.main$ret.1
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
@Sys.main
0;JEQ
//create retAddress Label
(Sys.main$ret.1)
//pop temp 1
@SP
AM=M-1
D=M
@6
M=D
//label LOOP
(LOOP)
//goto LOOP
@LOOP
0;JEQ
//function Sys.main 5
(Sys.main)
@5
D=A
@n
M=D-1
(LOOP23)
@n
D=M
M=M-1
@NEXT23
D;JLT
@LCL
A=D+M
M=0
@LOOP23
0;JEQ
(NEXT23)
@5
D=A
@SP
M=D+M
//push constant 4001
@4001
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push constant 5001
@5001
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push constant 200
@200
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 1
@1
D=A
@LCL
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 2
@2
D=A
@LCL
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 3
@3
D=A
@LCL
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.add12 1
//push retAddrLabel on to the stack
@Sys.add12$ret.1
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
@Sys.add12
0;JEQ
//create retAddress Label
(Sys.add12$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
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
//goto retAddr
@Sys.main$ret.1
0;JEQ
//function Sys.add12 0
(Sys.add12)
@0
D=A
@n
M=D-1
(LOOP49)
@n
D=M
M=M-1
@NEXT49
D;JLT
@LCL
A=D+M
M=0
@LOOP49
0;JEQ
(NEXT49)
@0
D=A
@SP
M=D+M
//push constant 4002
@4002
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push constant 5002
@5002
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//goto retAddr
@Sys.add12$ret.1
0;JEQ
