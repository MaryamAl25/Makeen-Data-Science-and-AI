#strip
name = "??@Maryam!!@@"
print(name.rstrip("@!!")) #remove from right
print(name.lstrip("@/?")) #remove from lift

infile = open("story.txt")
lis = infile.readlines()
newlis = []
#same   
for j in range(len(lis)):
    newlis.append(lis[j].strip("\n"))
    newlis.append(lis[j].strip("',"))
print(lis) #with \n
print(newlis) #without \n
#infile.close()

fullname = "Maryam Ahmed Ali AL Aamri"
print(fullname.split(" ",3))