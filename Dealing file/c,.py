infile1 = open("raw_names.txt", "r")
lines = infile1.readlines()
infile1.close()

# Clean each line using .strip()
cleaned_names = []
for line in lines:
    name = line.strip()
    if name:  
        cleaned_names.append(name)

# Open the output 
outfile = open("clean_names.txt", "w")
for name in cleaned_names:
    outfile.write(name + "\n")
outfile.close()
