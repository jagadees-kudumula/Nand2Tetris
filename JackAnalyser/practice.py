import re
with open("test.jack", "r") as file:
    jack_code = file.read()
    pattern = r"\/\*.*?\*\/"
    match = re.findall(pattern, jack_code)
    pattern2 = r"\".*?\""
    match2 = " ".join(re.findall(pattern2, jack_code))
    for m in match:
        if m in match2:
            continue
        jack_code = jack_code.replace(m, "")
    print(jack_code)
