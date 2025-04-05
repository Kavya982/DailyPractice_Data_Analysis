import re

st = "The rain in espresso"

y = re.search("^The .* so$",st)

print("Matched") if y else print("Not matched")

z=re.findall("e",st)

print(z)

sp=re.split("\s",st)
print(sp)

rp = re.sub("\s","$",st)
print(rp)


print(re.search("\s",st).group())

text="there are 123 apples for u 456"
digit = re.search(r"\d+ ",text)
print(digit.group())

difitall=re.findall(r"\d+",text)
print(difitall)

text1="the event is on 2025-07-06"
t=re.search(r"(\d+)-(\d+)-(\d+)",text1)
print(t.group())


#Email - validation 
mail = "contact kavya@gmail.com"
email_pattern = r"[a-zA-Z)-9,_%+-]+@[a-zA-Z0_9_.]+.[A-za-z]{2,}"
mat=re.search(email_pattern,mail)
if mat:
    print("matched and found ",mat.group())
else:
    print("Not matched")