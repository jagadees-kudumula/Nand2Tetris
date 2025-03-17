from Translation import a_instruction, c_instruction
from SymbolTable import check_symbol

def parser(instruction):
    # Check if the instruction is an A-instruction
    if instruction.startswith('@'):
        ins = instruction.split('@')[1]
        # If the instruction is a number, process it directly
        if ins.isdigit():
            return a_instruction(ins)
        else:
            # If the instruction is a symbol, resolve it using the symbol table
            return a_instruction(check_symbol(ins)[1])
    else:
        # Split the instruction into destination and rest if '=' is present
        dest, rest = instruction.split('=') if '=' in instruction else ('', instruction)
        # Split the rest into computation and jump if ';' is present
        comp, jump = rest.split(';') if ';' in rest else (rest, '')
        # Process the C-instruction
        return c_instruction(dest, comp, jump)
