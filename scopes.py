#Local scope
def func():
    x=300
    print(x) 
func()

#Global Scope 
x =100
def greet():
    print(x) 
greet()

#Enclosing Scope
def func1():
    name="kalix"
    def actor():
        print(name) 
    actor() 
func1() 