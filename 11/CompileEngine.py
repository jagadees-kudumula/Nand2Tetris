from Tokenizer import Tokenizer, IDENTIFIER
from SymbolTable import SymbolTable
from VMWriter import VMWriter

SUBROUTINE_TYPES = ['function', 'method', 'constructor']
CLASS_VARIBALES_DEC = ['field', 'static']
STATEMENT_TYPES = ['return', 'do', 'while', 'if', 'let']
BINARY_OP = ['+', '-', '*', '/', '&', '<', '>', '=', '|']
UNARY_OP = ['-', '~']

class compileEngine:
    def __init__(self, jack_code):
        # Initialize the tokenizer, symbol table, and other variables.
        self.tokenizer = Tokenizer(jack_code)
        self.symbol_table = SymbolTable()
        self.className = ''
        self.vmcode = ''
        self.subroutineName = ''
        self.subroutineType = ''
        self.subroutineReturnType = ''
        self.operatorStack = []

    def compileClass(self):
        # Process 'class'
        self.tokenizer.advance()
        # Process className
        self.tokenizer.advance()
        self.className = self.tokenizer.currentToken()
        # Process '{' symbol.
        self.tokenizer.advance()
        # Search for class variable declarations and subroutine declarations.
        self.tokenizer.advance()
        if self.tokenizer.currentToken() in CLASS_VARIBALES_DEC:
            self.compileClassVarDec()
        if self.tokenizer.currentToken() in SUBROUTINE_TYPES:
            self.compileSubroutine()

    def compileClassVarDec(self):
        # Process class variable declarations.
        varType = ''
        varKind = ''
        varName = ''
        index = {"field": -1, "static": -1}
        # Loop for multiple class variable declarations.
        while self.tokenizer.currentToken() in CLASS_VARIBALES_DEC:
            tokenKind = self.tokenizer.currentToken()
            #process kind static or field
            varKind = self.tokenizer.currentToken()
            # Process type
            self.tokenizer.advance()
            varType = self.tokenizer.currentToken()
            # Process variable names.
            self.tokenizer.advance()
            varName = self.tokenizer.currentToken()
            # increment the index for the kind of variable
            index[tokenKind] += 1
            #Adds a variable to the symbol table
            self.symbol_table.classLeveldefine(varName, varType, varKind, index[tokenKind])

            # Search for ',' to check for additional identifiers.
            #If there is no ',' then it will search for ';'
            self.tokenizer.advance()
            
            # Loop for multiple variable declarations.
            while self.tokenizer.currentToken() == ',':
                # Process variable names.
                self.tokenizer.advance()
                varName = self.tokenizer.currentToken()

                # Search for ',' to check for additional identifiers.
                #If there is no ',' then it will search for ';'
                self.tokenizer.advance()
                # increment the index for the kind of variable
                index[tokenKind] += 1
                #Adds a variable to the symbol table
                self.symbol_table.classLeveldefine(varName, varType, varKind, index[tokenKind])

            # Search for next statement (varDec or subroutineDec).
            self.tokenizer.advance()

    def compileSubroutine(self):
         # Loop for multiple subroutines.
        while self.tokenizer.currentToken() in SUBROUTINE_TYPES:
            self.symbol_table.reset()
            # Add the keyword 'function', 'method' or 'constructor'.
            self.subroutineType = self.tokenizer.currentToken()
            # Process type, subroutineName and '(' symbol.
            self.tokenizer.advance()
            self.subroutineReturnType = self.tokenizer.currentToken()
            #process subroutineName
            self.tokenizer.advance()
            self.subroutineName = self.tokenizer.currentToken()
            #process '(' symbol
            self.tokenizer.advance()
            # Process parameter list.
            self.compileParameterList()
            # Process body of the subroutine.
            self.compileSubroutineBody()
            # Search for another subroutine.
            self.tokenizer.advance()

    def compileParameterList(self):
        # Process '(' symbol.
        self.tokenizer.advance()
        # if the subroutine is a method then we have n+1 arguments argument 0 is the pointer to the object
        if self.subroutineType == 'method':
            index = 0
        else:
            index = -1
        kind = "argument"
        argType = ''
        argName = ''
        if self.tokenizer.currentToken() != ')':
            # Process type.
            argType = self.tokenizer.currentToken()
            # Process varName.
            self.tokenizer.advance()
            argName = self.tokenizer.currentToken()
            # increment the index for the kind of variable
            index += 1

            self.symbol_table.subroutineLeveldefine(argName, argType, kind, index)
            # Search for ',' symbol or ')'.
            self.tokenizer.advance()
            # Loop for multiple parameters.
            while self.tokenizer.currentToken() == ',':
                # Process type
                self.tokenizer.advance()
                argType = self.tokenizer.currentToken()
                # Process variable names.
                self.tokenizer.advance()
                argName = self.tokenizer.currentToken()
                # increment the index for the kind of variable
                index += 1

                self.symbol_table.subroutineLeveldefine(argName, argType, kind, index)
                # Search for ',' symbol.
                self.tokenizer.advance()

    def compileSubroutineBody(self):
        # Process '{' symbol.
        self.tokenizer.advance()
        self.tokenizer.advance()
        # Process variable declarations.
        if self.tokenizer.currentToken() == 'var':
            self.compileVarDec()

        nVars = self.symbol_table.varCount('local')
        VMFunctionName = f'{self.className}.{self.subroutineName}'
        self.vmcode += VMWriter.writeFunction(VMFunctionName, nVars)

        if self.subroutineType == 'constructor':
            # Allocate memory for the object.
            nFields = self.symbol_table.varCount("field")
            self.vmcode += VMWriter.writePush("constant", nFields)
            self.vmcode += '\n'.join(['call Memory.alloc 1', 'pop pointer 0\n'])
        elif self.subroutineType == 'method':
            # Assign the first argument to the object.
            self.vmcode += '\n'.join(['push argument 0', 'pop pointer 0\n'])

        # Process statements like let, do, while, if and return.
        if self.tokenizer.currentToken() in STATEMENT_TYPES:
            self.compileStatements()
        
    def compileVarDec(self):
        # Loop for multiple variable declarations.
        index = -1
        kind = "local"
        varType = ''
        varName = ''
        while self.tokenizer.currentToken() == 'var':
            # Process type
            self.tokenizer.advance()
            varType = self.tokenizer.currentToken()
            # Process variable names.
            self.tokenizer.advance()
            varName = self.tokenizer.currentToken()
            # increment the index for the kind of variable
            index += 1
            self.symbol_table.subroutineLeveldefine(varName, varType, kind, index)

            # Search for ',' symbol.
            self.tokenizer.advance()
            while self.tokenizer.currentToken() == ',':
                # Process variable names.
                self.tokenizer.advance()
                varName = self.tokenizer.currentToken()
                # increment the index for the kind of variable
                index += 1
                self.symbol_table.subroutineLeveldefine(varName, varType, kind, index)

                # Search for ',' symbol.
                self.tokenizer.advance()
                
            self.tokenizer.advance()

    def compileStatements(self):
        while self.tokenizer.currentToken() in STATEMENT_TYPES:
            if self.tokenizer.currentToken() == 'let':
                self.compileLet()
            elif self.tokenizer.currentToken() == 'if':
                self.compileIf()
            elif self.tokenizer.currentToken() == 'while':
                self.compileWhile()
            elif self.tokenizer.currentToken() == 'do':
                self.compileDo()
            elif self.tokenizer.currentToken() == 'return':
                self.compileReturn()

    def compileIf(self):
        # Process '(' symbol.
        self.tokenizer.advance()
        # advance to the next token before calling compileExpression.
        self.tokenizer.advance()
        # Process expression.
        self.compileExpression()
        #This to process left over operators in the stack
        self.emptyOperatorStack()
        #perform not operation on the if condition expression
        self.vmcode += "not\n"
        label = VMWriter.generateLabel(self.className)
        self.vmcode += VMWriter.writeIfgoto(label)
        # Process '{' statements '}'.
        self.compileStatementsBlock()
        # Search for 'else'.
        self.tokenizer.advance()
        if self.tokenizer.currentToken() == 'else':
            endLabel = VMWriter.generateLabel(self.className)
            self.vmcode += VMWriter.writeGoto(endLabel)
            self.vmcode += VMWriter.writeLable(label)
            # Process '{' statements '}'.
            self.compileStatementsBlock()
            # Search for next statement keyword.
            self.tokenizer.advance()
            self.vmcode += VMWriter.writeLable(endLabel)
        else:
            self.vmcode += VMWriter.writeLable(label)
        
    def compileLet(self):
        # Process varName.
        self.tokenizer.advance()
        #This will store lhs varible name
        lhs = self.tokenizer.currentToken()
        #This is the code to store the rhs in the lhs
        vmcodeforStoring = VMWriter.writePop(self.symbol_table.kindOf(lhs), self.symbol_table.indexOf(lhs))
        # Search for '[' symbol or '='.
        self.tokenizer.advance()

        if self.tokenizer.currentToken() == '[':
            self.vmcode += VMWriter.writePush(self.symbol_table.kindOf(lhs), self.symbol_table.indexOf(lhs))
            # advance to the next token before calling compileExpression.
            self.tokenizer.advance()
            # Process expression.
            self.compileExpression()
            #This to process left over operators in the stack
            self.emptyOperatorStack()
            self.vmcode += 'add\n'
            # Search for '=' symbol.
            self.tokenizer.advance()
            # This will add the code which is used to store the value in the lhs
            vmcodeforStoring = "\n".join(['pop temp 0', 'pop pointer 1', 'push temp 0', 'pop that 0\n'])
        
        # advance to the next token before calling compileExpression.
        self.tokenizer.advance()
        # Process expression.
        self.compileExpression()
        #This to process left over operators in the stack
        self.emptyOperatorStack()
        

        # Search for next statement keyword.
        self.tokenizer.advance()
        #This will add the code which is used to store the value in a variable to vmcode
        self.vmcode += vmcodeforStoring

    def compileWhile(self):
        # Process '(' symbol.
        self.tokenizer.advance()
        # advance to the next token before calling compileExpression.
        self.tokenizer.advance()
        label = VMWriter.generateLabel(self.className)
        self.vmcode += VMWriter.writeLable(label)
        # Process expression.
        self.compileExpression()
        #This to process left over operators in the stack
        self.emptyOperatorStack()
        # perform not operation to the condition expression
        self.vmcode += 'not\n'
        endLabel = VMWriter.generateLabel(self.className)
        self.vmcode += VMWriter.writeIfgoto(endLabel)
        # Process statements block.
        self.compileStatementsBlock()
        self.vmcode += VMWriter.writeGoto(label)
        self.vmcode += VMWriter.writeLable(endLabel)
        # Search for next statement keyword.
        self.tokenizer.advance()

    def compileDo(self):
        # Assign next_token before calling compileTerm.
        self.tokenizer.advance()
        # Process subroutine call using compileTerm().
        self.compileTerm()
        self.vmcode += VMWriter.writePop('temp', 0)
        # Search for next statement keyword.
        self.tokenizer.advance()

    def compileReturn(self):
        # Search for ';' symbol.
        self.tokenizer.advance()
        if self.tokenizer.currentToken() != ';':
            # Process expression.
            self.compileExpression()
            #This to process left over operators in the stack
            self.emptyOperatorStack()
        else:
            self.vmcode += VMWriter.writePush('constant', 0)
        self.vmcode += 'return\n'
        #search for ';' symbol
        self.tokenizer.advance()

    def compileExpression(self):
        # Process the term (operand).
        self.compileTerm()
        # Process operator and operand.
        while self.tokenizer.currentToken() in BINARY_OP:
            # Process operator.
            self.operatorStack.append(self.tokenizer.currentToken())
            # Assign next_token before calling compileTerm.
            self.tokenizer.advance()
            # Compile the term.
            self.compileTerm()

    def compileTerm(self):
        # process the integer constant
        if self.tokenizer.tokenType() == 'integerConstant':
            self.vmcode += f'push constant {self.tokenizer.currentToken()}\n'
        # process the string constant
        elif self.tokenizer.tokenType() == 'stringConstant':
            stringLength = len(self.tokenizer.currentToken())
            self.vmcode += VMWriter.writePush('constant', stringLength)
            self.vmcode += VMWriter.writeCall('String.new', 1)
            for i in self.tokenizer.currentToken():
                self.vmcode += VMWriter.writePush('constant', ord(i))
                self.vmcode += VMWriter.writeCall('String.appendChar', 2)
        #process the keyword this
        elif self.tokenizer.currentToken() == 'this':
            self.vmcode += VMWriter.writePush('pointer', 0)
        #process the keyword true
        elif self.tokenizer.currentToken() == 'true':
            self.vmcode += VMWriter.writePush('constant', 1)
            self.vmcode += 'neg\n'
        #process the keyword false
        elif self.tokenizer.currentToken() == 'false' or self.tokenizer.currentToken() == 'null':
            self.vmcode += VMWriter.writePush('constant', 0)
        # process the identifier
        elif self.tokenizer.tokenType() == IDENTIFIER:
            varName = self.tokenizer.currentToken()
            # Search for '.' or '[' followed.
            self.tokenizer.advance()
            if self.tokenizer.currentToken() == '[':
                # advance to the next token before calling compileExpression.
                self.tokenizer.advance()
                # process a in a[expression]
                self.vmcode += VMWriter.writePush(self.symbol_table.kindOf(varName), self.symbol_table.indexOf(varName))
                #This is to stop popping operators from the stack when we encounter a '[' symbol
                self.operatorStack.append('[')
                # Process the expression.
                self.compileExpression()
                #This to process left over operators in the stack
                self.emptyOperatorStack()

                vminstructions = ['add', 'pop pointer 1', 'push that 0\n']
                self.vmcode += '\n'.join(vminstructions)

            elif self.tokenizer.currentToken() == '.':
                # process subroutine Name
                self.tokenizer.advance()
                subroutineName = self.tokenizer.currentToken()
                # process '(' symbol
                self.tokenizer.advance()
                # Process the arguments in the subroutine.
                nArgs = 0
                className = self.symbol_table.typeOf(varName)
                if not className:
                    # If the className is not found in the symbol table, then it is a function call. ex: Output.printString()
                    className = varName
                else:
                    #This is a method call, so we need to push the object reference to the stack.It should be passed as the first argument
                    self.vmcode += VMWriter.writePush(self.symbol_table.kindOf(varName), self.symbol_table.indexOf(varName))
                    nArgs += 1
                
                nArgs += self.compileExpressionList()

                self.vmcode += VMWriter.writeCall(f'{className}.{subroutineName}', nArgs)

            elif self.tokenizer.currentToken() == '(':
                # Process the arguments in the subroutine.
                self.vmcode += VMWriter.writePush('pointer', 0)
                nArgs = self.compileExpressionList() + 1
                self.vmcode += VMWriter.writeCall(f'{self.className}.{varName}', nArgs)
            else:
                self.vmcode += VMWriter.writePush(self.symbol_table.kindOf(varName), self.symbol_table.indexOf(varName))
                return
            
        elif self.tokenizer.currentToken() == '(':
            # Process '(' expression ')'.
            self.operatorStack.append(self.tokenizer.currentToken())
            self.tokenizer.advance()
            self.compileExpression()

            #If we encounter a ')' symbol then we have to pop out all operators upto '(' symbol
            if self.tokenizer.currentToken() == ')':
                op = self.operatorStack.pop()

                while op != '(':
                    self.vmcode += VMWriter.writeArithematic(op)
                    op = self.operatorStack.pop()
                    
        elif self.tokenizer.currentToken() in UNARY_OP:
            # Process unary operator term.
            op = self.tokenizer.currentToken()
            self.tokenizer.advance()
            self.compileTerm()

            #This will add the unary operator
            if op == '-':
                self.vmcode += 'neg\n'
            else:
                self.vmcode += 'not\n'

            return
        
        self.tokenizer.advance()
            
    def compileExpressionList(self):
        # advance to the next token before calling compileExpression.
        nArgs = 0
        self.tokenizer.advance()
        if self.tokenizer.currentToken() == ')':
            return nArgs
        #push argument Flag
        self.operatorStack.append('argument')
        # Compile the argument expression.
        self.compileExpression()
        #This to process left over operators in the stack
        self.emptyOperatorStack()
        nArgs += 1
        while self.tokenizer.currentToken() == ',':
            nArgs += 1
            # advance to the next token before calling compileExpression.
            self.tokenizer.advance()
            #push argument Flag
            self.operatorStack.append('argument')
            # Process expression.
            self.compileExpression()
            #This to process left over operators in the stack
            self.emptyOperatorStack()
        return nArgs
    
    def compileStatementsBlock(self):
        # Compiles '{' statements '}'.
        self.tokenizer.advance()
        # Search for statement keywords such as if, let, while, return or do.
        self.tokenizer.advance()
        # Compile statements.
        self.compileStatements()
    
    def emptyOperatorStack(self):
        while (len(self.operatorStack)):
            # If the last operator is an argument flag or a '[', then we have to pop it out of the stack
            if self.operatorStack[-1] == 'argument' or self.operatorStack[-1] == '[':
                self.operatorStack.pop()
                break
            self.vmcode += VMWriter.writeArithematic(self.operatorStack.pop())