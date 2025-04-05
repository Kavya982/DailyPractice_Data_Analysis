try:
    x=10/0
except ZeroDivisionError:
    print("Divide by zero exception")
else:
    print("No error")
finally:
    print("Execution completed")
