from Tokenizer import Tokenizer

SUBROUTINE_TYPES = ['function', 'method', 'constructor']
CLASS_VARIBALES_DEC = ['field', 'static']
STATEMENT_TYPES = ['return', 'do', 'while', 'if', 'let']
class compileEngine:
    """
    A class to compile Jack code into XML format.
    Attributes:
    -----------
    tokenizer : Tokenizer
        An instance of the Tokenizer class to tokenize the Jack code.
    xml_code : str
        A string to store the generated XML code.
    next_token : str
        A string to store the next token to be processed.
    Methods:
    --------
    compileClass():
        Compiles a complete class.
    compileClassVarDec():
        Compiles class variable declarations.
    compileSubroutine():
        Compiles subroutine declarations.
    compileIf():
        Compiles if statements.
    compileLet():
        Compiles let statements.
    compileWhile():
        Compiles while statements.
    compileDo():
        Compiles do statements.
    compileReturn():
        Compiles return statements.
    compileParameterList():
        Compiles parameter lists.
    compileSubroutineBody():
        Compiles subroutine bodies.
    compileVarDec():
        Compiles variable declarations.
    compileStatements():
        Compiles statements.
    compileTerm():
        Compiles terms.
    compileExpressionList():
        Compiles expression lists.
    eat(n=1):
        Advances the tokenizer and appends the token's XML code to xml_code.
    searchNextToken():
        Advances the tokenizer and stores the next token in next_token.
    """
    def __init__(self, jack_code):
        self.tokenizer = Tokenizer(jack_code)
        self.xml_code = ''
        self.next_token = ''

    def compileClass(self):
        self.xml_code += '<class>\n'

        #This line processes 'class', className and '{' symbol.
        self.eat(3)

        #This searches for classVariableDec and SubroutineDec
        self.searchNextToken()

        if self.next_token in CLASS_VARIBALES_DEC:
            self.compileClassVarDec()

        if self.next_token in SUBROUTINE_TYPES:
            self.compileSubroutine()
        
        #This process '}' symbol
        self.xml_code += self.tokenizer.tokenXMLCode()

        self.xml_code += '</class>\n'


    def compileClassVarDec(self):
        self.xml_code += '<classVarDec>\n'

        #This loop is for multiple classVarDec statements
        while(self.next_token in CLASS_VARIBALES_DEC):

            #Adds the keyword static or field
            self.xml_code += self.tokenizer.tokenXMLCode() 
            #This process type and identifier
            self.eat(2) 

            #This block searches for ',' to know whether there is another identifier or not
            #If there is no another variable then we will have ';' in next_token
            self.searchNextToken()

            #This loop is for multiple variables declaration
            while (self.next_token == ','):
                #This is to process ',' symbol
                self.xml_code += self.tokenizer.tokenXMLCode()
                #This is to process variables names
                self.eat()

                #This line will search for ',' if we encounter ';' then the statement is ended and loop will terminate and we will have ';' in next_token
                self.searchNextToken()
            
            #This is to process ';' symbol
            self.xml_code += self.tokenizer.tokenXMLCode()

            #This serach for next statement whether it is varDec or subroutineDec
            self.searchNextToken()

        self.xml_code += '</classVarDec>\n'
            

    def compileSubroutine(self):
        self.xml_code += '<subroutineDec>\n'

        #This loop is for multiple subroutines
        while (self.next_token in SUBROUTINE_TYPES):

            #Adds the keyword 'function', 'method' or 'constructor' to the xml code
            self.xml_code += self.tokenizer.tokenXMLCode()

            #This is to process type, subroutineName and '(' symbol
            self.eat(3)

            #This to process parameter list
            self.compileParameterList()

            #This is to process the symbol ')'
            self.xml_code += self.tokenizer.tokenXMLCode()

            #This is to process body of the subroutine
            self.compileSubroutineBody()

            #This is to search for another subroutine
            self.searchNextToken()
        
        self.xml_code += '</subroutineDec>\n'

    def compileParameterList(self):
        self.xml_code += '<parameterList>\n'

        self.searchNextToken()

        if self.next_token != ')':
            #This it to process type
            self.xml_code += self.tokenizer.tokenXMLCode()
            #This is to process varName
            self.eat()

            #This is to search for ',' symbol if there is no ',' then there will be a ')'
            self.searchNextToken()

            #This loop is to process multiple params
            while (self.next_token == ','):
                #This is to process ',' symbol
                self.xml_code += self.tokenizer.tokenXMLCode()
                #This is to process type and varName
                self.eat(2)
                #This is to search ',' symbol
                self.searchNextToken()
        
        self.xml_code += '</parameterList>\n'

    def compileSubroutineBody(self):
        self.xml_code += '<subroutineBody>\n'

        #This it to process '{' symbol
        self.eat()

        self.searchNextToken()

        #This is for variable declarations
        if self.next_token == 'var':
            self.compileVarDec()

        #This is to process statements like let, do, while, if and return
        if self.next_token in STATEMENT_TYPES:
            self.compileStatements()
        
        #This is to process '}' symbol
        self.xml_code += self.tokenizer.tokenXMLCode()

        self.xml_code += '</subroutineBody>\n'
    
    def compileVarDec(self):
        #This method is same as the compileClassVarDec method with some changes
        self.xml_code += '<varDec>\n'

        while (self.next_token == 'var'):
            #This to process keyword 'var'
            self.xml_code += self.tokenizer.tokenXMLCode()
            #This is to process type and varName
            self.eat(2)
            #This seraches for ,
            self.searchNextToken()

            while (self.next_token == ','):
                #This is to process ',' symbol
                self.xml_code += self.tokenizer.tokenXMLCode()
                #This is to process varName
                self.eat()
                #This is to search for ',' symbol
                self.searchNextToken()
            #This is to process ';' symbol
            self.xml_code += self.tokenizer.tokenXMLCode()

            self.searchNextToken()

        self.xml_code += '</varDec>\n'

    def compileStatements(self):
        self.xml_code += '<statements>\n'

        while (self.next_token in STATEMENT_TYPES):
            if self.next_token == 'let':
                self.compileLet()
            if self.next_token == 'if':
                self.compileIf()
            if self.next_token == 'while':
                self.compileWhile()
            if self.next_token == 'do':
                self.compileDo()
            if self.next_token == 'return':
                self.compileReturn()
            
            self.searchNextToken()
        
        self.xml_code += '</statements>\n'

    def compileIf(self):
        pass

    def compileLet(self):
        pass

    def compileWhile(self):
        pass

    def compileDo(self):
        pass

    def compileReturn(self):
        pass

    def compileTerm(self):
        pass

    def compileExpressionList(self):
        pass

    def eat(self, n=1):
        while(n):
            self.tokenizer.advance()
            self.xml_code += self.tokenizer.tokenXMLCode()
            n -= 1
    
    #This method seraches for next token and stores it in self.next_token
    def searchNextToken(self):
        self.tokenizer.advance()
        self.next_token = self.tokenizer.currentToken()


        