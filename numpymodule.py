import numpy as np
arr=np.array([1,2,3,4,5,6,7])
print(arr)
print(type(arr))
print(np.sum([1,2,3,4,56,3]))
print(np.zeros((2,3)))
print(np.ones((2,4)))
print(np.random.rand(2,3))
print(np.linspace(1,10,3))
print(np.arange(1,10,3))
print(np.max([1,2,3,4,56,8]))
print(np.min([1,23,12,0]))
print(np.sum([34,23,67,56]))
print(np.abs(-9))
print(np.round(23.98))

a=np.array([1,2,3,4])
b=np.array([2,4,6,8])
print(a+b)
print(a*b)
print(a-b)
print(np.sqrt(a))
print(a**2)


A = np.array([[1,2,3],[2,3,4],[1,1,1]])
B= np.array([[12,13,14],[15,16,17],[1,2,3]])

print(np.dot(A,B))
print(np.transpose(A))

print(A[1,1])
print(A[:,1])
print(A[2])

arr=np.array([2,3,5,6,8,9])

