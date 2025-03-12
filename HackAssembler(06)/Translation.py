from SymbolTable import get_computation_bits, get_destination_bits, get_jump_bits

def a_instruction(instruction):
    # Convert A-instruction to binary, pad with zeros to make it 16 bits
    return '0' + bin(int(instruction))[2:].zfill(15)

def c_instruction(dest, comp, jump):
    # Convert C-instruction to binary using predefined bit mappings
    return '111' + get_computation_bits(comp) + get_destination_bits(dest) + get_jump_bits(jump)
