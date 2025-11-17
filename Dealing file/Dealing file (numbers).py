#read and print numbers
infile = open("numbers.txt","r")
numbers = infile.read()
print(numbers)


#
infile = open("numbers.txt","r")
total = 0 
textline = infile.readline()
while textline != "":
    total = total + int(textline)
    textline = infile.readline()
print("The total is:",total)

infile.close()

#avarge
infile = open("numbers.txt","r")
outfile = open("output.txt","w")
total = 0
count = 0
textline = infile.readline()
while textline != "":
    total = total + int(textline)
    textline = infile.readline()
    count = count + 1
average = total/count
outfile.write("The count is: %d\n and The total is: %f\n The average is:%d.2" % (count,total,average))

infile.close()
outfile.close()

