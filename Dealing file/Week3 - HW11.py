#Week3 - HW1
#Exercise 1: Word Frequency Counter
infile = open("text.txt","r")
textline = infile.read()
word_list = textline.split()
wordcount = {}

for word in word_list:
    word = word.lower()
    if word in wordcount:
        wordcount[word] += 1
    else:
        wordcount[word] = 1
for word, count in wordcount.items():
    print(f"{word}: {count}")
    
infile.close()



#Exercise 2: Clean Names Using .strip()
# Open to read
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


#Exercise 3: Find the Highest and Lowest Scores
f = open("score.txt", "r")
lines = f.readlines()
f.close()

high_name = ""
high_score = 0

low_name = ""
low_score = 100

for line in lines:
    name, score = line.strip().split(",")
    score = int(score)

    if score > high_score:
        high_score = score
        high_name = name

    if score < low_score:
        low_score = score
        low_name = name

print("Highest Score:",high_name, high_score)

print("Lowest Score:",low_name, low_score)
