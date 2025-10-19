#for loop
#print name letter by letter
name = "Maryam"
for i in name :
    print(i)
#print number range 5 start with 0
for k in range(5):
    print(k)
    print("maryam")
#index
num = "Ahmed"
for y in range(5):
    print(y,num[y])
# stay in same line
for i in "Maryam":
    print(i,end="")
#same line
for i in "Maryam": #Maryam Ahmed
    print(i, end="") 
print("Ahmed") #Maryam Ahmed, couse of end ""
print("Ali") #Ali in next line
#
for i in "Maryam":
    print(i, end="")
print()
print("Ahmed")
print("Ali")
#  
for a in range(10,16): #10,11,12,13,14,15
    print(a)
#    
for b in range(0,9,2): #0,2,4,6,8
    print(b)  
#
for c in range(5,0,-1): #5,4,3,2,1
    print(c)
#print as length of the input character
num_1 = input("Enter your name:")
n1 = len(num_1)
for l in range(n1):
    print(num_1)
# check the total balance after years
rate = 0.05
balance = 10000
years = 5
for i in range( 1,years +1):
    balance = balance + (balance * rate)
    print(i,balance)
#
rate = 0.05
balance = 10000
years =int(input("Enter a years number:"))
for i in range(1,years +1):
    balance = balance + (balance * rate)
    print("Years:",i,",Total Balance:",balance)
# nasted for
for i in range(1,5):
    for g in range (1,5) :
        print(i ** g)
    print()
#
for x in range (1,7):
    for j in range(1,7):
        print(x - j)
    print()
#
for x in range (4):
    for j in range(3):
        print("*",end="")
    print()
#
for x in range (5):
    for j in range(7):
        print("*",end="")
    print()
# 
for i in range(4):          #*
    for j in range(i + 1):  #**
        print("*",end ="")  #***
    print()                 #****
#
for i in range(4):          
    for j in range(4 - i - 1):
        print(" ",end="")
    for j in range(i+1):   
         print("*",end ="")  
    print()
#
for i in range(3):          #*
    for j in range(i + 1):  #**
        print("*",end ="")  #***
    print()                 #****
for i in range(3,-1,-1):    #***     
    for j in range(i + 1):  #**
        print("*",end ="")  #*
    print()