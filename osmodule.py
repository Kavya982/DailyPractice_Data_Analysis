import os 
if os.path.exists("text.txt"):
    with open("text.txt","a") as f:
        f.write("i am appending the content")
else:
    print("file doesnot exsists")