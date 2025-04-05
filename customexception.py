num=int(input("Enter your age = "))
class NotGetMarriedError(Exception):
    pass
def eligible(age):
    if age<21:
        raise NotGetMarriedError("Age must be 21 to get married")
    else:
        print("You are eligible")
try:
    eligible(num)
except NotGetMarriedError as e:
    print(e)
finally:
    print("Inspection completed")