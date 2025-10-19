#convert string into int list 
numbers = []
newNum = 0
while True:
    newNum = input("you must Enter number or Q to stop: ")
    if newNum == "Q" :
        break
    if newNum.isdigit():
        newNum = int(newNum)
        numbers.append(newNum)
    else:
        numbers.append(newNum)
print("The list of numbers is",numbers)
############
# if input is -7 
numbers = []
newNum = 0
while True:
    newNum = input("you must Enter number or Q to stop: ")
    if newNum == "Q" :
        break
    if newNum.isdigit():
        numbers.append(int(newNum))
    elif newNum[0] == '-':
        newNum = int(newNum) * 1
        numbers.append(newNum)
    else:
        numbers.append(newNum)
print("The list of numbers is: ",numbers)