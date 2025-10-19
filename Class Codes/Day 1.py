#convert int to str
message="Welcome to Makeen"
messageLenght = len(message)
print(messageLenght)

age = 24
name = "Maryam"
nameLength = len(name)
info = name + " " +str(age) #float & int
print(info)
print(type(age),20,age) #argument

phoneNumber = "94008035"

phoneNumber = float(94008035)
print(type(phoneNumber),name)

print(name[4],name[5],name[0])

print(name[nameLength - 4])
#same
print(name[- 4])

string = "Py"
age
string = string + "thon"
print(string , "hi",age)
print(string + "hi" + str(age))

print("hello\\world\n")
print("sahab")

##############################
#arithmetic operation
a = 1
b = 1
c = 1
#-b + 
x1 = (-b + (((b ** 2) - (4 * a * c)) ** 0.5)) / (2 * a)
#x1 = -4 + ((4 ** 2) - (4 * 2 * 3) ** 0.5)/ (2 * 2)
print(x1)
#-b -
x2 = (-b - (((b ** 2) - (4 * a * c)) ** 0.5)) / (2 * a)
#x = -4 - ((4 ** 2) - (4 * 2 * 3) ** 0.5)/ (2 * 2)
print(x2)

#floor division = 2.5 = 2 
x = 5 // 2
print(x)

y= 10 // 3
print(y)
 
#mod %
z = 10 % 3
print(z)

#if ans is 1 is odd & ans 0 is even 
a = 9
b = 9 % 2
print(b)

###################
#floor division &mod
x = 12725
riayls= 12725 // 1000
basias= 12725 % 1000
print("Enter Number", x)
print(riayls)
print(basias)

###########
x = int(input("Enter Price = "))
riayls= x // 1000
baisas= x % 1000
print("Yor amount is:" ,riayls, "Riyals")
print("and", baisas,"baisas")

###########
amount = int(input("Enter Price = "))
if amount > 1000 :
    riayls= amount // 1000
    baisas= amount % 1000
    print(riayls)
    print(baisas)
    
else:
    print("invalid number")
###########
#height = float(input("Enter the height of Rectangle : "))
#weight = float(input("Enter the height of Rectangle : "))

#area = height * weight
#print("The Area of Rectangle :", int(area) )
print("Simple Calculator")
x = int(input("Enter The First Number: "))
y = int(input("Enter The Second Number: "))

addition = x + y
subtract = x - y
multiply = x * y
division = x / y

print(x, "+", y, "=", addition)
print(x, "-", y, "=", subtract)
print(x, "*", y, "=", multiply)
print(x, "/", y, "=", division)