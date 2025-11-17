infile = open("story.txt","r")
l = []
#to print all the lines
textline = infile.readline()
while textline != "":
    textline = infile.readline()
    l.append(textline)
print(l)
infile.close()

#read all lines once
txtline = infile.read()
print(txtline)

