price = 1.2199967
discount = 5
ryial ="1.22 ryials"
print("The Price is : %10.5f and the Discount is : %d%% Total amount : %10s"  %(price,discount,ryial))

price2 = 3.9889889
print("The price is : %-10.5f" %(price2))

price3 = 7.9889889
print("price is     : %10.5f" %(price3))

price4 = 7.9889889
print("price is     : %10.5f" %(price4))

##############
#Object
greet = "Good Morning"
print(greet.upper())

name = "Maryam Ahmed"
print(name.lower())

w = "Hello world world"
print(w.replace("world","python",2))

text = "This programming Code"
print(text.split())
print(text.isdigit())


text1 = "Today is Thuresday Today is Thuresday Today is Thuresday "
print(text1.find("is",12))
print(text1.find("is",6,30))
print(text1.find("Today",1,48))
print(text1.count("Today"))
##############
#if
amount = int(input("Enter the amount : "))

if amount> 200:
    discount = amount * 0.05 
    print(discount,"riyals will deducted from your amount")
    actualprice = amount - discount
    print("Total price is :" ,actualprice)
else :
    print("Discount is not include for this Amount")
    
    
##############
floor = int(input("Enter the floor number : "))
if floor == 13:
    print("invalid floor number please enter the number again")

if floor>13:
    actualfloor = floor - 1
else :
    actualfloor = floor
    
print("the actual floor is: ",actualfloor)




