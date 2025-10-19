#Question 1: Collect Positive and Negative Numbers
#Ask the user to enter integers (positive or negative) until they type "q".Store positive numbers in one list and negative numbers in another.Then print both lists.
#ans 1:
positive_numbers = []
negative_numbers = []

while True:
    inputInteger = input("Enter Integer or 'q' to stop: ")
    if inputInteger == "q":
        break
    else:
        inputInteger = int(inputInteger)
        if inputInteger >= 0:
            positive_numbers.append(inputInteger)
        else:
            negative_numbers.append(inputInteger)

print("Positive numbers:", positive_numbers)
print("Negative numbers:", negative_numbers)
######
#another ans in Q2:

#Question 2: Sum of Numbers
#Keep asking the user to enter numbers until "done" is typed.Ignore any non-numeric input.At the end, print the sum of all valid numbers entered.
numbers = []
while True:
    user_input = input("Enter number or 'done' to stop: ")
    
    if user_input.lower() == "done":
        break

    # Check if it's a negative number
    if user_input[:1] == '-' and user_input[1:].isdigit():
        numbers.append(int(user_input))
    
    # Check if it's a positive number
    elif user_input.isdigit():
        numbers.append(int(user_input))

print("Numbers entered:", numbers)
print("Sum:", sum(numbers))
######
#another ans in Q2:
lis = []

while True:
    inputStr = input("Enter Number: ")
    if inputStr == "done":
        break
    elif inputStr.lstrip("-").isdigit():
        lis.append(int(inputStr))
print("my list is:", lis)
print("Sum:", sum(lis))