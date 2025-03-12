
class Parser:
    C_ARITHEMETIC = 0
    C_PUSH = 1
    C_POP = 2
    C_LABEL = 3
    C_IF_GOTO = 4
    C_FUNCTION = 5
    C_CALL = 6
    C_RETURN = 7
    
    def commandType(self, instruction):
        tokens = instruction.split()
        if tokens[0] == 'push':
            return self.C_PUSH
        elif tokens[0] == 'pop':
            return self.C_POP
        elif tokens[0] == 'label':
            return self.C_LABEL
        elif tokens[0] == 'if-goto' or tokens[0] == 'goto':
            return self.C_IF_GOTO
        elif tokens[0] == 'function':
            return self.C_FUNCTION
        elif tokens[0] == 'return':
            return self.C_RETURN
        elif tokens[0] == 'call':
            return self.C_CALL
        else:
            return self.C_ARITHEMETIC
    
    def tokenizer(self, instruction):
        tokens = instruction.split()
        return tokens