#Q1 Variables and Input
name = input("Enter your name:")
age = input("Enter your age:")
print("Hello "+name,",you are "+age,"years old.")

#Q2 Data Types and Arithmetic Operators
f_num = int(input("Enter first number: "))
s_num = int(input("Enter second number: "))
sum = f_num + s_num
print("The sum is",sum)

#Q3 Arithmetic and Relational Operators
num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))
if num1 > num2 :
    print("Is the first number greater?",True)
else :
    print("Is the first number greater?",False)

#Q4 Boolean Operators
age_1 = int(input("Enter your age:"))
nationality = input("Enter your nationality:")
if age_1 >= 18 and nationality.upper() == "Omani".upper() :
    print("You are eligible to vote")
else :
    print("You are not eligible to vote")
    
#Q5 If Statement
p = int(input("Enter a Number: "))
if p >= 0:
    print("The number is positive")
else :
    print("The number is negative")
    
#Q6 If / Else
e = int(input("Enter a Number: "))
if e % 2 == 0:
        print("The number is even")
else :
        print("The number is odd")
        
#Q7 If / Elif / Else       
marks = int(input("Enter your marks: "))
if marks >= 90 : 
    print("Excellent")
elif 70 <= marks < 90: 
    print("Good")
elif 50 <= marks < 70 :
    print("Pass")
else :
    print("fail")
    
#Q8 Nested If
age = int(input("Enter your age: "))
license_status = input("Do you have a driving license? (yes or no): ")
if age >= 18 and license_status == "yes":
    print("You can drive.")
elif age >= 18 and license_status == "no":
    print("You need a license to drive.")
else:
    print("You are too young to drive.")
    
#Q9 While Loop
i = 1
while i <= 5:
    print(i)
    i = i + 1
    
#Q10 While Loop with If Condition
num_in= int(input("Enter number: "))
n1 = 1
while n1 <= num_in :
    if n1 % 2 == 0:
        print(n1)
    n1 = n1 + 1