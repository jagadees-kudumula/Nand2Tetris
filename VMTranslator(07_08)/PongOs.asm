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
//if-goto Ball_0
@SP
AM=M-1
D=M
@Ball_0
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
//goto Ball_1
@Ball_1
0;JEQ
//label Ball_0
(Ball_0)
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
//label Ball_1
(Ball_1)
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
//if-goto Ball_2
@SP
AM=M-1
D=M
@Ball_2
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
//goto Ball_3
@Ball_3
0;JEQ
//label Ball_2
(Ball_2)
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
//if-goto Ball_4
@SP
AM=M-1
D=M
@Ball_4
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
//if-goto Ball_5
@SP
AM=M-1
D=M
@Ball_5
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
//label Ball_5
(Ball_5)
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
//goto Ball_7
@Ball_7
0;JEQ
//label Ball_4
(Ball_4)
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
//if-goto Ball_8
@SP
AM=M-1
D=M
@Ball_8
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
//goto Ball_9
@Ball_9
0;JEQ
//label Ball_8
(Ball_8)
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
//label Ball_9
(Ball_9)
//label Ball_7
(Ball_7)
//label Ball_3
(Ball_3)
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
//if-goto Ball_10
@SP
AM=M-1
D=M
@Ball_10
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
//if-goto Ball_11
@SP
AM=M-1
D=M
@Ball_11
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
//label Ball_11
(Ball_11)
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
//goto Ball_13
@Ball_13
0;JEQ
//label Ball_10
(Ball_10)
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
//if-goto Ball_14
@SP
AM=M-1
D=M
@Ball_14
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
//goto Ball_15
@Ball_15
0;JEQ
//label Ball_14
(Ball_14)
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
//label Ball_15
(Ball_15)
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
//if-goto Ball_16
@SP
AM=M-1
D=M
@Ball_16
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
@TRUE270
D;JLT
@SP
A=M-1
M=0
@NEXT270
0;JEQ
(TRUE270)
@SP
A=M-1
M=-1
(NEXT270)
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
//label Ball_17
(Ball_17)
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
@TRUE281
D;JGT
@SP
A=M-1
M=0
@NEXT281
0;JEQ
(TRUE281)
@SP
A=M-1
M=-1
(NEXT281)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Ball_18
@SP
AM=M-1
D=M
@Ball_18
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
@TRUE292
D;JLT
@SP
A=M-1
M=0
@NEXT292
0;JEQ
(TRUE292)
@SP
A=M-1
M=-1
(NEXT292)
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
//label Ball_19
(Ball_19)
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
(LOOP306)
@n
D=M
M=M-1
@NEXT306
D;JLT
@LCL
A=D+M
M=0
@LOOP306
0;JEQ
(NEXT306)
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
@TRUE319
D;JEQ
@SP
A=M-1
M=0
@NEXT319
0;JEQ
(TRUE319)
@SP
A=M-1
M=-1
(NEXT319)
//not
@SP
A=M-1
M=!M
//if-goto Ball_20
@SP
AM=M-1
D=M
@Ball_20
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
//goto Ball_21
@Ball_21
0;JEQ
//label Ball_20
(Ball_20)
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
@TRUE328
D;JLT
@SP
A=M-1
M=0
@NEXT328
0;JEQ
(TRUE328)
@SP
A=M-1
M=-1
(NEXT328)
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
@TRUE332
D;JEQ
@SP
A=M-1
M=0
@NEXT332
0;JEQ
(TRUE332)
@SP
A=M-1
M=-1
(NEXT332)
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
//if-goto Ball_22
@SP
AM=M-1
D=M
@Ball_22
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
//goto Ball_23
@Ball_23
0;JEQ
//label Ball_22
(Ball_22)
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
//label Ball_23
(Ball_23)
//label Ball_21
(Ball_21)
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
@TRUE355
D;JEQ
@SP
A=M-1
M=0
@NEXT355
0;JEQ
(TRUE355)
@SP
A=M-1
M=-1
(NEXT355)
//not
@SP
A=M-1
M=!M
//if-goto Ball_24
@SP
AM=M-1
D=M
@Ball_24
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
//goto Ball_25
@Ball_25
0;JEQ
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
@TRUE377
D;JEQ
@SP
A=M-1
M=0
@NEXT377
0;JEQ
(TRUE377)
@SP
A=M-1
M=-1
(NEXT377)
//not
@SP
A=M-1
M=!M
//if-goto Ball_26
@SP
AM=M-1
D=M
@Ball_26
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
//goto Ball_27
@Ball_27
0;JEQ
//label Ball_26
(Ball_26)
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
@TRUE398
D;JEQ
@SP
A=M-1
M=0
@NEXT398
0;JEQ
(TRUE398)
@SP
A=M-1
M=-1
(NEXT398)
//not
@SP
A=M-1
M=!M
//if-goto Ball_28
@SP
AM=M-1
D=M
@Ball_28
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
//goto Ball_29
@Ball_29
0;JEQ
//label Ball_28
(Ball_28)
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
//label Ball_29
(Ball_29)
//label Ball_27
(Ball_27)
//label Ball_25
(Ball_25)
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
(LOOP442)
@n
D=M
M=M-1
@NEXT442
D;JLT
@LCL
A=D+M
M=0
@LOOP442
0;JEQ
(NEXT442)
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
(LOOP461)
@n
D=M
M=M-1
@NEXT461
D;JLT
@LCL
A=D+M
M=0
@LOOP461
0;JEQ
(NEXT461)
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
(LOOP481)
@n
D=M
M=M-1
@NEXT481
D;JLT
@LCL
A=D+M
M=0
@LOOP481
0;JEQ
(NEXT481)
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
(LOOP492)
@n
D=M
M=M-1
@NEXT492
D;JLT
@LCL
A=D+M
M=0
@LOOP492
0;JEQ
(NEXT492)
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
(LOOP507)
@n
D=M
M=M-1
@NEXT507
D;JLT
@LCL
A=D+M
M=0
@LOOP507
0;JEQ
(NEXT507)
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
(LOOP514)
@n
D=M
M=M-1
@NEXT514
D;JLT
@LCL
A=D+M
M=0
@LOOP514
0;JEQ
(NEXT514)
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
(LOOP519)
@n
D=M
M=M-1
@NEXT519
D;JLT
@LCL
A=D+M
M=0
@LOOP519
0;JEQ
(NEXT519)
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
(LOOP526)
@n
D=M
M=M-1
@NEXT526
D;JLT
@LCL
A=D+M
M=0
@LOOP526
0;JEQ
(NEXT526)
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
(LOOP539)
@n
D=M
M=M-1
@NEXT539
D;JLT
@LCL
A=D+M
M=0
@LOOP539
0;JEQ
(NEXT539)
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
@TRUE544
D;JEQ
@SP
A=M-1
M=0
@NEXT544
0;JEQ
(TRUE544)
@SP
A=M-1
M=-1
(NEXT544)
//not
@SP
A=M-1
M=!M
//if-goto Bat_30
@SP
AM=M-1
D=M
@Bat_30
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
@TRUE553
D;JLT
@SP
A=M-1
M=0
@NEXT553
0;JEQ
(TRUE553)
@SP
A=M-1
M=-1
(NEXT553)
//not
@SP
A=M-1
M=!M
//if-goto Bat_31
@SP
AM=M-1
D=M
@Bat_31
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
//label Bat_31
(Bat_31)
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
//goto Bat_32
@Bat_32
0;JEQ
//label Bat_30
(Bat_30)
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
@TRUE602
D;JGT
@SP
A=M-1
M=0
@NEXT602
0;JEQ
(TRUE602)
@SP
A=M-1
M=-1
(NEXT602)
//not
@SP
A=M-1
M=!M
//if-goto Bat_33
@SP
AM=M-1
D=M
@Bat_33
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
//label Bat_33
(Bat_33)
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
//label Bat_32
(Bat_32)
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
(LOOP646)
@n
D=M
M=M-1
@NEXT646
D;JLT
@LCL
A=D+M
M=0
@LOOP646
0;JEQ
(NEXT646)
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
(LOOP650)
@n
D=M
M=M-1
@NEXT650
D;JLT
@LCL
A=D+M
M=0
@LOOP650
0;JEQ
(NEXT650)
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
//label Keyboard_34
(Keyboard_34)
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
@TRUE657
D;JEQ
@SP
A=M-1
M=0
@NEXT657
0;JEQ
(TRUE657)
@SP
A=M-1
M=-1
(NEXT657)
//not
@SP
A=M-1
M=!M
//if-goto Keyboard_35
@SP
AM=M-1
D=M
@Keyboard_35
D;JNE
//goto Keyboard_34
@Keyboard_34
0;JEQ
//label Keyboard_35
(Keyboard_35)
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
//label Keyboard_36
(Keyboard_36)
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
@TRUE667
D;JEQ
@SP
A=M-1
M=0
@NEXT667
0;JEQ
(TRUE667)
@SP
A=M-1
M=-1
(NEXT667)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Keyboard_37
@SP
AM=M-1
D=M
@Keyboard_37
D;JNE
//goto Keyboard_36
@Keyboard_36
0;JEQ
//label Keyboard_37
(Keyboard_37)
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
(LOOP680)
@n
D=M
M=M-1
@NEXT680
D;JLT
@LCL
A=D+M
M=0
@LOOP680
0;JEQ
(NEXT680)
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
//label Keyboard_38
(Keyboard_38)
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
//if-goto Keyboard_39
@SP
AM=M-1
D=M
@Keyboard_39
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
@TRUE696
D;JEQ
@SP
A=M-1
M=0
@NEXT696
0;JEQ
(TRUE696)
@SP
A=M-1
M=-1
(NEXT696)
//not
@SP
A=M-1
M=!M
//if-goto Keyboard_40
@SP
AM=M-1
D=M
@Keyboard_40
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
//label Keyboard_40
(Keyboard_40)
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
//if-goto Keyboard_41
@SP
AM=M-1
D=M
@Keyboard_41
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
//goto Keyboard_42
@Keyboard_42
0;JEQ
//label Keyboard_41
(Keyboard_41)
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
//label Keyboard_42
(Keyboard_42)
//goto Keyboard_38
@Keyboard_38
0;JEQ
//label Keyboard_39
(Keyboard_39)
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
(LOOP729)
@n
D=M
M=M-1
@NEXT729
D;JLT
@LCL
A=D+M
M=0
@LOOP729
0;JEQ
(NEXT729)
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
(LOOP738)
@n
D=M
M=M-1
@NEXT738
D;JLT
@LCL
A=D+M
M=0
@LOOP738
0;JEQ
(NEXT738)
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
(LOOP751)
@n
D=M
M=M-1
@NEXT751
D;JLT
@LCL
A=D+M
M=0
@LOOP751
0;JEQ
(NEXT751)
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
//push static 1
@Math.1
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
//push static 1
@Math.1
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
//push static 1
@Math.1
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
//push static 1
@Math.1
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
//push static 1
@Math.1
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
//push static 1
@Math.1
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
//push static 1
@Math.1
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
//push static 1
@Math.1
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
//push static 1
@Math.1
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
//push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 9
@9
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
//push static 1
@Math.1
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
//push static 1
@Math.1
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
//push static 1
@Math.1
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
//push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 13
@13
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
//push static 1
@Math.1
D=M
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
//push static 1
@Math.1
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
(LOOP890)
@n
D=M
M=M-1
@NEXT890
D;JLT
@LCL
A=D+M
M=0
@LOOP890
0;JEQ
(NEXT890)
@0
D=A
@SP
M=D+M
//push static 1
@Math.1
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
(LOOP897)
@n
D=M
M=M-1
@NEXT897
D;JLT
@LCL
A=D+M
M=0
@LOOP897
0;JEQ
(NEXT897)
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
//label Math_43
(Math_43)
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
@TRUE907
D;JGT
@SP
A=M-1
M=0
@NEXT907
0;JEQ
(TRUE907)
@SP
A=M-1
M=-1
(NEXT907)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Math_44
@SP
AM=M-1
D=M
@Math_44
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
//push static 1
@Math.1
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
@TRUE921
D;JEQ
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
//if-goto Math_45
@SP
AM=M-1
D=M
@Math_45
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
//label Math_45
(Math_45)
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
//goto Math_43
@Math_43
0;JEQ
//label Math_44
(Math_44)
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
(LOOP942)
@n
D=M
M=M-1
@NEXT942
D;JLT
@LCL
A=D+M
M=0
@LOOP942
0;JEQ
(NEXT942)
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
@TRUE947
D;JLT
@SP
A=M-1
M=0
@NEXT947
0;JEQ
(TRUE947)
@SP
A=M-1
M=-1
(NEXT947)
//not
@SP
A=M-1
M=!M
//if-goto Math_46
@SP
AM=M-1
D=M
@Math_46
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
@TRUE955
D;JEQ
@SP
A=M-1
M=0
@NEXT955
0;JEQ
(TRUE955)
@SP
A=M-1
M=-1
(NEXT955)
//not
@SP
A=M-1
M=!M
//if-goto Math_47
@SP
AM=M-1
D=M
@Math_47
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
//goto Math_48
@Math_48
0;JEQ
//label Math_47
(Math_47)
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
//label Math_48
(Math_48)
//label Math_46
(Math_46)
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
@TRUE969
D;JLT
@SP
A=M-1
M=0
@NEXT969
0;JEQ
(TRUE969)
@SP
A=M-1
M=-1
(NEXT969)
//not
@SP
A=M-1
M=!M
//if-goto Math_49
@SP
AM=M-1
D=M
@Math_49
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
@TRUE977
D;JEQ
@SP
A=M-1
M=0
@NEXT977
0;JEQ
(TRUE977)
@SP
A=M-1
M=-1
(NEXT977)
//not
@SP
A=M-1
M=!M
//if-goto Math_50
@SP
AM=M-1
D=M
@Math_50
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
//goto Math_51
@Math_51
0;JEQ
//label Math_50
(Math_50)
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
//label Math_51
(Math_51)
//label Math_49
(Math_49)
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
@TRUE993
D;JGT
@SP
A=M-1
M=0
@NEXT993
0;JEQ
(TRUE993)
@SP
A=M-1
M=-1
(NEXT993)
//not
@SP
A=M-1
M=!M
//if-goto Math_52
@SP
AM=M-1
D=M
@Math_52
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
//label Math_52
(Math_52)
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
@TRUE1007
D;JLT
@SP
A=M-1
M=0
@NEXT1007
0;JEQ
(TRUE1007)
@SP
A=M-1
M=-1
(NEXT1007)
//not
@SP
A=M-1
M=!M
//if-goto Math_53
@SP
AM=M-1
D=M
@Math_53
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
//label Math_53
(Math_53)
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
@TRUE1026
D;JLT
@SP
A=M-1
M=0
@NEXT1026
0;JEQ
(TRUE1026)
@SP
A=M-1
M=-1
(NEXT1026)
//not
@SP
A=M-1
M=!M
//if-goto Math_54
@SP
AM=M-1
D=M
@Math_54
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
//goto Math_55
@Math_55
0;JEQ
//label Math_54
(Math_54)
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
//label Math_55
(Math_55)
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
//if-goto Math_56
@SP
AM=M-1
D=M
@Math_56
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
//label Math_56
(Math_56)
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
(LOOP1051)
@n
D=M
M=M-1
@NEXT1051
D;JLT
@LCL
A=D+M
M=0
@LOOP1051
0;JEQ
(NEXT1051)
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
//push constant 0
@0
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
//label Math_57
(Math_57)
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
@TRUE1076
D;JLT
@SP
A=M-1
M=0
@NEXT1076
0;JEQ
(TRUE1076)
@SP
A=M-1
M=-1
(NEXT1076)
//not
@SP
A=M-1
M=!M
//if-goto Math_58
@SP
AM=M-1
D=M
@Math_58
D;JNE
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
//goto Math_57
@Math_57
0;JEQ
//label Math_58
(Math_58)
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
//label Math_59
(Math_59)
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
@TRUE1114
D;JLT
@SP
A=M-1
M=0
@NEXT1114
0;JEQ
(TRUE1114)
@SP
A=M-1
M=-1
(NEXT1114)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Math_60
@SP
AM=M-1
D=M
@Math_60
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
@TRUE1136
D;JGT
@SP
A=M-1
M=0
@NEXT1136
0;JEQ
(TRUE1136)
@SP
A=M-1
M=-1
(NEXT1136)
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
@TRUE1140
D;JGT
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
//if-goto Math_61
@SP
AM=M-1
D=M
@Math_61
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
//label Math_61
(Math_61)
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
//goto Math_59
@Math_59
0;JEQ
//label Math_60
(Math_60)
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
(LOOP1164)
@n
D=M
M=M-1
@NEXT1164
D;JLT
@LCL
A=D+M
M=0
@LOOP1164
0;JEQ
(NEXT1164)
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
@TRUE1167
D;JLT
@SP
A=M-1
M=0
@NEXT1167
0;JEQ
(TRUE1167)
@SP
A=M-1
M=-1
(NEXT1167)
//not
@SP
A=M-1
M=!M
//if-goto Math_62
@SP
AM=M-1
D=M
@Math_62
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
//goto Math_63
@Math_63
0;JEQ
//label Math_62
(Math_62)
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
//label Math_63
(Math_63)
//function Math.min 0
(Math.min)
@0
D=A
@n
M=D-1
(LOOP1178)
@n
D=M
M=M-1
@NEXT1178
D;JLT
@LCL
A=D+M
M=0
@LOOP1178
0;JEQ
(NEXT1178)
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
@TRUE1181
D;JLT
@SP
A=M-1
M=0
@NEXT1181
0;JEQ
(TRUE1181)
@SP
A=M-1
M=-1
(NEXT1181)
//not
@SP
A=M-1
M=!M
//if-goto Math_64
@SP
AM=M-1
D=M
@Math_64
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
//goto Math_65
@Math_65
0;JEQ
//label Math_64
(Math_64)
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
//label Math_65
(Math_65)
//function Math.max 0
(Math.max)
@0
D=A
@n
M=D-1
(LOOP1191)
@n
D=M
M=M-1
@NEXT1191
D;JLT
@LCL
A=D+M
M=0
@LOOP1191
0;JEQ
(NEXT1191)
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
@TRUE1194
D;JGT
@SP
A=M-1
M=0
@NEXT1194
0;JEQ
(TRUE1194)
@SP
A=M-1
M=-1
(NEXT1194)
//not
@SP
A=M-1
M=!M
//if-goto Math_66
@SP
AM=M-1
D=M
@Math_66
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
//goto Math_67
@Math_67
0;JEQ
//label Math_66
(Math_66)
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
//label Math_67
(Math_67)
//function Memory.init 0
(Memory.init)
@0
D=A
@n
M=D-1
(LOOP1204)
@n
D=M
M=M-1
@NEXT1204
D;JLT
@LCL
A=D+M
M=0
@LOOP1204
0;JEQ
(NEXT1204)
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
//push static 1
@Memory.1
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
//push static 1
@Memory.1
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
(LOOP1235)
@n
D=M
M=M-1
@NEXT1235
D;JLT
@LCL
A=D+M
M=0
@LOOP1235
0;JEQ
(NEXT1235)
@0
D=A
@SP
M=D+M
//push static 0
@Memory.0
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
(LOOP1242)
@n
D=M
M=M-1
@NEXT1242
D;JLT
@LCL
A=D+M
M=0
@LOOP1242
0;JEQ
(NEXT1242)
@0
D=A
@SP
M=D+M
//push static 0
@Memory.0
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
(LOOP1253)
@n
D=M
M=M-1
@NEXT1253
D;JLT
@LCL
A=D+M
M=0
@LOOP1253
0;JEQ
(NEXT1253)
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
//label Memory_68
(Memory_68)
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
@TRUE1259
D;JEQ
@SP
A=M-1
M=0
@NEXT1259
0;JEQ
(TRUE1259)
@SP
A=M-1
M=-1
(NEXT1259)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Memory_69
@SP
AM=M-1
D=M
@Memory_69
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
//neg
@SP
A=M-1
M=-M
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
@TRUE1272
D;JLT
@SP
A=M-1
M=0
@NEXT1272
0;JEQ
(TRUE1272)
@SP
A=M-1
M=-1
(NEXT1272)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Memory_70
@SP
AM=M-1
D=M
@Memory_70
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
//neg
@SP
A=M-1
M=-M
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
//label Memory_70
(Memory_70)
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
//goto Memory_68
@Memory_68
0;JEQ
//label Memory_69
(Memory_69)
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
(LOOP1337)
@n
D=M
M=M-1
@NEXT1337
D;JLT
@LCL
A=D+M
M=0
@LOOP1337
0;JEQ
(NEXT1337)
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
//neg
@SP
A=M-1
M=-M
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
(LOOP1351)
@n
D=M
M=M-1
@NEXT1351
D;JLT
@LCL
A=D+M
M=0
@LOOP1351
0;JEQ
(NEXT1351)
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
(LOOP1360)
@n
D=M
M=M-1
@NEXT1360
D;JLT
@LCL
A=D+M
M=0
@LOOP1360
0;JEQ
(NEXT1360)
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
(LOOP2710)
@n
D=M
M=M-1
@NEXT2710
D;JLT
@LCL
A=D+M
M=0
@LOOP2710
0;JEQ
(NEXT2710)
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
//push static 0
@Output.0
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
//push constant 6
@6
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
//push constant 8
@8
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
//push constant 9
@9
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
(LOOP2812)
@n
D=M
M=M-1
@NEXT2812
D;JLT
@LCL
A=D+M
M=0
@LOOP2812
0;JEQ
(NEXT2812)
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
@TRUE2815
D;JLT
@SP
A=M-1
M=0
@NEXT2815
0;JEQ
(TRUE2815)
@SP
A=M-1
M=-1
(NEXT2815)
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
@TRUE2818
D;JGT
@SP
A=M-1
M=0
@NEXT2818
0;JEQ
(TRUE2818)
@SP
A=M-1
M=-1
(NEXT2818)
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
//if-goto Output_71
@SP
AM=M-1
D=M
@Output_71
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
//label Output_71
(Output_71)
//push static 0
@Output.0
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
(LOOP2831)
@n
D=M
M=M-1
@NEXT2831
D;JLT
@LCL
A=D+M
M=0
@LOOP2831
0;JEQ
(NEXT2831)
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
@TRUE2838
D;JGT
@SP
A=M-1
M=0
@NEXT2838
0;JEQ
(TRUE2838)
@SP
A=M-1
M=-1
(NEXT2838)
//not
@SP
A=M-1
M=!M
//if-goto Output_72
@SP
AM=M-1
D=M
@Output_72
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
//label Output_72
(Output_72)
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
@TRUE2852
D;JGT
@SP
A=M-1
M=0
@NEXT2852
0;JEQ
(TRUE2852)
@SP
A=M-1
M=-1
(NEXT2852)
//not
@SP
A=M-1
M=!M
//if-goto Output_73
@SP
AM=M-1
D=M
@Output_73
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
//label Output_73
(Output_73)
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
@TRUE2866
D;JGT
@SP
A=M-1
M=0
@NEXT2866
0;JEQ
(TRUE2866)
@SP
A=M-1
M=-1
(NEXT2866)
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
@TRUE2869
D;JGT
@SP
A=M-1
M=0
@NEXT2869
0;JEQ
(TRUE2869)
@SP
A=M-1
M=-1
(NEXT2869)
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
//if-goto Output_74
@SP
AM=M-1
D=M
@Output_74
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
//label Output_74
(Output_74)
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
@TRUE2880
D;JLT
@SP
A=M-1
M=0
@NEXT2880
0;JEQ
(TRUE2880)
@SP
A=M-1
M=-1
(NEXT2880)
//not
@SP
A=M-1
M=!M
//if-goto Output_75
@SP
AM=M-1
D=M
@Output_75
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
//label Output_75
(Output_75)
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
@TRUE2888
D;JLT
@SP
A=M-1
M=0
@NEXT2888
0;JEQ
(TRUE2888)
@SP
A=M-1
M=-1
(NEXT2888)
//not
@SP
A=M-1
M=!M
//if-goto Output_76
@SP
AM=M-1
D=M
@Output_76
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
//label Output_76
(Output_76)
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
(LOOP2925)
@n
D=M
M=M-1
@NEXT2925
D;JLT
@LCL
A=D+M
M=0
@LOOP2925
0;JEQ
(NEXT2925)
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
//label Output_77
(Output_77)
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
@TRUE2950
D;JLT
@SP
A=M-1
M=0
@NEXT2950
0;JEQ
(TRUE2950)
@SP
A=M-1
M=-1
(NEXT2950)
//not
@SP
A=M-1
M=!M
//if-goto Output_78
@SP
AM=M-1
D=M
@Output_78
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
//label Output_79
(Output_79)
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
@TRUE2969
D;JGT
@SP
A=M-1
M=0
@NEXT2969
0;JEQ
(TRUE2969)
@SP
A=M-1
M=-1
(NEXT2969)
//not
@SP
A=M-1
M=!M
//if-goto Output_80
@SP
AM=M-1
D=M
@Output_80
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
//goto Output_79
@Output_79
0;JEQ
//label Output_80
(Output_80)
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
//goto Output_77
@Output_77
0;JEQ
//label Output_78
(Output_78)
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
(LOOP3012)
@n
D=M
M=M-1
@NEXT3012
D;JLT
@LCL
A=D+M
M=0
@LOOP3012
0;JEQ
(NEXT3012)
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
//label Output_81
(Output_81)
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
@TRUE3021
D;JLT
@SP
A=M-1
M=0
@NEXT3021
0;JEQ
(TRUE3021)
@SP
A=M-1
M=-1
(NEXT3021)
//not
@SP
A=M-1
M=!M
//if-goto Output_82
@SP
AM=M-1
D=M
@Output_82
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
//goto Output_81
@Output_81
0;JEQ
//label Output_82
(Output_82)
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
(LOOP3037)
@n
D=M
M=M-1
@NEXT3037
D;JLT
@LCL
A=D+M
M=0
@LOOP3037
0;JEQ
(NEXT3037)
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
(LOOP3050)
@n
D=M
M=M-1
@NEXT3050
D;JLT
@LCL
A=D+M
M=0
@LOOP3050
0;JEQ
(NEXT3050)
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
(LOOP3059)
@n
D=M
M=M-1
@NEXT3059
D;JLT
@LCL
A=D+M
M=0
@LOOP3059
0;JEQ
(NEXT3059)
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
(LOOP3068)
@n
D=M
M=M-1
@NEXT3068
D;JLT
@LCL
A=D+M
M=0
@LOOP3068
0;JEQ
(NEXT3068)
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
(LOOP3135)
@n
D=M
M=M-1
@NEXT3135
D;JLT
@LCL
A=D+M
M=0
@LOOP3135
0;JEQ
(NEXT3135)
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
(LOOP3149)
@n
D=M
M=M-1
@NEXT3149
D;JLT
@LCL
A=D+M
M=0
@LOOP3149
0;JEQ
(NEXT3149)
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
(LOOP3154)
@n
D=M
M=M-1
@NEXT3154
D;JLT
@LCL
A=D+M
M=0
@LOOP3154
0;JEQ
(NEXT3154)
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
(LOOP3157)
@n
D=M
M=M-1
@NEXT3157
D;JLT
@LCL
A=D+M
M=0
@LOOP3157
0;JEQ
(NEXT3157)
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
//label PongGame_83
(PongGame_83)
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
//if-goto PongGame_84
@SP
AM=M-1
D=M
@PongGame_84
D;JNE
//label PongGame_85
(PongGame_85)
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
@TRUE3168
D;JEQ
@SP
A=M-1
M=0
@NEXT3168
0;JEQ
(TRUE3168)
@SP
A=M-1
M=-1
(NEXT3168)
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
//if-goto PongGame_86
@SP
AM=M-1
D=M
@PongGame_86
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
//goto PongGame_85
@PongGame_85
0;JEQ
//label PongGame_86
(PongGame_86)
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
@TRUE3189
D;JEQ
@SP
A=M-1
M=0
@NEXT3189
0;JEQ
(TRUE3189)
@SP
A=M-1
M=-1
(NEXT3189)
//not
@SP
A=M-1
M=!M
//if-goto PongGame_87
@SP
AM=M-1
D=M
@PongGame_87
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
//goto PongGame_88
@PongGame_88
0;JEQ
//label PongGame_87
(PongGame_87)
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
@TRUE3200
D;JEQ
@SP
A=M-1
M=0
@NEXT3200
0;JEQ
(TRUE3200)
@SP
A=M-1
M=-1
(NEXT3200)
//not
@SP
A=M-1
M=!M
//if-goto PongGame_89
@SP
AM=M-1
D=M
@PongGame_89
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
//goto PongGame_90
@PongGame_90
0;JEQ
//label PongGame_89
(PongGame_89)
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
@TRUE3211
D;JEQ
@SP
A=M-1
M=0
@NEXT3211
0;JEQ
(TRUE3211)
@SP
A=M-1
M=-1
(NEXT3211)
//not
@SP
A=M-1
M=!M
//if-goto PongGame_91
@SP
AM=M-1
D=M
@PongGame_91
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
//label PongGame_91
(PongGame_91)
//label PongGame_90
(PongGame_90)
//label PongGame_88
(PongGame_88)
//label PongGame_92
(PongGame_92)
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
@TRUE3223
D;JEQ
@SP
A=M-1
M=0
@NEXT3223
0;JEQ
(TRUE3223)
@SP
A=M-1
M=-1
(NEXT3223)
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
//if-goto PongGame_93
@SP
AM=M-1
D=M
@PongGame_93
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
//goto PongGame_92
@PongGame_92
0;JEQ
//label PongGame_93
(PongGame_93)
//goto PongGame_83
@PongGame_83
0;JEQ
//label PongGame_84
(PongGame_84)
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
//if-goto PongGame_94
@SP
AM=M-1
D=M
@PongGame_94
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
//label PongGame_94
(PongGame_94)
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
(LOOP3277)
@n
D=M
M=M-1
@NEXT3277
D;JLT
@LCL
A=D+M
M=0
@LOOP3277
0;JEQ
(NEXT3277)
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
@TRUE3285
D;JGT
@SP
A=M-1
M=0
@NEXT3285
0;JEQ
(TRUE3285)
@SP
A=M-1
M=-1
(NEXT3285)
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
@TRUE3288
D;JEQ
@SP
A=M-1
M=0
@NEXT3288
0;JEQ
(TRUE3288)
@SP
A=M-1
M=-1
(NEXT3288)
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
//if-goto PongGame_95
@SP
AM=M-1
D=M
@PongGame_95
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
@TRUE3311
D;JEQ
@SP
A=M-1
M=0
@NEXT3311
0;JEQ
(TRUE3311)
@SP
A=M-1
M=-1
(NEXT3311)
//not
@SP
A=M-1
M=!M
//if-goto PongGame_96
@SP
AM=M-1
D=M
@PongGame_96
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
@TRUE3316
D;JGT
@SP
A=M-1
M=0
@NEXT3316
0;JEQ
(TRUE3316)
@SP
A=M-1
M=-1
(NEXT3316)
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
@TRUE3319
D;JLT
@SP
A=M-1
M=0
@NEXT3319
0;JEQ
(TRUE3319)
@SP
A=M-1
M=-1
(NEXT3319)
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
//if-goto PongGame_97
@SP
AM=M-1
D=M
@PongGame_97
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
@TRUE3330
D;JLT
@SP
A=M-1
M=0
@NEXT3330
0;JEQ
(TRUE3330)
@SP
A=M-1
M=-1
(NEXT3330)
//not
@SP
A=M-1
M=!M
//if-goto PongGame_98
@SP
AM=M-1
D=M
@PongGame_98
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
//goto PongGame_99
@PongGame_99
0;JEQ
//label PongGame_98
(PongGame_98)
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
@TRUE3342
D;JGT
@SP
A=M-1
M=0
@NEXT3342
0;JEQ
(TRUE3342)
@SP
A=M-1
M=-1
(NEXT3342)
//not
@SP
A=M-1
M=!M
//if-goto PongGame_100
@SP
AM=M-1
D=M
@PongGame_100
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
//label PongGame_100
(PongGame_100)
//label PongGame_99
(PongGame_99)
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
//label PongGame_97
(PongGame_97)
//label PongGame_96
(PongGame_96)
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
//label PongGame_95
(PongGame_95)
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
(LOOP3377)
@n
D=M
M=M-1
@NEXT3377
D;JLT
@LCL
A=D+M
M=0
@LOOP3377
0;JEQ
(NEXT3377)
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
(LOOP3385)
@n
D=M
M=M-1
@NEXT3385
D;JLT
@LCL
A=D+M
M=0
@LOOP3385
0;JEQ
(NEXT3385)
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
//label Screen_101
(Screen_101)
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
@TRUE3393
D;JLT
@SP
A=M-1
M=0
@NEXT3393
0;JEQ
(TRUE3393)
@SP
A=M-1
M=-1
(NEXT3393)
//not
@SP
A=M-1
M=!M
//if-goto Screen_102
@SP
AM=M-1
D=M
@Screen_102
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
//label Screen_103
(Screen_103)
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
@TRUE3401
D;JLT
@SP
A=M-1
M=0
@NEXT3401
0;JEQ
(TRUE3401)
@SP
A=M-1
M=-1
(NEXT3401)
//not
@SP
A=M-1
M=!M
//if-goto Screen_104
@SP
AM=M-1
D=M
@Screen_104
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
//goto Screen_103
@Screen_103
0;JEQ
//label Screen_104
(Screen_104)
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
//goto Screen_101
@Screen_101
0;JEQ
//label Screen_102
(Screen_102)
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
(LOOP3426)
@n
D=M
M=M-1
@NEXT3426
D;JLT
@LCL
A=D+M
M=0
@LOOP3426
0;JEQ
(NEXT3426)
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
(LOOP3475)
@n
D=M
M=M-1
@NEXT3475
D;JLT
@LCL
A=D+M
M=0
@LOOP3475
0;JEQ
(NEXT3475)
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
@TRUE3492
D;JEQ
@SP
A=M-1
M=0
@NEXT3492
0;JEQ
(TRUE3492)
@SP
A=M-1
M=-1
(NEXT3492)
//not
@SP
A=M-1
M=!M
//if-goto Screen_105
@SP
AM=M-1
D=M
@Screen_105
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
@TRUE3497
D;JLT
@SP
A=M-1
M=0
@NEXT3497
0;JEQ
(TRUE3497)
@SP
A=M-1
M=-1
(NEXT3497)
//not
@SP
A=M-1
M=!M
//if-goto Screen_106
@SP
AM=M-1
D=M
@Screen_106
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
//label Screen_106
(Screen_106)
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
//label Screen_107
(Screen_107)
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
@TRUE3532
D;JGT
@SP
A=M-1
M=0
@NEXT3532
0;JEQ
(TRUE3532)
@SP
A=M-1
M=-1
(NEXT3532)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Screen_108
@SP
AM=M-1
D=M
@Screen_108
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
//goto Screen_107
@Screen_107
0;JEQ
//label Screen_108
(Screen_108)
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
//label Screen_105
(Screen_105)
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
@TRUE3564
D;JEQ
@SP
A=M-1
M=0
@NEXT3564
0;JEQ
(TRUE3564)
@SP
A=M-1
M=-1
(NEXT3564)
//not
@SP
A=M-1
M=!M
//if-goto Screen_109
@SP
AM=M-1
D=M
@Screen_109
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
@TRUE3569
D;JLT
@SP
A=M-1
M=0
@NEXT3569
0;JEQ
(TRUE3569)
@SP
A=M-1
M=-1
(NEXT3569)
//not
@SP
A=M-1
M=!M
//if-goto Screen_110
@SP
AM=M-1
D=M
@Screen_110
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
//label Screen_110
(Screen_110)
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
//if-goto Screen_111
@SP
AM=M-1
D=M
@Screen_111
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
//goto Screen_112
@Screen_112
0;JEQ
//label Screen_111
(Screen_111)
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
//label Screen_112
(Screen_112)
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
@TRUE3623
D;JGT
@SP
A=M-1
M=0
@NEXT3623
0;JEQ
(TRUE3623)
@SP
A=M-1
M=-1
(NEXT3623)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Screen_113
@SP
AM=M-1
D=M
@Screen_113
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
@TRUE3631
D;JLT
@SP
A=M-1
M=0
@NEXT3631
0;JEQ
(TRUE3631)
@SP
A=M-1
M=-1
(NEXT3631)
//not
@SP
A=M-1
M=!M
//if-goto Screen_114
@SP
AM=M-1
D=M
@Screen_114
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
//label Screen_114
(Screen_114)
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
//label Screen_113
(Screen_113)
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
//label Screen_115
(Screen_115)
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
@TRUE3684
D;JLT
@SP
A=M-1
M=0
@NEXT3684
0;JEQ
(TRUE3684)
@SP
A=M-1
M=-1
(NEXT3684)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Screen_116
@SP
AM=M-1
D=M
@Screen_116
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
@TRUE3704
D;JEQ
@SP
A=M-1
M=0
@NEXT3704
0;JEQ
(TRUE3704)
@SP
A=M-1
M=-1
(NEXT3704)
//not
@SP
A=M-1
M=!M
//if-goto Screen_117
@SP
AM=M-1
D=M
@Screen_117
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
//label Screen_117
(Screen_117)
//goto Screen_115
@Screen_115
0;JEQ
//label Screen_116
(Screen_116)
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
//label Screen_109
(Screen_109)
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
@TRUE3746
D;JLT
@SP
A=M-1
M=0
@NEXT3746
0;JEQ
(TRUE3746)
@SP
A=M-1
M=-1
(NEXT3746)
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
@TRUE3750
D;JLT
@SP
A=M-1
M=0
@NEXT3750
0;JEQ
(TRUE3750)
@SP
A=M-1
M=-1
(NEXT3750)
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
//label Screen_118
(Screen_118)
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
@TRUE3755
D;JGT
@SP
A=M-1
M=0
@NEXT3755
0;JEQ
(TRUE3755)
@SP
A=M-1
M=-1
(NEXT3755)
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
@TRUE3759
D;JGT
@SP
A=M-1
M=0
@NEXT3759
0;JEQ
(TRUE3759)
@SP
A=M-1
M=-1
(NEXT3759)
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
//if-goto Screen_119
@SP
AM=M-1
D=M
@Screen_119
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
@TRUE3788
D;JLT
@SP
A=M-1
M=0
@NEXT3788
0;JEQ
(TRUE3788)
@SP
A=M-1
M=-1
(NEXT3788)
//not
@SP
A=M-1
M=!M
//if-goto Screen_120
@SP
AM=M-1
D=M
@Screen_120
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
//goto Screen_121
@Screen_121
0;JEQ
//label Screen_120
(Screen_120)
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
//label Screen_121
(Screen_121)
//goto Screen_118
@Screen_118
0;JEQ
//label Screen_119
(Screen_119)
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
(LOOP3814)
@n
D=M
M=M-1
@NEXT3814
D;JLT
@LCL
A=D+M
M=0
@LOOP3814
0;JEQ
(NEXT3814)
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
@TRUE3817
D;JGT
@SP
A=M-1
M=0
@NEXT3817
0;JEQ
(TRUE3817)
@SP
A=M-1
M=-1
(NEXT3817)
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
@TRUE3820
D;JGT
@SP
A=M-1
M=0
@NEXT3820
0;JEQ
(TRUE3820)
@SP
A=M-1
M=-1
(NEXT3820)
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
//if-goto Screen_122
@SP
AM=M-1
D=M
@Screen_122
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
//label Screen_122
(Screen_122)
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
//label Screen_123
(Screen_123)
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
@TRUE3853
D;JGT
@SP
A=M-1
M=0
@NEXT3853
0;JEQ
(TRUE3853)
@SP
A=M-1
M=-1
(NEXT3853)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Screen_124
@SP
AM=M-1
D=M
@Screen_124
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
//goto Screen_123
@Screen_123
0;JEQ
//label Screen_124
(Screen_124)
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
(LOOP3877)
@n
D=M
M=M-1
@NEXT3877
D;JLT
@LCL
A=D+M
M=0
@LOOP3877
0;JEQ
(NEXT3877)
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
//label Screen_125
(Screen_125)
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
@TRUE3886
D;JLT
@SP
A=M-1
M=0
@NEXT3886
0;JEQ
(TRUE3886)
@SP
A=M-1
M=-1
(NEXT3886)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Screen_126
@SP
AM=M-1
D=M
@Screen_126
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
//goto Screen_125
@Screen_125
0;JEQ
//label Screen_126
(Screen_126)
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
(LOOP3969)
@n
D=M
M=M-1
@NEXT3969
D;JLT
@LCL
A=D+M
M=0
@LOOP3969
0;JEQ
(NEXT3969)
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
(LOOP3974)
@n
D=M
M=M-1
@NEXT3974
D;JLT
@LCL
A=D+M
M=0
@LOOP3974
0;JEQ
(NEXT3974)
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
@TRUE3982
D;JEQ
@SP
A=M-1
M=0
@NEXT3982
0;JEQ
(TRUE3982)
@SP
A=M-1
M=-1
(NEXT3982)
//not
@SP
A=M-1
M=!M
//if-goto String_127
@SP
AM=M-1
D=M
@String_127
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
//label String_127
(String_127)
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
(LOOP3995)
@n
D=M
M=M-1
@NEXT3995
D;JLT
@LCL
A=D+M
M=0
@LOOP3995
0;JEQ
(NEXT3995)
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
(LOOP4006)
@n
D=M
M=M-1
@NEXT4006
D;JLT
@LCL
A=D+M
M=0
@LOOP4006
0;JEQ
(NEXT4006)
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
(LOOP4011)
@n
D=M
M=M-1
@NEXT4011
D;JLT
@LCL
A=D+M
M=0
@LOOP4011
0;JEQ
(NEXT4011)
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
(LOOP4020)
@n
D=M
M=M-1
@NEXT4020
D;JLT
@LCL
A=D+M
M=0
@LOOP4020
0;JEQ
(NEXT4020)
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
(LOOP4033)
@n
D=M
M=M-1
@NEXT4033
D;JLT
@LCL
A=D+M
M=0
@LOOP4033
0;JEQ
(NEXT4033)
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
@TRUE4038
D;JLT
@SP
A=M-1
M=0
@NEXT4038
0;JEQ
(TRUE4038)
@SP
A=M-1
M=-1
(NEXT4038)
//not
@SP
A=M-1
M=!M
//if-goto String_128
@SP
AM=M-1
D=M
@String_128
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
//label String_128
(String_128)
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
(LOOP4056)
@n
D=M
M=M-1
@NEXT4056
D;JLT
@LCL
A=D+M
M=0
@LOOP4056
0;JEQ
(NEXT4056)
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
@TRUE4061
D;JGT
@SP
A=M-1
M=0
@NEXT4061
0;JEQ
(TRUE4061)
@SP
A=M-1
M=-1
(NEXT4061)
//not
@SP
A=M-1
M=!M
//if-goto String_129
@SP
AM=M-1
D=M
@String_129
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
//label String_129
(String_129)
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
(LOOP4071)
@n
D=M
M=M-1
@NEXT4071
D;JLT
@LCL
A=D+M
M=0
@LOOP4071
0;JEQ
(NEXT4071)
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
@TRUE4084
D;JEQ
@SP
A=M-1
M=0
@NEXT4084
0;JEQ
(TRUE4084)
@SP
A=M-1
M=-1
(NEXT4084)
//not
@SP
A=M-1
M=!M
//if-goto String_130
@SP
AM=M-1
D=M
@String_130
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
//label String_130
(String_130)
//label String_131
(String_131)
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
@TRUE4096
D;JLT
@SP
A=M-1
M=0
@NEXT4096
0;JEQ
(TRUE4096)
@SP
A=M-1
M=-1
(NEXT4096)
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
//if-goto String_132
@SP
AM=M-1
D=M
@String_132
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
//goto String_131
@String_131
0;JEQ
//label String_132
(String_132)
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
//if-goto String_133
@SP
AM=M-1
D=M
@String_133
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
//label String_133
(String_133)
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
@TRUE4138
D;JLT
@SP
A=M-1
M=0
@NEXT4138
0;JEQ
(TRUE4138)
@SP
A=M-1
M=-1
(NEXT4138)
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
(LOOP4141)
@n
D=M
M=M-1
@NEXT4141
D;JLT
@LCL
A=D+M
M=0
@LOOP4141
0;JEQ
(NEXT4141)
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
@TRUE4146
D;JLT
@SP
A=M-1
M=0
@NEXT4146
0;JEQ
(TRUE4146)
@SP
A=M-1
M=-1
(NEXT4146)
//not
@SP
A=M-1
M=!M
//if-goto String_134
@SP
AM=M-1
D=M
@String_134
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
//label String_134
(String_134)
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
@TRUE4172
D;JLT
@SP
A=M-1
M=0
@NEXT4172
0;JEQ
(TRUE4172)
@SP
A=M-1
M=-1
(NEXT4172)
//not
@SP
A=M-1
M=!M
//if-goto String_135
@SP
AM=M-1
D=M
@String_135
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
//if-goto String_136
@SP
AM=M-1
D=M
@String_136
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
//label String_136
(String_136)
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
//goto String_137
@String_137
0;JEQ
//label String_135
(String_135)
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
//label String_137
(String_137)
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
(LOOP4206)
@n
D=M
M=M-1
@NEXT4206
D;JLT
@LCL
A=D+M
M=0
@LOOP4206
0;JEQ
(NEXT4206)
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
(LOOP4209)
@n
D=M
M=M-1
@NEXT4209
D;JLT
@LCL
A=D+M
M=0
@LOOP4209
0;JEQ
(NEXT4209)
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
(LOOP4212)
@n
D=M
M=M-1
@NEXT4212
D;JLT
@LCL
A=D+M
M=0
@LOOP4212
0;JEQ
(NEXT4212)
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
(LOOP4215)
@n
D=M
M=M-1
@NEXT4215
D;JLT
@LCL
A=D+M
M=0
@LOOP4215
0;JEQ
(NEXT4215)
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
(LOOP4230)
@n
D=M
M=M-1
@NEXT4230
D;JLT
@LCL
A=D+M
M=0
@LOOP4230
0;JEQ
(NEXT4230)
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
//label Sys_138
(Sys_138)
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
@TRUE4238
D;JGT
@SP
A=M-1
M=0
@NEXT4238
0;JEQ
(TRUE4238)
@SP
A=M-1
M=-1
(NEXT4238)
//not
@SP
A=M-1
M=!M
//if-goto Sys_139
@SP
AM=M-1
D=M
@Sys_139
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
//label Sys_140
(Sys_140)
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
@TRUE4248
D;JGT
@SP
A=M-1
M=0
@NEXT4248
0;JEQ
(TRUE4248)
@SP
A=M-1
M=-1
(NEXT4248)
//not
@SP
A=M-1
M=!M
//if-goto Sys_141
@SP
AM=M-1
D=M
@Sys_141
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
//label Sys_142
(Sys_142)
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
@TRUE4262
D;JGT
@SP
A=M-1
M=0
@NEXT4262
0;JEQ
(TRUE4262)
@SP
A=M-1
M=-1
(NEXT4262)
//not
@SP
A=M-1
M=!M
//if-goto Sys_143
@SP
AM=M-1
D=M
@Sys_143
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
//goto Sys_142
@Sys_142
0;JEQ
//label Sys_143
(Sys_143)
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
//goto Sys_140
@Sys_140
0;JEQ
//label Sys_141
(Sys_141)
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
//goto Sys_138
@Sys_138
0;JEQ
//label Sys_139
(Sys_139)
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
(LOOP4311)
@n
D=M
M=M-1
@NEXT4311
D;JLT
@LCL
A=D+M
M=0
@LOOP4311
0;JEQ
(NEXT4311)
@0
D=A
@SP
M=D+M
//label Sys_144
(Sys_144)
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
//if-goto Sys_145
@SP
AM=M-1
D=M
@Sys_145
D;JNE
//goto Sys_144
@Sys_144
0;JEQ
//label Sys_145
(Sys_145)
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
