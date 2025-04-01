import sys
import re
import CompileEngine
import os

def main():
    folder_name = 'Main.jack'
    file_names = []

    # Check if the input is a directory or a single file
    if '.' not in folder_name:
        for file in os.listdir(folder_name):
            file_names.append(os.path.join(folder_name, file))
    else:
        file_names.append(folder_name)

    for file_name in file_names:
        if not file_name.endswith('.jack'):
            continue
        with open(file_name, "r") as file:
            jack_code = ''

            # Process each line to remove inline comments
            for line in file:
                jack_code += line.split("//")[0] + '\n'

            # Define patterns for multiline comments and strings
            pattern = r"\/\*[\s\S]*?\*\/"
            stringPattern = r"\".*?\""

            # Find all multiline comments and strings
            match = re.findall(pattern, jack_code)
            stringMatch = " ".join(re.findall(stringPattern, jack_code))

            # Remove multiline comments that are not within strings
            for m in match:
                if m in stringMatch:
                    continue
                jack_code = jack_code.replace(m, "")

            # Remove trailing whitespace
            jack_code = jack_code.rstrip()

            # Compile the Jack code
            compile_engine = CompileEngine.compileEngine(jack_code)
            compile_engine.compileClass()

            # Write the compiled XML code to a file
            with open(file_name.split('.')[0] + '.xml', "w") as out:
                # Handle extra newline and term tag in the do statement
                compile_engine.xml_code = compile_engine.xml_code.replace('<keyword> do </keyword>\n<term>', '<keyword> do </keyword>')
                out.write(compile_engine.xml_code)

if __name__ == '__main__':
    main()

