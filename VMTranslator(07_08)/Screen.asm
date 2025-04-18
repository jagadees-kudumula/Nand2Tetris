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
//function Keyboard.keyPressed 0
(Keyboard.keyPressed)
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
(LOOP19)
@n
D=M
M=M-1
@NEXT19
D;JLT
@LCL
A=D+M
M=0
@LOOP19
0;JEQ
(NEXT19)
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
@TRUE26
D;JEQ
@SP
A=M-1
M=0
@NEXT26
0;JEQ
(TRUE26)
@SP
A=M-1
M=-1
(NEXT26)
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
@TRUE36
D;JEQ
@SP
A=M-1
M=0
@NEXT36
0;JEQ
(TRUE36)
@SP
A=M-1
M=-1
(NEXT36)
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
@TRUE65
D;JEQ
@SP
A=M-1
M=0
@NEXT65
0;JEQ
(TRUE65)
@SP
A=M-1
M=-1
(NEXT65)
//not
@SP
A=M-1
M=!M
//if-goto Keyboard_6
@SP
AM=M-1
D=M
@Keyboard_6
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
@TRUE77
D;JEQ
@SP
A=M-1
M=0
@NEXT77
0;JEQ
(TRUE77)
@SP
A=M-1
M=-1
(NEXT77)
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
//label Keyboard_7
(Keyboard_7)
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
(LOOP98)
@n
D=M
M=M-1
@NEXT98
D;JLT
@LCL
A=D+M
M=0
@LOOP98
0;JEQ
(NEXT98)
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
//function Main.main 0
(Main.main)
@0
D=A
@n
M=D-1
(LOOP107)
@n
D=M
M=M-1
@NEXT107
D;JLT
@LCL
A=D+M
M=0
@LOOP107
0;JEQ
(NEXT107)
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
//push constant 220
@220
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
//push constant 220
@220
D=A
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
//push constant 280
@280
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 90
@90
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 410
@410
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 220
@220
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//push constant 350
@350
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 120
@120
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 390
@390
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 219
@219
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//push constant 292
@292
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 120
@120
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 150
@150
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//push constant 360
@360
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 170
@170
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
//call Screen.drawCircle 3
//push retAddrLabel on to the stack
@Screen.drawCircle$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
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
@Screen.drawCircle
0;JEQ
//create retAddress Label
(Screen.drawCircle$ret.1)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 280
@280
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 90
@90
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 345
@345
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
//push constant 345
@345
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
//push constant 410
@410
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 90
@90
D=A
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
//push constant 140
@140
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Screen.drawCircle 3
//push retAddrLabel on to the stack
@Screen.drawCircle$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
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
@Screen.drawCircle
0;JEQ
//create retAddress Label
(Screen.drawCircle$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 140
@140
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
//push constant 140
@140
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
//call Screen.drawLine 4
//push retAddrLabel on to the stack
@Screen.drawLine$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
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
(Screen.drawLine$ret.4)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 163
@163
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
//push constant 178
@178
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
//call Screen.drawLine 4
//push retAddrLabel on to the stack
@Screen.drawLine$ret.5
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
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
(Screen.drawLine$ret.5)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 174
@174
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
//push constant 194
@194
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
//call Screen.drawLine 4
//push retAddrLabel on to the stack
@Screen.drawLine$ret.6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
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
(Screen.drawLine$ret.6)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 163
@163
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 178
@178
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Screen.drawLine 4
//push retAddrLabel on to the stack
@Screen.drawLine$ret.7
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
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
(Screen.drawLine$ret.7)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 140
@140
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 94
@94
D=A
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
//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Screen.drawLine 4
//push retAddrLabel on to the stack
@Screen.drawLine$ret.8
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
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
(Screen.drawLine$ret.8)
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
//push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Screen.drawLine 4
//push retAddrLabel on to the stack
@Screen.drawLine$ret.9
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
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
(Screen.drawLine$ret.9)
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
//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 86
@86
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
//call Screen.drawLine 4
//push retAddrLabel on to the stack
@Screen.drawLine$ret.10
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
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
(Screen.drawLine$ret.10)
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
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 102
@102
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
//call Screen.drawLine 4
//push retAddrLabel on to the stack
@Screen.drawLine$ret.11
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
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
(Screen.drawLine$ret.11)
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
(LOOP211)
@n
D=M
M=M-1
@NEXT211
D;JLT
@LCL
A=D+M
M=0
@LOOP211
0;JEQ
(NEXT211)
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
(LOOP350)
@n
D=M
M=M-1
@NEXT350
D;JLT
@LCL
A=D+M
M=0
@LOOP350
0;JEQ
(NEXT350)
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
(LOOP357)
@n
D=M
M=M-1
@NEXT357
D;JLT
@LCL
A=D+M
M=0
@LOOP357
0;JEQ
(NEXT357)
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
//label Math_9
(Math_9)
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
@TRUE367
D;JGT
@SP
A=M-1
M=0
@NEXT367
0;JEQ
(TRUE367)
@SP
A=M-1
M=-1
(NEXT367)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Math_10
@SP
AM=M-1
D=M
@Math_10
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
@TRUE381
D;JEQ
@SP
A=M-1
M=0
@NEXT381
0;JEQ
(TRUE381)
@SP
A=M-1
M=-1
(NEXT381)
//not
@SP
A=M-1
M=!M
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
//label Math_11
(Math_11)
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
//goto Math_9
@Math_9
0;JEQ
//label Math_10
(Math_10)
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
(LOOP402)
@n
D=M
M=M-1
@NEXT402
D;JLT
@LCL
A=D+M
M=0
@LOOP402
0;JEQ
(NEXT402)
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
@TRUE407
D;JLT
@SP
A=M-1
M=0
@NEXT407
0;JEQ
(TRUE407)
@SP
A=M-1
M=-1
(NEXT407)
//not
@SP
A=M-1
M=!M
//if-goto Math_12
@SP
AM=M-1
D=M
@Math_12
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
@TRUE415
D;JEQ
@SP
A=M-1
M=0
@NEXT415
0;JEQ
(TRUE415)
@SP
A=M-1
M=-1
(NEXT415)
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
//goto Math_14
@Math_14
0;JEQ
//label Math_13
(Math_13)
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
//label Math_14
(Math_14)
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
@TRUE429
D;JLT
@SP
A=M-1
M=0
@NEXT429
0;JEQ
(TRUE429)
@SP
A=M-1
M=-1
(NEXT429)
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
@TRUE437
D;JEQ
@SP
A=M-1
M=0
@NEXT437
0;JEQ
(TRUE437)
@SP
A=M-1
M=-1
(NEXT437)
//not
@SP
A=M-1
M=!M
//if-goto Math_16
@SP
AM=M-1
D=M
@Math_16
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
//goto Math_17
@Math_17
0;JEQ
//label Math_16
(Math_16)
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
//label Math_17
(Math_17)
//label Math_15
(Math_15)
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
@TRUE453
D;JGT
@SP
A=M-1
M=0
@NEXT453
0;JEQ
(TRUE453)
@SP
A=M-1
M=-1
(NEXT453)
//not
@SP
A=M-1
M=!M
//if-goto Math_18
@SP
AM=M-1
D=M
@Math_18
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
//label Math_18
(Math_18)
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
@TRUE467
D;JLT
@SP
A=M-1
M=0
@NEXT467
0;JEQ
(TRUE467)
@SP
A=M-1
M=-1
(NEXT467)
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
//label Math_19
(Math_19)
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
@TRUE486
D;JLT
@SP
A=M-1
M=0
@NEXT486
0;JEQ
(TRUE486)
@SP
A=M-1
M=-1
(NEXT486)
//not
@SP
A=M-1
M=!M
//if-goto Math_20
@SP
AM=M-1
D=M
@Math_20
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
//goto Math_21
@Math_21
0;JEQ
//label Math_20
(Math_20)
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
//label Math_21
(Math_21)
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
//if-goto Math_22
@SP
AM=M-1
D=M
@Math_22
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
//label Math_22
(Math_22)
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
(LOOP511)
@n
D=M
M=M-1
@NEXT511
D;JLT
@LCL
A=D+M
M=0
@LOOP511
0;JEQ
(NEXT511)
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
//label Math_23
(Math_23)
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
@TRUE536
D;JLT
@SP
A=M-1
M=0
@NEXT536
0;JEQ
(TRUE536)
@SP
A=M-1
M=-1
(NEXT536)
//not
@SP
A=M-1
M=!M
//if-goto Math_24
@SP
AM=M-1
D=M
@Math_24
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
//goto Math_23
@Math_23
0;JEQ
//label Math_24
(Math_24)
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
//label Math_25
(Math_25)
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
@TRUE574
D;JLT
@SP
A=M-1
M=0
@NEXT574
0;JEQ
(TRUE574)
@SP
A=M-1
M=-1
(NEXT574)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Math_26
@SP
AM=M-1
D=M
@Math_26
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
@TRUE596
D;JGT
@SP
A=M-1
M=0
@NEXT596
0;JEQ
(TRUE596)
@SP
A=M-1
M=-1
(NEXT596)
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
@TRUE600
D;JGT
@SP
A=M-1
M=0
@NEXT600
0;JEQ
(TRUE600)
@SP
A=M-1
M=-1
(NEXT600)
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
//if-goto Math_27
@SP
AM=M-1
D=M
@Math_27
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
//label Math_27
(Math_27)
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
//goto Math_25
@Math_25
0;JEQ
//label Math_26
(Math_26)
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
(LOOP624)
@n
D=M
M=M-1
@NEXT624
D;JLT
@LCL
A=D+M
M=0
@LOOP624
0;JEQ
(NEXT624)
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
@TRUE627
D;JLT
@SP
A=M-1
M=0
@NEXT627
0;JEQ
(TRUE627)
@SP
A=M-1
M=-1
(NEXT627)
//not
@SP
A=M-1
M=!M
//if-goto Math_28
@SP
AM=M-1
D=M
@Math_28
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
//goto Math_29
@Math_29
0;JEQ
//label Math_28
(Math_28)
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
//label Math_29
(Math_29)
//function Math.min 0
(Math.min)
@0
D=A
@n
M=D-1
(LOOP638)
@n
D=M
M=M-1
@NEXT638
D;JLT
@LCL
A=D+M
M=0
@LOOP638
0;JEQ
(NEXT638)
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
@TRUE641
D;JLT
@SP
A=M-1
M=0
@NEXT641
0;JEQ
(TRUE641)
@SP
A=M-1
M=-1
(NEXT641)
//not
@SP
A=M-1
M=!M
//if-goto Math_30
@SP
AM=M-1
D=M
@Math_30
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
//goto Math_31
@Math_31
0;JEQ
//label Math_30
(Math_30)
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
//label Math_31
(Math_31)
//function Math.max 0
(Math.max)
@0
D=A
@n
M=D-1
(LOOP651)
@n
D=M
M=M-1
@NEXT651
D;JLT
@LCL
A=D+M
M=0
@LOOP651
0;JEQ
(NEXT651)
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
@TRUE654
D;JGT
@SP
A=M-1
M=0
@NEXT654
0;JEQ
(TRUE654)
@SP
A=M-1
M=-1
(NEXT654)
//not
@SP
A=M-1
M=!M
//if-goto Math_32
@SP
AM=M-1
D=M
@Math_32
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
//goto Math_33
@Math_33
0;JEQ
//label Math_32
(Math_32)
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
//label Math_33
(Math_33)
//function Memory.init 0
(Memory.init)
@0
D=A
@n
M=D-1
(LOOP664)
@n
D=M
M=M-1
@NEXT664
D;JLT
@LCL
A=D+M
M=0
@LOOP664
0;JEQ
(NEXT664)
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
(LOOP695)
@n
D=M
M=M-1
@NEXT695
D;JLT
@LCL
A=D+M
M=0
@LOOP695
0;JEQ
(NEXT695)
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
(LOOP702)
@n
D=M
M=M-1
@NEXT702
D;JLT
@LCL
A=D+M
M=0
@LOOP702
0;JEQ
(NEXT702)
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
(LOOP713)
@n
D=M
M=M-1
@NEXT713
D;JLT
@LCL
A=D+M
M=0
@LOOP713
0;JEQ
(NEXT713)
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
//label Memory_34
(Memory_34)
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
@TRUE719
D;JEQ
@SP
A=M-1
M=0
@NEXT719
0;JEQ
(TRUE719)
@SP
A=M-1
M=-1
(NEXT719)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Memory_35
@SP
AM=M-1
D=M
@Memory_35
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
@TRUE732
D;JLT
@SP
A=M-1
M=0
@NEXT732
0;JEQ
(TRUE732)
@SP
A=M-1
M=-1
(NEXT732)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Memory_36
@SP
AM=M-1
D=M
@Memory_36
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
//label Memory_36
(Memory_36)
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
//goto Memory_34
@Memory_34
0;JEQ
//label Memory_35
(Memory_35)
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
(LOOP797)
@n
D=M
M=M-1
@NEXT797
D;JLT
@LCL
A=D+M
M=0
@LOOP797
0;JEQ
(NEXT797)
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
//function Screen.init 0
(Screen.init)
@0
D=A
@n
M=D-1
(LOOP811)
@n
D=M
M=M-1
@NEXT811
D;JLT
@LCL
A=D+M
M=0
@LOOP811
0;JEQ
(NEXT811)
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
(LOOP819)
@n
D=M
M=M-1
@NEXT819
D;JLT
@LCL
A=D+M
M=0
@LOOP819
0;JEQ
(NEXT819)
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
//label Screen_49
(Screen_49)
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
@TRUE827
D;JLT
@SP
A=M-1
M=0
@NEXT827
0;JEQ
(TRUE827)
@SP
A=M-1
M=-1
(NEXT827)
//not
@SP
A=M-1
M=!M
//if-goto Screen_50
@SP
AM=M-1
D=M
@Screen_50
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
//label Screen_51
(Screen_51)
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
@TRUE835
D;JLT
@SP
A=M-1
M=0
@NEXT835
0;JEQ
(TRUE835)
@SP
A=M-1
M=-1
(NEXT835)
//not
@SP
A=M-1
M=!M
//if-goto Screen_52
@SP
AM=M-1
D=M
@Screen_52
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
//goto Screen_51
@Screen_51
0;JEQ
//label Screen_52
(Screen_52)
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
//goto Screen_49
@Screen_49
0;JEQ
//label Screen_50
(Screen_50)
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
(LOOP860)
@n
D=M
M=M-1
@NEXT860
D;JLT
@LCL
A=D+M
M=0
@LOOP860
0;JEQ
(NEXT860)
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
(LOOP865)
@n
D=M
M=M-1
@NEXT865
D;JLT
@LCL
A=D+M
M=0
@LOOP865
0;JEQ
(NEXT865)
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
(LOOP909)
@n
D=M
M=M-1
@NEXT909
D;JLT
@LCL
A=D+M
M=0
@LOOP909
0;JEQ
(NEXT909)
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
@TRUE926
D;JEQ
@SP
A=M-1
M=0
@NEXT926
0;JEQ
(TRUE926)
@SP
A=M-1
M=-1
(NEXT926)
//not
@SP
A=M-1
M=!M
//if-goto Screen_53
@SP
AM=M-1
D=M
@Screen_53
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
@TRUE931
D;JLT
@SP
A=M-1
M=0
@NEXT931
0;JEQ
(TRUE931)
@SP
A=M-1
M=-1
(NEXT931)
//not
@SP
A=M-1
M=!M
//if-goto Screen_54
@SP
AM=M-1
D=M
@Screen_54
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
//label Screen_54
(Screen_54)
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
//label Screen_55
(Screen_55)
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
@TRUE966
D;JGT
@SP
A=M-1
M=0
@NEXT966
0;JEQ
(TRUE966)
@SP
A=M-1
M=-1
(NEXT966)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Screen_56
@SP
AM=M-1
D=M
@Screen_56
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
//goto Screen_55
@Screen_55
0;JEQ
//label Screen_56
(Screen_56)
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
//label Screen_53
(Screen_53)
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
@TRUE998
D;JEQ
@SP
A=M-1
M=0
@NEXT998
0;JEQ
(TRUE998)
@SP
A=M-1
M=-1
(NEXT998)
//not
@SP
A=M-1
M=!M
//if-goto Screen_57
@SP
AM=M-1
D=M
@Screen_57
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
@TRUE1003
D;JLT
@SP
A=M-1
M=0
@NEXT1003
0;JEQ
(TRUE1003)
@SP
A=M-1
M=-1
(NEXT1003)
//not
@SP
A=M-1
M=!M
//if-goto Screen_58
@SP
AM=M-1
D=M
@Screen_58
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
//label Screen_58
(Screen_58)
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
//if-goto Screen_59
@SP
AM=M-1
D=M
@Screen_59
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
//goto Screen_60
@Screen_60
0;JEQ
//label Screen_59
(Screen_59)
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
//label Screen_60
(Screen_60)
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
@TRUE1057
D;JGT
@SP
A=M-1
M=0
@NEXT1057
0;JEQ
(TRUE1057)
@SP
A=M-1
M=-1
(NEXT1057)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Screen_61
@SP
AM=M-1
D=M
@Screen_61
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
@TRUE1065
D;JLT
@SP
A=M-1
M=0
@NEXT1065
0;JEQ
(TRUE1065)
@SP
A=M-1
M=-1
(NEXT1065)
//not
@SP
A=M-1
M=!M
//if-goto Screen_62
@SP
AM=M-1
D=M
@Screen_62
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
//label Screen_62
(Screen_62)
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
//label Screen_61
(Screen_61)
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
//label Screen_63
(Screen_63)
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
@TRUE1118
D;JLT
@SP
A=M-1
M=0
@NEXT1118
0;JEQ
(TRUE1118)
@SP
A=M-1
M=-1
(NEXT1118)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Screen_64
@SP
AM=M-1
D=M
@Screen_64
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
@TRUE1138
D;JEQ
@SP
A=M-1
M=0
@NEXT1138
0;JEQ
(TRUE1138)
@SP
A=M-1
M=-1
(NEXT1138)
//not
@SP
A=M-1
M=!M
//if-goto Screen_65
@SP
AM=M-1
D=M
@Screen_65
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
//label Screen_65
(Screen_65)
//goto Screen_63
@Screen_63
0;JEQ
//label Screen_64
(Screen_64)
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
//label Screen_57
(Screen_57)
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
@TRUE1180
D;JLT
@SP
A=M-1
M=0
@NEXT1180
0;JEQ
(TRUE1180)
@SP
A=M-1
M=-1
(NEXT1180)
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
@TRUE1184
D;JLT
@SP
A=M-1
M=0
@NEXT1184
0;JEQ
(TRUE1184)
@SP
A=M-1
M=-1
(NEXT1184)
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
//label Screen_66
(Screen_66)
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
@TRUE1189
D;JGT
@SP
A=M-1
M=0
@NEXT1189
0;JEQ
(TRUE1189)
@SP
A=M-1
M=-1
(NEXT1189)
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
@TRUE1193
D;JGT
@SP
A=M-1
M=0
@NEXT1193
0;JEQ
(TRUE1193)
@SP
A=M-1
M=-1
(NEXT1193)
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
//if-goto Screen_67
@SP
AM=M-1
D=M
@Screen_67
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
@TRUE1222
D;JLT
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
//if-goto Screen_68
@SP
AM=M-1
D=M
@Screen_68
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
//goto Screen_69
@Screen_69
0;JEQ
//label Screen_68
(Screen_68)
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
//label Screen_69
(Screen_69)
//goto Screen_66
@Screen_66
0;JEQ
//label Screen_67
(Screen_67)
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
(LOOP1248)
@n
D=M
M=M-1
@NEXT1248
D;JLT
@LCL
A=D+M
M=0
@LOOP1248
0;JEQ
(NEXT1248)
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
@TRUE1251
D;JGT
@SP
A=M-1
M=0
@NEXT1251
0;JEQ
(TRUE1251)
@SP
A=M-1
M=-1
(NEXT1251)
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
@TRUE1254
D;JGT
@SP
A=M-1
M=0
@NEXT1254
0;JEQ
(TRUE1254)
@SP
A=M-1
M=-1
(NEXT1254)
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
//if-goto Screen_70
@SP
AM=M-1
D=M
@Screen_70
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
//label Screen_70
(Screen_70)
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
//label Screen_71
(Screen_71)
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
@TRUE1287
D;JGT
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
//if-goto Screen_72
@SP
AM=M-1
D=M
@Screen_72
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
@Screen.drawLine$ret.12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
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
(Screen.drawLine$ret.12)
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
//goto Screen_71
@Screen_71
0;JEQ
//label Screen_72
(Screen_72)
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
(LOOP1311)
@n
D=M
M=M-1
@NEXT1311
D;JLT
@LCL
A=D+M
M=0
@LOOP1311
0;JEQ
(NEXT1311)
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
//label Screen_73
(Screen_73)
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
@TRUE1320
D;JLT
@SP
A=M-1
M=0
@NEXT1320
0;JEQ
(TRUE1320)
@SP
A=M-1
M=-1
(NEXT1320)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto Screen_74
@SP
AM=M-1
D=M
@Screen_74
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
@Screen.drawLine$ret.13
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
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
(Screen.drawLine$ret.13)
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
@Screen.drawLine$ret.14
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
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
(Screen.drawLine$ret.14)
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
//goto Screen_73
@Screen_73
0;JEQ
//label Screen_74
(Screen_74)
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
//function Sys.init 0
(Sys.init)
@0
D=A
@n
M=D-1
(LOOP1403)
@n
D=M
M=M-1
@NEXT1403
D;JLT
@LCL
A=D+M
M=0
@LOOP1403
0;JEQ
(NEXT1403)
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
(LOOP1414)
@n
D=M
M=M-1
@NEXT1414
D;JLT
@LCL
A=D+M
M=0
@LOOP1414
0;JEQ
(NEXT1414)
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
//label Sys_86
(Sys_86)
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
@TRUE1422
D;JGT
@SP
A=M-1
M=0
@NEXT1422
0;JEQ
(TRUE1422)
@SP
A=M-1
M=-1
(NEXT1422)
//not
@SP
A=M-1
M=!M
//if-goto Sys_87
@SP
AM=M-1
D=M
@Sys_87
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
//label Sys_88
(Sys_88)
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
@TRUE1432
D;JGT
@SP
A=M-1
M=0
@NEXT1432
0;JEQ
(TRUE1432)
@SP
A=M-1
M=-1
(NEXT1432)
//not
@SP
A=M-1
M=!M
//if-goto Sys_89
@SP
AM=M-1
D=M
@Sys_89
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
//label Sys_90
(Sys_90)
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
@TRUE1446
D;JGT
@SP
A=M-1
M=0
@NEXT1446
0;JEQ
(TRUE1446)
@SP
A=M-1
M=-1
(NEXT1446)
//not
@SP
A=M-1
M=!M
//if-goto Sys_91
@SP
AM=M-1
D=M
@Sys_91
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
//goto Sys_90
@Sys_90
0;JEQ
//label Sys_91
(Sys_91)
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
//goto Sys_88
@Sys_88
0;JEQ
//label Sys_89
(Sys_89)
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
//goto Sys_86
@Sys_86
0;JEQ
//label Sys_87
(Sys_87)
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
(LOOP1477)
@n
D=M
M=M-1
@NEXT1477
D;JLT
@LCL
A=D+M
M=0
@LOOP1477
0;JEQ
(NEXT1477)
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
(LOOP1495)
@n
D=M
M=M-1
@NEXT1495
D;JLT
@LCL
A=D+M
M=0
@LOOP1495
0;JEQ
(NEXT1495)
@0
D=A
@SP
M=D+M
//label Sys_92
(Sys_92)
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
//if-goto Sys_93
@SP
AM=M-1
D=M
@Sys_93
D;JNE
//goto Sys_92
@Sys_92
0;JEQ
//label Sys_93
(Sys_93)
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
