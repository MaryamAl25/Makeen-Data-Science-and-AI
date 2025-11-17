#Ask the user to enter 5 student names and write them into a file called students.txt.
infile = open("students.txt","w")

for i in range(5):
    name = input("Enter the name of student: ")
    infile.write("name: %s \n" %(name))
    
infile.close()



