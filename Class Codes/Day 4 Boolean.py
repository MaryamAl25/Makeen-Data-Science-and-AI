#Boolean or+and+not
flag = False
age = 20
#print(age == 20)
#print(age != 20)
#
if flag:
    print("flag is true")
else :
    print("flag is false")
    
#
grade = 97

valid = 80 > grade < 95

if valid :
    print("You are excellent")
else :
    print("Your are very good")
    
#
f = False == 0
print(f)

T = True == 1
print(T)

#
number = int(input("Enter Number: "))
positive = number >= 0
is_positive = positive == True
is_positive = positive != False
if number >= 0:
    print(True)
else :
    print(False)
    
# or , and
temp = float(input("Enter Number: "))
if temp > 0 and temp < 100 : 
    print("Liquid")
elif temp <= 0 or temp >= 100 :
 print("Not liquid")

#
attending = True
grade = 45
if not attending or grade < 60 : 
    print("Drop?")
if attending and not(grade < 60): 
    print("Stay")
if attending and grade >= 60 :
    print("Stay")
