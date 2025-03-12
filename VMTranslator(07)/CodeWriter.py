#Note:USE LABELS CAREFULLY
#Note:Use the API provided by Nand 2 Tetris
class CodeWriter:

    symbols = {'local':'LCL', 'argument':'ARG', 'this':'THIS', 'that':'THAT', 'add':'+', 'sub':'-', 'and':'&', 'or':'|', 'not':'!', 'gt':'JGT', 'lt':'JLT', 'eq':'JEQ'}
    function_call_count = {} #This useful in recursion calling.TO generate them return label without conflict.

    def trans_push(self, tokens, filename):
        
        segment = tokens[1]
        i = tokens[2]
        instructions = [f"@{i}", "D=M", "@SP", "A=M", "M=D", "@SP", "M=M+1"]

        if segment == 'constant':
            instructions[1] = "D=A"
        elif segment == 'temp':
            instructions[0] = f"@{5+int(i)}" #temp segment starts from RAM[5]
        elif segment == 'static':
            instructions[0] = f"@{filename}.{i}" 
        elif segment == 'pointer':
            instructions[0] = "@THIS"
            if i == '1':
                instructions[0] = "@THAT"
        elif segment == 'local' or segment == 'argument' or segment == 'this' or segment == 'that':
            instructions = [f"@{i}", "D=A", f"@{self.symbols[segment]}", "A=D+M", "D=M", "@SP", "A=M", "M=D", "@SP", "M=M+1"]
            return "\n".join(instructions)

        return "\n".join(instructions)

    
    def trans_pop(self, tokens, filename):
        
        segment = tokens[1]
        i = tokens[2]
        instructions = ["@SP", "AM=M-1", "D=M", "", "M=D"]

        if segment == 'temp':
            instructions[3] = f"@{5+int(i)}"
        elif segment == 'static':
            instructions[3] = f"@{filename}.{i}"
        elif segment == 'pointer':
            instructions[3] = "@THIS"
            if i == '1':
                instructions[3] = "@THAT"
        elif segment == 'local' or segment == 'argument' or segment == 'this' or segment == 'that':
            instructions = [f"@{i}", "D=A", f"@{self.symbols[segment]}", "D=D+M", "@addr", "M=D", "@SP", "AM=M-1", "D=M", "@addr", "A=M", "M=D"]
            return "\n".join(instructions)
        
        return "\n".join(instructions)

    
    def trans_arithematic(self, tokens, instruction_number):
        operation = tokens[0]
        instructions = []
        if operation == 'add' or operation == 'sub' or operation == 'and' or operation == 'or': 
            instructions = ["@SP", "AM=M-1", "D=M", "@SP", "A=M-1", f"M=D{self.symbols[operation]}M"]
            if operation == 'sub':
                instructions[5] = "M=M-D" 
        elif operation == 'neg' or operation == 'not':
            instructions = ["@SP", "A=M-1", "M=!M"]
            if operation == 'neg':
                instructions[2] = "M=-M"
        elif operation == 'eq' or operation == 'gt' or operation == 'lt':
            instructions = ["@SP", "AM=M-1", "D=M", "@y", "M=D", "@SP", "A=M-1", "D=M", "@y", "D=D-M", 
                            f"@TRUE{instruction_number}", f"D;{self.symbols[operation]}", "@SP", "A=M-1", "M=0", #Here we are to use different labels for different instruction.
                            f"@NEXT{instruction_number}", "0;JEQ", f"(TRUE{instruction_number})", "@SP", "A=M-1", #Here we have to use (NEXT{i}) label definitely.Else it will execute (TRUE) label also.
                            "M=-1", f"(NEXT{instruction_number})"]

        return "\n".join(instructions)
    
    def trans_branching(self, tokens):
        label = tokens[1]
        command = tokens[0]
        instructions = []

        if (command == 'goto'): #Uncoditional GOTO
            instructions = [f'@{label}', '0;JEQ']
        else: #Conditional GOTO
            instructions = ["@SP", "AM=M-1", "D=M", f"@{label}", "D;JNE"]
            #There is a bug here  f"@{label}", "@SP", "M=M-1", "D;JNE" this is incorrect it will jump to @SP not @label so the above is correct
            #Another thing to note is we will ignore top of the stack value

        return "\n".join(instructions)
    
    def trans_function(self, tokens, instruction_number):
        functionName = tokens[1] 
        noOfVariables = tokens[2] #No of Local variables to initialize them to 0

        instructions = [f"({functionName})", f"@{noOfVariables}", "D=A", "@n", "M=D-1", f"(LOOP{instruction_number})", 
                        "@n", "D=M", "M=M-1", f"@NEXT{instruction_number}", "D;JLT", "@LCL", "A=D+M", "M=0", 
                        f"@LOOP{instruction_number}", "0;JEQ", f"(NEXT{instruction_number})", f"@{noOfVariables}", "D=A", "@SP", "M=D+M"]
        
        return "\n".join(instructions)
    
    def trans_return(self, filename):
        instructions = []
        
        #endFrame = LCL
        instructions.extend(["//endFrame = LCL", "@LCL", "D=M", "@endFrame", "M=D"])
        #retAddr = *(endFrame-5)
        instructions.extend(["//retAddr = *(endFrame-5)" ,"@5", "A=D-A", "D=M", "@retAddr", "M=D"])
        #*ARG = POP()
        instructions.extend(["//*ARG = POP()" ,self.trans_pop("pop argument 0".split(), filename)])
        #SP=ARG+1
        instructions.extend(["//SP=ARG+1" ,"@ARG", "D=M+1", "@SP", "M=D"])
        #THAT=*(endFrame-1)
        instructions.extend(["//THAT=*(endFrame-1)" ,"@endFrame", "A=M-1", "D=M", "@THAT", "M=D"])
        #THIS=*(endFrame-2)
        instructions.extend(["//THIS=*(endFrame-2)" ,"@2", "D=A", "@endFrame", "A=M-D", "D=M", "@THIS", "M=D"])
        #ARG=*(endFrame-3)
        instructions.extend(["//ARG=*(endFrame-3)" ,"@3", "D=A", "@endFrame", "A=M-D", "D=M", "@ARG", "M=D"])
        #LCL=*(endFrame-4)
        instructions.extend(["//LCL=*(endFrame-4)" ,"@4", "D=A", "@endFrame", "A=M-D", "D=M", "@LCL", "M=D"])
        #goto retAddr
        instructions.extend(["@retAddr", "A=M", "0;JEQ"]) #This is very very confusing we can go to RAM[100] with @100, A=M, 0;JEQ

        return "\n".join(instructions)
    
    def trans_call(self, tokens):
        functionName = tokens[1]
        nArgs = tokens[2]

        instructions = []
        #retAddrLabel Generation //generates the label
        if functionName not in self.function_call_count:
            self.function_call_count[functionName] = 1
        else:
            self.function_call_count[functionName] += 1

        retAddrLabel = f"{functionName}$ret.{self.function_call_count[functionName]}"
        #push retAddrLabel// Generates and pushes this label
        instructions.extend(["//push retAddrLabel on to the stack", f"@{retAddrLabel}", "D=A", "@SP", "A=M", "M=D", "@SP", "M=M+1"])
        #push LCL
        instructions.extend(["//push LCL", "@LCL", "D=M", "@SP", "A=M", "M=D", "@SP", "M=M+1"])
        #push ARG
        instructions.extend(["//push ARG", "@ARG", "D=M", "@SP", "A=M", "M=D", "@SP", "M=M+1"])
        #push this
        instructions.extend(["//push THIS", "@THIS", "D=M", "@SP", "A=M", "M=D", "@SP", "M=M+1"])
        #push that
        instructions.extend(["//push THAT", "@THAT", "D=M", "@SP", "A=M", "M=D", "@SP", "M=M+1"])
        #ARG = SP – 5 – nArgs // Repositions ARG
        instructions.extend(["//ARG = SP - 5 - nArgs", "@SP", "D=M", "@5", "D=D-A", f"@{nArgs}", "D=D-A", "@ARG", "M=D"])
        #LCL = SP// Repositions LCL
        instructions.extend(["//LCL = SP", "@SP", "D=M", "@LCL", "M=D"])
        #goto functionName
        instructions.extend(["//goto functionName", self.trans_branching(f"goto {functionName}".split())])
        #retAddress Label
        instructions.extend(["//create retAddress Label", f"({retAddrLabel})"])

        return "\n".join(instructions)