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
//function Array.new 1
(Array.new)
@1
D=A
@n
M=D-1
(LOOP1)
@n
D=M
M=M-1
@NEXT1
D;JLT
@LCL
A=D+M
M=0
@LOOP1
0;JEQ
(NEXT1)
@1
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
//call Memory.alloc 1
//push retAddrLabel on to the stack
@Memory.alloc$ret.1
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
@Memory.alloc
0;JEQ
//create retAddress Label
(Memory.alloc$ret.1)
//pop local 0
@0
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
//function Array.dispose 0
(Array.dispose)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Memory.deAlloc 1
//push retAddrLabel on to the stack
@Memory.deAlloc$ret.1
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
@Memory.deAlloc
0;JEQ
//create retAddress Label
(Memory.deAlloc$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Ball.new 0
(Ball.new)
@0
D=A
@n
M=D-1
(LOOP15)
@n
D=M
M=M-1
@NEXT15
D;JLT
@LCL
A=D+M
M=0
@LOOP15
0;JEQ
(NEXT15)
@0
D=A
@SP
M=D+M
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Memory.alloc 1
//push retAddrLabel on to the stack
@Memory.alloc$ret.2
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
@Memory.alloc
0;JEQ
//create retAddress Label
(Memory.alloc$ret.2)
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
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
//pop this 0
@0
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop this 1
@1
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop this 10
@10
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
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
//pop this 11
@11
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push argument 4
@4
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop this 12
@12
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push argument 5
@5
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
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
//pop this 13
@13
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 14
@14
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Ball.show 1
//push retAddrLabel on to the stack
@Ball.show$ret.1
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
@Ball.show
0;JEQ
//create retAddress Label
(Ball.show$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push pointer 0
@THIS
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
//function Ball.dispose 0
(Ball.dispose)
@0
D=A
@n
M=D-1
(LOOP42)
@n
D=M
M=M-1
@NEXT42
D;JLT
@LCL
A=D+M
M=0
@LOOP42
0;JEQ
(NEXT42)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Memory.deAlloc 1
//push retAddrLabel on to the stack
@Memory.deAlloc$ret.2
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
@Memory.deAlloc
0;JEQ
//create retAddress Label
(Memory.deAlloc$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Ball.show 0
(Ball.show)
@0
D=A
@n
M=D-1
(LOOP50)
@n
D=M
M=M-1
@NEXT50
D;JLT
@LCL
A=D+M
M=0
@LOOP50
0;JEQ
(NEXT50)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//call Screen.setColor 1
//push retAddrLabel on to the stack
@Screen.setColor$ret.1
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
@Screen.setColor
0;JEQ
//create retAddress Label
(Screen.setColor$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Ball.draw 1
//push retAddrLabel on to the stack
@Ball.draw$ret.1
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
@Ball.draw
0;JEQ
//create retAddress Label
(Ball.draw$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Ball.hide 0
(Ball.hide)
@0
D=A
@n
M=D-1
(LOOP62)
@n
D=M
M=M-1
@NEXT62
D;JLT
@LCL
A=D+M
M=0
@LOOP62
0;JEQ
(NEXT62)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Screen.setColor 1
//push retAddrLabel on to the stack
@Screen.setColor$ret.2
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
@Screen.setColor
0;JEQ
//create retAddress Label
(Screen.setColor$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Ball.draw 1
//push retAddrLabel on to the stack
@Ball.draw$ret.2
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
@Ball.draw
0;JEQ
//create retAddress Label
(Ball.draw$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Ball.draw 0
(Ball.draw)
@0
D=A
@n
M=D-1
(LOOP73)
@n
D=M
M=M-1
@NEXT73
D;JLT
@LCL
A=D+M
M=0
@LOOP73
0;JEQ
(NEXT73)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 5
@5
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
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 5
@5
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
//call Screen.drawRectangle 4
//push retAddrLabel on to the stack
@Screen.drawRectangle$ret.1
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
@4
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawRectangle
0;JEQ
//create retAddress Label
(Screen.drawRectangle$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Ball.getLeft 0
(Ball.getLeft)
@0
D=A
@n
M=D-1
(LOOP88)
@n
D=M
M=M-1
@NEXT88
D;JLT
@LCL
A=D+M
M=0
@LOOP88
0;JEQ
(NEXT88)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 0
@0
D=A
@THIS
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
//function Ball.getRight 0
(Ball.getRight)
@0
D=A
@n
M=D-1
(LOOP93)
@n
D=M
M=M-1
@NEXT93
D;JLT
@LCL
A=D+M
M=0
@LOOP93
0;JEQ
(NEXT93)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 5
@5
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
@retAddr
A=M
0;JEQ
//function Ball.setDestination 3
(Ball.setDestination)
@3
D=A
@n
M=D-1
(LOOP100)
@n
D=M
M=M-1
@NEXT100
D;JLT
@LCL
A=D+M
M=0
@LOOP100
0;JEQ
(NEXT100)
@3
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 0
@0
D=A
@THIS
A=D+M
D=M
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
//pop this 2
@2
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 1
@1
D=A
@THIS
A=D+M
D=M
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
//pop this 3
@3
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Math.abs 1
//push retAddrLabel on to the stack
@Math.abs$ret.1
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
@Math.abs
0;JEQ
//create retAddress Label
(Math.abs$ret.1)
//pop local 0
@0
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
//push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Math.abs 1
//push retAddrLabel on to the stack
@Math.abs$ret.2
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
@Math.abs
0;JEQ
//create retAddress Label
(Math.abs$ret.2)
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
@TRUE119
D;JLT
@SP
A=M-1
M=0
@NEXT119
0;JEQ
(TRUE119)
@SP
A=M-1
M=-1
(NEXT119)
//pop this 7
@7
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 7
@7
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//if-goto Ball_1
@SP
AM=M-1
D=M
@Ball_1
D;JNE
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
//pop local 0
@0
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
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
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
@TRUE132
D;JLT
@SP
A=M-1
M=0
@NEXT132
0;JEQ
(TRUE132)
@SP
A=M-1
M=-1
(NEXT132)
//pop this 8
@8
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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
@TRUE136
D;JLT
@SP
A=M-1
M=0
@NEXT136
0;JEQ
(TRUE136)
@SP
A=M-1
M=-1
(NEXT136)
//pop this 9
@9
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto Ball_0
@Ball_0
0;JEQ
//label Ball_1
(Ball_1)
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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
@TRUE142
D;JLT
@SP
A=M-1
M=0
@NEXT142
0;JEQ
(TRUE142)
@SP
A=M-1
M=-1
(NEXT142)
//pop this 8
@8
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
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
@TRUE146
D;JLT
@SP
A=M-1
M=0
@NEXT146
0;JEQ
(TRUE146)
@SP
A=M-1
M=-1
(NEXT146)
//pop this 9
@9
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//label Ball_0
(Ball_0)
//push constant 2
@2
D=A
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.1
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.1)
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
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//pop this 4
@4
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 2
@2
D=A
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.2
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.2)
//pop this 5
@5
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 2
@2
D=A
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
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.3
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.3)
//pop this 6
@6
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 0
@0
D=A
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
//function Ball.move 0
(Ball.move)
@0
D=A
@n
M=D-1
(LOOP167)
@n
D=M
M=M-1
@NEXT167
D;JLT
@LCL
A=D+M
M=0
@LOOP167
0;JEQ
(NEXT167)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Ball.hide 1
//push retAddrLabel on to the stack
@Ball.hide$ret.1
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
@Ball.hide
0;JEQ
//create retAddress Label
(Ball.hide$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push this 4
@4
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
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
@TRUE175
D;JLT
@SP
A=M-1
M=0
@NEXT175
0;JEQ
(TRUE175)
@SP
A=M-1
M=-1
(NEXT175)
//not
@SP
A=M-1
M=!M
//if-goto Ball_3
@SP
AM=M-1
D=M
@Ball_3
D;JNE
//push this 4
@4
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 5
@5
D=A
@THIS
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
//pop this 4
@4
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto Ball_2
@Ball_2
0;JEQ
//label Ball_3
(Ball_3)
//push this 4
@4
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 6
@6
D=A
@THIS
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
//pop this 4
@4
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 9
@9
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//if-goto Ball_5
@SP
AM=M-1
D=M
@Ball_5
D;JNE
//push this 7
@7
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//if-goto Ball_7
@SP
AM=M-1
D=M
@Ball_7
D;JNE
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
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
//pop this 0
@0
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto Ball_6
@Ball_6
0;JEQ
//label Ball_7
(Ball_7)
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
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
//pop this 1
@1
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//label Ball_6
(Ball_6)
//goto Ball_4
@Ball_4
0;JEQ
//label Ball_5
(Ball_5)
//push this 7
@7
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//if-goto Ball_9
@SP
AM=M-1
D=M
@Ball_9
D;JNE
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
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
//pop this 0
@0
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto Ball_8
@Ball_8
0;JEQ
//label Ball_9
(Ball_9)
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
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
//pop this 1
@1
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//label Ball_8
(Ball_8)
//label Ball_4
(Ball_4)
//label Ball_2
(Ball_2)
//push this 8
@8
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//if-goto Ball_11
@SP
AM=M-1
D=M
@Ball_11
D;JNE
//push this 7
@7
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//if-goto Ball_13
@SP
AM=M-1
D=M
@Ball_13
D;JNE
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
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
//pop this 1
@1
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto Ball_12
@Ball_12
0;JEQ
//label Ball_13
(Ball_13)
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
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
//pop this 0
@0
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//label Ball_12
(Ball_12)
//goto Ball_10
@Ball_10
0;JEQ
//label Ball_11
(Ball_11)
//push this 7
@7
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//if-goto Ball_15
@SP
AM=M-1
D=M
@Ball_15
D;JNE
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
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
//pop this 1
@1
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto Ball_14
@Ball_14
0;JEQ
//label Ball_15
(Ball_15)
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
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
//pop this 0
@0
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//label Ball_14
(Ball_14)
//label Ball_10
(Ball_10)
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 10
@10
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE259
D;JGT
@SP
A=M-1
M=0
@NEXT259
0;JEQ
(TRUE259)
@SP
A=M-1
M=-1
(NEXT259)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Ball_17
@SP
AM=M-1
D=M
@Ball_17
D;JNE
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 14
@14
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 10
@10
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop this 0
@0
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto Ball_16
@Ball_16
0;JEQ
//label Ball_17
(Ball_17)
//label Ball_16
(Ball_16)
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 11
@11
D=A
@THIS
A=D+M
D=M
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
@TRUE272
D;JLT
@SP
A=M-1
M=0
@NEXT272
0;JEQ
(TRUE272)
@SP
A=M-1
M=-1
(NEXT272)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Ball_19
@SP
AM=M-1
D=M
@Ball_19
D;JNE
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 14
@14
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 11
@11
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop this 0
@0
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto Ball_18
@Ball_18
0;JEQ
//label Ball_19
(Ball_19)
//label Ball_18
(Ball_18)
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 12
@12
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE285
D;JGT
@SP
A=M-1
M=0
@NEXT285
0;JEQ
(TRUE285)
@SP
A=M-1
M=-1
(NEXT285)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Ball_21
@SP
AM=M-1
D=M
@Ball_21
D;JNE
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 14
@14
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 12
@12
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop this 1
@1
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto Ball_20
@Ball_20
0;JEQ
//label Ball_21
(Ball_21)
//label Ball_20
(Ball_20)
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 13
@13
D=A
@THIS
A=D+M
D=M
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
@TRUE298
D;JLT
@SP
A=M-1
M=0
@NEXT298
0;JEQ
(TRUE298)
@SP
A=M-1
M=-1
(NEXT298)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Ball_23
@SP
AM=M-1
D=M
@Ball_23
D;JNE
//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 14
@14
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 13
@13
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop this 1
@1
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto Ball_22
@Ball_22
0;JEQ
//label Ball_23
(Ball_23)
//label Ball_22
(Ball_22)
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Ball.show 1
//push retAddrLabel on to the stack
@Ball.show$ret.2
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
@Ball.show
0;JEQ
//create retAddress Label
(Ball.show$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push this 14
@14
D=A
@THIS
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
//function Ball.bounce 5
(Ball.bounce)
@5
D=A
@n
M=D-1
(LOOP314)
@n
D=M
M=M-1
@NEXT314
D;JLT
@LCL
A=D+M
M=0
@LOOP314
0;JEQ
(NEXT314)
@5
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push retAddrLabel on to the stack
@Math.divide$ret.1
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.divide
0;JEQ
//create retAddress Label
(Math.divide$ret.1)
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
//push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push retAddrLabel on to the stack
@Math.divide$ret.2
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.divide
0;JEQ
//create retAddress Label
(Math.divide$ret.2)
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE327
D;JEQ
@SP
A=M-1
M=0
@NEXT327
0;JEQ
(TRUE327)
@SP
A=M-1
M=-1
(NEXT327)
//not
@SP
A=M-1
M=!M
//if-goto Ball_25
@SP
AM=M-1
D=M
@Ball_25
D;JNE
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 4
@4
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
//goto Ball_24
@Ball_24
0;JEQ
//label Ball_25
(Ball_25)
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
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
@TRUE336
D;JLT
@SP
A=M-1
M=0
@NEXT336
0;JEQ
(TRUE336)
@SP
A=M-1
M=-1
(NEXT336)
//not
@SP
A=M-1
M=!M
//push argument 1
@1
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
//eq
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
@TRUE340
D;JEQ
@SP
A=M-1
M=0
@NEXT340
0;JEQ
(TRUE340)
@SP
A=M-1
M=-1
(NEXT340)
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
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
@TRUE344
D;JLT
@SP
A=M-1
M=0
@NEXT344
0;JEQ
(TRUE344)
@SP
A=M-1
M=-1
(NEXT344)
//push argument 1
@1
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
//neg
@SP
A=M-1
M=-M
//eq
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
@TRUE348
D;JEQ
@SP
A=M-1
M=0
@NEXT348
0;JEQ
(TRUE348)
@SP
A=M-1
M=-1
(NEXT348)
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//or
@SP
AM=M-1
D=M
@SP
A=M-1
M=D|M
//not
@SP
A=M-1
M=!M
//if-goto Ball_27
@SP
AM=M-1
D=M
@Ball_27
D;JNE
//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 4
@4
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
//goto Ball_26
@Ball_26
0;JEQ
//label Ball_27
(Ball_27)
//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 4
@4
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
//label Ball_26
(Ball_26)
//label Ball_24
(Ball_24)
//push this 14
@14
D=A
@THIS
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
//eq
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
@TRUE363
D;JEQ
@SP
A=M-1
M=0
@NEXT363
0;JEQ
(TRUE363)
@SP
A=M-1
M=-1
(NEXT363)
//not
@SP
A=M-1
M=!M
//if-goto Ball_29
@SP
AM=M-1
D=M
@Ball_29
D;JNE
//push constant 506
@506
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.4
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.4)
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
//call Math.divide 2
//push retAddrLabel on to the stack
@Math.divide$ret.3
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.divide
0;JEQ
//create retAddress Label
(Math.divide$ret.3)
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
//push this 1
@1
D=A
@THIS
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.5
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.5)
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
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
//goto Ball_28
@Ball_28
0;JEQ
//label Ball_29
(Ball_29)
//push this 14
@14
D=A
@THIS
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
//eq
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
@TRUE385
D;JEQ
@SP
A=M-1
M=0
@NEXT385
0;JEQ
(TRUE385)
@SP
A=M-1
M=-1
(NEXT385)
//not
@SP
A=M-1
M=!M
//if-goto Ball_31
@SP
AM=M-1
D=M
@Ball_31
D;JNE
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.6
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.6)
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
//call Math.divide 2
//push retAddrLabel on to the stack
@Math.divide$ret.4
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.divide
0;JEQ
//create retAddress Label
(Math.divide$ret.4)
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
//push this 1
@1
D=A
@THIS
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.7
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.7)
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
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
//goto Ball_30
@Ball_30
0;JEQ
//label Ball_31
(Ball_31)
//push this 14
@14
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE406
D;JEQ
@SP
A=M-1
M=0
@NEXT406
0;JEQ
(TRUE406)
@SP
A=M-1
M=-1
(NEXT406)
//not
@SP
A=M-1
M=!M
//if-goto Ball_33
@SP
AM=M-1
D=M
@Ball_33
D;JNE
//push constant 250
@250
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
//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.8
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.8)
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
//call Math.divide 2
//push retAddrLabel on to the stack
@Math.divide$ret.5
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.divide
0;JEQ
//create retAddress Label
(Math.divide$ret.5)
//pop local 0
@0
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
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.9
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.9)
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop local 0
@0
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
//goto Ball_32
@Ball_32
0;JEQ
//label Ball_33
(Ball_33)
//push constant 0
@0
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
//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.10
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.10)
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
//call Math.divide 2
//push retAddrLabel on to the stack
@Math.divide$ret.6
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.divide
0;JEQ
//create retAddress Label
(Math.divide$ret.6)
//pop local 0
@0
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
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.11
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.11)
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop local 0
@0
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
//label Ball_32
(Ball_32)
//label Ball_30
(Ball_30)
//label Ball_28
(Ball_28)
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//call Ball.setDestination 3
//push retAddrLabel on to the stack
@Ball.setDestination$ret.1
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
@3
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Ball.setDestination
0;JEQ
//create retAddress Label
(Ball.setDestination$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Bat.new 0
(Bat.new)
@0
D=A
@n
M=D-1
(LOOP450)
@n
D=M
M=M-1
@NEXT450
D;JLT
@LCL
A=D+M
M=0
@LOOP450
0;JEQ
(NEXT450)
@0
D=A
@SP
M=D+M
//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Memory.alloc 1
//push retAddrLabel on to the stack
@Memory.alloc$ret.3
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
@Memory.alloc
0;JEQ
//create retAddress Label
(Memory.alloc$ret.3)
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
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
//pop this 0
@0
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop this 1
@1
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop this 2
@2
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop this 3
@3
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 4
@4
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Bat.show 1
//push retAddrLabel on to the stack
@Bat.show$ret.1
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
@Bat.show
0;JEQ
//create retAddress Label
(Bat.show$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push pointer 0
@THIS
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
//function Bat.dispose 0
(Bat.dispose)
@0
D=A
@n
M=D-1
(LOOP469)
@n
D=M
M=M-1
@NEXT469
D;JLT
@LCL
A=D+M
M=0
@LOOP469
0;JEQ
(NEXT469)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Memory.deAlloc 1
//push retAddrLabel on to the stack
@Memory.deAlloc$ret.3
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
@Memory.deAlloc
0;JEQ
//create retAddress Label
(Memory.deAlloc$ret.3)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Bat.show 0
(Bat.show)
@0
D=A
@n
M=D-1
(LOOP477)
@n
D=M
M=M-1
@NEXT477
D;JLT
@LCL
A=D+M
M=0
@LOOP477
0;JEQ
(NEXT477)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//call Screen.setColor 1
//push retAddrLabel on to the stack
@Screen.setColor$ret.3
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
@Screen.setColor
0;JEQ
//create retAddress Label
(Screen.setColor$ret.3)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Bat.draw 1
//push retAddrLabel on to the stack
@Bat.draw$ret.1
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
@Bat.draw
0;JEQ
//create retAddress Label
(Bat.draw$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Bat.hide 0
(Bat.hide)
@0
D=A
@n
M=D-1
(LOOP489)
@n
D=M
M=M-1
@NEXT489
D;JLT
@LCL
A=D+M
M=0
@LOOP489
0;JEQ
(NEXT489)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Screen.setColor 1
//push retAddrLabel on to the stack
@Screen.setColor$ret.4
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
@Screen.setColor
0;JEQ
//create retAddress Label
(Screen.setColor$ret.4)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Bat.draw 1
//push retAddrLabel on to the stack
@Bat.draw$ret.2
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
@Bat.draw
0;JEQ
//create retAddress Label
(Bat.draw$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Bat.draw 0
(Bat.draw)
@0
D=A
@n
M=D-1
(LOOP500)
@n
D=M
M=M-1
@NEXT500
D;JLT
@LCL
A=D+M
M=0
@LOOP500
0;JEQ
(NEXT500)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 2
@2
D=A
@THIS
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
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 3
@3
D=A
@THIS
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
//call Screen.drawRectangle 4
//push retAddrLabel on to the stack
@Screen.drawRectangle$ret.2
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
@4
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawRectangle
0;JEQ
//create retAddress Label
(Screen.drawRectangle$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Bat.setDirection 0
(Bat.setDirection)
@0
D=A
@n
M=D-1
(LOOP515)
@n
D=M
M=M-1
@NEXT515
D;JLT
@LCL
A=D+M
M=0
@LOOP515
0;JEQ
(NEXT515)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop this 4
@4
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 0
@0
D=A
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
//function Bat.getLeft 0
(Bat.getLeft)
@0
D=A
@n
M=D-1
(LOOP522)
@n
D=M
M=M-1
@NEXT522
D;JLT
@LCL
A=D+M
M=0
@LOOP522
0;JEQ
(NEXT522)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 0
@0
D=A
@THIS
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
//function Bat.getRight 0
(Bat.getRight)
@0
D=A
@n
M=D-1
(LOOP527)
@n
D=M
M=M-1
@NEXT527
D;JLT
@LCL
A=D+M
M=0
@LOOP527
0;JEQ
(NEXT527)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 2
@2
D=A
@THIS
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
//function Bat.setWidth 0
(Bat.setWidth)
@0
D=A
@n
M=D-1
(LOOP534)
@n
D=M
M=M-1
@NEXT534
D;JLT
@LCL
A=D+M
M=0
@LOOP534
0;JEQ
(NEXT534)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Bat.hide 1
//push retAddrLabel on to the stack
@Bat.hide$ret.1
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
@Bat.hide
0;JEQ
//create retAddress Label
(Bat.hide$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop this 2
@2
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Bat.show 1
//push retAddrLabel on to the stack
@Bat.show$ret.2
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
@Bat.show
0;JEQ
//create retAddress Label
(Bat.show$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Bat.move 0
(Bat.move)
@0
D=A
@n
M=D-1
(LOOP547)
@n
D=M
M=M-1
@NEXT547
D;JLT
@LCL
A=D+M
M=0
@LOOP547
0;JEQ
(NEXT547)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 4
@4
D=A
@THIS
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
//eq
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
@TRUE552
D;JEQ
@SP
A=M-1
M=0
@NEXT552
0;JEQ
(TRUE552)
@SP
A=M-1
M=-1
(NEXT552)
//not
@SP
A=M-1
M=!M
//if-goto Bat_1
@SP
AM=M-1
D=M
@Bat_1
D;JNE
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
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
//pop this 0
@0
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
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
@TRUE561
D;JLT
@SP
A=M-1
M=0
@NEXT561
0;JEQ
(TRUE561)
@SP
A=M-1
M=-1
(NEXT561)
//not
@SP
A=M-1
M=!M
//if-goto Bat_3
@SP
AM=M-1
D=M
@Bat_3
D;JNE
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 0
@0
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto Bat_2
@Bat_2
0;JEQ
//label Bat_3
(Bat_3)
//label Bat_2
(Bat_2)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Screen.setColor 1
//push retAddrLabel on to the stack
@Screen.setColor$ret.5
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
@Screen.setColor
0;JEQ
//create retAddress Label
(Screen.setColor$ret.5)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 2
@2
D=A
@THIS
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
//push constant 1
@1
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
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 2
@2
D=A
@THIS
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
//push constant 4
@4
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
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 3
@3
D=A
@THIS
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
//call Screen.drawRectangle 4
//push retAddrLabel on to the stack
@Screen.drawRectangle$ret.3
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
@4
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawRectangle
0;JEQ
//create retAddress Label
(Screen.drawRectangle$ret.3)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//call Screen.setColor 1
//push retAddrLabel on to the stack
@Screen.setColor$ret.6
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
@Screen.setColor
0;JEQ
//create retAddress Label
(Screen.setColor$ret.6)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
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
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 3
@3
D=A
@THIS
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
//call Screen.drawRectangle 4
//push retAddrLabel on to the stack
@Screen.drawRectangle$ret.4
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
@4
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawRectangle
0;JEQ
//create retAddress Label
(Screen.drawRectangle$ret.4)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//goto Bat_0
@Bat_0
0;JEQ
//label Bat_1
(Bat_1)
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
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
//pop this 0
@0
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 2
@2
D=A
@THIS
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
//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE612
D;JGT
@SP
A=M-1
M=0
@NEXT612
0;JEQ
(TRUE612)
@SP
A=M-1
M=-1
(NEXT612)
//not
@SP
A=M-1
M=!M
//if-goto Bat_5
@SP
AM=M-1
D=M
@Bat_5
D;JNE
//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//push this 2
@2
D=A
@THIS
A=D+M
D=M
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
//pop this 0
@0
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto Bat_4
@Bat_4
0;JEQ
//label Bat_5
(Bat_5)
//label Bat_4
(Bat_4)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Screen.setColor 1
//push retAddrLabel on to the stack
@Screen.setColor$ret.7
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
@Screen.setColor
0;JEQ
//create retAddress Label
(Screen.setColor$ret.7)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
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
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 0
@0
D=A
@THIS
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
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 3
@3
D=A
@THIS
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
//call Screen.drawRectangle 4
//push retAddrLabel on to the stack
@Screen.drawRectangle$ret.5
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
@4
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawRectangle
0;JEQ
//create retAddress Label
(Screen.drawRectangle$ret.5)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//call Screen.setColor 1
//push retAddrLabel on to the stack
@Screen.setColor$ret.8
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
@Screen.setColor
0;JEQ
//create retAddress Label
(Screen.setColor$ret.8)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 2
@2
D=A
@THIS
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
//push constant 3
@3
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
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 2
@2
D=A
@THIS
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
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 3
@3
D=A
@THIS
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
//call Screen.drawRectangle 4
//push retAddrLabel on to the stack
@Screen.drawRectangle$ret.6
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
@4
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawRectangle
0;JEQ
//create retAddress Label
(Screen.drawRectangle$ret.6)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//label Bat_0
(Bat_0)
//push constant 0
@0
D=A
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
//function Keyboard.keyPressed 0
(Keyboard.keyPressed)
@0
D=A
@n
M=D-1
(LOOP658)
@n
D=M
M=M-1
@NEXT658
D;JLT
@LCL
A=D+M
M=0
@LOOP658
0;JEQ
(NEXT658)
@0
D=A
@SP
M=D+M
//push constant 24576
@24576
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Memory.peek 1
//push retAddrLabel on to the stack
@Memory.peek$ret.1
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
@Memory.peek
0;JEQ
//create retAddress Label
(Memory.peek$ret.1)
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
//function Keyboard.readChar 1
(Keyboard.readChar)
@1
D=A
@n
M=D-1
(LOOP662)
@n
D=M
M=M-1
@NEXT662
D;JLT
@LCL
A=D+M
M=0
@LOOP662
0;JEQ
(NEXT662)
@1
D=A
@SP
M=D+M
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.printChar 1
//push retAddrLabel on to the stack
@Output.printChar$ret.1
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
@Output.printChar
0;JEQ
//create retAddress Label
(Output.printChar$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//label Keyboard_0
(Keyboard_0)
//call Keyboard.keyPressed 0
//push retAddrLabel on to the stack
@Keyboard.keyPressed$ret.1
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
@Keyboard.keyPressed
0;JEQ
//create retAddress Label
(Keyboard.keyPressed$ret.1)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE669
D;JEQ
@SP
A=M-1
M=0
@NEXT669
0;JEQ
(TRUE669)
@SP
A=M-1
M=-1
(NEXT669)
//not
@SP
A=M-1
M=!M
//if-goto Keyboard_1
@SP
AM=M-1
D=M
@Keyboard_1
D;JNE
//goto Keyboard_0
@Keyboard_0
0;JEQ
//label Keyboard_1
(Keyboard_1)
//call Keyboard.keyPressed 0
//push retAddrLabel on to the stack
@Keyboard.keyPressed$ret.2
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
@Keyboard.keyPressed
0;JEQ
//create retAddress Label
(Keyboard.keyPressed$ret.2)
//pop local 0
@0
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
//label Keyboard_2
(Keyboard_2)
//call Keyboard.keyPressed 0
//push retAddrLabel on to the stack
@Keyboard.keyPressed$ret.3
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
@Keyboard.keyPressed
0;JEQ
//create retAddress Label
(Keyboard.keyPressed$ret.3)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE679
D;JEQ
@SP
A=M-1
M=0
@NEXT679
0;JEQ
(TRUE679)
@SP
A=M-1
M=-1
(NEXT679)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Keyboard_3
@SP
AM=M-1
D=M
@Keyboard_3
D;JNE
//goto Keyboard_2
@Keyboard_2
0;JEQ
//label Keyboard_3
(Keyboard_3)
//call Output.backSpace 0
//push retAddrLabel on to the stack
@Output.backSpace$ret.1
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
@Output.backSpace
0;JEQ
//create retAddress Label
(Output.backSpace$ret.1)
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
//call Output.printChar 1
//push retAddrLabel on to the stack
@Output.printChar$ret.2
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
@Output.printChar
0;JEQ
//create retAddress Label
(Output.printChar$ret.2)
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
//function Keyboard.readLine 2
(Keyboard.readLine)
@2
D=A
@n
M=D-1
(LOOP692)
@n
D=M
M=M-1
@NEXT692
D;JLT
@LCL
A=D+M
M=0
@LOOP692
0;JEQ
(NEXT692)
@2
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
//call Output.printString 1
//push retAddrLabel on to the stack
@Output.printString$ret.1
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
@Output.printString
0;JEQ
//create retAddress Label
(Output.printString$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.new 1
//push retAddrLabel on to the stack
@String.new$ret.1
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
@String.new
0;JEQ
//create retAddress Label
(String.new$ret.1)
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
//label Keyboard_4
(Keyboard_4)
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//not
@SP
A=M-1
M=!M
//if-goto Keyboard_5
@SP
AM=M-1
D=M
@Keyboard_5
D;JNE
//call Keyboard.readChar 0
//push retAddrLabel on to the stack
@Keyboard.readChar$ret.1
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
@Keyboard.readChar
0;JEQ
//create retAddress Label
(Keyboard.readChar$ret.1)
//pop local 0
@0
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
//call String.newLine 0
//push retAddrLabel on to the stack
@String.newLine$ret.1
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
@String.newLine
0;JEQ
//create retAddress Label
(String.newLine$ret.1)
//eq
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
@TRUE708
D;JEQ
@SP
A=M-1
M=0
@NEXT708
0;JEQ
(TRUE708)
@SP
A=M-1
M=-1
(NEXT708)
//not
@SP
A=M-1
M=!M
//if-goto Keyboard_7
@SP
AM=M-1
D=M
@Keyboard_7
D;JNE
//call Output.backSpace 0
//push retAddrLabel on to the stack
@Output.backSpace$ret.2
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
@Output.backSpace
0;JEQ
//create retAddress Label
(Output.backSpace$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//call Output.println 0
//push retAddrLabel on to the stack
@Output.println$ret.1
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
@Output.println
0;JEQ
//create retAddress Label
(Output.println$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
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
//goto Keyboard_6
@Keyboard_6
0;JEQ
//label Keyboard_7
(Keyboard_7)
//label Keyboard_6
(Keyboard_6)
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
//call String.backSpace 0
//push retAddrLabel on to the stack
@String.backSpace$ret.1
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
@String.backSpace
0;JEQ
//create retAddress Label
(String.backSpace$ret.1)
//eq
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
@TRUE722
D;JEQ
@SP
A=M-1
M=0
@NEXT722
0;JEQ
(TRUE722)
@SP
A=M-1
M=-1
(NEXT722)
//not
@SP
A=M-1
M=!M
//if-goto Keyboard_9
@SP
AM=M-1
D=M
@Keyboard_9
D;JNE
//call Output.backSpace 0
//push retAddrLabel on to the stack
@Output.backSpace$ret.3
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
@Output.backSpace
0;JEQ
//create retAddress Label
(Output.backSpace$ret.3)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//call Output.backSpace 0
//push retAddrLabel on to the stack
@Output.backSpace$ret.4
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
@Output.backSpace
0;JEQ
//create retAddress Label
(Output.backSpace$ret.4)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
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
//call String.eraseLastChar 1
//push retAddrLabel on to the stack
@String.eraseLastChar$ret.1
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
@String.eraseLastChar
0;JEQ
//create retAddress Label
(String.eraseLastChar$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//goto Keyboard_8
@Keyboard_8
0;JEQ
//label Keyboard_9
(Keyboard_9)
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
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.1
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.1)
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
//label Keyboard_8
(Keyboard_8)
//goto Keyboard_4
@Keyboard_4
0;JEQ
//label Keyboard_5
(Keyboard_5)
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
//function Keyboard.readInt 2
(Keyboard.readInt)
@2
D=A
@n
M=D-1
(LOOP743)
@n
D=M
M=M-1
@NEXT743
D;JLT
@LCL
A=D+M
M=0
@LOOP743
0;JEQ
(NEXT743)
@2
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
//call Keyboard.readLine 1
//push retAddrLabel on to the stack
@Keyboard.readLine$ret.1
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
@Keyboard.readLine
0;JEQ
//create retAddress Label
(Keyboard.readLine$ret.1)
//pop local 0
@0
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
//call String.intValue 1
//push retAddrLabel on to the stack
@String.intValue$ret.1
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
@String.intValue
0;JEQ
//create retAddress Label
(String.intValue$ret.1)
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
//function Main.main 1
(Main.main)
@1
D=A
@n
M=D-1
(LOOP752)
@n
D=M
M=M-1
@NEXT752
D;JLT
@LCL
A=D+M
M=0
@LOOP752
0;JEQ
(NEXT752)
@1
D=A
@SP
M=D+M
//call PongGame.newInstance 0
//push retAddrLabel on to the stack
@PongGame.newInstance$ret.1
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
@PongGame.newInstance
0;JEQ
//create retAddress Label
(PongGame.newInstance$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//call PongGame.getInstance 0
//push retAddrLabel on to the stack
@PongGame.getInstance$ret.1
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
@PongGame.getInstance
0;JEQ
//create retAddress Label
(PongGame.getInstance$ret.1)
//pop local 0
@0
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
//call PongGame.run 1
//push retAddrLabel on to the stack
@PongGame.run$ret.1
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
@PongGame.run
0;JEQ
//create retAddress Label
(PongGame.run$ret.1)
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
//call PongGame.dispose 1
//push retAddrLabel on to the stack
@PongGame.dispose$ret.1
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
@PongGame.dispose
0;JEQ
//create retAddress Label
(PongGame.dispose$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Math.init 0
(Math.init)
@0
D=A
@n
M=D-1
(LOOP765)
@n
D=M
M=M-1
@NEXT765
D;JLT
@LCL
A=D+M
M=0
@LOOP765
0;JEQ
(NEXT765)
@0
D=A
@SP
M=D+M
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 0
@SP
AM=M-1
D=M
@Math.0
M=D
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Array.new 1
//push retAddrLabel on to the stack
@Array.new$ret.1
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
@Array.new
0;JEQ
//create retAddress Label
(Array.new$ret.1)
//pop static 1
@SP
AM=M-1
D=M
@Math.1
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.1
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.1
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
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.1
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
//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.1
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
//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.1
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.1
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
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push static 1
@Math.1
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
//push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.1
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
//push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.1
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
//push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.1
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
//push constant 512
@512
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.1
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
//push constant 1024
@1024
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.1
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
//push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.1
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
//push constant 4096
@4096
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.1
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
//push constant 8192
@8192
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.1
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
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.1
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
//push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
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
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 0
@0
D=A
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
//function Math.twoToThe 0
(Math.twoToThe)
@0
D=A
@n
M=D-1
(LOOP904)
@n
D=M
M=M-1
@NEXT904
D;JLT
@LCL
A=D+M
M=0
@LOOP904
0;JEQ
(NEXT904)
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
//push static 1
@Math.1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//function Math.multiply 5
(Math.multiply)
@5
D=A
@n
M=D-1
(LOOP911)
@n
D=M
M=M-1
@NEXT911
D;JLT
@LCL
A=D+M
M=0
@LOOP911
0;JEQ
(NEXT911)
@5
D=A
@SP
M=D+M
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//push constant 0
@0
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
//label Math_0
(Math_0)
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
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE921
D;JGT
@SP
A=M-1
M=0
@NEXT921
0;JEQ
(TRUE921)
@SP
A=M-1
M=-1
(NEXT921)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Math_1
@SP
AM=M-1
D=M
@Math_1
D;JNE
//push argument 1
@1
D=A
@ARG
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
//push static 1
@Math.1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//pop local 4
@4
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE935
D;JEQ
@SP
A=M-1
M=0
@NEXT935
0;JEQ
(TRUE935)
@SP
A=M-1
M=-1
(NEXT935)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Math_3
@SP
AM=M-1
D=M
@Math_3
D;JNE
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop local 0
@0
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
//goto Math_2
@Math_2
0;JEQ
//label Math_3
(Math_3)
//label Math_2
(Math_2)
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
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
//push constant 1
@1
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
//goto Math_0
@Math_0
0;JEQ
//label Math_1
(Math_1)
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
//function Math.divide 4
(Math.divide)
@4
D=A
@n
M=D-1
(LOOP958)
@n
D=M
M=M-1
@NEXT958
D;JLT
@LCL
A=D+M
M=0
@LOOP958
0;JEQ
(NEXT958)
@4
D=A
@SP
M=D+M
//push constant 1
@1
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
//push constant 0
@0
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
@TRUE963
D;JLT
@SP
A=M-1
M=0
@NEXT963
0;JEQ
(TRUE963)
@SP
A=M-1
M=-1
(NEXT963)
//not
@SP
A=M-1
M=!M
//if-goto Math_5
@SP
AM=M-1
D=M
@Math_5
D;JNE
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
//call Math.abs 1
//push retAddrLabel on to the stack
@Math.abs$ret.3
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
@Math.abs
0;JEQ
//create retAddress Label
(Math.abs$ret.3)
//pop argument 0
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE971
D;JEQ
@SP
A=M-1
M=0
@NEXT971
0;JEQ
(TRUE971)
@SP
A=M-1
M=-1
(NEXT971)
//not
@SP
A=M-1
M=!M
//if-goto Math_7
@SP
AM=M-1
D=M
@Math_7
D;JNE
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
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
//goto Math_6
@Math_6
0;JEQ
//label Math_7
(Math_7)
//push constant 1
@1
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
//label Math_6
(Math_6)
//goto Math_4
@Math_4
0;JEQ
//label Math_5
(Math_5)
//label Math_4
(Math_4)
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
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
@TRUE987
D;JLT
@SP
A=M-1
M=0
@NEXT987
0;JEQ
(TRUE987)
@SP
A=M-1
M=-1
(NEXT987)
//not
@SP
A=M-1
M=!M
//if-goto Math_9
@SP
AM=M-1
D=M
@Math_9
D;JNE
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Math.abs 1
//push retAddrLabel on to the stack
@Math.abs$ret.4
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
@Math.abs
0;JEQ
//create retAddress Label
(Math.abs$ret.4)
//pop argument 1
@1
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE995
D;JEQ
@SP
A=M-1
M=0
@NEXT995
0;JEQ
(TRUE995)
@SP
A=M-1
M=-1
(NEXT995)
//not
@SP
A=M-1
M=!M
//if-goto Math_11
@SP
AM=M-1
D=M
@Math_11
D;JNE
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
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
//goto Math_10
@Math_10
0;JEQ
//label Math_11
(Math_11)
//push constant 1
@1
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
//label Math_10
(Math_10)
//goto Math_8
@Math_8
0;JEQ
//label Math_9
(Math_9)
//label Math_8
(Math_8)
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//gt
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
@TRUE1011
D;JGT
@SP
A=M-1
M=0
@NEXT1011
0;JEQ
(TRUE1011)
@SP
A=M-1
M=-1
(NEXT1011)
//push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//or
@SP
AM=M-1
D=M
@SP
A=M-1
M=D|M
//not
@SP
A=M-1
M=!M
//if-goto Math_13
@SP
AM=M-1
D=M
@Math_13
D;JNE
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 0
@SP
AM=M-1
D=M
@Math.0
M=D
//push constant 0
@0
D=A
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
//goto Math_12
@Math_12
0;JEQ
//label Math_13
(Math_13)
//label Math_12
(Math_12)
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push argument 1
@1
D=A
@ARG
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
//push constant 0
@0
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
@TRUE1029
D;JLT
@SP
A=M-1
M=0
@NEXT1029
0;JEQ
(TRUE1029)
@SP
A=M-1
M=-1
(NEXT1029)
//not
@SP
A=M-1
M=!M
//if-goto Math_15
@SP
AM=M-1
D=M
@Math_15
D;JNE
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//pop static 0
@SP
AM=M-1
D=M
@Math.0
M=D
//goto Math_14
@Math_14
0;JEQ
//label Math_15
(Math_15)
//label Math_14
(Math_14)
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
//call Math.divide 2
//push retAddrLabel on to the stack
@Math.divide$ret.7
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.divide
0;JEQ
//create retAddress Label
(Math.divide$ret.7)
//pop local 0
@0
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.12
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.12)
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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
@TRUE1050
D;JLT
@SP
A=M-1
M=0
@NEXT1050
0;JEQ
(TRUE1050)
@SP
A=M-1
M=-1
(NEXT1050)
//not
@SP
A=M-1
M=!M
//if-goto Math_17
@SP
AM=M-1
D=M
@Math_17
D;JNE
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
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
//goto Math_16
@Math_16
0;JEQ
//label Math_17
(Math_17)
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push constant 1
@1
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
//label Math_16
(Math_16)
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
//not
@SP
A=M-1
M=!M
//if-goto Math_19
@SP
AM=M-1
D=M
@Math_19
D;JNE
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
//neg
@SP
A=M-1
M=-M
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
//goto Math_18
@Math_18
0;JEQ
//label Math_19
(Math_19)
//label Math_18
(Math_18)
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
//function Math.sqrt 6
(Math.sqrt)
@6
D=A
@n
M=D-1
(LOOP1077)
@n
D=M
M=M-1
@NEXT1077
D;JLT
@LCL
A=D+M
M=0
@LOOP1077
0;JEQ
(NEXT1077)
@6
D=A
@SP
M=D+M
//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Array.new 1
//push retAddrLabel on to the stack
@Array.new$ret.2
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
@Array.new
0;JEQ
//create retAddress Label
(Array.new$ret.2)
//pop local 5
@5
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
//push constant 16
@16
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 5
@5
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 1
@1
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
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push retAddrLabel on to the stack
@Math.divide$ret.8
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.divide
0;JEQ
//create retAddress Label
(Math.divide$ret.8)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//label Math_20
(Math_20)
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
@TRUE1102
D;JLT
@SP
A=M-1
M=0
@NEXT1102
0;JEQ
(TRUE1102)
@SP
A=M-1
M=-1
(NEXT1102)
//not
@SP
A=M-1
M=!M
//if-goto Math_21
@SP
AM=M-1
D=M
@Math_21
D;JNE
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
//push local 5
@5
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
//push local 5
@5
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//push local 5
@5
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
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
//push constant 1
@1
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
//goto Math_20
@Math_20
0;JEQ
//label Math_21
(Math_21)
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
//label Math_22
(Math_22)
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
//push constant 0
@0
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
@TRUE1140
D;JLT
@SP
A=M-1
M=0
@NEXT1140
0;JEQ
(TRUE1140)
@SP
A=M-1
M=-1
(NEXT1140)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Math_23
@SP
AM=M-1
D=M
@Math_23
D;JNE
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
//push local 5
@5
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//push local 5
@5
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.13
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.13)
//pop local 4
@4
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
//gt
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
@TRUE1162
D;JGT
@SP
A=M-1
M=0
@NEXT1162
0;JEQ
(TRUE1162)
@SP
A=M-1
M=-1
(NEXT1162)
//not
@SP
A=M-1
M=!M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE1166
D;JGT
@SP
A=M-1
M=0
@NEXT1166
0;JEQ
(TRUE1166)
@SP
A=M-1
M=-1
(NEXT1166)
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//not
@SP
A=M-1
M=!M
//if-goto Math_25
@SP
AM=M-1
D=M
@Math_25
D;JNE
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
//push local 5
@5
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//pop local 0
@0
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
//goto Math_24
@Math_24
0;JEQ
//label Math_25
(Math_25)
//label Math_24
(Math_24)
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
//goto Math_22
@Math_22
0;JEQ
//label Math_23
(Math_23)
//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Array.dispose 1
//push retAddrLabel on to the stack
@Array.dispose$ret.1
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
@Array.dispose
0;JEQ
//create retAddress Label
(Array.dispose$ret.1)
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
//function Math.abs 0
(Math.abs)
@0
D=A
@n
M=D-1
(LOOP1192)
@n
D=M
M=M-1
@NEXT1192
D;JLT
@LCL
A=D+M
M=0
@LOOP1192
0;JEQ
(NEXT1192)
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
//push constant 0
@0
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
@TRUE1195
D;JLT
@SP
A=M-1
M=0
@NEXT1195
0;JEQ
(TRUE1195)
@SP
A=M-1
M=-1
(NEXT1195)
//not
@SP
A=M-1
M=!M
//if-goto Math_27
@SP
AM=M-1
D=M
@Math_27
D;JNE
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
//neg
@SP
A=M-1
M=-M
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
//goto Math_26
@Math_26
0;JEQ
//label Math_27
(Math_27)
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
//label Math_26
(Math_26)
//function Math.min 0
(Math.min)
@0
D=A
@n
M=D-1
(LOOP1206)
@n
D=M
M=M-1
@NEXT1206
D;JLT
@LCL
A=D+M
M=0
@LOOP1206
0;JEQ
(NEXT1206)
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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
@TRUE1209
D;JLT
@SP
A=M-1
M=0
@NEXT1209
0;JEQ
(TRUE1209)
@SP
A=M-1
M=-1
(NEXT1209)
//not
@SP
A=M-1
M=!M
//if-goto Math_29
@SP
AM=M-1
D=M
@Math_29
D;JNE
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
//goto Math_28
@Math_28
0;JEQ
//label Math_29
(Math_29)
//push argument 1
@1
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
//label Math_28
(Math_28)
//function Math.max 0
(Math.max)
@0
D=A
@n
M=D-1
(LOOP1219)
@n
D=M
M=M-1
@NEXT1219
D;JLT
@LCL
A=D+M
M=0
@LOOP1219
0;JEQ
(NEXT1219)
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE1222
D;JGT
@SP
A=M-1
M=0
@NEXT1222
0;JEQ
(TRUE1222)
@SP
A=M-1
M=-1
(NEXT1222)
//not
@SP
A=M-1
M=!M
//if-goto Math_31
@SP
AM=M-1
D=M
@Math_31
D;JNE
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
//goto Math_30
@Math_30
0;JEQ
//label Math_31
(Math_31)
//push argument 1
@1
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
//label Math_30
(Math_30)
//function Memory.init 0
(Memory.init)
@0
D=A
@n
M=D-1
(LOOP1232)
@n
D=M
M=M-1
@NEXT1232
D;JLT
@LCL
A=D+M
M=0
@LOOP1232
0;JEQ
(NEXT1232)
@0
D=A
@SP
M=D+M
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 0
@SP
AM=M-1
D=M
@Memory.0
M=D
//push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
AM=M-1
D=M
@Memory.1
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Memory.1
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Memory.1
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
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 2048
@2048
D=A
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push static 1
@Memory.1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop static 1
@SP
AM=M-1
D=M
@Memory.1
M=D
//push constant 0
@0
D=A
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
//function Memory.peek 0
(Memory.peek)
@0
D=A
@n
M=D-1
(LOOP1263)
@n
D=M
M=M-1
@NEXT1263
D;JLT
@LCL
A=D+M
M=0
@LOOP1263
0;JEQ
(NEXT1263)
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
//push static 0
@Memory.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//function Memory.poke 0
(Memory.poke)
@0
D=A
@n
M=D-1
(LOOP1270)
@n
D=M
M=M-1
@NEXT1270
D;JLT
@LCL
A=D+M
M=0
@LOOP1270
0;JEQ
(NEXT1270)
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
//push static 0
@Memory.0
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 0
@0
D=A
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
//function Memory.alloc 2
(Memory.alloc)
@2
D=A
@n
M=D-1
(LOOP1281)
@n
D=M
M=M-1
@NEXT1281
D;JLT
@LCL
A=D+M
M=0
@LOOP1281
0;JEQ
(NEXT1281)
@2
D=A
@SP
M=D+M
//push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//label Memory_0
(Memory_0)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE1287
D;JEQ
@SP
A=M-1
M=0
@NEXT1287
0;JEQ
(TRUE1287)
@SP
A=M-1
M=-1
(NEXT1287)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Memory_1
@SP
AM=M-1
D=M
@Memory_1
D;JNE
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
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
@TRUE1300
D;JLT
@SP
A=M-1
M=0
@NEXT1300
0;JEQ
(TRUE1300)
@SP
A=M-1
M=-1
(NEXT1300)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Memory_3
@SP
AM=M-1
D=M
@Memory_3
D;JNE
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//push constant 0
@0
D=A
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 1
@1
D=A
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
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
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
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
//push constant 2
@2
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
//goto Memory_2
@Memory_2
0;JEQ
//label Memory_3
(Memory_3)
//label Memory_2
(Memory_2)
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//goto Memory_0
@Memory_0
0;JEQ
//label Memory_1
(Memory_1)
//push constant 0
@0
D=A
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
//function Memory.deAlloc 0
(Memory.deAlloc)
@0
D=A
@n
M=D-1
(LOOP1367)
@n
D=M
M=M-1
@NEXT1367
D;JLT
@LCL
A=D+M
M=0
@LOOP1367
0;JEQ
(NEXT1367)
@0
D=A
@SP
M=D+M
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
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
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
AM=M-1
D=M
@Memory.1
M=D
//push constant 0
@0
D=A
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
//function Output.init 0
(Output.init)
@0
D=A
@n
M=D-1
(LOOP1381)
@n
D=M
M=M-1
@NEXT1381
D;JLT
@LCL
A=D+M
M=0
@LOOP1381
0;JEQ
(NEXT1381)
@0
D=A
@SP
M=D+M
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D
//call Output.initMap 0
//push retAddrLabel on to the stack
@Output.initMap$ret.1
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
@Output.initMap
0;JEQ
//create retAddress Label
(Output.initMap$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Output.initMap 1
(Output.initMap)
@1
D=A
@n
M=D-1
(LOOP1390)
@n
D=M
M=M-1
@NEXT1390
D;JLT
@LCL
A=D+M
M=0
@LOOP1390
0;JEQ
(NEXT1390)
@1
D=A
@SP
M=D+M
//push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Array.new 1
//push retAddrLabel on to the stack
@Array.new$ret.3
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
@Array.new
0;JEQ
//create retAddress Label
(Array.new$ret.3)
//pop static 0
@SP
AM=M-1
D=M
@Output.0
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.1
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.2
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 33
@33
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.3
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.3)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.4
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.4)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.5
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.5)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 36
@36
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.6
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.6)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 37
@37
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.7
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.7)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 38
@38
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.8
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.8)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 39
@39
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.9
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.9)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
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
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.10
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.10)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 41
@41
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
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
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.11
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.11)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.12
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.12)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.13
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.13)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.14
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.14)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.15
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.15)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.16
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.16)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.17
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.17)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 48
@48
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.18
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.18)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 49
@49
D=A
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
//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.19
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.19)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.20
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.20)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.21
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.21)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 52
@52
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.22
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.22)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.23
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.23)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.24
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.24)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.25
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.25)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.26
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.26)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.27
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.27)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.28
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.28)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.29
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.29)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
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
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.30
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.30)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 61
@61
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.31
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.31)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
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
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.32
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.32)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.33
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.33)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.34
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.34)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 65
@65
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.35
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.35)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 66
@66
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.36
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.36)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.37
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.37)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 68
@68
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.38
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.38)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.39
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.39)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.40
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.40)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.41
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.41)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 72
@72
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.42
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.42)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.43
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.43)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 74
@74
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.44
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.44)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 75
@75
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.45
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.45)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 76
@76
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.46
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.46)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 77
@77
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.47
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.47)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.48
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.48)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.49
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.49)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.50
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.50)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 81
@81
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.51
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.51)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.52
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.52)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.53
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.53)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 45
@45
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.54
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.54)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.55
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.55)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 86
@86
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.56
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.56)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.57
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.57)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 88
@88
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.58
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.58)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 12
@12
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.59
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.59)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 90
@90
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.60
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.60)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 91
@91
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.61
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.61)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 92
@92
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
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
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.62
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.62)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.63
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.63)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 94
@94
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.64
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.64)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 95
@95
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.65
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.65)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 96
@96
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
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
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.66
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.66)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.67
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.67)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.68
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.68)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.69
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.69)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.70
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.70)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.71
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.71)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.72
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.72)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.73
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.73)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.74
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.74)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 105
@105
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.75
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.75)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 106
@106
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.76
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.76)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.77
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.77)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.78
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.78)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.79
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.79)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.80
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.80)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.81
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.81)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.82
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.82)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 113
@113
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.83
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.83)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.84
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.84)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.85
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.85)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.86
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.86)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.87
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.87)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.88
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.88)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.89
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.89)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 120
@120
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.90
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.90)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.91
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.91)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 122
@122
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.92
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.92)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 56
@56
D=A
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
//push constant 12
@12
D=A
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
//push constant 7
@7
D=A
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
//push constant 12
@12
D=A
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
//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.93
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.93)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 124
@124
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.94
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.94)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 125
@125
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 7
@7
D=A
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
//push constant 12
@12
D=A
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
//push constant 56
@56
D=A
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
//push constant 12
@12
D=A
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
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.95
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.95)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push retAddrLabel on to the stack
@Output.create$ret.96
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
@12
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JEQ
//create retAddress Label
(Output.create$ret.96)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Output.create 1
(Output.create)
@1
D=A
@n
M=D-1
(LOOP2740)
@n
D=M
M=M-1
@NEXT2740
D;JLT
@LCL
A=D+M
M=0
@LOOP2740
0;JEQ
(NEXT2740)
@1
D=A
@SP
M=D+M
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Array.new 1
//push retAddrLabel on to the stack
@Array.new$ret.4
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
@Array.new
0;JEQ
//create retAddress Label
(Array.new$ret.4)
//pop local 0
@0
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
//push static 0
@Output.0
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
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push argument 4
@4
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push argument 5
@5
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push argument 6
@6
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push argument 7
@7
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push argument 8
@8
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push argument 9
@9
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push argument 10
@10
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push argument 11
@11
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 0
@0
D=A
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
//function Output.getMap 0
(Output.getMap)
@0
D=A
@n
M=D-1
(LOOP2842)
@n
D=M
M=M-1
@NEXT2842
D;JLT
@LCL
A=D+M
M=0
@LOOP2842
0;JEQ
(NEXT2842)
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
//push constant 32
@32
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
@TRUE2845
D;JLT
@SP
A=M-1
M=0
@NEXT2845
0;JEQ
(TRUE2845)
@SP
A=M-1
M=-1
(NEXT2845)
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
//push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE2848
D;JGT
@SP
A=M-1
M=0
@NEXT2848
0;JEQ
(TRUE2848)
@SP
A=M-1
M=-1
(NEXT2848)
//or
@SP
AM=M-1
D=M
@SP
A=M-1
M=D|M
//not
@SP
A=M-1
M=!M
//if-goto Output_1
@SP
AM=M-1
D=M
@Output_1
D;JNE
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop argument 0
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
//goto Output_0
@Output_0
0;JEQ
//label Output_1
(Output_1)
//label Output_0
(Output_0)
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
//push static 0
@Output.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//function Output.moveCursor 2
(Output.moveCursor)
@2
D=A
@n
M=D-1
(LOOP2863)
@n
D=M
M=M-1
@NEXT2863
D;JLT
@LCL
A=D+M
M=0
@LOOP2863
0;JEQ
(NEXT2863)
@2
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
//pop local 0
@0
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE2870
D;JGT
@SP
A=M-1
M=0
@NEXT2870
0;JEQ
(TRUE2870)
@SP
A=M-1
M=-1
(NEXT2870)
//not
@SP
A=M-1
M=!M
//if-goto Output_3
@SP
AM=M-1
D=M
@Output_3
D;JNE
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop argument 1
@1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop argument 0
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
//pop local 0
@0
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
//goto Output_2
@Output_2
0;JEQ
//label Output_3
(Output_3)
//label Output_2
(Output_2)
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
//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE2886
D;JGT
@SP
A=M-1
M=0
@NEXT2886
0;JEQ
(TRUE2886)
@SP
A=M-1
M=-1
(NEXT2886)
//not
@SP
A=M-1
M=!M
//if-goto Output_5
@SP
AM=M-1
D=M
@Output_5
D;JNE
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop argument 0
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
//push constant 1
@1
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
//pop argument 1
@1
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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
//goto Output_4
@Output_4
0;JEQ
//label Output_5
(Output_5)
//label Output_4
(Output_4)
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
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE2902
D;JGT
@SP
A=M-1
M=0
@NEXT2902
0;JEQ
(TRUE2902)
@SP
A=M-1
M=-1
(NEXT2902)
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
//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE2905
D;JGT
@SP
A=M-1
M=0
@NEXT2905
0;JEQ
(TRUE2905)
@SP
A=M-1
M=-1
(NEXT2905)
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//not
@SP
A=M-1
M=!M
//if-goto Output_7
@SP
AM=M-1
D=M
@Output_7
D;JNE
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop argument 0
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop argument 1
@1
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
//goto Output_6
@Output_6
0;JEQ
//label Output_7
(Output_7)
//label Output_6
(Output_6)
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
//push constant 0
@0
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
@TRUE2918
D;JLT
@SP
A=M-1
M=0
@NEXT2918
0;JEQ
(TRUE2918)
@SP
A=M-1
M=-1
(NEXT2918)
//not
@SP
A=M-1
M=!M
//if-goto Output_9
@SP
AM=M-1
D=M
@Output_9
D;JNE
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop argument 0
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
//goto Output_8
@Output_8
0;JEQ
//label Output_9
(Output_9)
//label Output_8
(Output_8)
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
//push constant 0
@0
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
@TRUE2928
D;JLT
@SP
A=M-1
M=0
@NEXT2928
0;JEQ
(TRUE2928)
@SP
A=M-1
M=-1
(NEXT2928)
//not
@SP
A=M-1
M=!M
//if-goto Output_11
@SP
AM=M-1
D=M
@Output_11
D;JNE
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop argument 1
@1
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
//goto Output_10
@Output_10
0;JEQ
//label Output_11
(Output_11)
//label Output_10
(Output_10)
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.14
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.14)
//pop static 1
@SP
AM=M-1
D=M
@Output.1
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
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.15
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.15)
//pop static 2
@SP
AM=M-1
D=M
@Output.2
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
//pop static 3
@SP
AM=M-1
D=M
@Output.3
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop static 4
@SP
AM=M-1
D=M
@Output.4
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Screen.setColor 1
//push retAddrLabel on to the stack
@Screen.setColor$ret.9
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
@Screen.setColor
0;JEQ
//create retAddress Label
(Screen.setColor$ret.9)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 7
@7
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
//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 10
@10
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
//call Screen.drawRectangle 4
//push retAddrLabel on to the stack
@Screen.drawRectangle$ret.7
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
@4
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawRectangle
0;JEQ
//create retAddress Label
(Screen.drawRectangle$ret.7)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//call Screen.setColor 1
//push retAddrLabel on to the stack
@Screen.setColor$ret.10
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
@Screen.setColor
0;JEQ
//create retAddress Label
(Screen.setColor$ret.10)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Output.printChar 8
(Output.printChar)
@8
D=A
@n
M=D-1
(LOOP2967)
@n
D=M
M=M-1
@NEXT2967
D;JLT
@LCL
A=D+M
M=0
@LOOP2967
0;JEQ
(NEXT2967)
@8
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
//call Output.getMap 1
//push retAddrLabel on to the stack
@Output.getMap$ret.1
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
@Output.getMap
0;JEQ
//create retAddress Label
(Output.getMap$ret.1)
//pop local 0
@0
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
//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push retAddrLabel on to the stack
@Math.divide$ret.9
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.divide
0;JEQ
//create retAddress Label
(Math.divide$ret.9)
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
//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
D=A
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.16
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.16)
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//pop local 4
@4
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
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.17
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.17)
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop local 7
@7
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
//push constant 0
@0
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
//label Output_12
(Output_12)
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
//push constant 11
@11
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
@TRUE2992
D;JLT
@SP
A=M-1
M=0
@NEXT2992
0;JEQ
(TRUE2992)
@SP
A=M-1
M=-1
(NEXT2992)
//not
@SP
A=M-1
M=!M
//if-goto Output_13
@SP
AM=M-1
D=M
@Output_13
D;JNE
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 7
@7
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
//call Memory.peek 1
//push retAddrLabel on to the stack
@Memory.peek$ret.2
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
@Memory.peek
0;JEQ
//create retAddress Label
(Memory.peek$ret.2)
//pop local 5
@5
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop local 6
@6
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
//label Output_14
(Output_14)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE3011
D;JGT
@SP
A=M-1
M=0
@NEXT3011
0;JEQ
(TRUE3011)
@SP
A=M-1
M=-1
(NEXT3011)
//not
@SP
A=M-1
M=!M
//if-goto Output_15
@SP
AM=M-1
D=M
@Output_15
D;JNE
//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 6
@6
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
//pop local 6
@6
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
//goto Output_14
@Output_14
0;JEQ
//label Output_15
(Output_15)
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 7
@7
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
//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//or
@SP
AM=M-1
D=M
@SP
A=M-1
M=D|M
//call Memory.poke 2
//push retAddrLabel on to the stack
@Memory.poke$ret.1
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Memory.poke
0;JEQ
//create retAddress Label
(Memory.poke$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 32
@32
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
//pop local 7
@7
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
//push constant 1
@1
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
//goto Output_12
@Output_12
0;JEQ
//label Output_13
(Output_13)
//push static 4
@Output.4
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop static 4
@SP
AM=M-1
D=M
@Output.4
M=D
//push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 4
@Output.4
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Output.moveCursor 2
//push retAddrLabel on to the stack
@Output.moveCursor$ret.1
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.moveCursor
0;JEQ
//create retAddress Label
(Output.moveCursor$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Output.printString 2
(Output.printString)
@2
D=A
@n
M=D-1
(LOOP3054)
@n
D=M
M=M-1
@NEXT3054
D;JLT
@LCL
A=D+M
M=0
@LOOP3054
0;JEQ
(NEXT3054)
@2
D=A
@SP
M=D+M
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//call String.length 1
//push retAddrLabel on to the stack
@String.length$ret.1
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
@String.length
0;JEQ
//create retAddress Label
(String.length$ret.1)
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
//label Output_16
(Output_16)
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
@TRUE3063
D;JLT
@SP
A=M-1
M=0
@NEXT3063
0;JEQ
(TRUE3063)
@SP
A=M-1
M=-1
(NEXT3063)
//not
@SP
A=M-1
M=!M
//if-goto Output_17
@SP
AM=M-1
D=M
@Output_17
D;JNE
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
//call String.charAt 2
//push retAddrLabel on to the stack
@String.charAt$ret.1
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.charAt
0;JEQ
//create retAddress Label
(String.charAt$ret.1)
//call Output.printChar 1
//push retAddrLabel on to the stack
@Output.printChar$ret.3
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
@Output.printChar
0;JEQ
//create retAddress Label
(Output.printChar$ret.3)
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
//push constant 1
@1
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
//pop local 0
@0
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
//goto Output_16
@Output_16
0;JEQ
//label Output_17
(Output_17)
//push constant 0
@0
D=A
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
//function Output.printInt 1
(Output.printInt)
@1
D=A
@n
M=D-1
(LOOP3079)
@n
D=M
M=M-1
@NEXT3079
D;JLT
@LCL
A=D+M
M=0
@LOOP3079
0;JEQ
(NEXT3079)
@1
D=A
@SP
M=D+M
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.new 1
//push retAddrLabel on to the stack
@String.new$ret.2
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
@String.new
0;JEQ
//create retAddress Label
(String.new$ret.2)
//pop local 0
@0
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
//call String.setInt 2
//push retAddrLabel on to the stack
@String.setInt$ret.1
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.setInt
0;JEQ
//create retAddress Label
(String.setInt$ret.1)
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
//call Output.printString 1
//push retAddrLabel on to the stack
@Output.printString$ret.2
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
@Output.printString
0;JEQ
//create retAddress Label
(Output.printString$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Output.println 0
(Output.println)
@0
D=A
@n
M=D-1
(LOOP3092)
@n
D=M
M=M-1
@NEXT3092
D;JLT
@LCL
A=D+M
M=0
@LOOP3092
0;JEQ
(NEXT3092)
@0
D=A
@SP
M=D+M
//push static 3
@Output.3
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.moveCursor 2
//push retAddrLabel on to the stack
@Output.moveCursor$ret.2
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.moveCursor
0;JEQ
//create retAddress Label
(Output.moveCursor$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Output.backSpace 0
(Output.backSpace)
@0
D=A
@n
M=D-1
(LOOP3101)
@n
D=M
M=M-1
@NEXT3101
D;JLT
@LCL
A=D+M
M=0
@LOOP3101
0;JEQ
(NEXT3101)
@0
D=A
@SP
M=D+M
//push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 4
@Output.4
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
//call Output.moveCursor 2
//push retAddrLabel on to the stack
@Output.moveCursor$ret.3
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.moveCursor
0;JEQ
//create retAddress Label
(Output.moveCursor$ret.3)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function PongGame.new 0
(PongGame.new)
@0
D=A
@n
M=D-1
(LOOP3110)
@n
D=M
M=M-1
@NEXT3110
D;JLT
@LCL
A=D+M
M=0
@LOOP3110
0;JEQ
(NEXT3110)
@0
D=A
@SP
M=D+M
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Memory.alloc 1
//push retAddrLabel on to the stack
@Memory.alloc$ret.4
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
@Memory.alloc
0;JEQ
//create retAddress Label
(Memory.alloc$ret.4)
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//call Screen.clearScreen 0
//push retAddrLabel on to the stack
@Screen.clearScreen$ret.1
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
@Screen.clearScreen
0;JEQ
//create retAddress Label
(Screen.clearScreen$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 6
@6
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 230
@230
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 229
@229
D=A
@SP
A=M
M=D
@SP
M=M+1
//push this 6
@6
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Bat.new 4
//push retAddrLabel on to the stack
@Bat.new$ret.1
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
@4
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Bat.new
0;JEQ
//create retAddress Label
(Bat.new$ret.1)
//pop this 0
@0
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 253
@253
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 222
@222
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 229
@229
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Ball.new 6
//push retAddrLabel on to the stack
@Ball.new$ret.1
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
@6
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Ball.new
0;JEQ
//create retAddress Label
(Ball.new$ret.1)
//pop this 1
@1
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 400
@400
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Ball.setDestination 3
//push retAddrLabel on to the stack
@Ball.setDestination$ret.2
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
@3
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Ball.setDestination
0;JEQ
//create retAddress Label
(Ball.setDestination$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 238
@238
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 240
@240
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Screen.drawRectangle 4
//push retAddrLabel on to the stack
@Screen.drawRectangle$ret.8
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
@4
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawRectangle
0;JEQ
//create retAddress Label
(Screen.drawRectangle$ret.8)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.moveCursor 2
//push retAddrLabel on to the stack
@Output.moveCursor$ret.4
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.moveCursor
0;JEQ
//create retAddress Label
(Output.moveCursor$ret.4)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.new 1
//push retAddrLabel on to the stack
@String.new$ret.3
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
@String.new
0;JEQ
//create retAddress Label
(String.new$ret.3)
//push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.2
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.2)
//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.3
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.3)
//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.4
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.4)
//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.5
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.5)
//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.6
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.6)
//push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.7
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.7)
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.8
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.8)
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.9
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.9)
//call Output.printString 1
//push retAddrLabel on to the stack
@Output.printString$ret.3
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
@Output.printString
0;JEQ
//create retAddress Label
(Output.printString$ret.3)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 3
@3
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 4
@4
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 2
@2
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 5
@5
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push pointer 0
@THIS
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
//function PongGame.dispose 0
(PongGame.dispose)
@0
D=A
@n
M=D-1
(LOOP3177)
@n
D=M
M=M-1
@NEXT3177
D;JLT
@LCL
A=D+M
M=0
@LOOP3177
0;JEQ
(NEXT3177)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Bat.dispose 1
//push retAddrLabel on to the stack
@Bat.dispose$ret.1
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
@Bat.dispose
0;JEQ
//create retAddress Label
(Bat.dispose$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Ball.dispose 1
//push retAddrLabel on to the stack
@Ball.dispose$ret.1
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
@Ball.dispose
0;JEQ
//create retAddress Label
(Ball.dispose$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Memory.deAlloc 1
//push retAddrLabel on to the stack
@Memory.deAlloc$ret.4
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
@Memory.deAlloc
0;JEQ
//create retAddress Label
(Memory.deAlloc$ret.4)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function PongGame.newInstance 0
(PongGame.newInstance)
@0
D=A
@n
M=D-1
(LOOP3191)
@n
D=M
M=M-1
@NEXT3191
D;JLT
@LCL
A=D+M
M=0
@LOOP3191
0;JEQ
(NEXT3191)
@0
D=A
@SP
M=D+M
//call PongGame.new 0
//push retAddrLabel on to the stack
@PongGame.new$ret.1
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
@PongGame.new
0;JEQ
//create retAddress Label
(PongGame.new$ret.1)
//pop static 0
@SP
AM=M-1
D=M
@PongGame.0
M=D
//push constant 0
@0
D=A
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
//function PongGame.getInstance 0
(PongGame.getInstance)
@0
D=A
@n
M=D-1
(LOOP3196)
@n
D=M
M=M-1
@NEXT3196
D;JLT
@LCL
A=D+M
M=0
@LOOP3196
0;JEQ
(NEXT3196)
@0
D=A
@SP
M=D+M
//push static 0
@PongGame.0
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
//function PongGame.run 1
(PongGame.run)
@1
D=A
@n
M=D-1
(LOOP3199)
@n
D=M
M=M-1
@NEXT3199
D;JLT
@LCL
A=D+M
M=0
@LOOP3199
0;JEQ
(NEXT3199)
@1
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//label PongGame_0
(PongGame_0)
//push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto PongGame_1
@SP
AM=M-1
D=M
@PongGame_1
D;JNE
//label PongGame_2
(PongGame_2)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE3210
D;JEQ
@SP
A=M-1
M=0
@NEXT3210
0;JEQ
(TRUE3210)
@SP
A=M-1
M=-1
(NEXT3210)
//push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//not
@SP
A=M-1
M=!M
//if-goto PongGame_3
@SP
AM=M-1
D=M
@PongGame_3
D;JNE
//call Keyboard.keyPressed 0
//push retAddrLabel on to the stack
@Keyboard.keyPressed$ret.4
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
@Keyboard.keyPressed
0;JEQ
//create retAddress Label
(Keyboard.keyPressed$ret.4)
//pop local 0
@0
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
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Bat.move 1
//push retAddrLabel on to the stack
@Bat.move$ret.1
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
@Bat.move
0;JEQ
//create retAddress Label
(Bat.move$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call PongGame.moveBall 1
//push retAddrLabel on to the stack
@PongGame.moveBall$ret.1
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
@PongGame.moveBall
0;JEQ
//create retAddress Label
(PongGame.moveBall$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.wait 1
//push retAddrLabel on to the stack
@Sys.wait$ret.1
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
@Sys.wait
0;JEQ
//create retAddress Label
(Sys.wait$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//goto PongGame_2
@PongGame_2
0;JEQ
//label PongGame_3
(PongGame_3)
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
//push constant 130
@130
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE3231
D;JEQ
@SP
A=M-1
M=0
@NEXT3231
0;JEQ
(TRUE3231)
@SP
A=M-1
M=-1
(NEXT3231)
//not
@SP
A=M-1
M=!M
//if-goto PongGame_5
@SP
AM=M-1
D=M
@PongGame_5
D;JNE
//push this 0
@0
D=A
@THIS
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
//call Bat.setDirection 2
//push retAddrLabel on to the stack
@Bat.setDirection$ret.1
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Bat.setDirection
0;JEQ
//create retAddress Label
(Bat.setDirection$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//goto PongGame_4
@PongGame_4
0;JEQ
//label PongGame_5
(PongGame_5)
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
//push constant 132
@132
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE3242
D;JEQ
@SP
A=M-1
M=0
@NEXT3242
0;JEQ
(TRUE3242)
@SP
A=M-1
M=-1
(NEXT3242)
//not
@SP
A=M-1
M=!M
//if-goto PongGame_7
@SP
AM=M-1
D=M
@PongGame_7
D;JNE
//push this 0
@0
D=A
@THIS
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
//call Bat.setDirection 2
//push retAddrLabel on to the stack
@Bat.setDirection$ret.2
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Bat.setDirection
0;JEQ
//create retAddress Label
(Bat.setDirection$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//goto PongGame_6
@PongGame_6
0;JEQ
//label PongGame_7
(PongGame_7)
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
//push constant 140
@140
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE3253
D;JEQ
@SP
A=M-1
M=0
@NEXT3253
0;JEQ
(TRUE3253)
@SP
A=M-1
M=-1
(NEXT3253)
//not
@SP
A=M-1
M=!M
//if-goto PongGame_9
@SP
AM=M-1
D=M
@PongGame_9
D;JNE
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//pop this 3
@3
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto PongGame_8
@PongGame_8
0;JEQ
//label PongGame_9
(PongGame_9)
//label PongGame_8
(PongGame_8)
//label PongGame_6
(PongGame_6)
//label PongGame_4
(PongGame_4)
//label PongGame_10
(PongGame_10)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE3267
D;JEQ
@SP
A=M-1
M=0
@NEXT3267
0;JEQ
(TRUE3267)
@SP
A=M-1
M=-1
(NEXT3267)
//not
@SP
A=M-1
M=!M
//push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//not
@SP
A=M-1
M=!M
//if-goto PongGame_11
@SP
AM=M-1
D=M
@PongGame_11
D;JNE
//call Keyboard.keyPressed 0
//push retAddrLabel on to the stack
@Keyboard.keyPressed$ret.5
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
@Keyboard.keyPressed
0;JEQ
//create retAddress Label
(Keyboard.keyPressed$ret.5)
//pop local 0
@0
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
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Bat.move 1
//push retAddrLabel on to the stack
@Bat.move$ret.2
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
@Bat.move
0;JEQ
//create retAddress Label
(Bat.move$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call PongGame.moveBall 1
//push retAddrLabel on to the stack
@PongGame.moveBall$ret.2
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
@PongGame.moveBall
0;JEQ
//create retAddress Label
(PongGame.moveBall$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.wait 1
//push retAddrLabel on to the stack
@Sys.wait$ret.2
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
@Sys.wait
0;JEQ
//create retAddress Label
(Sys.wait$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//goto PongGame_10
@PongGame_10
0;JEQ
//label PongGame_11
(PongGame_11)
//goto PongGame_0
@PongGame_0
0;JEQ
//label PongGame_1
(PongGame_1)
//push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//if-goto PongGame_13
@SP
AM=M-1
D=M
@PongGame_13
D;JNE
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.moveCursor 2
//push retAddrLabel on to the stack
@Output.moveCursor$ret.5
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.moveCursor
0;JEQ
//create retAddress Label
(Output.moveCursor$ret.5)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.new 1
//push retAddrLabel on to the stack
@String.new$ret.4
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
@String.new
0;JEQ
//create retAddress Label
(String.new$ret.4)
//push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.10
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.10)
//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.11
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.11)
//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.12
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.12)
//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.13
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.13)
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.14
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.14)
//push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.15
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.15)
//push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.16
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.16)
//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.17
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.17)
//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.18
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.18)
//call Output.printString 1
//push retAddrLabel on to the stack
@Output.printString$ret.4
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
@Output.printString
0;JEQ
//create retAddress Label
(Output.printString$ret.4)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//goto PongGame_12
@PongGame_12
0;JEQ
//label PongGame_13
(PongGame_13)
//label PongGame_12
(PongGame_12)
//push constant 0
@0
D=A
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
//function PongGame.moveBall 5
(PongGame.moveBall)
@5
D=A
@n
M=D-1
(LOOP3323)
@n
D=M
M=M-1
@NEXT3323
D;JLT
@LCL
A=D+M
M=0
@LOOP3323
0;JEQ
(NEXT3323)
@5
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Ball.move 1
//push retAddrLabel on to the stack
@Ball.move$ret.1
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
@Ball.move
0;JEQ
//create retAddress Label
(Ball.move$ret.1)
//pop this 2
@2
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE3331
D;JGT
@SP
A=M-1
M=0
@NEXT3331
0;JEQ
(TRUE3331)
@SP
A=M-1
M=-1
(NEXT3331)
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 5
@5
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE3334
D;JEQ
@SP
A=M-1
M=0
@NEXT3334
0;JEQ
(TRUE3334)
@SP
A=M-1
M=-1
(NEXT3334)
//not
@SP
A=M-1
M=!M
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//not
@SP
A=M-1
M=!M
//if-goto PongGame_15
@SP
AM=M-1
D=M
@PongGame_15
D;JNE
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop this 5
@5
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Bat.getLeft 1
//push retAddrLabel on to the stack
@Bat.getLeft$ret.1
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
@Bat.getLeft
0;JEQ
//create retAddress Label
(Bat.getLeft$ret.1)
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
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Bat.getRight 1
//push retAddrLabel on to the stack
@Bat.getRight$ret.1
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
@Bat.getRight
0;JEQ
//create retAddress Label
(Bat.getRight$ret.1)
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
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Ball.getLeft 1
//push retAddrLabel on to the stack
@Ball.getLeft$ret.1
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
@Ball.getLeft
0;JEQ
//create retAddress Label
(Ball.getLeft$ret.1)
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
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Ball.getRight 1
//push retAddrLabel on to the stack
@Ball.getRight$ret.1
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
@Ball.getRight
0;JEQ
//create retAddress Label
(Ball.getRight$ret.1)
//pop local 4
@4
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
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE3357
D;JEQ
@SP
A=M-1
M=0
@NEXT3357
0;JEQ
(TRUE3357)
@SP
A=M-1
M=-1
(NEXT3357)
//not
@SP
A=M-1
M=!M
//if-goto PongGame_17
@SP
AM=M-1
D=M
@PongGame_17
D;JNE
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
//gt
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
@TRUE3362
D;JGT
@SP
A=M-1
M=0
@NEXT3362
0;JEQ
(TRUE3362)
@SP
A=M-1
M=-1
(NEXT3362)
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
@TRUE3365
D;JLT
@SP
A=M-1
M=0
@NEXT3365
0;JEQ
(TRUE3365)
@SP
A=M-1
M=-1
(NEXT3365)
//or
@SP
AM=M-1
D=M
@SP
A=M-1
M=D|M
//pop this 3
@3
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto PongGame_19
@SP
AM=M-1
D=M
@PongGame_19
D;JNE
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
//push constant 10
@10
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
@TRUE3376
D;JLT
@SP
A=M-1
M=0
@NEXT3376
0;JEQ
(TRUE3376)
@SP
A=M-1
M=-1
(NEXT3376)
//not
@SP
A=M-1
M=!M
//if-goto PongGame_21
@SP
AM=M-1
D=M
@PongGame_21
D;JNE
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//pop local 0
@0
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
//goto PongGame_20
@PongGame_20
0;JEQ
//label PongGame_21
(PongGame_21)
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
//push constant 10
@10
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
//gt
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
@TRUE3388
D;JGT
@SP
A=M-1
M=0
@NEXT3388
0;JEQ
(TRUE3388)
@SP
A=M-1
M=-1
(NEXT3388)
//not
@SP
A=M-1
M=!M
//if-goto PongGame_23
@SP
AM=M-1
D=M
@PongGame_23
D;JNE
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//goto PongGame_22
@PongGame_22
0;JEQ
//label PongGame_23
(PongGame_23)
//label PongGame_22
(PongGame_22)
//label PongGame_20
(PongGame_20)
//push this 6
@6
D=A
@THIS
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
//pop this 6
@6
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 6
@6
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Bat.setWidth 2
//push retAddrLabel on to the stack
@Bat.setWidth$ret.1
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Bat.setWidth
0;JEQ
//create retAddress Label
(Bat.setWidth$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push this 4
@4
D=A
@THIS
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop this 4
@4
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.moveCursor 2
//push retAddrLabel on to the stack
@Output.moveCursor$ret.6
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.moveCursor
0;JEQ
//create retAddress Label
(Output.moveCursor$ret.6)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push this 4
@4
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Output.printInt 1
//push retAddrLabel on to the stack
@Output.printInt$ret.1
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
@Output.printInt
0;JEQ
//create retAddress Label
(Output.printInt$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//goto PongGame_18
@PongGame_18
0;JEQ
//label PongGame_19
(PongGame_19)
//label PongGame_18
(PongGame_18)
//goto PongGame_16
@PongGame_16
0;JEQ
//label PongGame_17
(PongGame_17)
//label PongGame_16
(PongGame_16)
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//call Ball.bounce 2
//push retAddrLabel on to the stack
@Ball.bounce$ret.1
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Ball.bounce
0;JEQ
//create retAddress Label
(Ball.bounce$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//goto PongGame_14
@PongGame_14
0;JEQ
//label PongGame_15
(PongGame_15)
//label PongGame_14
(PongGame_14)
//push constant 0
@0
D=A
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
//function Screen.init 0
(Screen.init)
@0
D=A
@n
M=D-1
(LOOP3431)
@n
D=M
M=M-1
@NEXT3431
D;JLT
@LCL
A=D+M
M=0
@LOOP3431
0;JEQ
(NEXT3431)
@0
D=A
@SP
M=D+M
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//pop static 0
@SP
AM=M-1
D=M
@Screen.0
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 3
@SP
AM=M-1
D=M
@Screen.3
M=D
//push constant 0
@0
D=A
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
//function Screen.clearScreen 3
(Screen.clearScreen)
@3
D=A
@n
M=D-1
(LOOP3439)
@n
D=M
M=M-1
@NEXT3439
D;JLT
@LCL
A=D+M
M=0
@LOOP3439
0;JEQ
(NEXT3439)
@3
D=A
@SP
M=D+M
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//push constant 0
@0
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
//label Screen_0
(Screen_0)
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
//push constant 256
@256
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
@TRUE3447
D;JLT
@SP
A=M-1
M=0
@NEXT3447
0;JEQ
(TRUE3447)
@SP
A=M-1
M=-1
(NEXT3447)
//not
@SP
A=M-1
M=!M
//if-goto Screen_1
@SP
AM=M-1
D=M
@Screen_1
D;JNE
//push constant 0
@0
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
//label Screen_2
(Screen_2)
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
//push constant 32
@32
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
@TRUE3455
D;JLT
@SP
A=M-1
M=0
@NEXT3455
0;JEQ
(TRUE3455)
@SP
A=M-1
M=-1
(NEXT3455)
//not
@SP
A=M-1
M=!M
//if-goto Screen_3
@SP
AM=M-1
D=M
@Screen_3
D;JNE
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Memory.poke 2
//push retAddrLabel on to the stack
@Memory.poke$ret.2
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Memory.poke
0;JEQ
//create retAddress Label
(Memory.poke$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
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
//push constant 1
@1
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
//goto Screen_2
@Screen_2
0;JEQ
//label Screen_3
(Screen_3)
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
//push constant 1
@1
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
//goto Screen_0
@Screen_0
0;JEQ
//label Screen_1
(Screen_1)
//push constant 0
@0
D=A
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
//function Screen.setColor 0
(Screen.setColor)
@0
D=A
@n
M=D-1
(LOOP3480)
@n
D=M
M=M-1
@NEXT3480
D;JLT
@LCL
A=D+M
M=0
@LOOP3480
0;JEQ
(NEXT3480)
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
//pop static 0
@SP
AM=M-1
D=M
@Screen.0
M=D
//push constant 0
@0
D=A
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
//function Screen.drawPixel 6
(Screen.drawPixel)
@6
D=A
@n
M=D-1
(LOOP3485)
@n
D=M
M=M-1
@NEXT3485
D;JLT
@LCL
A=D+M
M=0
@LOOP3485
0;JEQ
(NEXT3485)
@6
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push retAddrLabel on to the stack
@Math.divide$ret.10
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.divide
0;JEQ
//create retAddress Label
(Math.divide$ret.10)
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
//push constant 16
@16
D=A
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.18
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.18)
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
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
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.19
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.19)
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop local 0
@0
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
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//call Memory.peek 1
//push retAddrLabel on to the stack
@Memory.peek$ret.3
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
@Memory.peek
0;JEQ
//create retAddress Label
(Memory.peek$ret.3)
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
//call Math.twoToThe 1
//push retAddrLabel on to the stack
@Math.twoToThe$ret.1
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
@Math.twoToThe
0;JEQ
//create retAddress Label
(Math.twoToThe$ret.1)
//pop local 5
@5
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
//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//pop local 4
@4
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
//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//or
@SP
AM=M-1
D=M
@SP
A=M-1
M=D|M
//pop local 4
@4
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
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
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
//call Memory.poke 2
//push retAddrLabel on to the stack
@Memory.poke$ret.3
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Memory.poke
0;JEQ
//create retAddress Label
(Memory.poke$ret.3)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Screen.drawLine 15
(Screen.drawLine)
@15
D=A
@n
M=D-1
(LOOP3529)
@n
D=M
M=M-1
@NEXT3529
D;JLT
@LCL
A=D+M
M=0
@LOOP3529
0;JEQ
(NEXT3529)
@15
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
//pop local 0
@0
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//call Math.abs 1
//push retAddrLabel on to the stack
@Math.abs$ret.5
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
@Math.abs
0;JEQ
//create retAddress Label
(Math.abs$ret.5)
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
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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
//call Math.abs 1
//push retAddrLabel on to the stack
@Math.abs$ret.6
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
@Math.abs
0;JEQ
//create retAddress Label
(Math.abs$ret.6)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE3546
D;JEQ
@SP
A=M-1
M=0
@NEXT3546
0;JEQ
(TRUE3546)
@SP
A=M-1
M=-1
(NEXT3546)
//not
@SP
A=M-1
M=!M
//if-goto Screen_5
@SP
AM=M-1
D=M
@Screen_5
D;JNE
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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
@TRUE3551
D;JLT
@SP
A=M-1
M=0
@NEXT3551
0;JEQ
(TRUE3551)
@SP
A=M-1
M=-1
(NEXT3551)
//not
@SP
A=M-1
M=!M
//if-goto Screen_7
@SP
AM=M-1
D=M
@Screen_7
D;JNE
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop argument 3
@3
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
//goto Screen_6
@Screen_6
0;JEQ
//label Screen_7
(Screen_7)
//label Screen_6
(Screen_6)
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push retAddrLabel on to the stack
@Math.divide$ret.11
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.divide
0;JEQ
//create retAddress Label
(Math.divide$ret.11)
//pop local 9
@9
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 9
@9
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.20
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.20)
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//pop local 10
@10
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
//push constant 32
@32
D=A
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.21
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.21)
//push local 9
@9
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
//pop local 11
@11
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
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 11
@11
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
//call Memory.peek 1
//push retAddrLabel on to the stack
@Memory.peek$ret.4
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
@Memory.peek
0;JEQ
//create retAddress Label
(Memory.peek$ret.4)
//pop local 12
@12
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
//push local 10
@10
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Math.twoToThe 1
//push retAddrLabel on to the stack
@Math.twoToThe$ret.2
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
@Math.twoToThe
0;JEQ
//create retAddress Label
(Math.twoToThe$ret.2)
//pop local 13
@13
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
//label Screen_8
(Screen_8)
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
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE3588
D;JGT
@SP
A=M-1
M=0
@NEXT3588
0;JEQ
(TRUE3588)
@SP
A=M-1
M=-1
(NEXT3588)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Screen_9
@SP
AM=M-1
D=M
@Screen_9
D;JNE
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 11
@11
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
//push local 12
@12
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 13
@13
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//push local 13
@13
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//or
@SP
AM=M-1
D=M
@SP
A=M-1
M=D|M
//call Memory.poke 2
//push retAddrLabel on to the stack
@Memory.poke$ret.4
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Memory.poke
0;JEQ
//create retAddress Label
(Memory.poke$ret.4)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push local 11
@11
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 32
@32
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
//pop local 11
@11
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
//push constant 1
@1
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
//goto Screen_8
@Screen_8
0;JEQ
//label Screen_9
(Screen_9)
//push constant 0
@0
D=A
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
//goto Screen_4
@Screen_4
0;JEQ
//label Screen_5
(Screen_5)
//label Screen_4
(Screen_4)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE3622
D;JEQ
@SP
A=M-1
M=0
@NEXT3622
0;JEQ
(TRUE3622)
@SP
A=M-1
M=-1
(NEXT3622)
//not
@SP
A=M-1
M=!M
//if-goto Screen_11
@SP
AM=M-1
D=M
@Screen_11
D;JNE
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@TRUE3627
D;JLT
@SP
A=M-1
M=0
@NEXT3627
0;JEQ
(TRUE3627)
@SP
A=M-1
M=-1
(NEXT3627)
//not
@SP
A=M-1
M=!M
//if-goto Screen_13
@SP
AM=M-1
D=M
@Screen_13
D;JNE
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//pop argument 2
@2
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
//goto Screen_12
@Screen_12
0;JEQ
//label Screen_13
(Screen_13)
//label Screen_12
(Screen_12)
//push static 3
@Screen.3
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Screen_15
@SP
AM=M-1
D=M
@Screen_15
D;JNE
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push retAddrLabel on to the stack
@Math.divide$ret.12
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.divide
0;JEQ
//create retAddress Label
(Math.divide$ret.12)
//pop local 9
@9
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 9
@9
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.22
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.22)
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//pop local 10
@10
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
//push constant 32
@32
D=A
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.23
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.23)
//push local 9
@9
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
//pop local 11
@11
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
//goto Screen_14
@Screen_14
0;JEQ
//label Screen_15
(Screen_15)
//push static 2
@Screen.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop local 10
@10
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
//push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop local 11
@11
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
//label Screen_14
(Screen_14)
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 11
@11
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
//call Memory.peek 1
//push retAddrLabel on to the stack
@Memory.peek$ret.5
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
@Memory.peek
0;JEQ
//create retAddress Label
(Memory.peek$ret.5)
//pop local 12
@12
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
//push constant 1
@1
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
//pop local 14
@14
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
//push local 10
@10
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Math.twoToThe 1
//push retAddrLabel on to the stack
@Math.twoToThe$ret.3
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
@Math.twoToThe
0;JEQ
//create retAddress Label
(Math.twoToThe$ret.3)
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
//not
@SP
A=M-1
M=!M
//pop local 13
@13
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
//push local 14
@14
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 10
@10
D=A
@LCL
A=D+M
D=M
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
//gt
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
@TRUE3683
D;JGT
@SP
A=M-1
M=0
@NEXT3683
0;JEQ
(TRUE3683)
@SP
A=M-1
M=-1
(NEXT3683)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Screen_17
@SP
AM=M-1
D=M
@Screen_17
D;JNE
//push local 14
@14
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 10
@10
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
//push constant 16
@16
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
@TRUE3691
D;JLT
@SP
A=M-1
M=0
@NEXT3691
0;JEQ
(TRUE3691)
@SP
A=M-1
M=-1
(NEXT3691)
//not
@SP
A=M-1
M=!M
//if-goto Screen_19
@SP
AM=M-1
D=M
@Screen_19
D;JNE
//push local 13
@13
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 14
@14
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 10
@10
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
//call Math.twoToThe 1
//push retAddrLabel on to the stack
@Math.twoToThe$ret.4
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
@Math.twoToThe
0;JEQ
//create retAddress Label
(Math.twoToThe$ret.4)
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop local 13
@13
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
//goto Screen_18
@Screen_18
0;JEQ
//label Screen_19
(Screen_19)
//label Screen_18
(Screen_18)
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 11
@11
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
//push local 12
@12
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 13
@13
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//push local 13
@13
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//or
@SP
AM=M-1
D=M
@SP
A=M-1
M=D|M
//call Memory.poke 2
//push retAddrLabel on to the stack
@Memory.poke$ret.5
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Memory.poke
0;JEQ
//create retAddress Label
(Memory.poke$ret.5)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//goto Screen_16
@Screen_16
0;JEQ
//label Screen_17
(Screen_17)
//label Screen_16
(Screen_16)
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 11
@11
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
//push local 12
@12
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 13
@13
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//push local 13
@13
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//or
@SP
AM=M-1
D=M
@SP
A=M-1
M=D|M
//call Memory.poke 2
//push retAddrLabel on to the stack
@Memory.poke$ret.6
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Memory.poke
0;JEQ
//create retAddress Label
(Memory.poke$ret.6)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push local 14
@14
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 10
@10
D=A
@LCL
A=D+M
D=M
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
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//pop local 14
@14
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
//push local 11
@11
D=A
@LCL
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop local 11
@11
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
//label Screen_20
(Screen_20)
//push local 14
@14
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
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
@TRUE3748
D;JLT
@SP
A=M-1
M=0
@NEXT3748
0;JEQ
(TRUE3748)
@SP
A=M-1
M=-1
(NEXT3748)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Screen_21
@SP
AM=M-1
D=M
@Screen_21
D;JNE
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 11
@11
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
//push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Memory.poke 2
//push retAddrLabel on to the stack
@Memory.poke$ret.7
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Memory.poke
0;JEQ
//create retAddress Label
(Memory.poke$ret.7)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push local 14
@14
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
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
//pop local 14
@14
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
//push local 11
@11
D=A
@LCL
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop local 11
@11
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
//push local 14
@14
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE3768
D;JEQ
@SP
A=M-1
M=0
@NEXT3768
0;JEQ
(TRUE3768)
@SP
A=M-1
M=-1
(NEXT3768)
//not
@SP
A=M-1
M=!M
//if-goto Screen_23
@SP
AM=M-1
D=M
@Screen_23
D;JNE
//push constant 0
@0
D=A
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
//goto Screen_22
@Screen_22
0;JEQ
//label Screen_23
(Screen_23)
//label Screen_22
(Screen_22)
//goto Screen_20
@Screen_20
0;JEQ
//label Screen_21
(Screen_21)
//push local 14
@14
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Math.twoToThe 1
//push retAddrLabel on to the stack
@Math.twoToThe$ret.5
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
@Math.twoToThe
0;JEQ
//create retAddress Label
(Math.twoToThe$ret.5)
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
//pop local 13
@13
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
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 11
@11
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
//call Memory.peek 1
//push retAddrLabel on to the stack
@Memory.peek$ret.6
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
@Memory.peek
0;JEQ
//create retAddress Label
(Memory.peek$ret.6)
//pop local 12
@12
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
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 11
@11
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
//push local 12
@12
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 13
@13
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//push local 13
@13
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//or
@SP
AM=M-1
D=M
@SP
A=M-1
M=D|M
//call Memory.poke 2
//push retAddrLabel on to the stack
@Memory.poke$ret.8
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Memory.poke
0;JEQ
//create retAddress Label
(Memory.poke$ret.8)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//goto Screen_10
@Screen_10
0;JEQ
//label Screen_11
(Screen_11)
//label Screen_10
(Screen_10)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 4
@4
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 5
@5
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 6
@6
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
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
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
@TRUE3814
D;JLT
@SP
A=M-1
M=0
@NEXT3814
0;JEQ
(TRUE3814)
@SP
A=M-1
M=-1
(NEXT3814)
//pop local 7
@7
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
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
@TRUE3818
D;JLT
@SP
A=M-1
M=0
@NEXT3818
0;JEQ
(TRUE3818)
@SP
A=M-1
M=-1
(NEXT3818)
//pop local 8
@8
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
//label Screen_24
(Screen_24)
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
//gt
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
@TRUE3823
D;JGT
@SP
A=M-1
M=0
@NEXT3823
0;JEQ
(TRUE3823)
@SP
A=M-1
M=-1
(NEXT3823)
//not
@SP
A=M-1
M=!M
//push local 5
@5
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
//gt
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
@TRUE3827
D;JGT
@SP
A=M-1
M=0
@NEXT3827
0;JEQ
(TRUE3827)
@SP
A=M-1
M=-1
(NEXT3827)
//not
@SP
A=M-1
M=!M
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//not
@SP
A=M-1
M=!M
//if-goto Screen_25
@SP
AM=M-1
D=M
@Screen_25
D;JNE
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
//push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
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
//push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//or
@SP
AM=M-1
D=M
@SP
A=M-1
M=D|M
//not
@SP
A=M-1
M=!M
//or
@SP
AM=M-1
D=M
@SP
A=M-1
M=D|M
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
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
//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 8
@8
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 8
@8
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//or
@SP
AM=M-1
D=M
@SP
A=M-1
M=D|M
//not
@SP
A=M-1
M=!M
//or
@SP
AM=M-1
D=M
@SP
A=M-1
M=D|M
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//call Screen.drawPixel 2
//push retAddrLabel on to the stack
@Screen.drawPixel$ret.1
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawPixel
0;JEQ
//create retAddress Label
(Screen.drawPixel$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
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
@TRUE3856
D;JLT
@SP
A=M-1
M=0
@NEXT3856
0;JEQ
(TRUE3856)
@SP
A=M-1
M=-1
(NEXT3856)
//not
@SP
A=M-1
M=!M
//if-goto Screen_27
@SP
AM=M-1
D=M
@Screen_27
D;JNE
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
//push constant 1
@1
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
//pop local 4
@4
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
//push local 6
@6
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop local 6
@6
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
//goto Screen_26
@Screen_26
0;JEQ
//label Screen_27
(Screen_27)
//push local 5
@5
D=A
@LCL
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
//pop local 5
@5
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
//push local 6
@6
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
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//pop local 6
@6
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
//label Screen_26
(Screen_26)
//goto Screen_24
@Screen_24
0;JEQ
//label Screen_25
(Screen_25)
//push constant 0
@0
D=A
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
//function Screen.drawRectangle 3
(Screen.drawRectangle)
@3
D=A
@n
M=D-1
(LOOP3882)
@n
D=M
M=M-1
@NEXT3882
D;JLT
@LCL
A=D+M
M=0
@LOOP3882
0;JEQ
(NEXT3882)
@3
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
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE3885
D;JGT
@SP
A=M-1
M=0
@NEXT3885
0;JEQ
(TRUE3885)
@SP
A=M-1
M=-1
(NEXT3885)
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE3888
D;JGT
@SP
A=M-1
M=0
@NEXT3888
0;JEQ
(TRUE3888)
@SP
A=M-1
M=-1
(NEXT3888)
//or
@SP
AM=M-1
D=M
@SP
A=M-1
M=D|M
//not
@SP
A=M-1
M=!M
//if-goto Screen_29
@SP
AM=M-1
D=M
@Screen_29
D;JNE
//push constant 0
@0
D=A
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
//goto Screen_28
@Screen_28
0;JEQ
//label Screen_29
(Screen_29)
//label Screen_28
(Screen_28)
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
//pop local 0
@0
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//pop static 3
@SP
AM=M-1
D=M
@Screen.3
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push retAddrLabel on to the stack
@Math.divide$ret.13
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.divide
0;JEQ
//create retAddress Label
(Math.divide$ret.13)
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
//push constant 16
@16
D=A
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.24
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.24)
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//pop static 2
@SP
AM=M-1
D=M
@Screen.2
M=D
//push constant 32
@32
D=A
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.25
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.25)
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop static 1
@SP
AM=M-1
D=M
@Screen.1
M=D
//label Screen_30
(Screen_30)
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
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE3923
D;JGT
@SP
A=M-1
M=0
@NEXT3923
0;JEQ
(TRUE3923)
@SP
A=M-1
M=-1
(NEXT3923)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Screen_31
@SP
AM=M-1
D=M
@Screen_31
D;JNE
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
//push argument 2
@2
D=A
@ARG
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
//call Screen.drawLine 4
//push retAddrLabel on to the stack
@Screen.drawLine$ret.1
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
@4
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawLine
0;JEQ
//create retAddress Label
(Screen.drawLine$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 32
@32
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
//pop static 1
@SP
AM=M-1
D=M
@Screen.1
M=D
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
//push constant 1
@1
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
//goto Screen_30
@Screen_30
0;JEQ
//label Screen_31
(Screen_31)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 3
@SP
AM=M-1
D=M
@Screen.3
M=D
//push constant 0
@0
D=A
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
//function Screen.drawCircle 10
(Screen.drawCircle)
@10
D=A
@n
M=D-1
(LOOP3947)
@n
D=M
M=M-1
@NEXT3947
D;JLT
@LCL
A=D+M
M=0
@LOOP3947
0;JEQ
(NEXT3947)
@10
D=A
@SP
M=D+M
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//pop static 3
@SP
AM=M-1
D=M
@Screen.3
M=D
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//label Screen_32
(Screen_32)
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
//push constant 0
@0
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
@TRUE3956
D;JLT
@SP
A=M-1
M=0
@NEXT3956
0;JEQ
(TRUE3956)
@SP
A=M-1
M=-1
(NEXT3956)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Screen_33
@SP
AM=M-1
D=M
@Screen_33
D;JNE
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.26
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.26)
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.27
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.27)
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//call Math.sqrt 1
//push retAddrLabel on to the stack
@Math.sqrt$ret.1
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
@Math.sqrt
0;JEQ
//create retAddress Label
(Math.sqrt$ret.1)
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
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop local 4
@4
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop local 5
@5
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push retAddrLabel on to the stack
@Math.divide$ret.14
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.divide
0;JEQ
//create retAddress Label
(Math.divide$ret.14)
//pop local 8
@8
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//push local 8
@8
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.28
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.28)
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//pop static 2
@SP
AM=M-1
D=M
@Screen.2
M=D
//push constant 32
@32
D=A
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.29
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.29)
//push local 8
@8
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
//pop static 1
@SP
AM=M-1
D=M
@Screen.1
M=D
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
//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Screen.drawLine 4
//push retAddrLabel on to the stack
@Screen.drawLine$ret.2
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
@4
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawLine
0;JEQ
//create retAddress Label
(Screen.drawLine$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//pop local 5
@5
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
//push constant 32
@32
D=A
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.30
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.30)
//push local 8
@8
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
//pop local 9
@9
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
//push local 9
@9
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
AM=M-1
D=M
@Screen.1
M=D
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
//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Screen.drawLine 4
//push retAddrLabel on to the stack
@Screen.drawLine$ret.3
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
@4
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawLine
0;JEQ
//create retAddress Label
(Screen.drawLine$ret.3)
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
//pop local 0
@0
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
//goto Screen_32
@Screen_32
0;JEQ
//label Screen_33
(Screen_33)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 3
@SP
AM=M-1
D=M
@Screen.3
M=D
//push constant 0
@0
D=A
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
//function String.init 0
(String.init)
@0
D=A
@n
M=D-1
(LOOP4039)
@n
D=M
M=M-1
@NEXT4039
D;JLT
@LCL
A=D+M
M=0
@LOOP4039
0;JEQ
(NEXT4039)
@0
D=A
@SP
M=D+M
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 0
@SP
AM=M-1
D=M
@String.0
M=D
//push constant 0
@0
D=A
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
//function String.new 0
(String.new)
@0
D=A
@n
M=D-1
(LOOP4044)
@n
D=M
M=M-1
@NEXT4044
D;JLT
@LCL
A=D+M
M=0
@LOOP4044
0;JEQ
(NEXT4044)
@0
D=A
@SP
M=D+M
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Memory.alloc 1
//push retAddrLabel on to the stack
@Memory.alloc$ret.5
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
@Memory.alloc
0;JEQ
//create retAddress Label
(Memory.alloc$ret.5)
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
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
//pop this 2
@2
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE4052
D;JEQ
@SP
A=M-1
M=0
@NEXT4052
0;JEQ
(TRUE4052)
@SP
A=M-1
M=-1
(NEXT4052)
//not
@SP
A=M-1
M=!M
//if-goto String_1
@SP
AM=M-1
D=M
@String_1
D;JNE
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 2
@2
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto String_0
@String_0
0;JEQ
//label String_1
(String_1)
//label String_0
(String_0)
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Array.new 1
//push retAddrLabel on to the stack
@Array.new$ret.5
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
@Array.new
0;JEQ
//create retAddress Label
(Array.new$ret.5)
//pop this 0
@0
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 1
@1
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push pointer 0
@THIS
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
//function String.dispose 0
(String.dispose)
@0
D=A
@n
M=D-1
(LOOP4067)
@n
D=M
M=M-1
@NEXT4067
D;JLT
@LCL
A=D+M
M=0
@LOOP4067
0;JEQ
(NEXT4067)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Array.dispose 1
//push retAddrLabel on to the stack
@Array.dispose$ret.2
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
@Array.dispose
0;JEQ
//create retAddress Label
(Array.dispose$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Memory.deAlloc 1
//push retAddrLabel on to the stack
@Memory.deAlloc$ret.5
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
@Memory.deAlloc
0;JEQ
//create retAddress Label
(Memory.deAlloc$ret.5)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function String.length 0
(String.length)
@0
D=A
@n
M=D-1
(LOOP4078)
@n
D=M
M=M-1
@NEXT4078
D;JLT
@LCL
A=D+M
M=0
@LOOP4078
0;JEQ
(NEXT4078)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 1
@1
D=A
@THIS
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
//function String.charAt 0
(String.charAt)
@0
D=A
@n
M=D-1
(LOOP4083)
@n
D=M
M=M-1
@NEXT4083
D;JLT
@LCL
A=D+M
M=0
@LOOP4083
0;JEQ
(NEXT4083)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 0
@0
D=A
@THIS
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//function String.setCharAt 0
(String.setCharAt)
@0
D=A
@n
M=D-1
(LOOP4092)
@n
D=M
M=M-1
@NEXT4092
D;JLT
@LCL
A=D+M
M=0
@LOOP4092
0;JEQ
(NEXT4092)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 0
@0
D=A
@THIS
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
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push constant 0
@0
D=A
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
//function String.appendChar 0
(String.appendChar)
@0
D=A
@n
M=D-1
(LOOP4105)
@n
D=M
M=M-1
@NEXT4105
D;JLT
@LCL
A=D+M
M=0
@LOOP4105
0;JEQ
(NEXT4105)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 2
@2
D=A
@THIS
A=D+M
D=M
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
@TRUE4110
D;JLT
@SP
A=M-1
M=0
@NEXT4110
0;JEQ
(TRUE4110)
@SP
A=M-1
M=-1
(NEXT4110)
//not
@SP
A=M-1
M=!M
//if-goto String_3
@SP
AM=M-1
D=M
@String_3
D;JNE
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 0
@0
D=A
@THIS
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push this 1
@1
D=A
@THIS
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
//pop this 1
@1
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto String_2
@String_2
0;JEQ
//label String_3
(String_3)
//label String_2
(String_2)
//push pointer 0
@THIS
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
//function String.eraseLastChar 0
(String.eraseLastChar)
@0
D=A
@n
M=D-1
(LOOP4130)
@n
D=M
M=M-1
@NEXT4130
D;JLT
@LCL
A=D+M
M=0
@LOOP4130
0;JEQ
(NEXT4130)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE4135
D;JGT
@SP
A=M-1
M=0
@NEXT4135
0;JEQ
(TRUE4135)
@SP
A=M-1
M=-1
(NEXT4135)
//not
@SP
A=M-1
M=!M
//if-goto String_5
@SP
AM=M-1
D=M
@String_5
D;JNE
//push this 1
@1
D=A
@THIS
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
//pop this 1
@1
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//goto String_4
@String_4
0;JEQ
//label String_5
(String_5)
//label String_4
(String_4)
//push constant 0
@0
D=A
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
//function String.intValue 3
(String.intValue)
@3
D=A
@n
M=D-1
(LOOP4147)
@n
D=M
M=M-1
@NEXT4147
D;JLT
@LCL
A=D+M
M=0
@LOOP4147
0;JEQ
(NEXT4147)
@3
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//push constant 0
@0
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
//push constant 0
@0
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
//push pointer 0
@THIS
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
//call String.charAt 2
//push retAddrLabel on to the stack
@String.charAt$ret.2
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.charAt
0;JEQ
//create retAddress Label
(String.charAt$ret.2)
//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
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
@TRUE4160
D;JEQ
@SP
A=M-1
M=0
@NEXT4160
0;JEQ
(TRUE4160)
@SP
A=M-1
M=-1
(NEXT4160)
//not
@SP
A=M-1
M=!M
//if-goto String_7
@SP
AM=M-1
D=M
@String_7
D;JNE
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//pop local 0
@0
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
//push constant 1
@1
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
//goto String_6
@String_6
0;JEQ
//label String_7
(String_7)
//label String_6
(String_6)
//label String_8
(String_8)
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
//push this 1
@1
D=A
@THIS
A=D+M
D=M
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
@TRUE4174
D;JLT
@SP
A=M-1
M=0
@NEXT4174
0;JEQ
(TRUE4174)
@SP
A=M-1
M=-1
(NEXT4174)
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push pointer 0
@THIS
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
//call String.charAt 2
//push retAddrLabel on to the stack
@String.charAt$ret.3
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.charAt
0;JEQ
//create retAddress Label
(String.charAt$ret.3)
//call String.isDigit 2
//push retAddrLabel on to the stack
@String.isDigit$ret.1
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.isDigit
0;JEQ
//create retAddress Label
(String.isDigit$ret.1)
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
//not
@SP
A=M-1
M=!M
//if-goto String_9
@SP
AM=M-1
D=M
@String_9
D;JNE
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
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.31
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.31)
//push pointer 0
@THIS
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
//call String.charAt 2
//push retAddrLabel on to the stack
@String.charAt$ret.4
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.charAt
0;JEQ
//create retAddress Label
(String.charAt$ret.4)
//push constant 48
@48
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
//add
@SP
AM=M-1
D=M
@SP
A=M-1
M=D+M
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
//push constant 1
@1
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
//goto String_8
@String_8
0;JEQ
//label String_9
(String_9)
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
//not
@SP
A=M-1
M=!M
//if-goto String_11
@SP
AM=M-1
D=M
@String_11
D;JNE
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
//neg
@SP
A=M-1
M=-M
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
//goto String_10
@String_10
0;JEQ
//label String_11
(String_11)
//label String_10
(String_10)
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
//function String.isDigit 0
(String.isDigit)
@0
D=A
@n
M=D-1
(LOOP4210)
@n
D=M
M=M-1
@NEXT4210
D;JLT
@LCL
A=D+M
M=0
@LOOP4210
0;JEQ
(NEXT4210)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE4215
D;JGT
@SP
A=M-1
M=0
@NEXT4215
0;JEQ
(TRUE4215)
@SP
A=M-1
M=-1
(NEXT4215)
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 58
@58
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
@TRUE4218
D;JLT
@SP
A=M-1
M=0
@NEXT4218
0;JEQ
(TRUE4218)
@SP
A=M-1
M=-1
(NEXT4218)
//and
@SP
AM=M-1
D=M
@SP
A=M-1
M=D&M
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
//function String.setInt 3
(String.setInt)
@3
D=A
@n
M=D-1
(LOOP4221)
@n
D=M
M=M-1
@NEXT4221
D;JLT
@LCL
A=D+M
M=0
@LOOP4221
0;JEQ
(NEXT4221)
@3
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
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
@TRUE4226
D;JLT
@SP
A=M-1
M=0
@NEXT4226
0;JEQ
(TRUE4226)
@SP
A=M-1
M=-1
(NEXT4226)
//not
@SP
A=M-1
M=!M
//if-goto String_13
@SP
AM=M-1
D=M
@String_13
D;JNE
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//pop static 0
@SP
AM=M-1
D=M
@String.0
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//pop argument 1
@1
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
//goto String_12
@String_12
0;JEQ
//label String_13
(String_13)
//label String_12
(String_12)
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push retAddrLabel on to the stack
@Math.divide$ret.15
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.divide
0;JEQ
//create retAddress Label
(Math.divide$ret.15)
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
//push argument 1
@1
D=A
@ARG
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
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.32
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.32)
//sub
@SP
AM=M-1
D=M
@SP
A=M-1
M=M-D
//pop local 0
@0
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
//push constant 48
@48
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
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 10
@10
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
@TRUE4254
D;JLT
@SP
A=M-1
M=0
@NEXT4254
0;JEQ
(TRUE4254)
@SP
A=M-1
M=-1
(NEXT4254)
//not
@SP
A=M-1
M=!M
//if-goto String_15
@SP
AM=M-1
D=M
@String_15
D;JNE
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 1
@1
D=A
@THIS
D=D+M
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push static 0
@String.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//if-goto String_17
@SP
AM=M-1
D=M
@String_17
D;JNE
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.19
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.19)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//goto String_16
@String_16
0;JEQ
//label String_17
(String_17)
//label String_16
(String_16)
//push pointer 0
@THIS
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
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.20
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.20)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 0
@SP
AM=M-1
D=M
@String.0
M=D
//push constant 0
@0
D=A
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
//goto String_14
@String_14
0;JEQ
//label String_15
(String_15)
//push pointer 0
@THIS
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
//call String.setInt 2
//push retAddrLabel on to the stack
@String.setInt$ret.2
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.setInt
0;JEQ
//create retAddress Label
(String.setInt$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push pointer 0
@THIS
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
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.21
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.21)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//label String_14
(String_14)
//push constant 0
@0
D=A
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
//function String.newLine 0
(String.newLine)
@0
D=A
@n
M=D-1
(LOOP4290)
@n
D=M
M=M-1
@NEXT4290
D;JLT
@LCL
A=D+M
M=0
@LOOP4290
0;JEQ
(NEXT4290)
@0
D=A
@SP
M=D+M
//push constant 128
@128
D=A
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
//function String.backSpace 0
(String.backSpace)
@0
D=A
@n
M=D-1
(LOOP4293)
@n
D=M
M=M-1
@NEXT4293
D;JLT
@LCL
A=D+M
M=0
@LOOP4293
0;JEQ
(NEXT4293)
@0
D=A
@SP
M=D+M
//push constant 129
@129
D=A
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
//function String.doubleQuote 0
(String.doubleQuote)
@0
D=A
@n
M=D-1
(LOOP4296)
@n
D=M
M=M-1
@NEXT4296
D;JLT
@LCL
A=D+M
M=0
@LOOP4296
0;JEQ
(NEXT4296)
@0
D=A
@SP
M=D+M
//push constant 34
@34
D=A
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
//function Sys.init 0
(Sys.init)
@0
D=A
@n
M=D-1
(LOOP4299)
@n
D=M
M=M-1
@NEXT4299
D;JLT
@LCL
A=D+M
M=0
@LOOP4299
0;JEQ
(NEXT4299)
@0
D=A
@SP
M=D+M
//call Memory.init 0
//push retAddrLabel on to the stack
@Memory.init$ret.1
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
@Memory.init
0;JEQ
//create retAddress Label
(Memory.init$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//call Math.init 0
//push retAddrLabel on to the stack
@Math.init$ret.1
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
@Math.init
0;JEQ
//create retAddress Label
(Math.init$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//call Screen.init 0
//push retAddrLabel on to the stack
@Screen.init$ret.1
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
@Screen.init
0;JEQ
//create retAddress Label
(Screen.init$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//call String.init 0
//push retAddrLabel on to the stack
@String.init$ret.1
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
@String.init
0;JEQ
//create retAddress Label
(String.init$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//call Output.init 0
//push retAddrLabel on to the stack
@Output.init$ret.1
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
@Output.init
0;JEQ
//create retAddress Label
(Output.init$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//call Main.main 0
//push retAddrLabel on to the stack
@Main.main$ret.1
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
@Main.main
0;JEQ
//create retAddress Label
(Main.main$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Sys.wait 2
(Sys.wait)
@2
D=A
@n
M=D-1
(LOOP4314)
@n
D=M
M=M-1
@NEXT4314
D;JLT
@LCL
A=D+M
M=0
@LOOP4314
0;JEQ
(NEXT4314)
@2
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
//pop local 0
@0
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
//label Sys_0
(Sys_0)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE4322
D;JGT
@SP
A=M-1
M=0
@NEXT4322
0;JEQ
(TRUE4322)
@SP
A=M-1
M=-1
(NEXT4322)
//not
@SP
A=M-1
M=!M
//if-goto Sys_1
@SP
AM=M-1
D=M
@Sys_1
D;JNE
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.33
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.33)
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
//label Sys_2
(Sys_2)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE4332
D;JGT
@SP
A=M-1
M=0
@NEXT4332
0;JEQ
(TRUE4332)
@SP
A=M-1
M=-1
(NEXT4332)
//not
@SP
A=M-1
M=!M
//if-goto Sys_3
@SP
AM=M-1
D=M
@Sys_3
D;JNE
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.34
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.34)
//pop local 0
@0
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.35
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.35)
//pop local 0
@0
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
//label Sys_4
(Sys_4)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
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
@TRUE4346
D;JGT
@SP
A=M-1
M=0
@NEXT4346
0;JEQ
(TRUE4346)
@SP
A=M-1
M=-1
(NEXT4346)
//not
@SP
A=M-1
M=!M
//if-goto Sys_5
@SP
AM=M-1
D=M
@Sys_5
D;JNE
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.36
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.36)
//pop argument 0
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
//pop argument 0
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
//call Math.multiply 2
//push retAddrLabel on to the stack
@Math.multiply$ret.37
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@Math.multiply
0;JEQ
//create retAddress Label
(Math.multiply$ret.37)
//pop argument 0
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
//goto Sys_4
@Sys_4
0;JEQ
//label Sys_5
(Sys_5)
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
//pop local 0
@0
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
//goto Sys_2
@Sys_2
0;JEQ
//label Sys_3
(Sys_3)
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
//goto Sys_0
@Sys_0
0;JEQ
//label Sys_1
(Sys_1)
//push constant 0
@0
D=A
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
//function Sys.error 0
(Sys.error)
@0
D=A
@n
M=D-1
(LOOP4377)
@n
D=M
M=M-1
@NEXT4377
D;JLT
@LCL
A=D+M
M=0
@LOOP4377
0;JEQ
(NEXT4377)
@0
D=A
@SP
M=D+M
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.new 1
//push retAddrLabel on to the stack
@String.new$ret.5
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
@String.new
0;JEQ
//create retAddress Label
(String.new$ret.5)
//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.22
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.22)
//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.23
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.23)
//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
//push retAddrLabel on to the stack
@String.appendChar$ret.24
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
@2
D=D-A
@ARG
M=D
//LCL = SP
@SP
D=M
@LCL
M=D
//goto functionName
@String.appendChar
0;JEQ
//create retAddress Label
(String.appendChar$ret.24)
//call Output.printString 1
//push retAddrLabel on to the stack
@Output.printString$ret.5
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
@Output.printString
0;JEQ
//create retAddress Label
(Output.printString$ret.5)
//pop temp 0
@SP
AM=M-1
D=M
@5
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
//call Output.printInt 1
//push retAddrLabel on to the stack
@Output.printInt$ret.2
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
@Output.printInt
0;JEQ
//create retAddress Label
(Output.printInt$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//call Sys.halt 0
//push retAddrLabel on to the stack
@Sys.halt$ret.1
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
@Sys.halt
0;JEQ
//create retAddress Label
(Sys.halt$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 0
@0
D=A
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
//function Sys.halt 0
(Sys.halt)
@0
D=A
@n
M=D-1
(LOOP4395)
@n
D=M
M=M-1
@NEXT4395
D;JLT
@LCL
A=D+M
M=0
@LOOP4395
0;JEQ
(NEXT4395)
@0
D=A
@SP
M=D+M
//label Sys_6
(Sys_6)
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//not
@SP
A=M-1
M=!M
//if-goto Sys_7
@SP
AM=M-1
D=M
@Sys_7
D;JNE
//goto Sys_6
@Sys_6
0;JEQ
//label Sys_7
(Sys_7)
//push constant 0
@0
D=A
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
