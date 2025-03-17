import sys
from Parser import parser
from SymbolTable import check_symbol, update_table

def main():
    if len(sys.argv) != 2:
        print("Usage: python Main.py <filename>")
        sys.exit(1)

    filename = sys.argv[1]

    # First Pass: Identify labels and update the symbol table
    try:
        with open(filename, 'r') as file:
            line = file.readline()
            i = 0
            while line:
                line = line.split('//')[0].strip()  # Remove comments

                if line:  # Check if the line is not empty
                    if line[0] == '(':  # Check if the line is a label
                        if not check_symbol(line[1:-1])[0]:
                            update_table(line[1:-1], i)
                    else:
                        i += 1

                line = file.readline()
    except FileNotFoundError:
        print(f"Error: File '{filename}' not found.")
        sys.exit(1)

    n = 16  # Initialize variable address counter

    # Second Pass: Translate instructions and update the symbol table for variables
    try:
        with open(filename, 'r') as file:
            line = file.readline()

            while line:
                line = line.split('//')[0].strip()  # Remove comments

                if line:  # Check if the line is not empty
                    if line[0] == '(':  # Skip labels
                        line = file.readline()
                        continue
                    elif line[0] == '@':  # Handle A-instructions
                        if not line[1:].isdigit():
                            if not check_symbol(line[1:])[0]:
                                update_table(line[1:], n)
                                n += 1

                    # Write the parsed instruction to the output file
                    with open(filename.replace('.asm', '.hack'), 'a') as output_file:
                        output_file.write(parser(line) + '\n')

                line = file.readline()

    except FileNotFoundError:
        print(f"Error: File '{filename}' not found.")
        sys.exit(1)

if __name__ == "__main__":
    main()
