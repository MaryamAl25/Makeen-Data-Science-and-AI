# enter number and loop till i stop it
total = 0
inputStr = input("Enter Number: ")
while inputStr != "" :
    value = float(inputStr)
    total = total + value
    inputStr = input("Enter Number: ")
print("The total is",total)

# count the negative number and sum
numbers = input("Enter Number: ")
count = 0
total = 0
while numbers != "":
    value = int(numbers)
    if value < 0 :
        count = count + 1
        total = count + value 
    numbers = input("Enter Number: ")
print("You Enter",count,"Negative numbers", "and the total sum is", total)

# largest number
largest = int(input("Enter Number: "))
numbers = input("Enter Number: ")
while numbers != "":
    value = int(numbers)
    if value > largest :
        largest = value 
    numbers = input("Enter Number: ")
print("The largest number is:",largest)

# smallest number
smallest = int(input("Enter Number: "))
numbers = input("Enter Number: ")
while numbers != "":
    value = int(numbers)
    if value < smallest :
        smallest = value 
    numbers = input("Enter Number: ")
print("The smallest number is:",smallest)

numbers = int(input("Enter Number: "))
previous = input("Enter Number: ")
while numbers != "":
    value = int(numbers)
    if value == previous :
        print("It's same as previous input")
    previous = value 
    numbers = input("Enter Number: ")
