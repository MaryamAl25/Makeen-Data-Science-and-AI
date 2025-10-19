#Formatting Strings in Python
#F-Strings
price = 799
txt = f"The new iPhone price is {price} dollars"
print(txt,"\n")

#The format()
name = "Maryam"
age = 24
print("My name is {} and I am {} years old.".format(name, age),"\n")

#The % Operator
price = 10.567
discount = 5
ryial ="5.567 ryials"
print("The Price is:%10.5f and the Discount is:%d. Total amount: %10s, \n"  %(price,discount,ryial))

#String Template Class
from string import Template
template = Template("Burj $name located in Salalah and the height of this building $height meters.")
print(template.substitute(name="AlNahda",height=65),"\n")

#Center Method
string = "Welcome to Code Academy"
width = 30
centered_string = string.center(width)
print(centered_string)