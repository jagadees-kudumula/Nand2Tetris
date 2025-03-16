import sys
import Tokenizer
import re
import CompileEngine

def main():
    file_name = "hello.jack"
    xml_symbols = {'<':'&lt;', '>':'&gt;', '&':'&amp;', '"':'&quot;'}
    
    with open(file_name, "r") as file:

        #Input file processing such as removing whitespace at the end and removing the comments
        jack_code = ''
        xml_code = ''
        for line in file:
            jack_code += line.split("//")[0] + '\n' #removes inline comments

        pattern = r"\/\*.*?\*\/" #This is the pattern for multiline comments
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
        print(compile_engine.xml_code)

        # tokenizer = Tokenizer.Tokenizer(jack_code)

        # xml_code += '<tokens>\n'
        # while(tokenizer.hasMoreTokens()):
        #     tokenizer.advance() #This fetches the next token and store it in tokenizer.current_token
        #     token_type = tokenizer.tokenType() #***This should be before the tokenizer.curentToken() because the before method changes the current token to empty
        #     c_token = tokenizer.currentToken() #THis gives the next token

        #     try:
        #         c_token = xml_symbols[c_token]
        #     except KeyError:
        #         pass

        #     if(c_token):
        #         xml_code += f'\t<{token_type}> '
        #         xml_code += c_token
        #         xml_code += f' </{token_type}>\n'
        # xml_code += '</tokens>'
        
        # with open(file_name.split('.')[0]+'.xml', "w") as out:
        #     out.write(xml_code)






if __name__ == '__main__':
    main()
    
