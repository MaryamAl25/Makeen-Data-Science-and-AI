#Q1 check if both are correct
#user = "admin"
#password = 12345
user_input = input("Enter username: ")
password_input = int(input("Enter password: "))

if user_input == "admin" and password_input == 12345 :
        print("Access granted")
else : 
        print("Access denied")
        
#Q2 enter a number and prints whether the number is divisible by 3 or 5
num = int(input("Enter a Number: "))
if num %3 == 0 or num %9 == 0 :
    print(num,"is divisible by 3 or 5")
else :
    print(num,"is not divisible by 3 or 5")
    
#Q3 sum of digit 
number = int(input("Enter Number: "))
sum = 0
while number > 0 :
    digit = number % 10
    sum = sum + digit
    number //= 10
print("The sum of the digits is:",sum)

#Q3 sum of digit other way
number = input("Enter Number: ")
total = 0
counter = 0
while counter < len(number):
    total = total + int(number[counter])
    counter = counter + 1
print(total)