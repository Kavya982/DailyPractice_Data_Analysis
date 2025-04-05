num=int(input("Enter a number = "))
try:
    result = 10/num
except ValueError as e:
    print("value error : ",e)
except ZeroDivisionError as e:
    print("Divide by zero error : ",e)
except Exception as e :
    print("Parent of all exceptions ",e)
else:
    print("result is ",result)
finally:
    print("Operation handleld successfully")
    
