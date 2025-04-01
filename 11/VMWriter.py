VMOpeartions = {'+':'add', '-':'sub', '*':'call Math.multiply 2', '/':'call Math.divide 2', 'neg':'neg', '~':'not', '<':'lt', '>':'gt', '=':'eq', '|':'or', '&':'and'}
LABEL_COUNT = 0
class VMWriter:
    @staticmethod
    def writePush(segment, index):
        return f'push {segment} {index}\n'
    
    @staticmethod
    def writeFunction(name, nVars):
        return f'function {name} {nVars}\n'
    
    @staticmethod
    def writeCall(name, nArgs):
        return f'call {name} {nArgs}\n'
    
    @staticmethod
    def writePop(segment, index):
        return f'pop {segment} {index}\n'
    
    @staticmethod
    def writeArithematic(operator):
        return (VMOpeartions[operator]+'\n')
    
    @staticmethod
    def writeLable(label):
        return f'label {label}\n'
    
    @staticmethod
    def writeIfgoto(label):
        return f'if-goto {label}\n'
    
    @staticmethod
    def writeGoto(label):
        return f'goto {label}\n'
    
    @staticmethod
    def generateLabel(className):
        global LABEL_COUNT
        label = f'{className}_{LABEL_COUNT}'
        LABEL_COUNT += 1
        return label
