#if + elif, import sqrt, odd & even
price = float(input("Enter the price:"))
if price > 200:
    dicount = price * 0.5
else:
    print("no discount")
    if price <= 10:
        print("take it free")
    else:
        print("no discount")
print("End")

#
discount = "You do not have discount"
price = float(input("Enter the price:"))
if price > 200:
    discount = "you have discount"
print(discount)

#
floor = int(input("Enter the floor number : "))
if floor == 13:
    print("invalid floor number please enter the number again")

if floor>13:
    actualfloor = floor - 1
else :
    actualfloor = floor
    
print("the actual floor is: ",actualfloor)
    
#
age = 20
if age == 30:
    print("you are senior")
else:
    print("You are still young")
    
#   
name = "Maryam".upper()
username = input("Enter username:").upper()
if name == username :
    print("You can access")
else :
    print("You can't access")
    
#   
myAge = 24
yourAge =int(input("Enter your age:"))
if myAge > yourAge :
    print("I'm older")
else:
    print("you are older")
    
#
from math import sqrt
x = sqrt(2)
y = 2.0
error_rate = 0.0005
diff = x * x - y
if diff < error_rate :
    print("sqrt 2 * sqrt 2 equal 2")
else:
    print("you have error")
    
#positive and divisble by 3
x = int(input("Enter a Number: "))
if x >= 0:
    print("The number is positive")
    if x % 3 == 0:
        print("and divisble by 3")
    else :
        print("and not divisble by 3")
else :
    print("The number is negative")
    
#even & odd
x = int(input("Enter a Number: "))
if x >= 0:
    print("The number is positive,")
    if x % 2 == 0:
        print("and it is even number")
    else :
        print("and it is odd number")
else :
    print("The number is negative")
    
#
price = 5
age = int(input("Enter your age : "))
if age == 25 :
    print("you can take it free")
elif age > 20 :
    discount = 5 * 0.30
    actual = discount - price
    print("you have 30% discount,your amount is ",actual)
elif age == 20 :
    discount = 5 * 0.10
    actual = discount - price
    print("you have 10% discount",actual)
else :  
    print("you don't have discount")
#
richter = float(input("Enter the magnitude on the scale : "))
if richter >= 8.0 :# Handle the ‘special case’ first
     print("Most structures fall")
elif richter >= 7.0 :
     print("Many buildings destroyed")
elif richter >= 6.0 :
     print("Many buildings damaged, some collapse")
elif richter >= 4.5 :
     print("Damage to poorly constructed buildings")
else :# so that the ‘general case’ can be handled last
    print("No destruction of buildings")
        