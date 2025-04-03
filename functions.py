# def greet():
#     print("Hello hai")
# greet()

# def welcome(name):
#     print("hey coder,",name,"welcome to the playground")
# welcome("keifer")

# def add(a,b):
#     return a+b
# print("sum is ",add(2,3))

# def coder(name="great"):
#     print("welcome ",name)
# coder()
# coder("kavya")

# def details(name,age):
#     return name,age
# print(details("kalix",23))

# def add(*numbers):
#     return sum(numbers) 
# print(add(1,2,3,45,6))

def details(**collect):
    for k,v in collect.items():
        print(k," ",v)
print(details(name="keifer",age=23,address="philipine"))