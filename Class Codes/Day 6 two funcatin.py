#Variable scope
def main():
    sideLength = 10
    result = cubeVolum(sideLength)
    return result

def cubeVolum(sideLength):
    return sideLength ** 3

print(main())

#######

def main():
    result = cubeVolum(2)
    return result

def cubeVolum(sideLength):
    return sideLength ** 3

print(main())

#######

def main():
    sideLength = 2
    result = cubeVolum()
    return sideLength

def cubeVolum():
    sideLength = 6
    return sideLength ** 3

print(main())

#######

def main():
    sideLength = 2
    result = cubeVolum()
    return result

def cubeVolum():
    sideLength = 6
    return sideLength ** 3

print(main())

#######
#ask user to input enter
def main(l):
    result = cubeVolum(l)
    return result

def cubeVolum(sideLength):
    return sideLength ** 3
length = float(input("Enter the side length: "))
print(main(length))

#######

balance = 100000
def withdraw(amount):
    global balance
    if balance >= amount :
        balance = balance - amount
withdraw(350)
print("The Balance after withdraw",balance)

def deposit(amount):
    global balance
    if balance >= amount :
        balance += amount
def check():
    return balance 
withdraw(5)
deposit(230)
print(check())
print("The Balance after deposit ",balance)
