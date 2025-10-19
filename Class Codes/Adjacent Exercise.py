#if the number is repeated
numbers = int(input("Enter Number: "))
previous = input("Enter Number: ")
while numbers != "":
    value = int(numbers)
    if value == previous :
        print("It's same as previous input")
    previous = value 
    numbers = input("Enter Number: ")
    