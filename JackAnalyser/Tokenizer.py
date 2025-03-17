# These are the symbols and keywords used by the Jack language
KEYWORDS = [
    'class', 'constructor', 'function', 'method', 'field', 'static', 'var', 
    'int', 'char', 'boolean', 'void', 'true', 'false', 'null', 'this', 'let', 
    'do', 'if', 'else', 'while', 'return'
]
SYMBOLS = [
    '{', '}', '(', ')', '[', ']', '.', ',', ';', '+', '-', '*', '/', '&', '|', 
    '<', '>', '=', '~'
]

# These constants are used to construct the XML tree. We return these constants 
# when the tokenType method is called.
KEYWORD = 'keyword'
SYMBOL = 'symbol'
IDENTIFIER = 'identifier'
INT_CONST = 'integerConstant'
STRING_CONST = 'stringConstant'

class Tokenizer:
    def __init__(self, jack_code):
        self.jack_code = jack_code
        self.pos = 0
        self.current_token = ''
        self.code_length = len(self.jack_code)
        self.XML_SYMBOLS = {'<': '&lt;', '>': '&gt;', '&': '&amp;', '"': '&quot;'}

    def hasMoreTokens(self):
        # Checks if the current position is at the end or not
        return self.pos < len(self.jack_code)

    def advance(self):
        # Before advancing, set current token value to empty as we don't need the previous token
        self.current_token = ''
        while self.hasMoreTokens():
            current_char = self.jack_code[self.pos]

            # Handle string constants
            if current_char == '"':
                self.pos += 1
                while self.jack_code[self.pos] != '"':
                    self.current_token += self.jack_code[self.pos]
                    self.pos += 1
                self.current_token = f'"{self.current_token}"'  # Add quotes to the string

            # Handle keywords and identifiers
            elif current_char.isalpha() or current_char == '_' or current_char.isdigit():
                self.current_token += current_char

            # Handle whitespace and newlines
            elif current_char.isspace():
                # Break the loop if there is any whitespace (e.g., let x = 20;)
                # If the current_token is empty, continue until we find a token
                self.pos += 1
                if self.current_token:
                    break
                continue

            # Handle symbols
            elif current_char in SYMBOLS:
                # If we encounter a symbol, break the loop
                # Case 1: If the current_token is empty, add the symbol to current_token and break
                # Case 2: Else, just break the loop and don't increment the pos value. 
                # This allows iterating over the symbol again with an empty current token in the next iteration
                if not self.current_token:
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
        elif CT.isdigit() and 0 <= int(CT) <= 32767:
            return INT_CONST
        elif CT.startswith('"'):
            return STRING_CONST
        else:
            return IDENTIFIER

    def currentToken(self):
        temp = self.current_token
        if self.tokenType() == STRING_CONST:
            temp = temp[1:-1]  # Remove quotes in the string
        return temp

    def tokenXMLCode(self):
        tokenType = self.tokenType()
        token = self.currentToken()
        # If the token is a symbol, replace the symbol with the corresponding XML entity
        if token in self.XML_SYMBOLS:
            token = self.XML_SYMBOLS[token]
        return f'<{tokenType}> {token} </{tokenType}>\n'