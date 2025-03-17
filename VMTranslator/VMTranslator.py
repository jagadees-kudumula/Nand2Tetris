import sys
import os
from Parser import Parser
from CodeWriter import CodeWriter

parser = Parser()
codewriter = CodeWriter()
outFile = ''
i = 1

#Here i and OutFile are used as global variables

def main():

    fileName = sys.argv[1]
    global outFile
    outFile = fileName

    bootstrapCode = "\n".join(["@256", "D=A", "@SP", "M=D"])
    instruction = "call Sys.init 0"
    tokens = parser.tokenizer(instruction)
    with open(outFile+".asm", "a") as out:
        out.write(bootstrapCode+"\n"+codewriter.trans_call(tokens)+"\n")

    if ('.' in fileName):
        outFile = outFile.split('.')[0]
        write_file(fileName)
    else:
        for filename in os.listdir(fileName):
            filePath = os.path.join(fileName, filename)
            write_file(filePath)
    

def write_file(fileName):
    global i
    with open(fileName) as f:
        if '/' in fileName:
            fileName = fileName.split('/')[1]
        instruction = f.readline() #reading first line
        while (instruction):
            instruction = instruction.split('//')[0] #Remove Comments
            instruction = instruction.strip() #remove WhiteSpace

            if instruction: #If instruction is not empty then parse the instruction
                instruction_type = parser.commandType(instruction)
                tokens = parser.tokenizer(instruction)

                if instruction_type == parser.C_PUSH:
                    translation = codewriter.trans_push(tokens, fileName.split(".")[0])
                elif instruction_type == parser.C_POP:
                    translation = codewriter.trans_pop(tokens, fileName.split(".")[0])
                elif instruction_type == parser.C_LABEL:
                    translation = f"({tokens[1]})" #Create a label
                elif instruction_type == parser.C_IF_GOTO:
                    translation = codewriter.trans_branching(tokens)
                elif instruction_type == parser.C_FUNCTION:
                    translation = codewriter.trans_function(tokens, i)
                elif instruction_type == parser.C_RETURN:
                    translation = codewriter.trans_return(fileName)
                elif instruction_type == parser.C_CALL:
                    translation = codewriter.trans_call(tokens)
                else:
                    translation = codewriter.trans_arithematic(tokens, i)
        
                comment = "//" + instruction + "\n"
                with open(outFile+".asm", "a") as out:
                    out.write(comment + translation + "\n")

            
            instruction = f.readline()
            i = i+1


if __name__ == "__main__":
    main()
