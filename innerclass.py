class actors:
    def __init__(self,name,nooffilms,sonname):
        self.name=name
        self.nooffilms=nooffilms
        self.sonname=sonname
        self.nepo=self.inherit(sonname) 
    def display(self):
        print(self.name," ",self.nooffilms) 
    class inherit:
        def __init__(self,son):
            self.son=son
        def show(self):
            print("I am ",self.son) 
a=actors("ntr",33,"bhargav")
a.display()
a.nepo.show()