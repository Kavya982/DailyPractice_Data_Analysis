class CofeeMachine:
    def __init__(self,t,name):
        self.brewtime = t
        self.name = name
    def __str__(self):
        return f"The brewing time for {self.name} company coffee machine is {self.brewtime}"

fers=CofeeMachine(23,"tata")

print("The brewing time for",fers.name,"company coffee machine is = ",fers.brewtime)

print(fers)