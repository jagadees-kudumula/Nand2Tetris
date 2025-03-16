#THese are the symbols and keywords yused by the jack language
KEYWORDS = ['class', 'constructor', 'function', 'method', 'field', 'static', 'var', 'int', 'char', 'boolean', 'void', 'true', 'false', 'null', 'this', 'let', 'do', 'if', 'else', 'while', 'return']
SYMBOLS = ['{', '}', '(', ')', '[', ']', '.', ',', ';', '+', '-', '*', '/', '&', '|', '<', '>', '=', '~']


#These are used to construct the xml tree.We return these constants when tokentype methos is called.
KEYWORD = 'keyword'
SYMBOL = 'symbol'
IDENTIFIER = 'identifier'
INT_CONST = 'integerConstant'
STRING_CONST = 'stringConstant'

class Tokenizer:

    def __init__(self,jack_code):

        self.jack_code = jack_code
        self.pos = 0
        self.current_token = ''
        self.code_length = len(self.jack_code)
        self.XML_SYMBOLS = {'<':'&lt;', '>':'&gt;', '&':'&amp;', '"':'&quot;'}

    def hasMoreTokens(self):
        if self.pos >= len(self.jack_code): #Checks if the current pos is at the end or not
            return False
        return True

    def advance(self):
        self.current_token = '' #Before advancing we will set current tokrn value to empty as we dont need previous token
        while (self.hasMoreTokens()): #If we set this true if will raise error in some cases!
            current_char = self.jack_code[self.pos]

            #This is used to handle the strings
            if(current_char == '"'): 
                self.pos += 1
                while (self.jack_code[self.pos] != '"'):
                    self.current_token += self.jack_code[self.pos]
                    self.pos += 1
                self.current_token = f'"{self.current_token}"' #This adds quotes to the string

            #To handle the keywords and identifiers
            elif current_char.isalpha() or current_char == '_' or current_char.isdigit(): #This is for identifier
                self.current_token += current_char

            #To handle whitespace and newlines
            elif current_char.isspace():
                #We will break the loop if there is any whitespace ex: let x = 20; here we will break at every whitespace 
                #if the current_token is empty we will continue until we find a token
                self.pos += 1
                if self.current_token:
                    break
                continue
            
            #To handle symbols
            elif current_char in SYMBOLS: 
                #If we encounter a symbol then we have to break the loop
                #There are two cases
                #case1: If the current_token is empty then add the symbol to current_token and break
                #case2: else just break the loop and dont increment the pos value.By this we can iteerate over the symbol again with empty current token in the next iiteration
                if (not self.current_token):
                    self.current_token += current_char
                    self.pos += 1
                break
            
            self.pos += 1

    def tokenType(self):
        CT = self.current_token
        if CT in KEYWORDS:
            return KEYWORD
        elif CT in SYMBOLS:
            return SYMBOL
        elif CT.isdigit() and (int(CT) >= 0 and int(CT) <= 32767):
            return INT_CONST
        elif CT.startswith('"'):
            return STRING_CONST
        else:
            return IDENTIFIER


    def currentToken(self):
        temp = self.current_token 
        if self.tokenType() == STRING_CONST:     
            temp = temp[1:-1] #removes quotes in the string
        
        return temp
    
    def tokenXMLCode(self):
        tokenType = self.tokenType()
        token = self.currentToken()
        #If the token is a symbol then we have to replace the symbol with the corresponding xml entity
        if token in self.XML_SYMBOLS:
            token = self.XML_SYMBOLS[token]
        return f'<{tokenType}> {token} </{tokenType}>\n'