def cubeVolum (length):
    volum = length ** 3
    return volum
l =float(input("Enter number of length:"))
print(cubeVolum(l))

#
def factorial(n): # n * n-1, n * n-2 ,n * n-3, n * n-n...
    result = 1
    if n == 0:
        return 1
    while n>=1:
        result = result * n
        n = n - 1
    return result
print(factorial(5))

#
def factorial(n): # n * n-1, n * n-2 ,n * n-3, n * n-n...
    result = 1
    for i in range(1, n+1):
        result = result * i
    return result
n =int(input("Enter number:"))
print(factorial(n))