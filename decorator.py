import inspect

def decorator(f):
    def teamMembers():
        f()
        print("hai jay-jay and yuri")
    return teamMembers
@decorator # welcome = decorator(welcome)
def welcome():
    print("Welcoming message to the team members")
welcome()

#function signature
print(inspect.signature())

