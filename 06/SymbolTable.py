def get_computation_bits(symbol):
    comp = {
                "0":"0101010", "1":"0111111", "-1":"0111010", 
                "D":"0001100", "A":"0110000", "!D":"0001101", 
                "!A":"0110001", "-D":"0001111", "-A":"0110011",
                "D+1":"0011111", "A+1":"0110111", "D-1":"0001110", 
                "A-1":"0110010", "D+A":"0000010", "D-A":"0010011", 
                "A-D":"0000111", "D&A":"0000000", "D|A":"0010101", 
                "M":"1110000", "!M":"1110001", "-M":"1110011", 
                "M+1":"1110111", "M-1":"1110010", "D+M":"1000010", 
                "D-M":"1010011", "M-D":"1000111", "D&M":"1000000", "D|M":"1010101"
            }
    return comp[symbol]

def get_destination_bits(symbol):   
    destination = {
                    "":"000", "M":"001", "D":"010", "DM":"011", "A":"100", "AM":"101", "AD":"110", "ADM":"111",
                    "DA":"110", "MD":"011", "AMD":"111", "MAD":"111", "ADM":"111", "DAM":"111", "MDA":"111"
                }
    return destination[symbol]

def get_jump_bits(symbol):
    jump = {
                "":"000", "JGT":"001", "JEQ":"010", "JGE":"011", "JLT":"100", "JNE":"101", "JLE":"110", "JMP":"111" 
    }

    return jump[symbol]

symbol_table = {
                "R0":"0", "R1":"1", "R2":"2", "R3":"3", "R4":"4", "R5":"5", 
                "R6":"6", "R7":"7", "R8":"8", "R9":"9", "R10":"10", "R11":"11", 
                "R12":"12", "R13":"13", "R14":"14", "R15":"15", "SCREEN":"16384", 
                "KBD":"24576", "SP":"0", "LCL":"1", "ARG":"2", "THIS":"3", "THAT":"4"
                }

def check_symbol(symbol):
    if symbol in symbol_table:
        return True, symbol_table[symbol]
    else:
        return False, None
    
def update_table(symbol, value):
    symbol_table[symbol] = str(value)