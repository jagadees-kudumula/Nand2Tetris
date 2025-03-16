import sys
import re
import CompileEngine

def main():
    file_name = sys.argv[1]
    
    with open(file_name, "r") as file:

        #Input file processing such as removing whitespace at the end and removing the comments
        jack_code = ''
        xml_code = ''
        for line in file:
            jack_code += line.split("//")[0] + '\n' #removes inline comments

        pattern = r"\/\*[\s\S]*?\*\/" # This pattern considers multiline comments
        stringPattern = r"\".*?\"" #This is the pattern for strings ("")
        match = re.findall(pattern, jack_code)
        stringMatch = " ".join(re.findall(stringPattern, jack_code)) #Join all strings. this is used to check the comment symbols in the string ex: "Hello /* Bye */"

        for m in match:
            if m in stringMatch:
                continue #If the comment symbols are present in the strings we have to igonre them we should not replace them with empty string
            jack_code = jack_code.replace(m, "") #removes multiline comments
            
        jack_code = jack_code.rstrip() #removes whitespace at the end
        compile_engine = CompileEngine.compileEngine(jack_code)
        compile_engine.compileClass()
        
        with open(file_name.split('.')[0]+'.xml', "w") as out:
            #This is used to handle the extra newline and term tag in the do statement
            compile_engine.xml_code = compile_engine.xml_code.replace('<keyword> do </keyword>\n<term>', '<keyword> do </keyword>')
            out.write(compile_engine.xml_code)



if __name__ == '__main__':
    main()
    
