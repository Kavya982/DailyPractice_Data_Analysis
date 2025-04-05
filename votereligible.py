age = int(input("Enter age : "))
def checkAge(a):
    if a<18:
        raise ValueError("age must be greater than 18")
    else:
        print("Eligible for voting")
try:
    checkAge(age)
except ValueError as e:
    print("error raised",e)
