# st = lambda s : s.upper()
# print(st("kavya"))


# number = lambda n : "positive" if n>0 else "negative" if n<0 else "Zero"
# print(number(0))

# square = lambda n : n**2
# print(square(6))


# num = [ lambda arg = i: arg*10 for i in range(1,10)]
# for j in num:
#     print(j())

# check = lambda num : "even" if(num%2==0) else "odd"
# print(check(61))


# mul = lambda a,b : (a+b,a*b,a-b,a//b,a%b)
# print(mul(2,3))


# lst=[1,2,3,4,5,6,78,89]
# even = filter(lambda x : x%2==0,lst)
# print(list(even))



# lst1 = [1,2,3,4,5,1,2,8,9,23]
# exp = map(lambda x : x*10+10000,lst1)
# print(set(exp))

# from functools import reduce
# lst2 = [1,2,3,4,5,6]
# func = reduce(lambda a,b : a+b,lst2)
# print(func)

def func(n):
    return lambda a : a*n
lm = func(1)
print(lm(2))


greet=lambda : print("haii")
greet()