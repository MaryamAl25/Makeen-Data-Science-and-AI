todolist = ["study","documents","sleep"]
print(todolist)
print(len(todolist))

mixlist = ["a","b",6,8,0.8]
print(mixlist)
print(mixlist[3])

name = "Maryam"
namelist = ["Fatma","Sahab",name]
print(namelist)
#
for i in namelist:
    print(i)
#
for n in range(2):
    print(n, namelist[1])
#
name1 = "Ali"
namelist1 = ["Ahmed","Omar",name1]
l = len(namelist1)
for i in range(l):
    print(i,namelist1[i])
#
numbers = [2,4,-2,30,4]
max = numbers[0]
for i in numbers:
    if max < i:
        max = i
print(max)
# maximum number
numbers = [2, 4, -2, 30, 4]
max = numbers[0]
for i in range(len(numbers)):
    if max < numbers[i]:
        max = numbers[i]
print(max)
#even & odd
numbers = [2,3,4,5]
for i in range(len(numbers)):
    if numbers[i] % 2 == 0:
        print(numbers[i],"even number")
    else:
        print(numbers[i],"odd number")
#
numbers = []
newNum = 0
while True:
    newNum = input("you must Enter number or Q to stop: ")
    if newNum == "Q" :
        break
    numbers.append(newNum)
print("The list of numbers is",numbers)
        