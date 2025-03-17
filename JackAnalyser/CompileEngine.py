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
        # Process 'class', className and '{' symbol.
        self.eat(3)
        # Search for class variable declarations and subroutine declarations.
        self.searchNextToken()
        if self.next_token in CLASS_VARIBALES_DEC:
            self.compileClassVarDec()
        if self.next_token in SUBROUTINE_TYPES:
            self.compileSubroutine()
        # Process '}' symbol.
        self.xml_code += self.tokenizer.tokenXMLCode()
        self.xml_code += '</class>'

    def compileClassVarDec(self):
        # Loop for multiple class variable declarations.
        while self.next_token in CLASS_VARIBALES_DEC:
            self.xml_code += '<classVarDec>\n'
            # Add the keyword 'static' or 'field'.
            self.xml_code += self.tokenizer.tokenXMLCode()
            # Process type and identifier.
            self.eat(2)
            # Search for ',' to check for additional identifiers.
            #If there is no ',' then it will search for ';'
            self.searchNextToken()
            # Loop for multiple variable declarations.
            while self.next_token == ',':
                # Process ',' symbol.
                self.xml_code += self.tokenizer.tokenXMLCode()
                # Process variable names.
                self.eat()
                # Search for ',' or ';'.
                self.searchNextToken()
            # Process ';' symbol.
            self.xml_code += self.tokenizer.tokenXMLCode()
            # Search for next statement (varDec or subroutineDec).
            self.searchNextToken()
            self.xml_code += '</classVarDec>\n'

    def compileSubroutine(self):
        # Loop for multiple subroutines.
        while self.next_token in SUBROUTINE_TYPES:
            self.xml_code += '<subroutineDec>\n'
            # Add the keyword 'function', 'method' or 'constructor'.
            self.xml_code += self.tokenizer.tokenXMLCode()
            # Process type, subroutineName and '(' symbol.
            self.eat(3)
            # Process parameter list.
            self.compileParameterList()
            # Process ')' symbol.
            self.xml_code += self.tokenizer.tokenXMLCode()
            # Process body of the subroutine.
            self.compileSubroutineBody()
            # Search for another subroutine.
            self.searchNextToken()
            self.xml_code += '</subroutineDec>\n'

    def compileParameterList(self):
        self.xml_code += '<parameterList>\n'
        self.searchNextToken()
        if self.next_token != ')':
            # Process type.
            self.xml_code += self.tokenizer.tokenXMLCode()
            # Process varName.
            self.eat()
            # Search for ',' symbol or ')'.
            self.searchNextToken()
            # Loop for multiple parameters.
            while self.next_token == ',':
                # Process ',' symbol.
                self.xml_code += self.tokenizer.tokenXMLCode()
                # Process type and varName.
                self.eat(2)
                # Search for ',' symbol.
                self.searchNextToken()
        self.xml_code += '</parameterList>\n'

    def compileSubroutineBody(self):
        self.xml_code += '<subroutineBody>\n'
        # Process '{' symbol.
        self.eat()
        self.searchNextToken()
        # Process variable declarations.
        if self.next_token == 'var':
            self.compileVarDec()
        # Process statements like let, do, while, if and return.
        if self.next_token in STATEMENT_TYPES:
            self.compileStatements()
        # Process '}' symbol.
        self.xml_code += self.tokenizer.tokenXMLCode()
        self.xml_code += '</subroutineBody>\n'
    
    def compileVarDec(self):
        # Loop for multiple variable declarations.
        while self.next_token == 'var':
            self.xml_code += '<varDec>\n'
            # Process keyword 'var'.
            self.xml_code += self.tokenizer.tokenXMLCode()
            # Process type and varName.
            self.eat(2)
            # Search for ',' symbol.
            self.searchNextToken()
            while self.next_token == ',':
                # Process ',' symbol.
                self.xml_code += self.tokenizer.tokenXMLCode()
                # Process varName.
                self.eat()
                # Search for ',' symbol.
                self.searchNextToken()
            # Process ';' symbol.
            self.xml_code += self.tokenizer.tokenXMLCode()
            self.searchNextToken()
            self.xml_code += '</varDec>\n'

    def compileStatements(self):
        self.xml_code += '<statements>\n'
        while self.next_token in STATEMENT_TYPES:
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
        # Process 'if' keyword.
        self.xml_code += self.tokenizer.tokenXMLCode()
        # Process '(' symbol.
        self.eat()
        # Assign next_token before calling compileExpression.
        self.searchNextToken()
        # Process expression.
        self.compileExpression()
        # Process ')' symbol.
        self.xml_code += self.tokenizer.tokenXMLCode()
        # Process '{' statements '}'.
        self.compileStatementsBlock()
        # Search for 'else'.
        self.searchNextToken()
        if self.next_token == 'else':
            # Process 'else' keyword.
            self.xml_code += self.tokenizer.tokenXMLCode()
            # Process '{' statements '}'.
            self.compileStatementsBlock()
            # Search for next statement keyword.
            self.searchNextToken()
        self.xml_code += '</ifStatement>\n'
        
    def compileLet(self):
        self.xml_code += '<letStatement>\n'
        # Process 'let' keyword.
        self.xml_code += self.tokenizer.tokenXMLCode()
        # Process varName.
        self.eat()
        # Search for '[' symbol or '='.
        self.searchNextToken()
        if self.next_token == '[':
            # Process '[' symbol.
            self.xml_code += self.tokenizer.tokenXMLCode()
            # Assign next_token before calling compileExpression.
            self.searchNextToken()
            # Process expression.
            self.compileExpression()
            # Process ']' symbol.
            self.xml_code += self.tokenizer.tokenXMLCode()
            # Search for '=' symbol.
            self.searchNextToken()
        # Process '=' symbol.
        self.xml_code += self.tokenizer.tokenXMLCode()
        # Assign next_token before calling compileExpression.
        self.searchNextToken()
        # Process expression.
        self.compileExpression()
        # Process ';' symbol.
        self.xml_code += self.tokenizer.tokenXMLCode()
        # Search for next statement keyword.
        self.searchNextToken()
        self.xml_code += '</letStatement>\n'

    def compileWhile(self):
        self.xml_code += '<whileStatement>\n'
        # Process 'while' keyword.
        self.xml_code += self.tokenizer.tokenXMLCode()
        # Process '(' symbol.
        self.eat()
        # Assign next_token before calling compileExpression.
        self.searchNextToken()
        # Process expression.
        self.compileExpression()
        # Process ')' symbol.
        self.xml_code += self.tokenizer.tokenXMLCode()
        # Process statements block.
        self.compileStatementsBlock()
        # Search for next statement keyword.
        self.searchNextToken()
        self.xml_code += '</whileStatement>\n'

    def compileDo(self):
        self.xml_code += '<doStatement>\n'
        # Process 'do' keyword.
        self.xml_code += self.tokenizer.tokenXMLCode()
        # Assign next_token before calling compileTerm.
        self.searchNextToken()
        # Check if the statement is 'do'.
        self.do_statement = True 
        # Process subroutine call using compileTerm().
        self.compileTerm()
        # Remove </term> tag from xml_code.
        self.xml_code = self.xml_code[:-8]
        # Process ';' symbol.
        self.xml_code += self.tokenizer.tokenXMLCode()
        # Search for next statement keyword.
        self.searchNextToken()
        self.xml_code += '</doStatement>\n'

    def compileReturn(self):
        self.xml_code += '<returnStatement>\n'
        # Process 'return' keyword.
        self.xml_code += self.tokenizer.tokenXMLCode()
        # Search for ';' symbol.
        self.searchNextToken()
        if self.next_token != ';':
            # Process expression.
            self.compileExpression()
        # Process ';' symbol.
        self.xml_code += self.tokenizer.tokenXMLCode()
        #search for ';' symbol
        self.searchNextToken()
        self.xml_code += '</returnStatement>\n'

    def compileExpression(self):
        self.xml_code += '<expression>\n'
        # Process the term (operand).
        self.compileTerm()
        # Process operator and operand.
        while self.next_token in BINARY_OP:
            # Process operator.
            self.xml_code += self.tokenizer.tokenXMLCode()
            # Assign next_token before calling compileTerm.
            self.searchNextToken()
            # Compile the term.
            self.compileTerm()
        self.xml_code += '</expression>\n'

    def compileTerm(self):
        self.xml_code += '<term>\n'
        # Process term or '(' or '~' or '-'.
        self.xml_code += self.tokenizer.tokenXMLCode()
        if self.tokenizer.tokenType() == IDENTIFIER:
            # Search for '.' or '[' followed.
            self.searchNextToken()
            if self.next_token == '[':
                # Process '[' symbol.
                self.xml_code += self.tokenizer.tokenXMLCode()
                # Assign next_token before calling compileExpression.
                self.searchNextToken()
                # Process the expression.
                self.compileExpression()
                # Process ']' symbol.
                self.xml_code += self.tokenizer.tokenXMLCode()
            elif self.next_token == '.':
                # Process '.' symbol.
                self.xml_code += self.tokenizer.tokenXMLCode()
                # Process subroutineName and '(' symbol.
                self.eat(2)
                # Process the arguments in the subroutine.
                self.compileExpressionList()
                # Process ')' symbol.
                self.xml_code += self.tokenizer.tokenXMLCode()
            elif self.next_token == '(':
                # Process '(' symbol.
                self.xml_code += self.tokenizer.tokenXMLCode()
                # Process the arguments in the subroutine.
                self.compileExpressionList()
                # Process ')' symbol.
                self.xml_code += self.tokenizer.tokenXMLCode()
            else:
                self.xml_code += '</term>\n'
                return
        elif self.next_token == '(':
            # Process '(' expression ')'.
            self.searchNextToken()
            self.compileExpression()
            self.xml_code += self.tokenizer.tokenXMLCode()
        elif self.next_token in UNARY_OP:
            # Process unary operator term.
            self.searchNextToken()
            self.compileTerm()
            self.xml_code += '</term>\n'
            return
        self.searchNextToken()
        self.xml_code += '</term>\n'
            
    def compileExpressionList(self):
        self.xml_code += '<expressionList>\n'
        # Assign next_token before calling compileExpression.
        self.searchNextToken()
        if self.next_token == ')':
            self.xml_code += '</expressionList>\n'
            return
        # Compile the argument expression.
        self.compileExpression()
        while self.next_token == ',':
            # Process ',' symbol.
            self.xml_code += self.tokenizer.tokenXMLCode()
            # Assign next_token before calling compileExpression.
            self.searchNextToken()
            # Process expression.
            self.compileExpression()
        self.xml_code += '</expressionList>\n'

    def eat(self, n=1):
        # Advances the tokenizer and appends the token's XML code to xml_code.
        while n:
            self.tokenizer.advance()
            self.xml_code += self.tokenizer.tokenXMLCode()
            n -= 1
    
    def searchNextToken(self):
        # Advances the tokenizer and stores the next token in next_token.
        self.tokenizer.advance()
        self.next_token = self.tokenizer.currentToken()
    
    def compileStatementsBlock(self):
        # Compiles '{' statements '}'.
        self.eat()
        # Search for statement keywords such as if, let, while, return or do.
        self.searchNextToken()
        # Compile statements.
        self.compileStatements()
        # Process '}' symbol.
        self.xml_code += self.tokenizer.tokenXMLCode()
