from Tokenizer import Tokenizer, IDENTIFIER

SUBROUTINE_TYPES = ['function', 'method', 'constructor']
CLASS_VARIBALES_DEC = ['field', 'static']
STATEMENT_TYPES = ['return', 'do', 'while', 'if', 'let']
BINARY_OP = ['+', '-', '*', '/', '&', '<', '>', '=', '|']
UNARY_OP = ['-', '~']
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

        self.xml_code += '</class>'


    def compileClassVarDec(self):
        #This loop is for multiple classVarDec statements
        while(self.next_token in CLASS_VARIBALES_DEC):

            self.xml_code += '<classVarDec>\n'

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
    
        #This loop is for multiple subroutines
        while (self.next_token in SUBROUTINE_TYPES):
            self.xml_code += '<subroutineDec>\n'
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
        while (self.next_token == 'var'):
            self.xml_code += '<varDec>\n'

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
            elif self.next_token == 'if':
                self.compileIf()
            elif self.next_token == 'while':
                self.compileWhile()
            elif self.next_token == 'do':
                self.compileDo()
            elif self.next_token == 'return':
                self.compileReturn()
        
        self.xml_code += '</statements>\n'

    def compileIf(self):
        self.xml_code += '<ifStatement>\n'

        #This is to process 'if' keyword
        self.xml_code += self.tokenizer.tokenXMLCode()
        #This is to process '(' symbol
        self.eat()
        #strictly we have to assign the next_token before calling the compileExpression method
        self.searchNextToken()
        #This is to proces the expression
        self.compileExpression()
        #This is to process ')' symbol
        self.xml_code += self.tokenizer.tokenXMLCode()
        #This is to process '{'statements'}'
        self.compileStatementsBlock()
        #This is to search for 'else'
        #If not 'else' then next_token will contain other statement keyword or symbol '}' .
        self.searchNextToken()

        if self.next_token == 'else':
            #This is to process the 'else' keyword
            self.xml_code += self.tokenizer.tokenXMLCode()
            #This is to process '{'statements'}'
            self.compileStatementsBlock()
            #This is to search for keyword in the next_statement
            self.searchNextToken()

        self.xml_code += '</ifStatement>\n'
        
    def compileLet(self):
        self.xml_code += '<letStatement>\n'

        #This is to process 'let' keyword
        self.xml_code += self.tokenizer.tokenXMLCode()
        #This is to process varName
        self.eat()
        #This is to search for symbol '[' else next_token = '='
        self.searchNextToken()

        if (self.next_token == '['):
            #This is to process '[' symbol
            self.xml_code += self.tokenizer.tokenXMLCode()
            #strictly we have to assign the next_token before calling the compileExpression method
            self.searchNextToken()
            #This is to process expressions
            self.compileExpression()
            #This is to process ']' symbol
            self.xml_code += self.tokenizer.tokenXMLCode()
            #This is to search '=' symbol
            self.searchNextToken()

        #This is to process '=' symbol
        self.xml_code += self.tokenizer.tokenXMLCode()
        #strictly we have to assign the next_token before calling the compileExpression method
        self.searchNextToken()
        #This is to process expressions
        self.compileExpression()
        #This is to process ';' symbol
        self.xml_code += self.tokenizer.tokenXMLCode()
        #This is to search for keyword in the next_statement 
        self.searchNextToken()

        self.xml_code += '</letStatement>\n'

    def compileWhile(self):
        self.xml_code += '<whileStatement>\n'

        #This is to process 'while' keyword
        self.xml_code += self.tokenizer.tokenXMLCode()
        #This is to process '(' symbol
        self.eat()
        #strictly we have to assign the next_token before calling the compileExpression method
        self.searchNextToken()
        #This is to process expression
        self.compileExpression()
        #This is to process ')' symbol
        self.xml_code += self.tokenizer.tokenXMLCode()
        #This is to process statemets
        self.compileStatementsBlock()
        #This is to search for keyword in the next_statement
        self.searchNextToken()

        self.xml_code += '</whileStatement>\n'

    def compileDo(self):
            self.xml_code += '<doStatement>\n'
    
            #This is to process 'do' keyword
            self.xml_code += self.tokenizer.tokenXMLCode()
            #strictly we have to assign the next_token before calling the compileTerm method
            self.searchNextToken()
            #This is to check whether the statement is do or not
            self.do_statement = True 
            #This is to process subroutine call using the method compileTerm()
            self.compileTerm()
            #Remove </term> tag from the xml_code
            self.xml_code = self.xml_code[:-8]
            #This is to process the symbol ';'
            self.xml_code += self.tokenizer.tokenXMLCode()
            
            self.searchNextToken()
    
            self.xml_code += '</doStatement>\n'

    def compileReturn(self):
        self.xml_code += '<returnStatement>\n'

        #This is to process 'return' keyword
        self.xml_code += self.tokenizer.tokenXMLCode()
        #This is to search ';' symbol
        self.searchNextToken()

        if self.next_token != ';':
            #This is to process expression
            self.compileExpression()

        #This is to process ';' symbol
        self.xml_code += self.tokenizer.tokenXMLCode()
        self.searchNextToken()
    
        self.xml_code += '</returnStatement>\n'

    def compileExpression(self):
        self.xml_code += '<expression>\n'

        #This is to process the term(operand)
        self.compileTerm()

        #This is to process opeartor and opearand
        while (self.next_token in BINARY_OP):
            #This is to process opeartor
            self.xml_code += self.tokenizer.tokenXMLCode()
            #strictly we have to assign the next_token before calling the compileTerm method
            self.searchNextToken()
            #This is to compile the term
            self.compileTerm()
        
        self.xml_code += '</expression>\n'

    def compileTerm(self):
        self.xml_code += '<term>\n'

        #This is to process term or '(' or '~ or -'
        self.xml_code += self.tokenizer.tokenXMLCode()

        if self.tokenizer.tokenType() == IDENTIFIER:
            #This is to search for '.' or '[' followed 
            self.searchNextToken()

            if self.next_token == '[':
                #This is to process '[' symbol
                self.xml_code += self.tokenizer.tokenXMLCode()
                #strictly we have to assign the next_token before calling the compileExpression method
                self.searchNextToken()
                #This is to process the expression
                self.compileExpression()
                #This to process the ']' symbol
                self.xml_code += self.tokenizer.tokenXMLCode()
            elif self.next_token == '.':
                #This is to process '.' symbol
                self.xml_code += self.tokenizer.tokenXMLCode()
                #This is to process subroutineName and '(' symbol
                self.eat(2)
                #This is to process the arguments in the subroutine
                self.compileExpressionList()
                #This is to process the ')' symbol
                self.xml_code += self.tokenizer.tokenXMLCode()
            elif self.next_token == '(':
                #This is to process the '(' symbol
                self.xml_code += self.tokenizer.tokenXMLCode()
                #This is to process the arguments in the subroutine
                self.compileExpressionList()
                #This is to process the ')' symbol
                self.xml_code += self.tokenizer.tokenXMLCode()
            else:
                self.xml_code += '</term>\n'
                return

        #This is to process (expression) 
        elif self.next_token == '(':
            #Documented Later
            self.searchNextToken()
            #This is to process the expression
            self.compileExpression()
            #This is to process ')' symbol
            self.xml_code += self.tokenizer.tokenXMLCode()
        
        #This is to process ('~'|'-') term
        elif self.next_token in UNARY_OP:
            self.searchNextToken()
            #This is to process the term
            self.compileTerm()

            self.xml_code += '</term>\n'
            return
            
        #Documented Later
        self.searchNextToken()

        
        self.xml_code += '</term>\n'
            
        
            
    def compileExpressionList(self):
        self.xml_code += '<expressionList>\n'

        #strictly we have to assign the next_token before calling the compileExpression method
        self.searchNextToken()
        #If the expression list is empty then return
        if (self.next_token == ')'):
            self.xml_code += '</expressionList>\n'
            return
        #This is to compiles the argument expression
        self.compileExpression()

        while(self.next_token == ','):
            #This is to process ',' symbol
            self.xml_code += self.tokenizer.tokenXMLCode()
            #Documented Later
            self.searchNextToken()
            #This is to process expression
            self.compileExpression()
        
        self.xml_code += '</expressionList>\n'

    #Advances the tokenizer and appends the token's XML code to xml_code.
    def eat(self, n=1):
        while(n):
            self.tokenizer.advance()
            self.xml_code += self.tokenizer.tokenXMLCode()
            n -= 1
    
    #This method seraches for next token and stores it in self.next_token
    def searchNextToken(self):
        self.tokenizer.advance()
        self.next_token = self.tokenizer.currentToken()
    
    #This method is used to compile '{' statements '}'
    def compileStatementsBlock(self):
        #This is to process '}' symbol
        self.eat()
        #Searches for key word in the statement such as if, let, while, return or do
        self.searchNextToken()
        #compiles statements
        self.compileStatements()
        #This to process '}' symbol
        self.xml_code += self.tokenizer.tokenXMLCode()
