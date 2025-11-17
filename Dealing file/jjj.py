infile = open("text.txt", "r")
words = infile.read().lower().split()
wordcount = []

for word in words:
    for i in wordcount:
        if i [0] == word:
            i [1] += 1
            break
    else:
        wordcount.append([word, 1])

for word, count in wordcount:
    print(f"{word}: {count}")

infile.close()

