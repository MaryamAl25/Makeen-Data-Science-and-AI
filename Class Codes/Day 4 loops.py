#While loop
count = 0
while count < 10:
    print("Maryam")
    count = count + 1
    
#
balance = 10000
target = 20000
rate = 0.05
year = 0
while balance < target :
    year = year + 1
    interst = balance * rate
    balance = balance + interst
print("Your balance will be",target,"After",year,"Years")

#counter = 1 
sum = 0                  
while counter <= 10 :        
    sum = sum +counter
    counter = counter + 1
    print(sum)

#while loop
total = 0
count = 0
salary = 200
while salary >= 0 :
 salary = float(input("Enter a salary or -1 to finish: "))
 if salary >= 0.0 :
     total = total + salary
     count = count + 1
     
avg = total / count
print("The avarge salary is:",avg)