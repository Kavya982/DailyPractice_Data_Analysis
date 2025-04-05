import os
try:
    with open("text.txt","r") as f:
        f.read()
    with open("text.txt","w") as f:
        f.write(" again and again")
except FileNotFoundError as e :
    print(e)
except IOError as e:
    print(e)
except Exception as e:
    print(e)
else:
    print("File found")
finally:
    f.close()