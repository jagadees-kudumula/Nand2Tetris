class SymbolTable:
    def __init__(self):
        self.classLevel = []
        self.subroutineLevel = []
    
    def reset(self):
        self.subroutineLevel = []
    
    def classLeveldefine(self, name, type, kind, index):
        row = {}
        row["name"] = name
        row["type"] = type
        row["kind"] = kind
        row["index"] = index
        self.classLevel.append(row)

    def subroutineLeveldefine(self, name, type, kind, index):
        row = {}
        row["name"] = name
        row["type"] = type
        row["kind"] = kind
        row["index"] = index
        self.subroutineLevel.append(row)
    
    def kindOf(self, name):
        for i in self.subroutineLevel:
            if i["name"] == name:
                return i["kind"]
        for i in self.classLevel:
            if i["name"] == name:
                if i['kind'] == 'field':
                    return 'this'
                return i["kind"]
        return None
    
    def typeOf(self, name):
        for i in self.subroutineLevel:
            if i["name"] == name:
                return i["type"]
        for i in self.classLevel:
            if i["name"] == name:
                return i["type"]
        return None
    
    def indexOf(self, name):
        for i in self.subroutineLevel:
            if i["name"] == name:
                return i["index"]
        for i in self.classLevel:
            if i["name"] == name:
                return i["index"]
        return None
    
    def varCount(self, kind):
        count = 0
        if kind == "local" or kind == "argument":
            for i in self.subroutineLevel:
                if i["kind"] == kind:
                    count += 1
        else:
            for i in self.classLevel:
                if i["kind"] == kind:
                    count += 1
        
        return count

