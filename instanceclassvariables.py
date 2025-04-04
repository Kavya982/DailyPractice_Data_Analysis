class Details:
    company="Revature"
    def __init__(self,name,age):
        self.name=name
        self.age=age 
d1 = Details("keifer",22)
print(d1.name," ",d1.age," ",Details.company)
d1.name="jayjay"
d1.age=23
d1.company="TechM"
print(d1.name," ",d1.age," ",d1.company)
